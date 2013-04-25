Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B53DE0151C
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:32:47 -0700 (PDT)
Received: by mail-bk0-f48.google.com with SMTP id jf3so1237121bkc.35
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=l65JS4rV7CpXbqlTlTDmAPuuthiVg9ke4vgXScsXuKc=;
	b=t8tu/CeRUEzW/apq8NovznfNGijERykf+JPNYx5KtzXd3CJDB+Bvk3ecQ7DXMqEwbC
	fOfjtw2m1LbKsSyAAErcu+ZmwOxsgKUxYARpgOOCTzm6iRrYuD7/C0y04KOMnmKpBvPO
	Km3CEi4Fjsmip5972RudK8fL5UpborkpqhN9BBR7XOtlSEP8opQu/1o9jo8mPoa6dQcM
	E2+BoD9mXcZGyu/btK9RdOHu6Rih+dA1IzozcAL7S1faUsE3eO0dMv2tbilOpPsl28a3
	/G+P1HOWY3DY2d4uH3dVttRehKBMqmSfizRcuWa8XkV49myFlR8Sux0hBPNy7KeFeBQC
	e9Gw==
X-Received: by 10.205.44.129 with SMTP id ug1mr2249243bkb.29.1366893165973;
	Thu, 25 Apr 2013 05:32:45 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id cv9sm1541605bkb.5.2013.04.25.05.32.44
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 25 Apr 2013 05:32:45 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 25 Apr 2013 14:32:28 +0200
Message-Id: <1366893153-9880-3-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1366893153-9880-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1366893153-9880-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [RFCv2 2/7] plugins/sdk.ide: Added a new YoctoSDKCMakeProjectNature
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
X-List-Received-Date: Thu, 25 Apr 2013 12:32:47 -0000

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


