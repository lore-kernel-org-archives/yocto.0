Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5F64E01449
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 01:19:58 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id C870B4018C;
	Thu,  6 Dec 2012 09:44:17 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu,  6 Dec 2012 10:19:53 +0100
Message-Id: <81208c7ceff78d3a81eb48b21a30ebb9158262c9.1354783770.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <5dee34b6c71047e0660b3caadf9f9b47b3cf82bc.1354783770.git.timo.mueller@bmw-carit.de>
References: <cover.1354783770.git.timo.mueller@bmw-carit.de>
	<8181ddd630f6e73119875240a410dcb0345ce1f7.1354783770.git.timo.mueller@bmw-carit.de>
	<5dee34b6c71047e0660b3caadf9f9b47b3cf82bc.1354783770.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354783770.git.timo.mueller@bmw-carit.de>
References: <cover.1354783770.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 3/3] documentation: Add chunk.quietly option to eclipse processing
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
X-List-Received-Date: Thu, 06 Dec 2012 09:19:59 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The chunk.quietly option disables the output of the docbook
chunker. Creation of a new html file is now longer printed to the
console. This provides a much cleaner output of the eclipse makefile
target.
---
 .../adt-manual-eclipse-customization.xsl           |    1 +
 .../bsp-guide/bsp-guide-eclipse-customization.xsl  |    1 +
 .../dev-manual-eclipse-customization.xsl           |    1 +
 .../kernel-manual-eclipse-customization.xsl        |    1 +
 .../poky-ref-manual-eclipse-customization.xsl      |    1 +
 .../yocto-project-qs-eclipse-customization.xsl     |    1 +
 6 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/documentation/adt-manual/adt-manual-eclipse-customization.xsl b/documentation/adt-manual/adt-manual-eclipse-customization.xsl
index ff1464e..d16ffbb 100644
--- a/documentation/adt-manual/adt-manual-eclipse-customization.xsl
+++ b/documentation/adt-manual/adt-manual-eclipse-customization.xsl
@@ -9,6 +9,7 @@
 	  href="http://docbook.sourceforge.net/release/xsl/current/eclipse/eclipse3.xsl" />
 
   <xsl:param name="chunker.output.indent" select="'yes'"/>
+  <xsl:param name="chunk.quietly" select="1"/>
   <xsl:param name="chunk.first.sections" select="1"/>
   <xsl:param name="chunk.section.depth" select="10"/>
   <xsl:param name="use.id.as.filename" select="1"/>
diff --git a/documentation/bsp-guide/bsp-guide-eclipse-customization.xsl b/documentation/bsp-guide/bsp-guide-eclipse-customization.xsl
index b9aceb2..1c80bee 100644
--- a/documentation/bsp-guide/bsp-guide-eclipse-customization.xsl
+++ b/documentation/bsp-guide/bsp-guide-eclipse-customization.xsl
@@ -9,6 +9,7 @@
 	  href="http://docbook.sourceforge.net/release/xsl/current/eclipse/eclipse3.xsl" />
 
   <xsl:param name="chunker.output.indent" select="'yes'"/>
+  <xsl:param name="chunk.quietly" select="1"/>
   <xsl:param name="chunk.first.sections" select="1"/>
   <xsl:param name="chunk.section.depth" select="10"/>
   <xsl:param name="use.id.as.filename" select="1"/>
diff --git a/documentation/dev-manual/dev-manual-eclipse-customization.xsl b/documentation/dev-manual/dev-manual-eclipse-customization.xsl
index ff1de89..8ac4c18 100644
--- a/documentation/dev-manual/dev-manual-eclipse-customization.xsl
+++ b/documentation/dev-manual/dev-manual-eclipse-customization.xsl
@@ -9,6 +9,7 @@
 	  href="http://docbook.sourceforge.net/release/xsl/current/eclipse/eclipse3.xsl" />
 
   <xsl:param name="chunker.output.indent" select="'yes'"/>
+  <xsl:param name="chunk.quietly" select="1"/>
   <xsl:param name="chunk.first.sections" select="1"/>
   <xsl:param name="chunk.section.depth" select="10"/>
   <xsl:param name="use.id.as.filename" select="1"/>
diff --git a/documentation/kernel-manual/kernel-manual-eclipse-customization.xsl b/documentation/kernel-manual/kernel-manual-eclipse-customization.xsl
index 70a1e19..7992173 100644
--- a/documentation/kernel-manual/kernel-manual-eclipse-customization.xsl
+++ b/documentation/kernel-manual/kernel-manual-eclipse-customization.xsl
@@ -9,6 +9,7 @@
 	  href="http://docbook.sourceforge.net/release/xsl/current/eclipse/eclipse3.xsl" />
 
   <xsl:param name="chunker.output.indent" select="'yes'"/>
+  <xsl:param name="chunk.quietly" select="1"/>
   <xsl:param name="chunk.first.sections" select="1"/>
   <xsl:param name="chunk.section.depth" select="10"/>
   <xsl:param name="use.id.as.filename" select="1"/>
diff --git a/documentation/poky-ref-manual/poky-ref-manual-eclipse-customization.xsl b/documentation/poky-ref-manual/poky-ref-manual-eclipse-customization.xsl
index 4e31193..3412208 100644
--- a/documentation/poky-ref-manual/poky-ref-manual-eclipse-customization.xsl
+++ b/documentation/poky-ref-manual/poky-ref-manual-eclipse-customization.xsl
@@ -9,6 +9,7 @@
 	  href="http://docbook.sourceforge.net/release/xsl/current/eclipse/eclipse3.xsl" />
 
   <xsl:param name="chunker.output.indent" select="'yes'"/>
+  <xsl:param name="chunk.quietly" select="1"/>
   <xsl:param name="chunk.first.sections" select="1"/>
   <xsl:param name="chunk.section.depth" select="10"/>
   <xsl:param name="use.id.as.filename" select="1"/>
diff --git a/documentation/yocto-project-qs/yocto-project-qs-eclipse-customization.xsl b/documentation/yocto-project-qs/yocto-project-qs-eclipse-customization.xsl
index 468508b..f8f8930 100644
--- a/documentation/yocto-project-qs/yocto-project-qs-eclipse-customization.xsl
+++ b/documentation/yocto-project-qs/yocto-project-qs-eclipse-customization.xsl
@@ -10,6 +10,7 @@
   <xsl:import href="yocto-project-qs-titlepage.xsl"/>
 
   <xsl:param name="chunker.output.indent" select="'yes'"/>
+  <xsl:param name="chunk.quietly" select="1"/>
   <xsl:param name="use.id.as.filename" select="1"/>
   <xsl:param name="ulink.target" select="'_self'" />
   <xsl:param name="base.dir" select="'html/yocto-project-qs/'"/>
-- 
1.7.7.6


