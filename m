Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 700D8E01446
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2012 00:59:58 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id D4ABF40238;
	Fri, 30 Nov 2012 09:24:43 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 30 Nov 2012 09:59:21 +0100
Message-Id: <14c72e38f8845ff1c42e0b5bc5e01c76d45dbe57.1354264975.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <f1b31f8514fc06af68ab00b9920498a2ba3271f6.1354264975.git.timo.mueller@bmw-carit.de>
References: <cover.1354264975.git.timo.mueller@bmw-carit.de>
	<ae85de5617553768dab8adfb8e33682d6f496f98.1354264975.git.timo.mueller@bmw-carit.de>
	<0ef502fd88b1e7806abb8d93ebd53cd89769a1db.1354264975.git.timo.mueller@bmw-carit.de>
	<f1b31f8514fc06af68ab00b9920498a2ba3271f6.1354264975.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354264975.git.timo.mueller@bmw-carit.de>
References: <cover.1354264975.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv2 04/35] documentation/Makefile: Support for making Eclipse HTML adt manual
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

This target will generate eclipse help for the adt-manual using
the adt-manual-eclipse-customization.xsl stylesheet.

The output will be generated to a separate directory which can be used
for integrating the documentation into eclipse.
---
 documentation/Makefile |   23 +++++++++++++++++++++++
 1 files changed, 23 insertions(+), 0 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 9a15651..b071efb 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -279,6 +279,29 @@ else
 endif
 
 
+eclipse: BASE_DIR = html/$(DOC)/
+
+eclipse:
+ifneq ($(DOC),adt-manual)
+	@echo " "
+	@echo "ERROR: You can only create eclipse documentation of the"
+	@echo "       Yocto Project Application Development Toolkit (ADT)"
+	@echo "       User's Guide"
+	@echo " "
+else
+	@echo " "
+	@echo "******** Building eclipse help of "$(DOC)
+	@echo " "
+	cd $(DOC) && \
+		xsltproc $(XSLTOPTS) \
+				--stringparam base.dir '$(BASE_DIR)' \
+				-o eclipse/$(DOC).html \
+				$(DOC)-eclipse-customization.xsl $(DOC).xml && \
+		mv eclipse/toc.xml eclipse/$(DOC)-toc.xml && \
+		cp -rf $(FIGURES) eclipse/$(BASE_DIR)/$(FIGURES) && \
+		cd ..
+endif
+
 tarball: html
 	@echo " "
 	@echo "******** Creating Tarball of document files"
-- 
1.7.7.6


