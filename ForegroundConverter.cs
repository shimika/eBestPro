using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;
using System.Windows.Media;

namespace eBestPro {
	public class ForegroundConverter : IValueConverter {
		public static Brush BrushUp = Brushes.Red;
		public static Brush BrushDown = Brushes.Blue;
		public static Brush BrushZero = Brushes.Black;
		public static Brush BrushError = Brushes.Yellow;
		public static Brush BrushNone = Brushes.Transparent;

		public object Convert(object value, Type targetType, object parameter, CultureInfo culture) {
			try {
				DataRecord dr = value as DataRecord;
				double val = 0;

				switch (parameter.ToString()) {
					case "DateFore":
						return BrushZero;
					case "OpenFore":
						val = System.Convert.ToDouble(dr.Open) - dr.BeforeClose;
						break;
					case "HighFore":
						val = dr.HighRaw - dr.BeforeClose;
						break;
					case "LowFore":
						val = dr.LowRaw - dr.BeforeClose;
						break;
					case "CloseFore":
					case "ChangeFore":
						int diff = dr.GetChange();
						switch (diff) {
							case 1: return BrushUp;
							case -1: return BrushDown;
							default: return BrushZero;
						}
					case "DiffFore":
						val = System.Convert.ToDouble(dr.Diff);
						break;

					case "DateBack":
						return CellColor.GetCellColorCode(dr.GetTag(0));
						break;
					case "OpenBack":
						return BrushNone;
						break;
					case "HighBack":
						return BrushNone;
						break;
					case "LowBack":
						return BrushNone;
						break;
					case "CloseBack":
						return BrushNone;
						break;
					case "ChangeBack":
						return BrushNone;
						break;
					case "DiffBack":
						return BrushNone;
						break;

/*
					case 7:
						SolidColorBrush salmon = new SolidColorBrush(Colors.LightSalmon) { Opacity = 0.6 };
						return dr.IsHigh ? salmon : Brushes.Transparent;
					case 8:
						SolidColorBrush skyblue = new SolidColorBrush(Colors.LightSkyBlue) { Opacity = 0.4 };
						return dr.IsLow ? skyblue : Brushes.Transparent;
 */
				}

				if (val > 0) {
					return BrushUp;
				} else if (val < 0) {
					return BrushDown;
				} else {
					return BrushZero;
				}
			} catch {
				return BrushError;
			}
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture) {
			throw new NotImplementedException();
		}
	}
}