Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f53.google.com (mail-bk0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A889E014FC
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 01:30:13 -0700 (PDT)
Received: by mail-bk0-f53.google.com with SMTP id mx10so1709138bkb.40
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2013 01:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=lbmT/iuXyveShS61HoE9NKARK6+eK/Ikv6vmWqnMmE8=;
	b=vdXm7jH5EREAvMjIor0qxU8G3d1n6HYeQnGtufxJG1MVdeYBcGp2HVziwOD0SAxX7w
	jLhS35Axg19q2tB0iKSOCJGEpSH5+vDBy1+Eev123HujxL45ValXRqR+SNQvOY0tMYBj
	l9H1LwyDQEf4qk9TPv/feDtyzKYkGXs6j93Rk0/I9NAXOUXb21QB/qX5+pFXrON5bHBO
	FE3Lk+Q3gX9sX5nCLl19HsxU/UsaBgHzFhLtaGZ2H0h+oPdVT7Lsl5/gPsKhmKzfVbEM
	mat/j9wrf74x9BJ1KL0DF5ZfGax0XksCUwxC00YUsll4pWfpZsJKi+9xXljVlSDQ4dGV
	a2/A==
X-Received: by 10.204.58.10 with SMTP id e10mr6105949bkh.145.1370248212288;
	Mon, 03 Jun 2013 01:30:12 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id
	jm15sm19449666bkb.13.2013.06.03.01.30.11 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 03 Jun 2013 01:30:11 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Jun 2013 10:29:57 +0200
Message-Id: <1370248197-4243-8-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370248197-4243-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1370248197-4243-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 7/7] plugins/sdk.ide: Moved more locally used methods
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
X-List-Received-Date: Mon, 03 Jun 2013 08:30:13 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Moved public methods from the YoctoSDKUtils
class that are used locally in just one other
class. This should reduce the complexity of the
YoctoSDKUtils class and decrease unneeded coupling
between classes.
---
 .../managedbuilder/job/ExecuteConfigureJob.java    |   29 +++-
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |   26 ++-
 .../ide/preferences/YoctoSDKPreferencePage.java    |   25 ++-
 .../preferences/YoctoSDKProjectPropertyPage.java   |  119 +++++++++++++-
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |  173 +-------------------
 .../sdk/ide/utils/YoctoSDKUtilsConstants.java      |    2 +-
 6 files changed, 190 insertions(+), 184 deletions(-)

diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
index 29e708e..347843e 100644
--- a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
@@ -12,8 +12,17 @@ package org.yocto.cmake.managedbuilder.job;
 
 import java.io.IOException;
 import java.util.Arrays;
+import java.util.HashMap;
 import java.util.LinkedList;
-
+import java.util.Map;
+
+import org.eclipse.cdt.core.CCorePlugin;
+import org.eclipse.cdt.core.envvar.IContributedEnvironment;
+import org.eclipse.cdt.core.envvar.IEnvironmentVariable;
+import org.eclipse.cdt.core.envvar.IEnvironmentVariableManager;
+import org.eclipse.cdt.core.model.CoreModel;
+import org.eclipse.cdt.core.settings.model.ICConfigurationDescription;
+import org.eclipse.cdt.core.settings.model.ICProjectDescription;
 import org.eclipse.cdt.managedbuilder.core.BuildException;
 import org.eclipse.cdt.managedbuilder.core.IConfiguration;
 import org.eclipse.cdt.managedbuilder.core.ITool;
@@ -28,7 +37,6 @@ import org.yocto.cmake.managedbuilder.Activator;
 import org.yocto.cmake.managedbuilder.YoctoCMakeMessages;
 import org.yocto.cmake.managedbuilder.util.ConsoleUtility;
 import org.yocto.cmake.managedbuilder.util.SystemProcess;
