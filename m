Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f43.google.com (mail-bk0-f43.google.com
	[209.85.214.43]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id B637CE0154D
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 08:12:16 -0800 (PST)
Received: by mail-bk0-f43.google.com with SMTP id jm19so365672bkc.16
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2013 08:12:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=3NHIoH8Z2Bbp794ASooMDjuHR8qWm20HOtCLBnzmEiw=;
	b=LONoUH76fxKUbWZU9zA3rsRpPor4BDZAsI2D71Xs7QrWeeowCT9iZhN1J6T5LYP6v7
	eje0s5UcTcMBnx+uy7hlPB2tZlIZaBmhthOKvKN+1KAYcSygFLs/hRg6ox75w4U8JQnT
	QxdLfGFFL0hLEhloNQPeEbFtlbWPVI/2MWBeqYRO5aI8JRNCDm1iw9Eq3RINC6ALFpo7
	W3KBWFxgO2UrI0NGr0of9tOiT0hCmTL1u39XPPUFu1Na7/THArXfehURhCeiv5ByMEAA
	cnF7K/8HHZjII9rH+sh49ZdosCne7OcBzKQrFl6qYK2Bi53EQCXn/X27Ay5Mj2M/G0v+
	hVRQ==
X-Received: by 10.204.147.91 with SMTP id k27mr11566854bkv.16.1362586335115;
	Wed, 06 Mar 2013 08:12:15 -0800 (PST)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id n1sm8513456bkv.14.2013.03.06.08.12.13
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 06 Mar 2013 08:12:14 -0800 (PST)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Mar 2013 17:11:55 +0100
Message-Id: <1362586316-9655-5-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1362586316-9655-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1362586316-9655-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCHv2 4/5] Moved nature-related utils in own class
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
X-List-Received-Date: Wed, 06 Mar 2013 16:12:17 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Created a nature specific utils class and moved
a method that is only relevant in the natures context.
---
 .../ide/natures/YoctoSDKEmptyProjectNature.java    |    3 +-
 .../yocto/sdk/ide/natures/YoctoSDKNatureUtils.java |   39 ++++++++++++++++++++
 .../sdk/ide/natures/YoctoSDKProjectNature.java     |    2 +-
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |   20 ----------
 4 files changed, 41 insertions(+), 23 deletions(-)
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
index 0000000..5a2a6b1
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKNatureUtils.java
@@ -0,0 +1,39 @@
+/*******************************************************************************
+ * Copyright (c) 2010 Intel Corporation.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * Intel - initial API and implementation
+ * BMW Car IT - extracted in an own class
+ *******************************************************************************/
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


