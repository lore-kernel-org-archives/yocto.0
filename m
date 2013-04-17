Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f53.google.com (mail-bk0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBBB1E014F5
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 06:29:43 -0700 (PDT)
Received: by mail-bk0-f53.google.com with SMTP id e19so756836bku.26
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 06:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=rgiZU1R2byf/l5Q5Cm3qtHKwSMm4Qd2Q19D1+FXjVG0=;
	b=LWa6jy43t13OhOv9USS7dnKzXh4iJZQUlw5RJ+tqFEQ9+6tf+5s80e2KA9jAqM7iHS
	IyePTA/jgpC5j1e/AP5YA5iYrDY2tvjGDDVEdOSdswFByUXoLB6C3Q8/DvkJGpj4siv9
	0OvC2qlqmJit7lzQhSop9W88foNlyzlAIr1cSMukR6EEvl3fzShaFpybzK8sjOgLMjsL
	tEyTmvNLwPowOp1u2UcDSbbytXVTMeU9wI/9SaPDeelyS/rIepUEZpKnzyo5yZFG/CmR
	xjFhRLOfP8+qpZLxzNrL43lTo/s5AXtt2PO0t8kLo2tXeY5KCZoHUOO+/K6d8XGVhRDy
	XZ5Q==
X-Received: by 10.204.190.81 with SMTP id dh17mr2298348bkb.15.1366205382939;
	Wed, 17 Apr 2013 06:29:42 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id gy3sm2111386bkc.16.2013.04.17.06.29.41
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 17 Apr 2013 06:29:42 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Apr 2013 15:29:19 +0200
Message-Id: <1366205365-8843-5-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1366205365-8843-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1366205365-8843-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCHv3 04/10] plugins/sdk.ide: Switch to YoctoSDKAutotoolsProjectNature
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
X-List-Received-Date: Wed, 17 Apr 2013 13:29:44 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

The YoctoSDKProjectNature remains the basic nature for all
Yocto projects in the IDE. The projects using Autotools
(all templates) get the YoctoSDKProjectNature and additionally
the YoctoSDKAutotoolsProjectNature. The process
NewYoctoCProjectTemplate is adapted accordingly.
---
 plugins/org.yocto.sdk.ide/plugin.xml               |    2 +-
 .../natures/YoctoSDKAutotoolsProjectNature.java    |   45 +++++++++++
 .../sdk/ide/natures/YoctoSDKProjectNature.java     |   70 -----------------
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |    6 +-
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |   79 ++++++++++++--------
 5 files changed, 96 insertions(+), 106 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/plugin.xml b/plugins/org.yocto.sdk.ide/plugin.xml
index f21434b..35e34b4 100644
--- a/plugins/org.yocto.sdk.ide/plugin.xml
+++ b/plugins/org.yocto.sdk.ide/plugin.xml
@@ -91,7 +91,7 @@
                            type="org.eclipse.core.resources.IResource">
                         <test
                               property="org.eclipse.core.resources.projectNature"
-                              value="org.yocto.sdk.ide.YoctoSDKNature">
+                              value="org.yocto.sdk.ide.YoctoSDKAutotoolsNature">
                         </test>
                      </adapt>
                   </iterate>
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
index ac73878..767c005 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
@@ -10,15 +10,31 @@
  *******************************************************************************/
 package org.yocto.sdk.ide.natures;
 