-import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 
 
 public class ExecuteConfigureJob extends Job {
@@ -84,7 +92,22 @@ public class ExecuteConfigureJob extends Job {
 
 	protected void createProcesses() {
 		configureProcess =
-				new SystemProcess(configureCommand, location.toFile(), YoctoSDKUtils.getEnvVariablesAsMap(project));
+				new SystemProcess(configureCommand, location.toFile(), getEnvVariablesAsMap(project));
+	}
+
+	private Map<String,String> getEnvVariablesAsMap (IProject project) {
+		Map<String, String> result = new HashMap<String, String>();
+
+		ICProjectDescription cpdesc = CoreModel.getDefault().getProjectDescription(project, true);
+		ICConfigurationDescription ccdesc = cpdesc.getActiveConfiguration();
+		IEnvironmentVariableManager manager = CCorePlugin.getDefault().getBuildEnvironmentManager();
+		IContributedEnvironment env = manager.getContributedEnvironment();
+
+		for(IEnvironmentVariable var : env.getVariables(ccdesc)) {
+			result.put(var.getName(), var.getValue());
+		}
+
+		return result;
 	}
 
 	/* (non-Javadoc)
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
index 92db72a..714470b 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
@@ -18,6 +18,8 @@ import java.io.File;
 import java.io.FileReader;
 import java.io.FilenameFilter;
 import java.io.IOException;
+import java.io.InputStream;
+import java.io.InputStreamReader;
 
 import org.eclipse.jface.preference.IPreferenceStore;
 import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
@@ -130,7 +132,7 @@ public class YoctoSDKChecker {
 
 		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE) {
 			//Check for SDK compatible with the host arch
-			String platform = YoctoSDKUtils.getPlatformArch();
+			String platform = getPlatformArch();
 			String sysroot_dir_str = elem.getStrToolChainRoot() + "/" + SYSROOTS_DIR;
 			File sysroot_dir = new File(sysroot_dir_str);
 			if (!sysroot_dir.exists())
@@ -238,6 +240,28 @@ public class YoctoSDKChecker {
 		return strErrorMsg;
 	}
 
+	private static String getPlatformArch() {
+		String value = null;
+		try
+		{
+			Runtime rt = Runtime.getRuntime();
+			Process proc = rt.exec("uname -m");
+			InputStream stdin = proc.getInputStream();
+			InputStreamReader isr = new InputStreamReader(stdin);
+			BufferedReader br = new BufferedReader(isr);
+			String line = null;
+
+			while ( (line = br.readLine()) != null) {
+				value = line;
+			}
+			proc.waitFor();
+
+		} catch (Throwable t) {
+			t.printStackTrace();
+		}
+		return value;
+	}
+
 	private static String findHostArch(File sysroot_dir) {
 		FilenameFilter nativeFilter = new FilenameFilter() {
 			public boolean accept(File dir, String name) {
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index a6c6861..211c4f9 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -141,7 +141,7 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 			}
 		}
 
-		YoctoSDKUtils.saveElemToStore(modifiedElement, getPreferenceStore());
+		saveElemToStore(modifiedElement, getPreferenceStore());
 		YoctoSDKUtils.saveProfilesToDefaultStore(profileElement);
 
 		updateProjects(yoctoProjects, modifiedElement);
@@ -201,7 +201,7 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 
 	public void renameProfile(String oldProfileName, String newProfileName) {
 		YoctoUIElement oldProfileElement = YoctoSDKUtils.getElemFromStore(YoctoSDKPlugin.getProfilePreferenceStore(oldProfileName));
-		YoctoSDKUtils.saveElemToStore(oldProfileElement, YoctoSDKPlugin.getProfilePreferenceStore(newProfileName));
+		saveElemToStore(oldProfileElement, YoctoSDKPlugin.getProfilePreferenceStore(newProfileName));
 
 		renameProfileInAffectedProjects(oldProfileName, newProfileName);
 	}
@@ -211,6 +211,27 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 		resetProfileInAffectedProjects(selectedProfile);
 	}
 
+	/* Save IDE wide POKY Preference settings to a specific preference store */
+	private void saveElemToStore(YoctoUIElement elem, IPreferenceStore store) {
+		store.setValue(PreferenceConstants.TARGET_ARCH_INDEX, elem.getIntTargetIndex());
+
+		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE) {
+			store.setValue(PreferenceConstants.SDK_MODE, IPreferenceStore.TRUE);
+		} else {
+			store.setValue(PreferenceConstants.SDK_MODE, IPreferenceStore.FALSE);
+		}
+		store.setValue(PreferenceConstants.QEMU_KERNEL, elem.getStrQemuKernelLoc());
+		store.setValue(PreferenceConstants.QEMU_OPTION, elem.getStrQemuOption());
+		store.setValue(PreferenceConstants.SYSROOT, elem.getStrSysrootLoc());
+		if (elem.getEnumDeviceMode() == YoctoUIElement.DeviceMode.QEMU_MODE) {
+			store.setValue(PreferenceConstants.TARGET_MODE, IPreferenceStore.TRUE);
+		} else {
+			store.setValue(PreferenceConstants.TARGET_MODE, IPreferenceStore.FALSE);
+		}
+		store.setValue(PreferenceConstants.TOOLCHAIN_ROOT, elem.getStrToolChainRoot());
+		store.setValue(PreferenceConstants.TOOLCHAIN_TRIPLET, elem.getStrTarget());
+	}
+
 	private void resetProfileInAffectedProjects(String usedProfile)
 	{
 		HashSet<IProject> yoctoProjects = getAffectedProjects(usedProfile);
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
index 8251fad..9f99caf 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
@@ -13,8 +13,12 @@
 package org.yocto.sdk.ide.preferences;
 
 import org.eclipse.core.resources.IProject;
+import org.eclipse.core.resources.ProjectScope;
 import org.eclipse.core.runtime.IAdaptable;
+import org.eclipse.core.runtime.preferences.IEclipsePreferences;
+import org.eclipse.core.runtime.preferences.IScopeContext;
 import org.eclipse.jface.dialogs.Dialog;
+import org.eclipse.jface.preference.IPreferenceStore;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.layout.GridLayout;
 import org.eclipse.swt.widgets.Composite;
@@ -23,6 +27,7 @@ import org.eclipse.swt.widgets.Event;
 import org.eclipse.swt.widgets.Listener;
 import org.eclipse.ui.IWorkbenchPropertyPage;
 import org.eclipse.ui.dialogs.PropertyPage;
+import org.osgi.service.prefs.BackingStoreException;
 import org.yocto.sdk.ide.YoctoProfileElement;
 import org.yocto.sdk.ide.YoctoProfileSetting;
 import org.yocto.sdk.ide.YoctoProjectSpecificSetting;
@@ -30,6 +35,7 @@ import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
 import org.yocto.sdk.ide.YoctoSDKMessages;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
+import org.yocto.sdk.ide.utils.YoctoSDKUtilsConstants;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.YoctoUISetting;
@@ -72,10 +78,10 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 
 		yoctoProfileSetting = new YoctoProfileSetting(
 				new YoctoProfileElement(globalProfileElement.getProfilesAsString(), selectedProfile), this, false);
-		boolean useProjectSpecificSetting = YoctoSDKUtils.getUseProjectSpecificOptionFromProjectPreferences(project);
+		boolean useProjectSpecificSetting = getUseProjectSpecificOptionFromProjectPreferences(project);
 
 		if (useProjectSpecificSetting) {
-			yoctoUISetting = new YoctoUISetting(YoctoSDKUtils.getElemFromProjectPreferences(project));
+			yoctoUISetting = new YoctoUISetting(getElemFromProjectPreferences(project));
 		} else {
 			yoctoUISetting = new YoctoUISetting(YoctoSDKUtils.getElemFromStore(YoctoSDKPlugin.getProfilePreferenceStore(selectedProfile)));
 		}
@@ -153,11 +159,11 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 				return false;
 			}
 
-			YoctoSDKUtils.saveUseProjectSpecificOptionToProjectPreferences(project, true);
+			saveUseProjectSpecificOptionToProjectPreferences(project, true);
 			YoctoSDKUtils.saveProfilesToProjectPreferences(yoctoProfileSetting.getCurrentInput(), project);
-			YoctoSDKUtils.saveElemToProjectPreferences(yoctoUISetting.getCurrentInput(), project);
+			saveElemToProjectPreferences(yoctoUISetting.getCurrentInput(), project);
 		} else {
-			YoctoSDKUtils.saveUseProjectSpecificOptionToProjectPreferences(project, false);
+			saveUseProjectSpecificOptionToProjectPreferences(project, false);
 			YoctoSDKUtils.saveProfilesToProjectPreferences(yoctoProfileSetting.getCurrentInput(), project);
 		}
 
