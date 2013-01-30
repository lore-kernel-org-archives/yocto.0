Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A9C9E01465
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 05:56:48 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 9D21240072;
	Wed, 30 Jan 2013 14:17:01 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2013 14:56:42 +0100
Message-Id: <22a31fcfe49f0b609e827519742eac9a7475c729.1359468548.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <2a56aa9621ba0e3f60a7a40b13923b82f99ad260.1359466765.git.timo.mueller@bmw-carit.de>
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
	<0d7a3bd991f07008b9a5e1271800352342070410.1359468548.git.timo.mueller@bmw-carit.de>
	<07f738ec0e99006772601a592b6bf3ebd2799965.1359468548.git.timo.mueller@bmw-carit.de>
	<c4d328e95717425d908e3dfeaba67e90af2f4069.1359466765.git.timo.mueller@bmw-carit.de>
	<7b5fe60bd9f28f769bb1926c37f8dec3b8c89694.1359466765.git.timo.mueller@bmw-carit.de>
	<c4ad24be2ad72e9006e4a9c71297f84d8ed22546.1359468548.git.timo.mueller@bmw-carit.de>
	<6f02c0673e649b05fc0759b1f26631b103788997.1359468548.git.timo.mueller@bmw-carit.de>
	<3084361fc29354d2e7272c59479a008d53b5efe3.1359466765.git.timo.mueller@bmw-carit.de>
	<ed5023548a3992439f72616350eaf9d1eec471a4.1359466765.git.timo.mueller@bmw-carit.de>
	<60005fbb87b899a1900c0f07426a1fb95a39b9f2.1359468548.git.timo.mueller@bmw-carit.de>
	<5ae9bf1ea8a142a93f83bc6c24821692e73c40bb.1359468548.git.timo.mueller@bmw-carit.de>
	<2a56aa9621ba0e3f60a7a40b13923b82f99ad260.1359466765.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1359468548.git.timo.mueller@bmw-carit.de>
References: <cover.1359468548.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v2 18/18] plugins/sdk.ide: Moved save as button to bottom of preference page
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
X-List-Received-Date: Wed, 30 Jan 2013 13:56:49 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>


Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java  | 18 ------------------
 .../sdk/ide/preferences/YoctoSDKPreferencePage.java | 21 +++++++++++++++++++++
 2 files changed, 21 insertions(+), 18 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
index 738dba7..c9c8f4e 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
@@ -31,7 +31,6 @@ import org.yocto.sdk.ide.preferences.YoctoSDKPreferencePage;
 
 public class YoctoProfileSetting {
 	private static final String PROFILES_TITLE = "Preferences.Profiles.Title";
-	private static final String NEW_PROFILE_TITLE = "Preferences.Profile.New.Title";
 	private static final String RENAME_PROFILE_TITLE = "Preferences.Profile.Rename.Title";
 	private static final String RENAME_DIALOG_TITLE = "Preferences.Profile.Rename.Dialog.Title";
 	private static final String RENAME_DIALOG_MESSAGE = "Preferences.Profile.Rename.Dialog.Message";
@@ -44,7 +43,6 @@ public class YoctoProfileSetting {
 	private Combo sdkConfigsCombo;
 	private Button btnConfigRename;
 	private Button btnConfigRemove;
-	private Button btnConfigSaveAs;
 
 	private YoctoProfileElement profileElement;
 	private PreferencePage preferencePage;
@@ -98,27 +96,12 @@ public class YoctoProfileSetting {
 		sdkConfigsCombo.addListener(SWT.Selection, selectionListener);
 		sdkConfigsCombo.addListener(SWT.Modify, selectionListener);
 
-		createSaveAsProfileButton(storeYoctoConfigurationsGroup);
 		createRenameButton(storeYoctoConfigurationsGroup);
 		createRemoveButton(storeYoctoConfigurationsGroup);
 	}
 
-	private void createSaveAsProfileButton(Group storeYoctoConfigurationsGroup) {
-		btnConfigSaveAs = new Button(storeYoctoConfigurationsGroup, SWT.PUSH | SWT.LEAD);
-		btnConfigSaveAs.setText(YoctoSDKMessages.getString(NEW_PROFILE_TITLE));
-		btnConfigSaveAs.addMouseListener(new MouseAdapter() {
-			@Override
-			public void mouseDown(MouseEvent e) {
-				if (preferencePage instanceof YoctoSDKPreferencePage) {
-					((YoctoSDKPreferencePage) preferencePage).performSaveAs();
-				}
-			}
-		});
-	}
-
 	private void createRemoveButton(Group storeYoctoConfigurationsGroup) {
 		btnConfigRemove = new Button(storeYoctoConfigurationsGroup, SWT.PUSH | SWT.LEAD);
-		btnConfigRemove.setLayoutData(new GridData(SWT.RIGHT, SWT.TOP, true, false, 3, 1));
 		btnConfigRemove.setText(YoctoSDKMessages.getString(REMOVE_PROFILE_TITLE));
 		btnConfigRemove.addMouseListener(new MouseAdapter() {
 			@Override
@@ -224,6 +207,5 @@ public class YoctoProfileSetting {
 	public void setButtonsEnabledState(boolean isEnabled) {
 		btnConfigRename.setEnabled(isEnabled);
 		btnConfigRemove.setEnabled(isEnabled);
-		btnConfigSaveAs.setEnabled(isEnabled);
 	}
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index fb015ab..1d6188b 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -16,6 +16,10 @@ import org.eclipse.jface.dialogs.InputDialog;
 import org.eclipse.jface.preference.IPreferenceStore;
 import org.eclipse.jface.preference.PreferencePage;
 import org.eclipse.swt.SWT;
+import org.eclipse.swt.events.MouseAdapter;
+import org.eclipse.swt.events.MouseEvent;
+import org.eclipse.swt.layout.GridLayout;
+import org.eclipse.swt.widgets.Button;
 import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Control;
 import org.eclipse.ui.IWorkbench;
@@ -32,11 +36,13 @@ import org.yocto.sdk.ide.YoctoUISetting;
 
 public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbenchPreferencePage {
 
+	private static final String NEW_PROFILE_TITLE = "Preferences.Profile.New.Title";
 	private static final String NEW_DIALOG_TITLE = "Preferences.Profile.New.Dialog.Title";
 	private static final String NEW_DIALOG_MESSAGE = "Preferences.Profile.New.Dialog.Message";
 
 	private YoctoProfileSetting yoctoProfileSetting;
 	private YoctoUISetting yoctoUISetting;
+	private Button btnConfigSaveAs;
 
 	public YoctoSDKPreferencePage() {
 		//super(GRID);
@@ -80,8 +86,23 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 			System.out.println(e.getMessage());
 			return result;
 		}
+	}
 
+	@Override
+	protected void contributeButtons(Composite parent) {
+		((GridLayout) parent.getLayout()).numColumns++;
+
+		btnConfigSaveAs = new Button(parent, SWT.PUSH);
+		btnConfigSaveAs.setText(YoctoSDKMessages.getString(NEW_PROFILE_TITLE));
+		setButtonLayoutData(btnConfigSaveAs);
+		btnConfigSaveAs.addMouseListener(new MouseAdapter() {
+			@Override
+			public void mouseDown(MouseEvent event) {
+				performSaveAs();
+			}
+		});
 	}
+
 	/*
 	 * @see IPreferencePage#performOk()
 	 */
-- 
1.7.11.7


