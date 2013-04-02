Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C172CE014FA
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 05:51:47 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Apr 2013 05:51:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,393,1363158000"; d="scan'208";a="315665290"
Received: from ideapad.rb.intel.com ([10.237.105.62])
	by fmsmga002.fm.intel.com with ESMTP; 02 Apr 2013 05:51:43 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  2 Apr 2013 15:34:14 +0300
Message-Id: <1364906054-24747-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [eclipse-poky][master]Use Directory dialog instead of File Dialog for system tap window
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
X-List-Received-Date: Tue, 02 Apr 2013 12:51:47 -0000

[Yocto #4165]

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../actions/SystemtapSettingDialog.java            |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
index 508e759..133b91c 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
@@ -10,6 +10,8 @@
  *******************************************************************************/
 package org.yocto.sdk.remotetools.actions;
 
+import java.io.File;
+
 import org.eclipse.jface.dialogs.Dialog;
 import org.eclipse.jface.dialogs.IDialogSettings;
 import org.eclipse.swt.SWT;
@@ -20,12 +22,10 @@ import org.eclipse.swt.layout.GridLayout;
 import org.eclipse.swt.widgets.Button;
 import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Control;
-import org.eclipse.swt.widgets.FileDialog;
+import org.eclipse.swt.widgets.DirectoryDialog;
 import org.eclipse.swt.widgets.Label;
 import org.eclipse.swt.widgets.Shell;
 import org.eclipse.swt.widgets.Text;
-import java.io.File;
-
 import org.yocto.sdk.remotetools.Activator;
 import org.yocto.sdk.remotetools.CommonHelper;
 import org.yocto.sdk.remotetools.Messages;
@@ -175,7 +175,7 @@ public class SystemtapSettingDialog extends Dialog {
 			public void widgetSelected(SelectionEvent event) {
 				String dirName;
 				
-				dirName = new FileDialog(parent.getShell()).open();
+				dirName = new DirectoryDialog(parent.getShell()).open();
 				if (dirName != null) {
 					text.setText(dirName);
 				}
-- 
1.7.9.5


