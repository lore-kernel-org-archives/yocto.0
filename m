Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3117C47258
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 03:24:35 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web10.14590.1706066667683525508
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jan 2024 19:24:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=V4BpsAdP;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7838af983c1so372486385a.3
        for <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 19:24:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706066665; x=1706671465; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1wYedGQcuHkTHENUa1VYohSWNXDvEeI/gRBOEyVRAuE=;
        b=V4BpsAdP90KQ1b+t+PyHLap7Si1Jt6dUw0RQ88D+TFfx7JWJrsyv2Do6eTq/IIgkYL
         gxSG9hijVH7kY2Q9Tyo8Bc9rvTd6qy8PKoKLYt0HbLzMWoIjlFh0fL0oNzIzXM7OQfXF
         YX6Pcy0GgQXOP77mshdL7B+W8CgpBxcnvIyullHUiWS3yOFoDpL4wpsj4jWmGFdYlyKs
         9+DaiHktVxaF/b1GiDbzorbiNfwSE7fNgzfs09Ez1Q/kVehMUeubK/mvndH4//RNfsPx
         igVdNVrPY5/bgugnW9AGqoiyXy51OJs15dmmgjRY0vpeWM4tZXq4d65cq7uGAxUz6HOU
         x6xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706066665; x=1706671465;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1wYedGQcuHkTHENUa1VYohSWNXDvEeI/gRBOEyVRAuE=;
        b=Xa5R3Ld47C1uZ5DuYPSflcqKllu/vJzod+IVJ46g52/RXoJ6tjOGiToSVULHfWZhRY
         r20glLF2QlXh2NlnEdpp7xDk+ydFiWb1c3d6LMaLGRYqkgqb0aoycbSjNJwiyss9dw8u
         zSO29XywikXDiO9wlOVLtPHAg2mvCJWUfyvJkRvid4UK/tu3jaJ1BEi6UlLmc52zvEQc
         74igXA8YTDPq4n6Gt3MXrLaltBgqoUeJwOWeHFzidSJ50eftvXZAdOKTi+dtlH6BCZ5K
         3E8zv1HSr3V/x+cNjTV7pUR75n5f7X7BskgrGMGexbm0KebOrfjJArc9YRDAGAjXGfqs
         UBTg==
X-Gm-Message-State: AOJu0Yw5izuWl85Jfs7SNrKChlTNAw5ucYINb7VyALphpxC56h3OoNO/
	mGTM3FNp8ovyRRCB9WROwpG9/j5p93hvrnNcQcTJLvYbhbG+fIUi3bkgi1us
X-Google-Smtp-Source: AGHT+IH1pOMKkDMnkn40drjb5qdsJ+DgWOp/WgDUk/+JpE2JoWzijSaYoyefSZtJ5IZPVjiGYGZxYw==
X-Received: by 2002:a05:620a:147c:b0:77f:38f2:2d99 with SMTP id j28-20020a05620a147c00b0077f38f22d99mr7294060qkl.83.1706066665634;
        Tue, 23 Jan 2024 19:24:25 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id b26-20020a05620a119a00b0076db5b792basm3668043qkk.75.2024.01.23.19.24.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 19:24:24 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Stephen Chen <stephen@radxa.com>
Subject: [meta-rockchip][PATCH v2] KERNEL_DEVICETREE: 32-bit re-org
Date: Tue, 23 Jan 2024 22:24:16 -0500
Message-ID: <20240124032416.36485-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 03:24:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62251

The upstream kernel reorganized the 32-bit arch/arm device-tree directory
structure to separate out the device-trees by manufacturer (similar to the
organization of the arch/arm64 device-trees). Update the references to
32-bit arm device-trees to match.

This patch can now be applied since all pre-6.5-rc1 kernels have been
removed from oe-core.

NOTE: trying to build a post-6.5-rc1 32-bit kernel with this patch applied
      will fail

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
Signed-off-by: Stephen Chen <stephen@radxa.com>
---
 classes/rockchip-gpt-img.bbclass      | 2 +-
 conf/machine/firefly-rk3288.conf      | 2 +-
 conf/machine/include/rockchip-wic.inc | 6 +++++-
 conf/machine/marsboard-rk3066.conf    | 2 +-
 conf/machine/radxarock.conf           | 2 +-
 conf/machine/rock2-square.conf        | 2 +-
 conf/machine/tinker-board-s.conf      | 2 +-
 conf/machine/tinker-board.conf        | 2 +-
 conf/machine/vyasa-rk3288.conf        | 2 +-
 9 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/classes/rockchip-gpt-img.bbclass b/classes/rockchip-gpt-img.bbclass
