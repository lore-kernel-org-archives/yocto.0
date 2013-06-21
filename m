Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96720E006E9
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 05:44:52 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.105])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id D9A2E40206;
	Fri, 21 Jun 2013 13:48:30 +0200 (CEST)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri, 21 Jun 2013 14:44:41 +0200
Message-Id: <3febae446e2129227471238802a4185719bddc99.1371818609.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <8747086bfca592129ab38a4f0a90182488e5cc9c.1371818609.git.timo.mueller@bmw-carit.de>
References: <cover.1371818609.git.timo.mueller@bmw-carit.de>
	<8747086bfca592129ab38a4f0a90182488e5cc9c.1371818609.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1371818609.git.timo.mueller@bmw-carit.de>
References: <cover.1371818609.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv2 2/8] plugins/sdk.ide: Extract project specific util methods
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 21 Jun 2013 12:44:56 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Project specific util methods are moved to a separate util class. This
way the general util class will get more concise and other project
specific methods can be move to this new util class later.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../natures/YoctoSDKAutotoolsProjectNature.java    |   3 +-
 .../ide/preferences/YoctoSDKPreferencePage.java    |  11 +-
 .../preferences/YoctoSDKProjectPropertyPage.java   |  13 +-
 .../sdk/ide/utils/ProjectPreferenceUtils.java      | 138 +++++++++++++++++++++
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java | 118 ------------------
 .../ide/wizard/NewYoctoProjectTemplateProcess.java |   3 +-
 6 files changed, 155 insertions(+), 131 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/ProjectPreferenceUtils.java

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
index fb53c53..ce80d77 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
@@ -18,6 +18,7 @@ import org.eclipse.cdt.managedbuilder.core.ManagedBuildManager;
 import org.eclipse.core.resources.IProject;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoUIElement;
