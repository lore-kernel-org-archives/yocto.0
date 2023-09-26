Return-Path: <anthony.t.davies@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68665E8181B
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 04:38:18 +0000 (UTC)
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
 by mx.groups.io with SMTP id smtpd.web10.11868.1695703088627729430
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Sep 2023 21:38:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OwIONMT8;
 spf=pass (domain: gmail.com, ip: 209.85.161.54, mailfrom: anthony.t.davies@gmail.com)
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-57b68556d6dso3731037eaf.1
        for <yocto@lists.yoctoproject.org>; Mon, 25 Sep 2023 21:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695703087; x=1696307887; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uiQl2Fs+CDDo4Ijz1ON0pQm6BEdZ/9KgO806xGqSFGU=;
        b=OwIONMT8CoD2H18qqybDXKU7SGeN/TowBTauOSkyqjR2FOCzK0lRf0qh8TtTFTEm4I
         MxXZCfeTtgqqlb4iUEKxvl2/AVMsscArS9wLYpLZ0oie7QFT2/78eHJ+76MK8HLVLosL
         UWIX9yF50T5dDmvDEgIGWXNyHctTVZhERQTmyVuNXwmgorrQuc98qF8wBszcw5Mod2gr
         bM4MIj1crkWACVlSWUp068+KY+m/7sIq5sNkyHyPufdxnW8gnBy7n+tMAgHzthvfKClH
         1RGAVpPFU3ygCC9kErUF2SZvPzmh55Rtrspm8bC0ECiYv91bFm+tiq73EJWyiSVZscHc
         euJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695703087; x=1696307887;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uiQl2Fs+CDDo4Ijz1ON0pQm6BEdZ/9KgO806xGqSFGU=;
        b=LEWH3QGgzCcXQd+KA6JHZsWwS8YZediup0+yF6a3RI8lfHZ/LA2ACgCtiXfWBlmNto
         o4eP9TTTw7s4ACmmhLhbbp+pB5BEricyGrEpNVHNC9IlqmPZy2kz7FVffJEYYnuBbjqP
         +QOwmiZEmnBE5FoURyGmH/fvLRq1csMxjkFOaIkPIbl8XqAHFMeUHsRmpi8HrtybIxu0
         iFYsYQMmHHRhyiqjg1ieYh9RJsRgqvJ9SVJyEECOefKzEyEXgNRu2IPy/mtjJDMtImi2
         /BMTRnwhUn6QbjD7Y/k/9NdGXAQm3mf3O9DSeANBsUI8+KNct3HK3nfcmgc1cqSSn6Kk
         IHpA==
X-Gm-Message-State: AOJu0Yyyr5JPtpGtbbuCOo6EUtfJLmYHoWGTCdnskwC1KDkmMCgrBXqk
	zbKEd3bDQOJorzA5FvKQ3zCDGnYgcqgSLQ==
X-Google-Smtp-Source: AGHT+IFoeRUVG5Xfb3PkjlahzUlOh2FqjmdBh2CneWJt8QdUHdnQPpqskqg2dxkPlE7TLKiXm2fHmQ==
X-Received: by 2002:a05:6358:284:b0:133:b42:69ca with SMTP id w4-20020a056358028400b001330b4269camr9218486rwj.18.1695703087461;
        Mon, 25 Sep 2023 21:38:07 -0700 (PDT)
Received: from localhost.localdomain ([206.83.112.219])
        by smtp.gmail.com with ESMTPSA id l6-20020a63be06000000b005740ba1d649sm3460144pgf.88.2023.09.25.21.38.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 21:38:07 -0700 (PDT)
From: anthony.t.davies@gmail.com
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Anthony Davies <anthony.t.davies@gmail.com>
Subject: [meta-rockchip] [PATCH] Allow KERNEL_IMAGETYPE override v2
Date: Tue, 26 Sep 2023 14:36:58 +1000
Message-Id: <20230926043657.3897658-1-anthony.t.davies@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 04:38:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61114

From: Anthony Davies <anthony.t.davies@gmail.com>

Apologies, this is the correct patch

Updated inc files to allow overriding KERNEL_IMAGETYPE in local.conf

Fixed bug where dtb couldnt be found when generating KERNEL_IMAGETYPE
other then fitImage image due to KERNEL_DEVICETREE containing the dtb
directory which is not available in the DEPLOY_DIR_IMAGE directory
---
 conf/machine/include/px30.inc         | 2 +-
 conf/machine/include/rk3066.inc       | 2 +-
 conf/machine/include/rk3188.inc       | 2 +-
 conf/machine/include/rk3288.inc       | 2 +-
 conf/machine/include/rk3328.inc       | 2 +-
 conf/machine/include/rk3399.inc       | 2 +-
 conf/machine/include/rockchip-wic.inc | 5 ++++-
 7 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/conf/machine/include/px30.inc b/conf/machine/include/px30.inc
