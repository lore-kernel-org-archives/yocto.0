Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9323CC00140
	for <webhook@archiver.kernel.org>; Sun, 31 Jul 2022 18:08:22 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web08.15705.1659290899343698193
 for <yocto@lists.yoctoproject.org>;
 Sun, 31 Jul 2022 11:08:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Lt7VvxHZ;
 spf=pass (domain: gmail.com, ip: 209.85.216.48,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id
 d65-20020a17090a6f4700b001f303a97b14so9767235pjk.1
        for <yocto@lists.yoctoproject.org>;
 Sun, 31 Jul 2022 11:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Qz3uzicMkFFAXRur4TTUAHl9y9QwpbrpfGeR0mSVxng=;
        b=Lt7VvxHZuAkUwRHtqTz/Ur19lLajqvckpmG7ZPoTHWNG/t/95XDHVpb6p9yPVTLPoJ
         k+FZb6mtlgS+7smxI0PGjOxtR5lrqLl8e91gk0Ntny5HzWI1O0IHbvO/bnXYFXAqOpao
         sDdZnlvLaSvE8GgbmB5Gb/+xeT6g64RdOYomdUnh39xC8ZO4LEC/nIh2iegBqWoc75w/
         Ly/xa00G3/9mmh74IsexHR+4liOhr0cyadpKYzjsYMdIpSYghKxc8Fh1x+W3x1OuzsHe
         iAa6lud20rCuZi3kl9rzmnjKGAyq1SL9MPvPBWpiEu3ITiBULHeKuqMV9/0CcWMAvSX0
         PmRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Qz3uzicMkFFAXRur4TTUAHl9y9QwpbrpfGeR0mSVxng=;
        b=u3QG3WzwSxXubH+eW3E2Q5yOxcltlO5Y7njK8a8NHbQDXCcWDhqLAqdjPUzM0zN/Qs
         jVmzgqYYyIU8b7oZWlaAFufVV/rv6DLGgaX5qiOpTFbljgspGJn3HXwDVwRmniaN+qd4
         GIDEFqEmQ/D/QrsUq4BMU9nH6jYBpw/hZwz6E/wK0/jpeA3/pw52xecuGC/32Qc/7v+c
         ybCa42/2Tfx31wgyu/fv5D4f2hYdhdUKkQmrVVM9GFmpH6B2y4vNk3DBWSYaBKuO8YnD
         tUbYi+fo1xLg2QyLH8boOMRGU0EgZa4Pd0FUToRwgqmkQJkHUPed2D4erIzSLb8sqDOp
         OFCA==
X-Gm-Message-State: ACgBeo3kOiX6ut8wKU9mABpeLnDIQ8qY5XTtMz8w0jAVBQQYKC519i0H
	jXiyDfbianpN9/C4qN3M+A8BrvHoOz0=
X-Google-Smtp-Source: 
 AA6agR5DQojW0xV8N9GV/WV6nj9QEsY54kbRyHyShYSqbXf8o1ycZrnLRnucwCoDlgRkvkXfx4v+zg==
X-Received: by 2002:a17:90a:d158:b0:1ec:8298:40dc with SMTP id
 t24-20020a17090ad15800b001ec829840dcmr15221647pjw.51.1659290898222;
        Sun, 31 Jul 2022 11:08:18 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 p2-20020a170902a40200b0016a0bf0ce32sm7748325plq.70.2022.07.31.11.08.17
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 11:08:17 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][v2][PATCH] lkrg: update to 0.9.4
Date: Sun, 31 Jul 2022 11:06:15 -0700
Message-Id: <20220731180615.2321713-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 31 Jul 2022 18:08:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57709

drop Makefile fixup patch. Use sed instead

LIC_FILES_CHKSUM update do to yr update

Signed-off-by: Armin Kuster <akuster808@gmail.com>

---
V2]
Add LIC_FILES_CHKSUM change reason
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


