Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D73AE0142A
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 06:38:35 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id CDE19400B6;
	Thu, 20 Sep 2012 15:08:38 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu, 20 Sep 2012 15:38:08 +0200
Message-Id: <e8d106d7f16af5bc0819650ae9471f7936b0d71e.1348147047.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <b7d9dbe40bd79fca4d81128448c0b2becec50589.1348147047.git.timo.mueller@bmw-carit.de>
References: <cover.1348147047.git.timo.mueller@bmw-carit.de>
	<1af602c372ef3d674ffc3553ef7bd4f4532834e5.1348147047.git.timo.mueller@bmw-carit.de>
	<0d6c673c3b5ee40fe7dc5a9ca91ec7d8d35440a0.1348147047.git.timo.mueller@bmw-carit.de>
	<b7d9dbe40bd79fca4d81128448c0b2becec50589.1348147047.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348147047.git.timo.mueller@bmw-carit.de>
References: <cover.1348147047.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 04/25] documentation/Makefile: Support for making Eclipse HTML dev manual
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

This target will generate eclipse help for the dev-manual using
the dev-manual-eclipse-customization.xsl stylesheet.

The output will be generated to a separate directory which can be used
for integrating the documentation into eclipse.
---
 documentation/Makefile |   10 ++++++----
 1 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 1e8b558..812a6d7 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -284,11 +284,13 @@ endif
 eclipse: BASE_DIR = html/$(DOC)/
 
 eclipse:
-ifneq ($(DOC),adt-manual)
+ifeq ($(filter $(DOC), adt-manual dev-manual),)
 	@echo " "
-	@echo "ERROR: You can only create eclipse documentation of the"
-	@echo "       Yocto Project Application Development Toolkit (ADT)"
-	@echo "       User's Guide"
+	@echo "ERROR: You can only create eclipse documentation"
+	@echo "       of the following documentation parts:"
+	@echo " "
+	@echo "       - The Yocto Project Application Developer's Guide (adt-manual)"
+	@echo "       - The Yocto Project Development Manual (dev-manual)"
 	@echo " "
 else
 	cd $(DOC) && \
-- 
1.7.7.6


