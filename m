Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 652E1E0144C
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 07:44:17 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id F0496400A1;
	Fri, 21 Sep 2012 16:14:19 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2012 16:44:05 +0200
Message-Id: <e54e964c8a543085f2dda9c9efb1a85dbfccbe36.1348237278.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <a0c94f0bfa5700e9382e1e428882072194cf0f8b.1348237278.git.timo.mueller@bmw-carit.de>
References: <cover.1348237278.git.timo.mueller@bmw-carit.de>
	<a0c94f0bfa5700e9382e1e428882072194cf0f8b.1348237278.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348237278.git.timo.mueller@bmw-carit.de>
References: <cover.1348237278.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFCv2 02/12] plugins/sdk.doc.user: Added empty table of contents
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


