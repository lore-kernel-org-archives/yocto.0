Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBBFFE004AB
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 02:04:58 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id ADAB94009F;
	Thu,  6 Sep 2012 10:35:55 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu,  6 Sep 2012 11:04:34 +0200
Message-Id: <9c31105cfa8f5bfe6f7ec025de1084e79221e88f.1346922110.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1346922110.git.timo.mueller@bmw-carit.de>
References: <cover.1346922110.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1346922110.git.timo.mueller@bmw-carit.de>
References: <cover.1346922110.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 1/6] documentation/adt-manual: Moved stylesheet parameters to customization file
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

Standard stylesheet parameters were moved to the docbook customization
file tying them to the docbook stylesheet used. Removing these
parameters simplifies the Makefile.

Furthermore supporting new output formats can now be achieved by
creating a new customization file containing its corresponding
parameters. Parameters that are used across different stylesheets with
different values will then be separated through different
customization files.

Global parameters can still be set through the XSLTOPTS variable since
this precedes the parameters in the customization file.
---
 documentation/Makefile                             |    7 +------
 .../adt-manual/adt-manual-customization.xsl        |    7 +++++--
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index ee7089a..380193d 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -213,12 +213,7 @@ endif
 
 
 ifeq ($(DOC),adt-manual)
-XSLTOPTS = --stringparam html.stylesheet adt-style.css \
-           --stringparam  chapter.autolabel 1 \
-           --stringparam  appendix.autolabel A \
-           --stringparam  section.autolabel 1 \
-           --stringparam  section.label.includes.component.label 1 \
-           --xinclude
+XSLTOPTS = --xinclude
 ALLPREQ = html pdf tarball
 TARFILES = adt-manual.html adt-manual.pdf adt-style.css figures/adt-title.png
 MANUALS = $(DOC)/$(DOC).html $(DOC)/$(DOC).pdf
diff --git a/documentation/adt-manual/adt-manual-customization.xsl b/documentation/adt-manual/adt-manual-customization.xsl
index 8eb6905..373bdb7 100644
--- a/documentation/adt-manual/adt-manual-customization.xsl
+++ b/documentation/adt-manual/adt-manual-customization.xsl
@@ -3,6 +3,9 @@
   
   <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/xhtml/docbook.xsl" />
 
-<!--  <xsl:param name="generate.toc" select="'article nop'"></xsl:param>  -->
-
+  <xsl:param name="html.stylesheet" select="'adt-style.css'" />
+  <xsl:param name="chapter.autolabel" select="1" />
+  <xsl:param name="appendix.autolabel" select="1" />
+  <xsl:param name="section.autolabel" select="1" />
+  <xsl:param name="section.label.includes.component.label" select="1" />
 </xsl:stylesheet>
-- 
1.7.7.6


