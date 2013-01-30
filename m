Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32E78E01465
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 06:01:36 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 360164029F;
	Wed, 30 Jan 2013 14:21:49 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2013 15:01:30 +0100
Message-Id: <f32e349409af888deef5a4c52073827da64d41f9.1359476560.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <3fb57ad9e8ce5450d7b7a776c69c3671a8ae4775.1359476560.git.timo.mueller@bmw-carit.de>
References: <cover.1359476560.git.timo.mueller@bmw-carit.de>
	<d8ee0c11e8def36416453669cc11dcaf9a53d282.1359476560.git.timo.mueller@bmw-carit.de>
	<95c2be703c8568993b9ed156ac5c6f3f55f5f5ac.1359476560.git.timo.mueller@bmw-carit.de>
	<162236628ecd020d007df425c5e92d560154c856.1359476560.git.timo.mueller@bmw-carit.de>
	<401cffb10bb37b8c09cc619aa964195c7f86a53a.1359476560.git.timo.mueller@bmw-carit.de>
	<6b6e68cb4b9d938918456b1089a3218fb5d1306b.1359476560.git.timo.mueller@bmw-carit.de>
	<7cf27bee15d63bef3f80921b5d3cb7cad3ee0a3d.1359476560.git.timo.mueller@bmw-carit.de>
	<d8794536b470d26adb1215bca4bdc548ee0d24bc.1359476560.git.timo.mueller@bmw-carit.de>
	<e5e95b1a6e34bcbe11925e66a470d270a9b3bed1.1359476560.git.timo.mueller@bmw-carit.de>
	<3fb57ad9e8ce5450d7b7a776c69c3671a8ae4775.1359476560.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1359476560.git.timo.mueller@bmw-carit.de>
References: <cover.1359476560.git.timo.mueller@bmw-carit.de>
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v4 10/13] plugins/sdk.ide.doc.user: Add yocto documentation to the table of contents
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
X-List-Received-Date: Wed, 30 Jan 2013 14:01:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Timo Mueller <timo.mueller@bmw-carit.de>

The separate yocto manuals are added to the table of contents to
prepare their inclusion into the plugin.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 plugins/org.yocto.doc.user/plugin.xml | 24 ++++++++++++++++++++++++
 plugins/org.yocto.doc.user/toc.xml    | 18 ++++++++++++++++++
 2 files changed, 42 insertions(+)

diff --git a/plugins/org.yocto.doc.user/plugin.xml b/plugins/org.yocto.doc.user/plugin.xml
index 8353cd1..69fb625 100644
--- a/plugins/org.yocto.doc.user/plugin.xml
+++ b/plugins/org.yocto.doc.user/plugin.xml
@@ -7,5 +7,29 @@
 			file="toc.xml"
 			primary="true">
 		</toc>
+		<toc
+			file="html/adt-manual-toc.xml"
+			primary="false">
+		</toc>
+		<toc
+			file="html/yocto-project-qs-toc.xml"
+			primary="false">
+		</toc>
+		<toc
+			file="html/dev-manual-toc.xml"
+			primary="false">
+		</toc>
+		<toc
+			file="html/poky-ref-manual-toc.xml"
+			primary="false">
+		</toc>
+		<toc
+			file="html/bsp-guide-toc.xml"
+			primary="false">
+		</toc>
+		<toc
+			file="html/kernel-manual-toc.xml"
+			primary="false">
+		</toc>
 	</extension>
 </plugin>
diff --git a/plugins/org.yocto.doc.user/toc.xml b/plugins/org.yocto.doc.user/toc.xml
index 4998ef3..ea039f4 100644
--- a/plugins/org.yocto.doc.user/toc.xml
+++ b/plugins/org.yocto.doc.user/toc.xml
@@ -1,3 +1,21 @@
 <?xml version="1.0" encoding="UTF-8"?>
  <toc label="Yocto Project Documentation">
+   <topic label="Yocto Project Quick Start">
+      <link toc="html/yocto-project-qs-toc.xml"/>
+   </topic>
+   <topic label="Yocto·Project·Application·Developer&apos;s·Guide">
+      <link toc="html/adt-manual-toc.xml"/>
+   </topic>
+   <topic label="Yocto Project Development Manual">
+      <link toc="html/dev-manual-toc.xml"/>
+   </topic>
+   <topic label="Yocto Project Reference Manual">
+      <link toc="html/poky-ref-manual-toc.xml"/>
+   </topic>
+   <topic label="Yocto Project Board Support Package Developer&apos;s Guide">
+      <link toc="html/bsp-guide-toc.xml"/>
+   </topic>
+   <topic label="Yocto Project Kernel Architecture and Use Manual">
+      <link toc="html/kernel-manual-toc.xml"/>
+   </topic>
  </toc>
-- 
1.7.11.7


