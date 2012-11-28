Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03F7DE01453
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2012 02:21:49 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Nov 2012 02:21:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,177,1355126400"; d="scan'208";a="223584837"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by azsmga001.ch.intel.com with ESMTP; 28 Nov 2012 02:21:48 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 28 Nov 2012 12:12:25 +0200
Message-Id: <1354097550-21312-4-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1354097550-21312-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1354097550-21312-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 3/8] Fix Bitbake commander project wizard
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
X-List-Received-Date: Wed, 28 Nov 2012 10:21:50 -0000

- do not run git task in a loop
- wait for the command to finish - use ModalContext.allowReadAndDispatch(false) - (needs some fixes for upstream RSE API - TBA)

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/bc/ui/wizards/install/InstallWizard.java |   27 ++++++++++----------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
index dd2074c..d780cbf 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
@@ -9,6 +9,7 @@ import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.IStatus;
 import org.eclipse.core.runtime.Status;
 import org.eclipse.jface.operation.IRunnableWithProgress;
+import org.eclipse.jface.operation.ModalContext;
 import org.eclipse.jface.viewers.IStructuredSelection;
 import org.eclipse.jface.wizard.WizardPage;
 import org.eclipse.ptp.remote.core.IRemoteConnection;
@@ -114,12 +115,12 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 				
 			if (((Boolean)options.get(GIT_CLONE)).booleanValue()) {
 				String[] cmd = {"/usr/bin/git clone --progress", "git://git.yoctoproject.org/poky.git", uri.getPath()};
+//				String[] cmd = {"md5sum /home/builder/socks-gw"};
 				LongtimeRunningTask runningTask = new LongtimeRunningTask("Checking out Yocto git repository", cmd, 
 						((IRemoteConnection)model.get(InstallWizard.SELECTED_CONNECTION)), 
 						((IRemoteServices)model.get(InstallWizard.SELECTED_REMOTE_SERVICE)));
+				ModalContext.setAllowReadAndDispatch(false);
 				this.getContainer().run(false, false, runningTask);
-//				while (!runningTask.isFinished)
-//					Thread.sleep(2);
 			}
 			
 			CommandResponseHandler cmdHandler = RemoteHelper.getCommandHandler(RemoteHelper.getRemoteConnectionByName(((IRemoteConnection)model.get(InstallWizard.SELECTED_CONNECTION)).getName()));
@@ -183,7 +184,7 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 
 		synchronized public void run(IProgressMonitor monitor) 
 				throws InvocationTargetException, InterruptedException {
-			boolean cancel = false;
+//			boolean cancel = false;
 			try {
 				monitor.beginTask(taskName, TOTALWORKLOAD);
 				
@@ -203,17 +204,17 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 				for (int i = 1; i < cmdArray.length; i++)
 					args += cmdArray[i] + " ";
 				try {
-					while (!cancel) {
-	                    if(monitor.isCanceled()) {
-	                            cancel=true;
-	                            throw new InterruptedException("User Cancelled");
-	                    }
-	                    boolean hasErrors = RemoteHelper.runCommandRemote(RemoteHelper.getRemoteConnectionByName(connection.getName()), new YoctoCommand(cmdArray[0], "", args), monitor);
-	                    if (hasErrors)
-	                    	break;
+//					while (!cancel) {
+//	                    if(monitor.isCanceled()) {
+//	                            cancel=true;
+//	                            throw new InterruptedException("User Cancelled");
+//	                    }
+	                    RemoteHelper.runCommandRemote(RemoteHelper.getRemoteConnectionByName(connection.getName()), new YoctoCommand(cmdArray[0], "", args), monitor);
+//	                    if (hasErrors)
+//	                    	break;
 	                    
-	                    Thread.sleep(5000);
-					}
+//	                    Thread.sleep(5000);
+//					}
 				} catch (Exception e) {
 					e.printStackTrace();
 				} finally {
-- 
1.7.9.5


