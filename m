Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D3D0E0144D
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 07:36:43 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id C19FC4043B;
	Fri, 21 Sep 2012 16:06:42 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2012 16:36:31 +0200
Message-Id: <a2cc24326793e9906a296dc0c418bdd31f3b67c3.1348236303.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <6c83c2429607b3fe699319da8e29ac63f930b510.1348236303.git.timo.mueller@bmw-carit.de>
References: <cover.1348236303.git.timo.mueller@bmw-carit.de>
	<1af602c372ef3d674ffc3553ef7bd4f4532834e5.1348236303.git.timo.mueller@bmw-carit.de>
	<f423e465e06fe2ecc63b23eb00dfe583372ea662.1348236303.git.timo.mueller@bmw-carit.de>
	<7d9bce7a4c37456b0e358d4ad9188b079f99687c.1348236303.git.timo.mueller@bmw-carit.de>
	<ba6e360db9bb644f548e5a75f0685e83d63245f7.1348236303.git.timo.mueller@bmw-carit.de>
	<7221a4f5e94be6668c5333495055addc668bf6e8.1348236303.git.timo.mueller@bmw-carit.de>
	<5b5e5c1df2e3770b01be3f09b30bfd8b225a010d.1348236303.git.timo.mueller@bmw-carit.de>
	<a7eebfe2b6418a4303ea9c18e2fd8ac9d8771eb3.1348236303.git.timo.mueller@bmw-carit.de>
	<d97ef9a78723dc8d588443d0d65100e696150a98.1348236303.git.timo.mueller@bmw-carit.de>
	<5bd051a0e040ed93cfe8f1c066209b57a28d2119.1348236303.git.timo.mueller@bmw-carit.de>
	<00244269457915447285fd0d5dad561acd83007c.1348236303.git.timo.mueller@bmw-carit.de>
	<db281face4db3be937cd63227364840103af9e56.1348236303.git.timo.mueller@bmw-carit.de>
	<cf841cef6a10d69ab4be1ed3db65d1de62097a86.1348236303.git.timo.mueller@bmw-carit.de>
	<8283c1ed541d41e0f82109c2c6b2f1e0452c6223.1348236303.git.timo.mueller@bmw-carit.de>
	<4ff0866c4f03a6f11c62c700e27fb36d0278564d.1348236303.git.timo.mueller@bmw-carit.de>
	<3dfff12e740169f128caf4c0d72498447ee9e9a6.1348236303.git.timo.mueller@bmw-carit.de>
	<5d1dc613cedca89ca693b90013182693a90c3748.1348236303.git.timo.mueller@bmw-carit.de>
	<5daca14e9c74e218fe2da574fc873cbc60e9e53f.1348236303.git.timo.mueller@bmw-carit.de>
	<846946c79b28e3f8cfa72d81ef2163f74d9f073f.1348236303.git.timo.mueller@bmw-carit.de>
	<3988bd3902bb782724995678485e7e36561e8b65.1348236303.git.timo.mueller@bmw-carit.de>
	<d4bb708c72daeaae6b4c54fbd6ea0aeaef849353.1348236303.git.timo.mueller@bmw-carit.de>
	<f2286cc541019b5161ccc415e150c666c943bbad.1348236303.git.timo.mueller@bmw-carit.de>
	<3b0a9e28147d4253974456f1a6604ca1ef76de5a.1348236303.git.timo.mueller@bmw-carit.de>
	<34f8837b9cab25aa88b47ee7c8c22f940008fff2.1348236303.git.timo.mueller@bmw-carit.de>
	<6c83c2429607b3fe699319da8e29ac63f930b510.1348236303.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348236303.git.timo.mueller@bmw-carit.de>
References: <cover.1348236303.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv2 25/28] documentation/Makefile: Support for making Eclipse HTML yocto project qs manual
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
X-List-Received-Date: Fri, 21 Sep 2012 14:36:44 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

This target will generate eclipse help for the yocto-project-qs using
the yocto-project-qs-eclipse-customization.xsl stylesheet.

The output will be generated to a separate directory which can be used
for integrating the documentation into eclipse.
---
 documentation/Makefile |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 2887a95..1a29af5 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -275,7 +275,7 @@ endif
 eclipse: BASE_DIR = html/$(DOC)/
 
 eclipse:
-ifeq ($(filter $(DOC), adt-manual bsp-guide dev-manual kernel-manual poky-ref-manual),)
+ifeq ($(filter $(DOC), adt-manual bsp-guide dev-manual kernel-manual poky-ref-manual yocto-project-qs),)
 	@echo " "
 	@echo "ERROR: You can only create eclipse documentation"
 	@echo "       of the following documentation parts:"
@@ -287,6 +287,7 @@ ifeq ($(filter $(DOC), adt-manual bsp-guide dev-manual kernel-manual poky-ref-ma
 	@echo "       - The Yocto Project Kernel Architecture and"
 	@echo "                           Use Manual (kernel-manual)"
 	@echo "		  - The Yocto Project Reference Manual (poky-ref-manual)"
+	@echo "       - The Yocto Project Quick Start (yocto-project-qs)"
 	@echo " "
 else
 	cd $(DOC) && \
-- 
1.7.7.6


