Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id D6986E01473
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:26:18 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 63AE4402C2;
	Fri,  8 Feb 2013 13:45:50 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:26:08 +0100
Message-Id: <8d4a09888c692cca0947f6d010a116034afa9525.1360326346.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <77cc790e19ef52b0731dc9d68b63814c17fc725d.1360326346.git.timo.mueller@bmw-carit.de>
References: <cover.1360326346.git.timo.mueller@bmw-carit.de>
	<e70ea91624d01d512b1bec5ad97d9ba47f588771.1360326346.git.timo.mueller@bmw-carit.de>
	<3fec00c8d8c2c4894854c78b4033359aead5409f.1360326346.git.timo.mueller@bmw-carit.de>
	<55bbacc9719bafa4fba381ca4f8f161adb163269.1360326346.git.timo.mueller@bmw-carit.de>
	<71a8d6fe7cb972095795a24d7405682e52ae88a2.1360326346.git.timo.mueller@bmw-carit.de>
	<d3cfcdee95efc3d46c0561823849afb858f3096c.1360326346.git.timo.mueller@bmw-carit.de>
	<b028abd6861fc1db486627617ab17419dbf7cf58.1360326346.git.timo.mueller@bmw-carit.de>
	<ddb9c6bed6d09559850e4c5d141ae72452c0cab7.1360326346.git.timo.mueller@bmw-carit.de>
	<b42a923a5c10d5b8194f93614abc02b359dbf00b.1360326346.git.timo.mueller@bmw-carit.de>
	<2e551dabad2d725a813c40575628e662cfca15ba.1360326346.git.timo.mueller@bmw-carit.de>
	<77cc790e19ef52b0731dc9d68b63814c17fc725d.1360326346.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360326346.git.timo.mueller@bmw-carit.de>
References: <cover.1360326346.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v4 11/17] plugins/sdk.ide: Add UI method to delete a profile
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
X-List-Received-Date: Fri, 08 Feb 2013 13:26:19 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

A profile is removed from the list, when the delete button is
clicked. The deletion has to be confirmed by the user. Deleting the
standard profile is not allowed.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java | 34 ++++++++++++++++++++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |  4 +++
 2 files changed, 38 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
index 633eb67..aa6f4b2 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
@@ -10,6 +10,7 @@
  *******************************************************************************/
 package org.yocto.sdk.ide;
 
+import org.eclipse.jface.dialogs.MessageDialog;
 import org.eclipse.jface.preference.PreferencePage;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.events.MouseAdapter;
@@ -22,6 +23,7 @@ import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Event;
 import org.eclipse.swt.widgets.Group;
 import org.eclipse.swt.widgets.Listener;
+import org.yocto.sdk.ide.preferences.PreferenceConstants;
 import org.yocto.sdk.ide.preferences.YoctoSDKPreferencePage;
 
 public class YoctoProfileSetting {
@@ -29,6 +31,10 @@ public class YoctoProfileSetting {
 	private static final String NEW_PROFILE_TITLE = "Preferences.Profile.New.Title";
 	private static final String RENAME_PROFILE_TITLE = "Preferences.Profile.Rename.Title";
 	private static final String REMOVE_PROFILE_TITLE = "Preferences.Profile.Remove.Title";
+	private static final String REMOVE_DIALOG_TITLE = "Preferences.Profile.Remove.Dialog.Title";
+	private static final String REMOVE_DIALOG_MESSAGE = "Preferences.Profile.Remove.Dialog.Message";
+	private static final String MODIFY_STANDARD_TITLE = "Preferences.Profile.Standard.Modification.Title";
+	private static final String MODIFY_STANDARD_MESSAGE = "Preferences.Profile.Standard.Modification.Message";
 
 	private Combo sdkConfigsCombo;
 	private Button btnConfigRename;
@@ -105,6 +111,34 @@ public class YoctoProfileSetting {
 		btnConfigRemove = new Button(storeYoctoConfigurationsGroup, SWT.PUSH | SWT.LEAD);
 		btnConfigRemove.setLayoutData(new GridData(SWT.RIGHT, SWT.TOP, true, false, 3, 1));
 		btnConfigRemove.setText(YoctoSDKMessages.getString(REMOVE_PROFILE_TITLE));
+		btnConfigRemove.addMouseListener(new MouseAdapter() {
+			@Override
+			public void mouseDown(MouseEvent e) {
+				saveChangesOnCurrentProfile();
+				int selectionIndex = sdkConfigsCombo.getSelectionIndex();
+				String selectedItem = sdkConfigsCombo.getItem(selectionIndex);
+
+				if (selectedItem.equals(PreferenceConstants.STANDARD_PROFILE_NAME)) {
+					MessageDialog.openInformation(null,
+													YoctoSDKMessages.getString(MODIFY_STANDARD_TITLE),
+													YoctoSDKMessages.getString(MODIFY_STANDARD_MESSAGE));
+					return;
+				}
+
+				boolean deleteConfirmed =
+						MessageDialog.openConfirm(null,
+													YoctoSDKMessages.getString(REMOVE_DIALOG_TITLE),
+													YoctoSDKMessages.getFormattedString(REMOVE_DIALOG_MESSAGE, selectedItem));
+
+				if (!deleteConfirmed) {
+					return;
+				}
+
+				sdkConfigsCombo.select(0);
+				sdkConfigsCombo.remove(selectionIndex);
+				profileElement.remove(selectedItem);
+			}
+		});
 	}
 
 	private void createRenameButton(Group storeYoctoConfigurationsGroup) {
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index 14b7846..1788968 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -57,6 +57,10 @@ Preferences.Profile.New.Dialog.Title = Save as new target profile
 Preferences.Profile.New.Dialog.Message = Please input a profile name.
 Preferences.Profile.Rename.Title = Rename
 Preferences.Profile.Remove.Title = Remove
+Preferences.Profile.Remove.Dialog.Title = Remove target profile
+Preferences.Profile.Remove.Dialog.Message = Do you really want to the remove the target profile "{0}"?
+Preferences.Profile.Standard.Modification.Title = Modify standard target profile
+Preferences.Profile.Standard.Modification.Message = Standard target profile cannot be removed or renamed.
 
 Console.SDK.Name = Yocto Project Console
 
-- 
1.7.11.7