@@ -166,6 +172,107 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 		return super.performOk();
 	}
 
+	private void saveUseProjectSpecificOptionToProjectPreferences(IProject project, boolean useProjectSpecificSetting) {
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
+
+	private boolean getUseProjectSpecificOptionFromProjectPreferences(IProject project) {
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectNode = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
+		if (projectNode == null) {
+			return false;
+		}
+
+		String useProjectSpecificSettingString = projectNode.get(PreferenceConstants.PROJECT_SPECIFIC_PROFILE, IPreferenceStore.FALSE);
+
+		if (useProjectSpecificSettingString.equals(IPreferenceStore.FALSE)) {
+			return false;
+		}
+		return true;
+	}
+
+	/* Save POKY Preference settings to project's preference store */
+	private void saveElemToProjectPreferences(YoctoUIElement elem, IProject project) {
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
+
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
+	/* Get POKY Preference settings from project's preference store */
+	private YoctoUIElement getElemFromProjectPreferences(IProject project) {
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectNode = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
+		if (projectNode == null) {
+			return YoctoSDKUtils.getElemFromProjectEnv(project);
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
 	private void clearMessages() {
 		setErrorMessage(null);
 		setMessage(null);
@@ -180,7 +287,7 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 
 	public void switchToProjectSpecificProfile()
 	{
-		YoctoUIElement profileElement = YoctoSDKUtils.getElemFromProjectPreferences(getProject());
+		YoctoUIElement profileElement = getElemFromProjectPreferences(getProject());
 		yoctoUISetting.setCurrentInput(profileElement);
 	}
 
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
index c43a75a..99a9884 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
@@ -17,13 +17,10 @@ import java.io.File;
 import java.io.FileReader;
 import java.io.FileWriter;
 import java.io.IOException;
-import java.io.InputStream;
-import java.io.InputStreamReader;
 import java.util.ArrayList;
 import java.util.HashMap;
 import java.util.HashSet;
 import java.util.Iterator;
-import java.util.Map;
 import java.util.Set;
 import java.util.StringTokenizer;
 
@@ -62,7 +59,6 @@ import org.yocto.sdk.ide.preferences.PreferenceConstants;
 
 public class YoctoSDKUtils {
 
-	private static final String PROJECT_SCOPE = "org.yocto.sdk.ide";
 	private static final String DEFAULT_SYSROOT_PREFIX = "--sysroot=";
 	private static final String LIBTOOL_SYSROOT_PREFIX = "--with-libtool-sysroot=";
 	private static final String CONSOLE_MESSAGE  = "Menu.SDK.Console.Configure.Message";
@@ -88,21 +84,6 @@ public class YoctoSDKUtils {
 			return var.getValue();
 	}
 
-	public static Map<String,String> getEnvVariablesAsMap (IProject project) {
-		Map<String, String> result = new HashMap<String, String>();
-
-		ICProjectDescription cpdesc = CoreModel.getDefault().getProjectDescription(project, true);
-		ICConfigurationDescription ccdesc = cpdesc.getActiveConfiguration();
-		IEnvironmentVariableManager manager = CCorePlugin.getDefault().getBuildEnvironmentManager();
-		IContributedEnvironment env = manager.getContributedEnvironment();
-
-		for(IEnvironmentVariable var : env.getVariables(ccdesc)) {
-			result.put(var.getName(), var.getValue());
-		}
-
-		return result;
-	}
-
 	/* Save project wide settings into ENV VARs including POKY preference settings
 	 * and Environment Script File export VARs
 	 */
@@ -414,74 +395,6 @@ public class YoctoSDKUtils {
 		return qemu_target;
 	}
 
-	/* Get POKY Preference settings from project's preference store */
-	public static YoctoUIElement getElemFromProjectPreferences(IProject project)
-	{
-		IScopeContext projectScope = new ProjectScope(project);
-		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
-		if (projectNode == null)
-		{
-			return getElemFromProjectEnv(project);
-		}
-
-		YoctoUIElement elem = new YoctoUIElement();
-		elem.setStrToolChainRoot(projectNode.get(PreferenceConstants.TOOLCHAIN_ROOT,""));
-		elem.setStrTarget(projectNode.get(PreferenceConstants.TOOLCHAIN_TRIPLET,""));
-		elem.setStrQemuKernelLoc(projectNode.get(PreferenceConstants.QEMU_KERNEL,""));
-		elem.setStrSysrootLoc(projectNode.get(PreferenceConstants.SYSROOT,""));
-		elem.setStrQemuOption(projectNode.get(PreferenceConstants.QEMU_OPTION,""));
-		String sTemp = projectNode.get(PreferenceConstants.TARGET_ARCH_INDEX,"");
-		if (!sTemp.isEmpty())
-			elem.setIntTargetIndex(Integer.valueOf(sTemp).intValue());
-		if (projectNode.get(PreferenceConstants.SDK_MODE,"").equalsIgnoreCase(IPreferenceStore.TRUE))
-		{
-			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_SDK_MODE);
-		}
-		else
-			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_TREE_MODE);
-
-		if(projectNode.get(PreferenceConstants.TARGET_MODE,"").equalsIgnoreCase(IPreferenceStore.TRUE))
-			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.QEMU_MODE);
-		else
-			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.DEVICE_MODE);
-		return elem;
-	}
-
-	/* Save POKY Preference settings to project's preference store */
-	public static void saveElemToProjectPreferences(YoctoUIElement elem, IProject project)
-	{
-		IScopeContext projectScope = new ProjectScope(project);
-		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
-		if (projectNode == null)
-		{
-			return;
-		}
-
-		projectNode.putInt(PreferenceConstants.TARGET_ARCH_INDEX, elem.getIntTargetIndex());
-		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE)
-			projectNode.put(PreferenceConstants.SDK_MODE, IPreferenceStore.TRUE);
-		else
-			projectNode.put(PreferenceConstants.SDK_MODE, IPreferenceStore.FALSE);
-		projectNode.put(PreferenceConstants.QEMU_KERNEL, elem.getStrQemuKernelLoc());
-		projectNode.put(PreferenceConstants.QEMU_OPTION, elem.getStrQemuOption());
-		projectNode.put(PreferenceConstants.SYSROOT, elem.getStrSysrootLoc());
-		if (elem.getEnumDeviceMode() == YoctoUIElement.DeviceMode.QEMU_MODE)
-			projectNode.put(PreferenceConstants.TARGET_MODE, IPreferenceStore.TRUE);
-		else
-			projectNode.put(PreferenceConstants.TARGET_MODE, IPreferenceStore.FALSE);
-		projectNode.put(PreferenceConstants.TOOLCHAIN_ROOT, elem.getStrToolChainRoot());
-		projectNode.put(PreferenceConstants.TOOLCHAIN_TRIPLET, elem.getStrTarget());
-
-		try
-		{
-			projectNode.flush();
-		} catch (BackingStoreException e)
-		{
-			// TODO Auto-generated catch block
-			e.printStackTrace();
-		}
-	}
-
 	/* Get POKY Preference settings from project's environment */
 	public static YoctoUIElement getElemFromProjectEnv(IProject project)
 	{
@@ -554,25 +467,6 @@ public class YoctoSDKUtils {
 		}
 	}
 
-	/* Save IDE wide POKY Preference settings to a specific preference store */
-	public static void saveElemToStore(YoctoUIElement elem, IPreferenceStore store)
-	{
-		store.setValue(PreferenceConstants.TARGET_ARCH_INDEX, elem.getIntTargetIndex());
-		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE)
-			store.setValue(PreferenceConstants.SDK_MODE, IPreferenceStore.TRUE);
-		else
-			store.setValue(PreferenceConstants.SDK_MODE, IPreferenceStore.FALSE);
-		store.setValue(PreferenceConstants.QEMU_KERNEL, elem.getStrQemuKernelLoc());
-		store.setValue(PreferenceConstants.QEMU_OPTION, elem.getStrQemuOption());
-		store.setValue(PreferenceConstants.SYSROOT, elem.getStrSysrootLoc());
-		if (elem.getEnumDeviceMode() == YoctoUIElement.DeviceMode.QEMU_MODE)
-			store.setValue(PreferenceConstants.TARGET_MODE, IPreferenceStore.TRUE);
-		else
-			store.setValue(PreferenceConstants.TARGET_MODE, IPreferenceStore.FALSE);
-		store.setValue(PreferenceConstants.TOOLCHAIN_ROOT, elem.getStrToolChainRoot());
-		store.setValue(PreferenceConstants.TOOLCHAIN_TRIPLET, elem.getStrTarget());
-	}
-
 	/* Get IDE wide POKY Preference settings from a specific preference store */
 	public static YoctoUIElement getElemFromStore(IPreferenceStore store) {
 		YoctoUIElement elem = new YoctoUIElement();
@@ -621,30 +515,6 @@ public class YoctoSDKUtils {
 		return elem;
 	}
 
-	public static String getPlatformArch()
-	{
-		String value = null;
-		try
-		{
-			Runtime rt = Runtime.getRuntime();
-			Process proc = rt.exec("uname -m");
-			InputStream stdin = proc.getInputStream();
-			InputStreamReader isr = new InputStreamReader(stdin);
-			BufferedReader br = new BufferedReader(isr);
-			String line = null;
-
-			while ( (line = br.readLine()) != null) {
-				value = line;
-			}
-			int exitVal = proc.waitFor();
-
-		} catch (Throwable t)
-		  {
-			t.printStackTrace();
-		  }
-		return value;
-	}
-
 	/* Save profiles and selected profile to the default preference store */
 	public static void saveProfilesToDefaultStore(YoctoProfileElement profileElement) {
 		saveProfilesToStore(profileElement, YoctoSDKPlugin.getDefault().getPreferenceStore());
@@ -653,7 +523,7 @@ public class YoctoSDKUtils {
 	/* Save profiles and selected profile to the project's preference store */
 	public static void saveProfilesToProjectPreferences(YoctoProfileElement profileElement, IProject project) {
 		IScopeContext projectScope = new ProjectScope(project);
-		IEclipsePreferences projectPreferences = projectScope.getNode(PROJECT_SCOPE);
+		IEclipsePreferences projectPreferences = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
 		if (projectPreferences == null) {
 			return;
 		}
@@ -695,7 +565,7 @@ public class YoctoSDKUtils {
 	public static YoctoProfileElement getProfilesFromProjectPreferences(IProject project)
 	{
 		IScopeContext projectScope = new ProjectScope(project);
-		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
+		IEclipsePreferences projectNode = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
 		if (projectNode == null)
 		{
 			return getProfilesFromDefaultStore();
@@ -706,43 +576,4 @@ public class YoctoSDKUtils {
 
 		return new YoctoProfileElement(profiles, selectedProfile);
 	}
-
-	public static boolean getUseProjectSpecificOptionFromProjectPreferences(IProject project)
-	{
-		IScopeContext projectScope = new ProjectScope(project);
-		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
-		if (projectNode == null) {
-			return false;
-		}
-
-		String useProjectSpecificSettingString = projectNode.get(PreferenceConstants.PROJECT_SPECIFIC_PROFILE, IPreferenceStore.FALSE);
-
-		if (useProjectSpecificSettingString.equals(IPreferenceStore.FALSE)) {
-			return false;
-		}
-
-		return true;
-	}
-
-	public static void saveUseProjectSpecificOptionToProjectPreferences(IProject project, boolean useProjectSpecificSetting)
-	{
-		IScopeContext projectScope = new ProjectScope(project);
-		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
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
-			// TODO Auto-generated catch block
-			e.printStackTrace();
-		}
-	}
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtilsConstants.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtilsConstants.java
index df9c882..65dfce8 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtilsConstants.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtilsConstants.java
@@ -14,5 +14,5 @@ public class YoctoSDKUtilsConstants {
 
 	public static final String DEFAULT_ENV_FILE_PREFIX = "environment-setup-";
 	public static final String DEFAULT_TMP_PREFIX = "/tmp/";
-
+	public static final String PROJECT_SCOPE = "org.yocto.sdk.ide";
 }
-- 
1.7.9.5


