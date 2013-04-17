Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f44.google.com (mail-bk0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D9E7E014F7
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 06:29:45 -0700 (PDT)
Received: by mail-bk0-f44.google.com with SMTP id jk13so757264bkc.3
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 06:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=uwECWkbK8g7YYp7L2ZabCCUyPpTdAbZprIBkmsZO+4k=;
	b=kPRg5zR6YuEe7zSnNdeMZVAhmFrAvOMcMbLOx0il9IwS56QaA+LF8kUVpWvcVt+/CW
	SBBwNN59y7AY0HxuSEgbYjbn76UtdoNWP2oXu8IYZVPz3xjhv3MKoKCWd8ENz95r0Zse
	4DQBdyParAwAFZO3REitmSVKBeeduYzb9muKADV3ACopLVXKp3x8RChtgbwr7+wQ2X7b
	voCMq9dmAcnuW6QvMvQsP8NuUIIBPnfuc1JNfcV+z8//+n4/t5Xd9/PxZ9TSWSqrBlE8
	cSLxj3jgg7/BXOexY9Kpct83jtdPlUsaMkRpeS7O9Xnor+mgUx08XMq3lcFe8DMtJtKk
	yXhg==
X-Received: by 10.204.231.6 with SMTP id jo6mr2281857bkb.30.1366205384340;
	Wed, 17 Apr 2013 06:29:44 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id gy3sm2111386bkc.16.2013.04.17.06.29.42
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 17 Apr 2013 06:29:43 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Apr 2013 15:29:20 +0200
Message-Id: <1366205365-8843-6-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1366205365-8843-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1366205365-8843-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCHv3 05/10] plugins/sdk.ide: Refactored project natures
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
X-List-Received-Date: Wed, 17 Apr 2013 13:29:45 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Introduced a class hierarchy for the Yocto project
natures with YoctoSDKProjectNature as a base class.
Eliminated unneeded class-own static methods for adding
natures.
---
 .../natures/YoctoSDKAutotoolsProjectNature.java    |   25 +--------------
 .../ide/natures/YoctoSDKEmptyProjectNature.java    |   33 +-------------------
 .../sdk/ide/natures/YoctoSDKProjectNature.java     |    5 ---
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |    9 +++---
 4 files changed, 6 insertions(+), 66 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
index 767c005..b8d6e8b 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
@@ -16,14 +16,11 @@ import org.eclipse.cdt.managedbuilder.core.IConfiguration;
 import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;
 import org.eclipse.cdt.managedbuilder.core.ManagedBuildManager;
 import org.eclipse.core.resources.IProject;
