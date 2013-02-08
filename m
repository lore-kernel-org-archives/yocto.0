Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 1F140E0146F
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:24:47 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 7CC17402B3;
	Fri,  8 Feb 2013 13:44:18 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:24:40 +0100
Message-Id: <ff35d573a922d6da65722546453f598a8c119103.1360320932.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <3d62d994c01a6fbdc3baf0ee2de7e89c1ddbaaf7.1360320932.git.timo.mueller@bmw-carit.de>
References: <cover.1360320932.git.timo.mueller@bmw-carit.de>
	<a6e4255f26d3e1023c2f1b5cefab155606051238.1360320932.git.timo.mueller@bmw-carit.de>
	<5ea21b7fbee999dedbd9e17f8e1f7202fa526204.1360320932.git.timo.mueller@bmw-carit.de>
	<a425e9190c797e43c4d00ffdfdc6734fe68a0437.1360320932.git.timo.mueller@bmw-carit.de>
	<68de3739abb8de52bbc3e42769b14a745a47f7f4.1360320932.git.timo.mueller@bmw-carit.de>
	<8475114cd09e7b7ba916975b61f95183de105e4d.1360320932.git.timo.mueller@bmw-carit.de>
	<305fd42ed6500d248ef6a0662e68fbad6f7b2fe4.1360320932.git.timo.mueller@bmw-carit.de>
	<56fd294cb47b29fcea6f3006b9dcd360866d7d68.1360320932.git.timo.mueller@bmw-carit.de>
	<16b4f90332e22cf61937a70a8469f78a58d1790b.1360320932.git.timo.mueller@bmw-carit.de>
	<3d62d994c01a6fbdc3baf0ee2de7e89c1ddbaaf7.1360320932.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360320932.git.timo.mueller@bmw-carit.de>
References: <cover.1360320932.git.timo.mueller@bmw-carit.de>
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v5 10/12] plugins/sdk.ide.doc.user: Add yocto documentation to the table of contents
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
X-List-Received-Date: Fri, 08 Feb 2013 13:24:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Timo Mueller <timo.mueller@bmw-carit.de>

The separate yocto manuals are added to the table of contents to
prepare their inclusion into the plugin.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 plugins/org.yocto.doc.user/plugin.xml | 28 ++++++++++++++++++++++++++++
 plugins/org.yocto.doc.user/toc.xml    | 21 +++++++++++++++++++++
 2 files changed, 49 insertions(+)

diff --git a/plugins/org.yocto.doc.user/plugin.xml b/plugins/org.yocto.doc.user/plugin.xml
index 8353cd1..8e87ce7 100644
--- a/plugins/org.yocto.doc.user/plugin.xml
+++ b/plugins/org.yocto.doc.user/plugin.xml
@@ -7,5 +7,33 @@
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
+			file="html/ref-manual-toc.xml"
+			primary="false">
+		</toc>
+		<toc
+			file="html/bsp-guide-toc.xml"
+			primary="false">
+		</toc>
+		<toc
+			file="html/kernel-dev-toc.xml"
+			primary="false">
+		</toc>
+  <toc
+        file="html/profile-manual-toc.xml"
+        primary="false">
+  </toc>
 	</extension>
 </plugin>
diff --git a/plugins/org.yocto.doc.user/toc.xml b/plugins/org.yocto.doc.user/toc.xml
index 4998ef3..86fbe29 100644
--- a/plugins/org.yocto.doc.user/toc.xml
+++ b/plugins/org.yocto.doc.user/toc.xml
@@ -1,3 +1,24 @@
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
+      <link toc="html/ref-manual-toc.xml"/>
+   </topic>
+   <topic label="Yocto Project Board Support Package Developer&apos;s Guide">
+      <link toc="html/bsp-guide-toc.xml"/>
+   </topic>
+   <topic label="Yocto Project Linux Kernel Development Manual">
+      <link toc="html/kernel-dev-toc.xml"/>
+   </topic>
+   <topic label="Yocto Project Tracing and Profiling Manual">
+      <link toc="html/profile-manual-toc.xml"/>
+   </topic>
  </toc>
-- 
1.7.11.7


