using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace eBestPro {
	/// <summary>
	/// CustomDataGrid.xaml에 대한 상호 작용 논리
	/// </summary>
	public partial class CustomDataGrid : UserControl {
		List<DataRecord> ListRecord = new List<DataRecord>();
		public string ShortCode { get; set; }
		private string[] Columns = { "Date", "Open", "High", "Low", "Close", "Sign", "Change", "Diff" };
		QueryControl query;

		public CustomDataGrid(string title, string code) {
			InitializeComponent();

			this.textTitle.Text = title;
			this.ShortCode = code;

			query = new QueryControl("t2203", code);
			query.Title = title;
			query.Response += DateQuery_Response;

			query.query.SetFieldData("t2203InBlock", "shcode", 0, code);
			query.query.SetFieldData("t2203InBlock", "cnt", 0, "20");

			query.real.ResFileName = String.Format(".\\res\\OC0.res");
			query.real.SetFieldData("InBlock", "optcode", code);
			query.ResponseAdvise += query_ResponseAdvise;
			query.real.AdviseRealData();

			query.query.Request(false);
		}

		public void StopAdvise() {
			query.real.UnadviseRealData();
		}

		private void DateQuery_Response(object sender, SessionEventArgs e) {
			if (e.Connected == false) {
				datagrid.Visibility = Visibility.Collapsed;
				this.textTitle.Text = "로드 실패";
				return;
			}

			int count = query.query.GetBlockCount("t2203OutBlock1");

			double min = 99999, max = -99999;
			for (int i = 0; i < count; i++) {
				DataRecord record = new DataRecord() {
					ShortCode = this.ShortCode,
					Date = query.query.GetFieldData("t2203OutBlock1", "date", i),
					Open = query.query.GetFieldData("t2203OutBlock1", "open", i),
					High = query.query.GetFieldData("t2203OutBlock1", "high", i),
					Low = query.query.GetFieldData("t2203OutBlock1", "low", i),
					Close = query.query.GetFieldData("t2203OutBlock1", "close", i),
					Sign = query.query.GetFieldData("t2203OutBlock1", "sign", i),
					Change = query.query.GetFieldData("t2203OutBlock1", "change", i),
					Diff = query.query.GetFieldData("t2203OutBlock1", "diff", i),
				};

				max = Math.Max(max, record.HighRaw);
				min = Math.Min(min, record.LowRaw);

				record.BeforeClose = Math.Round((100 * record.CloseRaw) / (100 + record.DiffRaw), 2, MidpointRounding.ToEven);

				ListRecord.Add(record);
			}

			datagrid.DataContext = ListRecord;

			for (int i = 0; i < count; i++) {
				ListRecord[i].IsLow = ListRecord[i].LowRaw == min;
				ListRecord[i].IsHigh = ListRecord[i].HighRaw == max;

				ListRecord[i].InitHighLow();
			}
		}

		private void query_ResponseAdvise(object sender, EventArgs e) {
			string open = query.real.GetFieldData("OutBlock", "open");
			string high = query.real.GetFieldData("OutBlock", "high");
			string low = query.real.GetFieldData("OutBlock", "low");
			string price = query.real.GetFieldData("OutBlock", "price");
			string sign = query.real.GetFieldData("OutBlock", "sign");
			string change = query.real.GetFieldData("OutBlock", "change");
			string drate = query.real.GetFieldData("OutBlock", "drate");

			DataRecord record = ListRecord[0];
			record.Open = open;
			record.High = high;
			record.Low = low;
			record.Close = price;
			record.Sign = sign;
			record.Change = change;
			record.Diff = drate;

			ListRecord[0] = record; 

			Console.WriteLine("{0} : O:{1} H:{2} L:{3} C:{4} S:{5} C:{6} D:{7}", this.ShortCode, open, high, low, price, sign, change, drate);
		}

		private void DataGrid_MouseDown(object sender, MouseButtonEventArgs e) {
			DependencyObject dep = (DependencyObject)e.OriginalSource;

			while ((dep != null) && !(dep is DataGridCell) && !(dep is DataGridColumnHeader)) {
				dep = VisualTreeHelper.GetParent(dep);
			}

			if (dep == null)
				return;

			if (dep is DataGridColumnHeader) {
			}

			if (dep is DataGridCell) {
				DataGridCell cell = dep as DataGridCell;

				// navigate further up the tree
				while ((dep != null) && !(dep is DataGridRow)) {
					dep = VisualTreeHelper.GetParent(dep);
				}

				if (dep == null)
					return;

				DataGridRow row = dep as DataGridRow;

				object value = ExtractBoundValue(row, cell);

				int columnIndex = cell.Column.DisplayIndex;
				int rowIndex = FindRowIndex(row);

				/*
				MessageBox.Show(string.Format(
					"Cell clicked [{0}, {1}] = {2} \n\n{3}, {4} {1}",
					rowIndex, columnIndex, value.ToString(),
					ShortCode, ListRecord[rowIndex].DateRaw));
				 */ 

				string tag = String.Format("{0}{1}{2}", ShortCode, ListRecord[rowIndex], columnIndex);
				ListRecord[rowIndex].SetCellColor(columnIndex);
			}
		}

		private int FindRowIndex(DataGridRow row) {
			DataGrid dataGrid = ItemsControl.ItemsControlFromItemContainer(row) as DataGrid;
			return dataGrid.ItemContainerGenerator.IndexFromContainer(row);
		}

		private object ExtractBoundValue(DataGridRow row, DataGridCell cell) {
			string boundPropertyName = FindBoundProperty(cell.Column);
			object data = row.Item;

			PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(data);
			PropertyDescriptor property = properties[boundPropertyName];

			return property.GetValue(data);
		}

		private string FindBoundProperty(DataGridColumn col) {
			DataGridBoundColumn boundColumn = col as DataGridBoundColumn;
			Binding binding = boundColumn.Binding as Binding;

			return binding.Path.Path;
		}
	}
}
