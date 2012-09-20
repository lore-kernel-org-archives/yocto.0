Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78E14E01447
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 06:38:37 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 7319540352;
	Thu, 20 Sep 2012 15:08:40 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu, 20 Sep 2012 15:38:21 +0200
Message-Id: <83a7d834c42866c8114b7999b2cbaebec3eaaed0.1348147047.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <f4a5aa8497f8fc22e7c004a9bae93a3180cf81b8.1348147047.git.timo.mueller@bmw-carit.de>
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
	<d19bce02914cfd6801976c2b50186ea821bfb541.1348147047.git.timo.mueller@bmw-carit.de>
	<af081481147189299afc1e0946601cae353a16db.1348147047.git.timo.mueller@bmw-carit.de>
	<10af34d54489f0cefeb5d0597a055d8c7ee3838c.1348147047.git.timo.mueller@bmw-carit.de>
	<d5344147fcd64278155e4c7683a5ec6350ed7cfa.1348147047.git.timo.mueller@bmw-carit.de>
	<f4a5aa8497f8fc22e7c004a9bae93a3180cf81b8.1348147047.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348147047.git.timo.mueller@bmw-carit.de>
References: <cover.1348147047.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 17/25] documentation: Move poky-ref-manual global parameters to customization file
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
 .../poky-ref-manual-customization.xsl              |    5 +++++
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 23b4d9f..17f7cf5 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -194,12 +194,7 @@ STYLESHEET = $(DOC)/*.css
 endif
 
 ifeq ($(DOC),poky-ref-manual)
-XSLTOPTS = --stringparam html.stylesheet ref-style.css \
-           --stringparam  chapter.autolabel 1 \
-           --stringparam  appendix.autolabel A \
-           --stringparam  section.autolabel 1 \
-           --stringparam  section.label.includes.component.label 1 \
-           --xinclude
+XSLTOPTS = --xinclude
 ALLPREQ = html pdf tarball
 TARFILES = poky-ref-manual.html ref-style.css figures/poky-title.png
 MANUALS = $(DOC)/$(DOC).html $(DOC)/$(DOC).pdf
diff --git a/documentation/poky-ref-manual/poky-ref-manual-customization.xsl b/documentation/poky-ref-manual/poky-ref-manual-customization.xsl
index 362ebed..3ad3a31 100644
--- a/documentation/poky-ref-manual/poky-ref-manual-customization.xsl
+++ b/documentation/poky-ref-manual/poky-ref-manual-customization.xsl
@@ -3,4 +3,9 @@
   
   <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/xhtml/docbook.xsl" />
 
+  <xsl:param name="html.stylesheet" select="'ref-style.css'" />
+  <xsl:param name="chapter.autolabel" select="1" />
+  <xsl:param name="appendix.autolabel" select="A" />
+  <xsl:param name="section.autolabel" select="1" />
+  <xsl:param name="section.label.includes.component.label" select="1" />
 </xsl:stylesheet>
-- 
1.7.7.6