+import org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfigurationManager;
+import org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration;
+import org.eclipse.cdt.managedbuilder.core.IConfiguration;
+import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;
+import org.eclipse.cdt.managedbuilder.core.ManagedBuildManager;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IProjectNature;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
+import org.yocto.sdk.ide.YoctoUIElement;
+import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 
 public class YoctoSDKAutotoolsProjectNature implements IProjectNature {
 	public static final  String YoctoSDK_AUTOTOOLS_NATURE_ID = YoctoSDKPlugin.getUniqueIdentifier() + ".YoctoSDKAutotoolsNature";
 
+	private static final String DEFAULT_HOST_STR = "host";
+	private static final String DEFAULT_TARGET_STR = "target";
+	private static final String DEFAULT_BUILD_STR = "build";
+	private static final String DEFAULT_AUTOGEN_OPT_STR = "autogenOpts";
+
+	private static final String DEFAULT_CONFIGURE_STR = "configure";
+	private static final String DEFAULT_AUTOGEN_STR = "autogen";
+	private static final String DEFAULT_LIBTOOL_SYSROOT_PREFIX = " --with-libtool-sysroot=";
+
 	private IProject proj;
 
 	public void configure() throws CoreException {
@@ -38,4 +54,33 @@ public class YoctoSDKAutotoolsProjectNature implements IProjectNature {
 	public static void addYoctoSDKAutotoolsNature(IProject project, IProgressMonitor monitor) throws CoreException {
 		YoctoSDKNatureUtils.addNature(project, YoctoSDK_AUTOTOOLS_NATURE_ID, monitor);
 	}
+
+	public static void configureAutotoolsOptions(IProject project) {
+		IManagedBuildInfo info = ManagedBuildManager.getBuildInfo(project);
+		IConfiguration icfg = info.getDefaultConfiguration();
+		YoctoUIElement elem = YoctoSDKUtils.getElemFromProjectEnv(project);
+		String sysroot_str = elem.getStrSysrootLoc();
+		String id = icfg.getId();
+		String CFLAGS_str = YoctoSDKUtils.getEnvValue(project, "CFLAGS");
+		String CXXFLAGS_str = YoctoSDKUtils.getEnvValue(project, "CXXFLAGS");
+		String CPPFLAGS_str = YoctoSDKUtils.getEnvValue(project, "CPPFLAGS");
+		String LDFLAGS_str = YoctoSDKUtils.getEnvValue(project, "LDFLAGS");
+
+		String command_prefix = "CFLAGS=\" -g -O0 " + CFLAGS_str + "\" CXXFLAGS=\" -g -O0 "
+				+ CXXFLAGS_str + "\" LDFLAGS=\"" + LDFLAGS_str + "\" CPPFLAGS=\"" + CPPFLAGS_str + "\"";
+		String autogen_setting = command_prefix+" autogen.sh" + DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
+		String configure_setting = command_prefix + " configure" + DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
+		IAConfiguration cfg = AutotoolsConfigurationManager.getInstance().getConfiguration(project, id);
+		String strConfigure = YoctoSDKUtils.getEnvValue(project, "CONFIGURE_FLAGS");
+
+		cfg.setOption(DEFAULT_CONFIGURE_STR, configure_setting);
+		cfg.setOption(DEFAULT_BUILD_STR, YoctoSDKUtils.splitString(strConfigure, "--build="));
+		cfg.setOption(DEFAULT_HOST_STR, YoctoSDKUtils.splitString(strConfigure, "--host="));
+		cfg.setOption(DEFAULT_TARGET_STR, YoctoSDKUtils.splitString(strConfigure, "--target="));
+		cfg.setOption(DEFAULT_AUTOGEN_STR, autogen_setting);
+		cfg.setOption(DEFAULT_AUTOGEN_OPT_STR, strConfigure);
+
+		AutotoolsConfigurationManager.getInstance().addConfiguration(project, cfg);
+		AutotoolsConfigurationManager.getInstance().saveConfigs(project);
+	}
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
index fcb296d..51926fb 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
@@ -10,39 +10,15 @@
  *******************************************************************************/
 package org.yocto.sdk.ide.natures;
 
-import org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfigurationManager;
-import org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration;
-import org.eclipse.cdt.managedbuilder.core.IConfiguration;
-import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;
-import org.eclipse.cdt.managedbuilder.core.ManagedBuildManager;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IProjectNature;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.jface.preference.IPreferenceStore;
-import org.yocto.sdk.ide.YoctoGeneralException;
-import org.yocto.sdk.ide.YoctoProfileElement;
-import org.yocto.sdk.ide.YoctoSDKChecker;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
-import org.yocto.sdk.ide.YoctoUIElement;
-import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
-import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
-import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 
-
-@SuppressWarnings("restriction")
 public class YoctoSDKProjectNature implements IProjectNature {
 	public static final  String YoctoSDK_NATURE_ID = YoctoSDKPlugin.getUniqueIdentifier() + ".YoctoSDKNature";
 
-	private static final String DEFAULT_HOST_STR = "host";
-	private static final String DEFAULT_TARGET_STR = "target";
-	private static final String DEFAULT_BUILD_STR = "build";
-	private static final String DEFAULT_AUTOGEN_OPT_STR = "autogenOpts";
-
-	private static final String DEFAULT_CONFIGURE_STR = "configure";
-	private static final String DEFAULT_AUTOGEN_STR = "autogen";
-	private static final String DEFAULT_LIBTOOL_SYSROOT_PREFIX = " --with-libtool-sysroot=";
-
 	private IProject proj;
 
 	public void configure() throws CoreException {
@@ -62,50 +38,4 @@ public class YoctoSDKProjectNature implements IProjectNature {
 	public static void addYoctoSDKNature(IProject project, IProgressMonitor monitor) throws CoreException {
 		YoctoSDKNatureUtils.addNature(project, YoctoSDK_NATURE_ID, monitor);
 	}
-
-	public static void configureAutotoolsOptions(IProject project) {
-		IManagedBuildInfo info = ManagedBuildManager.getBuildInfo(project);
-		IConfiguration icfg = info.getDefaultConfiguration();
-		YoctoUIElement elem = YoctoSDKUtils.getElemFromProjectEnv(project);
-		String sysroot_str = elem.getStrSysrootLoc();
-		String id = icfg.getId();
-		String CFLAGS_str = YoctoSDKUtils.getEnvValue(project, "CFLAGS");
-		String CXXFLAGS_str = YoctoSDKUtils.getEnvValue(project, "CXXFLAGS");
-		String CPPFLAGS_str = YoctoSDKUtils.getEnvValue(project, "CPPFLAGS");
-		String LDFLAGS_str = YoctoSDKUtils.getEnvValue(project, "LDFLAGS");
-
-		String command_prefix = "CFLAGS=\" -g -O0 " + CFLAGS_str + "\" CXXFLAGS=\" -g -O0 "
-		+ CXXFLAGS_str + "\" LDFLAGS=\"" + LDFLAGS_str + "\" CPPFLAGS=\"" + CPPFLAGS_str + "\"";
-		String autogen_setting = command_prefix+" autogen.sh" + DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
-		String configure_setting = command_prefix + " configure" + DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
-		IAConfiguration cfg = AutotoolsConfigurationManager.getInstance().getConfiguration(project, id);
-		String strConfigure = YoctoSDKUtils.getEnvValue(project, "CONFIGURE_FLAGS");
-
-		cfg.setOption(DEFAULT_CONFIGURE_STR, configure_setting);
-		cfg.setOption(DEFAULT_BUILD_STR, YoctoSDKUtils.splitString(strConfigure, "--build="));
-		cfg.setOption(DEFAULT_HOST_STR, YoctoSDKUtils.splitString(strConfigure, "--host="));
-		cfg.setOption(DEFAULT_TARGET_STR, YoctoSDKUtils.splitString(strConfigure, "--target="));
-		cfg.setOption(DEFAULT_AUTOGEN_STR, autogen_setting);
-		cfg.setOption(DEFAULT_AUTOGEN_OPT_STR, strConfigure);
-
-		AutotoolsConfigurationManager.getInstance().addConfiguration(project, cfg);
-		AutotoolsConfigurationManager.getInstance().saveConfigs(project);
-	}
-
-	public static void configureAutotools(IProject project) throws YoctoGeneralException {
-		YoctoProfileElement profileElement = YoctoSDKUtils.getProfilesFromDefaultStore();
-		YoctoSDKUtils.saveProfilesToProjectPreferences(profileElement, project);
-		IPreferenceStore selecteProfileStore = YoctoSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfile());
-		YoctoUIElement elem = YoctoSDKUtils.getElemFromStore(selecteProfileStore);
-		SDKCheckResults result = YoctoSDKChecker.checkYoctoSDK(elem);
-		if (result != SDKCheckResults.SDK_PASS){
-			String strErrorMsg =  YoctoSDKChecker.getErrorMessage(result, SDKCheckRequestFrom.Wizard);
-			throw new YoctoGeneralException(strErrorMsg);
-		}
-		else
-		{
-			YoctoSDKUtils.setEnvironmentVariables(project, elem);
-			configureAutotoolsOptions(project);
-		}
-	}
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
index bd781b3..1e2e424 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
@@ -54,8 +54,8 @@ import org.yocto.sdk.ide.YoctoProfileElement;
 import org.yocto.sdk.ide.YoctoSDKMessages;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoUIElement;
+import org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature;
 import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
-import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.preferences.PreferenceConstants;
 
 public class YoctoSDKUtils {
@@ -427,7 +427,9 @@ public class YoctoSDKUtils {
 
 		try {
 			setEnvironmentVariables(project, elem);
-			YoctoSDKProjectNature.configureAutotoolsOptions(project);
+			if(project.hasNature(YoctoSDKAutotoolsProjectNature.YoctoSDK_AUTOTOOLS_NATURE_ID)) {
+				YoctoSDKAutotoolsProjectNature.configureAutotoolsOptions(project);
+			}
 			IConsole console = CCorePlugin.getDefault().getConsole("org.yocto.sdk.ide.YoctoConsole");
 			console.start(project);
 			consoleOutStream = console.getOutputStream();
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
index 73531e5..239cbf8 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
@@ -28,6 +28,7 @@ import org.eclipse.cdt.make.core.MakeCorePlugin;
 import org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager;
 import org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager.IDiscoveredPathInfo;
 import org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager.IPerProjectDiscoveredPathInfo;
+import org.eclipse.cdt.make.internal.core.scannerconfig.util.SymbolEntry;
 import org.eclipse.cdt.managedbuilder.core.BuildException;
 import org.eclipse.cdt.managedbuilder.core.IConfiguration;
 import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;
@@ -56,6 +57,7 @@ import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
 import org.yocto.sdk.ide.YoctoSDKMessages;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoUIElement;
+import org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature;
 import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
 import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
@@ -88,7 +90,7 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 		String isEmptyProjetValue = args[4].getSimpleValue();
 		String isAutotoolsProjectValue = args[5].getSimpleValue();
 		boolean isCProject = Boolean.valueOf(isCProjectValue).booleanValue();
-		boolean isEmptryProject = Boolean.valueOf(isEmptyProjetValue).booleanValue();
+		boolean isEmptyProject = Boolean.valueOf(isEmptyProjetValue).booleanValue();
 		boolean isAutotoolsProject = Boolean.valueOf(isAutotoolsProjectValue).booleanValue();
 
 		IProject project = ResourcesPlugin.getWorkspace().getRoot().getProject(projectName);
@@ -126,19 +128,8 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 				pca.setArtifactExtension(artifactExtension);
 				info = pca.createProject(monitor, CCorePlugin.DEFAULT_INDEXER, isCProject);
 
-				AutotoolsNewProjectNature.addAutotoolsNature(project, monitor);
-				// For each IConfiguration, create a corresponding Autotools Configuration
-				IConfiguration[] cfgs = pca.getConfigs();
-				for (int i = 0; i < cfgs.length; ++i) {
-					IConfiguration cfg = cfgs[i];
-					AutotoolsConfigurationManager.getInstance().getConfiguration(project, cfg.getName(), true);
-				}
-				AutotoolsConfigurationManager.getInstance().saveConfigs(project);
-				if(isEmptryProject) {
-					YoctoSDKEmptyProjectNature.addYoctoSDKEmptyNature(project, monitor);
-				}
-				YoctoSDKProjectNature.addYoctoSDKNature(project, monitor);
-				YoctoSDKProjectNature.configureAutotools(project);
+				addNatures(project, false, isEmptyProject, isAutotoolsProject, monitor);
+
 				info.setValid(true);
 				ManagedBuildManager.saveBuildInfo(project, true);
 
@@ -147,31 +138,19 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 				
 				IWorkspace workspace = ResourcesPlugin.getWorkspace();
 				turnOffAutoBuild(workspace);
-				YoctoProfileElement profileElement = YoctoSDKUtils.getProfilesFromDefaultStore();
-				IPreferenceStore selecteProfileStore = YoctoSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfile());
-				YoctoUIElement elem = YoctoSDKUtils.getElemFromStore(selecteProfileStore);
-				SDKCheckResults result = YoctoSDKChecker.checkYoctoSDK(elem);
-				if (result != SDKCheckResults.SDK_PASS){
-					String strErrorMsg =  YoctoSDKChecker.getErrorMessage(result, SDKCheckRequestFrom.Wizard);
-					throw new YoctoGeneralException(strErrorMsg);
-				}
-				AutotoolsNewProjectNature.addAutotoolsNature(project, monitor);
-				if(isEmptryProject) {
-					YoctoSDKEmptyProjectNature.addYoctoSDKEmptyNature(project, monitor);
-				}
-				
-				YoctoSDKProjectNature.addYoctoSDKNature(project, monitor);
-				YoctoSDKProjectNature.configureAutotools(project);
-				
-				AutotoolsConfigurationManager.getInstance().saveConfigs(project);
+
+				YoctoSDKChecker.checkIfGloballySelectedYoctoProfileIsValid();
+
+				addNatures(project, true, isEmptyProject, isAutotoolsProject, monitor);
+
 				//restoreAutoBuild(workspace);
 				IDiscoveredPathManager manager = MakeCorePlugin.getDefault().getDiscoveryManager();
 				IDiscoveredPathInfo pathInfo = manager.getDiscoveredInfo(project);
 				if (pathInfo instanceof IPerProjectDiscoveredPathInfo) {
 				    IPerProjectDiscoveredPathInfo projectPathInfo =
 				    	(IPerProjectDiscoveredPathInfo) pathInfo;
-				    projectPathInfo.setIncludeMap(new LinkedHashMap());
-				    projectPathInfo.setSymbolMap(new LinkedHashMap());    
+				    projectPathInfo.setIncludeMap(new LinkedHashMap<String, Boolean>());
+				    projectPathInfo.setSymbolMap(new LinkedHashMap<String, SymbolEntry>());
 				    manager.removeDiscoveredInfo(project);    
 				}
 			}
@@ -200,6 +179,40 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 		return matcher.find();
 }
 
+	private void addNatures(IProject project, boolean projectExists, boolean isEmptyProject,
+			boolean isAutotoolsProject, IProgressMonitor monitor)
+					throws CoreException, YoctoGeneralException {
+		YoctoSDKProjectNature.addYoctoSDKNature(project, monitor);
+
+		YoctoSDKChecker.checkIfGloballySelectedYoctoProfileIsValid();
+
+		YoctoProfileElement profileElement = YoctoSDKUtils.getProfilesFromDefaultStore();
+		YoctoSDKUtils.saveProfilesToProjectPreferences(profileElement, project);
+
+		IPreferenceStore selecteProfileStore = YoctoSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfile());
+		YoctoUIElement elem = YoctoSDKUtils.getElemFromStore(selecteProfileStore);
+		YoctoSDKUtils.setEnvironmentVariables(project, elem);
+
+		if (isEmptyProject) {
+			YoctoSDKEmptyProjectNature.addYoctoSDKEmptyNature(project, monitor);
+		}
+
+		if (isAutotoolsProject) {
+			AutotoolsNewProjectNature.addAutotoolsNature(project, monitor);
+
+			if(!projectExists) {
+				// For each IConfiguration, create a corresponding Autotools Configuration
+				for (IConfiguration cfg : pca.getConfigs()) {
+					AutotoolsConfigurationManager.getInstance().getConfiguration(project, cfg.getName(), true);
+				}
+				AutotoolsConfigurationManager.getInstance().saveConfigs(project);
+			}
+
+			YoctoSDKAutotoolsProjectNature.addYoctoSDKAutotoolsNature(project, monitor);
+			YoctoSDKAutotoolsProjectNature.configureAutotoolsOptions(project);
+		}
+	}
+
 	protected final void turnOffAutoBuild(IWorkspace workspace) throws CoreException {
 		IWorkspaceDescription workspaceDesc = workspace.getDescription();
 		savedAutoBuildingValue = workspaceDesc.isAutoBuilding();
-- 
1.7.9.5


