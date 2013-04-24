Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 776E7E01515
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 05:35:23 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Apr 2013 05:35:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,542,1363158000"; d="scan'208";a="291028167"
Received: from ideapad.rb.intel.com ([10.237.105.146])
	by azsmga001.ch.intel.com with ESMTP; 24 Apr 2013 05:34:39 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Apr 2013 15:15:54 +0300
Message-Id: <1366805754-31196-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [eclipse-poky][master]Display progress bar while running systemtap script
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
X-List-Received-Date: Wed, 24 Apr 2013 12:35:23 -0000

[Yocto #4270]
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/actions/SystemtapHandler.java  |   35 ++++++++++----------
 1 file changed, 18 insertions(+), 17 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java
index 21bd3ef..87094ee 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java
@@ -12,11 +12,12 @@ package org.yocto.sdk.remotetools.actions;
 import org.eclipse.core.commands.AbstractHandler;
 import org.eclipse.core.commands.ExecutionEvent;
 import org.eclipse.core.commands.ExecutionException;
-import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.jface.dialogs.MessageDialog;
+import org.eclipse.swt.widgets.Shell;
 import org.eclipse.ui.IWorkbenchWindow;
+import org.eclipse.ui.PlatformUI;
 import org.eclipse.ui.handlers.HandlerUtil;
-import org.eclipse.swt.widgets.Shell;
+import org.eclipse.ui.progress.IProgressService;
 
 public class SystemtapHandler extends AbstractHandler {
 	protected SystemtapSettingDialog setting;
@@ -33,27 +34,27 @@ public class SystemtapHandler extends AbstractHandler {
 				);
 		
 		setting.open();
-		if (!setting.isOKPressed())
-			return false;
 		String metadata_location = ((SystemtapSettingDialog)setting).getMetadataLocation();
 		String remote_host = ((SystemtapSettingDialog)setting).getRemoteHost();
 		String user_id = ((SystemtapSettingDialog)setting).getUserID();
 		String systemtap_script = ((SystemtapSettingDialog)setting).getSystemtapScript();
 		String systemtap_args = ((SystemtapSettingDialog)setting).getSystemtapArgs();
-		
-		
-		SystemtapModel op=new SystemtapModel(metadata_location,remote_host, user_id, systemtap_script,
-											systemtap_args,window.getShell().getDisplay());
-		try {
-			op.process(new NullProgressMonitor());
-			return true;
-		}catch (Exception e) {
-			e.printStackTrace();
-			MessageDialog.openError(window.getShell(),
-									"Systemtap",
-									e.getMessage());
+
+		if(setting.open() == BaseSettingDialog.OK) {
+			IProgressService progressService = PlatformUI.getWorkbench().getProgressService();
+			SystemtapModel op = new SystemtapModel(metadata_location,remote_host, user_id, systemtap_script,
+					systemtap_args,window.getShell().getDisplay());
+			try {
+				progressService.busyCursorWhile(op);
+			}catch (InterruptedException e) {
+				//user cancelled
+			}catch (Exception e) {
+				e.printStackTrace();
+				MessageDialog.openError(window.getShell(),
+										"Systemtap",
+										e.getMessage());
+			}
 		}
-			
 		return false;
 	}
 	
-- 
1.7.9.5


