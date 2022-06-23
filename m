Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D24CEC43334
	for <webhook@archiver.kernel.org>; Thu, 23 Jun 2022 02:45:45 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
 [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web09.3035.1655952339977287045
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jun 2022 19:45:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=H4WZx7gm;
 spf=pass (domain: gmail.com, ip: 209.85.215.176,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id r66so11883316pgr.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jun 2022 19:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JOAoDcBoL8L5bcJsYtFLgsdhrp2tWeKpwM6TI/oPozY=;
        b=H4WZx7gmMM5F+LwLAP/0TIpESN9vxLmLNYeOmpF+fA28Gq8vrJLsnQ8P7m1uljN1Tp
         87cV07luao/FAAQEUc5/YMEHReaRdSZxSQIyjOXw/IvgxGKXlt6S7nHf8tDX7pJzD5l4
         kqumL+S4Hk/qTIlIYt0x/w7UqiFtwVufUAnVQpbC3i/PmiNwesyGz57yNigCDypwToxq
         EQ6II4xMwXxD9IS3MFqukoz1nCodoJ45kfX3UK1rtIOuPNszSWmp2Z9CRKxWCqWo4oJe
         IOYGvGFKUC7j38mjynjHPrcAc6iTkwsvtWVhawcfLPxRzb60nOzbCFMmLhPqE6DJxZfh
         heXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JOAoDcBoL8L5bcJsYtFLgsdhrp2tWeKpwM6TI/oPozY=;
        b=YDSLIPVGSZ4bqX5D8FaitbPP3SJV1u5R53X0+D8+z8mflFQKqq0ueJgQzxLAWswoSW
         G9IUWYPWZ6A5lKv5RKXkPTjdPE5nhQ9dO4m9HeyeJ+N2TwnMlOA2O79OrvHm+gOATnSf
         gZe3rXQesw1nKV6QJBKMCB9WQZYPCKAjgGXDx49RDJZ01tZ2LY8a6YLRmiUPlaKN3gV+
         TjpOmoO30duSbIJUGxzSFo30i5+VQ8+y4pmetWzMiZpE5xbHLe+1Tuj71+kIVZttvOzz
         b13JodRJYxIiLAP9tnMJMgLI26ETnj+uMnCgB09dU6eigArNTlndOMVKfJnXKoFZ3lNc
         LVRg==
X-Gm-Message-State: AJIora8ocSNXsrKqCV1jp6Os1EVDG/4PdGQsj0ecsNyyYNy3+/ePC2jG
	CsgPxavPsUGjOVOm/sWfdV+5BGCGlc4=
X-Google-Smtp-Source: 
 AGRyM1sB3EV3TQOyfnmhKvZtRlUq3e4vOY2NxcUNPaIGmKCEL/bCJILyy/3mbhSEDqNU7Ihd9FYf9A==
X-Received: by 2002:a63:2c01:0:b0:3fe:d7f:24c8 with SMTP id
 s1-20020a632c01000000b003fe0d7f24c8mr5819076pgs.365.1655952338863;
        Wed, 22 Jun 2022 19:45:38 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 w126-20020a636284000000b0040d4c8e335csm383226pgb.75.2022.06.22.19.45.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jun 2022 19:45:38 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] lkrg: update to 0.9.3
Date: Wed, 22 Jun 2022 19:43:36 -0700
Message-Id: <20220623024336.1715226-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Jun 2022 02:45:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57380

refresh patch

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../lkrg/files/makefile_cleanup.patch         | 72 +++++++------------
 ...g-module_0.9.2.bb => lkrg-module_0.9.3.bb} |  7 +-
 2 files changed, 30 insertions(+), 49 deletions(-)
 rename recipes-kernel/lkrg/{lkrg-module_0.9.2.bb => lkrg-module_0.9.3.bb} (90%)

diff --git a/recipes-kernel/lkrg/files/makefile_cleanup.patch b/recipes-kernel/lkrg/files/makefile_cleanup.patch
index 799b1a6..f29afbe 100644
--- a/recipes-kernel/lkrg/files/makefile_cleanup.patch
+++ b/recipes-kernel/lkrg/files/makefile_cleanup.patch
@@ -1,73 +1,53 @@
-Upstream-Status: Pending
-
-This needs more work. Its my starting point.
-
+Upstream-Status: Inappropriate [embedded specific]
+  
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
+
 Index: git/Makefile
 ===================================================================
 --- git.orig/Makefile
 +++ git/Makefile
-@@ -4,28 +4,10 @@
- # Author:
- #  - Adam 'pi3' Zabrocki (http://pi3.com.pl)
- ##
--
--P_OUTPUT = output
+@@ -7,15 +7,8 @@
+ 
+ P_OUTPUT = output
  P_PWD ?= $(shell pwd)
 -P_KVER ?= $(shell uname -r)