+import org.yocto.sdk.ide.utils.ProjectPreferenceUtils;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 
 public class YoctoSDKAutotoolsProjectNature extends YoctoSDKProjectNature {
@@ -35,7 +36,7 @@ public class YoctoSDKAutotoolsProjectNature extends YoctoSDKProjectNature {
 	public static void configureAutotoolsOptions(IProject project) {
 		IManagedBuildInfo info = ManagedBuildManager.getBuildInfo(project);
 		IConfiguration icfg = info.getDefaultConfiguration();
-		YoctoUIElement elem = YoctoSDKUtils.getElemFromProjectEnv(project);
+		YoctoUIElement elem = ProjectPreferenceUtils.getElemFromProjectEnv(project);
 		String sysroot_str = elem.getStrSysrootLoc();
 		String id = icfg.getId();
 		String CFLAGS_str = YoctoSDKUtils.getEnvValue(project, "CFLAGS");
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index 211c4f9..e8123e2 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -34,6 +34,7 @@ import org.yocto.sdk.ide.YoctoProfileSetting;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
 import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
+import org.yocto.sdk.ide.utils.ProjectPreferenceUtils;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoSDKMessages;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
@@ -240,10 +241,10 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 
 		for (IProject project : yoctoProjects)
 		{
-			YoctoSDKUtils.saveProfilesToProjectPreferences(profileElement, project);
+			ProjectPreferenceUtils.saveProfilesToProjectPreferences(profileElement, project);
 			YoctoUIElement elem = YoctoSDKUtils.getElemFromStore(
 											YoctoSDKPlugin.getProfilePreferenceStore(PreferenceConstants.STANDARD_PROFILE_NAME));
-			YoctoSDKUtils.saveElemToProjectEnv(elem, project);
+			ProjectPreferenceUtils.saveElemToProjectEnv(elem, project);
 		}
 	}
 
@@ -254,14 +255,14 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 
 		for (IProject project : yoctoProjects)
 		{
-			YoctoSDKUtils.saveProfilesToProjectPreferences(profileElement, project);
+			ProjectPreferenceUtils.saveProfilesToProjectPreferences(profileElement, project);
 		}
 	}
 
 	private void updateProjects(HashSet<IProject> yoctoProjects, YoctoUIElement elem) {
 		for (IProject project : yoctoProjects)
 		{
-			YoctoSDKUtils.saveElemToProjectEnv(elem, project);
+			ProjectPreferenceUtils.saveElemToProjectEnv(elem, project);
 		}
 	}
 
@@ -295,7 +296,7 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 
 	private boolean projectUsesProfile(IProject project, String profile)
 	{
-		YoctoProfileElement profileElement = YoctoSDKUtils.getProfilesFromProjectPreferences(project);
+		YoctoProfileElement profileElement = ProjectPreferenceUtils.getProfilesFromProjectPreferences(project);
 
 		if (!profileElement.getSelectedProfile().equals(profile)) {
 			return false;
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
index 9f99caf..f075c5b 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
@@ -34,6 +34,7 @@ import org.yocto.sdk.ide.YoctoProjectSpecificSetting;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
 import org.yocto.sdk.ide.YoctoSDKMessages;
+import org.yocto.sdk.ide.utils.ProjectPreferenceUtils;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 import org.yocto.sdk.ide.utils.YoctoSDKUtilsConstants;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
@@ -69,7 +70,7 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 		IProject project = getProject();
 
 		YoctoProfileElement globalProfileElement= YoctoSDKUtils.getProfilesFromDefaultStore();
-		YoctoProfileElement profileElement = YoctoSDKUtils.getProfilesFromProjectPreferences(project);
+		YoctoProfileElement profileElement = ProjectPreferenceUtils.getProfilesFromProjectPreferences(project);
 
 		String selectedProfile = profileElement.getSelectedProfile();
 		if (!globalProfileElement.contains(selectedProfile)) {
@@ -160,14 +161,14 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 			}
 
 			saveUseProjectSpecificOptionToProjectPreferences(project, true);
-			YoctoSDKUtils.saveProfilesToProjectPreferences(yoctoProfileSetting.getCurrentInput(), project);
+			ProjectPreferenceUtils.saveProfilesToProjectPreferences(yoctoProfileSetting.getCurrentInput(), project);
 			saveElemToProjectPreferences(yoctoUISetting.getCurrentInput(), project);
 		} else {
 			saveUseProjectSpecificOptionToProjectPreferences(project, false);
-			YoctoSDKUtils.saveProfilesToProjectPreferences(yoctoProfileSetting.getCurrentInput(), project);
+			ProjectPreferenceUtils.saveProfilesToProjectPreferences(yoctoProfileSetting.getCurrentInput(), project);
 		}
 
-		YoctoSDKUtils.saveElemToProjectEnv(yoctoUISetting.getCurrentInput(), getProject());
+		ProjectPreferenceUtils.saveElemToProjectEnv(yoctoUISetting.getCurrentInput(), getProject());
 
 		return super.performOk();
 	}
@@ -245,7 +246,7 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 		IScopeContext projectScope = new ProjectScope(project);
 		IEclipsePreferences projectNode = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
 		if (projectNode == null) {
-			return YoctoSDKUtils.getElemFromProjectEnv(project);
+			return ProjectPreferenceUtils.getElemFromProjectEnv(project);
 		}
 
 		YoctoUIElement elem = new YoctoUIElement();
@@ -287,7 +288,7 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 
 	public void switchToProjectSpecificProfile()
 	{
-		YoctoUIElement profileElement = getElemFromProjectPreferences(getProject());
+		YoctoUIElement profileElement = ProjectPreferenceUtils.getElemFromProjectEnv(getProject());
 		yoctoUISetting.setCurrentInput(profileElement);
 	}
 
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/ProjectPreferenceUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/ProjectPreferenceUtils.java
new file mode 100644
index 0000000..0f84912
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/ProjectPreferenceUtils.java
@@ -0,0 +1,138 @@
+/*******************************************************************************
+ * Copyright (c) 2013 BMW Car IT GmbH.
+ * Copyright (c) 2010 Intel Corporation.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * Intel - initial implementation
+ * BMW Car IT - initial implementation and refactoring
+ *******************************************************************************/
+package org.yocto.sdk.ide.utils;
+
+import java.io.IOException;
+
+import org.eclipse.cdt.core.CCorePlugin;
+import org.eclipse.cdt.core.ConsoleOutputStream;
+import org.eclipse.cdt.core.resources.IConsole;
+import org.eclipse.core.resources.IProject;
+import org.eclipse.core.resources.ProjectScope;
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.preferences.IEclipsePreferences;
+import org.eclipse.core.runtime.preferences.IScopeContext;
+import org.eclipse.jface.preference.IPreferenceStore;
+import org.osgi.service.prefs.BackingStoreException;
+import org.yocto.sdk.ide.YoctoGeneralException;
+import org.yocto.sdk.ide.YoctoProfileElement;
+import org.yocto.sdk.ide.YoctoSDKMessages;
+import org.yocto.sdk.ide.YoctoUIElement;
+import org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature;
+import org.yocto.sdk.ide.natures.YoctoSDKCMakeProjectNature;
+import org.yocto.sdk.ide.preferences.PreferenceConstants;
+
+public class ProjectPreferenceUtils {
+	private static final String CONSOLE_MESSAGE  = "Menu.SDK.Console.Configure.Message";
+
+	/* Get POKY Preference settings from project's environment */
+	public static YoctoUIElement getElemFromProjectEnv(IProject project) {
+		YoctoUIElement elem = new YoctoUIElement();
+		elem.setStrToolChainRoot(YoctoSDKUtils.getEnvValue(project, PreferenceConstants.TOOLCHAIN_ROOT));
+		elem.setStrTarget(YoctoSDKUtils.getEnvValue(project, PreferenceConstants.TOOLCHAIN_TRIPLET));
+		elem.setStrQemuKernelLoc(YoctoSDKUtils.getEnvValue(project, PreferenceConstants.QEMU_KERNEL));
+		elem.setStrSysrootLoc(YoctoSDKUtils.getEnvValue(project, PreferenceConstants.SYSROOT));
+		elem.setStrQemuOption(YoctoSDKUtils.getEnvValue(project, PreferenceConstants.QEMU_OPTION));
+		String sTemp = YoctoSDKUtils.getEnvValue(project, PreferenceConstants.TARGET_ARCH_INDEX);
+
+		if (!sTemp.isEmpty()) {
+			elem.setIntTargetIndex(Integer.valueOf(sTemp).intValue());
+		}
+
+		if (YoctoSDKUtils.getEnvValue(project, PreferenceConstants.SDK_MODE).equalsIgnoreCase(IPreferenceStore.TRUE)) {
+			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_SDK_MODE);
+		} else {
+			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_TREE_MODE);
+		}
+
+		if(YoctoSDKUtils.getEnvValue(project, PreferenceConstants.TARGET_MODE).equalsIgnoreCase(IPreferenceStore.TRUE)) {
+			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.QEMU_MODE);
+		} else {
+			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.DEVICE_MODE);
+		}
+
+		return elem;
+	}
+
+	/* Get profiles and selected profile from the project's preference store */
+	public static YoctoProfileElement getProfilesFromProjectPreferences(IProject project) {
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectNode = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
+
+		if (projectNode == null) {
+			return YoctoSDKUtils.getProfilesFromDefaultStore();
+		}
+
+		String profiles = projectNode.get(PreferenceConstants.PROFILES, "");
+		String selectedProfile = projectNode.get(PreferenceConstants.SELECTED_PROFILE, "");
+
+		return new YoctoProfileElement(profiles, selectedProfile);
+	}
+
+	/* Save POKY Preference settings to project's environment */
+	public static void saveElemToProjectEnv(YoctoUIElement elem, IProject project) {
+		ConsoleOutputStream consoleOutStream = null;
+
+		try {
+			YoctoSDKUtils.setEnvironmentVariables(project, elem);
+			YoctoSDKUtils.createRemoteDebugAndQemuLaunchers(project, elem);
+
+			if (project.hasNature(YoctoSDKAutotoolsProjectNature.YoctoSDK_AUTOTOOLS_NATURE_ID)) {
+				YoctoSDKAutotoolsProjectNature.configureAutotoolsOptions(project);
+			} else if (project.hasNature(YoctoSDKCMakeProjectNature.YoctoSDK_CMAKE_NATURE_ID)) {
+				YoctoSDKCMakeProjectNature.extendProjectEnvironmentForCMake(project);
+			}
+
+			IConsole console = CCorePlugin.getDefault().getConsole("org.yocto.sdk.ide.YoctoConsole");
+			console.start(project);
+			consoleOutStream = console.getOutputStream();
+			String messages = YoctoSDKMessages.getString(CONSOLE_MESSAGE);
+			consoleOutStream.write(messages.getBytes());
+		} catch (CoreException e) {
+			System.out.println(e.getMessage());
+		} catch (IOException e) {
+			System.out.println(e.getMessage());
+		} catch (YoctoGeneralException e) {
+			System.out.println(e.getMessage());
+		} finally {
+			if (consoleOutStream != null) {
+				try {
+					consoleOutStream.flush();
+					consoleOutStream.close();
+				} catch (IOException e) {
+					// ignore
+				}
+			}
+		}
+	}
+
+	/* Save profiles and selected profile to the project's preference store */
+	public static void saveProfilesToProjectPreferences(YoctoProfileElement profileElement, IProject project) {
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectPreferences = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
+
+		if (projectPreferences == null) {
+			return;
+		}
+
+		projectPreferences.put(PreferenceConstants.PROFILES, profileElement.getProfilesAsString());
+		projectPreferences.put(PreferenceConstants.SELECTED_PROFILE, profileElement.getSelectedProfile());
+
+		try {
+			projectPreferences.flush();
+		} catch (BackingStoreException e) {
+			// TODO Auto-generated catch block
+			e.printStackTrace();
+		}
+	}
+}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
index 99a9884..2ac48f8 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
@@ -25,34 +25,26 @@ import java.util.Set;
 import java.util.StringTokenizer;
 
 import org.eclipse.cdt.core.CCorePlugin;
