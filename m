Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-wi0-f196.google.com (mail-wi0-f196.google.com
	[209.85.212.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D1DDE00280
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 08:55:20 -0700 (PDT)
Received: by wibhm11 with SMTP id hm11so897387wib.11
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 08:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=8ihM/bwqC+0dGkIbvii/+GFh7oR3RTNSu7VsjLmYMZI=;
	b=hsoNUm22PvSjFZTAU+LpRpILZOuJAZ6gpYXnx3KHPeIwubq7pAzXaIv9xCKHLHKy52
	6JqIujzAW53h1EU55Kw3ZFBRPG/S/DrRD/3WGb5PnOCSJr/vO8LMC5sFHyjORKoo3Wew
	FBVD/Q+MmntqFSAQrrg0fjCjSlSYPCK1wiFSxhxho3HQuSryDJurVQRNN7JHnHB1lh99
	p3nlD+QCvG64Lss5NvhbN/IGxLgvq5TnxcyLERg1RYlOvZf97Mt5jSf7K+tce1W/kueX
	JtlqRazMnL1zEEiII7hDKvjyv49IRs2MzircgwaAafr+lF2VPltOlEgDYn9wkf1UErCx
	fcuQ==
Received: by 10.216.136.203 with SMTP id w53mr6796291wei.63.1343145318887;
	Tue, 24 Jul 2012 08:55:18 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id 49sm256418eej.10.2012.07.24.08.55.17
	(version=SSLv3 cipher=OTHER); Tue, 24 Jul 2012 08:55:18 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 24 Jul 2012 17:53:50 +0200
Message-Id: <eb1bb42252a02d7543add5602ece632225fb91db.1343140579.git.atanas.gegov@bmw-carit.de>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1343140579.git.atanas.gegov@bmw-carit.de>
References: <cover.1343140579.git.atanas.gegov@bmw-carit.de>
In-Reply-To: <cover.1343140579.git.atanas.gegov@bmw-carit.de>
References: <cover.1343140579.git.atanas.gegov@bmw-carit.de>
Subject: [RFC 1/3] plugins/sdk.ide.doc.user: Added plugin for ide specific user help
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
X-List-Received-Date: Tue, 24 Jul 2012 15:55:20 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

This currently empty plugin will in the future contain yocto ide
specific user help documents such as eclipse help documents or cheat
sheets.
---
 plugins/org.yocto.sdk.ide.doc.user/.classpath      |    6 ++++
 plugins/org.yocto.sdk.ide.doc.user/.project        |   28 ++++++++++++++++++++
 .../.settings/org.eclipse.jdt.core.prefs           |    8 +++++
 .../META-INF/MANIFEST.MF                           |    7 +++++
 .../OSGI-INF/l10n/bundle.properties                |    3 ++
 .../org.yocto.sdk.ide.doc.user/build.properties    |    4 +++
 plugins/org.yocto.sdk.ide.doc.user/plugin.xml      |    4 +++
 7 files changed, 60 insertions(+), 0 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/.classpath
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/.project
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/.settings/org.eclipse.jdt.core.prefs
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/OSGI-INF/l10n/bundle.properties
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/build.properties
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/plugin.xml

diff --git a/plugins/org.yocto.sdk.ide.doc.user/.classpath b/plugins/org.yocto.sdk.ide.doc.user/.classpath
new file mode 100644
index 0000000..bc74aab
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide.doc.user/.classpath
@@ -0,0 +1,6 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<classpath>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.6"/>
+	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
+	<classpathentry kind="output" path="bin"/>
+</classpath>
diff --git a/plugins/org.yocto.sdk.ide.doc.user/.project b/plugins/org.yocto.sdk.ide.doc.user/.project
new file mode 100644
index 0000000..ccc3e39
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide.doc.user/.project
@@ -0,0 +1,28 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<projectDescription>
+	<name>org.yocto.sdk.ide.doc.user</name>
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
diff --git a/plugins/org.yocto.sdk.ide.doc.user/.settings/org.eclipse.jdt.core.prefs b/plugins/org.yocto.sdk.ide.doc.user/.settings/org.eclipse.jdt.core.prefs
new file mode 100644
index 0000000..f90fa9c
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide.doc.user/.settings/org.eclipse.jdt.core.prefs
@@ -0,0 +1,8 @@
+#Fri Mar 04 13:59:33 CET 2011
+eclipse.preferences.version=1
+org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode=enabled
+org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.6
+org.eclipse.jdt.core.compiler.compliance=1.6
+org.eclipse.jdt.core.compiler.problem.assertIdentifier=error
+org.eclipse.jdt.core.compiler.problem.enumIdentifier=error
+org.eclipse.jdt.core.compiler.source=1.6
diff --git a/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF b/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
new file mode 100644
index 0000000..1c8ae05
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
@@ -0,0 +1,7 @@
+XFManifest-Version: 1.0
+Bundle-ManifestVersion: 2
+Bundle-Name: %Bundle-Name
+Bundle-SymbolicName: org.yocto.sdk.ide.doc.user;singleton:=true
+Bundle-Version: 1.2.0.qualifier
+Bundle-Vendor: %Bundle-Vendor
+Bundle-RequiredExecutionEnvironment: JavaSE-1.6
diff --git a/plugins/org.yocto.sdk.ide.doc.user/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.sdk.ide.doc.user/OSGI-INF/l10n/bundle.properties
new file mode 100644
index 0000000..99f8fce
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide.doc.user/OSGI-INF/l10n/bundle.properties
@@ -0,0 +1,3 @@
+#Properties file for org.yocto.sdk.ide.doc.user
+Bundle-Vendor = yoctoproject.org
+Bundle-Name = Yocto User Help
diff --git a/plugins/org.yocto.sdk.ide.doc.user/build.properties b/plugins/org.yocto.sdk.ide.doc.user/build.properties
new file mode 100644
index 0000000..31e0140
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide.doc.user/build.properties
@@ -0,0 +1,4 @@
+bin.includes = plugin.xml,\
+               .,\
+               META-INF/,\
+               OSGI-INF/
diff --git a/plugins/org.yocto.sdk.ide.doc.user/plugin.xml b/plugins/org.yocto.sdk.ide.doc.user/plugin.xml
new file mode 100644
index 0000000..f422d55
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide.doc.user/plugin.xml
@@ -0,0 +1,4 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<?eclipse version="3.4"?>
+<plugin>
+</plugin>
-- 
1.7.5.4


