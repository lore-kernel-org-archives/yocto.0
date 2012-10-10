Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEC6FE01214
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 02:54:42 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id E2AD5400E8;
	Wed, 10 Oct 2012 11:23:17 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Wed, 10 Oct 2012 11:53:57 +0200
Message-Id: <6df121f8751652c6872e72d6ef0c6973c11cffcb.1349444489.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <8741c48acce523dc2403fddad90e253542970689.1349444489.git.timo.mueller@bmw-carit.de>
References: <cover.1349444489.git.timo.mueller@bmw-carit.de>
	<8f13498e19681bb4922e3094fb165b4cf93d87e1.1349444489.git.timo.mueller@bmw-carit.de>
	<590057989cc2c7239f170407ecc57677d89f8427.1349444489.git.timo.mueller@bmw-carit.de>
	<8741c48acce523dc2403fddad90e253542970689.1349444489.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1349444489.git.timo.mueller@bmw-carit.de>
References: <cover.1349444489.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 04/35] documentation/Makefile: Support for making Eclipse HTML adt manual
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
X-List-Received-Date: Wed, 10 Oct 2012 09:54:42 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

This target will generate eclipse help for the adt-manual using
the adt-manual-eclipse-customization.xsl stylesheet.

The output will be generated to a separate directory which can be used
for integrating the documentation into eclipse.
---
 documentation/Makefile |   23 +++++++++++++++++++++++
 1 files changed, 23 insertions(+), 0 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 380193d..66eecaa 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -284,6 +284,29 @@ else
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


