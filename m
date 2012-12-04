Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3106EE01438
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2012 01:22:27 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id A5AFD40264;
	Tue,  4 Dec 2012 09:46:56 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Tue,  4 Dec 2012 10:22:20 +0100
Message-Id: <23825fe29ce2bbeef35b3fffa9bbb3d6c79d01f9.1354608536.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <49c4eff9354e4a871a58d8f3bc7f4ef90f4f734d.1354608536.git.timo.mueller@bmw-carit.de>
References: <cover.1354608536.git.timo.mueller@bmw-carit.de>
	<56d6fb92e4678d78e49b872c45dc678f635aad80.1354608536.git.timo.mueller@bmw-carit.de>
	<15320fff8e0ade9b2c6a8013b9e140aa9236aac7.1354608536.git.timo.mueller@bmw-carit.de>
	<260dbc9c47e40a233d1810979677e3cc1a70b957.1354608536.git.timo.mueller@bmw-carit.de>
	<49c4eff9354e4a871a58d8f3bc7f4ef90f4f734d.1354608536.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354608536.git.timo.mueller@bmw-carit.de>
References: <cover.1354608536.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 5/8] plugins/sdk.ide: Added empty yocto preference page to project properties
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
X-List-Received-Date: Tue, 04 Dec 2012 09:22:27 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Adds an empty preference page to projects with the YoctoSDKNature. This
preference page is shown in the standard project properties dialog and
will later allow modifying the yocto settings of the project.
---
 .../OSGI-INF/l10n/bundle.properties                |    1 +
 plugins/org.yocto.sdk.ide/plugin.xml               |   14 +++++++++
 .../preferences/YoctoSDKProjectPropertyPage.java   |   29 ++++++++++++++++++++
 3 files changed, 44 insertions(+), 0 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java

diff --git a/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
index d0bf9b7..a7172be 100644
--- a/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
+++ b/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
@@ -5,5 +5,6 @@ command.name = ReconfigureYoctoProject
 command.label.0 = Change Yocto Project Settings
 command.mnemonic = C
 projectType.name.0 = Yocto Project ADT Project
+projectProperties.label.0 = Yocto Project Settings
 Bundle-Vendor = yoctoproject.org
 Bundle-Name = Yocto Plugin IDE
diff --git a/plugins/org.yocto.sdk.ide/plugin.xml b/plugins/org.yocto.sdk.ide/plugin.xml
index c540b9b..6548ae2 100644
--- a/plugins/org.yocto.sdk.ide/plugin.xml
+++ b/plugins/org.yocto.sdk.ide/plugin.xml
@@ -180,5 +180,19 @@
             id="org.yocto.sdk.ide.YoctoConsole">
       </CBuildConsole>
    </extension>
+   <extension
+         point="org.eclipse.ui.propertyPages">
+      <page
+            adaptable="true"
+            class="org.yocto.sdk.ide.preferences.YoctoSDKProjectPropertyPage"
+            id="org.yocto.sdk.ide.page"
+            name="%projectProperties.label.0"
+            objectClass="org.eclipse.core.resources.IProject">
+         <filter
+               name="projectNature"
+               value="org.yocto.sdk.ide.YoctoSDKNature">
+         </filter>
+      </page>
+   </extension>
 
 </plugin>
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
new file mode 100644
index 0000000..265c8dc
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
@@ -0,0 +1,29 @@
+/*******************************************************************************
+ * Copyright (c) 2012 BMW Car IT GmbH.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * BMW Car IT GmbH - initial implementation
+ *******************************************************************************/
+package org.yocto.sdk.ide.preferences;
+
+import org.eclipse.swt.widgets.Composite;
+import org.eclipse.swt.widgets.Control;
+import org.eclipse.ui.IWorkbenchPropertyPage;
+import org.eclipse.ui.dialogs.PropertyPage;
+
+public class YoctoSDKProjectPropertyPage extends PropertyPage implements
+		IWorkbenchPropertyPage {
+
+	public YoctoSDKProjectPropertyPage() {
+	}
+
+	@Override
+	protected Control createContents(Composite parent) {
+		return null;
+	}
+
+}
-- 
1.7.7.6


