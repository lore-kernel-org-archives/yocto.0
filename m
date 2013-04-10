Return-Path: <Adrian.Dudau@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 5A072E014BC
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 09:12:15 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.2.318.1;
	Wed, 10 Apr 2013 18:12:12 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4451)	id AFB412800C6;
	Wed, 10 Apr 2013 18:12:12 +0200 (CEST)
From: <adrian.dudau@enea.com>
To: <jessica.zhang@intel.com>
Date: Wed, 10 Apr 2013 18:11:56 +0200
Message-ID: <1365610316-26378-1-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
Cc: yocto@yoctoproject.org
Subject: [PATCH][eclipse-poky][master] Systemtap: use FileDialog instead of DirectoryDialog for script browser
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
X-List-Received-Date: Wed, 10 Apr 2013 16:12:16 -0000
Content-Type: text/plain

From: Adrian Dudau <adrian.dudau@enea.com>

[Yocto #4240]

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 .../actions/SystemtapSettingDialog.java            |   23 ++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
index 133b91c..bb22ba6 100644
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
@@ -115,7 +116,7 @@ public class SystemtapSettingDialog extends Dialog {
 		textContainer.setLayout(new GridLayout(2, false));
 		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
 		metadataLocationText = (Text)addTextControl(textContainer, metadata_location);
-		metadataLocationBtn = addFileSelectButton(textContainer, metadataLocationText);
+		metadataLocationBtn = addDirSelectButton(textContainer, metadataLocationText);
 		
 		label = new Label(projComp, SWT.NONE);
 		label.setText(Messages.User_ID);
@@ -167,7 +168,7 @@ public class SystemtapSettingDialog extends Dialog {
 		return (Control)text;
 	}
 
-	private Button addFileSelectButton(final Composite parent, final Text text) {
+	private Button addDirSelectButton(final Composite parent, final Text text) {
 		Button button = new Button(parent, SWT.PUSH | SWT.LEAD);
 		button.setText("Browse");
 		button.addSelectionListener(new SelectionAdapter() {
@@ -184,6 +185,23 @@ public class SystemtapSettingDialog extends Dialog {
 		return button;
 	}		
 
+	private Button addFileSelectButton(final Composite parent, final Text text) {
+		Button button = new Button(parent, SWT.PUSH | SWT.LEAD);
+		button.setText("Browse");
+		button.addSelectionListener(new SelectionAdapter() {
+			@Override
+			public void widgetSelected(SelectionEvent event) {
+				String fileName;
+				
+				fileName = new FileDialog(parent.getShell()).open();
+				if (fileName != null) {
+					text.setText(fileName);
+				}
+			}
+		});
+		return button;
+	}		
+	
  	@Override
 	protected void okPressed() {
 		IDialogSettings settings = Activator.getDefault().getDialogSettings();
@@ -195,6 +213,7 @@ public class SystemtapSettingDialog extends Dialog {
 		File metadata_dir = new File(metadata_location);
 		if (!metadata_dir.exists()) {
 			CommonHelper.showErrorDialog("SystemTap Error", null, "The specified metadata location does not exist!");
+			return;
 		}
 		if (!metadata_dir.isDirectory()) {
 			CommonHelper.showErrorDialog("SystemTap Error", null, "The specified metadata location is not a directory!");
-- 
1.7.10.4


