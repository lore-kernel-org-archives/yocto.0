Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 6C0EAE0070F
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:21:41 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id E5B45402D6;
	Fri,  8 Feb 2013 13:41:11 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:21:29 +0100
Message-Id: <140697404f61a10cc15693c495a3bfc85c2ec8d1.1360314086.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <9ba91b0024293037cbfef60a8033c9d4fe6c26b3.1360314086.git.timo.mueller@bmw-carit.de>
References: <cover.1360314086.git.timo.mueller@bmw-carit.de>
	<7393f8a857c5434755f958d7c558debc904634a5.1360314086.git.timo.mueller@bmw-carit.de>
	<184ca006bc27634a3b6ae74e7c1cd8e6d8b420f2.1360314086.git.timo.mueller@bmw-carit.de>
	<abcbb4bad59de14a85decfce6537f580d795a5b8.1360314086.git.timo.mueller@bmw-carit.de>
	<bb79645732f611720419085288300b2ac9a84cad.1360314086.git.timo.mueller@bmw-carit.de>
	<5971456014229e0f6109f94430f880d7007c4453.1360314086.git.timo.mueller@bmw-carit.de>
	<8d2c3ddcb314975fe59a77151af6c84efa3d853b.1360314086.git.timo.mueller@bmw-carit.de>
	<ec013a8269ebe6fcc892fddd1dfc0359e55b41e5.1360314086.git.timo.mueller@bmw-carit.de>
	<51b874b4d123e14d1fb3f20878e05fb94cc52a6f.1360314086.git.timo.mueller@bmw-carit.de>
	<aa09177857ef0ff59305293c39046cbd2e748cf0.1360314086.git.timo.mueller@bmw-carit.de>
	<cd58e0a25a3385594fbf5b6a578ebaf07dcfba8d.1360314086.git.timo.mueller@bmw-carit.de>
	<9ba91b0024293037cbfef60a8033c9d4fe6c26b3.1360314086.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360314086.git.timo.mueller@bmw-carit.de>
References: <cover.1360314086.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 12/18] kernel-dev: Added new customization file for eclipse help generation
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
X-List-Received-Date: Fri, 08 Feb 2013 13:21:41 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

This stylesheet uses the eclipse stylesheets of docbook to create
eclipse help from this documentation. In addition to simple html
files these stylesheets will also create xml files which are
needed to integrate the documentation into eclipse (e.g. toc.xml).

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../kernel-dev-eclipse-customization.xsl           | 27 ++++++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 documentation/kernel-dev/kernel-dev-eclipse-customization.xsl

diff --git a/documentation/kernel-dev/kernel-dev-eclipse-customization.xsl b/documentation/kernel-dev/kernel-dev-eclipse-customization.xsl
new file mode 100644
index 0000000..7d1bb8d
--- /dev/null
+++ b/documentation/kernel-dev/kernel-dev-eclipse-customization.xsl
@@ -0,0 +1,27 @@
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
+  <xsl:param name="chunk.quietly" select="1"/>
+  <xsl:param name="chunk.first.sections" select="1"/>
+  <xsl:param name="chunk.section.depth" select="10"/>
+  <xsl:param name="use.id.as.filename" select="1"/>
+  <xsl:param name="ulink.target" select="'_self'" />
+  <xsl:param name="base.dir" select="'html/kernel-dev/'"/>
+  <xsl:param name="html.stylesheet" select="'../book.css'"/>
+  <xsl:param name="eclipse.manifest" select="0"/>
+  <xsl:param name="create.plugin.xml" select="0"/>
+  <xsl:param name="suppress.navigation" select="1"/>
+  <xsl:param name="generate.index" select="0"/>
+  <xsl:param name="chapter.autolabel" select="1" />
+  <xsl:param name="appendix.autolabel">A</xsl:param>
+  <xsl:param name="section.autolabel" select="1" />
+  <xsl:param name="section.label.includes.component.label" select="1" />
+</xsl:stylesheet>
-- 
1.7.11.7


