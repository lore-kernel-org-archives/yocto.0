Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f53.google.com (mail-bk0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E745CE0151C
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:32:47 -0700 (PDT)
Received: by mail-bk0-f53.google.com with SMTP id jg9so1204515bkc.40
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=HM7HFPagxzB2XEcCYGe82Hrrmu2zpBk4fQJ6jp2tFh4=;
	b=bN4POPMBlFOTlfCgMYSGjG2Dx7YPwt0ihhfmiWtaBtNNifE2AJQM40mNCmB9p9DrdU
	G7IToTsNPvOllLlCpBphUuqda4410hpQQXbXrhLuqM8D0w82ftJy3WtYKGXD+e1Xwg1u
	nNb7A9crph9WuMH8g4eAg1nOqxOBHAzavSSV0IKztRe55JtAvGw4GCDkPrcbjILHKUyz
	p04d8cjLQHCtGQAZmtJIUENQr4VP+e6o1vuLWG4dOmjFAx+BUjMJt4SjD7ibXoi476k9
	7g4EDWD5bZtbMDFTkKckESrt1Xg10r04QGhWGczeyEbe2GHiTzOHH9l77Kf88L5ZcG3C
	P1dQ==
X-Received: by 10.205.115.11 with SMTP id fc11mr5435709bkc.72.1366893166993;
	Thu, 25 Apr 2013 05:32:46 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id cv9sm1541605bkb.5.2013.04.25.05.32.46
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 25 Apr 2013 05:32:46 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 25 Apr 2013 14:32:29 +0200
Message-Id: <1366893153-9880-4-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1366893153-9880-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1366893153-9880-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [RFCv2 3/7] plugins/sdk.ide: Enable the creation of CMake projects
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
X-List-Received-Date: Thu, 25 Apr 2013 12:32:48 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

This enables creating projects with the introduced
CMake nature. What is still upcoming are the
template projects and a corresponfig CMake
ManagedBuilder (CMake build toolchain for
Eclipse).
---
 .../ide/natures/YoctoSDKCMakeProjectNature.java    |   72 ++++++++++++++++++++
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |   12 ++--
 2 files changed, 80 insertions(+), 4 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKCMakeProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKCMakeProjectNature.java
index 86a9d45..b3d0f2c 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKCMakeProjectNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKCMakeProjectNature.java
@@ -10,11 +10,83 @@
  *******************************************************************************/
 package org.yocto.sdk.ide.natures;
 
+import org.eclipse.cdt.core.CCorePlugin;
+import org.eclipse.cdt.core.envvar.IContributedEnvironment;
+import org.eclipse.cdt.core.envvar.IEnvironmentVariable;
+import org.eclipse.cdt.core.envvar.IEnvironmentVariableManager;
+import org.eclipse.cdt.core.model.CoreModel;
+import org.eclipse.cdt.core.settings.model.ICConfigurationDescription;
+import org.eclipse.cdt.core.settings.model.ICProjectDescription;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.runtime.CoreException;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
+import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 
 public class YoctoSDKCMakeProjectNature extends YoctoSDKProjectNature {
 	public static final  String YoctoSDK_CMAKE_NATURE_ID = YoctoSDKPlugin.getUniqueIdentifier() + ".YoctoSDKCMakeNature";
 
+	// Considered poky's cmake.bbclass for this method
+	public static void extendProjectEnvironmentForCMake(IProject project) {
+		ICProjectDescription cpdesc = CoreModel.getDefault().getProjectDescription(project, true);
+		ICConfigurationDescription ccdesc = cpdesc.getActiveConfiguration();
+		IEnvironmentVariableManager manager = CCorePlugin.getDefault().getBuildEnvironmentManager();
+		IContributedEnvironment env = manager.getContributedEnvironment();
+		String delimiter = manager.getDefaultDelimiter();
+
+		env.addVariable("CCACHE", "", IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+
+		env.addVariable("OECMAKE_SOURCEPATH", "..",
+				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+
+		String oecmakeBuildPathString = "";
+		env.addVariable("OECMAKE_BUILDPATH", oecmakeBuildPathString,
+				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+		env.addVariable("EXTRA_OEMAKE", "-C " + oecmakeBuildPathString,
+				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+
+		String ccString = YoctoSDKUtils.getEnvValue(project, "CC");
+
+		if (!ccString.equals("") && !ccString.equals(" ")) {
+			ccString.trim();
+			ccString = ccString.split(" ")[0];
+		}
+
+		env.addVariable("OECMAKE_C_COMPILER", ccString,
+				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+		String cxxString = YoctoSDKUtils.getEnvValue(project, "CXX");
+
+		if (!cxxString.equals("") && !cxxString.equals(" ")) {
+			cxxString.trim();
+			cxxString = cxxString.split(" ")[0];
+		}
+
+		env.addVariable("OECMAKE_CXX_COMPILER", cxxString,
+				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+
+		String hostCCArchString = YoctoSDKUtils.getEnvValue(project, "HOST_CC_ARCH");
+		String toolchainOptionsString = YoctoSDKUtils.getEnvValue(project, "TOOLCHAIN_OPTIONS");
+		String cppFlagsString = YoctoSDKUtils.getEnvValue(project, "CPPFLAGS");
+		String cxxFlagsString = YoctoSDKUtils.getEnvValue(project, "CXXFLAGS");
+		String selectedOptimizationString = YoctoSDKUtils.getEnvValue(project, "SELECTED_OPTIMIZATION");
+		env.addVariable("OECMAKE_C_FLAGS", hostCCArchString + " " + toolchainOptionsString + " " + cppFlagsString,
+				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+		env.addVariable("OECMAKE_CXX_FLAGS", hostCCArchString + " " + toolchainOptionsString + " " + cxxFlagsString
+				+ " -fpermissive",
+				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+		env.addVariable("OECMAKE_C_FLAGS_RELEASE", selectedOptimizationString + " " + cppFlagsString + " -DNDEBUG",
+				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+		env.addVariable("OECMAKE_CXX_FLAGS_RELEASE", selectedOptimizationString + " " + cxxFlagsString + " -DNDEBUG",
+				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+
+		env.addVariable("OECMAKE_RPATH", "",
+				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+		env.addVariable("OECMAKE_PERLNATIVE_DIR", "",
+				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+
+		try {
+			CoreModel.getDefault().setProjectDescription(project, cpdesc);
+		} catch (CoreException e) {
+			e.printStackTrace();
+		}
+	}
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
index 705dc99..dc9bca5 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
@@ -56,6 +56,7 @@ import org.yocto.sdk.ide.YoctoSDKMessages;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature;
+import org.yocto.sdk.ide.natures.YoctoSDKCMakeProjectNature;
 import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
 import org.yocto.sdk.ide.natures.YoctoSDKNatureUtils;
 import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
@@ -129,7 +130,7 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 				pca.setArtifactExtension(artifactExtension);
 				info = pca.createProject(monitor, CCorePlugin.DEFAULT_INDEXER, isCProject);
 
-				addNatures(project, false, isEmptyProject, isAutotoolsProject, monitor);
+				addNatures(project, false, isEmptyProject, isAutotoolsProject, isCMakeProject, monitor);
 
 				info.setValid(true);
 				ManagedBuildManager.saveBuildInfo(project, true);
@@ -142,7 +143,7 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 
 				YoctoSDKChecker.checkIfGloballySelectedYoctoProfileIsValid();
 
-				addNatures(project, true, isEmptyProject, isAutotoolsProject, monitor);
+				addNatures(project, true, isEmptyProject, isAutotoolsProject, isCMakeProject, monitor);
 
 				//restoreAutoBuild(workspace);
 				IDiscoveredPathManager manager = MakeCorePlugin.getDefault().getDiscoveryManager();
@@ -181,7 +182,7 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 }
 
 	private void addNatures(IProject project, boolean projectExists, boolean isEmptyProject,
-			boolean isAutotoolsProject, IProgressMonitor monitor)
+			boolean isAutotoolsProject, boolean isCMakeProject, IProgressMonitor monitor)
 					throws CoreException, YoctoGeneralException {
 		YoctoSDKNatureUtils.addNature(project, YoctoSDKProjectNature.YoctoSDK_NATURE_ID, monitor);
 
@@ -201,7 +202,7 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 		if (isAutotoolsProject) {
 			AutotoolsNewProjectNature.addAutotoolsNature(project, monitor);
 
-			if(!projectExists) {
+			if (!projectExists) {
 				// For each IConfiguration, create a corresponding Autotools Configuration
 				for (IConfiguration cfg : pca.getConfigs()) {
 					AutotoolsConfigurationManager.getInstance().getConfiguration(project, cfg.getName(), true);
@@ -211,6 +212,9 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 
 			YoctoSDKNatureUtils.addNature(project, YoctoSDKAutotoolsProjectNature.YoctoSDK_AUTOTOOLS_NATURE_ID, monitor);
 			YoctoSDKAutotoolsProjectNature.configureAutotoolsOptions(project);
+		} else if (isCMakeProject) {
+			YoctoSDKNatureUtils.addNature(project, YoctoSDKCMakeProjectNature.YoctoSDK_CMAKE_NATURE_ID, monitor);
+			YoctoSDKCMakeProjectNature.extendProjectEnvironmentForCMake(project);
 		}
 	}
 
-- 
1.7.9.5


