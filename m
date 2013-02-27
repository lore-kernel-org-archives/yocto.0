Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 9B570E0070F
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 06:33:29 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.79])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id EE60840073;
	Wed, 27 Feb 2013 14:51:34 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 27 Feb 2013 15:33:26 +0100
Message-Id: <bd12930c8d4da461d37e52a33e5ec9f041e76bc9.1361954040.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH] plugins/sdk.ide: Remove profile edit buttons from property page
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
X-List-Received-Date: Wed, 27 Feb 2013 14:33:30 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The project property page for yocto project settings contains the same
edit buttons as the preference page. As editing profiles is not
allowed in the property page these buttons have been permanently
disabled.

This removes them completely from the property page. The remaining
profile drop-down box allows the user to select a cross development
profile for the project.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java | 30 ++++++++++++++++------
 .../ide/preferences/YoctoSDKPreferencePage.java    |  2 +-
 .../preferences/YoctoSDKProjectPropertyPage.java   |  3 +--
 3 files changed, 24 insertions(+), 11 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
index cc3e167..0f36e99 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
@@ -49,10 +49,12 @@ public class YoctoProfileSetting {
 
 	private YoctoProfileElement profileElement;
 	private PreferencePage preferencePage;
+	private final boolean editable;
 
-	public YoctoProfileSetting(YoctoProfileElement profileElement, PreferencePage preferencePage) {
+	public YoctoProfileSetting(YoctoProfileElement profileElement, PreferencePage preferencePage, final boolean editable) {
 		this.profileElement = profileElement;
 		this.preferencePage = preferencePage;
+		this.editable = editable;
 	}
 
 	public void createComposite(Composite composite) {
@@ -61,7 +63,11 @@ public class YoctoProfileSetting {
 		composite.setLayout(layout);
 
 		Group storeYoctoConfigurationsGroup = new Group (composite, SWT.NONE);
-		layout = new GridLayout(3, false);
+		layout = new GridLayout(1, false);
+		if (isEditable()) {
+			layout.numColumns = 3;
+		}
+
 		storeYoctoConfigurationsGroup.setLayout(layout);
 		gd = new GridData(SWT.FILL, SWT.CENTER, true, false);
 		gd.horizontalSpan = 2;
@@ -101,9 +107,11 @@ public class YoctoProfileSetting {
 		sdkConfigsCombo.addListener(SWT.Selection, selectionListener);
 		sdkConfigsCombo.addListener(SWT.Modify, selectionListener);
 
-		createSaveAsProfileButton(storeYoctoConfigurationsGroup);
-		createRenameButton(storeYoctoConfigurationsGroup);
-		createRemoveButton(storeYoctoConfigurationsGroup);
+		if (isEditable()) {
+			createSaveAsProfileButton(storeYoctoConfigurationsGroup);
+			createRenameButton(storeYoctoConfigurationsGroup);
+			createRemoveButton(storeYoctoConfigurationsGroup);
+		}
 	}
 
 	private void createSaveAsProfileButton(Group storeYoctoConfigurationsGroup) {
@@ -225,8 +233,14 @@ public class YoctoProfileSetting {
 	}
 
 	public void setButtonsEnabledState(boolean isEnabled) {
-		btnConfigRename.setEnabled(isEnabled);
-		btnConfigRemove.setEnabled(isEnabled);
-		btnConfigSaveAs.setEnabled(isEnabled);
+		if (isEditable()) {
+			btnConfigRename.setEnabled(isEnabled);
+			btnConfigRemove.setEnabled(isEnabled);
+			btnConfigSaveAs.setEnabled(isEnabled);
+		}
+	}
+
+	private boolean isEditable() {
+		return editable;
 	}
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index 4d57b45..3e0fa54 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -64,7 +64,7 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 		this.yoctoUISetting = new YoctoUISetting(elem);
 
 		YoctoProfileElement profileElement = new YoctoProfileElement(profiles, selectedProfile);
-		this.yoctoProfileSetting = new YoctoProfileSetting(profileElement, this);
+		this.yoctoProfileSetting = new YoctoProfileSetting(profileElement, this, true);
 	}
 
 	/*
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
index eef56c1..7f0d25e 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
@@ -51,7 +51,7 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 		}
 
 		yoctoProfileSetting = new YoctoProfileSetting(
-				new YoctoProfileElement(globalProfileElement.getProfilesAsString(), selectedProfile), this);
+				new YoctoProfileElement(globalProfileElement.getProfilesAsString(), selectedProfile), this, false);
 		boolean useProjectSpecificSetting = YoctoSDKUtils.getUseProjectSpecificOptionFromProjectPreferences(project);
 
 		if (useProjectSpecificSetting) {
@@ -78,7 +78,6 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 				yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, false);
 			} else {
 				yoctoProfileSetting.setUIFormEnabledState(true);
-				yoctoProfileSetting.setButtonsEnabledState(false);
 				yoctoProjectSpecificSetting.setUseProjectSpecificSettings(false);
 				yoctoUISetting.setUIFormEnabledState(false);
 			}
-- 
1.7.11.7


