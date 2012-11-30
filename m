Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBE32E011AF
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2012 00:59:57 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 6889B40358;
	Fri, 30 Nov 2012 09:24:45 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 30 Nov 2012 09:59:34 +0100
Message-Id: <81b9e274d332ceceb284ec4005a33ed60245a7eb.1354264975.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <25ee5bb08586d9954a0076cf515ed950a58fd60c.1354264975.git.timo.mueller@bmw-carit.de>
References: <cover.1354264975.git.timo.mueller@bmw-carit.de>
	<ae85de5617553768dab8adfb8e33682d6f496f98.1354264975.git.timo.mueller@bmw-carit.de>
	<0ef502fd88b1e7806abb8d93ebd53cd89769a1db.1354264975.git.timo.mueller@bmw-carit.de>
	<f1b31f8514fc06af68ab00b9920498a2ba3271f6.1354264975.git.timo.mueller@bmw-carit.de>
	<14c72e38f8845ff1c42e0b5bc5e01c76d45dbe57.1354264975.git.timo.mueller@bmw-carit.de>
	<d9bf052b5f144b5188dfcde7b1384a843c8c81b5.1354264975.git.timo.mueller@bmw-carit.de>
	<abc49ebf76d55dbb646b05fb451b08b780a921ab.1354264975.git.timo.mueller@bmw-carit.de>
	<0e3b5ea52a5229679c6abc875652bf7e9b64f323.1354264975.git.timo.mueller@bmw-carit.de>
	<b44f86f7f3af703ff4528a35eb82c7108586330e.1354264975.git.timo.mueller@bmw-carit.de>
	<7893fff34faec13f7073016ca5221a342d92df61.1354264975.git.timo.mueller@bmw-carit.de>
	<d9192a08f1bb84cd8ef7ab924d41eb0e81aefbea.1354264975.git.timo.mueller@bmw-carit.de>
	<899749cce559d9c6894343fae844873c337fd5b5.1354264975.git.timo.mueller@bmw-carit.de>
	<4b5d06565d52a010678c1f3edb3710b4d5d62cec.1354264975.git.timo.mueller@bmw-carit.de>
	<1b85154631995b29bc8f94810ce7cfb896a1e787.1354264975.git.timo.mueller@bmw-carit.de>
	<546e4a349f627d25977a11979ddd580ef063c3bd.1354264975.git.timo.mueller@bmw-carit.de>
	<17a025a8342a76eff141c6c2944a964c8b496570.1354264975.git.timo.mueller@bmw-carit.de>
	<25ee5bb08586d9954a0076cf515ed950a58fd60c.1354264975.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354264975.git.timo.mueller@bmw-carit.de>
References: <cover.1354264975.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv2 17/35] documentation: Move kernel-manual global parameters to customization file
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
X-List-Received-Date: Fri, 30 Nov 2012 08:59:58 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Standard stylesheet parameters were moved to the docbook customization
file tying them to the docbook stylesheet used. Removing these
parameters simplifies the Makefile.
---
 documentation/Makefile                             |    7 +------
 .../kernel-manual/kernel-manual-customization.xsl  |    7 +++++--
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 7efead1..d050ddc 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -212,12 +212,7 @@ STYLESHEET = $(DOC)/*.css
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


