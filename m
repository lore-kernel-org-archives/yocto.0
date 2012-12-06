Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7D91E0144E
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 07:48:40 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 2B8A940264;
	Thu,  6 Dec 2012 16:13:01 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu,  6 Dec 2012 16:48:35 +0100
Message-Id: <97a95f82f6fb74dccfbdbafb5542bef21b8f82d2.1354805521.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <e247a383ace4fcb7a2cb47f7a88abd06b23166ac.1354805521.git.timo.mueller@bmw-carit.de>
References: <cover.1354805521.git.timo.mueller@bmw-carit.de>
	<b7c6bd306781ef02179f4b82c46cfa4f73792c1f.1354805521.git.timo.mueller@bmw-carit.de>
	<bde760220ffcfa140bab6930f327977ecf085f22.1354805521.git.timo.mueller@bmw-carit.de>
	<e247a383ace4fcb7a2cb47f7a88abd06b23166ac.1354805521.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354805521.git.timo.mueller@bmw-carit.de>
References: <cover.1354805521.git.timo.mueller@bmw-carit.de>
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFCv3 4/7] plugins/sdk.ide.doc.user: Add yocto documentation to the table of contents
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
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Timo Mueller <timo.mueller@bmw-carit.de>

The separate yocto manuals are added to the table of contents to
prepare their inclusion into the plugin.
---
 plugins/org.yocto.sdk.ide.doc.user/plugin.xml |   24 ++++++++++++++++++++++++
 plugins/org.yocto.sdk.ide.doc.user/toc.xml    |   18 ++++++++++++++++++
 2 files changed, 42 insertions(+), 0 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide.doc.user/plugin.xml b/plugins/org.yocto.sdk.ide.doc.user/plugin.xml
index 59ae9d1..16ac67e 100644
--- a/plugins/org.yocto.sdk.ide.doc.user/plugin.xml
+++ b/plugins/org.yocto.sdk.ide.doc.user/plugin.xml
@@ -16,5 +16,29 @@
           file="toc.xml"
           primary="true">
     </toc>
+    <toc
+          file="html/adt-manual-toc.xml"
+          primary="false">
+    </toc>
+    <toc
+          file="html/yocto-project-qs-toc.xml"
+          primary="false">
+    </toc>
+    <toc
+          file="html/dev-manual-toc.xml"
+          primary="false">
+    </toc>
+    <toc
+          file="html/poky-ref-manual-toc.xml"
+          primary="false">
+    </toc>
+    <toc
+          file="html/bsp-guide-toc.xml"
+          primary="false">
+    </toc>
+    <toc
+          file="html/kernel-manual-toc.xml"
+          primary="false">
+    </toc>
  </extension>
 </plugin>
diff --git a/plugins/org.yocto.sdk.ide.doc.user/toc.xml b/plugins/org.yocto.sdk.ide.doc.user/toc.xml
index e110a54..b5ebc43 100644
--- a/plugins/org.yocto.sdk.ide.doc.user/toc.xml
+++ b/plugins/org.yocto.sdk.ide.doc.user/toc.xml
@@ -1,3 +1,21 @@
 <?xml version="1.0" encoding="UTF-8"?>
  <toc label="The Yocto Project Documentation">
+   <topic label="The Yocto Project Quick Start">
+      <link toc="html/yocto-project-qs-toc.xml"/>
+   </topic>
+   <topic label="The·Yocto·Project·Application·Developer&apos;s·Guide">
+      <link toc="html/adt-manual-toc.xml"/>
+   </topic>
+   <topic label="The Yocto Project Development Manual">
+      <link toc="html/dev-manual-toc.xml"/>
+   </topic>
+   <topic label="The Yocto Project Reference Manual">
+      <link toc="html/poky-ref-manual-toc.xml"/>
+   </topic>
+   <topic label="The Yocto Project Board Support Package Developer&apos;s Guide">
+      <link toc="html/bsp-guide-toc.xml"/>
+   </topic>
+   <topic label="The Yocto Project Kernel Architecture and Use Manual">
+      <link toc="html/kernel-manual-toc.xml"/>
+   </topic>
  </toc>
-- 
1.7.7.6