-import org.eclipse.core.resources.IProjectNature;
-import org.eclipse.core.runtime.CoreException;
-import org.eclipse.core.runtime.IProgressMonitor;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 
-public class YoctoSDKAutotoolsProjectNature implements IProjectNature {
+public class YoctoSDKAutotoolsProjectNature extends YoctoSDKProjectNature {
 	public static final  String YoctoSDK_AUTOTOOLS_NATURE_ID = YoctoSDKPlugin.getUniqueIdentifier() + ".YoctoSDKAutotoolsNature";
 
 	private static final String DEFAULT_HOST_STR = "host";
@@ -35,26 +32,6 @@ public class YoctoSDKAutotoolsProjectNature implements IProjectNature {
 	private static final String DEFAULT_AUTOGEN_STR = "autogen";
 	private static final String DEFAULT_LIBTOOL_SYSROOT_PREFIX = " --with-libtool-sysroot=";
 
-	private IProject proj;
-
-	public void configure() throws CoreException {
-	}
-
-	public void deconfigure() throws CoreException {
-	}
-
-	public IProject getProject() {
-		return proj;
-	}
-
-	public void setProject(IProject project) {
-		this.proj = project;
-	}
-
-	public static void addYoctoSDKAutotoolsNature(IProject project, IProgressMonitor monitor) throws CoreException {
-		YoctoSDKNatureUtils.addNature(project, YoctoSDK_AUTOTOOLS_NATURE_ID, monitor);
-	}
-
 	public static void configureAutotoolsOptions(IProject project) {
 		IManagedBuildInfo info = ManagedBuildManager.getBuildInfo(project);
 		IConfiguration icfg = info.getDefaultConfiguration();
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKEmptyProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKEmptyProjectNature.java
index 6c9a5ac..e1b847a 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKEmptyProjectNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKEmptyProjectNature.java
@@ -1,39 +1,8 @@
 package org.yocto.sdk.ide.natures;
 
-import org.eclipse.core.resources.IProject;
-import org.eclipse.core.resources.IProjectNature;
-import org.eclipse.core.runtime.CoreException;
-import org.eclipse.core.runtime.IProgressMonitor;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 
-public class YoctoSDKEmptyProjectNature implements IProjectNature {
+public class YoctoSDKEmptyProjectNature extends YoctoSDKProjectNature {
 
 	public static final  String YoctoSDK_EMPTY_NATURE_ID = YoctoSDKPlugin.getUniqueIdentifier() + ".YoctoSDKEmptyNature";
-
-	private IProject proj;
-
-	public void configure() throws CoreException {
-		// TODO Auto-generated method stub
-
-	}
-
-	public void deconfigure() throws CoreException {
-		// TODO Auto-generated method stub
-
-	}
-
-	public IProject getProject() {
-		// TODO Auto-generated method stub
-		return proj;
-	}
-
-	public void setProject(IProject project) {
-		// TODO Auto-generated method stub
-		this.proj = project;
-	}
-
-	public static void addYoctoSDKEmptyNature(IProject project, IProgressMonitor monitor) throws CoreException {
-		YoctoSDKNatureUtils.addNature(project, YoctoSDK_EMPTY_NATURE_ID, monitor);
-	}
-
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
index 51926fb..e3f6a35 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
@@ -13,7 +13,6 @@ package org.yocto.sdk.ide.natures;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IProjectNature;
 import org.eclipse.core.runtime.CoreException;
-import org.eclipse.core.runtime.IProgressMonitor;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 
 public class YoctoSDKProjectNature implements IProjectNature {
@@ -34,8 +33,4 @@ public class YoctoSDKProjectNature implements IProjectNature {
 	public void setProject(IProject project) {
 		this.proj = project;
 	}
-
-	public static void addYoctoSDKNature(IProject project, IProgressMonitor monitor) throws CoreException {
-		YoctoSDKNatureUtils.addNature(project, YoctoSDK_NATURE_ID, monitor);
-	}
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
index 239cbf8..a103ebe 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
@@ -52,13 +52,12 @@ import org.eclipse.jface.preference.IPreferenceStore;
 import org.yocto.sdk.ide.YoctoGeneralException;
 import org.yocto.sdk.ide.YoctoProfileElement;
 import org.yocto.sdk.ide.YoctoSDKChecker;
-import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
-import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
 import org.yocto.sdk.ide.YoctoSDKMessages;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature;
 import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
+import org.yocto.sdk.ide.natures.YoctoSDKNatureUtils;
 import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 
@@ -182,7 +181,7 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 	private void addNatures(IProject project, boolean projectExists, boolean isEmptyProject,
 			boolean isAutotoolsProject, IProgressMonitor monitor)
 					throws CoreException, YoctoGeneralException {
-		YoctoSDKProjectNature.addYoctoSDKNature(project, monitor);
+		YoctoSDKNatureUtils.addNature(project, YoctoSDKProjectNature.YoctoSDK_NATURE_ID, monitor);
 
 		YoctoSDKChecker.checkIfGloballySelectedYoctoProfileIsValid();
 
@@ -194,7 +193,7 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 		YoctoSDKUtils.setEnvironmentVariables(project, elem);
 
 		if (isEmptyProject) {
-			YoctoSDKEmptyProjectNature.addYoctoSDKEmptyNature(project, monitor);
+			YoctoSDKNatureUtils.addNature(project, YoctoSDKEmptyProjectNature.YoctoSDK_EMPTY_NATURE_ID, monitor);
 		}
 
 		if (isAutotoolsProject) {
@@ -208,7 +207,7 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 				AutotoolsConfigurationManager.getInstance().saveConfigs(project);
 			}
 
-			YoctoSDKAutotoolsProjectNature.addYoctoSDKAutotoolsNature(project, monitor);
+			YoctoSDKNatureUtils.addNature(project, YoctoSDKAutotoolsProjectNature.YoctoSDK_AUTOTOOLS_NATURE_ID, monitor);
 			YoctoSDKAutotoolsProjectNature.configureAutotoolsOptions(project);
 		}
 	}
-- 
1.7.9.5


