Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F03EE014AE
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 02:07:58 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Apr 2013 02:07:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,454,1363158000"; d="scan'208";a="320768159"
Received: from ideapad.rb.intel.com ([10.237.105.146])
	by fmsmga002.fm.intel.com with ESMTP; 11 Apr 2013 02:07:56 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Apr 2013 11:50:15 +0300
Message-Id: <1365670215-24845-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [eclipse-poky][branch:master]Use different dialogs for metadata & system tap script locations
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
X-List-Received-Date: Thu, 11 Apr 2013 09:07:58 -0000

[Yocto #4243]

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../actions/SystemtapSettingDialog.java            |   21 +++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
index 133b91c..fc9d547 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
@@ -23,6 +23,7 @@ import org.eclipse.swt.widgets.Button;
 import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Control;
 import org.eclipse.swt.widgets.DirectoryDialog;
+import org.eclipse.swt.widgets.FileDialog;
 import org.eclipse.swt.widgets.Label;
 import org.eclipse.swt.widgets.Shell;
 import org.eclipse.swt.widgets.Text;
@@ -34,6 +35,9 @@ import org.yocto.sdk.remotetools.SWTFactory;
 public class SystemtapSettingDialog extends Dialog {
 
 	static protected String TITLE="Systemtap Crosstap";
+	private final static int FILE_DIALOG = 1;
+	private final static int DIRECTORY_DIALOG = 2;
+	
 	protected String title;
 	protected String metadata_location;
 	protected String systemtap_script;
@@ -115,7 +119,7 @@ public class SystemtapSettingDialog extends Dialog {
 		textContainer.setLayout(new GridLayout(2, false));
 		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
 		metadataLocationText = (Text)addTextControl(textContainer, metadata_location);
-		metadataLocationBtn = addFileSelectButton(textContainer, metadataLocationText);
+		metadataLocationBtn = addFileSelectButton(textContainer, metadataLocationText, DIRECTORY_DIALOG);
 		
 		label = new Label(projComp, SWT.NONE);
 		label.setText(Messages.User_ID);
@@ -143,7 +147,7 @@ public class SystemtapSettingDialog extends Dialog {
 		textContainer.setLayout(new GridLayout(2, false));
 		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
 		systemtapScriptText = (Text)addTextControl(textContainer, systemtap_script);
-		systemtapScriptBtn = addFileSelectButton(textContainer, systemtapScriptText);
+		systemtapScriptBtn = addFileSelectButton(textContainer, systemtapScriptText, FILE_DIALOG);
 		
 		label = new Label(projComp, SWT.NONE);
 		label.setText(Messages.Systemtap_Args);
@@ -167,17 +171,20 @@ public class SystemtapSettingDialog extends Dialog {
 		return (Control)text;
 	}
 
-	private Button addFileSelectButton(final Composite parent, final Text text) {
+	private Button addFileSelectButton(final Composite parent, final Text text, final int dialogType) {
 		Button button = new Button(parent, SWT.PUSH | SWT.LEAD);
 		button.setText("Browse");
 		button.addSelectionListener(new SelectionAdapter() {
 			@Override
 			public void widgetSelected(SelectionEvent event) {
-				String dirName;
+				String name = null;
 				
-				dirName = new DirectoryDialog(parent.getShell()).open();
-				if (dirName != null) {
-					text.setText(dirName);
+				if (dialogType == DIRECTORY_DIALOG)
+					name = new DirectoryDialog(parent.getShell()).open();
+				else if(dialogType == FILE_DIALOG)
+					name = new FileDialog(parent.getShell()).open();
+				if (name != null) {
+					text.setText(name);
 				}
 			}
 		});
-- 
1.7.9.5


