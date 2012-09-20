Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE73BE01449
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 06:38:36 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 364674029F;
	Thu, 20 Sep 2012 15:08:39 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu, 20 Sep 2012 15:38:11 +0200
Message-Id: <3b3b4cc6a87b643b7b37ceb9c9266dd154bc9c9a.1348147047.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <ee7ceec0f795156840ecf5fbfde6e623e3674eeb.1348147047.git.timo.mueller@bmw-carit.de>
References: <cover.1348147047.git.timo.mueller@bmw-carit.de>
	<1af602c372ef3d674ffc3553ef7bd4f4532834e5.1348147047.git.timo.mueller@bmw-carit.de>
	<0d6c673c3b5ee40fe7dc5a9ca91ec7d8d35440a0.1348147047.git.timo.mueller@bmw-carit.de>
	<b7d9dbe40bd79fca4d81128448c0b2becec50589.1348147047.git.timo.mueller@bmw-carit.de>
	<e8d106d7f16af5bc0819650ae9471f7936b0d71e.1348147047.git.timo.mueller@bmw-carit.de>
	<3d0a07f43721d2662899b371a3c6e8521e401323.1348147047.git.timo.mueller@bmw-carit.de>
	<ee7ceec0f795156840ecf5fbfde6e623e3674eeb.1348147047.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348147047.git.timo.mueller@bmw-carit.de>
References: <cover.1348147047.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 07/25] documentation: Move bsp-guide global parameters to customization file
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
X-List-Received-Date: Thu, 20 Sep 2012 13:38:37 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Standard stylesheet parameters were moved to the docbook customization
file tying them to the docbook stylesheet used. Removing these
parameters simplifies the Makefile.
---
 documentation/Makefile                             |    6 +-----
 .../bsp-guide/bsp-guide-customization.xsl          |    4 ++++
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 45ba6b6..e601fef 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -70,11 +70,7 @@
 #
 
 ifeq ($(DOC),bsp-guide)
-XSLTOPTS = --stringparam html.stylesheet bsp-style.css \
-           --stringparam  chapter.autolabel 1 \
-           --stringparam  section.autolabel 1 \
-           --stringparam  section.label.includes.component.label 1 \
-           --xinclude
+XSLTOPTS = --xinclude
 ALLPREQ = html pdf tarball
 TARFILES = bsp-style.css bsp-guide.html bsp-guide.pdf figures/bsp-title.png
 MANUALS = $(DOC)/$(DOC).html $(DOC)/$(DOC).pdf
diff --git a/documentation/bsp-guide/bsp-guide-customization.xsl b/documentation/bsp-guide/bsp-guide-customization.xsl
index 362ebed..5560289 100644
--- a/documentation/bsp-guide/bsp-guide-customization.xsl
+++ b/documentation/bsp-guide/bsp-guide-customization.xsl
@@ -3,4 +3,8 @@
   
   <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/xhtml/docbook.xsl" />
 
+  <xsl:param name="html.stylesheet" select="'bsp-style.css'" />
+  <xsl:param name="chapter.autolabel" select="1" />
+  <xsl:param name="section.autolabel" select="1" />
+  <xsl:param name="section.label.includes.component.label" select="1" />
 </xsl:stylesheet>
-- 
1.7.7.6


