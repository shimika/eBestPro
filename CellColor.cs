using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Json;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media;

namespace eBestPro {
	public class CellColor {
		private static Brush[] BrushList = {   Brushes.Transparent, 
											   Brushes.Goldenrod, 
											   Brushes.LimeGreen, 
											   Brushes.Plum, 
											   Brushes.Yellow,
											   Brushes.Orange };

		private static string[] BrushNames = { "None", "Goldenrod", "LimeGreen", "Plum", "Yellow", "Orange" };

		private static int Index = 1;

		public static Brush NowBrush = Brushes.Goldenrod;
		public static Dictionary<string, int> DictCellColor = new Dictionary<string, int>();

		public static Brush ChangeColor() {
			Index = (Index + 1) % (BrushNames.Length);

			if (Index == 0) { return Brushes.Black; }
			return NowBrush = BrushList[Index];
		}

		public static string GetColorName() {
			return BrushNames[Index];
		}

		public static Brush GetNowBrush() {
			return BrushList[Index];
		}

		public static int GetCellColorCode(string tag) {
			if (DictCellColor.ContainsKey(tag)) {
				return DictCellColor[tag];
			}
			return 0;
		}

		public static Brush GetCellBrush(int code) {
			return BrushList[code];
		}

		public static void SetCellColor(string tag) {
			int color = 0;
			if (DictCellColor.ContainsKey(tag)) {
				color = DictCellColor[tag];
			}

			if (Index == color || Index == 0) {
				if (DictCellColor.ContainsKey(tag)) {
					DictCellColor.Remove(tag);
				}
			} else {
				if (DictCellColor.ContainsKey(tag)) {
					DictCellColor[tag] = Index;
				} else {
					DictCellColor.Add(tag, Index);
				}
			}
		}

		public static string FileColor = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) + @"\eBestProColor.txt";
		public static void LoadColoring() {
			if (!File.Exists(FileColor)) { return; }


			string text = "", key;
			int val;

			using (StreamReader sr = new StreamReader(FileColor)) {
				text = sr.ReadToEnd();
			}

			try {
				JsonTextParser parser = new JsonTextParser();
				JsonArrayCollection jsoncollection = (JsonArrayCollection)(parser.Parse(text));
				foreach (JsonObjectCollection obj in jsoncollection) {
					key = obj["k"].GetValue().ToString();
					val = Convert.ToInt32(obj["v"].GetValue());

					if (!DictCellColor.ContainsKey(key)) {
						DictCellColor.Add(key, val);
					}

				}
			} catch (Exception ex) { }
		}

		public static void SaveColoring() {
			JsonArrayCollection root = new JsonArrayCollection();
			foreach (KeyValuePair<string, int> kvp in DictCellColor) {
				JsonObjectCollection obj = new JsonObjectCollection();

				obj.Add(new JsonStringValue("k", kvp.Key));
				obj.Add(new JsonStringValue("v", kvp.Value.ToString()));

				root.Add(obj);
			}

			using (StreamWriter sw = new StreamWriter(FileColor)) {
				sw.Write(root);
			}
		}
	}
}
