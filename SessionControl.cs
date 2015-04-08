using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using XA_SESSIONLib;

namespace eBestPro {
	class SessionControl : _IXASessionEvents {
		public IXASession session;
		protected UCOMIConnectionPoint icp;
		protected UCOMIConnectionPointContainer icpc;
		protected int m_dwCookie;

		public SessionControl() {
			int m_dwCookie = 0;
			session = new XASession();
			icpc = (UCOMIConnectionPointContainer)session;
			Guid IID_SessionEvents = typeof(_IXASessionEvents).GUID;
			icpc.FindConnectionPoint(ref IID_SessionEvents, out icp);
			icp.Advise(this, out m_dwCookie);
		}
		~SessionControl() {
			session.Logout();
			session.DisconnectServer();
		}

		#region _IXASessionEvents 멤버

		public void Disconnect() {
			MessageBox.Show("Disconnected");
		}

		public event EventHandler<SessionEventArgs> Response;
		public void Login(string szCode, string szMsg) {
			Console.WriteLine(szCode);
			Console.WriteLine(szMsg);
			
			if (Response != null) {
				Response(this, new SessionEventArgs(true));
			}
		}

		public void Logout() {
			MessageBox.Show("Logout");
		}

		#endregion
	}

	public class SessionEventArgs : EventArgs {
		public bool Connected { get; internal set; }
		public string Title { get; internal set; }
		public string Sub { get; internal set; }

		public SessionEventArgs(bool con) {
			this.Connected = con;
		}

		public SessionEventArgs(bool con, string title) {
			this.Connected = con;
			this.Title = title;
		}

		public SessionEventArgs(bool con, string title, string sub) {
			this.Connected = con;
			this.Title = title;
			this.Sub = sub;
		}
	}
}