Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A6C7E776D7
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 00:08:31 +0000 (UTC)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
 by mx.groups.io with SMTP id smtpd.web10.98173.1696291703339619874
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 17:08:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kcFux6we;
 spf=pass (domain: gmail.com, ip: 209.85.221.181, mailfrom: twoerner@gmail.com)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-49966c6fafbso174332e0c.0
        for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 17:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696291702; x=1696896502; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZY4PX/juwYCPAHKXiGqT97da7/BPq0gKYzmTpQA6lyI=;
        b=kcFux6we4aL7CR51cfTohw6Ffaxd9QDqRN2vVeed1yn1sdYRQsYZy+HbHyOLHuSnBf
         HmxTlVvXK4pgbRQrCtMd56XgTdoPik4cVx42OM+jR+aHNJ6aRXaYKv3+DTewMA+OppDk
         CeF735AUjELIk/JJAoZscAH7sZqSOC5zB/fUXnMPfMn7oQDdQJM71k5Rx6pf7SzV2lD7
         iuR7BK5pBpwQj0MmT3CzwAvIhdnaGfUIhiVELyMlt/42RvuZiediKQX+lxzgSJ+8BLC5
         LiPvftbM55bIM0jvsU4JKZ7aT2jtiPIYdR5y9yRhAer7C1AsPYQasWSQxmqi7YOxvo37
         GlFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696291702; x=1696896502;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZY4PX/juwYCPAHKXiGqT97da7/BPq0gKYzmTpQA6lyI=;
        b=IlnIjUbCN5Cvqq4DE0VeFgn39GNGQKwBrS13nJvjyVz3437uGxeuAGcui3cD1qKxGm
         DKh2iuSnh9Y4u/MpPH59zr+ebasUMEdz1+mWQ8NGXTdaxTNpipczdE9qQr8Va/t3FJCm
         49UXuikznk5t5Ta5BalBDHwb7Svrogtva4lFLsSkUVDUOhx8rfVZ6PIPymRzVkjCzYGy
         AL9gYmJPAzcZRcWtCT5CpRmRsE0REQ1aNS1Jw9IpgQ1qAOfSHwMfvJS9EteUfIfjAl0h
         rRQPcmrKxXYsCJJTPuxQEdt0gaZTiMQvCJy7GaDk62CWXLKJxUO28/ncfKw+DB3oDWSE
         Q5Fg==
X-Gm-Message-State: AOJu0YyoQoj8NM1HinzLxYuJiBUYhQf3BLO2HsfwylM5oAZXEY7e0hK9
	xWT6Xn1MLaiitQIxGQwr+2gjVoXEERiYpA==
X-Google-Smtp-Source: AGHT+IFwDS3K8OsPA1LzXqyl1ykolcw27v8cmkI1D/HS3Ae7FHdgorSwKsbabnn1UJHzYRZ/5/3xSQ==
X-Received: by 2002:a1f:d643:0:b0:49a:36e4:5565 with SMTP id n64-20020a1fd643000000b0049a36e45565mr9530428vkg.16.1696291701585;
        Mon, 02 Oct 2023 17:08:21 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id s16-20020a0ce310000000b00658793cda3esm11657qvl.72.2023.10.02.17.08.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 17:08:20 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] virtual/tpl: add
Date: Mon,  2 Oct 2023 20:08:18 -0400
Message-ID: <20231003000818.26917-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 00:08:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61200

Be more obvious regarding the roles of TF-A vs rkbin: both provide a TPL for
Rockchip SoCs, but only one should be used.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/px30.inc                                | 1 +
 conf/machine/include/rk3328.inc                              | 1 +
 conf/machine/include/rk3399.inc                              | 1 +
 conf/machine/include/rk3588s.inc                             | 2 +-
 recipes-bsp/rkbin/rockchip-rkbin_git.bb                      | 2 +-
 recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend | 2 ++
 6 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/conf/machine/include/px30.inc b/conf/machine/include/px30.inc
index a3727fbfca66..04cbd092a00d 100644
--- a/conf/machine/include/px30.inc
+++ b/conf/machine/include/px30.inc
@@ -14,6 +14,7 @@ KBUILD_DEFCONFIG ?= "defconfig"
 KERNEL_CLASSES = "kernel-fitimage"
 KERNEL_IMAGETYPE = "fitImage"
 
+PREFERRED_PROVIDER_virtual/tpl = "trusted-firmware-a"
 TFA_PLATFORM = "px30"
 TFA_BUILD_TARGET = "bl31"
 
diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
index f9f8792ca521..7f8673f062d1 100644
--- a/conf/machine/include/rk3328.inc
+++ b/conf/machine/include/rk3328.inc
@@ -15,6 +15,7 @@ KERNEL_FEATURES:append:rk3328 = " bsp/rockchip/remove-non-rockchip-arch-arm64.sc
 KERNEL_CLASSES = "kernel-fitimage"
 KERNEL_IMAGETYPE = "fitImage"
 
+PREFERRED_PROVIDER_virtual/tpl = "trusted-firmware-a"
 TFA_PLATFORM = "rk3328"
 TFA_BUILD_TARGET = "bl31"
 
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
index 88c87af3a03e..09be584468b8 100644
--- a/conf/machine/include/rk3399.inc
+++ b/conf/machine/include/rk3399.inc
@@ -15,6 +15,7 @@ KERNEL_FEATURES:append:rk3399 = " bsp/rockchip/remove-non-rockchip-arch-arm64.sc
 KERNEL_CLASSES = "kernel-fitimage"
 KERNEL_IMAGETYPE = "fitImage"
 
+PREFERRED_PROVIDER_virtual/tpl = "trusted-firmware-a"
 TFA_PLATFORM = "rk3399"
 TFA_BUILD_TARGET = "bl31"
 
diff --git a/conf/machine/include/rk3588s.inc b/conf/machine/include/rk3588s.inc
index 7bfc9474e96e..e66ad565585b 100644
--- a/conf/machine/include/rk3588s.inc
+++ b/conf/machine/include/rk3588s.inc
@@ -10,7 +10,7 @@ KERNEL_FEATURES:append:rk3588s = " bsp/rockchip/remove-non-rockchip-arch-arm64.s
 KERNEL_CLASSES = "kernel-fitimage"
 KERNEL_IMAGETYPE = "fitImage"
 
-PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"
+PREFERRED_PROVIDER_virtual/tpl = "rockchip-rkbin"
 PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
 
 UBOOT_SUFFIX ?= "itb"
diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
index 7fefb017053b..887a7fb61853 100644
--- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
+++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
@@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=15faa4a01e7eb0f5d33f9f2bcc7bff62"
 SRC_URI = "git://github.com/rockchip-linux/rkbin;protocol=https;branch=master"
 SRCREV = "b4558da0860ca48bf1a571dd33ccba580b9abe23"
 
-PROVIDES += "trusted-firmware-a"
+PROVIDES += "virtual/tpl"
 PROVIDES += "optee-os"
 
 inherit bin_package deploy
diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
index c9ad84c24857..f6566212746e 100644
--- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
@@ -2,6 +2,8 @@
 # toolchain
 DEPENDS:append:rk3399 = " gcc-arm-none-eabi-native"
 
+PROVIDES += "virtual/tpl"
+
 COMPATIBLE_MACHINE:append:rk3399 = "|rk3399"
 COMPATIBLE_MACHINE:append:rk3328 = "|rk3328"
 COMPATIBLE_MACHINE:append:px30 = "|px30"
-- 
2.41.0.327.gaa9166bcc0ba


