Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ee0-f47.google.com (mail-ee0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41E02E01481
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:02 -0700 (PDT)
Received: by mail-ee0-f47.google.com with SMTP id t10so1675301eei.6
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=uB9PUtad3+nnxy3MdAqkSzdmfCSsPm/NwmmHleXPyVw=;
	b=eDNiHwbLDdc0uf8kBk8L1leCe6hCgiXTWh2OLGEg1S9Sw6IGQfG0hnE/AA1grO7uFD
	zexDM9TqB+9z14F3JimFbsI+oYCg2eEz9N9EHHuJ+K+dElDLCxGTpE8Gtd/L4+hAII1Y
	cMGjcWFhFbMVSwaeHY6JJoZQWrKNxUrk4O7uAItPrXM/aJBAs3eORrZlxKShqPm8awoL
	UBw7BpTzV9XULD17wtAXOdIPo8HGb4nxH6haQRVZHrFFCKV/VSb4H+dw1L5fpt268N9G
	9H/+KGMu1L6Gz3Uz+x3AMlq31ivv8AxeCPKHmUk0pKiuZbFfBc074mbGvEycaTOHYNFc
	8XQg==
X-Received: by 10.15.48.4 with SMTP id g4mr5413261eew.10.1369298401399;
	Thu, 23 May 2013 01:40:01 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id c41sm11438848eeu.8.2013.05.23.01.40.00
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 23 May 2013 01:40:00 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 10:39:40 +0200
Message-Id: <1369298392-4076-2-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 01/13] plugins/cmake: Added an empty CMake integration plugin
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
X-List-Received-Date: Thu, 23 May 2013 08:40:02 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

This plugin will implement the CMake managed
builder (CMake toolchain for Eclipse) and will
also provide CMake template projects.
---
 plugins/org.yocto.cmake.managedbuilder/.classpath  |    7 +++
 plugins/org.yocto.cmake.managedbuilder/.project    |   28 ++++++++++
 .../.settings/org.eclipse.jdt.core.prefs           |    8 +++
 .../META-INF/MANIFEST.MF                           |   16 ++++++
 .../OSGI-INF/l10n/bundle.properties                |   13 +++++
 .../build.properties                               |    6 +++
 plugins/org.yocto.cmake.managedbuilder/plugin.xml  |    4 ++
 .../org/yocto/cmake/managedbuilder/Activator.java  |   50 +++++++++++++++++
 .../cmake/managedbuilder/YoctoCMakeMessages.java   |   57 ++++++++++++++++++++
 9 files changed, 189 insertions(+)
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/.classpath
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/.project
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/.settings/org.eclipse.jdt.core.prefs
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/META-INF/MANIFEST.MF
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/build.properties
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/plugin.xml
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/Activator.java
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.java

