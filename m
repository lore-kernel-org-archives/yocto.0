Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0B93E0145F
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 05:56:49 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 7CDF2402B1;
	Wed, 30 Jan 2013 14:16:59 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2013 14:56:26 +0100
Message-Id: <c2c1a361604bdc0c7f05a05247a39f49f08b36d5.1359468548.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <1fdde3693253efc9d8bf731be11d5280ace9cd03.1359468548.git.timo.mueller@bmw-carit.de>
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
In-Reply-To: <cover.1359468548.git.timo.mueller@bmw-carit.de>
References: <cover.1359468548.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v2 10/18] plugins/sdk.ide: Add UI method to create a new profile
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
X-List-Received-Date: Wed, 30 Jan 2013 13:56:50 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

When the save as button is clicked a dialog shows up and the user has
to provide the name of the new profile. The validity of the name is
checked during input. If the name is valid and the users confirms the
new profile is created from the current input of the yocto settings
form.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java | 17 ++++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |  7 +++
 .../ide/preferences/ProfileNameInputValidator.java | 63 ++++++++++++++++++++++
 .../ide/preferences/YoctoSDKPreferencePage.java    | 56 ++++++++++++++++++-
 4 files changed, 142 insertions(+), 1 deletion(-)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/ProfileNameInputValidator.java

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
index 7949cdf..633eb67 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
@@ -12,6 +12,8 @@ package org.yocto.sdk.ide;
 
 import org.eclipse.jface.preference.PreferencePage;
 import org.eclipse.swt.SWT;
+import org.eclipse.swt.events.MouseAdapter;
+import org.eclipse.swt.events.MouseEvent;
 import org.eclipse.swt.layout.GridData;
 import org.eclipse.swt.layout.GridLayout;
 import org.eclipse.swt.widgets.Button;
@@ -20,6 +22,7 @@ import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Event;
 import org.eclipse.swt.widgets.Group;
 import org.eclipse.swt.widgets.Listener;
