using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media;

namespace eBestPro {
class MicroWave {
	private int food, multi;

	public void input(int value) {
		this.food = value;
	}

	public void turn() {
		this.food = this.food * this.multi;
	}

	public int takeout() {
		return this.food;
	}
}

	public class DataRecord : INotifyPropertyChanged {
		public static string[] FieldArray = { "Date", "Open", "High", "Low", "Close", "Change", "Diff" };

		public string ShortCode { get; set; }
		public string GetTag(int index) {
			return String.Format("{0}{1}{2}", ShortCode, DateRaw, index);
		}

		string date;
		public string Date {
			get {
				return String.Format("{0}/{1}/{2}",
					date.Substring(0, 4),
					date.Substring(4, 2),
					date.Substring(6, 2));
			}
			set {
				date = value;
				OnPropertyChanged("Date");
			}
		}
		public string DateRaw { get { return date; } }

		public string Open { get; set; }

		double high;
		public string High {
			get { return String.Format("{0:F2}", high); }
			set { high = Convert.ToDouble(value); }
		}
		public double HighRaw { get { return high; } }
		public bool IsHigh { get; set; }

		double low;
		public string Low {
			get { return String.Format("{0:F2}", low); }
			set { low = Convert.ToDouble(value); }
		}
		public double LowRaw { get { return low; } }
		public bool IsLow { get; set; }

		double close;
		public string Close {
			get { return String.Format("{0:F2}", close); }
			set { close = Convert.ToDouble(value); }
		}
		public double CloseRaw { get { return close; } }

		public string Sign { get; set; }

		double change;
		public string Change {
			get { return String.Format("{0:F2}", change); }
			set { change = Convert.ToDouble(value); }
		}

		double diff;
		public string Diff {
			get { return String.Format("{0:F2}", diff); }
			set { diff = Convert.ToDouble(value); }
		}
		public double DiffRaw { get { return diff; } }

		public double BeforeClose { get; set; }

		public int GetChange() {
			switch (this.Sign) {
				case "2":
					return 1;
				case "5":
					return -1;
				case "3":
					return 0;
				case "1":
					return 1;
				case "4":
					return -1;
				default:
					return 0;
			}
		}
		public string ChangeString {
			get {
				string a = "";
				switch (this.Sign) {
					case "2":
						a = "▲"; break;
					case "5":
						a = "▼"; break;
					case "3":
						a = " "; break;
					case "1":
						a = "↑"; break;
					case "4":
						a = "↓"; break;
					default:
						a = ""; break;
				}

				return String.Format("{0}    {1:F2}", a, this.Change);
			}
		}

		public event PropertyChangedEventHandler PropertyChanged;
		protected void OnPropertyChanged(string name) {
			PropertyChangedEventHandler handler = PropertyChanged;
			if (handler != null) {
				handler(this, new PropertyChangedEventArgs(name));
			}
		}

		public void SetCellColor(int index) {
			string tag = this.GetTag(index);
			CellColor.SetCellColor(tag);

			RefreshBrush(tag, index);
		}

		public void InitHighLow() {
			for (int i = 0; i < 7; i++) {
				string tag = this.GetTag(i);
				int code = CellColor.GetCellColorCode(tag);

				RefreshBrush(tag, i);
			}
		}

		private void RefreshBrush(string tag, int index) {
			int code = CellColor.GetCellColorCode(tag);

			Brush brush = Brushes.Transparent;

			if (code == 0) {
				if (index == 2 && this.IsHigh) {
					brush = new SolidColorBrush(Colors.LightSalmon) { Opacity = 0.8 };
				} else if (index == 3 && this.IsLow) {
					brush = new SolidColorBrush(Colors.LightSkyBlue) { Opacity = 0.8 };
				}
			} else {
				brush = CellColor.GetCellBrush(code);
			}

			switch (index) {
				case 0:
					DateBrush = brush;
					break;
				case 1:
					OpenBrush = brush;
					break;
				case 2:
					HighBrush = brush;
					break;
				case 3:
					LowBrush = brush;
					break;
				case 4:
					CloseBrush = brush;
					break;
				case 5:
					ChangeBrush = brush;
					break;
				case 6:
					DiffBrush = brush;
					break;
				default: return;
			}

			OnPropertyChanged(String.Format("{0}Brush", FieldArray[index]));
		}

		[DefaultValue(typeof(Brush), "Transparent")]
		public Brush DateBrush { get; set; }

		[DefaultValue(typeof(Brush), "Transparent")]
		public Brush OpenBrush { get; set; }

		[DefaultValue(typeof(Brush), "Transparent")]
		public Brush HighBrush { get; set; }

		[DefaultValue(typeof(Brush), "Transparent")]
		public Brush LowBrush { get; set; }

		[DefaultValue(typeof(Brush), "Transparent")]
		public Brush CloseBrush { get; set; }

		[DefaultValue(typeof(Brush), "Transparent")]
		public Brush ChangeBrush { get; set; }

		[DefaultValue(typeof(Brush), "Transparent")]
		public Brush DiffBrush { get; set; }
	}
}