-import org.eclipse.cdt.core.ConsoleOutputStream;
 import org.eclipse.cdt.core.envvar.IContributedEnvironment;
 import org.eclipse.cdt.core.envvar.IEnvironmentVariable;
 import org.eclipse.cdt.core.envvar.IEnvironmentVariableManager;
 import org.eclipse.cdt.core.model.CoreModel;
-import org.eclipse.cdt.core.resources.IConsole;
 import org.eclipse.cdt.core.settings.model.ICConfigurationDescription;
 import org.eclipse.cdt.core.settings.model.ICProjectDescription;
 import org.eclipse.cdt.debug.core.ICDTLaunchConfigurationConstants;
 import org.eclipse.cdt.debug.mi.core.IMILaunchConfigurationConstants;
 import org.eclipse.core.resources.IProject;
-import org.eclipse.core.resources.ProjectScope;
 import org.eclipse.core.runtime.CoreException;
-import org.eclipse.core.runtime.preferences.IEclipsePreferences;
-import org.eclipse.core.runtime.preferences.IScopeContext;
 import org.eclipse.debug.core.DebugPlugin;
 import org.eclipse.debug.core.ILaunchConfiguration;
 import org.eclipse.debug.core.ILaunchConfigurationType;
 import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
 import org.eclipse.debug.core.ILaunchManager;
 import org.eclipse.jface.preference.IPreferenceStore;
