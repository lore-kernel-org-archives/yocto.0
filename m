Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52594E0156E
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 10:22:49 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 10:23:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348629440"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 10:22:47 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jun 2013 20:00:21 +0300
Message-Id: <1370451622-10619-21-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC refactor 20/21] Remove LongRunningTask, ICalculatePercentage from InstallWizard
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Jun 2013 17:22:49 -0000

- remove inner classes & interfaces and use RemoteHelper implementation

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/bc/ui/wizards/install/InstallWizard.java |  155 --------------------
 1 file changed, 155 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
index 8294219..42a3bef 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
@@ -197,161 +197,6 @@ public class InstallWizard extends FiniteStateWizard implements
 	public void init(IWorkbench workbench, IStructuredSelection selection) {
 	}
 
-	private interface ICalculatePercentage {
-		public float calWorkloadDone(String info) throws IllegalArgumentException;
-	}
-
-	private class LongtimeRunningTask implements IRunnableWithProgress {
-		private String []cmdArray;
-		private String []envp;
-		private File dir;
-		private ICommandResponseHandler handler;
-		private Process p;
-		private String taskName;
-		static public final int TOTALWORKLOAD=100;
-		private int reported_workload;
-		ICalculatePercentage cal;
-
-		public LongtimeRunningTask(String taskName, 
-				String []cmdArray, String []envp, File dir, 
-				ICommandResponseHandler handler,
-				ICalculatePercentage calculator) {
-			this.taskName=taskName;
-			this.cmdArray=cmdArray;
-			this.envp=envp;
-			this.dir=dir;
-			this.handler=handler;
-			this.p=null;
-			this.cal=calculator;
-		}
-
-		private void reportProgress(IProgressMonitor monitor,String info) {
-			if(cal == null) {
-				monitor.worked(1);
-			}else {
-				float percentage;
-				try {
-					percentage=cal.calWorkloadDone(info);
-				} catch (IllegalArgumentException e) {
-					//can't get percentage
-					return;
-				}
-				int delta=(int) (TOTALWORKLOAD * percentage - reported_workload);
-				if( delta > 0 ) {
-					monitor.worked(delta);
-					reported_workload += delta;
-				}
-			}
-		}
-
-		synchronized public void run(IProgressMonitor monitor) 
-				throws InvocationTargetException, InterruptedException {
-
-			boolean cancel=false;
-			reported_workload=0;
-
-			try {
-				monitor.beginTask(taskName, TOTALWORKLOAD);
-
-				p=Runtime.getRuntime().exec(cmdArray,envp,dir);
-				BufferedReader inbr = new BufferedReader(new InputStreamReader(p.getInputStream()));
-				BufferedReader errbr = new BufferedReader(new InputStreamReader(p.getErrorStream()));
-				String info;
-				while (!cancel) {
-					if(monitor.isCanceled()) 
-					{
-						cancel=true;
-						throw new InterruptedException("User Cancelled");
-					}
-
-					info=null;
-					//reading stderr
-					while (errbr.ready()) {
-						info=errbr.readLine();
-						//some application using stderr to print out information
-						handler.response(info, false);
-					}
-					//reading stdout
-					while (inbr.ready()) {
-						info=inbr.readLine();
-						handler.response(info, false);
-					}
-
-					//report progress
-					if(info!=null)
-						reportProgress(monitor,info);
-
-					//check if exit
-					try {
-						int exitValue=p.exitValue();
-						if (exitValue != 0) {
-							handler.response(
-									taskName + " failed with the return value " + new Integer(exitValue).toString(), 
-									true);
-						}
-						break;
-					}catch (IllegalThreadStateException e) {
-					}
-
-					Thread.sleep(500);
-				}
-			} catch (IOException e) {
-				throw new InvocationTargetException(e);
-			} finally {
-				monitor.done();
-				if (p != null ) {
-					p.destroy();
-				}
-			}
-		}
-	}
-
-	private class BCCommandResponseHandler implements ICommandResponseHandler {
-		private MessageConsoleStream myConsoleStream;
-		private Boolean errorOccured = false;
-
-		public BCCommandResponseHandler(MessageConsole console) {
-			try {
-				this.myConsoleStream = console.newMessageStream();
-			} catch (Exception e) {
-				e.printStackTrace();
-			}
-		}
-
-		public void printDialog(String msg) {
-			try {
-				myConsoleStream.println(msg);
-			} catch (Exception e) {
-				e.printStackTrace();
-			}
-		}
-
-		public Boolean hasError() {
-			return errorOccured;
-		}
-
-		public void response(String line, boolean isError) {
-			try {
-				if (isError) {
-					myConsoleStream.println(line);
-					errorOccured = true;
-				} else {
-					myConsoleStream.println(line);
-				}
-			} catch (Exception e) {
-				e.printStackTrace();
-			}
-		}
-
-		public void printCmd(String cmd) {
-			try {
-				myConsoleStream.println(cmd);
-			} catch (Exception e) {
-				e.printStackTrace();
-			}
-		}
-	}
-
 	private class ConsoleWriter extends Writer {
 
 		private StringBuffer sb;
-- 
1.7.9.5


