Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 4E6CDE0071D
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:24:45 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 79C65400E4;
	Fri,  8 Feb 2013 13:44:17 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:24:33 +0100
Message-Id: <a425e9190c797e43c4d00ffdfdc6734fe68a0437.1360320932.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <5ea21b7fbee999dedbd9e17f8e1f7202fa526204.1360320932.git.timo.mueller@bmw-carit.de>
References: <cover.1360320932.git.timo.mueller@bmw-carit.de>
	<a6e4255f26d3e1023c2f1b5cefab155606051238.1360320932.git.timo.mueller@bmw-carit.de>
	<5ea21b7fbee999dedbd9e17f8e1f7202fa526204.1360320932.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360320932.git.timo.mueller@bmw-carit.de>
References: <cover.1360320932.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v5 03/12] plugins/sdk.ide.doc.user: Add empty eclipse help
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
X-List-Received-Date: Fri, 08 Feb 2013 13:24:45 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Adds yocto specific eclipse help to the plugin. The help is currently
empty but will contain the official yocto documentation later.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 plugins/org.yocto.doc.user/.classpath              |  6 +++++
 plugins/org.yocto.doc.user/.project                | 28 ++++++++++++++++++++++
 plugins/org.yocto.doc.user/META-INF/MANIFEST.MF    |  8 +++++++
 .../OSGI-INF/l10n/bundle.properties                |  3 +++
 plugins/org.yocto.doc.user/build.properties        |  7 ++++++
 plugins/org.yocto.doc.user/html/book.css           |  1 +
 plugins/org.yocto.doc.user/plugin.xml              | 11 +++++++++
 plugins/org.yocto.doc.user/toc.xml                 |  3 +++
 8 files changed, 67 insertions(+)
 create mode 100644 plugins/org.yocto.doc.user/.classpath
 create mode 100644 plugins/org.yocto.doc.user/.project
 create mode 100644 plugins/org.yocto.doc.user/META-INF/MANIFEST.MF
 create mode 100644 plugins/org.yocto.doc.user/OSGI-INF/l10n/bundle.properties
 create mode 100644 plugins/org.yocto.doc.user/build.properties
 create mode 100644 plugins/org.yocto.doc.user/html/book.css
 create mode 100644 plugins/org.yocto.doc.user/plugin.xml
 create mode 100644 plugins/org.yocto.doc.user/toc.xml

diff --git a/plugins/org.yocto.doc.user/.classpath b/plugins/org.yocto.doc.user/.classpath
new file mode 100644
index 0000000..67e2a52
--- /dev/null
+++ b/plugins/org.yocto.doc.user/.classpath
@@ -0,0 +1,6 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<classpath>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.7"/>
+	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
+	<classpathentry kind="output" path="bin"/>
+</classpath>
diff --git a/plugins/org.yocto.doc.user/.project b/plugins/org.yocto.doc.user/.project
new file mode 100644
index 0000000..d46bf21
--- /dev/null
+++ b/plugins/org.yocto.doc.user/.project
@@ -0,0 +1,28 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<projectDescription>
+	<name>org.yocto.doc.user</name>
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
diff --git a/plugins/org.yocto.doc.user/META-INF/MANIFEST.MF b/plugins/org.yocto.doc.user/META-INF/MANIFEST.MF
new file mode 100644
index 0000000..4a89341
--- /dev/null
+++ b/plugins/org.yocto.doc.user/META-INF/MANIFEST.MF
@@ -0,0 +1,8 @@
+XFManifest-Version: 1.0
+Bundle-ManifestVersion: 2
+Bundle-Name: %Bundle-Name
+Bundle-SymbolicName: org.yocto.doc.user;singleton:=true
+Bundle-Version: 1.0.0.qualifier
+Bundle-Vendor: %Bundle-Vendor
+Bundle-RequiredExecutionEnvironment: JavaSE-1.6
+Require-Bundle: org.eclipse.help
diff --git a/plugins/org.yocto.doc.user/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.doc.user/OSGI-INF/l10n/bundle.properties
new file mode 100644
index 0000000..b602cbd
--- /dev/null
+++ b/plugins/org.yocto.doc.user/OSGI-INF/l10n/bundle.properties
@@ -0,0 +1,3 @@
+#Properties file for org.yocto.doc.user
+Bundle-Vendor = yoctoproject.org
+Bundle-Name = Yocto Project Documentation
diff --git a/plugins/org.yocto.doc.user/build.properties b/plugins/org.yocto.doc.user/build.properties
new file mode 100644
index 0000000..525a366
--- /dev/null
+++ b/plugins/org.yocto.doc.user/build.properties
@@ -0,0 +1,7 @@
+bin.includes = plugin.xml,\
+               .,\
+               META-INF/,\
+               OSGI-INF/,\
+               html/,\
+               toc.xml
+src.includes = html/
diff --git a/plugins/org.yocto.doc.user/html/book.css b/plugins/org.yocto.doc.user/html/book.css
new file mode 100644
index 0000000..e248f5a
--- /dev/null
+++ b/plugins/org.yocto.doc.user/html/book.css
@@ -0,0 +1 @@
+@import "PLUGINS_ROOT/PRODUCT_PLUGIN/book.css";
diff --git a/plugins/org.yocto.doc.user/plugin.xml b/plugins/org.yocto.doc.user/plugin.xml
new file mode 100644
index 0000000..8353cd1
--- /dev/null
+++ b/plugins/org.yocto.doc.user/plugin.xml
@@ -0,0 +1,11 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<?eclipse version="3.4"?>
+<plugin>
+	<extension
+		point="org.eclipse.help.toc">
+		<toc
+			file="toc.xml"
+			primary="true">
+		</toc>
+	</extension>
+</plugin>
diff --git a/plugins/org.yocto.doc.user/toc.xml b/plugins/org.yocto.doc.user/toc.xml
new file mode 100644
index 0000000..4998ef3
--- /dev/null
+++ b/plugins/org.yocto.doc.user/toc.xml
@@ -0,0 +1,3 @@
+<?xml version="1.0" encoding="UTF-8"?>
+ <toc label="Yocto Project Documentation">
+ </toc>
-- 
1.7.11.7


