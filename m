Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57865E014E1
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 07:12:45 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.47])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id B9FC440275;
	Thu, 24 Jan 2013 15:33:24 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 24 Jan 2013 16:12:30 +0100
Message-Id: <23bdcff5cc035db6da3007f7ccb24ba7e59a8cc5.1358931353.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <40dfcc00907e0739cf192b6bdc79a2e5ba1b66f0.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
	<da3b87a039d43a6cf16603b46437c36d4d9635e5.1358931353.git.timo.mueller@bmw-carit.de>
	<75fe8c916aee186365c6b4eff31c1bca37a2b444.1358931353.git.timo.mueller@bmw-carit.de>
	<47d5642a5b0675e9e48c8555bb264f2270798542.1358931353.git.timo.mueller@bmw-carit.de>
	<8aa01a9735b1fa23722fd853a4ce79b6a781bd69.1358931353.git.timo.mueller@bmw-carit.de>
	<40dfcc00907e0739cf192b6bdc79a2e5ba1b66f0.1358931353.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 06/17] plugins/sdk.ide: Create UI element for managing target profiles.
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
X-List-Received-Date: Thu, 24 Jan 2013 15:12:45 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

A target profile is a combination of yocto settings identified by a
user-defined name. This UI element allows the user to add new profiles
and to rename or delete existing ones.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoProfileElement.java | 105 +++++++++++++++++++++
 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java | 101 ++++++++++++++++++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |   5 +
 .../sdk/ide/preferences/PreferenceConstants.java   |   1 +
 4 files changed, 212 insertions(+)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileElement.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileElement.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileElement.java
