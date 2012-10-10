Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75943E0141C
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 02:54:44 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 26C69404E0;
	Wed, 10 Oct 2012 11:23:21 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Wed, 10 Oct 2012 11:54:23 +0200
Message-Id: <62995a82f0e3d03540c076f056ef980864cffa48.1349444489.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <ed5fa3fbcabc31af488d36713ef3f15a756f20f9.1349444489.git.timo.mueller@bmw-carit.de>
References: <cover.1349444489.git.timo.mueller@bmw-carit.de>
	<8f13498e19681bb4922e3094fb165b4cf93d87e1.1349444489.git.timo.mueller@bmw-carit.de>
	<590057989cc2c7239f170407ecc57677d89f8427.1349444489.git.timo.mueller@bmw-carit.de>
	<8741c48acce523dc2403fddad90e253542970689.1349444489.git.timo.mueller@bmw-carit.de>
	<6df121f8751652c6872e72d6ef0c6973c11cffcb.1349444489.git.timo.mueller@bmw-carit.de>
	<5e1b21dd499bf7458e62beedc89a3e0e65c8d67c.1349444489.git.timo.mueller@bmw-carit.de>
	<e8162ea92a9cdac2478992e9d72e40cb35ff31fe.1349444489.git.timo.mueller@bmw-carit.de>
	<89991b32b195b9abc0d03302f563dbb995d0fa73.1349444489.git.timo.mueller@bmw-carit.de>
	<f2d1283260c98c90bc9d9069b215f89d5208506d.1349444489.git.timo.mueller@bmw-carit.de>
	<5522560475d0569a160dd86405b54bf8b46e65fc.1349444489.git.timo.mueller@bmw-carit.de>
	<f2b3916d97d7de730b9e88d45e8b921dcbb4f038.1349444489.git.timo.mueller@bmw-carit.de>
	<b1c9e8e275abb7e4740e3bfa9811422af808c00e.1349444489.git.timo.mueller@bmw-carit.de>
	<5fad608ef3f11cba3a7bc3ee0da3294ad7eeaf85.1349444489.git.timo.mueller@bmw-carit.de>
	<42a2e8839164b9f17ce2846e21125cabe6f0896b.1349444489.git.timo.mueller@bmw-carit.de>
	<f14c54079076b48ae05494161c45d82f53facc88.1349444489.git.timo.mueller@bmw-carit.de>
	<3be0d3b2813a6c786d67e8a1a04d159c892d3a30.1349444489.git.timo.mueller@bmw-carit.de>
	<2c7bf9dd12ea207e71031b7d41bf1cc47ad8ccd6.1349444489.git.timo.mueller@bmw-carit.de>
	<1071daedb70a3f451c37eb0038ab5cc9fa90c12a.1349444489.git.timo.mueller@bmw-carit.de>
	<a200d390a430a902046badff1c96697404384c51.1349444489.git.timo.mueller@bmw-carit.de>
	<2e807b75265e7d2895d1d8a4fc9facaf163297ea.1349444489.git.timo.mueller@bmw-carit.de>
	<1f19b8ff550ec6678587af36fbe27af99ea5b186.1349444489.git.timo.mueller@bmw-carit.de>
	<c5ba11c1e9b04b04be4ae1856c7e2e8cedb357d2.1349444489.git.timo.mueller@bmw-carit.de>
	<695af81ff1e9d882533ac6918b136a9d316abf69.1349444489.git.timo.mueller@bmw-carit.de>
	<24ba3060c9581d4f3a32535319e5cde061332826.1349444489.git.timo.mueller@bmw-carit.de>
	<ca4eedcded6f2a5ef36fb677cbe41f6935f9c517.1349444489.git.timo.mueller@bmw-carit.de>
	<361f4f5a3d7ee68fa20dceab69c053abc0fc8a0c.1349444489.git.timo.mueller@bmw-carit.de>
	<222e8c37a31b0ea405774a255b0bd2e4117e34b9.1349444489.git.timo.mueller@bmw-carit.de>
	<24053bac29a28c6774f6f5856fef42dd8e6a369f.1349444489.git.timo.mueller@bmw-carit.de>
	<d3134050f49bc4fe2d665891f7cab2a15b4f484f.1349444489.git.timo.mueller@bmw-carit.de>
	<ed5fa3fbcabc31af488d36713ef3f15a756f20f9.1349444489.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1349444489.git.timo.mueller@bmw-carit.de>
References: <cover.1349444489.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 30/35] documentation/Makefile: Support for making Eclipse HTML yocto project qs manual
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
X-List-Received-Date: Wed, 10 Oct 2012 09:54:45 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

This target will generate eclipse help for the yocto-project-qs using
the yocto-project-qs-eclipse-customization.xsl stylesheet.

The output will be generated to a separate directory which can be used
for integrating the documentation into eclipse.
---
 documentation/Makefile |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 85b0e39..a435bbf 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -273,7 +273,7 @@ endif
 eclipse: BASE_DIR = html/$(DOC)/
 
 eclipse:
-ifeq ($(filter $(DOC), adt-manual bsp-guide dev-manual kernel-manual poky-ref-manual),)
+ifeq ($(filter $(DOC), adt-manual bsp-guide dev-manual kernel-manual poky-ref-manual yocto-project-qs),)
 	@echo " "
 	@echo "ERROR: You can only create eclipse documentation"
 	@echo "       of the following documentation parts:"
@@ -285,6 +285,7 @@ ifeq ($(filter $(DOC), adt-manual bsp-guide dev-manual kernel-manual poky-ref-ma
 	@echo "       - The Yocto Project Kernel Architecture and"
 	@echo "                           Use Manual (kernel-manual)"
 	@echo "		  - The Yocto Project Reference Manual (poky-ref-manual)"
+	@echo "       - The Yocto Project Quick Start (yocto-project-qs)"
 	@echo " "
 else
 	@echo " "
-- 
1.7.7.6


