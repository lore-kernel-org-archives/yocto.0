Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC93DE01447
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 07:26:14 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Nov 2012 07:26:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,328,1352102400"; d="scan'208";a="247886186"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by orsmga002.jf.intel.com with ESMTP; 27 Nov 2012 07:26:13 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 27 Nov 2012 17:17:03 +0200
Message-Id: <1354029423-16104-4-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1354029423-16104-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1354029423-16104-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 4/4] Do not rely on AbstractHostShellOutputReader for waiting for command outputs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 27 Nov 2012 15:26:15 -0000

- AbstractHostShellReader is designed such that it will block in a read from the pipeline when the command is finished its execution, therefore we should not wait for this variable to be set because it will eventually block.
Instead we will acquire a semaphore each time we run a command and wait for the first prompt line that comes after it, in order to parse the output.

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |   21 ++++--
 .../remote/utils/YoctoHostShellProcessAdapter.java |   68 +++++++++++++++++++-
 2 files changed, 80 insertions(+), 9 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
index 9c88ee7..e017d2a 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
@@ -290,13 +290,15 @@ public class RemoteHelper {
 		hostShellProcessAdapter.setMonitor(monitor);
 		getHostShell(connection).writeToShell(remoteCommand);
 		
-		try {
-			while (!hostShellProcessAdapter.isFinished() && hostShellProcessAdapter.isAlive()) {
-				Thread.sleep(2);
-			}
-		} catch (Exception e) {
-			e.printStackTrace();
-		}
+//		try {
+//			while (!hostShellProcessAdapter.isFinished() && hostShellProcessAdapter.isAlive()) {
+//				Thread.sleep(2);
+//			}
+////			System.out.println(">>>>>>>>>>>>>>>>>>>>finished command " + remoteCommand);
+//		} catch (Exception e) {
+//			e.printStackTrace();
+//		}
+//		
 		return hostShellProcessAdapter.hasErrors();
 	}
 	
@@ -362,4 +364,9 @@ public class RemoteHelper {
 		}
 		return false;
 	}
+
+	public static void clearProcessBuffer(IHost connection) {
+		getHostShellProcessAdapter(connection).clearProcessBuffer();
+	}
+
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
index b75401c..79a62e0 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
@@ -1,6 +1,7 @@
 package org.yocto.bc.remote.utils;
 
 import java.io.IOException;
+import java.util.concurrent.Semaphore;
 import java.util.regex.Matcher;
 import java.util.regex.Pattern;
 
@@ -13,6 +14,10 @@ import org.eclipse.rse.services.shells.IHostShellChangeEvent;
 import org.eclipse.rse.services.shells.IHostShellOutputReader;
 
 public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
+	private String commandPrompt = null;
+	private static final String ROOT = "root";
+	private static final String PROMPT_USER_CH = "$";
+	private static final String PROMPT_ROOT_CH = "#";
 	private ProcessStreamBuffer processStreamBuffer;
 	private CommandResponseHandler commandResponseHandler;
 	private boolean isFinished;
@@ -20,7 +25,34 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
 	private int reportedWorkload;
 	private IProgressMonitor monitor;
 	private boolean isAlive;
+
+	private String lastCommand;
+	private boolean waitForOutput;
+	private String endChar = null;
+
+	private Semaphore sem;
 	
+	public String getLastCommand() {
+		return lastCommand;
+	}
+
+	public synchronized void setLastCommand(String lastCommand) {
+//		if (waitForOutput) {
+			try {
+				// there are still some processes that might take a long time and if we do not wait for them, 
+				// then the semaphore will not be released, because an interrupted exception will occur
+				Thread.sleep(2000);
+				System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>semaphore aquire");
+				sem.acquire();
+				this.lastCommand = lastCommand.trim();
+				System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>last command set " + lastCommand);
+			} catch (InterruptedException e) {
+				e.printStackTrace();
+			}
+//		}
+	}
+
+
 	public IProgressMonitor getMonitor() {
 		return monitor;
 	}
@@ -50,6 +82,9 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
 		this.processStreamBuffer = processStreamBuffer;
 		this.commandResponseHandler = commandResponseHandler;
 		this.calculator = new GitCalculatePercentage();
+		this.sem = new Semaphore(1);
+		this.lastCommand = "";
+
 	}
 
 	private void updateMonitor(final int work){
@@ -106,6 +141,7 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
 				if (value.isEmpty()) {
 					continue;
 				}
+				setCommandPrompt(value);
 				System.out.println(value);
 				this.processStreamBuffer.addErrorLine(value);
 				this.commandResponseHandler.response(value, false);
@@ -116,18 +152,38 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
 				if (value.isEmpty()) {
 					continue;
 				}
-				
+				setCommandPrompt(value);
+				if (value.startsWith(commandPrompt) &&  value.endsWith(endChar) && 
+						!value.endsWith(lastCommand) && processStreamBuffer.getLastOutputLineContaining(lastCommand) != null /*&& waitForOutput*/) {
+					System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>Sem release");
+					sem.release();
+				}
+
 				reportProgress(value);
 				System.out.println(value);
 				this.processStreamBuffer.addOutputLine(value);
 				this.commandResponseHandler.response(value, false);
 			}
 		}
+		
 		AbstractHostShellOutputReader absReader = (AbstractHostShellOutputReader)reader;
 		isAlive = absReader.isAlive();
 		isFinished = absReader.isFinished();
 	}
-
+	private void setCommandPrompt(String value) {
+		if (commandPrompt == null) {
+			if (value.startsWith(ROOT) && value.indexOf(PROMPT_ROOT_CH) != -1) {
+				int end = value.indexOf(PROMPT_ROOT_CH);
+				commandPrompt = value.substring(0, end);
+				endChar = PROMPT_ROOT_CH;
+			} else if (value.indexOf(PROMPT_USER_CH) != -1) {
+				int end = value.indexOf(PROMPT_USER_CH);
+				commandPrompt = value.substring(0, end);
+				endChar = PROMPT_USER_CH;
+			}
+				
+		}
+	}
 	public boolean isFinished() {
 		return isFinished;
 	}
@@ -143,6 +199,14 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
 		this.isAlive = isAlive;
 	}
 
+	public boolean isWaitForOutput() {
+		return waitForOutput;
+	}
+
+	public void setWaitForOutput(boolean waitForOutput) {
+		this.waitForOutput = waitForOutput;
+	}
+
 	public void clearProcessBuffer() {
 		this.processStreamBuffer.outputLines.clear();
 		this.processStreamBuffer.errorLines.clear();
-- 
1.7.9.5


