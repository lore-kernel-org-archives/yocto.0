Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBE39E01462
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 05:56:47 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 2C295402D9;
	Wed, 30 Jan 2013 14:17:00 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2013 14:56:31 +0100
Message-Id: <0d7a3bd991f07008b9a5e1271800352342070410.1359468548.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <884e02683abe31869bc2437d04db8b305ec8abfc.1359466765.git.timo.mueller@bmw-carit.de>
References: <cover.1359468548.git.timo.mueller@bmw-carit.de>
	<da3b87a039d43a6cf16603b46437c36d4d9635e5.1359468548.git.timo.mueller@bmw-carit.de>
	<940419f475a4c076dd2ead78f93f8b3f510d97d6.1359468548.git.timo.mueller@bmw-carit.de>
	<07b72866269a6dca38c8b4624027ebe246103501.1359468548.git.timo.mueller@bmw-carit.de>
	<f0bbdb07271d4c096067ac640627f26a735c7699.1359468548.git.timo.mueller@bmw-carit.de>
	<f7cfefba2277cefdc676af13088b56b2ae56569f.1359468548.git.timo.mueller@bmw-carit.de>
	<8e152bb34c7e9e61263bc119d4d70e8d911c5265.1359468548.git.timo.mueller@bmw-carit.de>
	<e2166216a995ac252a788b2a0aaa2f36a4f89701.1359468548.git.timo.mueller@bmw-carit.de>
	<cea3e5f07d1bc7cb7cb52e165d5d414f00097565.1359468548.git.timo.mueller@bmw-carit.de>
	<1fdde3693253efc9d8bf731be11d5280ace9cd03.1359468548.git.timo.mueller@bmw-carit.de>
	<c2c1a361604bdc0c7f05a05247a39f49f08b36d5.1359468548.git.timo.mueller@bmw-carit.de>
	<3bf56fea609743f90d8a6576ab45fc9221859c93.1359466765.git.timo.mueller@bmw-carit.de>
	<a30248904660352ac16ed0179a50f259df16cb0a.1359468548.git.timo.mueller@bmw-carit.de>
	<26825d2d35aab2ecf72c049fabea26fd4c8b90f7.1359466765.git.timo.mueller@bmw-carit.de>
	<884e02683abe31869bc2437d04db8b305ec8abfc.1359466765.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1359468548.git.timo.mueller@bmw-carit.de>
References: <cover.1359468548.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v2 12/18] plugins/sdk.ide: Add UI method to rename a profile
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
X-List-Received-Date: Wed, 30 Jan 2013 13:56:48 -0000

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
index 1a413fa..ad553be 100644
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
 Preferences.Profile.Remove.Dialog.Message = Do you really want to the remove the target profile "{0}"?\nProjects using this target profile will be reconfigured to use the standard profile.
-- 
1.7.11.7


