Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8819E014E3
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 07:12:45 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.47])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 7F41B4013D;
	Thu, 24 Jan 2013 15:33:25 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 24 Jan 2013 16:12:36 +0100
Message-Id: <b2642813c55f55b1c93477516eb66cffb9782a94.1358931353.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <b4ad7e61561eeb245f481b64d3d5d7545af41805.1358931353.git.timo.mueller@bmw-carit.de>
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
	<b4ad7e61561eeb245f481b64d3d5d7545af41805.1358931353.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 12/17] plugins/sdk.ide: Add UI method to rename a profile
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

When the rename button is clicked a dialog shows up and the user has
to provide the new name for the profile. The validity of the name is
checked during input. If the name is valid and the users confirms the
profile is renamed. Renaming the standard profile is not allowed.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java | 35 ++++++++++++++++++++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |  2 ++
 2 files changed, 37 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
index cd44b92..309e1de 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
@@ -34,6 +34,8 @@ public class YoctoProfileSetting {
 	private static final String NEW_DIALOG_TITLE = "Preferences.Profile.New.Dialog.Title";
 	private static final String NEW_DIALOG_MESSAGE = "Preferences.Profile.New.Dialog.Message";
 	private static final String RENAME_PROFILE_TITLE = "Preferences.Profile.Rename.Title";
+	private static final String RENAME_DIALOG_TITLE = "Preferences.Profile.Rename.Dialog.Title";
+	private static final String RENAME_DIALOG_MESSAGE = "Preferences.Profile.Rename.Dialog.Message";
 	private static final String REMOVE_PROFILE_TITLE = "Preferences.Profile.Remove.Title";
 	private static final String REMOVE_DIALOG_TITLE = "Preferences.Profile.Remove.Dialog.Title";
 	private static final String REMOVE_DIALOG_MESSAGE = "Preferences.Profile.Remove.Dialog.Message";
@@ -167,6 +169,39 @@ public class YoctoProfileSetting {
 	{
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
index cd52348..ff0946c 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -56,6 +56,8 @@ Preferences.Profile.New.Title = New ...
 Preferences.Profile.New.Dialog.Title = Create a new target profile
 Preferences.Profile.New.Dialog.Message = Please input a profile name.
 Preferences.Profile.Rename.Title = Rename
+Preferences.Profile.Rename.Dialog.Title = Rename target profile
+Preferences.Profile.Rename.Dialog.Message = Please input a new profile name.
 Preferences.Profile.Remove.Title = Remove
 Preferences.Profile.Remove.Dialog.Title = Remove target profile
 Preferences.Profile.Remove.Dialog.Message = Do you really want to the remove the target profile "{0}"?\nProjects using this target profile will be reconfigured to use the standard profile.
-- 
1.7.11.7


