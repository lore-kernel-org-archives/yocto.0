Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60DBAE01518
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 01:24:05 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.105])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id F217A401B1;
	Thu, 27 Jun 2013 09:27:17 +0200 (CEST)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 27 Jun 2013 10:24:00 +0200
Message-Id: <43b46ea27a933e068ca04f0c75175c4b4a522668.1372314464.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <e3e663e2bbd7e990891913d9442dbd7afcda5c5d.1372314464.git.timo.mueller@bmw-carit.de>
References: <cover.1372314464.git.timo.mueller@bmw-carit.de>
	<1bcad6582a7e2d4e865215207111c53a7d000f3b.1372314464.git.timo.mueller@bmw-carit.de>
	<e3e663e2bbd7e990891913d9442dbd7afcda5c5d.1372314464.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1372314464.git.timo.mueller@bmw-carit.de>
References: <cover.1372314464.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv4 3/7] plugins/sdk.ide: Move project specific util methods
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
X-List-Received-Date: Thu, 27 Jun 2013 08:24:06 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Move project specific methods to the new util class to allow public
usage of theses methods.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../preferences/YoctoSDKProjectPropertyPage.java   | 119 ++-------------------
 .../sdk/ide/utils/ProjectPreferenceUtils.java      | 102 ++++++++++++++++++
 2 files changed, 108 insertions(+), 113 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
index 20078f8..58ef594 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
@@ -13,12 +13,8 @@
 package org.yocto.sdk.ide.preferences;
 
 import org.eclipse.core.resources.IProject;
-import org.eclipse.core.resources.ProjectScope;
 import org.eclipse.core.runtime.IAdaptable;
-import org.eclipse.core.runtime.preferences.IEclipsePreferences;
-import org.eclipse.core.runtime.preferences.IScopeContext;
 import org.eclipse.jface.dialogs.Dialog;
-import org.eclipse.jface.preference.IPreferenceStore;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.layout.GridLayout;
 import org.eclipse.swt.widgets.Composite;
@@ -27,7 +23,6 @@ import org.eclipse.swt.widgets.Event;
 import org.eclipse.swt.widgets.Listener;
 import org.eclipse.ui.IWorkbenchPropertyPage;
 import org.eclipse.ui.dialogs.PropertyPage;
-import org.osgi.service.prefs.BackingStoreException;
 import org.yocto.sdk.ide.YoctoProfileElement;
 import org.yocto.sdk.ide.YoctoProfileSetting;
 import org.yocto.sdk.ide.YoctoProjectSpecificSetting;
@@ -40,7 +35,6 @@ import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.YoctoUISetting;
 import org.yocto.sdk.ide.utils.ProjectPreferenceUtils;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
-import org.yocto.sdk.ide.utils.YoctoSDKUtilsConstants;
 
 public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 		IWorkbenchPropertyPage {
@@ -80,10 +74,10 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 
 		yoctoProfileSetting = new YoctoProfileSetting(
 				new YoctoProfileElement(globalProfileElement.getProfilesAsString(), selectedProfile), this, false);
-		boolean useProjectSpecificSetting = getUseProjectSpecificOptionFromProjectPreferences(project);
+		boolean useProjectSpecificSetting = ProjectPreferenceUtils.getUseProjectSpecificOptionFromProjectPreferences(project);
 
 		if (useProjectSpecificSetting) {
-			yoctoUISetting = new YoctoUISetting(getElemFromProjectPreferences(project));
+			yoctoUISetting = new YoctoUISetting(ProjectPreferenceUtils.getElemFromProjectPreferences(project));
 		} else {
 			yoctoUISetting = new YoctoUISetting(YoctoSDKUtils.getElemFromStore(YoctoSDKPlugin.getProfilePreferenceStore(selectedProfile)));
 		}
@@ -161,11 +155,11 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 				return false;
 			}
 
-			saveUseProjectSpecificOptionToProjectPreferences(project, true);
+			ProjectPreferenceUtils.saveUseProjectSpecificOptionToProjectPreferences(project, true);
 			ProjectPreferenceUtils.saveProfilesToProjectPreferences(yoctoProfileSetting.getCurrentInput(), project);
-			saveElemToProjectPreferences(yoctoUISetting.getCurrentInput(), project);
+			ProjectPreferenceUtils.saveElemToProjectPreferences(yoctoUISetting.getCurrentInput(), project);
 		} else {
-			saveUseProjectSpecificOptionToProjectPreferences(project, false);
+			ProjectPreferenceUtils.saveUseProjectSpecificOptionToProjectPreferences(project, false);
 			ProjectPreferenceUtils.saveProfilesToProjectPreferences(yoctoProfileSetting.getCurrentInput(), project);
 		}
 
@@ -174,107 +168,6 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 		return super.performOk();
 	}
 
