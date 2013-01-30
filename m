Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40C10E01410
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 05:56:46 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 022CC40295;
	Wed, 30 Jan 2013 14:16:59 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2013 14:56:22 +0100
Message-Id: <8e152bb34c7e9e61263bc119d4d70e8d911c5265.1359468548.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <f7cfefba2277cefdc676af13088b56b2ae56569f.1359468548.git.timo.mueller@bmw-carit.de>
References: <cover.1359468548.git.timo.mueller@bmw-carit.de>
	<da3b87a039d43a6cf16603b46437c36d4d9635e5.1359468548.git.timo.mueller@bmw-carit.de>
	<940419f475a4c076dd2ead78f93f8b3f510d97d6.1359468548.git.timo.mueller@bmw-carit.de>
	<07b72866269a6dca38c8b4624027ebe246103501.1359468548.git.timo.mueller@bmw-carit.de>
	<f0bbdb07271d4c096067ac640627f26a735c7699.1359468548.git.timo.mueller@bmw-carit.de>
	<f7cfefba2277cefdc676af13088b56b2ae56569f.1359468548.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1359468548.git.timo.mueller@bmw-carit.de>
References: <cover.1359468548.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v2 06/18] plugins/sdk.ide: Create UI element for managing target profiles.
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
X-List-Received-Date: Wed, 30 Jan 2013 13:56:46 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

A target profile is a combination of yocto settings identified by a
user-defined name. This UI element allows the user to add new profiles
and to rename or delete existing ones.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoProfileElement.java | 104 +++++++++++++++++++++
 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java |  98 +++++++++++++++++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |   5 +
 .../sdk/ide/preferences/PreferenceConstants.java   |   1 +
 4 files changed, 208 insertions(+)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileElement.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileElement.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileElement.java
new file mode 100644
index 0000000..02626ad
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileElement.java
@@ -0,0 +1,104 @@
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
index 0000000..7476bd3
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
@@ -0,0 +1,98 @@
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
+	private Button btnConfigSaveAs;
+
+	private YoctoProfileElement profileElement;
+
+	public YoctoProfileSetting(YoctoProfileElement profileElement) {
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
+		createSaveAsProfileButton(storeYoctoConfigurationsGroup);
+		createRenameButton(storeYoctoConfigurationsGroup);
+		createRemoveButton(storeYoctoConfigurationsGroup);
+	}
+
+	private void createSaveAsProfileButton(Group storeYoctoConfigurationsGroup) {
+		btnConfigSaveAs = new Button(storeYoctoConfigurationsGroup, SWT.PUSH | SWT.LEAD);
+		btnConfigSaveAs.setText(YoctoSDKMessages.getString(NEW_PROFILE_TITLE));
+	}
+
+	private void createRemoveButton(Group storeYoctoConfigurationsGroup) {
+		btnConfigRemove = new Button(storeYoctoConfigurationsGroup, SWT.PUSH | SWT.LEAD);
+		btnConfigRemove.setLayoutData(new GridData(SWT.RIGHT, SWT.TOP, true, false, 3, 1));
+		btnConfigRemove.setText(YoctoSDKMessages.getString(REMOVE_PROFILE_TITLE));
+	}
+
+	private void createRenameButton(Group storeYoctoConfigurationsGroup) {
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
+		btnConfigSaveAs.setEnabled(isEnabled);
+	}
+}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index 17240e9..7200741 100644
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
+Preferences.Profile.New.Title = Save as ...
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


