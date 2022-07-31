Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87000C00140
	for <webhook@archiver.kernel.org>; Sun, 31 Jul 2022 18:03:32 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
 [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web09.15845.1659290608798109605
 for <yocto@lists.yoctoproject.org>;
 Sun, 31 Jul 2022 11:03:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PRlsZtsO;
 spf=pass (domain: gmail.com, ip: 209.85.215.172,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id h132so7825296pgc.10
        for <yocto@lists.yoctoproject.org>;
 Sun, 31 Jul 2022 11:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=e+63DzPUe1VUPEaYLElCSRF+huUHzF029pt92gg3KYU=;
        b=PRlsZtsOXjs7+AYSbS2TGCXO6YaqHiFA5VbjceJx4xGXo7xen7ogsPeq55NaRzrnU9
         aGRx6e4QEUislidz5NS2+vNf8mdRd1lvn7QHMXYg0yu4N1KjHF4c93R6I/zhtFZOBrEz
         0dhofTKSB7vr5umbV3VMhLlSv3zq0ZwCENQCxkQvOfwZ+bGL4xY0unEpvOCv/9mZkbon
         vzrlw4rfFJpOo2zoEA+qy2D4YJpPDXITxRc3CKFpEq5y4Up6hbndsrgAvIxnycM8Pioo
         EufnrllUMrebOTTDGSMFofs/o3c9R18/p3EB0UdWkFiFgDWM1AeiByrxoedLRLYyjk6G
         n4Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=e+63DzPUe1VUPEaYLElCSRF+huUHzF029pt92gg3KYU=;
        b=swMHDovGfzWW+BOwyYWd2JO3N8zEvPOLrbHe3fWq8lKuxXWPorlIAPZMRi+eeB5cKf
         5RI4/EOQFB0Si1rbP/Ew/q7K/R3WWX9Gv8KadwqiS5Y+PGWzMK4gxIigE6SVTjx5FDox
         mLKU16x8CyhE+DBCKQpkxTf24boeGsVamPXUMLoLc24boZssHG+1R0k0DxcbRPekny5o
         uJkzFH4Js46sQK3AnhSxWhUFtPIHcgOM0UEwL04PkYKRtMjqXw1G5J7NoDL/WvIsC1YG
         MHmy2WypSkKNJsiacVkLmI539SWyNP9ka3/9DUaZuq96bgi5yMdbQPPUTE7TsxqM6y6q
         CfYA==
X-Gm-Message-State: AJIora88QjNGXQbFM/nfR/o1GnmodS79+aMl7Fu3WkGUfFIgoll4Pwv1
	ONg+gLH2FNYHJ44mNR6TKNGD7UiCMwQ=
X-Google-Smtp-Source: 
 AGRyM1t0w+5ylIyuAXJfBMPqb84n2QakpxYwpGqhH3klhGas4h/yojrcK39PR5qEz8LS63yQKCipaA==
X-Received: by 2002:a05:6a00:1589:b0:52a:eb00:71d8 with SMTP id
 u9-20020a056a00158900b0052aeb0071d8mr12546954pfk.38.1659290607432;
        Sun, 31 Jul 2022 11:03:27 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 x11-20020a170902b40b00b0016cf714d029sm7605920plr.288.2022.07.31.11.03.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 11:03:26 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] lkrg: update to 0.9.4
Date: Sun, 31 Jul 2022 11:01:25 -0700
Message-Id: <20220731180125.2321527-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 31 Jul 2022 18:03:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57708

drop Makefile fixup patch. Use sed instead

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../lkrg/files/makefile_cleanup.patch         | 53 -------------------
 ...g-module_0.9.3.bb => lkrg-module_0.9.4.bb} | 16 +++---
 2 files changed, 10 insertions(+), 59 deletions(-)
 delete mode 100644 recipes-kernel/lkrg/files/makefile_cleanup.patch
 rename recipes-kernel/lkrg/{lkrg-module_0.9.3.bb => lkrg-module_0.9.4.bb} (70%)

