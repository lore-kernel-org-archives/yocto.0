Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F5E3E01430
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 06:38:35 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 92F9D400A2;
	Thu, 20 Sep 2012 15:08:38 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu, 20 Sep 2012 15:38:06 +0200
Message-Id: <0d6c673c3b5ee40fe7dc5a9ca91ec7d8d35440a0.1348147047.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <1af602c372ef3d674ffc3553ef7bd4f4532834e5.1348147047.git.timo.mueller@bmw-carit.de>
References: <cover.1348147047.git.timo.mueller@bmw-carit.de>
	<1af602c372ef3d674ffc3553ef7bd4f4532834e5.1348147047.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348147047.git.timo.mueller@bmw-carit.de>
References: <cover.1348147047.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 02/25] documentation: Move dev-manual global parameters to customization file
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
X-List-Received-Date: Thu, 20 Sep 2012 13:38:36 -0000

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


