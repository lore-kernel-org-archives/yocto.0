Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E01DE01382
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 02:04:59 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id ED368400F8;
	Thu,  6 Sep 2012 10:35:55 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu,  6 Sep 2012 11:04:36 +0200
Message-Id: <6c9ad3a6e10e00777c86a664e5b4faf78e411fed.1346922110.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <bdbc5cf7f1e7b188ccabf9979b69b844f9735490.1346922110.git.timo.mueller@bmw-carit.de>
References: <cover.1346922110.git.timo.mueller@bmw-carit.de>
	<9c31105cfa8f5bfe6f7ec025de1084e79221e88f.1346922110.git.timo.mueller@bmw-carit.de>
	<bdbc5cf7f1e7b188ccabf9979b69b844f9735490.1346922110.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1346922110.git.timo.mueller@bmw-carit.de>
References: <cover.1346922110.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 3/6] documentation/Makefile: Added eclipse target for generating eclipse help
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

This target will generate eclipse help for the adt-manual using
the adt-manual-eclipse-customization.xsl stylesheet.

The output will be generated to a separate directory which can be used
for integrating the documentation into eclipse.
---
 documentation/Makefile |   20 ++++++++++++++++++++
 1 files changed, 20 insertions(+), 0 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 380193d..87e1fde 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -284,6 +284,26 @@ else
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
+	cd $(DOC); \
+		xsltproc $(XSLTOPTS) \
+				--stringparam base.dir '$(BASE_DIR)' \
+				-o eclipse/$(DOC).html \
+				$(DOC)-eclipse-customization.xsl $(DOC).xml; \
+		mv eclipse/toc.xml eclipse/$(DOC)-toc.xml; \
+		cp -rf $(FIGURES) eclipse/$(BASE_DIR)/$(FIGURES); \
+		cd ..
+endif
+
 tarball: html
 	@echo " "
 	@echo "******** Creating Tarball of document files"
-- 
1.7.7.6


