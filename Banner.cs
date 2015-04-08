using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace eBestPro {
	public partial class MainWindow : Window {
		Dictionary<string, string> DictCall = null, DictPut = null;
		Dictionary<string, CheckBox> DictCheck;

		private void SetBanner(Dictionary<string, string> c, Dictionary<string, string> p) {
			DictCall = c;
			DictPut = p;

			stackCheck.Children.Clear();
			DictCheck = new Dictionary<string, CheckBox>();

			foreach (KeyValuePair<string, string> kvp in c) {
				CheckBox check = new CheckBox() {
					Margin = new Thickness(5),
				};
				check.Content = kvp.Key;
				check.Tag = kvp.Value;
				check.Checked += Checkbox_Changed;
				check.Unchecked += Checkbox_Changed;

				DictCheck.Add(kvp.Key, check);
				stackCheck.Children.Add(check);
			}

			buttonRefresh.Content = "0개 갱신";
		}

		private List<string> GetCheckedValues() {
			List<string> list = new List<string>();

			if (DictCall != null) {
				foreach (KeyValuePair<string, string> kvp in DictCall) {
					if (!DictCheck.ContainsKey(kvp.Key)) { continue; }

					if (DictCheck[kvp.Key].IsChecked == true) {
						list.Add(kvp.Key);
					}
				}
			}

			return list;
		}

		private void Checkbox_Changed(object sender, RoutedEventArgs e) {
			int count = GetCheckedValues().Count;
			buttonRefresh.Content = String.Format("{0}개 갱신", count);
		}
	}
}