index b698db0798ea..440dcac7874d 100644
--- a/classes/rockchip-gpt-img.bbclass
+++ b/classes/rockchip-gpt-img.bbclass
@@ -108,7 +108,7 @@ create_rk_image () {
 	mcopy -i ${WORKDIR}/${BOOT_IMG} -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::${KERNEL_IMAGETYPE}
 
 	DEVICETREE_DEFAULT=""
-	for DTS_FILE in ${KERNEL_DEVICETREE}; do
+	for DTS_FILE in $(echo ${KERNEL_DEVICETREE} | cut -d'/' -f2); do
 		[ -n "${DEVICETREE_DEFAULT}"] && DEVICETREE_DEFAULT="${DTS_FILE}"
 		mcopy -i ${WORKDIR}/${BOOT_IMG} -s ${DEPLOY_DIR_IMAGE}/${DTS_FILE} ::${DTS_FILE}
 	done
diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
index 3270bb9f1657..6ff1be822008 100644
--- a/conf/machine/firefly-rk3288.conf
+++ b/conf/machine/firefly-rk3288.conf
@@ -9,5 +9,5 @@
 require conf/machine/include/rk3288.inc
 require conf/machine/include/rockchip-wic.inc
 
-KERNEL_DEVICETREE = "rk3288-firefly.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3288-firefly.dtb"
 UBOOT_MACHINE = "firefly-rk3288_defconfig"
diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
index 635288ca4e98..b1ca27cdd0a2 100644
--- a/conf/machine/include/rockchip-wic.inc
+++ b/conf/machine/include/rockchip-wic.inc
@@ -11,9 +11,13 @@ WKS_FILE_DEPENDS ?= " \
 	virtual/bootloader \
 	virtual/kernel \
 	"
+# KERNEL_DEVICETREE follows the pattern of 'rockchip/${SOC_FAMILY}-${BOARD}.dtb'
+# but is placed in the deploy directory as simply '${SOC_FAMILY}-${BOARD}.dtb'
+# therefore we have to strip off the 'rockchip/' for IMAGE_BOOT_FILES
+NONFITDT="${@d.getVar('KERNEL_DEVICETREE').split('/')[1]}"
 IMAGE_BOOT_FILES = " \
 	${KERNEL_IMAGETYPE} \
-	${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '${KERNEL_DEVICETREE}', d)} \
+	${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '${NONFITDT}', d)} \
 	"
 
 # use the first-defined <baud>;<device> pair in SERIAL_CONSOLES
diff --git a/conf/machine/marsboard-rk3066.conf b/conf/machine/marsboard-rk3066.conf
index 52fd256a3445..36945e8e407b 100644
--- a/conf/machine/marsboard-rk3066.conf
+++ b/conf/machine/marsboard-rk3066.conf
@@ -8,4 +8,4 @@
 
 require conf/machine/include/rk3066.inc
 
-KERNEL_DEVICETREE = "rk3066a-marsboard.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3066a-marsboard.dtb"
diff --git a/conf/machine/radxarock.conf b/conf/machine/radxarock.conf
index 42d8848e1d09..6ad8474669d0 100644
--- a/conf/machine/radxarock.conf
+++ b/conf/machine/radxarock.conf
@@ -9,4 +9,4 @@
 
 require conf/machine/include/rk3188.inc
 
-KERNEL_DEVICETREE = "rk3188-radxarock.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3188-radxarock.dtb"
diff --git a/conf/machine/rock2-square.conf b/conf/machine/rock2-square.conf
index 46064eebcc67..9468b9a6b559 100644
--- a/conf/machine/rock2-square.conf
+++ b/conf/machine/rock2-square.conf
@@ -9,7 +9,7 @@
 require conf/machine/include/rk3288.inc
 
 SPL_BINARY = "u-boot-spl-dtb.bin"
-KERNEL_DEVICETREE = "rk3288-rock2-square.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3288-rock2-square.dtb"
 UBOOT_MACHINE = "rock2_defconfig"
 
 # This board doesn't support the combined idbloader, so resort to the older
diff --git a/conf/machine/tinker-board-s.conf b/conf/machine/tinker-board-s.conf
index 870b9bcdf8c7..3a656136c554 100644
--- a/conf/machine/tinker-board-s.conf
+++ b/conf/machine/tinker-board-s.conf
@@ -7,5 +7,5 @@
 
 require conf/machine/include/tinker.inc
 
-KERNEL_DEVICETREE = "rk3288-tinker-s.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3288-tinker-s.dtb"
 UBOOT_MACHINE = "tinker-s-rk3288_defconfig"
diff --git a/conf/machine/tinker-board.conf b/conf/machine/tinker-board.conf
index 8fe5f6305d70..ef1a1c1ac098 100644
--- a/conf/machine/tinker-board.conf
+++ b/conf/machine/tinker-board.conf
@@ -7,5 +7,5 @@
 
 require conf/machine/include/tinker.inc
 
-KERNEL_DEVICETREE = "rk3288-tinker.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3288-tinker.dtb"
 UBOOT_MACHINE = "tinker-rk3288_defconfig"
diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.conf
index 5b44257acec8..52b440100407 100644
--- a/conf/machine/vyasa-rk3288.conf
+++ b/conf/machine/vyasa-rk3288.conf
@@ -9,7 +9,7 @@ require conf/machine/include/rk3288.inc
 require conf/machine/include/rockchip-wic.inc
 
 KERNEL_IMAGETYPE = "uImage"
-KERNEL_DEVICETREE = "rk3288-vyasa.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3288-vyasa.dtb"
 KERNEL_EXTRA_ARGS += "LOADADDR=0x02000000"
 
 UBOOT_MACHINE = "vyasa-rk3288_defconfig"
-- 
2.43.0.76.g1a87c842ece3


