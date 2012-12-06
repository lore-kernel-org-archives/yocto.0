Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E08AE0145D
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 05:57:02 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Dec 2012 05:57:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,230,1355126400"; d="scan'208";a="227491101"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by azsmga001.ch.intel.com with ESMTP; 06 Dec 2012 05:57:00 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Dec 2012 15:46:58 +0200
Message-Id: <1354801622-13962-5-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1354801622-13962-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1354801622-13962-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 4/8] Fix incompatibility with jre1.6 support for typed HashMap
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
X-List-Received-Date: Thu, 06 Dec 2012 13:57:02 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../remote/utils/YoctoHostShellProcessAdapter.java |   18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
index 9ab43cf..2dba0a6 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
@@ -34,6 +34,7 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 
 	private Semaphore sem;
 
+
 	public YoctoHostShellProcessAdapter(IHostShell hostShell, ProcessStreamBuffer processStreamBuffer, CommandResponseHandler commandResponseHandler) throws IOException {
 		super(hostShell);
 		this.processStreamBuffer = processStreamBuffer;
@@ -41,7 +42,7 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 		this.calculator = new GitCalculatePercentage();
 		this.sem = new Semaphore(1);
 		this.command = "";
-		this.commandMonitors = new HashMap<>();
+		this.commandMonitors = new HashMap<String, IProgressMonitor>();
 	}
 
 	public String getLastCommand() {
@@ -50,7 +51,7 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 
 	public synchronized void setLastCommand(String lastCommand) {
 		try {
-			// there are still some processes that might take a long time and if we do not wait for them, 
+			// there are still some processes that might take a long time and if we do not wait for them,
 			// then the semaphore will not be released, because an interrupted exception will occur
 			Thread.sleep(2000);
 			isFinished = false;
@@ -70,6 +71,7 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 
 	private class GitCalculatePercentage implements ICalculatePercentage {
 		final Pattern pattern = Pattern.compile("^Receiving objects:\\s*(\\d+)%.*");
+		@Override
 		public float calWorkloadDone(String info) throws IllegalArgumentException {
 			Matcher m = pattern.matcher(info.trim());
 			if(m.matches()) {
@@ -88,13 +90,16 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 	}
 
 	private void updateMonitor(final int work){
+
 		Display.getDefault().asyncExec(new Runnable() {
+
 			@Override
 			public void run() {
 				if (getMonitor() != null) {
 					getMonitor().worked(work);
 				}
 			}
+
 		});
 	}
 
@@ -124,7 +129,7 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 				updateMonitor(delta);
 				reportedWorkload += delta;
 			}
-			
+
 			if (reportedWorkload == RemoteHelper.TOTALWORKLOAD)
 				doneMonitor();
 		}
@@ -152,8 +157,9 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 					continue;
 				}
 				setCommandPrompt(value);
+
 				if (commandPrompt != null && endChar != null && command != null && processStreamBuffer != null &&
-						value.startsWith(commandPrompt) &&  value.endsWith(endChar) && 
+						value.startsWith(commandPrompt) &&  value.endsWith(endChar) &&
 						!value.endsWith(command) && processStreamBuffer.getLastOutputLineContaining(command) != null /*&& waitForOutput*/) {
 					sem.release();
 					isFinished = true;
@@ -165,7 +171,7 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 				this.commandResponseHandler.response(value, false);
 			}
 		}
-		
+
 	}
 	private void setCommandPrompt(String value) {
 		if (commandPrompt == null) {
@@ -178,7 +184,7 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 				commandPrompt = value.substring(0, end);
 				endChar = PROMPT_USER_CH;
 			}
-				
+
 		}
 	}
 	public boolean isFinished() {
-- 
1.7.9.5