diff --git a/recipes-kernel/lkrg/files/makefile_cleanup.patch b/recipes-kernel/lkrg/files/makefile_cleanup.patch
deleted file mode 100644
index f29afbe..0000000
--- a/recipes-kernel/lkrg/files/makefile_cleanup.patch
+++ /dev/null
@@ -1,53 +0,0 @@
-Upstream-Status: Inappropriate [embedded specific]
-  
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-
-Index: git/Makefile
-===================================================================
---- git.orig/Makefile
-+++ git/Makefile
-@@ -7,15 +7,8 @@
- 
- P_OUTPUT = output
- P_PWD ?= $(shell pwd)
--P_KVER ?= $(shell uname -r)
- P_BOOTUP_SCRIPT ?= scripts/bootup/lkrg-bootup.sh
- TARGET := p_lkrg
--ifneq ($(KERNELRELEASE),)
--    KERNEL := /lib/modules/$(KERNELRELEASE)/build
--else
--    ## KERNELRELEASE not set.
--    KERNEL := /lib/modules/$(P_KVER)/build
--endif
- 
- #
- # Use DEBUG=on for debug build.
-@@ -94,14 +87,13 @@ $(TARGET)-objs += src/modules/ksyms/p_re
-                   src/p_lkrg_main.o
- 
- 
--all:
--#	$(MAKE) -C $(KERNEL) M=$(P_PWD) modules CONFIG_DEBUG_SECTION_MISMATCH=y
--	$(MAKE) -C $(KERNEL) M=$(P_PWD) modules
-+modules:
-+	$(MAKE) -C $(KERNEL_SRC) M=$(P_PWD) modules
- 	mkdir -p $(P_OUTPUT)
- 	cp $(P_PWD)/$(TARGET).ko $(P_OUTPUT)
- 
--install:
--	$(MAKE) -C $(KERNEL) M=$(P_PWD) modules_install
-+moduled_install:
-+	$(MAKE) -C $(KERNEL_SRC) M=$(P_PWD) modules_install
- 	depmod -a
- 	$(P_PWD)/$(P_BOOTUP_SCRIPT) install
- 
-@@ -109,7 +101,7 @@ uninstall:
- 	$(P_PWD)/$(P_BOOTUP_SCRIPT) uninstall
- 
- clean:
--	$(MAKE) -C $(KERNEL) M=$(P_PWD) clean
-+	$(MAKE) -C $(KERNEL_SRC) M=$(P_PWD) clean
- 	$(RM) Module.markers modules.order
- 	$(RM) $(P_PWD)/src/modules/kmod/client/kmod/Module.markers
- 	$(RM) $(P_PWD)/src/modules/kmod/client/kmod/modules.order
diff --git a/recipes-kernel/lkrg/lkrg-module_0.9.3.bb b/recipes-kernel/lkrg/lkrg-module_0.9.4.bb
similarity index 70%
rename from recipes-kernel/lkrg/lkrg-module_0.9.3.bb
rename to recipes-kernel/lkrg/lkrg-module_0.9.4.bb
index 2553974..fa46cb6 100644
--- a/recipes-kernel/lkrg/lkrg-module_0.9.3.bb
+++ b/recipes-kernel/lkrg/lkrg-module_0.9.4.bb
@@ -5,15 +5,13 @@ SECTION = "security"
 HOMEPAGE = "https://www.openwall.com/lkrg/"
 LICENSE = "GPL-2.0-only"
 
-LIC_FILES_CHKSUM = "file://LICENSE;md5=5105ead24b08a32954f34cbaa7112432"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=3f3e5dd56319d33a1944d635c1c86c6f"
 
 DEPENDS = "virtual/kernel elfutils"
 
-SRC_URI = "git://github.com/lkrg-org/lkrg.git;protocol=https;branch=main \
-           file://makefile_cleanup.patch \
-"
+SRC_URI = "git://github.com/lkrg-org/lkrg.git;protocol=https;branch=main"
 
-SRCREV = "c578e9f786299b67ffd62057b4534b0bf4fb7ece"
+SRCREV = "c58cb52145b8e8ccc6bd19079f5c835933281cdc"
 
 S = "${WORKDIR}/git"
 
@@ -21,7 +19,13 @@ inherit module kernel-module-split
 
 MAKE_TARGETS = "modules"
 
-MODULE_NAME = "p_lkrg"
+MODULE_NAME = "lkrg"
+
+do_configure:append () {
+    sed -i -e 's/^all/modules/' ${S}/Makefile
+    sed -i -e 's/^install/modules_install/' ${S}/Makefile
+    sed -i -e 's/KERNEL/KERNEL_SRC/g' ${S}/Makefile
+}
 
 module_do_install() {
     install -d ${D}${nonarch_base_libdir}/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME}
-- 
2.25.1


