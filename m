Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83A96E014E9
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 07:12:45 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.47])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 3D37A4029E;
	Thu, 24 Jan 2013 15:33:25 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 24 Jan 2013 16:12:34 +0100
Message-Id: <d04dc1a2af924306a72639c3f7333caffd0020c5.1358931353.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <a5eee2a7452cca8bd663b5e325ff1248d6ea3262.1358931353.git.timo.mueller@bmw-carit.de>
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
In-Reply-To: <cover.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 10/17] plugins/sdk.ide: Add UI method to create a new profile
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

When the new button is clicked a dialog shows up and the user has to
provide the name of the new profile. The validity of the name is
checked during input. If the name is valid and the users confirms the
new profile is created.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java | 31 +++++++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |  7 +++
 .../ide/preferences/ProfileNameInputValidator.java | 73 ++++++++++++++++++++++
 3 files changed, 111 insertions(+)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/ProfileNameInputValidator.java

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
index 7c2b8d4..6a38fb1 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
@@ -10,8 +10,12 @@
  *******************************************************************************/
 package org.yocto.sdk.ide;
 
+import org.eclipse.jface.dialogs.IDialogConstants;
+import org.eclipse.jface.dialogs.InputDialog;
 import org.eclipse.jface.preference.PreferencePage;
 import org.eclipse.swt.SWT;
+import org.eclipse.swt.events.MouseAdapter;
+import org.eclipse.swt.events.MouseEvent;
 import org.eclipse.swt.layout.GridData;
 import org.eclipse.swt.layout.GridLayout;
 import org.eclipse.swt.widgets.Button;
@@ -20,10 +24,13 @@ import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Event;
 import org.eclipse.swt.widgets.Group;
 import org.eclipse.swt.widgets.Listener;
+import org.yocto.sdk.ide.preferences.ProfileNameInputValidator;
 
 public class YoctoProfileSetting {
 	private static final String PROFILES_TITLE = "Preferences.Profiles.Title";
 	private static final String NEW_PROFILE_TITLE = "Preferences.Profile.New.Title";
+	private static final String NEW_DIALOG_TITLE = "Preferences.Profile.New.Dialog.Title";
+	private static final String NEW_DIALOG_MESSAGE = "Preferences.Profile.New.Dialog.Message";
 	private static final String RENAME_PROFILE_TITLE = "Preferences.Profile.Rename.Title";
 	private static final String REMOVE_PROFILE_TITLE = "Preferences.Profile.Remove.Title";
 
@@ -89,6 +96,30 @@ public class YoctoProfileSetting {
 	{
 		btnConfigNew = new Button(storeYoctoConfigurationsGroup, SWT.PUSH | SWT.LEAD);
 		btnConfigNew.setText(YoctoSDKMessages.getString(NEW_PROFILE_TITLE));
+		btnConfigNew.addMouseListener(new MouseAdapter()
+		{
+			@Override
+			public void mouseDown(MouseEvent e)
+			{
+				saveChangesOnCurrentProfile();
+				InputDialog profileNameDialog =
+									new InputDialog(null,
+													YoctoSDKMessages.getString(NEW_DIALOG_TITLE),
+													YoctoSDKMessages.getString(NEW_DIALOG_MESSAGE),
+													null,
+													new ProfileNameInputValidator(profileElement));
+
+				int returnCode = profileNameDialog.open();
+				if (returnCode == IDialogConstants.CANCEL_ID) {
+					return;
+				}
+
+				profileElement.addProfile(profileNameDialog.getValue());
+				int index = sdkConfigsCombo.getItemCount();
+				sdkConfigsCombo.add(profileNameDialog.getValue(), index);
+				sdkConfigsCombo.select(index);
+			}
+		});
 	}
 
 	private void createRemoveButton(Group storeYoctoConfigurationsGroup)
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index f8c2e4b..6876663 100644
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
 Preferences.Profile.New.Title = New ...
+Preferences.Profile.New.Dialog.Title = Create a new target profile
+Preferences.Profile.New.Dialog.Message = Please input a profile name.
 Preferences.Profile.Rename.Title = Rename
 Preferences.Profile.Remove.Title = Remove
 
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/ProfileNameInputValidator.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/ProfileNameInputValidator.java
new file mode 100644
index 0000000..17f21db
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/ProfileNameInputValidator.java
@@ -0,0 +1,73 @@
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
+public class ProfileNameInputValidator implements IInputValidator
+{
+	private static final String WARNING_CONTAINS_COMMA = "Preferences.Profile.Validator.InvalidName.Comma";
+	private static final String WARNING_CONTAINS_DOUBLEQUOTE = "Preferences.Profile.Validator.InvalidName.Quote";
+	private static final String PROFILE_NAME_IS_EMPTY = "Preferences.Profile.Validator.InvalidName.Empty";
+	private static final String WARNING_ALREADY_EXISTS = "Preferences.Profile.Validator.InvalidName.Exists";
+
+	private final String selectedItem;
+	private final YoctoProfileElement profileSetting;
+
+	public ProfileNameInputValidator(YoctoProfileElement profileSetting)
+	{
+		this(profileSetting, "");
+	}
+
+	public ProfileNameInputValidator(YoctoProfileElement profileSetting, String selectedItem)
+	{
+		this.selectedItem = selectedItem;
+		this.profileSetting = profileSetting;
+	}
+
+	@Override
+	public String isValid(String newText)
+	{
+		if (newText.contains(","))
+		{
+			return YoctoSDKMessages.getString(WARNING_CONTAINS_COMMA);
+		}
+
+		if (newText.contains("\""))
+		{
+			return YoctoSDKMessages.getString(WARNING_CONTAINS_DOUBLEQUOTE);
+		}
+
+		if (newText.isEmpty())
+		{
+			return YoctoSDKMessages.getString(PROFILE_NAME_IS_EMPTY);
+		}
+
+		if (selectedItemEquals(newText))
+		{
+			return null;
+		}
+
+		if (profileSetting.contains(newText))
+		{
+			return YoctoSDKMessages.getString(WARNING_ALREADY_EXISTS);
+		}
+
+		return null;
+	}
+
+	private boolean selectedItemEquals(String newText)
+	{
+		return !selectedItem.isEmpty() && newText.equals(selectedItem);
+	}
+}
-- 
1.7.11.7


