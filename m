Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 1FDBEE00527
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:28:23 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 465D5400E4;
	Fri,  8 Feb 2013 13:47:55 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:28:18 +0100
Message-Id: <91a0d498bdebd99516d4003fe4ed021f07134a09.1360326418.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <6a08508309a87b895e26035435c5717a1c407f04.1360326418.git.timo.mueller@bmw-carit.de>
References: <cover.1360326418.git.timo.mueller@bmw-carit.de>
	<0c05c26bf5ec89ec5d2e0d65ca747b4f7e39575a.1360326418.git.timo.mueller@bmw-carit.de>
	<6a08508309a87b895e26035435c5717a1c407f04.1360326418.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360326418.git.timo.mueller@bmw-carit.de>
References: <cover.1360326418.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v1 3/5] plugins/sdk.ide: Enable project specific yocto settings
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
X-List-Received-Date: Fri, 08 Feb 2013 13:28:23 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Until now only global target profiles could be used to configure a
project. Now a project can have its own specific settings which are
not affected by global changes to the profile.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../yocto/sdk/ide/YoctoProjectSpecificSetting.java | 80 ++++++++++++++++++++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |  3 +
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       | 39 +++++++++++
 .../sdk/ide/preferences/PreferenceConstants.java   |  2 +
 4 files changed, 124 insertions(+)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProjectSpecificSetting.java

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProjectSpecificSetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProjectSpecificSetting.java
new file mode 100644
index 0000000..25d4de4
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProjectSpecificSetting.java
@@ -0,0 +1,80 @@
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
+import org.eclipse.jface.preference.PreferencePage;
+import org.eclipse.swt.SWT;
+import org.eclipse.swt.events.SelectionEvent;
+import org.eclipse.swt.events.SelectionListener;
+import org.eclipse.swt.layout.GridData;
+import org.eclipse.swt.layout.GridLayout;
+import org.eclipse.swt.widgets.Button;
+import org.eclipse.swt.widgets.Composite;
+import org.eclipse.swt.widgets.Group;
+
+public class YoctoProjectSpecificSetting {
+	private static final String PROJECT_SPECIFIC_TITLE = "Preferences.Profile.ProjectSpecific.Title";
+	private static final String PROJECT_SPECIFIC_GROUP_TITLE = "Preferences.Profile.ProjectSpecific.Group.Title";
+
+	private YoctoProfileSetting yoctoConfigurationsSetting;
+	private YoctoUISetting yoctoUISetting;
+
+	private Button btnUseProjectSpecificSettingsCheckbox;
+	private PreferencePage preferencePage;
+
+	public YoctoProjectSpecificSetting(YoctoProfileSetting yoctoConfigurationsSetting,
+						YoctoUISetting yoctoUISetting, PreferencePage preferencePage) {
+		this.yoctoConfigurationsSetting = yoctoConfigurationsSetting;
+		this.yoctoUISetting = yoctoUISetting;
+		this.preferencePage = preferencePage;
+	}
+
+	public void createComposite(Composite composite) {
+		GridData gd = new GridData(SWT.FILL, SWT.CENTER, true, false);
+		GridLayout layout = new GridLayout(2, false);
+		composite.setLayout(layout);
+
+		Group storeYoctoConfigurationsGroup = new Group (composite, SWT.NONE);
+		layout = new GridLayout(2, false);
+		storeYoctoConfigurationsGroup.setLayout(layout);
+		gd = new GridData(SWT.FILL, SWT.CENTER, true, false);
+		gd.horizontalSpan = 2;
+		storeYoctoConfigurationsGroup.setLayoutData(gd);
+		storeYoctoConfigurationsGroup.setText(YoctoSDKMessages.getString(PROJECT_SPECIFIC_GROUP_TITLE));
+
+		btnUseProjectSpecificSettingsCheckbox = new Button(storeYoctoConfigurationsGroup, SWT.CHECK);
+		btnUseProjectSpecificSettingsCheckbox.setText(YoctoSDKMessages.getString(PROJECT_SPECIFIC_TITLE));
+		btnUseProjectSpecificSettingsCheckbox.addSelectionListener(new SelectionListener() {
+			@Override
+			public void widgetSelected(SelectionEvent e) {
+				if (btnUseProjectSpecificSettingsCheckbox.getSelection()){
+					yoctoConfigurationsSetting.setUIFormEnabledState(false);
+					yoctoUISetting.setUIFormEnabledState(true);
+				} else {
+					yoctoConfigurationsSetting.setUIFormEnabledState(true);
+					yoctoConfigurationsSetting.setButtonsEnabledState(false);
+					yoctoUISetting.setUIFormEnabledState(false);
+				}
+			}
+
+			@Override
+			public void widgetDefaultSelected(SelectionEvent e) {}
+		});
+	}
+
+	public void setUseProjectSpecificSettings(boolean isUsingProjectSpecificSettings) {
+		btnUseProjectSpecificSettingsCheckbox.setSelection(isUsingProjectSpecificSettings);
+	}
+
+	public boolean isUsingProjectSpecificSettings() {
+		return btnUseProjectSpecificSettingsCheckbox.getSelection();
+	}
+}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index f631112..bfdde41 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -64,6 +64,9 @@ Preferences.Profile.Remove.Dialog.Message = Do you really want to the remove the
 Preferences.Profile.Standard.Modification.Title = Modify standard target profile
 Preferences.Profile.Standard.Modification.Message = Standard target profile cannot be removed or renamed.
 
