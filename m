Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CD32E0134A
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 02:54:44 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id CA4DB4049D;
	Wed, 10 Oct 2012 11:23:20 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Wed, 10 Oct 2012 11:54:21 +0200
Message-Id: <d3134050f49bc4fe2d665891f7cab2a15b4f484f.1349444489.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <24053bac29a28c6774f6f5856fef42dd8e6a369f.1349444489.git.timo.mueller@bmw-carit.de>
References: <cover.1349444489.git.timo.mueller@bmw-carit.de>
	<8f13498e19681bb4922e3094fb165b4cf93d87e1.1349444489.git.timo.mueller@bmw-carit.de>
	<590057989cc2c7239f170407ecc57677d89f8427.1349444489.git.timo.mueller@bmw-carit.de>
	<8741c48acce523dc2403fddad90e253542970689.1349444489.git.timo.mueller@bmw-carit.de>
	<6df121f8751652c6872e72d6ef0c6973c11cffcb.1349444489.git.timo.mueller@bmw-carit.de>
	<5e1b21dd499bf7458e62beedc89a3e0e65c8d67c.1349444489.git.timo.mueller@bmw-carit.de>
	<e8162ea92a9cdac2478992e9d72e40cb35ff31fe.1349444489.git.timo.mueller@bmw-carit.de>
	<89991b32b195b9abc0d03302f563dbb995d0fa73.1349444489.git.timo.mueller@bmw-carit.de>
	<f2d1283260c98c90bc9d9069b215f89d5208506d.1349444489.git.timo.mueller@bmw-carit.de>
	<5522560475d0569a160dd86405b54bf8b46e65fc.1349444489.git.timo.mueller@bmw-carit.de>
	<f2b3916d97d7de730b9e88d45e8b921dcbb4f038.1349444489.git.timo.mueller@bmw-carit.de>
	<b1c9e8e275abb7e4740e3bfa9811422af808c00e.1349444489.git.timo.mueller@bmw-carit.de>
	<5fad608ef3f11cba3a7bc3ee0da3294ad7eeaf85.1349444489.git.timo.mueller@bmw-carit.de>
	<42a2e8839164b9f17ce2846e21125cabe6f0896b.1349444489.git.timo.mueller@bmw-carit.de>
	<f14c54079076b48ae05494161c45d82f53facc88.1349444489.git.timo.mueller@bmw-carit.de>
	<3be0d3b2813a6c786d67e8a1a04d159c892d3a30.1349444489.git.timo.mueller@bmw-carit.de>
	<2c7bf9dd12ea207e71031b7d41bf1cc47ad8ccd6.1349444489.git.timo.mueller@bmw-carit.de>
	<1071daedb70a3f451c37eb0038ab5cc9fa90c12a.1349444489.git.timo.mueller@bmw-carit.de>
	<a200d390a430a902046badff1c96697404384c51.1349444489.git.timo.mueller@bmw-carit.de>
	<2e807b75265e7d2895d1d8a4fc9facaf163297ea.1349444489.git.timo.mueller@bmw-carit.de>
	<1f19b8ff550ec6678587af36fbe27af99ea5b186.1349444489.git.timo.mueller@bmw-carit.de>
	<c5ba11c1e9b04b04be4ae1856c7e2e8cedb357d2.1349444489.git.timo.mueller@bmw-carit.de>
	<695af81ff1e9d882533ac6918b136a9d316abf69.1349444489.git.timo.mueller@bmw-carit.de>
	<24ba3060c9581d4f3a32535319e5cde061332826.1349444489.git.timo.mueller@bmw-carit.de>
	<ca4eedcded6f2a5ef36fb677cbe41f6935f9c517.1349444489.git.timo.mueller@bmw-carit.de>
	<361f4f5a3d7ee68fa20dceab69c053abc0fc8a0c.1349444489.git.timo.mueller@bmw-carit.de>
	<222e8c37a31b0ea405774a255b0bd2e4117e34b9.1349444489.git.timo.mueller@bmw-carit.de>
	<24053bac29a28c6774f6f5856fef42dd8e6a369f.1349444489.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1349444489.git.timo.mueller@bmw-carit.de>
References: <cover.1349444489.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 28/35] documentation/yocto-project-qs: Added custom title page
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
X-List-Received-Date: Wed, 10 Oct 2012 09:54:45 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The quick start guide is currently not using a title information to
set the title of the document (e.g. article.title or
article.articleinfo.title).
As other output formats may use the title information to create
metadata this information has to be added to the document. To preserve
current style of the document a custom title page has to be used. With
this for instance 'article.title' can be used instead of the
fake-title section currently used, leaving the style intact.
---
 .../yocto-project-qs-customization.xsl             |    1 +
 .../yocto-project-qs-titlepage.xsl                 | 3820 ++++++++++++++++++++
 2 files changed, 3821 insertions(+), 0 deletions(-)
 create mode 100644 documentation/yocto-project-qs/yocto-project-qs-titlepage.xsl

diff --git a/documentation/yocto-project-qs/yocto-project-qs-customization.xsl b/documentation/yocto-project-qs/yocto-project-qs-customization.xsl
index 904289a..bd53ecb 100644
--- a/documentation/yocto-project-qs/yocto-project-qs-customization.xsl
+++ b/documentation/yocto-project-qs/yocto-project-qs-customization.xsl
@@ -2,6 +2,7 @@
 <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
   
   <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/xhtml/docbook.xsl" />
+  <xsl:import href="yocto-project-qs-titlepage.xsl"/>
 
   <xsl:param name="generate.toc" select="'article nop'"></xsl:param>
   <xsl:param name="html.stylesheet" select="'qs-style.css'" />
