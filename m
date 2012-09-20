Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0507BE0144D
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 06:38:37 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id CFB9340308;
	Thu, 20 Sep 2012 15:08:39 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu, 20 Sep 2012 15:38:16 +0200
Message-Id: <d19bce02914cfd6801976c2b50186ea821bfb541.1348147047.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <c01903c65c0ecf5275d2be20651ad35c31521eb2.1348147047.git.timo.mueller@bmw-carit.de>
References: <cover.1348147047.git.timo.mueller@bmw-carit.de>
	<1af602c372ef3d674ffc3553ef7bd4f4532834e5.1348147047.git.timo.mueller@bmw-carit.de>
	<0d6c673c3b5ee40fe7dc5a9ca91ec7d8d35440a0.1348147047.git.timo.mueller@bmw-carit.de>
	<b7d9dbe40bd79fca4d81128448c0b2becec50589.1348147047.git.timo.mueller@bmw-carit.de>
	<e8d106d7f16af5bc0819650ae9471f7936b0d71e.1348147047.git.timo.mueller@bmw-carit.de>
	<3d0a07f43721d2662899b371a3c6e8521e401323.1348147047.git.timo.mueller@bmw-carit.de>
	<ee7ceec0f795156840ecf5fbfde6e623e3674eeb.1348147047.git.timo.mueller@bmw-carit.de>
	<3b3b4cc6a87b643b7b37ceb9c9266dd154bc9c9a.1348147047.git.timo.mueller@bmw-carit.de>
	<cbcf755d00342b6f2141e1b12bee502e2a25b3a5.1348147047.git.timo.mueller@bmw-carit.de>
	<fec560f6ad9c686a28995a32c53565cbe1b1a5a5.1348147047.git.timo.mueller@bmw-carit.de>
	<f5caa376895e25a5a277dffcf4e34b8cd9a8502c.1348147047.git.timo.mueller@bmw-carit.de>
	<c01903c65c0ecf5275d2be20651ad35c31521eb2.1348147047.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348147047.git.timo.mueller@bmw-carit.de>
References: <cover.1348147047.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 12/25] documentation: Move kernel-manual global parameters to customization file
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
 documentation/Makefile                             |    7 +------
 .../kernel-manual/kernel-manual-customization.xsl  |    7 +++++--
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 02206b5..9b816a1 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -219,12 +219,7 @@ STYLESHEET = $(DOC)/*.css
 endif
 
 ifeq ($(DOC),kernel-manual)
-XSLTOPTS = --stringparam html.stylesheet kernel-style.css \
-           --stringparam  chapter.autolabel 1 \
-           --stringparam  appendix.autolabel A \
-           --stringparam  section.autolabel 1 \
-           --stringparam  section.label.includes.component.label 1 \
-           --xinclude
+XSLTOPTS = --xinclude
 ALLPREQ = html pdf tarball
 TARFILES = kernel-manual.html kernel-manual.pdf kernel-style.css figures/kernel-title.png figures/kernel-architecture-overview.png
 MANUALS = $(DOC)/$(DOC).html $(DOC)/$(DOC).pdf
diff --git a/documentation/kernel-manual/kernel-manual-customization.xsl b/documentation/kernel-manual/kernel-manual-customization.xsl
index 8eb6905..6f46df2 100644
--- a/documentation/kernel-manual/kernel-manual-customization.xsl
+++ b/documentation/kernel-manual/kernel-manual-customization.xsl
@@ -3,6 +3,9 @@
   
   <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/xhtml/docbook.xsl" />
 
-<!--  <xsl:param name="generate.toc" select="'article nop'"></xsl:param>  -->
-
+  <xsl:param name="html.stylesheet" select="'kernel-style.css'" />
+  <xsl:param name="chapter.autolabel" select="1" />
+  <xsl:param name="appendix.autolabel" select="A" />
+  <xsl:param name="section.autolabel" select="1" />
+  <xsl:param name="section.label.includes.component.label" select="1" />
 </xsl:stylesheet>
-- 
1.7.7.6


