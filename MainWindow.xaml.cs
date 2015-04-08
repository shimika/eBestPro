using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using XA_DATASETLib;
using XA_SESSIONLib;

namespace eBestPro {
	/// <summary>
	/// MainWindow.xaml에 대한 상호 작용 논리
	/// </summary>
	public partial class MainWindow : Window {
		public MainWindow() {
			InitializeComponent();
		}

		SessionControl xaSession;
		QueryControl xaQuery;

		private void Window_Loaded(object sender, RoutedEventArgs e) {
			CellColor.LoadColoring();

			int dCount = 0;
			for (int i = 1; i <= 20; i++) {
				DateTime d = new DateTime(DateTime.Now.Year, DateTime.Now.Month, i);
				if (d.DayOfWeek == DayOfWeek.Thursday) {
					dCount++;
				}
				if (dCount == 2) {
					dCount = i;
					break;
				}
			}

			int gap = DateTime.Now.Day > dCount ? 1 : 0;

			List<KeyValuePair<string, string>> list = new List<KeyValuePair<string, string>>();
			for (int i = gap; i <= 3 + gap; i++) {
				DateTime date = DateTime.Now.AddMonths(i);
				list.Add(new KeyValuePair<string, string>(
					String.Format("{0}년 {1:D2}월", date.Year, date.Month),
					String.Format("{0}{1:D2}", date.Year, date.Month)
					));

				comboDate.DisplayMemberPath = "Key";
				comboDate.SelectedValuePath = "Value";
				comboDate.ItemsSource = list;
			}

			comboDate.SelectedIndex = 0;
			comboDate.SelectionChanged += comboDate_SelectionChanged;
			ConnectToServer();
		}

		private void ConnectToServer() {
			gridSidebar.IsHitTestVisible = false;
			buttonRefresh.Content = "접속 중...";

			try {
				xaSession = new SessionControl();
				xaSession.Response += xaSession_Response;
				bool isConnect = xaSession.session.ConnectServer("hts.ebestsec.co.kr", 20001);

				if (!isConnect) {
					MessageBox.Show("Can't connect");
					return;
				}

				bool isLogin = xaSession.session.Login("fway5509", "s1459592", "s7764700142/", (int)XA_SESSIONLib.XA_SERVER_TYPE.XA_REAL_SERVER, false);

				if (!isLogin) {
					MessageBox.Show("Can't login");
					return;
				}
			} catch (Exception ex) {
				MessageBox.Show(ex.Message);
			}
		}

		private void xaSession_Response(object sender, SessionEventArgs e) {
			if (e.Connected) {
				RefreshBanner();
			} else {
				this.Title = "연결되지 않음";
				buttonRefresh.Content = "재접속";
				gridSidebar.IsHitTestVisible = true;
			}
		}

		private void comboDate_SelectionChanged(object sender, SelectionChangedEventArgs e) {
			RefreshBanner();
		}

		private void RefreshBanner() {
			if (xaSession.session.IsConnected()) {
				KeyValuePair<string, string> kvp = (KeyValuePair<string, string>)comboDate.SelectedItem;

				this.Title = String.Format("{0} 옵션 시세 전광판", kvp.Key);
				string date = kvp.Value;

				gridSidebar.IsHitTestVisible = false;
				stackCheck.Children.Clear();
				gridMain.Children.Clear();

				xaQuery = new QueryControl("t2301", "");
				xaQuery.Response += xaQuery_Response;
				xaQuery.query.SetFieldData("t2301InBlock", "yyyymm", 0, date);
				xaQuery.query.Request(false);
			}
		}

		string[] field = { "actprice", "optcode"/*,"price" */ };
		private void xaQuery_Response(object sender, SessionEventArgs e) {
			if (e.Connected) {
				Dictionary<string, string>[] dict = new Dictionary<string,string>[3];
				for (int k = 1; k <= 2; k++) {
					dict[k] = new Dictionary<string, string>();

					string block = String.Format("t2301OutBlock{0}", k);
					int count = xaQuery.query.GetBlockCount(block);

					for (int i = 0; i < count; i++) {
						string actprice = xaQuery.query.GetFieldData(block, "actprice", i);
						string optcode = xaQuery.query.GetFieldData(block, "optcode", i);

						dict[k].Add(actprice, optcode);
					}
				}

				SetBanner(dict[1], dict[2]);
			}

			gridSidebar.IsHitTestVisible = true;
		}

		private void ButtonColor_Click(object sender, RoutedEventArgs e) {
			Brush brush = CellColor.ChangeColor();
			(sender as Button).Background = brush;
			(sender as Button).Content = CellColor.GetColorName();
		}

		private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e) {
			CellColor.SaveColoring();
			xaSession.session.DisconnectServer();
		}
	}
}