--P_BOOTUP_SCRIPT ?= scripts/bootup/lkrg-bootup.sh
--TARGET := p_lkrg
+ P_BOOTUP_SCRIPT ?= scripts/bootup/lkrg-bootup.sh
+ TARGET := p_lkrg
 -ifneq ($(KERNELRELEASE),)
 -    KERNEL := /lib/modules/$(KERNELRELEASE)/build
 -else
 -    ## KERNELRELEASE not set.
 -    KERNEL := /lib/modules/$(P_KVER)/build
 -endif
--
--#
--# Uncomment for debug compilation
--#
--# ccflags-m := -ggdb -DP_LKRG_DEBUG_BUILD -finstrument-functions
--# ccflags-y := ${ccflags-m}
--# p_lkrg-objs += src/modules/print_log/p_lkrg_debug_log.o
  
--obj-m += $(TARGET).o
--$(TARGET)-objs += src/modules/ksyms/p_resolve_ksym.o \
-+obj-m := p_lkrg.o
-+p_lkrg-y := src/modules/ksyms/p_resolve_ksym.o \
-                   src/modules/hashing/p_lkrg_fast_hash.o \
-                   src/modules/comm_channel/p_comm_channel.o \
-                   src/modules/integrity_timer/p_integrity_timer.o \
-@@ -92,23 +74,14 @@ $(TARGET)-objs += src/modules/ksyms/p_re
+ #
+ # Use DEBUG=on for debug build.
+@@ -94,14 +87,13 @@ $(TARGET)-objs += src/modules/ksyms/p_re
                    src/p_lkrg_main.o
  
  
 -all:
 -#	$(MAKE) -C $(KERNEL) M=$(P_PWD) modules CONFIG_DEBUG_SECTION_MISMATCH=y
 -	$(MAKE) -C $(KERNEL) M=$(P_PWD) modules
--	mkdir -p $(P_OUTPUT)
--	cp $(P_PWD)/$(TARGET).ko $(P_OUTPUT)
--
--install:
--	$(MAKE) -C $(KERNEL) M=$(P_PWD) modules_install
--	depmod -a
--	$(P_PWD)/$(P_BOOTUP_SCRIPT) install
- 
--uninstall:
--	$(P_PWD)/$(P_BOOTUP_SCRIPT) uninstall
 +modules:
 +	$(MAKE) -C $(KERNEL_SRC) M=$(P_PWD) modules
-+
-+modules_install:
+ 	mkdir -p $(P_OUTPUT)
+ 	cp $(P_PWD)/$(TARGET).ko $(P_OUTPUT)
+ 
+-install:
+-	$(MAKE) -C $(KERNEL) M=$(P_PWD) modules_install
++moduled_install:
 +	$(MAKE) -C $(KERNEL_SRC) M=$(P_PWD) modules_install
+ 	depmod -a
+ 	$(P_PWD)/$(P_BOOTUP_SCRIPT) install
+ 
+@@ -109,7 +101,7 @@ uninstall:
+ 	$(P_PWD)/$(P_BOOTUP_SCRIPT) uninstall
  
  clean:
 -	$(MAKE) -C $(KERNEL) M=$(P_PWD) clean
--	$(RM) Module.markers modules.order
--	$(RM) $(P_PWD)/src/modules/kmod/client/kmod/Module.markers
--	$(RM) $(P_PWD)/src/modules/kmod/client/kmod/modules.order
--	$(RM) -rf $(P_OUTPUT)
-+	rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
-+	rm -f Module.markers Module.symvers modules.order
-+	rm -rf .tmp_versions Modules.symvers
++	$(MAKE) -C $(KERNEL_SRC) M=$(P_PWD) clean
+ 	$(RM) Module.markers modules.order
+ 	$(RM) $(P_PWD)/src/modules/kmod/client/kmod/Module.markers
+ 	$(RM) $(P_PWD)/src/modules/kmod/client/kmod/modules.order
diff --git a/recipes-kernel/lkrg/lkrg-module_0.9.2.bb b/recipes-kernel/lkrg/lkrg-module_0.9.3.bb
similarity index 90%
rename from recipes-kernel/lkrg/lkrg-module_0.9.2.bb
rename to recipes-kernel/lkrg/lkrg-module_0.9.3.bb
index 85f7d44..2553974 100644
--- a/recipes-kernel/lkrg/lkrg-module_0.9.2.bb
+++ b/recipes-kernel/lkrg/lkrg-module_0.9.3.bb
@@ -9,10 +9,11 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=5105ead24b08a32954f34cbaa7112432"
 
 DEPENDS = "virtual/kernel elfutils"
 
-SRCREV = "43db5f19fca259feb1962f6db33382348cbc8320"
-
 SRC_URI = "git://github.com/lkrg-org/lkrg.git;protocol=https;branch=main \
-           file://makefile_cleanup.patch "
+           file://makefile_cleanup.patch \
+"
+
+SRCREV = "c578e9f786299b67ffd62057b4534b0bf4fb7ece"
 
 S = "${WORKDIR}/git"
 
-- 
2.25.1


