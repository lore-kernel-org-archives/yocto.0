Return-Path: <timo@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4171CE002AA
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 06:03:05 -0700 (PDT)
X-No-Relay: not in my network
X-No-Relay: not in my network
Received: from localhost (mail.bmw-carit.de [62.245.222.98])
	by h1954115.stratoserver.net (Postfix) with ESMTPSA id 5F3E31D5607E;
	Wed, 18 Jul 2012 15:03:04 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Wed, 18 Jul 2012 15:02:53 +0200
Message-Id: <e4d6d3bb6e59ce31a6c70e99260c36a1ab6a578c.1342614895.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <8bbcd40cc56d25517ad2de1dbc3a9b1d5bfd61e9.1342614895.git.timo.mueller@bmw-carit.de>
References: <cover.1342614895.git.timo.mueller@bmw-carit.de>
	<8bbcd40cc56d25517ad2de1dbc3a9b1d5bfd61e9.1342614895.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1342614895.git.timo.mueller@bmw-carit.de>
References: <cover.1342614895.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 2/8] plugins/sdk.doc.user: Added empty table of contents
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
X-List-Received-Date: Wed, 18 Jul 2012 13:03:05 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

This is the preparation needed for adding documentation from the yocto
project later on.
---
 .../org.yocto.sdk.doc.user/META-INF/MANIFEST.MF    |    1 +
 plugins/org.yocto.sdk.doc.user/build.properties    |    2 ++
 plugins/org.yocto.sdk.doc.user/plugin.xml          |    7 +++++++
 plugins/org.yocto.sdk.doc.user/toc.xml             |    3 +++
 4 files changed, 13 insertions(+), 0 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.doc.user/toc.xml

diff --git a/plugins/org.yocto.sdk.doc.user/META-INF/MANIFEST.MF b/plugins/org.yocto.sdk.doc.user/META-INF/MANIFEST.MF
index 6bece6b..b28168f 100644
--- a/plugins/org.yocto.sdk.doc.user/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.doc.user/META-INF/MANIFEST.MF
@@ -5,3 +5,4 @@ Bundle-SymbolicName: org.yocto.sdk.doc.user;singleton:=true
 Bundle-Version: 1.2.0.qualifier
 Bundle-Vendor: %plugin.provider
 Bundle-RequiredExecutionEnvironment: JavaSE-1.6
+Require-Bundle: org.eclipse.help
diff --git a/plugins/org.yocto.sdk.doc.user/build.properties b/plugins/org.yocto.sdk.doc.user/build.properties
index 31e0140..cc18fce 100644
--- a/plugins/org.yocto.sdk.doc.user/build.properties
+++ b/plugins/org.yocto.sdk.doc.user/build.properties
@@ -1,4 +1,6 @@
 bin.includes = plugin.xml,\
                .,\
                META-INF/,\
+               toc.xml,\
                OSGI-INF/
+src.includes = toc.xml
diff --git a/plugins/org.yocto.sdk.doc.user/plugin.xml b/plugins/org.yocto.sdk.doc.user/plugin.xml
index f422d55..367962c 100644
--- a/plugins/org.yocto.sdk.doc.user/plugin.xml
+++ b/plugins/org.yocto.sdk.doc.user/plugin.xml
@@ -1,4 +1,11 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <?eclipse version="3.4"?>
 <plugin>
+ <extension
+       point="org.eclipse.help.toc">
+    <toc
+          file="toc.xml"
+          primary="true">
+    </toc>
+ </extension>
 </plugin>
diff --git a/plugins/org.yocto.sdk.doc.user/toc.xml b/plugins/org.yocto.sdk.doc.user/toc.xml
new file mode 100644
index 0000000..4d30d0d
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/toc.xml
@@ -0,0 +1,3 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<toc label="The Yocto Project Documentation">
+</toc>
-- 
1.7.7.6


