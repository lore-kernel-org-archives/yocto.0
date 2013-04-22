Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f50.google.com (mail-bk0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99B23E014F7
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 05:06:15 -0700 (PDT)
Received: by mail-bk0-f50.google.com with SMTP id ik5so447549bkc.9
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 05:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=l65JS4rV7CpXbqlTlTDmAPuuthiVg9ke4vgXScsXuKc=;
	b=XOnI6c5ukpRGFR290085wSVnPNEQYKsYUvA8qT1B6gbMwa6KwSGtJxcDl5hFY4lGDh
	gNQpi0A4ff5vR964PyED1Sm1NZO7NFK/I3Xy3Fd9swAvWkxy9Zc//nRE02HlRs/wjP5q
	gR92/KlRA9DHx6zFuZwAQ3pY/0yZEXRKDLv7ZgyX6EzdCVvS03Mcs1HQVZ0uYTC8VQni
	MpirxPv1cHwnysc+a0mblRwus5bZxbxSAajDl77mhff6oyw+HiJGKOldPi5sbV/opVJ7
	qL9ASrn8jYQx9ECepG+Pnt4w5qRAblfnVa2gTdP8MRJxIdajYCdQPHmXC10IJ1tr0VKH
	sBMg==
X-Received: by 10.205.21.10 with SMTP id qq10mr10692625bkb.133.1366632374279; 
	Mon, 22 Apr 2013 05:06:14 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id cv9sm6751434bkb.5.2013.04.22.05.06.13
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 22 Apr 2013 05:06:13 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 22 Apr 2013 14:05:59 +0200
Message-Id: <1366632363-6064-3-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1366632363-6064-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1366632363-6064-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [RFC 2/6] plugins/sdk.ide: Added a new YoctoSDKCMakeProjectNature
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
X-List-Received-Date: Mon, 22 Apr 2013 12:06:16 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

This nature is intended for Yocto projects that
use CMake as a build system. It requires the
YoctoSDKProjectNature and can be used by upcoming
CMake project templates. It excludes the
YoctoSDKAutotoolsProjectNature, e.g. their
relation in plugin.xml is declared as
"one-of-nature".
---
 .../OSGI-INF/l10n/bundle.properties                |    1 +
 plugins/org.yocto.sdk.ide/plugin.xml               |   19 +++++++++++++++++++
 .../ide/natures/YoctoSDKCMakeProjectNature.java    |   20 ++++++++++++++++++++
 3 files changed, 40 insertions(+)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKCMakeProjectNature.java

diff --git a/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
index 1a4e3c9..48eb653 100644
--- a/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
+++ b/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
@@ -2,6 +2,7 @@
 page.name.0 = Yocto Project ADT
 extension.name.0 = YoctoSDKNature
 extension.name.1 = YoctoSDKAutotoolsNature
+extension.name.2 = YoctoSDKCMakeNature
 command.name = ReconfigureYoctoProject
 command.label.0 = Change Yocto Project Settings
 command.mnemonic = C
diff --git a/plugins/org.yocto.sdk.ide/plugin.xml b/plugins/org.yocto.sdk.ide/plugin.xml
index dd75532..2d6b941 100644
--- a/plugins/org.yocto.sdk.ide/plugin.xml
+++ b/plugins/org.yocto.sdk.ide/plugin.xml
@@ -40,11 +40,30 @@
                class="org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature">
          </run>
       </runtime>
+      <one-of-nature
+            id="org.yocto.sdk.ide.buildsystemNaturesSet">
+      </one-of-nature>
       <builder
             id="org.eclipse.cdt.autotools.core.genmakebuilderV2">
       </builder>
    </extension>
    <extension
+         id="YoctoSDKCMakeNature"
+         name="%extension.name.2"
+         point="org.eclipse.core.resources.natures">
+      <requires-nature
+            id="org.yocto.sdk.ide.YoctoSDKNature">
+      </requires-nature>
+      <runtime>
+         <run
+               class="org.yocto.sdk.ide.natures.YoctoSDKCMakeProjectNature">
+         </run>
+      </runtime>
+      <one-of-nature
+            id="org.yocto.sdk.ide.buildsystemNaturesSet">
+      </one-of-nature>
+   </extension>
+   <extension
          id="YoctoSDKEmptyNature"
          point="org.eclipse.core.resources.natures">
       <requires-nature
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKCMakeProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKCMakeProjectNature.java
new file mode 100644
index 0000000..86a9d45
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKCMakeProjectNature.java
@@ -0,0 +1,20 @@
+/*******************************************************************************
+ * Copyright (c) 2013 BMW Car IT GmbH.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * BMW Car IT - initial API and implementation
+ *******************************************************************************/
+package org.yocto.sdk.ide.natures;
+
+import org.eclipse.core.resources.IProject;
+import org.eclipse.core.runtime.CoreException;
+import org.yocto.sdk.ide.YoctoSDKPlugin;
+
+public class YoctoSDKCMakeProjectNature extends YoctoSDKProjectNature {
+	public static final  String YoctoSDK_CMAKE_NATURE_ID = YoctoSDKPlugin.getUniqueIdentifier() + ".YoctoSDKCMakeNature";
+
+}
-- 
1.7.9.5


