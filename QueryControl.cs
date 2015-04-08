using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using XA_DATASETLib;

namespace eBestPro {
	public class QueryControl {
		public XAQueryClass query;
		public XARealClass real;

		public string Title { get; set; }
		public string ShortCode { get; set; }

		public event EventHandler<SessionEventArgs> Response;
		public event EventHandler<EventArgs> ResponseAdvise;

		public QueryControl(string code, string sCode) {
			this.ShortCode = sCode;

			query = new XAQueryClass();
			query.ResFileName = String.Format(".\\res\\{0}.res", code);
			query.ReceiveData += query_ReceiveData;
			query.ReceiveMessage += query_ReceiveMessage;

			real = new XARealClass();
			real.ReceiveRealData += real_ReceiveRealData;
		}

		private void query_ReceiveMessage(bool bIsSystemError, string nMessageCode, string szMessage) {
			bool isOK = false;
			if (nMessageCode.Trim() == "00000") {
				isOK = true;
			}

			if (Response != null) {
				Response(this, new SessionEventArgs(isOK, Title, ShortCode));
			}
		}

		private void query_ReceiveData(string szTrCode) {
		}

		private void real_ReceiveRealData(string szTrCode) {
			Console.WriteLine(szTrCode + " RealData");
			if (ResponseAdvise != null) {
				ResponseAdvise(this, new EventArgs());
			}
		}
	}
}
