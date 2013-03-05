Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 225A4E01509
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 08:52:04 -0800 (PST)
Received: by mail-wg0-f45.google.com with SMTP id dq12so6146889wgb.12
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2013 08:52:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=Pe6M6jXh29nYr5DNGpj8SRbMfXgqhqh+epmUiniHvrw=;
	b=iGPe5+f8vw+mn9+YwW14IXEqmpjqk6Rqubrtj3o9fewKkcaUr4m3NAKTDy/LmpsJrY
	b4dwOupb7No1xAoWEFncMI6xL5S/wz5npYqfn7CZiTvFOIAElyBWDd29210ksQi2yeEG
	eXNsd8kx7B1R2JAhNx8cZTIzENoj09d+YOgI6HoglJViz0A44wMbDn8YYaYZ5FpUASLr
	amCpqOMkPw5mdYw2Uh0ojwqJUX6OcxUScCF3WEth/bY1QLgqp3CIq1GzTiCwdXGFMK8z
	3exOaxR2YOYVALymwqYAp59NJAWtn8C0/SFZQykl7Hi8OvQ3hjZcsEbP8GQL4l0ztFMz
	vLjw==
X-Received: by 10.204.152.138 with SMTP id g10mr9725310bkw.106.1362502323542; 
	Tue, 05 Mar 2013 08:52:03 -0800 (PST)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id k4sm7357801bkv.18.2013.03.05.08.52.02
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 05 Mar 2013 08:52:03 -0800 (PST)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Mar 2013 17:51:48 +0100
Message-Id: <1362502308-7622-5-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1362502308-7622-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1362502308-7622-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 4/4] Moved nature-related utils in own class
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
X-List-Received-Date: Tue, 05 Mar 2013 16:52:05 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

---
 .../ide/natures/YoctoSDKEmptyProjectNature.java    |    3 +--
 .../yocto/sdk/ide/natures/YoctoSDKNatureUtils.java |   28 ++++++++++++++++++++
 .../sdk/ide/natures/YoctoSDKProjectNature.java     |    2 +-
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |   20 --------------
 4 files changed, 30 insertions(+), 23 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKNatureUtils.java

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKEmptyProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKEmptyProjectNature.java
index 9057b8e..6c9a5ac 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKEmptyProjectNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKEmptyProjectNature.java
@@ -5,7 +5,6 @@ import org.eclipse.core.resources.IProjectNature;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
-import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 
 public class YoctoSDKEmptyProjectNature implements IProjectNature {
 
@@ -34,7 +33,7 @@ public class YoctoSDKEmptyProjectNature implements IProjectNature {
 	}
 
 	public static void addYoctoSDKEmptyNature(IProject project, IProgressMonitor monitor) throws CoreException {
-		YoctoSDKUtils.addNature(project, YoctoSDK_EMPTY_NATURE_ID, monitor);
+		YoctoSDKNatureUtils.addNature(project, YoctoSDK_EMPTY_NATURE_ID, monitor);
 	}
 
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKNatureUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKNatureUtils.java
new file mode 100644
index 0000000..d07dd03
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKNatureUtils.java
@@ -0,0 +1,28 @@
+package org.yocto.sdk.ide.natures;
+
+import org.eclipse.core.resources.IProject;
+import org.eclipse.core.resources.IProjectDescription;
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.IProgressMonitor;
+
+public class YoctoSDKNatureUtils {
+
+	public static void addNature(IProject project, String natureId, IProgressMonitor monitor) throws CoreException
+	{
+		IProjectDescription description = project.getDescription();
+		String[] natures = description.getNatureIds();
+
+		for (int i = 0; i < natures.length; ++i) {
+			if (natureId.equals(natures[i]))
+				return;
+		}
+
+		String[] newNatures = new String[natures.length + 1];
+		System.arraycopy(natures, 0, newNatures, 0, natures.length);
+		newNatures[natures.length] = natureId;
+		description.setNatureIds(newNatures);
+		project.setDescription(description, monitor);
+
+	}
+
+}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
index 2c6a782..a299aa4 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
@@ -60,7 +60,7 @@ public class YoctoSDKProjectNature implements IProjectNature {
 	}
 
 	public static void addYoctoSDKNature(IProject project, IProgressMonitor monitor) throws CoreException {
-		YoctoSDKUtils.addNature(project, YoctoSDK_NATURE_ID, monitor);
+		YoctoSDKNatureUtils.addNature(project, YoctoSDK_NATURE_ID, monitor);
 	}
 
 	public static void configureAutotoolsOptions(IProject project) {
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
index c37e4fe..621aabf 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
@@ -38,10 +38,8 @@ import org.eclipse.cdt.core.settings.model.ICProjectDescription;
 import org.eclipse.cdt.debug.core.ICDTLaunchConfigurationConstants;
 import org.eclipse.cdt.debug.mi.core.IMILaunchConfigurationConstants;
 import org.eclipse.core.resources.IProject;
-import org.eclipse.core.resources.IProjectDescription;
 import org.eclipse.core.resources.ProjectScope;
 import org.eclipse.core.runtime.CoreException;
-import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.preferences.IEclipsePreferences;
 import org.eclipse.core.runtime.preferences.IScopeContext;
 import org.eclipse.debug.core.DebugPlugin;
@@ -631,24 +629,6 @@ public class YoctoSDKUtils {
 
 	}
 
-	public static void addNature(IProject project, String natureId, IProgressMonitor monitor) throws CoreException
-	{
-		IProjectDescription description = project.getDescription();
-		String[] natures = description.getNatureIds();
-
-		for (int i = 0; i < natures.length; ++i) {
-			if (natureId.equals(natures[i]))
-				return;
-		}
-
-		String[] newNatures = new String[natures.length + 1];
-	    System.arraycopy(natures, 0, newNatures, 0, natures.length);
-	    newNatures[natures.length] = natureId;
-	    description.setNatureIds(newNatures);
-	    project.setDescription(description, monitor);
-
-	}
-
 	public static String getPlatformArch() 
 	{
 		String value = null;
-- 
1.7.9.5


