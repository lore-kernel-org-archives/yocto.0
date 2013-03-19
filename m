Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f43.google.com (mail-bk0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A304E0140A
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 09:02:11 -0700 (PDT)
Received: by mail-bk0-f43.google.com with SMTP id jm19so317076bkc.30
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 09:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=7zaPO8nYmqgiy5WdFnI2wsve6Ms54KstjDXtyI4YnKY=;
	b=fuSvQIFz1Lcfkf/lOWTot5GDOpUvre50pIezGymatjvCGEGr8aa4I44lKm1XyQRX4b
	H5Ng2hgTiT3qzR7S3xg5u98YCfuWcecSVBUkC7IJcLi1Fb3UNOKnsFcr3ukIu3sbk4z+
	xiy0syqm+oQ+Rh+V1aT+dTS1aIZN5ksVOEd7g0bIST5IczX5Nt5UztJdDUYPhuWso+Re
	GIdqDBHXF1LE996y54jwXrOjIbsDnBMuxVvC9UdwRJBEhWPXm93n2SSFYVc0BhjKJ07n
	/GvVOJIGFBPhQwKhDuVmR5qMYMyX2BAcOgDtuPniJ6gVoPVKRupYCEV99xNK5bLy7pXH
	2uhw==
X-Received: by 10.204.165.15 with SMTP id g15mr9073866bky.140.1363708930459;
	Tue, 19 Mar 2013 09:02:10 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id v2sm6616816bkw.5.2013.03.19.09.02.09
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 19 Mar 2013 09:02:09 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 19 Mar 2013 17:01:46 +0100
Message-Id: <1363708911-13002-3-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1363708911-13002-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1363708911-13002-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 2/7] plugins/sdk.ide: Added a new YoctoSDKAutotoolsProjectNature
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
X-List-Received-Date: Tue, 19 Mar 2013 16:02:11 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

This nature is intended for Yocto projects that use
Autotools as a build system. It requires the YoctoSDKProjectNature
and will be used by the existing templates.
---
 .../OSGI-INF/l10n/bundle.properties                |    1 +
 plugins/org.yocto.sdk.ide/plugin.xml               |   18 ++++++++-
 .../natures/YoctoSDKAutotoolsProjectNature.java    |   41 ++++++++++++++++++++
 3 files changed, 59 insertions(+), 1 deletion(-)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java

diff --git a/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
index a7172be..3d491fb 100644
--- a/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
+++ b/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
@@ -1,6 +1,7 @@
 #Properties file for org.Yocto.sdk.ide
 page.name.0 = Yocto Project ADT
 extension.name.0 = YoctoSDKNature
+extension.name.1 = YoctoSDKAutotoolsNature
 command.name = ReconfigureYoctoProject
 command.label.0 = Change Yocto Project Settings
 command.mnemonic = C
diff --git a/plugins/org.yocto.sdk.ide/plugin.xml b/plugins/org.yocto.sdk.ide/plugin.xml
index 1fbca80..f21434b 100644
--- a/plugins/org.yocto.sdk.ide/plugin.xml
+++ b/plugins/org.yocto.sdk.ide/plugin.xml
@@ -19,12 +19,25 @@
          id="YoctoSDKNature"
          name="%extension.name.0"
          point="org.eclipse.core.resources.natures">
+      <runtime>
+         <run
+               class="org.yocto.sdk.ide.natures.YoctoSDKProjectNature">
+         </run>
+      </runtime>
+   </extension>
+   <extension
+         id="YoctoSDKAutotoolsNature"
+         name="%extension.name.1"
+         point="org.eclipse.core.resources.natures">
+      <requires-nature
+            id="org.yocto.sdk.ide.YoctoSDKNature">
+      </requires-nature>
       <requires-nature
             id="org.eclipse.cdt.autotools.core.autotoolsNatureV2">
       </requires-nature>
       <runtime>
          <run
-               class="org.yocto.sdk.ide.natures.YoctoSDKProjectNature">
+               class="org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature">
          </run>
       </runtime>
       <builder
@@ -34,6 +47,9 @@
    <extension
          id="YoctoSDKEmptyNature"
          point="org.eclipse.core.resources.natures">
+      <requires-nature
+            id="org.yocto.sdk.ide.YoctoSDKNature">
+      </requires-nature>
       <runtime>
          <run
                class="org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature">
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
new file mode 100644
index 0000000..ac73878
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
@@ -0,0 +1,41 @@
+/*******************************************************************************
+ * Copyright (c) 2010 Intel Corporation.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * Intel - initial API and implementation
+ *******************************************************************************/
+package org.yocto.sdk.ide.natures;
+
+import org.eclipse.core.resources.IProject;
+import org.eclipse.core.resources.IProjectNature;
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.yocto.sdk.ide.YoctoSDKPlugin;
+
+public class YoctoSDKAutotoolsProjectNature implements IProjectNature {
+	public static final  String YoctoSDK_AUTOTOOLS_NATURE_ID = YoctoSDKPlugin.getUniqueIdentifier() + ".YoctoSDKAutotoolsNature";
+
+	private IProject proj;
+
+	public void configure() throws CoreException {
+	}
+
+	public void deconfigure() throws CoreException {
+	}
+
+	public IProject getProject() {
+		return proj;
+	}
+
+	public void setProject(IProject project) {
+		this.proj = project;
+	}
+
+	public static void addYoctoSDKAutotoolsNature(IProject project, IProgressMonitor monitor) throws CoreException {
+		YoctoSDKNatureUtils.addNature(project, YoctoSDK_AUTOTOOLS_NATURE_ID, monitor);
+	}
+}
-- 
1.7.9.5


