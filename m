Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06565E00716
	for <yocto@yoctoproject.org>; Sun,  3 Feb 2013 23:35:58 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id AA8E7402C2;
	Mon,  4 Feb 2013 07:55:49 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Mon,  4 Feb 2013 08:35:46 +0100
Message-Id: <a30248904660352ac16ed0179a50f259df16cb0a.1359962724.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <c2c1a361604bdc0c7f05a05247a39f49f08b36d5.1359962724.git.timo.mueller@bmw-carit.de>
References: <cover.1359962724.git.timo.mueller@bmw-carit.de>
	<da3b87a039d43a6cf16603b46437c36d4d9635e5.1359962724.git.timo.mueller@bmw-carit.de>
	<940419f475a4c076dd2ead78f93f8b3f510d97d6.1359962724.git.timo.mueller@bmw-carit.de>
	<07b72866269a6dca38c8b4624027ebe246103501.1359962724.git.timo.mueller@bmw-carit.de>
	<f0bbdb07271d4c096067ac640627f26a735c7699.1359962724.git.timo.mueller@bmw-carit.de>
	<f7cfefba2277cefdc676af13088b56b2ae56569f.1359962724.git.timo.mueller@bmw-carit.de>
	<8e152bb34c7e9e61263bc119d4d70e8d911c5265.1359962724.git.timo.mueller@bmw-carit.de>
	<e2166216a995ac252a788b2a0aaa2f36a4f89701.1359962724.git.timo.mueller@bmw-carit.de>
	<cea3e5f07d1bc7cb7cb52e165d5d414f00097565.1359962724.git.timo.mueller@bmw-carit.de>
	<1fdde3693253efc9d8bf731be11d5280ace9cd03.1359962724.git.timo.mueller@bmw-carit.de>
	<c2c1a361604bdc0c7f05a05247a39f49f08b36d5.1359962724.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1359962724.git.timo.mueller@bmw-carit.de>
References: <cover.1359962724.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v3 11/18] plugins/sdk.ide: Add UI method to delete a profile
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
X-List-Received-Date: Mon, 04 Feb 2013 07:35:58 -0000

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
index 14b7846..1a413fa 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -57,6 +57,10 @@ Preferences.Profile.New.Dialog.Title = Save as new target profile
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


