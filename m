Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63F67E0144A
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 07:44:17 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id CE5354006C;
	Fri, 21 Sep 2012 16:14:19 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2012 16:44:04 +0200
Message-Id: <a0c94f0bfa5700e9382e1e428882072194cf0f8b.1348237278.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1348237278.git.timo.mueller@bmw-carit.de>
References: <cover.1348237278.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348237278.git.timo.mueller@bmw-carit.de>
References: <cover.1348237278.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFCv2 01/12] plugins/sdk.doc.user: Added plugin for the yocto project documentation
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
X-List-Received-Date: Fri, 21 Sep 2012 14:44:17 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

This currently empty plugin will in the future contain the
documentation of the yocto project converted to the eclipse help
format.
---
 plugins/org.yocto.sdk.doc.user/.classpath          |    6 ++++
 plugins/org.yocto.sdk.doc.user/.project            |   28 ++++++++++++++++++++
 .../.settings/org.eclipse.jdt.core.prefs           |    8 +++++
 .../org.yocto.sdk.doc.user/META-INF/MANIFEST.MF    |    7 +++++
 .../OSGI-INF/l10n/bundle.properties                |    3 ++
 plugins/org.yocto.sdk.doc.user/build.properties    |    4 +++
 plugins/org.yocto.sdk.doc.user/plugin.xml          |    4 +++
 7 files changed, 60 insertions(+), 0 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.doc.user/.classpath
 create mode 100644 plugins/org.yocto.sdk.doc.user/.project
 create mode 100644 plugins/org.yocto.sdk.doc.user/.settings/org.eclipse.jdt.core.prefs
 create mode 100644 plugins/org.yocto.sdk.doc.user/META-INF/MANIFEST.MF
 create mode 100644 plugins/org.yocto.sdk.doc.user/OSGI-INF/l10n/bundle.properties
 create mode 100644 plugins/org.yocto.sdk.doc.user/build.properties
 create mode 100644 plugins/org.yocto.sdk.doc.user/plugin.xml

diff --git a/plugins/org.yocto.sdk.doc.user/.classpath b/plugins/org.yocto.sdk.doc.user/.classpath
new file mode 100644
index 0000000..bc74aab
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/.classpath
@@ -0,0 +1,6 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<classpath>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.6"/>
+	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
+	<classpathentry kind="output" path="bin"/>
+</classpath>
diff --git a/plugins/org.yocto.sdk.doc.user/.project b/plugins/org.yocto.sdk.doc.user/.project
new file mode 100644
index 0000000..d361cd4
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/.project
@@ -0,0 +1,28 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<projectDescription>
+	<name>org.yocto.sdk.doc.user</name>
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
diff --git a/plugins/org.yocto.sdk.doc.user/.settings/org.eclipse.jdt.core.prefs b/plugins/org.yocto.sdk.doc.user/.settings/org.eclipse.jdt.core.prefs
new file mode 100644
index 0000000..f90fa9c
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/.settings/org.eclipse.jdt.core.prefs
@@ -0,0 +1,8 @@
+#Fri Mar 04 13:59:33 CET 2011
+eclipse.preferences.version=1
+org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode=enabled
+org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.6
+org.eclipse.jdt.core.compiler.compliance=1.6
+org.eclipse.jdt.core.compiler.problem.assertIdentifier=error
+org.eclipse.jdt.core.compiler.problem.enumIdentifier=error
+org.eclipse.jdt.core.compiler.source=1.6
diff --git a/plugins/org.yocto.sdk.doc.user/META-INF/MANIFEST.MF b/plugins/org.yocto.sdk.doc.user/META-INF/MANIFEST.MF
new file mode 100644
index 0000000..6bece6b
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/META-INF/MANIFEST.MF
@@ -0,0 +1,7 @@
+Manifest-Version: 1.0
+Bundle-ManifestVersion: 2
+Bundle-Name: %plugin.name
+Bundle-SymbolicName: org.yocto.sdk.doc.user;singleton:=true
+Bundle-Version: 1.2.0.qualifier
+Bundle-Vendor: %plugin.provider
+Bundle-RequiredExecutionEnvironment: JavaSE-1.6
diff --git a/plugins/org.yocto.sdk.doc.user/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.sdk.doc.user/OSGI-INF/l10n/bundle.properties
new file mode 100644
index 0000000..61e70de
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/OSGI-INF/l10n/bundle.properties
@@ -0,0 +1,3 @@
+#Properties file for org.yocto.sdk.doc.user
+Bundle-Vendor = yoctoproject.org
+Bundle-Name = Yocto Project Documentation
diff --git a/plugins/org.yocto.sdk.doc.user/build.properties b/plugins/org.yocto.sdk.doc.user/build.properties
new file mode 100644
index 0000000..31e0140
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/build.properties
@@ -0,0 +1,4 @@
+bin.includes = plugin.xml,\
+               .,\
+               META-INF/,\
+               OSGI-INF/
diff --git a/plugins/org.yocto.sdk.doc.user/plugin.xml b/plugins/org.yocto.sdk.doc.user/plugin.xml
new file mode 100644
index 0000000..f422d55
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/plugin.xml
@@ -0,0 +1,4 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<?eclipse version="3.4"?>
+<plugin>
+</plugin>
-- 
1.7.7.6


