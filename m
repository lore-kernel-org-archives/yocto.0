Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CA9FE01199
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 07:36:42 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 02C64400BF;
	Fri, 21 Sep 2012 16:06:40 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2012 16:36:09 +0200
Message-Id: <7d9bce7a4c37456b0e358d4ad9188b079f99687c.1348236303.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <f423e465e06fe2ecc63b23eb00dfe583372ea662.1348236303.git.timo.mueller@bmw-carit.de>
References: <cover.1348236303.git.timo.mueller@bmw-carit.de>
	<1af602c372ef3d674ffc3553ef7bd4f4532834e5.1348236303.git.timo.mueller@bmw-carit.de>
	<f423e465e06fe2ecc63b23eb00dfe583372ea662.1348236303.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348236303.git.timo.mueller@bmw-carit.de>
References: <cover.1348236303.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv2 03/28] documentation: Move dev-manual global parameters to customization file
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
X-List-Received-Date: Fri, 21 Sep 2012 14:36:42 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Standard stylesheet parameters were moved to the docbook customization
file tying them to the docbook stylesheet used. Removing these
parameters simplifies the Makefile.
---
 documentation/Makefile                             |    6 +-----
 .../dev-manual/dev-manual-customization.xsl        |    6 ++++--
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 005d670..1e8b558 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -84,11 +84,7 @@ STYLESHEET = $(DOC)/*.css
 endif
 
 ifeq ($(DOC),dev-manual)
-XSLTOPTS = --stringparam html.stylesheet dev-style.css \
-           --stringparam  chapter.autolabel 1 \
-           --stringparam  section.autolabel 1 \
-           --stringparam  section.label.includes.component.label 1 \
-           --xinclude
+XSLTOPTS = --xinclude
 ALLPREQ = html pdf tarball
 #
 # Note that the tarfile might produce the "Cannot stat: No such file or directory" error
diff --git a/documentation/dev-manual/dev-manual-customization.xsl b/documentation/dev-manual/dev-manual-customization.xsl
index 8eb6905..8969605 100644
--- a/documentation/dev-manual/dev-manual-customization.xsl
+++ b/documentation/dev-manual/dev-manual-customization.xsl
@@ -3,6 +3,8 @@
   
   <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/xhtml/docbook.xsl" />
 
-<!--  <xsl:param name="generate.toc" select="'article nop'"></xsl:param>  -->
-
+  <xsl:param name="html.stylesheet" select="'dev-style.css'" />
+  <xsl:param name="chapter.autolabel" select="1" />
+  <xsl:param name="section.autolabel" select="1" />
+  <xsl:param name="section.label.includes.component.label" select="1" />
 </xsl:stylesheet>
-- 
1.7.7.6


