Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68671E014F7
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 07:59:43 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 May 2013 07:59:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,728,1363158000"; d="scan'208";a="318423632"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by orsmga001.jf.intel.com with ESMTP; 23 May 2013 07:59:42 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 17:38:35 +0300
Message-Id: <1369319915-25590-5-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369319915-25590-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1369319915-25590-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [eclipse-poky][branch:windows-build][PATCH 4/4] Customize Output processor for git clone command and fix message display
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
X-List-Received-Date: Thu, 23 May 2013 14:59:43 -0000

- in the particular case of creating a new bitbake project by cloning, the whole process is started from the context of the project wizard which is in charge of updating the monitor of the command
	- since the transfer is redirected to the RemoteHelper, somehow along the way the reference of the wizard monitor is lost and the messages are not displayed correctly
	- in order to fix this, the parsing is done locally inside the appropiate context & using a customization of the abstract OutputProcessor

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../bc/remote/utils/YoctoRunnableWithProgress.java |   31 +++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
index 7eb7172..4005554 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
@@ -80,7 +80,36 @@ public class YoctoRunnableWithProgress implements IRunnableWithProgress {
 			e.printStackTrace();
 		}
 	}
+	class YoctoRunnableOutputProcessor extends OutputProcessor{
 
+		public YoctoRunnableOutputProcessor(IProgressMonitor monitor,
+				IHostShell hostShell, CommandResponseHandler cmdHandler,
+				String task) {
+			super(monitor, hostShell, cmdHandler, task);
+		}
+		@Override
+		protected boolean isErrChStop(char ch) {
+			return (ch == '\n' || ch == '\r');
+		}
+
+		@Override
+		protected boolean isOutChStop(char ch) {
+			return (ch == '\n');
+		}
+
+		@Override
+		protected void processOutputBufferLine(char ch, String str) {
+			processBuffer.addOutputLine(str);
+		}
+
+		@Override
+		protected void processErrorBufferLine(char ch, String str) {
+			processBuffer.addOutputLine(str);
+			if (ch == '\r')
+				reportProgress(str);
+		}
+
+	}
 
 	class YoctoThread implements Runnable{
 		private IHost connection;
@@ -98,7 +127,7 @@ public class YoctoRunnableWithProgress implements IRunnableWithProgress {
 		public void run() {
 			try {
 				hostShell = RemoteHelper.runCommandRemote(this.connection, command, monitor);
-				command.setProcessBuffer(RemoteHelper.processOutput(monitor, hostShell, cmdHandler));
+				command.setProcessBuffer(new YoctoRunnableOutputProcessor(monitor, hostShell, cmdHandler, taskName).processOutput());
 			} catch (CoreException e) {
 				e.printStackTrace();
 			} catch (Exception e) {
-- 
1.7.9.5


