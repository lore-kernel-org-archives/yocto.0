Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B14C5E0127A
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 02:54:42 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id C5F79400BF;
	Wed, 10 Oct 2012 11:23:17 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Wed, 10 Oct 2012 11:53:56 +0200
Message-Id: <8741c48acce523dc2403fddad90e253542970689.1349444489.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <590057989cc2c7239f170407ecc57677d89f8427.1349444489.git.timo.mueller@bmw-carit.de>
References: <cover.1349444489.git.timo.mueller@bmw-carit.de>
	<8f13498e19681bb4922e3094fb165b4cf93d87e1.1349444489.git.timo.mueller@bmw-carit.de>
	<590057989cc2c7239f170407ecc57677d89f8427.1349444489.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1349444489.git.timo.mueller@bmw-carit.de>
References: <cover.1349444489.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 03/35] documentation/adt-manual/adt-manual-eclipse-customization.xsl: new file
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
X-List-Received-Date: Wed, 10 Oct 2012 09:54:43 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

This stylesheet uses the eclipse stylesheets of docbook to create
eclipse help from this documentation. In addition to simple html
files these stylesheets will also create xml files which are
needed to integrate the documentation into eclipse (e.g. toc.xml).

Additional parameters are required so resolve links between different
documentation parts inside eclipse.
---
 .../adt-manual-eclipse-customization.xsl           |   26 ++++++++++++++++++++
 1 files changed, 26 insertions(+), 0 deletions(-)
 create mode 100644 documentation/adt-manual/adt-manual-eclipse-customization.xsl

diff --git a/documentation/adt-manual/adt-manual-eclipse-customization.xsl b/documentation/adt-manual/adt-manual-eclipse-customization.xsl
new file mode 100644
index 0000000..ff1464e
--- /dev/null
+++ b/documentation/adt-manual/adt-manual-eclipse-customization.xsl
@@ -0,0 +1,26 @@
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
+  <xsl:param name="chunk.first.sections" select="1"/>
+  <xsl:param name="chunk.section.depth" select="10"/>
+  <xsl:param name="use.id.as.filename" select="1"/>
+  <xsl:param name="ulink.target" select="'_self'" />
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


