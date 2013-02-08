Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id D5621E01472
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:26:18 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 81041402D6;
	Fri,  8 Feb 2013 13:45:50 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:26:09 +0100
Message-Id: <2866b7e5be8b3c8ced44bb215a2402ef0881587b.1360326346.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <8d4a09888c692cca0947f6d010a116034afa9525.1360326346.git.timo.mueller@bmw-carit.de>
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
	<8d4a09888c692cca0947f6d010a116034afa9525.1360326346.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360326346.git.timo.mueller@bmw-carit.de>
References: <cover.1360326346.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v4 12/17] plugins/sdk.ide: Add UI method to rename a profile
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

When the rename button is clicked a dialog shows up and the user has
to provide the new name for the profile. The validity of the name is
checked during input. If the name is valid and the users confirms the
profile is renamed. Renaming the standard profile is not allowed.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java | 38 ++++++++++++++++++++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |  2 ++
 2 files changed, 40 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
index aa6f4b2..077dc28 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
@@ -10,6 +10,8 @@
  *******************************************************************************/
 package org.yocto.sdk.ide;
 
+import org.eclipse.jface.dialogs.IDialogConstants;
+import org.eclipse.jface.dialogs.InputDialog;
 import org.eclipse.jface.dialogs.MessageDialog;
 import org.eclipse.jface.preference.PreferencePage;
 import org.eclipse.swt.SWT;
@@ -24,12 +26,15 @@ import org.eclipse.swt.widgets.Event;
 import org.eclipse.swt.widgets.Group;
 import org.eclipse.swt.widgets.Listener;
 import org.yocto.sdk.ide.preferences.PreferenceConstants;
+import org.yocto.sdk.ide.preferences.ProfileNameInputValidator;
 import org.yocto.sdk.ide.preferences.YoctoSDKPreferencePage;
 
 public class YoctoProfileSetting {
 	private static final String PROFILES_TITLE = "Preferences.Profiles.Title";
 	private static final String NEW_PROFILE_TITLE = "Preferences.Profile.New.Title";
 	private static final String RENAME_PROFILE_TITLE = "Preferences.Profile.Rename.Title";
+	private static final String RENAME_DIALOG_TITLE = "Preferences.Profile.Rename.Dialog.Title";
+	private static final String RENAME_DIALOG_MESSAGE = "Preferences.Profile.Rename.Dialog.Message";
 	private static final String REMOVE_PROFILE_TITLE = "Preferences.Profile.Remove.Title";
 	private static final String REMOVE_DIALOG_TITLE = "Preferences.Profile.Remove.Dialog.Title";
 	private static final String REMOVE_DIALOG_MESSAGE = "Preferences.Profile.Remove.Dialog.Message";
@@ -144,6 +149,39 @@ public class YoctoProfileSetting {
 	private void createRenameButton(Group storeYoctoConfigurationsGroup) {
 		btnConfigRename = new Button(storeYoctoConfigurationsGroup, SWT.PUSH | SWT.LEAD);
 		btnConfigRename.setText(YoctoSDKMessages.getString(RENAME_PROFILE_TITLE));
+		btnConfigRename.addMouseListener(new MouseAdapter() {
+			@Override
+			public void mouseDown(MouseEvent e) {
+				saveChangesOnCurrentProfile();
+				int selectedIndex = sdkConfigsCombo.getSelectionIndex();
+				final String selectedItem = sdkConfigsCombo.getItem(selectedIndex);
+
+				if (selectedItem.equals(PreferenceConstants.STANDARD_PROFILE_NAME)) {
+					MessageDialog.openInformation(null,
+							YoctoSDKMessages.getString(MODIFY_STANDARD_TITLE),
+							YoctoSDKMessages.getString(MODIFY_STANDARD_MESSAGE));
+					return;
+				}
+
+				InputDialog profileNameDialog =
+						new InputDialog(null,
+										YoctoSDKMessages.getString(RENAME_DIALOG_TITLE),
+										YoctoSDKMessages.getString(RENAME_DIALOG_MESSAGE),
+										null,
+										new ProfileNameInputValidator(profileElement, selectedItem));
+
+				int returnCode = profileNameDialog.open();
+				if (returnCode == IDialogConstants.CANCEL_ID) {
+					return;
+				}
+
+				String newProfileName = profileNameDialog.getValue();
+				profileElement.rename(selectedItem, profileNameDialog.getValue());
+
+				sdkConfigsCombo.setItem(selectedIndex, newProfileName);
+				sdkConfigsCombo.select(selectedIndex);
+			}
+		});
 	}
 
 	private void saveChangesOnCurrentProfile() {
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index 1788968..f631112 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -56,6 +56,8 @@ Preferences.Profile.New.Title = Save as ...
 Preferences.Profile.New.Dialog.Title = Save as new target profile
 Preferences.Profile.New.Dialog.Message = Please input a profile name.
 Preferences.Profile.Rename.Title = Rename
+Preferences.Profile.Rename.Dialog.Title = Rename target profile
+Preferences.Profile.Rename.Dialog.Message = Please input a new profile name.
 Preferences.Profile.Remove.Title = Remove
 Preferences.Profile.Remove.Dialog.Title = Remove target profile
 Preferences.Profile.Remove.Dialog.Message = Do you really want to the remove the target profile "{0}"?
-- 
1.7.11.7