-import org.osgi.service.prefs.BackingStoreException;
 import org.yocto.sdk.ide.YoctoGeneralException;
 import org.yocto.sdk.ide.YoctoProfileElement;
-import org.yocto.sdk.ide.YoctoSDKMessages;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoUIElement;
-import org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature;
 import org.yocto.sdk.ide.natures.YoctoSDKCMakeProjectNature;
 import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
 import org.yocto.sdk.ide.preferences.PreferenceConstants;
@@ -61,7 +53,6 @@ public class YoctoSDKUtils {
 
 	private static final String DEFAULT_SYSROOT_PREFIX = "--sysroot=";
 	private static final String LIBTOOL_SYSROOT_PREFIX = "--with-libtool-sysroot=";
-	private static final String CONSOLE_MESSAGE  = "Menu.SDK.Console.Configure.Message";
 
 	private static final String DEFAULT_USR_BIN = "/usr/bin/";
 	private static final String NATIVE_SYSROOT = "OECORE_NATIVE_SYSROOT";
@@ -395,78 +386,6 @@ public class YoctoSDKUtils {
 		return qemu_target;
 	}
 
-	/* Get POKY Preference settings from project's environment */
-	public static YoctoUIElement getElemFromProjectEnv(IProject project)
-	{
-		YoctoUIElement elem = new YoctoUIElement();
-		elem.setStrToolChainRoot(getEnvValue(project, PreferenceConstants.TOOLCHAIN_ROOT));
-		elem.setStrTarget(getEnvValue(project, PreferenceConstants.TOOLCHAIN_TRIPLET));
-		elem.setStrQemuKernelLoc(getEnvValue(project, PreferenceConstants.QEMU_KERNEL));
-		elem.setStrSysrootLoc(getEnvValue(project, PreferenceConstants.SYSROOT));
-		elem.setStrQemuOption(getEnvValue(project, PreferenceConstants.QEMU_OPTION));
-		String sTemp = getEnvValue(project, PreferenceConstants.TARGET_ARCH_INDEX);
-		if (!sTemp.isEmpty())
-			elem.setIntTargetIndex(Integer.valueOf(sTemp).intValue());
-		if (getEnvValue(project, PreferenceConstants.SDK_MODE).equalsIgnoreCase(IPreferenceStore.TRUE))
-		{
-			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_SDK_MODE);
-		}
-		else
-			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_TREE_MODE);
-
-		if(getEnvValue(project, PreferenceConstants.TARGET_MODE).equalsIgnoreCase(IPreferenceStore.TRUE))
-			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.QEMU_MODE);
-		else
-			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.DEVICE_MODE);
-		return elem;
-	}
-
-	/* Save POKY Preference settings to project's environment */
-	public static void saveElemToProjectEnv(YoctoUIElement elem, IProject project)
-	{
-		ConsoleOutputStream consoleOutStream = null;
-
-		try {
-			setEnvironmentVariables(project, elem);
-			createRemoteDebugAndQemuLaunchers(project, elem);
-
-			if (project.hasNature(YoctoSDKAutotoolsProjectNature.YoctoSDK_AUTOTOOLS_NATURE_ID)) {
-				YoctoSDKAutotoolsProjectNature.configureAutotoolsOptions(project);
-			} else if (project.hasNature(YoctoSDKCMakeProjectNature.YoctoSDK_CMAKE_NATURE_ID)) {
-				YoctoSDKCMakeProjectNature.extendProjectEnvironmentForCMake(project);
-			}
-
-			IConsole console = CCorePlugin.getDefault().getConsole("org.yocto.sdk.ide.YoctoConsole");
-			console.start(project);
-			consoleOutStream = console.getOutputStream();
-			String messages = YoctoSDKMessages.getString(CONSOLE_MESSAGE);
-			consoleOutStream.write(messages.getBytes());
-		}
-		catch (CoreException e)
-		{
-			System.out.println(e.getMessage());
-		}
-		catch (IOException e)
-		{
-			System.out.println(e.getMessage());
-		}
-		catch (YoctoGeneralException e)
-		{
-			System.out.println(e.getMessage());
-		}
-		finally {
-			if (consoleOutStream != null) {
-				try {
-					consoleOutStream.flush();
-					consoleOutStream.close();
-				}
-				catch (IOException e) {
-					// ignore
-				}
-			}
-		}
-	}
-
 	/* Get IDE wide POKY Preference settings from a specific preference store */
 	public static YoctoUIElement getElemFromStore(IPreferenceStore store) {
 		YoctoUIElement elem = new YoctoUIElement();
@@ -520,27 +439,6 @@ public class YoctoSDKUtils {
 		saveProfilesToStore(profileElement, YoctoSDKPlugin.getDefault().getPreferenceStore());
 	}
 
-	/* Save profiles and selected profile to the project's preference store */
-	public static void saveProfilesToProjectPreferences(YoctoProfileElement profileElement, IProject project) {
-		IScopeContext projectScope = new ProjectScope(project);
-		IEclipsePreferences projectPreferences = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
-		if (projectPreferences == null) {
-			return;
-		}
-
-		projectPreferences.put(PreferenceConstants.PROFILES, profileElement.getProfilesAsString());
-		projectPreferences.put(PreferenceConstants.SELECTED_PROFILE, profileElement.getSelectedProfile());
-
-		try
-		{
-			projectPreferences.flush();
-		} catch (BackingStoreException e)
-		{
-			// TODO Auto-generated catch block
-			e.printStackTrace();
-		}
-	}
-
 	/* Save profiles and selected profile to a specific preference store */
 	private static void saveProfilesToStore(YoctoProfileElement profileElement, IPreferenceStore store) {
 		store.setValue(PreferenceConstants.PROFILES, profileElement.getProfilesAsString());
@@ -560,20 +458,4 @@ public class YoctoSDKUtils {
 
 		return new YoctoProfileElement(profiles, selectedProfile);
 	}
-
-	/* Get profiles and selected profile from the project's preference store */
-	public static YoctoProfileElement getProfilesFromProjectPreferences(IProject project)
-	{
-		IScopeContext projectScope = new ProjectScope(project);
-		IEclipsePreferences projectNode = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
-		if (projectNode == null)
-		{
-			return getProfilesFromDefaultStore();
-		}
-
-		String profiles = projectNode.get(PreferenceConstants.PROFILES, "");
-		String selectedProfile = projectNode.get(PreferenceConstants.SELECTED_PROFILE, "");
-
-		return new YoctoProfileElement(profiles, selectedProfile);
-	}
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java
index 3ea7e33..f64043d 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java
@@ -60,6 +60,7 @@ import org.yocto.sdk.ide.natures.YoctoSDKCMakeProjectNature;
 import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
 import org.yocto.sdk.ide.natures.YoctoSDKNatureUtils;
 import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
+import org.yocto.sdk.ide.utils.ProjectPreferenceUtils;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 
 @SuppressWarnings("restriction")
@@ -205,7 +206,7 @@ public class NewYoctoProjectTemplateProcess extends ProcessRunner {
 		YoctoSDKChecker.checkIfGloballySelectedYoctoProfileIsValid();
 
 		YoctoProfileElement profileElement = YoctoSDKUtils.getProfilesFromDefaultStore();
-		YoctoSDKUtils.saveProfilesToProjectPreferences(profileElement, project);
+		ProjectPreferenceUtils.saveProfilesToProjectPreferences(profileElement, project);
 
 		IPreferenceStore selecteProfileStore = YoctoSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfile());
 		YoctoUIElement elem = YoctoSDKUtils.getElemFromStore(selecteProfileStore);
-- 
1.8.1.4


