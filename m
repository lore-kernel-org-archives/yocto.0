Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E166DE014E1
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 07:12:45 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.47])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 64DA5400E4;
	Thu, 24 Jan 2013 15:33:25 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 24 Jan 2013 16:12:35 +0100
Message-Id: <b4ad7e61561eeb245f481b64d3d5d7545af41805.1358931353.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <d04dc1a2af924306a72639c3f7333caffd0020c5.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
	<da3b87a039d43a6cf16603b46437c36d4d9635e5.1358931353.git.timo.mueller@bmw-carit.de>
	<75fe8c916aee186365c6b4eff31c1bca37a2b444.1358931353.git.timo.mueller@bmw-carit.de>
	<47d5642a5b0675e9e48c8555bb264f2270798542.1358931353.git.timo.mueller@bmw-carit.de>
	<8aa01a9735b1fa23722fd853a4ce79b6a781bd69.1358931353.git.timo.mueller@bmw-carit.de>
	<40dfcc00907e0739cf192b6bdc79a2e5ba1b66f0.1358931353.git.timo.mueller@bmw-carit.de>
	<23bdcff5cc035db6da3007f7ccb24ba7e59a8cc5.1358931353.git.timo.mueller@bmw-carit.de>
	<9869d2f21c4130954187409afc51fad59f63a875.1358931353.git.timo.mueller@bmw-carit.de>
	<1c7c3a16057f2f7a2aef5fe4a57de42a0120e9d6.1358931353.git.timo.mueller@bmw-carit.de>
	<a5eee2a7452cca8bd663b5e325ff1248d6ea3262.1358931353.git.timo.mueller@bmw-carit.de>
	<d04dc1a2af924306a72639c3f7333caffd0020c5.1358931353.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 11/17] plugins/sdk.ide: Add UI method to delete a profile
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
X-List-Received-Date: Thu, 24 Jan 2013 15:12:46 -0000

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
index 6a38fb1..cd44b92 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
@@ -12,6 +12,7 @@ package org.yocto.sdk.ide;
 
 import org.eclipse.jface.dialogs.IDialogConstants;
 import org.eclipse.jface.dialogs.InputDialog;
+import org.eclipse.jface.dialogs.MessageDialog;
 import org.eclipse.jface.preference.PreferencePage;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.events.MouseAdapter;
@@ -24,6 +25,7 @@ import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Event;
 import org.eclipse.swt.widgets.Group;
 import org.eclipse.swt.widgets.Listener;
+import org.yocto.sdk.ide.preferences.PreferenceConstants;
 import org.yocto.sdk.ide.preferences.ProfileNameInputValidator;
 
 public class YoctoProfileSetting {
@@ -33,6 +35,10 @@ public class YoctoProfileSetting {
 	private static final String NEW_DIALOG_MESSAGE = "Preferences.Profile.New.Dialog.Message";
 	private static final String RENAME_PROFILE_TITLE = "Preferences.Profile.Rename.Title";
 	private static final String REMOVE_PROFILE_TITLE = "Preferences.Profile.Remove.Title";
+	private static final String REMOVE_DIALOG_TITLE = "Preferences.Profile.Remove.Dialog.Title";
+	private static final String REMOVE_DIALOG_MESSAGE = "Preferences.Profile.Remove.Dialog.Message";
+	private static final String MODIFY_STANDARD_TITLE = "Preferences.Profile.Standard.Modification.Title";
+	private static final String MODIFY_STANDARD_MESSAGE = "Preferences.Profile.Standard.Modification.Message";
 
 	private Combo sdkConfigsCombo;
 	private Button btnConfigRename;
@@ -127,6 +133,34 @@ public class YoctoProfileSetting {
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
 
 	private void createRenameButton(Group storeYoctoConfigurationsGroup)
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index 6876663..cd52348 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -57,6 +57,10 @@ Preferences.Profile.New.Dialog.Title = Create a new target profile
 Preferences.Profile.New.Dialog.Message = Please input a profile name.
 Preferences.Profile.Rename.Title = Rename
 Preferences.Profile.Remove.Title = Remove
+Preferences.Profile.Remove.Dialog.Title = Remove target profile
+Preferences.Profile.Remove.Dialog.Message = Do you really want to the remove the target profile "{0}"?\nProjects using this target profile will be reconfigured to use the standard profile.
+Preferences.Profile.Standard.Modification.Title = Modify standard target profile
+Preferences.Profile.Standard.Modification.Message = Standard target profile cannot be removed or renamed.
 
 Console.SDK.Name = Yocto Project Console
 
-- 
1.7.11.7