+import org.yocto.sdk.ide.preferences.YoctoSDKPreferencePage;
 
 public class YoctoProfileSetting {
 	private static final String PROFILES_TITLE = "Preferences.Profiles.Title";
@@ -88,6 +91,14 @@ public class YoctoProfileSetting {
 	private void createSaveAsProfileButton(Group storeYoctoConfigurationsGroup) {
 		btnConfigSaveAs = new Button(storeYoctoConfigurationsGroup, SWT.PUSH | SWT.LEAD);
 		btnConfigSaveAs.setText(YoctoSDKMessages.getString(NEW_PROFILE_TITLE));
+		btnConfigSaveAs.addMouseListener(new MouseAdapter() {
+			@Override
+			public void mouseDown(MouseEvent e) {
+				if (preferencePage instanceof YoctoSDKPreferencePage) {
+					((YoctoSDKPreferencePage) preferencePage).performSaveAs();
+				}
+			}
+		});
 	}
 
 	private void createRemoveButton(Group storeYoctoConfigurationsGroup) {
@@ -111,6 +122,12 @@ public class YoctoProfileSetting {
 		}
 	}
 
+	public void addProfile(String profileName) {
+		int index = sdkConfigsCombo.getItemCount();
+		sdkConfigsCombo.add(profileName, index);
+		sdkConfigsCombo.select(index);
+	}
+
 	public void setUIFormEnabledState(boolean isEnabled) {
 		setButtonsEnabledState(isEnabled);
 		sdkConfigsCombo.setEnabled(isEnabled);
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index 7200741..14b7846 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -46,8 +46,15 @@ Preferences.SDK.Target.name = Target Preferences:
 Preferences.SDK.Informing.Title   = Yocto Project ADT has been successfully set up. 
 Preferences.SDK.Informing.Message = You might need to reconfigure your existing Yocto Project Autotools Projects to use the Yocto Project ADT. Do this from Project > Reconfigure Project!
 
+Preferences.Profile.Validator.InvalidName.Comma = Warning: The profile name cannot contain a comma (,).
+Preferences.Profile.Validator.InvalidName.Quote = Warning: The profile name cannot contain a double quote (\").
+Preferences.Profile.Validator.InvalidName.Empty = Please provide a new profile name.
+Preferences.Profile.Validator.InvalidName.Exists = Warning: The profile already exists.
+
 Preferences.Profiles.Title = Target profiles:
 Preferences.Profile.New.Title = Save as ...
+Preferences.Profile.New.Dialog.Title = Save as new target profile
+Preferences.Profile.New.Dialog.Message = Please input a profile name.
 Preferences.Profile.Rename.Title = Rename
 Preferences.Profile.Remove.Title = Remove
 
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/ProfileNameInputValidator.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/ProfileNameInputValidator.java
new file mode 100644
index 0000000..38e38b1
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/ProfileNameInputValidator.java
@@ -0,0 +1,63 @@
+/*******************************************************************************
+ * Copyright (c) 2012 BMW Car IT GmbH.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * BMW Car IT - initial API and implementation
+ *******************************************************************************/
+package org.yocto.sdk.ide.preferences;
+
+import org.eclipse.jface.dialogs.IInputValidator;
+import org.yocto.sdk.ide.YoctoProfileElement;
+import org.yocto.sdk.ide.YoctoSDKMessages;
+
+public class ProfileNameInputValidator implements IInputValidator {
+	private static final String WARNING_CONTAINS_COMMA = "Preferences.Profile.Validator.InvalidName.Comma";
+	private static final String WARNING_CONTAINS_DOUBLEQUOTE = "Preferences.Profile.Validator.InvalidName.Quote";
+	private static final String PROFILE_NAME_IS_EMPTY = "Preferences.Profile.Validator.InvalidName.Empty";
+	private static final String WARNING_ALREADY_EXISTS = "Preferences.Profile.Validator.InvalidName.Exists";
+
+	private final String selectedItem;
+	private final YoctoProfileElement profileSetting;
+
+	public ProfileNameInputValidator(YoctoProfileElement profileSetting) {
+		this(profileSetting, "");
+	}
+
+	public ProfileNameInputValidator(YoctoProfileElement profileSetting, String selectedItem) {
+		this.selectedItem = selectedItem;
+		this.profileSetting = profileSetting;
+	}
+
+	@Override
+	public String isValid(String newText) {
+		if (newText.contains(",")) {
+			return YoctoSDKMessages.getString(WARNING_CONTAINS_COMMA);
+		}
+
+		if (newText.contains("\"")) {
+			return YoctoSDKMessages.getString(WARNING_CONTAINS_DOUBLEQUOTE);
+		}
+
+		if (newText.isEmpty()) {
+			return YoctoSDKMessages.getString(PROFILE_NAME_IS_EMPTY);
+		}
+
+		if (selectedItemEquals(newText)) {
+			return null;
+		}
+
+		if (profileSetting.contains(newText)) {
+			return YoctoSDKMessages.getString(WARNING_ALREADY_EXISTS);
+		}
+
+		return null;
+	}
+
+	private boolean selectedItemEquals(String newText) {
+		return !selectedItem.isEmpty() && newText.equals(selectedItem);
+	}
+}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index 64c9968..276e366 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -11,6 +11,8 @@
 package org.yocto.sdk.ide.preferences;
 
 import org.eclipse.jface.dialogs.Dialog;
+import org.eclipse.jface.dialogs.IDialogConstants;
+import org.eclipse.jface.dialogs.InputDialog;
 import org.eclipse.jface.preference.PreferencePage;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.widgets.Composite;
@@ -18,6 +20,9 @@ import org.eclipse.swt.widgets.Control;
 import org.eclipse.ui.IWorkbench;
 import org.eclipse.ui.IWorkbenchPreferencePage;
 import org.yocto.sdk.ide.YoctoGeneralException;
+import org.yocto.sdk.ide.YoctoProfileElement;
+import org.yocto.sdk.ide.YoctoProfileSetting;
+import org.yocto.sdk.ide.YoctoSDKMessages;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoSDKUtils.SDKCheckRequestFrom;
@@ -25,7 +30,11 @@ import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.YoctoUISetting;
 
 public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbenchPreferencePage {
-    
+
+	private static final String NEW_DIALOG_TITLE = "Preferences.Profile.New.Dialog.Title";
+	private static final String NEW_DIALOG_MESSAGE = "Preferences.Profile.New.Dialog.Message";
+
+	private YoctoProfileSetting yoctoProfileSetting;
 	private YoctoUISetting yoctoUISetting;
 
 	public YoctoSDKPreferencePage() {
@@ -84,4 +93,49 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 		yoctoUISetting.setCurrentInput(defaultElement);
 		super.performDefaults();
 	}
+
+	public void performSaveAs() {
+		YoctoProfileElement profileElement = yoctoProfileSetting.getCurrentInput();
+		YoctoUIElement uiElement = yoctoUISetting.getCurrentInput();
+
+		try {
+			yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, true);
+		} catch (YoctoGeneralException e) {
+			// just abort saving, validateInput will show an error dialog
+			return;
+		}
+
+		InputDialog profileNameDialog =
+							new InputDialog(null,
+											YoctoSDKMessages.getString(NEW_DIALOG_TITLE),
+											YoctoSDKMessages.getString(NEW_DIALOG_MESSAGE),
+											null,
+											new ProfileNameInputValidator(profileElement));
+
+		int returnCode = profileNameDialog.open();
+		if (returnCode == IDialogConstants.CANCEL_ID) {
+			return;
+		}
+
+		profileElement.addProfile(profileNameDialog.getValue());
+		yoctoProfileSetting.addProfile(profileNameDialog.getValue());
+
+		yoctoUISetting.setCurrentInput(uiElement);
+		performOk();
+	}
+
+	public void switchProfile(String selectedProfile) {
+		setPreferenceStore(YoctoSDKPlugin.getProfilePreferenceStore(selectedProfile));
+		YoctoUIElement profileElement = YoctoSDKUtils.getElemFromStore(getPreferenceStore());
+		yoctoUISetting.setCurrentInput(profileElement);
+	}
+
+	public void renameProfile(String oldProfileName, String newProfileName) {
+		YoctoUIElement oldProfileElement = YoctoSDKUtils.getElemFromStore(YoctoSDKPlugin.getProfilePreferenceStore(oldProfileName));
+		YoctoSDKUtils.saveElemToStore(oldProfileElement, YoctoSDKPlugin.getProfilePreferenceStore(newProfileName));
+	}
+
+	public void deleteProfile(String selectedProfile) {
+		// do nothing
+	}
 }
-- 
1.7.11.7


