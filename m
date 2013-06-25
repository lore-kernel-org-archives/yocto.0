Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 913EAE014DF
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 08:33:48 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.105])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 579D2401B1;
	Tue, 25 Jun 2013 16:37:08 +0200 (CEST)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Tue, 25 Jun 2013 17:33:41 +0200
Message-Id: <38f1a1a86e0d37470ef7779e0be4bf04f941ce10.1372170704.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <773e9adacf475c19c2ff25d8812b54a417415dc6.1372170704.git.timo.mueller@bmw-carit.de>
References: <cover.1372170704.git.timo.mueller@bmw-carit.de>
	<8919d96da8a2ff55ff0bea99af6ba4f931e79300.1372170704.git.timo.mueller@bmw-carit.de>
	<773e9adacf475c19c2ff25d8812b54a417415dc6.1372170704.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1372170704.git.timo.mueller@bmw-carit.de>
References: <cover.1372170704.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv3 3/8] plugins/sdk.ide: Move project specific util methods
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
X-List-Received-Date: Tue, 25 Jun 2013 15:33:49 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Move project specific methods to the new util class to allow public
usage of theses methods.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../preferences/YoctoSDKProjectPropertyPage.java   | 121 ++-------------------
 .../sdk/ide/utils/ProjectPreferenceUtils.java      | 102 +++++++++++++++++
 2 files changed, 109 insertions(+), 114 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
index f075c5b..1f82fe1 100644
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
@@ -27,19 +23,17 @@ import org.eclipse.swt.widgets.Event;
 import org.eclipse.swt.widgets.Listener;
 import org.eclipse.ui.IWorkbenchPropertyPage;
 import org.eclipse.ui.dialogs.PropertyPage;
-import org.osgi.service.prefs.BackingStoreException;
 import org.yocto.sdk.ide.YoctoProfileElement;
 import org.yocto.sdk.ide.YoctoProfileSetting;
 import org.yocto.sdk.ide.YoctoProjectSpecificSetting;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
 import org.yocto.sdk.ide.YoctoSDKMessages;
-import org.yocto.sdk.ide.utils.ProjectPreferenceUtils;
-import org.yocto.sdk.ide.utils.YoctoSDKUtils;
-import org.yocto.sdk.ide.utils.YoctoSDKUtilsConstants;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.YoctoUISetting;
+import org.yocto.sdk.ide.utils.ProjectPreferenceUtils;
+import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 
 public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 		IWorkbenchPropertyPage {
@@ -79,10 +73,10 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 
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
@@ -160,11 +154,11 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
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
 
@@ -173,107 +167,6 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
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