index a3727fb..badcbcd 100644
--- a/conf/machine/include/px30.inc
+++ b/conf/machine/include/px30.inc
@@ -12,7 +12,7 @@ require conf/machine/include/rockchip-wic.inc
 
 KBUILD_DEFCONFIG ?= "defconfig"
 KERNEL_CLASSES = "kernel-fitimage"
-KERNEL_IMAGETYPE = "fitImage"
+KERNEL_IMAGETYPE ?= "fitImage"
 
 TFA_PLATFORM = "px30"
 TFA_BUILD_TARGET = "bl31"
diff --git a/conf/machine/include/rk3066.inc b/conf/machine/include/rk3066.inc
index fa97906..3510df2 100644
--- a/conf/machine/include/rk3066.inc
+++ b/conf/machine/include/rk3066.inc
@@ -11,4 +11,4 @@ SERIAL_CONSOLES = "115200;ttyS2"
 
 KBUILD_DEFCONFIG = "multi_v7_defconfig"
 KERNEL_FEATURES:append:rk3066 = " bsp/rockchip/remove-non-rockchip-arch-arm.scc"
-KERNEL_IMAGETYPE = "zImage"
+KERNEL_IMAGETYPE ?= "zImage"
diff --git a/conf/machine/include/rk3188.inc b/conf/machine/include/rk3188.inc
index bc96a0c..830f908 100644
--- a/conf/machine/include/rk3188.inc
+++ b/conf/machine/include/rk3188.inc
@@ -11,4 +11,4 @@ SERIAL_CONSOLES = "115200;ttyFIQ0"
 
 KBUILD_DEFCONFIG = "multi_v7_defconfig"
 KERNEL_FEATURES:append:rk3188 = " bsp/rockchip/remove-non-rockchip-arch-arm.scc"
-KERNEL_IMAGETYPE = "zImage"
+KERNEL_IMAGETYPE ?= "zImage"
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index b4c559d..e682c0b 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -11,6 +11,6 @@ SERIAL_CONSOLES = "115200;ttyS2"
 
 KBUILD_DEFCONFIG ?= "multi_v7_defconfig"
 KERNEL_FEATURES:append:rk3288 = " bsp/rockchip/remove-non-rockchip-arch-arm.scc"
-KERNEL_IMAGETYPE = "zImage"
+KERNEL_IMAGETYPE ?= "zImage"
 
 UBOOT_SUFFIX ?= "bin"
diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
index f9f8792..6be777c 100644
--- a/conf/machine/include/rk3328.inc
+++ b/conf/machine/include/rk3328.inc
@@ -13,7 +13,7 @@ require conf/machine/include/rockchip-wic.inc
 KBUILD_DEFCONFIG ?= "defconfig"
 KERNEL_FEATURES:append:rk3328 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
 KERNEL_CLASSES = "kernel-fitimage"
-KERNEL_IMAGETYPE = "fitImage"
+KERNEL_IMAGETYPE ?= "fitImage"
 
 TFA_PLATFORM = "rk3328"
 TFA_BUILD_TARGET = "bl31"
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
index 88c87af..5a3f439 100644
--- a/conf/machine/include/rk3399.inc
+++ b/conf/machine/include/rk3399.inc
@@ -13,7 +13,7 @@ require conf/machine/include/rockchip-wic.inc
 KBUILD_DEFCONFIG ?= "defconfig"
 KERNEL_FEATURES:append:rk3399 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
 KERNEL_CLASSES = "kernel-fitimage"
-KERNEL_IMAGETYPE = "fitImage"
+KERNEL_IMAGETYPE ?= "fitImage"
 
 TFA_PLATFORM = "rk3399"
 TFA_BUILD_TARGET = "bl31"
diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
index 635288c..8ff6066 100644
--- a/conf/machine/include/rockchip-wic.inc
+++ b/conf/machine/include/rockchip-wic.inc
@@ -11,9 +11,12 @@ WKS_FILE_DEPENDS ?= " \
 	virtual/bootloader \
 	virtual/kernel \
 	"
+ 
+KERNEL_DEVICETREE_BASENAME = "${@os.path.basename('${KERNEL_DEVICETREE}')}"
+
 IMAGE_BOOT_FILES = " \
 	${KERNEL_IMAGETYPE} \
-	${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '${KERNEL_DEVICETREE}', d)} \
+	${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '${KERNEL_DEVICETREE_BASENAME}', d)} \
 	"
 
 # use the first-defined <baud>;<device> pair in SERIAL_CONSOLES
-- 
2.34.1


