Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ea0-f175.google.com (mail-ea0-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE7FCE014A7
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 05:03:35 -0700 (PDT)
Received: by mail-ea0-f175.google.com with SMTP id h10so2514790eaj.20
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 05:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=HM7HFPagxzB2XEcCYGe82Hrrmu2zpBk4fQJ6jp2tFh4=;
	b=wtjrRM4oTCj/dLrMRP3Lp/sFvFl9eNM5bhcNCUt0sjgQmqYO4glmMfT39MZ63H3MSi
	WxLB+SVskp7rCIDC98OhCuoevY+Iw5BWQh32SPPDJPj7dToKEakwxbAJBnOfPbXNRqd0
	UtXZxx0uQ6g1fSy4o7HexY47l5EiQkfvwQ/EY+nR1JZoANgAmXid87xFqoY60h1k0owe
	PxQoCSwMXXkWsnLlBkrlzEdmeouYbeDIbJoW1w+H7X+0CnJLI1we7QKnK62+inVpW/Ur
	QpWzmfxA9hE9S/OO9V2h4uk66HzY7jrUsT3+qt/+hLKCaIbFaOxire/UCflEs3W6w0EP
	M16w==
X-Received: by 10.15.10.130 with SMTP id g2mr39386781eet.25.1369397015021;
	Fri, 24 May 2013 05:03:35 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id y10sm23198135eev.3.2013.05.24.05.03.34
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 24 May 2013 05:03:34 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 24 May 2013 14:03:21 +0200
Message-Id: <1369397005-3262-4-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369397005-3262-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1369397005-3262-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 3/7] plugins/sdk.ide: Enable the creation of CMake projects
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
X-List-Received-Date: Fri, 24 May 2013 12:03:36 -0000

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