diff --git a/documentation/yocto-project-qs/yocto-project-qs-titlepage.xsl b/documentation/yocto-project-qs/yocto-project-qs-titlepage.xsl
new file mode 100644
index 0000000..a435ac7
--- /dev/null
+++ b/documentation/yocto-project-qs/yocto-project-qs-titlepage.xsl
@@ -0,0 +1,3820 @@
+<?xml version="1.0"?>
+
+<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:exsl="http://exslt.org/common" version="1.0" exclude-result-prefixes="exsl">
+
+<!-- This stylesheet was created by template/titlepage.xsl-->
+
+<xsl:template name="article.titlepage.recto">
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/abstract"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/abstract"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="info/abstract"/>
+  <xsl:choose>
+    <xsl:when test="articleinfo/title">
+      <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/title"/>
+    </xsl:when>
+    <xsl:when test="artheader/title">
+      <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/title"/>
+    </xsl:when>
+    <xsl:when test="info/title">
+      <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="info/title"/>
+    </xsl:when>
+    <xsl:when test="title">
+      <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="title"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:choose>
+    <xsl:when test="articleinfo/subtitle">
+      <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="artheader/subtitle">
+      <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/corpauthor"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/corpauthor"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="info/corpauthor"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/authorgroup"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/authorgroup"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="info/authorgroup"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/author"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/author"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="info/author"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/othercredit"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/othercredit"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="info/othercredit"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/releaseinfo"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/releaseinfo"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="info/releaseinfo"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/copyright"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/copyright"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="info/copyright"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/legalnotice"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/legalnotice"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="info/legalnotice"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/pubdate"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/pubdate"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="info/pubdate"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/revision"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/revision"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="info/revision"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/revhistory"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/revhistory"/>
+  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="info/revhistory"/>
+</xsl:template>
+
+<xsl:template name="article.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="article.titlepage.separator"><hr/>
+</xsl:template>
+
+<xsl:template name="article.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="article.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="article.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="article.titlepage.before.recto"/>
+      <xsl:call-template name="article.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="article.titlepage.before.verso"/>
+      <xsl:call-template name="article.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="article.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="article.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="article.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="abstract" mode="article.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="article.titlepage.recto.style">
+  <xsl:call-template name="anchor"/>
+  <xsl:apply-templates/>
+<!-- orignally generated content -->
+<!-- <xsl:apply-templates select="." mode="article.titlepage.recto.mode"/> -->
+</div>
+</xsl:template>
+
+<xsl:template match="title" mode="article.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="article.titlepage.recto.style">
+<xsl:apply-templates select="." mode="article.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="article.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="article.titlepage.recto.style">
+<xsl:apply-templates select="." mode="article.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="corpauthor" mode="article.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="article.titlepage.recto.style">
+<xsl:apply-templates select="." mode="article.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="authorgroup" mode="article.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="article.titlepage.recto.style">
+<xsl:apply-templates select="." mode="article.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="author" mode="article.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="article.titlepage.recto.style">
+<xsl:apply-templates select="." mode="article.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="othercredit" mode="article.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="article.titlepage.recto.style">
+<xsl:apply-templates select="." mode="article.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="releaseinfo" mode="article.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="article.titlepage.recto.style">
+<xsl:apply-templates select="." mode="article.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="copyright" mode="article.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="article.titlepage.recto.style">
+<xsl:apply-templates select="." mode="article.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="legalnotice" mode="article.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="article.titlepage.recto.style">
+<xsl:apply-templates select="." mode="article.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="pubdate" mode="article.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="article.titlepage.recto.style">
+<xsl:apply-templates select="." mode="article.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revision" mode="article.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="article.titlepage.recto.style">
+<xsl:apply-templates select="." mode="article.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revhistory" mode="article.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="article.titlepage.recto.style">
+<xsl:apply-templates select="." mode="article.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="set.titlepage.recto">
+  <xsl:choose>
+    <xsl:when test="setinfo/title">
+      <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="setinfo/title"/>
+    </xsl:when>
+    <xsl:when test="info/title">
+      <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="info/title"/>
+    </xsl:when>
+    <xsl:when test="title">
+      <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="title"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:choose>
+    <xsl:when test="setinfo/subtitle">
+      <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="setinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="setinfo/corpauthor"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="info/corpauthor"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="setinfo/authorgroup"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="info/authorgroup"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="setinfo/author"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="info/author"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="setinfo/othercredit"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="info/othercredit"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="setinfo/releaseinfo"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="info/releaseinfo"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="setinfo/copyright"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="info/copyright"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="setinfo/legalnotice"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="info/legalnotice"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="setinfo/pubdate"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="info/pubdate"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="setinfo/revision"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="info/revision"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="setinfo/revhistory"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="info/revhistory"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="setinfo/abstract"/>
+  <xsl:apply-templates mode="set.titlepage.recto.auto.mode" select="info/abstract"/>
+</xsl:template>
+
+<xsl:template name="set.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="set.titlepage.separator"><hr/>
+</xsl:template>
+
+<xsl:template name="set.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="set.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="set.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="set.titlepage.before.recto"/>
+      <xsl:call-template name="set.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="set.titlepage.before.verso"/>
+      <xsl:call-template name="set.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="set.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="set.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="set.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="title" mode="set.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="set.titlepage.recto.style">
+<xsl:apply-templates select="." mode="set.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="set.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="set.titlepage.recto.style">
+<xsl:apply-templates select="." mode="set.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="corpauthor" mode="set.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="set.titlepage.recto.style">
+<xsl:apply-templates select="." mode="set.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="authorgroup" mode="set.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="set.titlepage.recto.style">
+<xsl:apply-templates select="." mode="set.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="author" mode="set.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="set.titlepage.recto.style">
+<xsl:apply-templates select="." mode="set.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="othercredit" mode="set.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="set.titlepage.recto.style">
+<xsl:apply-templates select="." mode="set.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="releaseinfo" mode="set.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="set.titlepage.recto.style">
+<xsl:apply-templates select="." mode="set.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="copyright" mode="set.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="set.titlepage.recto.style">
+<xsl:apply-templates select="." mode="set.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="legalnotice" mode="set.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="set.titlepage.recto.style">
+<xsl:apply-templates select="." mode="set.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="pubdate" mode="set.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="set.titlepage.recto.style">
+<xsl:apply-templates select="." mode="set.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revision" mode="set.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="set.titlepage.recto.style">
+<xsl:apply-templates select="." mode="set.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revhistory" mode="set.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="set.titlepage.recto.style">
+<xsl:apply-templates select="." mode="set.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="abstract" mode="set.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="set.titlepage.recto.style">
+<xsl:apply-templates select="." mode="set.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="book.titlepage.recto">
+  <xsl:choose>
+    <xsl:when test="bookinfo/title">
+      <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="bookinfo/title"/>
+    </xsl:when>
+    <xsl:when test="info/title">
+      <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="info/title"/>
+    </xsl:when>
+    <xsl:when test="title">
+      <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="title"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:choose>
+    <xsl:when test="bookinfo/subtitle">
+      <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="bookinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="bookinfo/corpauthor"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="info/corpauthor"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="bookinfo/authorgroup"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="info/authorgroup"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="bookinfo/author"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="info/author"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="bookinfo/othercredit"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="info/othercredit"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="bookinfo/releaseinfo"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="info/releaseinfo"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="bookinfo/copyright"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="info/copyright"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="bookinfo/legalnotice"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="info/legalnotice"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="bookinfo/pubdate"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="info/pubdate"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="bookinfo/revision"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="info/revision"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="bookinfo/revhistory"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="info/revhistory"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="bookinfo/abstract"/>
+  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="info/abstract"/>
+</xsl:template>
+
+<xsl:template name="book.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="book.titlepage.separator"><hr/>
+</xsl:template>
+
+<xsl:template name="book.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="book.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="book.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="book.titlepage.before.recto"/>
+      <xsl:call-template name="book.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="book.titlepage.before.verso"/>
+      <xsl:call-template name="book.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="book.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="book.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="book.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="title" mode="book.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="book.titlepage.recto.style">
+<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="book.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="book.titlepage.recto.style">
+<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="corpauthor" mode="book.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="book.titlepage.recto.style">
+<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="authorgroup" mode="book.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="book.titlepage.recto.style">
+<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="author" mode="book.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="book.titlepage.recto.style">
+<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="othercredit" mode="book.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="book.titlepage.recto.style">
+<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="releaseinfo" mode="book.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="book.titlepage.recto.style">
+<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="copyright" mode="book.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="book.titlepage.recto.style">
+<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="legalnotice" mode="book.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="book.titlepage.recto.style">
+<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="pubdate" mode="book.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="book.titlepage.recto.style">
+<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revision" mode="book.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="book.titlepage.recto.style">
+<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revhistory" mode="book.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="book.titlepage.recto.style">
+<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="abstract" mode="book.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="book.titlepage.recto.style">
+<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="part.titlepage.recto">
+  <div xsl:use-attribute-sets="part.titlepage.recto.style">
+<xsl:call-template name="division.title">
+<xsl:with-param name="node" select="ancestor-or-self::part[1]"/>
+</xsl:call-template></div>
+  <xsl:choose>
+    <xsl:when test="partinfo/subtitle">
+      <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="partinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="docinfo/subtitle">
+      <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="docinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="partinfo/corpauthor"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="docinfo/corpauthor"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="info/corpauthor"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="partinfo/authorgroup"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="docinfo/authorgroup"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="info/authorgroup"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="partinfo/author"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="docinfo/author"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="info/author"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="partinfo/othercredit"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="docinfo/othercredit"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="info/othercredit"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="partinfo/releaseinfo"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="docinfo/releaseinfo"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="info/releaseinfo"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="partinfo/copyright"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="docinfo/copyright"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="info/copyright"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="partinfo/legalnotice"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="docinfo/legalnotice"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="info/legalnotice"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="partinfo/pubdate"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="docinfo/pubdate"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="info/pubdate"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="partinfo/revision"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="docinfo/revision"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="info/revision"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="partinfo/revhistory"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="docinfo/revhistory"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="info/revhistory"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="partinfo/abstract"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="docinfo/abstract"/>
+  <xsl:apply-templates mode="part.titlepage.recto.auto.mode" select="info/abstract"/>
+</xsl:template>
+
+<xsl:template name="part.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="part.titlepage.separator">
+</xsl:template>
+
+<xsl:template name="part.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="part.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="part.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="part.titlepage.before.recto"/>
+      <xsl:call-template name="part.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="part.titlepage.before.verso"/>
+      <xsl:call-template name="part.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="part.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="part.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="part.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="part.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="part.titlepage.recto.style">
+<xsl:apply-templates select="." mode="part.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="corpauthor" mode="part.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="part.titlepage.recto.style">
+<xsl:apply-templates select="." mode="part.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="authorgroup" mode="part.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="part.titlepage.recto.style">
+<xsl:apply-templates select="." mode="part.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="author" mode="part.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="part.titlepage.recto.style">
+<xsl:apply-templates select="." mode="part.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="othercredit" mode="part.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="part.titlepage.recto.style">
+<xsl:apply-templates select="." mode="part.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="releaseinfo" mode="part.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="part.titlepage.recto.style">
+<xsl:apply-templates select="." mode="part.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="copyright" mode="part.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="part.titlepage.recto.style">
+<xsl:apply-templates select="." mode="part.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="legalnotice" mode="part.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="part.titlepage.recto.style">
+<xsl:apply-templates select="." mode="part.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="pubdate" mode="part.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="part.titlepage.recto.style">
+<xsl:apply-templates select="." mode="part.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revision" mode="part.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="part.titlepage.recto.style">
+<xsl:apply-templates select="." mode="part.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revhistory" mode="part.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="part.titlepage.recto.style">
+<xsl:apply-templates select="." mode="part.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="abstract" mode="part.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="part.titlepage.recto.style">
+<xsl:apply-templates select="." mode="part.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="partintro.titlepage.recto">
+  <xsl:choose>
+    <xsl:when test="partintroinfo/title">
+      <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="partintroinfo/title"/>
+    </xsl:when>
+    <xsl:when test="docinfo/title">
+      <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="docinfo/title"/>
+    </xsl:when>
+    <xsl:when test="info/title">
+      <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="info/title"/>
+    </xsl:when>
+    <xsl:when test="title">
+      <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="title"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:choose>
+    <xsl:when test="partintroinfo/subtitle">
+      <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="partintroinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="docinfo/subtitle">
+      <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="docinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="partintroinfo/corpauthor"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="docinfo/corpauthor"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="info/corpauthor"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="partintroinfo/authorgroup"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="docinfo/authorgroup"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="info/authorgroup"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="partintroinfo/author"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="docinfo/author"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="info/author"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="partintroinfo/othercredit"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="docinfo/othercredit"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="info/othercredit"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="partintroinfo/releaseinfo"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="docinfo/releaseinfo"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="info/releaseinfo"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="partintroinfo/copyright"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="docinfo/copyright"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="info/copyright"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="partintroinfo/legalnotice"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="docinfo/legalnotice"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="info/legalnotice"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="partintroinfo/pubdate"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="docinfo/pubdate"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="info/pubdate"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="partintroinfo/revision"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="docinfo/revision"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="info/revision"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="partintroinfo/revhistory"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="docinfo/revhistory"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="info/revhistory"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="partintroinfo/abstract"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="docinfo/abstract"/>
+  <xsl:apply-templates mode="partintro.titlepage.recto.auto.mode" select="info/abstract"/>
+</xsl:template>
+
+<xsl:template name="partintro.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="partintro.titlepage.separator">
+</xsl:template>
+
+<xsl:template name="partintro.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="partintro.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="partintro.titlepage">
+  <div>
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="partintro.titlepage.before.recto"/>
+      <xsl:call-template name="partintro.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="partintro.titlepage.before.verso"/>
+      <xsl:call-template name="partintro.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="partintro.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="partintro.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="partintro.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="title" mode="partintro.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="partintro.titlepage.recto.style">
+<xsl:apply-templates select="." mode="partintro.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="partintro.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="partintro.titlepage.recto.style">
+<xsl:apply-templates select="." mode="partintro.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="corpauthor" mode="partintro.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="partintro.titlepage.recto.style">
+<xsl:apply-templates select="." mode="partintro.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="authorgroup" mode="partintro.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="partintro.titlepage.recto.style">
+<xsl:apply-templates select="." mode="partintro.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="author" mode="partintro.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="partintro.titlepage.recto.style">
+<xsl:apply-templates select="." mode="partintro.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="othercredit" mode="partintro.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="partintro.titlepage.recto.style">
+<xsl:apply-templates select="." mode="partintro.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="releaseinfo" mode="partintro.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="partintro.titlepage.recto.style">
+<xsl:apply-templates select="." mode="partintro.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="copyright" mode="partintro.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="partintro.titlepage.recto.style">
+<xsl:apply-templates select="." mode="partintro.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="legalnotice" mode="partintro.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="partintro.titlepage.recto.style">
+<xsl:apply-templates select="." mode="partintro.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="pubdate" mode="partintro.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="partintro.titlepage.recto.style">
+<xsl:apply-templates select="." mode="partintro.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revision" mode="partintro.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="partintro.titlepage.recto.style">
+<xsl:apply-templates select="." mode="partintro.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revhistory" mode="partintro.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="partintro.titlepage.recto.style">
+<xsl:apply-templates select="." mode="partintro.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="abstract" mode="partintro.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="partintro.titlepage.recto.style">
+<xsl:apply-templates select="." mode="partintro.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="reference.titlepage.recto">
+  <xsl:choose>
+    <xsl:when test="referenceinfo/title">
+      <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="referenceinfo/title"/>
+    </xsl:when>
+    <xsl:when test="docinfo/title">
+      <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="docinfo/title"/>
+    </xsl:when>
+    <xsl:when test="info/title">
+      <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="info/title"/>
+    </xsl:when>
+    <xsl:when test="title">
+      <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="title"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:choose>
+    <xsl:when test="referenceinfo/subtitle">
+      <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="referenceinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="docinfo/subtitle">
+      <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="docinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="referenceinfo/corpauthor"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="docinfo/corpauthor"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="info/corpauthor"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="referenceinfo/authorgroup"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="docinfo/authorgroup"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="info/authorgroup"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="referenceinfo/author"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="docinfo/author"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="info/author"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="referenceinfo/othercredit"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="docinfo/othercredit"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="info/othercredit"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="referenceinfo/releaseinfo"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="docinfo/releaseinfo"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="info/releaseinfo"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="referenceinfo/copyright"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="docinfo/copyright"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="info/copyright"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="referenceinfo/legalnotice"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="docinfo/legalnotice"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="info/legalnotice"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="referenceinfo/pubdate"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="docinfo/pubdate"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="info/pubdate"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="referenceinfo/revision"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="docinfo/revision"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="info/revision"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="referenceinfo/revhistory"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="docinfo/revhistory"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="info/revhistory"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="referenceinfo/abstract"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="docinfo/abstract"/>
+  <xsl:apply-templates mode="reference.titlepage.recto.auto.mode" select="info/abstract"/>
+</xsl:template>
+
+<xsl:template name="reference.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="reference.titlepage.separator"><hr/>
+</xsl:template>
+
+<xsl:template name="reference.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="reference.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="reference.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="reference.titlepage.before.recto"/>
+      <xsl:call-template name="reference.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="reference.titlepage.before.verso"/>
+      <xsl:call-template name="reference.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="reference.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="reference.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="reference.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="title" mode="reference.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="reference.titlepage.recto.style">
+<xsl:apply-templates select="." mode="reference.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="reference.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="reference.titlepage.recto.style">
+<xsl:apply-templates select="." mode="reference.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="corpauthor" mode="reference.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="reference.titlepage.recto.style">
+<xsl:apply-templates select="." mode="reference.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="authorgroup" mode="reference.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="reference.titlepage.recto.style">
+<xsl:apply-templates select="." mode="reference.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="author" mode="reference.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="reference.titlepage.recto.style">
+<xsl:apply-templates select="." mode="reference.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="othercredit" mode="reference.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="reference.titlepage.recto.style">
+<xsl:apply-templates select="." mode="reference.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="releaseinfo" mode="reference.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="reference.titlepage.recto.style">
+<xsl:apply-templates select="." mode="reference.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="copyright" mode="reference.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="reference.titlepage.recto.style">
+<xsl:apply-templates select="." mode="reference.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="legalnotice" mode="reference.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="reference.titlepage.recto.style">
+<xsl:apply-templates select="." mode="reference.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="pubdate" mode="reference.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="reference.titlepage.recto.style">
+<xsl:apply-templates select="." mode="reference.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revision" mode="reference.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="reference.titlepage.recto.style">
+<xsl:apply-templates select="." mode="reference.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revhistory" mode="reference.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="reference.titlepage.recto.style">
+<xsl:apply-templates select="." mode="reference.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="abstract" mode="reference.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="reference.titlepage.recto.style">
+<xsl:apply-templates select="." mode="reference.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="refentry.titlepage.recto">
+</xsl:template>
+
+<xsl:template name="refentry.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="refentry.titlepage.separator">
+</xsl:template>
+
+<xsl:template name="refentry.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="refentry.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="refentry.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="refentry.titlepage.before.recto"/>
+      <xsl:call-template name="refentry.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="refentry.titlepage.before.verso"/>
+      <xsl:call-template name="refentry.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="refentry.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="refentry.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="refentry.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template name="dedication.titlepage.recto">
+  <div xsl:use-attribute-sets="dedication.titlepage.recto.style">
+<xsl:call-template name="component.title">
+<xsl:with-param name="node" select="ancestor-or-self::dedication[1]"/>
+</xsl:call-template></div>
+  <xsl:choose>
+    <xsl:when test="dedicationinfo/subtitle">
+      <xsl:apply-templates mode="dedication.titlepage.recto.auto.mode" select="dedicationinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="docinfo/subtitle">
+      <xsl:apply-templates mode="dedication.titlepage.recto.auto.mode" select="docinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="dedication.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="dedication.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+</xsl:template>
+
+<xsl:template name="dedication.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="dedication.titlepage.separator">
+</xsl:template>
+
+<xsl:template name="dedication.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="dedication.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="dedication.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="dedication.titlepage.before.recto"/>
+      <xsl:call-template name="dedication.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="dedication.titlepage.before.verso"/>
+      <xsl:call-template name="dedication.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="dedication.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="dedication.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="dedication.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="dedication.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="dedication.titlepage.recto.style">
+<xsl:apply-templates select="." mode="dedication.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="acknowledgements.titlepage.recto">
+  <div xsl:use-attribute-sets="acknowledgements.titlepage.recto.style">
+<xsl:call-template name="component.title">
+<xsl:with-param name="node" select="ancestor-or-self::acknowledgements[1]"/>
+</xsl:call-template></div>
+  <xsl:choose>
+    <xsl:when test="acknowledgementsinfo/subtitle">
+      <xsl:apply-templates mode="acknowledgements.titlepage.recto.auto.mode" select="acknowledgementsinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="docinfo/subtitle">
+      <xsl:apply-templates mode="acknowledgements.titlepage.recto.auto.mode" select="docinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="acknowledgements.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="acknowledgements.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+</xsl:template>
+
+<xsl:template name="acknowledgements.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="acknowledgements.titlepage.separator">
+</xsl:template>
+
+<xsl:template name="acknowledgements.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="acknowledgements.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="acknowledgements.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="acknowledgements.titlepage.before.recto"/>
+      <xsl:call-template name="acknowledgements.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="acknowledgements.titlepage.before.verso"/>
+      <xsl:call-template name="acknowledgements.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="acknowledgements.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="acknowledgements.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="acknowledgements.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="acknowledgements.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="acknowledgements.titlepage.recto.style">
+<xsl:apply-templates select="." mode="acknowledgements.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="preface.titlepage.recto">
+  <xsl:choose>
+    <xsl:when test="prefaceinfo/title">
+      <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="prefaceinfo/title"/>
+    </xsl:when>
+    <xsl:when test="docinfo/title">
+      <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="docinfo/title"/>
+    </xsl:when>
+    <xsl:when test="info/title">
+      <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="info/title"/>
+    </xsl:when>
+    <xsl:when test="title">
+      <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="title"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:choose>
+    <xsl:when test="prefaceinfo/subtitle">
+      <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="prefaceinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="docinfo/subtitle">
+      <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="docinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="prefaceinfo/corpauthor"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="docinfo/corpauthor"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="info/corpauthor"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="prefaceinfo/authorgroup"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="docinfo/authorgroup"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="info/authorgroup"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="prefaceinfo/author"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="docinfo/author"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="info/author"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="prefaceinfo/othercredit"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="docinfo/othercredit"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="info/othercredit"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="prefaceinfo/releaseinfo"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="docinfo/releaseinfo"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="info/releaseinfo"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="prefaceinfo/copyright"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="docinfo/copyright"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="info/copyright"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="prefaceinfo/legalnotice"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="docinfo/legalnotice"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="info/legalnotice"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="prefaceinfo/pubdate"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="docinfo/pubdate"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="info/pubdate"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="prefaceinfo/revision"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="docinfo/revision"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="info/revision"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="prefaceinfo/revhistory"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="docinfo/revhistory"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="info/revhistory"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="prefaceinfo/abstract"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="docinfo/abstract"/>
+  <xsl:apply-templates mode="preface.titlepage.recto.auto.mode" select="info/abstract"/>
+</xsl:template>
+
+<xsl:template name="preface.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="preface.titlepage.separator">
+</xsl:template>
+
+<xsl:template name="preface.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="preface.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="preface.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="preface.titlepage.before.recto"/>
+      <xsl:call-template name="preface.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="preface.titlepage.before.verso"/>
+      <xsl:call-template name="preface.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="preface.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="preface.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="preface.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="title" mode="preface.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="preface.titlepage.recto.style">
+<xsl:apply-templates select="." mode="preface.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="preface.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="preface.titlepage.recto.style">
+<xsl:apply-templates select="." mode="preface.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="corpauthor" mode="preface.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="preface.titlepage.recto.style">
+<xsl:apply-templates select="." mode="preface.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="authorgroup" mode="preface.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="preface.titlepage.recto.style">
+<xsl:apply-templates select="." mode="preface.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="author" mode="preface.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="preface.titlepage.recto.style">
+<xsl:apply-templates select="." mode="preface.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="othercredit" mode="preface.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="preface.titlepage.recto.style">
+<xsl:apply-templates select="." mode="preface.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="releaseinfo" mode="preface.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="preface.titlepage.recto.style">
+<xsl:apply-templates select="." mode="preface.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="copyright" mode="preface.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="preface.titlepage.recto.style">
+<xsl:apply-templates select="." mode="preface.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="legalnotice" mode="preface.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="preface.titlepage.recto.style">
+<xsl:apply-templates select="." mode="preface.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="pubdate" mode="preface.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="preface.titlepage.recto.style">
+<xsl:apply-templates select="." mode="preface.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revision" mode="preface.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="preface.titlepage.recto.style">
+<xsl:apply-templates select="." mode="preface.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revhistory" mode="preface.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="preface.titlepage.recto.style">
+<xsl:apply-templates select="." mode="preface.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="abstract" mode="preface.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="preface.titlepage.recto.style">
+<xsl:apply-templates select="." mode="preface.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="chapter.titlepage.recto">
+  <xsl:choose>
+    <xsl:when test="chapterinfo/title">
+      <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="chapterinfo/title"/>
+    </xsl:when>
+    <xsl:when test="docinfo/title">
+      <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="docinfo/title"/>
+    </xsl:when>
+    <xsl:when test="info/title">
+      <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="info/title"/>
+    </xsl:when>
+    <xsl:when test="title">
+      <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="title"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:choose>
+    <xsl:when test="chapterinfo/subtitle">
+      <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="chapterinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="docinfo/subtitle">
+      <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="docinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="chapterinfo/corpauthor"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="docinfo/corpauthor"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="info/corpauthor"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="chapterinfo/authorgroup"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="docinfo/authorgroup"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="info/authorgroup"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="chapterinfo/author"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="docinfo/author"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="info/author"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="chapterinfo/othercredit"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="docinfo/othercredit"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="info/othercredit"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="chapterinfo/releaseinfo"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="docinfo/releaseinfo"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="info/releaseinfo"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="chapterinfo/copyright"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="docinfo/copyright"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="info/copyright"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="chapterinfo/legalnotice"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="docinfo/legalnotice"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="info/legalnotice"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="chapterinfo/pubdate"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="docinfo/pubdate"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="info/pubdate"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="chapterinfo/revision"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="docinfo/revision"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="info/revision"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="chapterinfo/revhistory"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="docinfo/revhistory"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="info/revhistory"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="chapterinfo/abstract"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="docinfo/abstract"/>
+  <xsl:apply-templates mode="chapter.titlepage.recto.auto.mode" select="info/abstract"/>
+</xsl:template>
+
+<xsl:template name="chapter.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="chapter.titlepage.separator">
+</xsl:template>
+
+<xsl:template name="chapter.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="chapter.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="chapter.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="chapter.titlepage.before.recto"/>
+      <xsl:call-template name="chapter.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="chapter.titlepage.before.verso"/>
+      <xsl:call-template name="chapter.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="chapter.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="chapter.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="chapter.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="title" mode="chapter.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="chapter.titlepage.recto.style">
+<xsl:apply-templates select="." mode="chapter.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="chapter.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="chapter.titlepage.recto.style">
+<xsl:apply-templates select="." mode="chapter.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="corpauthor" mode="chapter.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="chapter.titlepage.recto.style">
+<xsl:apply-templates select="." mode="chapter.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="authorgroup" mode="chapter.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="chapter.titlepage.recto.style">
+<xsl:apply-templates select="." mode="chapter.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="author" mode="chapter.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="chapter.titlepage.recto.style">
+<xsl:apply-templates select="." mode="chapter.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="othercredit" mode="chapter.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="chapter.titlepage.recto.style">
+<xsl:apply-templates select="." mode="chapter.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="releaseinfo" mode="chapter.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="chapter.titlepage.recto.style">
+<xsl:apply-templates select="." mode="chapter.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="copyright" mode="chapter.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="chapter.titlepage.recto.style">
+<xsl:apply-templates select="." mode="chapter.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="legalnotice" mode="chapter.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="chapter.titlepage.recto.style">
+<xsl:apply-templates select="." mode="chapter.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="pubdate" mode="chapter.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="chapter.titlepage.recto.style">
+<xsl:apply-templates select="." mode="chapter.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revision" mode="chapter.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="chapter.titlepage.recto.style">
+<xsl:apply-templates select="." mode="chapter.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revhistory" mode="chapter.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="chapter.titlepage.recto.style">
+<xsl:apply-templates select="." mode="chapter.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="abstract" mode="chapter.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="chapter.titlepage.recto.style">
+<xsl:apply-templates select="." mode="chapter.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="appendix.titlepage.recto">
+  <xsl:choose>
+    <xsl:when test="appendixinfo/title">
+      <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/title"/>
+    </xsl:when>
+    <xsl:when test="docinfo/title">
+      <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/title"/>
+    </xsl:when>
+    <xsl:when test="info/title">
+      <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="info/title"/>
+    </xsl:when>
+    <xsl:when test="title">
+      <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="title"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:choose>
+    <xsl:when test="appendixinfo/subtitle">
+      <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="docinfo/subtitle">
+      <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/corpauthor"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/corpauthor"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="info/corpauthor"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/authorgroup"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/authorgroup"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="info/authorgroup"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/author"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/author"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="info/author"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/othercredit"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/othercredit"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="info/othercredit"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/releaseinfo"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/releaseinfo"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="info/releaseinfo"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/copyright"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/copyright"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="info/copyright"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/legalnotice"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/legalnotice"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="info/legalnotice"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/pubdate"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/pubdate"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="info/pubdate"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/revision"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/revision"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="info/revision"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/revhistory"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/revhistory"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="info/revhistory"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/abstract"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/abstract"/>
+  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="info/abstract"/>
+</xsl:template>
+
+<xsl:template name="appendix.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="appendix.titlepage.separator">
+</xsl:template>
+
+<xsl:template name="appendix.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="appendix.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="appendix.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="appendix.titlepage.before.recto"/>
+      <xsl:call-template name="appendix.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="appendix.titlepage.before.verso"/>
+      <xsl:call-template name="appendix.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="appendix.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="appendix.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="appendix.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="title" mode="appendix.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
+<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="appendix.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
+<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="corpauthor" mode="appendix.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
+<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="authorgroup" mode="appendix.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
+<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="author" mode="appendix.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
+<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="othercredit" mode="appendix.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
+<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="releaseinfo" mode="appendix.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
+<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="copyright" mode="appendix.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
+<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="legalnotice" mode="appendix.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
+<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="pubdate" mode="appendix.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
+<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revision" mode="appendix.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
+<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revhistory" mode="appendix.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
+<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="abstract" mode="appendix.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
+<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="section.titlepage.recto">
+  <xsl:choose>
+    <xsl:when test="sectioninfo/title">
+      <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/title"/>
+    </xsl:when>
+    <xsl:when test="info/title">
+      <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="info/title"/>
+    </xsl:when>
+    <xsl:when test="title">
+      <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="title"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:choose>
+    <xsl:when test="sectioninfo/subtitle">
+      <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/corpauthor"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="info/corpauthor"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/authorgroup"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="info/authorgroup"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/author"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="info/author"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/othercredit"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="info/othercredit"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/releaseinfo"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="info/releaseinfo"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/copyright"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="info/copyright"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/legalnotice"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="info/legalnotice"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/pubdate"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="info/pubdate"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/revision"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="info/revision"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/revhistory"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="info/revhistory"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/abstract"/>
+  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="info/abstract"/>
+</xsl:template>
+
+<xsl:template name="section.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="section.titlepage.separator"><xsl:if test="count(parent::*)='0'"><hr/></xsl:if>
+</xsl:template>
+
+<xsl:template name="section.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="section.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="section.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="section.titlepage.before.recto"/>
+      <xsl:call-template name="section.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="section.titlepage.before.verso"/>
+      <xsl:call-template name="section.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="section.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="section.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="section.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="title" mode="section.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="section.titlepage.recto.style">
+<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="section.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="section.titlepage.recto.style">
+<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="corpauthor" mode="section.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="section.titlepage.recto.style">
+<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="authorgroup" mode="section.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="section.titlepage.recto.style">
+<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="author" mode="section.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="section.titlepage.recto.style">
+<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="othercredit" mode="section.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="section.titlepage.recto.style">
+<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="releaseinfo" mode="section.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="section.titlepage.recto.style">
+<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="copyright" mode="section.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="section.titlepage.recto.style">
+<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="legalnotice" mode="section.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="section.titlepage.recto.style">
+<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="pubdate" mode="section.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="section.titlepage.recto.style">
+<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revision" mode="section.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="section.titlepage.recto.style">
+<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revhistory" mode="section.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="section.titlepage.recto.style">
+<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="abstract" mode="section.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="section.titlepage.recto.style">
+<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="sect1.titlepage.recto">
+  <xsl:choose>
+    <xsl:when test="sect1info/title">
+      <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="sect1info/title"/>
+    </xsl:when>
+    <xsl:when test="info/title">
+      <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="info/title"/>
+    </xsl:when>
+    <xsl:when test="title">
+      <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="title"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:choose>
+    <xsl:when test="sect1info/subtitle">
+      <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="sect1info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="sect1info/corpauthor"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="info/corpauthor"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="sect1info/authorgroup"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="info/authorgroup"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="sect1info/author"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="info/author"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="sect1info/othercredit"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="info/othercredit"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="sect1info/releaseinfo"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="info/releaseinfo"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="sect1info/copyright"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="info/copyright"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="sect1info/legalnotice"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="info/legalnotice"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="sect1info/pubdate"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="info/pubdate"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="sect1info/revision"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="info/revision"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="sect1info/revhistory"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="info/revhistory"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="sect1info/abstract"/>
+  <xsl:apply-templates mode="sect1.titlepage.recto.auto.mode" select="info/abstract"/>
+</xsl:template>
+
+<xsl:template name="sect1.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="sect1.titlepage.separator"><xsl:if test="count(parent::*)='0'"><hr/></xsl:if>
+</xsl:template>
+
+<xsl:template name="sect1.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="sect1.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="sect1.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="sect1.titlepage.before.recto"/>
+      <xsl:call-template name="sect1.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="sect1.titlepage.before.verso"/>
+      <xsl:call-template name="sect1.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="sect1.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="sect1.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="sect1.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="title" mode="sect1.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect1.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect1.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="sect1.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect1.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect1.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="corpauthor" mode="sect1.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect1.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect1.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="authorgroup" mode="sect1.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect1.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect1.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="author" mode="sect1.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect1.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect1.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="othercredit" mode="sect1.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect1.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect1.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="releaseinfo" mode="sect1.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect1.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect1.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="copyright" mode="sect1.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect1.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect1.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="legalnotice" mode="sect1.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect1.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect1.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="pubdate" mode="sect1.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect1.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect1.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revision" mode="sect1.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect1.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect1.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revhistory" mode="sect1.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect1.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect1.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="abstract" mode="sect1.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect1.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect1.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="sect2.titlepage.recto">
+  <xsl:choose>
+    <xsl:when test="sect2info/title">
+      <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="sect2info/title"/>
+    </xsl:when>
+    <xsl:when test="info/title">
+      <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="info/title"/>
+    </xsl:when>
+    <xsl:when test="title">
+      <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="title"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:choose>
+    <xsl:when test="sect2info/subtitle">
+      <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="sect2info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="sect2info/corpauthor"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="info/corpauthor"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="sect2info/authorgroup"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="info/authorgroup"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="sect2info/author"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="info/author"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="sect2info/othercredit"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="info/othercredit"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="sect2info/releaseinfo"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="info/releaseinfo"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="sect2info/copyright"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="info/copyright"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="sect2info/legalnotice"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="info/legalnotice"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="sect2info/pubdate"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="info/pubdate"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="sect2info/revision"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="info/revision"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="sect2info/revhistory"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="info/revhistory"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="sect2info/abstract"/>
+  <xsl:apply-templates mode="sect2.titlepage.recto.auto.mode" select="info/abstract"/>
+</xsl:template>
+
+<xsl:template name="sect2.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="sect2.titlepage.separator"><xsl:if test="count(parent::*)='0'"><hr/></xsl:if>
+</xsl:template>
+
+<xsl:template name="sect2.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="sect2.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="sect2.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="sect2.titlepage.before.recto"/>
+      <xsl:call-template name="sect2.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="sect2.titlepage.before.verso"/>
+      <xsl:call-template name="sect2.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="sect2.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="sect2.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="sect2.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="title" mode="sect2.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect2.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect2.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="sect2.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect2.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect2.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="corpauthor" mode="sect2.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect2.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect2.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="authorgroup" mode="sect2.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect2.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect2.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="author" mode="sect2.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect2.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect2.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="othercredit" mode="sect2.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect2.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect2.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="releaseinfo" mode="sect2.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect2.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect2.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="copyright" mode="sect2.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect2.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect2.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="legalnotice" mode="sect2.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect2.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect2.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="pubdate" mode="sect2.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect2.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect2.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revision" mode="sect2.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect2.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect2.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revhistory" mode="sect2.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect2.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect2.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="abstract" mode="sect2.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect2.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect2.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="sect3.titlepage.recto">
+  <xsl:choose>
+    <xsl:when test="sect3info/title">
+      <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="sect3info/title"/>
+    </xsl:when>
+    <xsl:when test="info/title">
+      <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="info/title"/>
+    </xsl:when>
+    <xsl:when test="title">
+      <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="title"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:choose>
+    <xsl:when test="sect3info/subtitle">
+      <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="sect3info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="sect3info/corpauthor"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="info/corpauthor"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="sect3info/authorgroup"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="info/authorgroup"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="sect3info/author"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="info/author"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="sect3info/othercredit"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="info/othercredit"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="sect3info/releaseinfo"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="info/releaseinfo"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="sect3info/copyright"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="info/copyright"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="sect3info/legalnotice"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="info/legalnotice"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="sect3info/pubdate"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="info/pubdate"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="sect3info/revision"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="info/revision"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="sect3info/revhistory"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="info/revhistory"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="sect3info/abstract"/>
+  <xsl:apply-templates mode="sect3.titlepage.recto.auto.mode" select="info/abstract"/>
+</xsl:template>
+
+<xsl:template name="sect3.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="sect3.titlepage.separator"><xsl:if test="count(parent::*)='0'"><hr/></xsl:if>
+</xsl:template>
+
+<xsl:template name="sect3.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="sect3.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="sect3.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="sect3.titlepage.before.recto"/>
+      <xsl:call-template name="sect3.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="sect3.titlepage.before.verso"/>
+      <xsl:call-template name="sect3.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="sect3.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="sect3.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="sect3.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="title" mode="sect3.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect3.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect3.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="sect3.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect3.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect3.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="corpauthor" mode="sect3.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect3.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect3.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="authorgroup" mode="sect3.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect3.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect3.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="author" mode="sect3.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect3.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect3.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="othercredit" mode="sect3.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect3.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect3.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="releaseinfo" mode="sect3.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect3.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect3.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="copyright" mode="sect3.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect3.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect3.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="legalnotice" mode="sect3.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect3.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect3.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="pubdate" mode="sect3.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect3.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect3.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revision" mode="sect3.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect3.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect3.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revhistory" mode="sect3.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect3.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect3.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="abstract" mode="sect3.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect3.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect3.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="sect4.titlepage.recto">
+  <xsl:choose>
+    <xsl:when test="sect4info/title">
+      <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="sect4info/title"/>
+    </xsl:when>
+    <xsl:when test="info/title">
+      <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="info/title"/>
+    </xsl:when>
+    <xsl:when test="title">
+      <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="title"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:choose>
+    <xsl:when test="sect4info/subtitle">
+      <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="sect4info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="sect4info/corpauthor"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="info/corpauthor"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="sect4info/authorgroup"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="info/authorgroup"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="sect4info/author"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="info/author"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="sect4info/othercredit"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="info/othercredit"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="sect4info/releaseinfo"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="info/releaseinfo"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="sect4info/copyright"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="info/copyright"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="sect4info/legalnotice"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="info/legalnotice"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="sect4info/pubdate"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="info/pubdate"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="sect4info/revision"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="info/revision"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="sect4info/revhistory"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="info/revhistory"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="sect4info/abstract"/>
+  <xsl:apply-templates mode="sect4.titlepage.recto.auto.mode" select="info/abstract"/>
+</xsl:template>
+
+<xsl:template name="sect4.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="sect4.titlepage.separator"><xsl:if test="count(parent::*)='0'"><hr/></xsl:if>
+</xsl:template>
+
+<xsl:template name="sect4.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="sect4.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="sect4.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="sect4.titlepage.before.recto"/>
+      <xsl:call-template name="sect4.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="sect4.titlepage.before.verso"/>
+      <xsl:call-template name="sect4.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="sect4.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="sect4.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="sect4.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="title" mode="sect4.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect4.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect4.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="sect4.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect4.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect4.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="corpauthor" mode="sect4.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect4.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect4.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="authorgroup" mode="sect4.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect4.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect4.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="author" mode="sect4.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect4.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect4.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="othercredit" mode="sect4.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect4.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect4.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="releaseinfo" mode="sect4.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect4.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect4.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="copyright" mode="sect4.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect4.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect4.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="legalnotice" mode="sect4.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect4.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect4.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="pubdate" mode="sect4.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect4.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect4.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revision" mode="sect4.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect4.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect4.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revhistory" mode="sect4.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect4.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect4.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="abstract" mode="sect4.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect4.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect4.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="sect5.titlepage.recto">
+  <xsl:choose>
+    <xsl:when test="sect5info/title">
+      <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="sect5info/title"/>
+    </xsl:when>
+    <xsl:when test="info/title">
+      <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="info/title"/>
+    </xsl:when>
+    <xsl:when test="title">
+      <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="title"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:choose>
+    <xsl:when test="sect5info/subtitle">
+      <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="sect5info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="sect5info/corpauthor"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="info/corpauthor"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="sect5info/authorgroup"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="info/authorgroup"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="sect5info/author"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="info/author"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="sect5info/othercredit"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="info/othercredit"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="sect5info/releaseinfo"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="info/releaseinfo"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="sect5info/copyright"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="info/copyright"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="sect5info/legalnotice"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="info/legalnotice"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="sect5info/pubdate"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="info/pubdate"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="sect5info/revision"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="info/revision"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="sect5info/revhistory"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="info/revhistory"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="sect5info/abstract"/>
+  <xsl:apply-templates mode="sect5.titlepage.recto.auto.mode" select="info/abstract"/>
+</xsl:template>
+
+<xsl:template name="sect5.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="sect5.titlepage.separator"><xsl:if test="count(parent::*)='0'"><hr/></xsl:if>
+</xsl:template>
+
+<xsl:template name="sect5.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="sect5.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="sect5.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="sect5.titlepage.before.recto"/>
+      <xsl:call-template name="sect5.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="sect5.titlepage.before.verso"/>
+      <xsl:call-template name="sect5.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="sect5.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="sect5.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="sect5.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="title" mode="sect5.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect5.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect5.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="sect5.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect5.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect5.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="corpauthor" mode="sect5.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect5.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect5.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="authorgroup" mode="sect5.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect5.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect5.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="author" mode="sect5.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect5.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect5.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="othercredit" mode="sect5.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect5.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect5.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="releaseinfo" mode="sect5.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect5.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect5.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="copyright" mode="sect5.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect5.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect5.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="legalnotice" mode="sect5.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect5.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect5.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="pubdate" mode="sect5.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect5.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect5.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revision" mode="sect5.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect5.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect5.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revhistory" mode="sect5.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect5.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect5.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="abstract" mode="sect5.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sect5.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sect5.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="simplesect.titlepage.recto">
+  <xsl:choose>
+    <xsl:when test="simplesectinfo/title">
+      <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="simplesectinfo/title"/>
+    </xsl:when>
+    <xsl:when test="docinfo/title">
+      <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="docinfo/title"/>
+    </xsl:when>
+    <xsl:when test="info/title">
+      <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="info/title"/>
+    </xsl:when>
+    <xsl:when test="title">
+      <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="title"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:choose>
+    <xsl:when test="simplesectinfo/subtitle">
+      <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="simplesectinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="docinfo/subtitle">
+      <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="docinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="simplesectinfo/corpauthor"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="docinfo/corpauthor"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="info/corpauthor"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="simplesectinfo/authorgroup"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="docinfo/authorgroup"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="info/authorgroup"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="simplesectinfo/author"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="docinfo/author"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="info/author"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="simplesectinfo/othercredit"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="docinfo/othercredit"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="info/othercredit"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="simplesectinfo/releaseinfo"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="docinfo/releaseinfo"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="info/releaseinfo"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="simplesectinfo/copyright"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="docinfo/copyright"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="info/copyright"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="simplesectinfo/legalnotice"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="docinfo/legalnotice"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="info/legalnotice"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="simplesectinfo/pubdate"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="docinfo/pubdate"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="info/pubdate"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="simplesectinfo/revision"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="docinfo/revision"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="info/revision"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="simplesectinfo/revhistory"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="docinfo/revhistory"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="info/revhistory"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="simplesectinfo/abstract"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="docinfo/abstract"/>
+  <xsl:apply-templates mode="simplesect.titlepage.recto.auto.mode" select="info/abstract"/>
+</xsl:template>
+
+<xsl:template name="simplesect.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="simplesect.titlepage.separator"><xsl:if test="count(parent::*)='0'"><hr/></xsl:if>
+</xsl:template>
+
+<xsl:template name="simplesect.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="simplesect.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="simplesect.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="simplesect.titlepage.before.recto"/>
+      <xsl:call-template name="simplesect.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="simplesect.titlepage.before.verso"/>
+      <xsl:call-template name="simplesect.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="simplesect.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="simplesect.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="simplesect.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="title" mode="simplesect.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="simplesect.titlepage.recto.style">
+<xsl:apply-templates select="." mode="simplesect.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="simplesect.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="simplesect.titlepage.recto.style">
+<xsl:apply-templates select="." mode="simplesect.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="corpauthor" mode="simplesect.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="simplesect.titlepage.recto.style">
+<xsl:apply-templates select="." mode="simplesect.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="authorgroup" mode="simplesect.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="simplesect.titlepage.recto.style">
+<xsl:apply-templates select="." mode="simplesect.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="author" mode="simplesect.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="simplesect.titlepage.recto.style">
+<xsl:apply-templates select="." mode="simplesect.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="othercredit" mode="simplesect.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="simplesect.titlepage.recto.style">
+<xsl:apply-templates select="." mode="simplesect.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="releaseinfo" mode="simplesect.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="simplesect.titlepage.recto.style">
+<xsl:apply-templates select="." mode="simplesect.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="copyright" mode="simplesect.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="simplesect.titlepage.recto.style">
+<xsl:apply-templates select="." mode="simplesect.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="legalnotice" mode="simplesect.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="simplesect.titlepage.recto.style">
+<xsl:apply-templates select="." mode="simplesect.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="pubdate" mode="simplesect.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="simplesect.titlepage.recto.style">
+<xsl:apply-templates select="." mode="simplesect.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revision" mode="simplesect.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="simplesect.titlepage.recto.style">
+<xsl:apply-templates select="." mode="simplesect.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="revhistory" mode="simplesect.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="simplesect.titlepage.recto.style">
+<xsl:apply-templates select="." mode="simplesect.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template match="abstract" mode="simplesect.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="simplesect.titlepage.recto.style">
+<xsl:apply-templates select="." mode="simplesect.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="bibliography.titlepage.recto">
+  <div xsl:use-attribute-sets="bibliography.titlepage.recto.style">
+<xsl:call-template name="component.title">
+<xsl:with-param name="node" select="ancestor-or-self::bibliography[1]"/>
+</xsl:call-template></div>
+  <xsl:choose>
+    <xsl:when test="bibliographyinfo/subtitle">
+      <xsl:apply-templates mode="bibliography.titlepage.recto.auto.mode" select="bibliographyinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="docinfo/subtitle">
+      <xsl:apply-templates mode="bibliography.titlepage.recto.auto.mode" select="docinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="bibliography.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="bibliography.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+</xsl:template>
+
+<xsl:template name="bibliography.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="bibliography.titlepage.separator">
+</xsl:template>
+
+<xsl:template name="bibliography.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="bibliography.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="bibliography.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="bibliography.titlepage.before.recto"/>
+      <xsl:call-template name="bibliography.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="bibliography.titlepage.before.verso"/>
+      <xsl:call-template name="bibliography.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="bibliography.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="bibliography.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="bibliography.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="bibliography.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="bibliography.titlepage.recto.style">
+<xsl:apply-templates select="." mode="bibliography.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="glossary.titlepage.recto">
+  <div xsl:use-attribute-sets="glossary.titlepage.recto.style">
+<xsl:call-template name="component.title">
+<xsl:with-param name="node" select="ancestor-or-self::glossary[1]"/>
+</xsl:call-template></div>
+  <xsl:choose>
+    <xsl:when test="glossaryinfo/subtitle">
+      <xsl:apply-templates mode="glossary.titlepage.recto.auto.mode" select="glossaryinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="docinfo/subtitle">
+      <xsl:apply-templates mode="glossary.titlepage.recto.auto.mode" select="docinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="glossary.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="glossary.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+</xsl:template>
+
+<xsl:template name="glossary.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="glossary.titlepage.separator">
+</xsl:template>
+
+<xsl:template name="glossary.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="glossary.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="glossary.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="glossary.titlepage.before.recto"/>
+      <xsl:call-template name="glossary.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="glossary.titlepage.before.verso"/>
+      <xsl:call-template name="glossary.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="glossary.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="glossary.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="glossary.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="glossary.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="glossary.titlepage.recto.style">
+<xsl:apply-templates select="." mode="glossary.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="index.titlepage.recto">
+  <div xsl:use-attribute-sets="index.titlepage.recto.style">
+<xsl:call-template name="component.title">
+<xsl:with-param name="node" select="ancestor-or-self::index[1]"/>
+</xsl:call-template></div>
+  <xsl:choose>
+    <xsl:when test="indexinfo/subtitle">
+      <xsl:apply-templates mode="index.titlepage.recto.auto.mode" select="indexinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="docinfo/subtitle">
+      <xsl:apply-templates mode="index.titlepage.recto.auto.mode" select="docinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="index.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="index.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+</xsl:template>
+
+<xsl:template name="index.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="index.titlepage.separator">
+</xsl:template>
+
+<xsl:template name="index.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="index.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="index.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="index.titlepage.before.recto"/>
+      <xsl:call-template name="index.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="index.titlepage.before.verso"/>
+      <xsl:call-template name="index.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="index.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="index.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="index.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="index.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="index.titlepage.recto.style">
+<xsl:apply-templates select="." mode="index.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="setindex.titlepage.recto">
+  <div xsl:use-attribute-sets="setindex.titlepage.recto.style">
+<xsl:call-template name="component.title">
+<xsl:with-param name="node" select="ancestor-or-self::setindex[1]"/>
+</xsl:call-template></div>
+  <xsl:choose>
+    <xsl:when test="setindexinfo/subtitle">
+      <xsl:apply-templates mode="setindex.titlepage.recto.auto.mode" select="setindexinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="docinfo/subtitle">
+      <xsl:apply-templates mode="setindex.titlepage.recto.auto.mode" select="docinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="setindex.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="setindex.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+</xsl:template>
+
+<xsl:template name="setindex.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="setindex.titlepage.separator">
+</xsl:template>
+
+<xsl:template name="setindex.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="setindex.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="setindex.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="setindex.titlepage.before.recto"/>
+      <xsl:call-template name="setindex.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="setindex.titlepage.before.verso"/>
+      <xsl:call-template name="setindex.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="setindex.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="setindex.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="setindex.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="setindex.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="setindex.titlepage.recto.style">
+<xsl:apply-templates select="." mode="setindex.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+<xsl:template name="sidebar.titlepage.recto">
+  <xsl:choose>
+    <xsl:when test="sidebarinfo/title">
+      <xsl:apply-templates mode="sidebar.titlepage.recto.auto.mode" select="sidebarinfo/title"/>
+    </xsl:when>
+    <xsl:when test="docinfo/title">
+      <xsl:apply-templates mode="sidebar.titlepage.recto.auto.mode" select="docinfo/title"/>
+    </xsl:when>
+    <xsl:when test="info/title">
+      <xsl:apply-templates mode="sidebar.titlepage.recto.auto.mode" select="info/title"/>
+    </xsl:when>
+    <xsl:when test="title">
+      <xsl:apply-templates mode="sidebar.titlepage.recto.auto.mode" select="title"/>
+    </xsl:when>
+  </xsl:choose>
+
+  <xsl:choose>
+    <xsl:when test="sidebarinfo/subtitle">
+      <xsl:apply-templates mode="sidebar.titlepage.recto.auto.mode" select="sidebarinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="docinfo/subtitle">
+      <xsl:apply-templates mode="sidebar.titlepage.recto.auto.mode" select="docinfo/subtitle"/>
+    </xsl:when>
+    <xsl:when test="info/subtitle">
+      <xsl:apply-templates mode="sidebar.titlepage.recto.auto.mode" select="info/subtitle"/>
+    </xsl:when>
+    <xsl:when test="subtitle">
+      <xsl:apply-templates mode="sidebar.titlepage.recto.auto.mode" select="subtitle"/>
+    </xsl:when>
+  </xsl:choose>
+
+</xsl:template>
+
+<xsl:template name="sidebar.titlepage.verso">
+</xsl:template>
+
+<xsl:template name="sidebar.titlepage.separator">
+</xsl:template>
+
+<xsl:template name="sidebar.titlepage.before.recto">
+</xsl:template>
+
+<xsl:template name="sidebar.titlepage.before.verso">
+</xsl:template>
+
+<xsl:template name="sidebar.titlepage">
+  <div class="titlepage">
+    <xsl:variable name="recto.content">
+      <xsl:call-template name="sidebar.titlepage.before.recto"/>
+      <xsl:call-template name="sidebar.titlepage.recto"/>
+    </xsl:variable>
+    <xsl:variable name="recto.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$recto.content"/></div>
+    </xsl:if>
+    <xsl:variable name="verso.content">
+      <xsl:call-template name="sidebar.titlepage.before.verso"/>
+      <xsl:call-template name="sidebar.titlepage.verso"/>
+    </xsl:variable>
+    <xsl:variable name="verso.elements.count">
+      <xsl:choose>
+        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
+          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
+        <xsl:otherwise>1</xsl:otherwise>
+      </xsl:choose>
+    </xsl:variable>
+    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
+      <div><xsl:copy-of select="$verso.content"/></div>
+    </xsl:if>
+    <xsl:call-template name="sidebar.titlepage.separator"/>
+  </div>
+</xsl:template>
+
+<xsl:template match="*" mode="sidebar.titlepage.recto.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="*" mode="sidebar.titlepage.verso.mode">
+  <!-- if an element isn't found in this mode, -->
+  <!-- try the generic titlepage.mode -->
+  <xsl:apply-templates select="." mode="titlepage.mode"/>
+</xsl:template>
+
+<xsl:template match="title" mode="sidebar.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sidebar.titlepage.recto.style">
+<xsl:call-template name="formal.object.heading">
+<xsl:with-param name="object" select="ancestor-or-self::sidebar[1]"/>
+</xsl:call-template>
+</div>
+</xsl:template>
+
+<xsl:template match="subtitle" mode="sidebar.titlepage.recto.auto.mode">
+<div xsl:use-attribute-sets="sidebar.titlepage.recto.style">
+<xsl:apply-templates select="." mode="sidebar.titlepage.recto.mode"/>
+</div>
+</xsl:template>
+
+</xsl:stylesheet>
+
-- 
1.7.7.6


