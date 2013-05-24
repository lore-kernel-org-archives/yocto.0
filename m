Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ea0-f179.google.com (mail-ea0-f179.google.com
	[209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7053E014A7
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 05:03:34 -0700 (PDT)
Received: by mail-ea0-f179.google.com with SMTP id z16so2495343ead.24
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 05:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=l65JS4rV7CpXbqlTlTDmAPuuthiVg9ke4vgXScsXuKc=;
	b=adZ5x98rkW4rs1x2GOtnWuNvqa4WprSR6pNk7PkOP5eqf7MQSWm4rDyszgPNq2oq6I
	WsSYqKQS0uwYl59tLd0S2/HO/jWqlf2aVNiXxL3vyvBwhd6sNZ4FJ0hBq7TpSLayl2Ez
	Lw1AbYMje976iq3R5VomPkrao6cRIo0f3ckWNymZeDrkmPEy82neppaxfPHUxGwr7Cg2
	nYH1OviZSbbFEcYXHJKWGu5wFpEIKe6mEJcsfyiit/Oa7YVLgzdKTHQSfhHSh4N4bsqi
	AWVxLNOgtc25yLLCSl83IxhOUDQHNT6ERPAUuo5S23VFAx7wLpw0bb93ovnh89LfVDcS
	zmkg==
X-Received: by 10.15.111.75 with SMTP id ci51mr42987650eeb.7.1369397014050;
	Fri, 24 May 2013 05:03:34 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id y10sm23198135eev.3.2013.05.24.05.03.32
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 24 May 2013 05:03:33 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 24 May 2013 14:03:20 +0200
Message-Id: <1369397005-3262-3-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369397005-3262-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1369397005-3262-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 2/7] plugins/sdk.ide: Added a new YoctoSDKCMakeProjectNature
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
X-List-Received-Date: Fri, 24 May 2013 12:03:35 -0000

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