-	private void saveUseProjectSpecificOptionToProjectPreferences(IProject project, boolean useProjectSpecificSetting) {
-		IScopeContext projectScope = new ProjectScope(project);
-		IEclipsePreferences projectNode = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
-		if (projectNode == null) {
-			return;
-		}
-
-		if (useProjectSpecificSetting) {
-			projectNode.put(PreferenceConstants.PROJECT_SPECIFIC_PROFILE, IPreferenceStore.TRUE);
-		} else {
-			projectNode.put(PreferenceConstants.PROJECT_SPECIFIC_PROFILE, IPreferenceStore.FALSE);
-		}
-
-		try {
-			projectNode.flush();
-		} catch (BackingStoreException e) {
-			e.printStackTrace();
-		}
-	}
-
-	private boolean getUseProjectSpecificOptionFromProjectPreferences(IProject project) {
-		IScopeContext projectScope = new ProjectScope(project);
-		IEclipsePreferences projectNode = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
-		if (projectNode == null) {
-			return false;
-		}
-
-		String useProjectSpecificSettingString = projectNode.get(PreferenceConstants.PROJECT_SPECIFIC_PROFILE, IPreferenceStore.FALSE);
-
-		if (useProjectSpecificSettingString.equals(IPreferenceStore.FALSE)) {
-			return false;
-		}
-		return true;
-	}
-
-	/* Save POKY Preference settings to project's preference store */
-	private void saveElemToProjectPreferences(YoctoUIElement elem, IProject project) {
-		IScopeContext projectScope = new ProjectScope(project);
-		IEclipsePreferences projectNode = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
-		if (projectNode == null) {
-			return;
-		}
-
-		projectNode.putInt(PreferenceConstants.TARGET_ARCH_INDEX, elem.getIntTargetIndex());
-		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE) {
-			projectNode.put(PreferenceConstants.SDK_MODE, IPreferenceStore.TRUE);
-		} else {
-			projectNode.put(PreferenceConstants.SDK_MODE, IPreferenceStore.FALSE);
-		}
-		projectNode.put(PreferenceConstants.QEMU_KERNEL, elem.getStrQemuKernelLoc());
-		projectNode.put(PreferenceConstants.QEMU_OPTION, elem.getStrQemuOption());
-		projectNode.put(PreferenceConstants.SYSROOT, elem.getStrSysrootLoc());
-
-		if (elem.getEnumDeviceMode() == YoctoUIElement.DeviceMode.QEMU_MODE) {
-			projectNode.put(PreferenceConstants.TARGET_MODE, IPreferenceStore.TRUE);
-		} else {
-			projectNode.put(PreferenceConstants.TARGET_MODE, IPreferenceStore.FALSE);
-		}
-		projectNode.put(PreferenceConstants.TOOLCHAIN_ROOT, elem.getStrToolChainRoot());
-		projectNode.put(PreferenceConstants.TOOLCHAIN_TRIPLET, elem.getStrTarget());
-
-		try {
-			projectNode.flush();
-		} catch (BackingStoreException e) {
-			e.printStackTrace();
-		}
-	}
-
-	/* Get POKY Preference settings from project's preference store */
-	private YoctoUIElement getElemFromProjectPreferences(IProject project) {
-		IScopeContext projectScope = new ProjectScope(project);
-		IEclipsePreferences projectNode = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
-		if (projectNode == null) {
-			return ProjectPreferenceUtils.getElemFromProjectEnv(project);
-		}
-
-		YoctoUIElement elem = new YoctoUIElement();
-		elem.setStrToolChainRoot(projectNode.get(PreferenceConstants.TOOLCHAIN_ROOT,""));
-		elem.setStrTarget(projectNode.get(PreferenceConstants.TOOLCHAIN_TRIPLET,""));
-		elem.setStrQemuKernelLoc(projectNode.get(PreferenceConstants.QEMU_KERNEL,""));
-		elem.setStrSysrootLoc(projectNode.get(PreferenceConstants.SYSROOT,""));
-		elem.setStrQemuOption(projectNode.get(PreferenceConstants.QEMU_OPTION,""));
-		String sTemp = projectNode.get(PreferenceConstants.TARGET_ARCH_INDEX,"");
-		if (!sTemp.isEmpty()) {
-			elem.setIntTargetIndex(Integer.valueOf(sTemp).intValue());
-		}
-
-		if (projectNode.get(PreferenceConstants.SDK_MODE,"").equalsIgnoreCase(IPreferenceStore.TRUE)) {
-			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_SDK_MODE);
-		} else {
-			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_TREE_MODE);
-		}
-
-		if(projectNode.get(PreferenceConstants.TARGET_MODE,"").equalsIgnoreCase(IPreferenceStore.TRUE)) {
-			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.QEMU_MODE);
-		} else {
-			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.DEVICE_MODE);
-		}
-		return elem;
-	}
-
 	private void clearMessages() {
 		setErrorMessage(null);
 		setMessage(null);
@@ -289,7 +182,7 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 
 	public void switchToProjectSpecificProfile()
 	{
-		YoctoUIElement profileElement = getElemFromProjectPreferences(getProject());
+		YoctoUIElement profileElement = ProjectPreferenceUtils.getElemFromProjectPreferences(getProject());
 		SDKCheckResults result = YoctoSDKChecker.checkYoctoSDK(profileElement);
 
 		if ((result != SDKCheckResults.SDK_PASS)) {
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/ProjectPreferenceUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/ProjectPreferenceUtils.java
index 0f84912..50904c1 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/ProjectPreferenceUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/ProjectPreferenceUtils.java
@@ -35,6 +35,39 @@ import org.yocto.sdk.ide.preferences.PreferenceConstants;
 public class ProjectPreferenceUtils {
 	private static final String CONSOLE_MESSAGE  = "Menu.SDK.Console.Configure.Message";
 
+	/* Get POKY Preference settings from project's preference store */
+	public static YoctoUIElement getElemFromProjectPreferences(IProject project) {
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectNode = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
+		if (projectNode == null) {
+			return getElemFromProjectEnv(project);
+		}
+
+		YoctoUIElement elem = new YoctoUIElement();
+		elem.setStrToolChainRoot(projectNode.get(PreferenceConstants.TOOLCHAIN_ROOT,""));
+		elem.setStrTarget(projectNode.get(PreferenceConstants.TOOLCHAIN_TRIPLET,""));
+		elem.setStrQemuKernelLoc(projectNode.get(PreferenceConstants.QEMU_KERNEL,""));
+		elem.setStrSysrootLoc(projectNode.get(PreferenceConstants.SYSROOT,""));
+		elem.setStrQemuOption(projectNode.get(PreferenceConstants.QEMU_OPTION,""));
+		String sTemp = projectNode.get(PreferenceConstants.TARGET_ARCH_INDEX,"");
+		if (!sTemp.isEmpty()) {
+			elem.setIntTargetIndex(Integer.valueOf(sTemp).intValue());
+		}
+
+		if (projectNode.get(PreferenceConstants.SDK_MODE,"").equalsIgnoreCase(IPreferenceStore.TRUE)) {
+			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_SDK_MODE);
+		} else {
+			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_TREE_MODE);
+		}
+
+		if(projectNode.get(PreferenceConstants.TARGET_MODE,"").equalsIgnoreCase(IPreferenceStore.TRUE)) {
+			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.QEMU_MODE);
+		} else {
+			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.DEVICE_MODE);
+		}
+		return elem;
+	}
+
 	/* Get POKY Preference settings from project's environment */
 	public static YoctoUIElement getElemFromProjectEnv(IProject project) {
 		YoctoUIElement elem = new YoctoUIElement();
@@ -79,6 +112,55 @@ public class ProjectPreferenceUtils {
 		return new YoctoProfileElement(profiles, selectedProfile);
 	}
 
+	public static boolean getUseProjectSpecificOptionFromProjectPreferences(IProject project) {
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectNode = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
+		if (projectNode == null) {
+			return false;
+		}
+
+		String useProjectSpecificSettingString = projectNode.get(PreferenceConstants.PROJECT_SPECIFIC_PROFILE,
+																	IPreferenceStore.FALSE);
+
+		if (useProjectSpecificSettingString.equals(IPreferenceStore.FALSE)) {
+			return false;
+		}
+
+		return true;
+	}
+
+	/* Save POKY Preference settings to project's preference store */
+	public static void saveElemToProjectPreferences(YoctoUIElement elem, IProject project) {
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectNode = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
+		if (projectNode == null) {
+			return;
+		}
+
+		projectNode.putInt(PreferenceConstants.TARGET_ARCH_INDEX, elem.getIntTargetIndex());
+		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE) {
+			projectNode.put(PreferenceConstants.SDK_MODE, IPreferenceStore.TRUE);
+		} else {
+			projectNode.put(PreferenceConstants.SDK_MODE, IPreferenceStore.FALSE);
+		}
+		projectNode.put(PreferenceConstants.QEMU_KERNEL, elem.getStrQemuKernelLoc());
+		projectNode.put(PreferenceConstants.QEMU_OPTION, elem.getStrQemuOption());
+		projectNode.put(PreferenceConstants.SYSROOT, elem.getStrSysrootLoc());
+		if (elem.getEnumDeviceMode() == YoctoUIElement.DeviceMode.QEMU_MODE) {
+			projectNode.put(PreferenceConstants.TARGET_MODE, IPreferenceStore.TRUE);
+		} else {
+			projectNode.put(PreferenceConstants.TARGET_MODE, IPreferenceStore.FALSE);
+		}
+		projectNode.put(PreferenceConstants.TOOLCHAIN_ROOT, elem.getStrToolChainRoot());
+		projectNode.put(PreferenceConstants.TOOLCHAIN_TRIPLET, elem.getStrTarget());
+
+		try {
+			projectNode.flush();
+		} catch (BackingStoreException e) {
+			e.printStackTrace();
+		}
+	}
+
 	/* Save POKY Preference settings to project's environment */
 	public static void saveElemToProjectEnv(YoctoUIElement elem, IProject project) {
 		ConsoleOutputStream consoleOutStream = null;
@@ -135,4 +217,24 @@ public class ProjectPreferenceUtils {
 			e.printStackTrace();
 		}
 	}
+
+	public static void saveUseProjectSpecificOptionToProjectPreferences(IProject project, boolean useProjectSpecificSetting) {
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectNode = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
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
+			e.printStackTrace();
+		}
+	}
 }
-- 
1.8.1.4