+Preferences.Profile.ProjectSpecific.Title = Use project specific settings
+Preferences.Profile.ProjectSpecific.Group.Title = Project specific settings:
+
 Console.SDK.Name = Yocto Project Console
 
 LaunchConfig.Type.Name = org.eclipse.ui.externaltools.ProgramLaunchConfigurationType
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
index 857928c..11d68e0 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
@@ -820,4 +820,43 @@ public class YoctoSDKUtils {
 
 		return new YoctoProfileElement(profiles, selectedProfile);
 	}
+
+	public static boolean getUseProjectSpecificOptionFromProjectPreferences(IProject project)
+	{
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
+		if (projectNode == null) {
+			return false;
+		}
+
+		String useProjectSpecificSettingString = projectNode.get(PreferenceConstants.PROJECT_SPECIFIC_PROFILE, IPreferenceStore.FALSE);
+
+		if (useProjectSpecificSettingString.equals(IPreferenceStore.FALSE)) {
+			return false;
+		}
+
+		return true;
+	}
+
+	public static void saveUseProjectSpecificOptionToProjectPreferences(IProject project, boolean useProjectSpecificSetting)
+	{
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
+		if (projectNode == null) {
+			return;
+		}
+
+		if (useProjectSpecificSetting) {
+			projectNode.put(PreferenceConstants.PROJECT_SPECIFIC_PROFILE, IPreferenceStore.TRUE);
+		} else {
+			projectNode.put(PreferenceConstants.PROJECT_SPECIFIC_PROFILE, IPreferenceStore.FALSE);
+		}
+
+		try {
+			projectNode.flush();
+		} catch (BackingStoreException e) {
+			// TODO Auto-generated catch block
+			e.printStackTrace();
+		}
+	}
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/PreferenceConstants.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/PreferenceConstants.java
index 814397a..0ebbe99 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/PreferenceConstants.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/PreferenceConstants.java
@@ -38,4 +38,6 @@ public class PreferenceConstants {
 	public static final String PROFILES = "profiles";
 
 	public static final String SELECTED_PROFILE = "selectedProfile";
+
+	public static final String PROJECT_SPECIFIC_PROFILE = "##PROJECT_SPECIFIC_PROFILE##";
 }
-- 
1.7.11.7