new file mode 100644
index 0000000..c75dfd2
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileElement.java
@@ -0,0 +1,105 @@
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
+package org.yocto.sdk.ide;
+
+import java.util.Comparator;
+import java.util.StringTokenizer;
+import java.util.TreeSet;
+
+import org.yocto.sdk.ide.preferences.PreferenceConstants;
+
+public class YoctoProfileElement {
+	private TreeSet<String> profiles = new TreeSet<String>(new Comparator<String>() {
+
+		@Override
+		public int compare(String o1, String o2) {
+			int strcompare = o1.compareTo(o2);
+
+			if (strcompare == 0) {
+				return strcompare;
+			}
+
+			// Standard profile always less than anything else
+			if (o1.equals(PreferenceConstants.STANDARD_PROFILE_NAME)) {
+				return -1;
+			}
+
+			if (o2.equals(PreferenceConstants.STANDARD_PROFILE_NAME)) {
+				return 1;
+			}
+
+			return strcompare;
+		}
+
+	});
+
+	private String selectedProfile;
+
+	public YoctoProfileElement(String profilesString, String selectedProfile) {
+		setProfilesFromString(profilesString);
+		this.selectedProfile = selectedProfile;
+	}
+
+	public void addProfile(String profile) {
+		this.profiles.add(profile);
+	}
+
+	public boolean contains(String newText) {
+		return profiles.contains(newText);
+	}
+
+	public TreeSet<String> getProfiles() {
+		return profiles;
+	}
+
+	public String getProfilesAsString() {
+		String profileString = "";
+
+		for (String profile : profiles) {
+			profileString += "\"" + profile + "\",";
+		}
+		return profileString.substring(0, profileString.length() - 1);
+	}
+
+	public String getSelectedProfile() {
+		return selectedProfile;
+	}
+
+	public void remove(String profile) {
+		this.profiles.remove(profile);
+	}
+
+	public void rename(String oldProfileName, String newProfileName) {
+		this.remove(oldProfileName);
+		this.addProfile(newProfileName);
+
+		if (selectedProfile.equals(oldProfileName)) {
+			selectedProfile = newProfileName;
+		}
+	}
+
+	public void setProfiles(TreeSet<String> profiles) {
+		this.profiles = profiles;
+	}
+
+	public void setProfilesFromString(String profilesString) {
+		StringTokenizer tokenizer = new StringTokenizer(profilesString, ",");
+
+		while (tokenizer.hasMoreElements()) {
+			String config = (String) tokenizer.nextElement();
+			profiles.add(config.replace("\"", ""));
+		}
+	}
+
+	public void setSelectedProfile(String selectedProfile) {
+		this.selectedProfile = selectedProfile;
+	}
+}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
new file mode 100644
index 0000000..eecb4ef
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
@@ -0,0 +1,101 @@
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
+package org.yocto.sdk.ide;
+
+import org.eclipse.swt.SWT;
+import org.eclipse.swt.layout.GridData;
+import org.eclipse.swt.layout.GridLayout;
+import org.eclipse.swt.widgets.Button;
+import org.eclipse.swt.widgets.Combo;
+import org.eclipse.swt.widgets.Composite;
+import org.eclipse.swt.widgets.Group;
+
+public class YoctoProfileSetting {
+	private static final String PROFILES_TITLE = "Preferences.Profiles.Title";
+	private static final String NEW_PROFILE_TITLE = "Preferences.Profile.New.Title";
+	private static final String RENAME_PROFILE_TITLE = "Preferences.Profile.Rename.Title";
+	private static final String REMOVE_PROFILE_TITLE = "Preferences.Profile.Remove.Title";
+
+	private Combo sdkConfigsCombo;
+	private Button btnConfigRename;
+	private Button btnConfigRemove;
+	private Button btnConfigNew;
+
+	private YoctoProfileElement profileElement;
+
+	public YoctoProfileSetting(YoctoProfileElement profileElement){
+		this.profileElement = profileElement;
+	}
+
+	public void createComposite(Composite composite) {
+		GridData gd = new GridData(SWT.FILL, SWT.CENTER, true, false);
+		GridLayout layout = new GridLayout(2, false);
+		composite.setLayout(layout);
+
+		Group storeYoctoConfigurationsGroup = new Group (composite, SWT.NONE);
+		layout = new GridLayout(3, false);
+		storeYoctoConfigurationsGroup.setLayout(layout);
+		gd = new GridData(SWT.FILL, SWT.CENTER, true, false);
+		gd.horizontalSpan = 2;
+		storeYoctoConfigurationsGroup.setLayoutData(gd);
+		storeYoctoConfigurationsGroup.setText(YoctoSDKMessages.getString(PROFILES_TITLE));
+
+		sdkConfigsCombo = new Combo(storeYoctoConfigurationsGroup, SWT.READ_ONLY);
+		addConfigs(sdkConfigsCombo);
+		sdkConfigsCombo.select(sdkConfigsCombo.indexOf(profileElement.getSelectedProfile()));
+		sdkConfigsCombo.setLayout(new GridLayout(2, false));
+		sdkConfigsCombo.setLayoutData(new GridData(SWT.FILL, SWT.LEFT, true, false));
+
+		createNewProfileButton(storeYoctoConfigurationsGroup);
+		createRenameButton(storeYoctoConfigurationsGroup);
+		createRemoveButton(storeYoctoConfigurationsGroup);
+	}
+
+	private void createNewProfileButton(Group storeYoctoConfigurationsGroup)
+	{
+		btnConfigNew = new Button(storeYoctoConfigurationsGroup, SWT.PUSH | SWT.LEAD);
+		btnConfigNew.setText(YoctoSDKMessages.getString(NEW_PROFILE_TITLE));
+	}
+
+	private void createRemoveButton(Group storeYoctoConfigurationsGroup)
+	{
+		btnConfigRemove = new Button(storeYoctoConfigurationsGroup, SWT.PUSH | SWT.LEAD);
+		btnConfigRemove.setLayoutData(new GridData(SWT.RIGHT, SWT.TOP, true, false, 3, 1));
+		btnConfigRemove.setText(YoctoSDKMessages.getString(REMOVE_PROFILE_TITLE));
+	}
+
+	private void createRenameButton(Group storeYoctoConfigurationsGroup)
+	{
+		btnConfigRename = new Button(storeYoctoConfigurationsGroup, SWT.PUSH | SWT.LEAD);
+		btnConfigRename.setText(YoctoSDKMessages.getString(RENAME_PROFILE_TITLE));
+	}
+
+	private void addConfigs(Combo combo) {
+		for (String profile : profileElement.getProfiles()) {
+			combo.add(profile);
+		}
+	}
+
+	public void setUIFormEnabledState(boolean isEnabled) {
+		setButtonsEnabledState(isEnabled);
+		sdkConfigsCombo.setEnabled(isEnabled);
+	}
+
+	public YoctoProfileElement getCurrentInput() {
+		return profileElement;
+	}
+
+	public void setButtonsEnabledState(boolean isEnabled) {
+		btnConfigRename.setEnabled(isEnabled);
+		btnConfigRemove.setEnabled(isEnabled);
+		btnConfigNew.setEnabled(isEnabled);
+	}
+}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index 17240e9..f8c2e4b 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -7,6 +7,7 @@
  *
  * Contributors:
  * Intel - initial API and implementation
+ * BMW Car IT - added keys for target profiles
  *******************************************************************************/
 Wizard.SDK.Warning.Title = Invalid Yocto Project ADT Location
 
@@ -45,6 +46,10 @@ Preferences.SDK.Target.name = Target Preferences:
 Preferences.SDK.Informing.Title   = Yocto Project ADT has been successfully set up. 
 Preferences.SDK.Informing.Message = You might need to reconfigure your existing Yocto Project Autotools Projects to use the Yocto Project ADT. Do this from Project > Reconfigure Project!
 
+Preferences.Profiles.Title = Target profiles:
+Preferences.Profile.New.Title = New ...
+Preferences.Profile.Rename.Title = Rename
+Preferences.Profile.Remove.Title = Remove
 
 Console.SDK.Name = Yocto Project Console
 
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/PreferenceConstants.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/PreferenceConstants.java
index cf79578..d6ca41f 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/PreferenceConstants.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/PreferenceConstants.java
@@ -33,4 +33,5 @@ public class PreferenceConstants {
 		
 	public static final String IP_ADDR = "IPAddr";
 
+	public static final String STANDARD_PROFILE_NAME = "Standard Profile";
 }
-- 
1.7.11.7


