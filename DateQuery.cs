using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;

namespace eBestPro {
	public partial class MainWindow : Window {
		Queue<Package> Q;
		bool isLoading = false;

		private void buttonRefresh_Click(object sender, RoutedEventArgs e) {
			if (isLoading) { return; }

			List<string> list = GetCheckedValues();
			if (list.Count == 0) { return; }

			isLoading = true;

			Q = new Queue<Package>();

			gridNoti.Visibility = Visibility.Visible;
			textNoti.Text = String.Format("갱신 중... (0/{0})", list.Count * 2);

			buttonRefresh.Content = "갱신 중...";
			buttonRefresh.IsEnabled = false;
			int Count = 0;

			foreach (UIElement ui in gridMain.Children) {
				CustomDataGrid grid = ui as CustomDataGrid;
				grid.StopAdvise();
			}

			gridMain.Children.Clear();

			foreach (string code in list) {
				Q.Enqueue(new Package(String.Format("{0}   Call", code), DictCall[code], Count++));
				Q.Enqueue(new Package(String.Format("{0}   Put", code), DictPut[code], Count++));
			}

			SendDateQuery();
		}

		private void SendDateQuery() {
			if (Q.Count == 0) {
				FinishQuery(true);
				return;
			}

			BackgroundWorker bw = new BackgroundWorker();
			bw.DoWork += bw_DoWork;
			bw.RunWorkerCompleted += bw_RunWorkerCompleted;
			bw.RunWorkerAsync(Q.Dequeue());
		}

		private void bw_DoWork(object sender, DoWorkEventArgs e) {
			Thread.Sleep(700);
			e.Result = e.Argument;
		}

		private void bw_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e) {
			Package package = e.Result as Package;

			textNoti.Text = String.Format("갱신 중... ({0}/{1})", package.Count + 1, package.Count + Q.Count + 1);

			CustomDataGrid datagrid = new CustomDataGrid(package.Title, package.Key);
			datagrid.Margin = new Thickness(420 * (package.Count % 4), 500 * (package.Count / 4), 0, 0);
			gridMain.Children.Add(datagrid);

			SendDateQuery();
		}

		private void FinishQuery(bool ok) {
			isLoading = false;
			buttonRefresh.IsEnabled = true;
			gridNoti.Visibility = Visibility.Collapsed;

			Checkbox_Changed(null, null);
			if (!ok) { return; }
		}
	}

	class Package {
		public string Title { get; set; }
		public string Key { get; set; }
		public int Count { get; set; }

		public Package(string title, string key, int count) {
			this.Title = title;
			this.Key = key;
			this.Count = count;
		}
	}
}