diff --git a/plugins/org.yocto.cmake.managedbuilder/.classpath b/plugins/org.yocto.cmake.managedbuilder/.classpath
new file mode 100644
index 0000000..ad32c83
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/.classpath
@@ -0,0 +1,7 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<classpath>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.6"/>
+	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
+	<classpathentry kind="src" path="src"/>
+	<classpathentry kind="output" path="bin"/>
+</classpath>
diff --git a/plugins/org.yocto.cmake.managedbuilder/.project b/plugins/org.yocto.cmake.managedbuilder/.project
new file mode 100644
index 0000000..67c7f68
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/.project
@@ -0,0 +1,28 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<projectDescription>
+	<name>org.yocto.cmake.managedbuilder</name>
+	<comment></comment>
+	<projects>
+	</projects>
+	<buildSpec>
+		<buildCommand>
+			<name>org.eclipse.jdt.core.javabuilder</name>
+			<arguments>
+			</arguments>
+		</buildCommand>
+		<buildCommand>
+			<name>org.eclipse.pde.ManifestBuilder</name>
+			<arguments>
+			</arguments>
+		</buildCommand>
+		<buildCommand>
+			<name>org.eclipse.pde.SchemaBuilder</name>
+			<arguments>
+			</arguments>
+		</buildCommand>
+	</buildSpec>
+	<natures>
+		<nature>org.eclipse.pde.PluginNature</nature>
+		<nature>org.eclipse.jdt.core.javanature</nature>
+	</natures>
+</projectDescription>
diff --git a/plugins/org.yocto.cmake.managedbuilder/.settings/org.eclipse.jdt.core.prefs b/plugins/org.yocto.cmake.managedbuilder/.settings/org.eclipse.jdt.core.prefs
new file mode 100644
index 0000000..c1a4ce9
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/.settings/org.eclipse.jdt.core.prefs
@@ -0,0 +1,8 @@
+#Wed Jul 14 11:43:59 CEST 2010
+eclipse.preferences.version=1
+org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode=enabled
+org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.6
+org.eclipse.jdt.core.compiler.compliance=1.6
+org.eclipse.jdt.core.compiler.problem.assertIdentifier=error
+org.eclipse.jdt.core.compiler.problem.enumIdentifier=error
+org.eclipse.jdt.core.compiler.source=1.6
diff --git a/plugins/org.yocto.cmake.managedbuilder/META-INF/MANIFEST.MF b/plugins/org.yocto.cmake.managedbuilder/META-INF/MANIFEST.MF
new file mode 100644
index 0000000..2ed5451
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/META-INF/MANIFEST.MF
@@ -0,0 +1,16 @@
+Manifest-Version: 1.0
+Bundle-ManifestVersion: 2
+Bundle-Name: %Bundle-Name
+Bundle-SymbolicName: org.yocto.cmake.managedbuilder;singleton:=true
+Bundle-Version: 1.4.0.qualifier
+Bundle-Activator: org.yocto.cmake.managedbuilder.Activator
+Bundle-Vendor: %Bundle-Vendor
+Require-Bundle: org.eclipse.cdt.managedbuilder.core,
+ org.eclipse.cdt.core;bundle-version="5.2.1",
+ org.eclipse.core.resources;bundle-version="3.6.0",
+ org.eclipse.core.runtime;bundle-version="3.6.0",
+ org.eclipse.ui.console;bundle-version="3.5.0",
+ org.eclipse.ui;bundle-version="3.6.2",
+ org.yocto.sdk.ide
+Bundle-RequiredExecutionEnvironment: JavaSE-1.6
+Bundle-ActivationPolicy: lazy
diff --git a/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
new file mode 100644
index 0000000..86125e4
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
@@ -0,0 +1,13 @@
+#/*******************************************************************************
+# * Copyright (c) 2013 BMW Car IT GmbH.
+# * All rights reserved. This program and the accompanying materials
+# * are made available under the terms of the Eclipse Public License v1.0
+# * which accompanies this distribution, and is available at
+# * http://www.eclipse.org/legal/epl-v10.html
+# *
+# * Contributors:
+# * BMW Car IT - initial implementation
+# *******************************************************************************/
+
+Bundle-Vendor = yoctoproject.org
+Bundle-Name = Yocto CMake Plugin
diff --git a/plugins/org.yocto.cmake.managedbuilder/build.properties b/plugins/org.yocto.cmake.managedbuilder/build.properties
new file mode 100644
index 0000000..3e5f9ad
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/build.properties
@@ -0,0 +1,6 @@
+source.. = src/
+output.. = bin/
+bin.includes = META-INF/,\
+               .,\
+               plugin.xml,\
+               OSGI-INF/
diff --git a/plugins/org.yocto.cmake.managedbuilder/plugin.xml b/plugins/org.yocto.cmake.managedbuilder/plugin.xml
new file mode 100644
index 0000000..f422d55
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/plugin.xml
@@ -0,0 +1,4 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<?eclipse version="3.4"?>
+<plugin>
+</plugin>
diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/Activator.java b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/Activator.java
new file mode 100644
index 0000000..6d4e28f
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/Activator.java
@@ -0,0 +1,50 @@
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
+package org.yocto.cmake.managedbuilder;
+
+import org.eclipse.core.runtime.Plugin;
+import org.osgi.framework.BundleContext;
+
+public class Activator extends Plugin {
+
+	/** The plug-in ID. */
+	public static final String PLUGIN_ID = "org.yocto.cmake.managedbuilder"; //$NON-NLS-1$
+
+	/** The shared activator instance. */
+	private static Activator plugin;
+
+	/*
+	 * (non-Javadoc)
+	 * @see org.eclipse.ui.plugin.AbstractUIPlugin#start(org.osgi.framework.BundleContext)
+	 */
+	@Override
+	public void start(BundleContext context) throws Exception {
+		super.start(context);
+		plugin = this;
+	}
+
+	/*
+	 * (non-Javadoc)
+	 * @see org.eclipse.ui.plugin.AbstractUIPlugin#stop(org.osgi.framework.BundleContext)
+	 */
+	@Override
+	public void stop(BundleContext context) throws Exception {
+		plugin = null;
+		super.stop(context);
+	}
+
+	/**
+	 * @return the shared instance of the Activator
+	 */
+	public static Activator getDefault() {
+		return plugin;
+	}
+}
diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.java b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.java
new file mode 100644
index 0000000..1bd8b46
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.java
@@ -0,0 +1,57 @@
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
+package org.yocto.cmake.managedbuilder;
+
+import java.text.MessageFormat;
+import java.util.MissingResourceException;
+import java.util.ResourceBundle;
+
+public class YoctoCMakeMessages {
+
+	private static final String RESOURCE_BUNDLE= YoctoCMakeMessages.class.getName();
+	private static ResourceBundle fgResourceBundle;
+	static {
+		try {
+			fgResourceBundle = ResourceBundle.getBundle(RESOURCE_BUNDLE);
+		} catch (MissingResourceException x) {
+			fgResourceBundle = null;
+		}
+	}
+
+	private YoctoCMakeMessages() {
+	}
+
+	public static String getString(String key) {
+		try {
+			return fgResourceBundle.getString(key);
+		} catch (MissingResourceException e) {
+			return '!' + key + '!';
+		} catch (NullPointerException e) {
+			return "#" + key + "#"; //$NON-NLS-1$ //$NON-NLS-2$
+		}
+	}
+
+	/**
+	 * Gets a string from the resource bundle and formats it with the argument
+	 *
+	 * @param key	the string used to get the bundle value, must not be null
+	 */
+	public static String getFormattedString(String key, Object arg) {
+		return MessageFormat.format(getString(key), new Object[] { arg });
+	}
+
+	/**
+	 * Gets a string from the resource bundle and formats it with arguments
+	 */
+	public static String getFormattedString(String key, Object[] args) {
+		return MessageFormat.format(getString(key), args);
+	}
+}
-- 
1.7.9.5


