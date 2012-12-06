Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C540BE01449
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 07:48:40 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id C7D16400E0;
	Thu,  6 Dec 2012 16:13:00 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu,  6 Dec 2012 16:48:32 +0100
Message-Id: <b7c6bd306781ef02179f4b82c46cfa4f73792c1f.1354805521.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1354805521.git.timo.mueller@bmw-carit.de>
References: <cover.1354805521.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354805521.git.timo.mueller@bmw-carit.de>
References: <cover.1354805521.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFCv3 1/7] plugins/sdk.ide.doc.user: Add empty eclipse help
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
X-List-Received-Date: Thu, 06 Dec 2012 15:48:41 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Adds yocto specific eclipse help to the plugin. The help is currently
empty but will contain the official yocto documentation later.
---
 .../META-INF/MANIFEST.MF                           |    3 ++-
 .../org.yocto.sdk.ide.doc.user/build.properties    |    7 +++++--
 plugins/org.yocto.sdk.ide.doc.user/html/book.css   |    1 +
 plugins/org.yocto.sdk.ide.doc.user/plugin.xml      |    7 +++++++
 plugins/org.yocto.sdk.ide.doc.user/toc.xml         |    3 +++
 5 files changed, 18 insertions(+), 3 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/html/book.css
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/toc.xml

diff --git a/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF b/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
index 87079ce..a93601e 100644
--- a/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
@@ -5,4 +5,5 @@ Bundle-SymbolicName: org.yocto.sdk.ide.doc.user;singleton:=true
 Bundle-Version: 1.2.0.qualifier
 Bundle-Vendor: %Bundle-Vendor
 Bundle-RequiredExecutionEnvironment: JavaSE-1.6
-Require-Bundle: org.eclipse.ui.cheatsheets
+Require-Bundle: org.eclipse.ui.cheatsheets,
+ org.eclipse.help
diff --git a/plugins/org.yocto.sdk.ide.doc.user/build.properties b/plugins/org.yocto.sdk.ide.doc.user/build.properties
index caf850b..6d00e58 100644
--- a/plugins/org.yocto.sdk.ide.doc.user/build.properties
+++ b/plugins/org.yocto.sdk.ide.doc.user/build.properties
@@ -2,5 +2,8 @@ bin.includes = plugin.xml,\
                .,\
                META-INF/,\
                OSGI-INF/,\
-               cheatsheets/
-src.includes = cheatsheets/
+               cheatsheets/,\
+               html/,\
+               toc.xml
+src.includes = cheatsheets/,\
+               html/
diff --git a/plugins/org.yocto.sdk.ide.doc.user/html/book.css b/plugins/org.yocto.sdk.ide.doc.user/html/book.css
new file mode 100644
index 0000000..e248f5a
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide.doc.user/html/book.css
@@ -0,0 +1 @@
+@import "PLUGINS_ROOT/PRODUCT_PLUGIN/book.css";
diff --git a/plugins/org.yocto.sdk.ide.doc.user/plugin.xml b/plugins/org.yocto.sdk.ide.doc.user/plugin.xml
index 24c539d..59ae9d1 100644
--- a/plugins/org.yocto.sdk.ide.doc.user/plugin.xml
+++ b/plugins/org.yocto.sdk.ide.doc.user/plugin.xml
@@ -10,4 +10,11 @@
 			name="%cheatsheet.name">
 		</cheatsheet>
 	</extension>
+ <extension
+       point="org.eclipse.help.toc">
+    <toc
+          file="toc.xml"
+          primary="true">
+    </toc>
+ </extension>
 </plugin>
diff --git a/plugins/org.yocto.sdk.ide.doc.user/toc.xml b/plugins/org.yocto.sdk.ide.doc.user/toc.xml
new file mode 100644
index 0000000..e110a54
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide.doc.user/toc.xml
@@ -0,0 +1,3 @@
+<?xml version="1.0" encoding="UTF-8"?>
+ <toc label="The Yocto Project Documentation">
+ </toc>
-- 
1.7.7.6


