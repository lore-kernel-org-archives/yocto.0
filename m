Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1D17E01371
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 02:04:58 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id CD7DF400A2;
	Thu,  6 Sep 2012 10:35:55 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu,  6 Sep 2012 11:04:35 +0200
Message-Id: <bdbc5cf7f1e7b188ccabf9979b69b844f9735490.1346922110.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <9c31105cfa8f5bfe6f7ec025de1084e79221e88f.1346922110.git.timo.mueller@bmw-carit.de>
References: <cover.1346922110.git.timo.mueller@bmw-carit.de>
	<9c31105cfa8f5bfe6f7ec025de1084e79221e88f.1346922110.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1346922110.git.timo.mueller@bmw-carit.de>
References: <cover.1346922110.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 2/6] documentation/adt-manual/adt-manual-eclipse-customization.xsl: Added stylesheet for eclipse help
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
X-List-Received-Date: Thu, 06 Sep 2012 09:04:59 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

This stylesheet uses the eclipse stylesheets of docbook to create
eclipse help from this documentation. In addition to simple html
files these stylesheets will also create xml files which are
needed to integrate the documentation into eclipse (e.g. toc.xml).
---
 .../adt-manual-eclipse-customization.xsl           |   22 ++++++++++++++++++++
 1 files changed, 22 insertions(+), 0 deletions(-)
 create mode 100644 documentation/adt-manual/adt-manual-eclipse-customization.xsl

diff --git a/documentation/adt-manual/adt-manual-eclipse-customization.xsl b/documentation/adt-manual/adt-manual-eclipse-customization.xsl
new file mode 100644
index 0000000..7844738
--- /dev/null
+++ b/documentation/adt-manual/adt-manual-eclipse-customization.xsl
@@ -0,0 +1,22 @@
+<?xml version='1.0'?>
+<xsl:stylesheet
+	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
+	xmlns="http://www.w3.org/1999/xhtml"
+	xmlns:fo="http://www.w3.org/1999/XSL/Format"
+	version="1.0">
+
+  <xsl:import
+	  href="http://docbook.sourceforge.net/release/xsl/current/eclipse/eclipse3.xsl" />
+
+  <xsl:param name="chunker.output.indent" select="'yes'"/>
+  <xsl:param name="base.dir" select="'html/adt-manual/'"/>
+  <xsl:param name="html.stylesheet" select="'../book.css'"/>
+  <xsl:param name="eclipse.manifest" select="0"/>
+  <xsl:param name="create.plugin.xml" select="0"/>
+  <xsl:param name="suppress.navigation" select="1"/>
+  <xsl:param name="generate.index" select="0"/>
+  <xsl:param name="chapter.autolabel" select="1" />
+  <xsl:param name="appendix.autolabel" select="1" />
+  <xsl:param name="section.autolabel" select="1" />
+  <xsl:param name="section.label.includes.component.label" select="1" />
+</xsl:stylesheet>
-- 
1.7.7.6


