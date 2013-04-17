Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 739F7E014EF
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 06:29:41 -0700 (PDT)
Received: by mail-bk0-f48.google.com with SMTP id jf3so750348bkc.7
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 06:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=7zaPO8nYmqgiy5WdFnI2wsve6Ms54KstjDXtyI4YnKY=;
	b=r7RNXHIzKFLEuPGrjOMxvvXzk3IRsH6AFzUlr8vQBOzB0w7p3pxw2hvy3mgU2K6219
	fhdXOTg9xbm+dkPoDFngHCNdG8nSlbEE9YKG3RSEJpRnB2bBQzW0XbNnCxBoa3wwW5qd
	pReWFCmNZ4/sgbMeJYes5Qr4ZBo/sXIHTWhjbgaye/proBzRXVQWH/j3OSgbxpdemTXD
	hVJxO6xrYxKZk2CdoIRLnscm2z6nXSGEM77QTsnYmsXvuKU7UAjp3IiBouKDdtFu0G45
	+/fTvVEw6zvhQXRUmhffyvNotzrLEGeQ7phy3EI01Pt53TWcBnj0yEPIc6bgrQRCmlq4
	v2EA==
X-Received: by 10.204.201.1 with SMTP id ey1mr2227463bkb.110.1366205380505;
	Wed, 17 Apr 2013 06:29:40 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id gy3sm2111386bkc.16.2013.04.17.06.29.38
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 17 Apr 2013 06:29:39 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Apr 2013 15:29:17 +0200
Message-Id: <1366205365-8843-3-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1366205365-8843-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1366205365-8843-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCHv3 02/10] plugins/sdk.ide: Added a new YoctoSDKAutotoolsProjectNature
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
X-List-Received-Date: Wed, 17 Apr 2013 13:29:41 -0000

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


