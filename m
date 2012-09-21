Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A325E0049D
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 07:36:42 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id B269B4006C;
	Fri, 21 Sep 2012 16:06:39 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2012 16:36:07 +0200
Message-Id: <1af602c372ef3d674ffc3553ef7bd4f4532834e5.1348236303.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1348236303.git.timo.mueller@bmw-carit.de>
References: <cover.1348236303.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348236303.git.timo.mueller@bmw-carit.de>
References: <cover.1348236303.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv2 01/28] documentation/Makefile: Stop eclipse target workflow if generation fails.
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

---
 documentation/Makefile |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 0537c22..005d670 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -295,13 +295,13 @@ ifneq ($(DOC),adt-manual)
 	@echo "       User's Guide"
 	@echo " "
 else
-	cd $(DOC); \
+	cd $(DOC) && \
 		xsltproc $(XSLTOPTS) \
 				--stringparam base.dir '$(BASE_DIR)' \
 				-o eclipse/$(DOC).html \
-				$(DOC)-eclipse-customization.xsl $(DOC).xml; \
-		mv eclipse/toc.xml eclipse/$(DOC)-toc.xml; \
-		cp -rf $(FIGURES) eclipse/$(BASE_DIR)/$(FIGURES); \
+				$(DOC)-eclipse-customization.xsl $(DOC).xml && \
+		mv eclipse/toc.xml eclipse/$(DOC)-toc.xml && \
+		cp -rf $(FIGURES) eclipse/$(BASE_DIR)/$(FIGURES) && \
 		cd ..
 endif
 
-- 
1.7.7.6


