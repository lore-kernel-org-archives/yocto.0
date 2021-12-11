Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7ABA4C433F5
	for <webhook@archiver.kernel.org>; Sat, 11 Dec 2021 13:56:01 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web10.21726.1639230959901496101
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Dec 2021 05:56:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jYdajOEc;
 spf=pass (domain: gmail.com, ip: 209.85.160.171,
 mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f171.google.com with SMTP id p19so11012658qtw.12
        for <yocto@lists.yoctoproject.org>;
 Sat, 11 Dec 2021 05:55:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=y4qFlo9JKyqKZudG5GDk/h3E0UzeJcGC6F3h65EpKa0=;
        b=jYdajOEcp+UXSWCg3DTW5fKzWViU6JG4MtRTdkGLvtbZzHWQOjDfm+TmINZ5tud0wi
         NidvYkW4tvRNKxfADYb1+IWp+/k4d4vihnXpo9XOwdkNPhR2O710ROZXhrnyn/Z5xXN+
         u5OfekIvE2ELoKH9Pp3KNVmchj8RHLjN5kMiivpsdiSQueKgt1tzNRl9+DmGlAwbOGXU
         EM0BIVbQ/zGVqwDPfmrNriedyk02HzApJtCuN8+sHFgCG/Fzw6NdswzPhVaPiO4iJhmn
         ULVMzniEknZ2qoFw7HBYXAUV4Cl1HE9DX3HhoMuJViHF+lZ3TYAh5jYlkqQkDDCcVZ1/
         NUpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=y4qFlo9JKyqKZudG5GDk/h3E0UzeJcGC6F3h65EpKa0=;
        b=3vclpoii0VcB99aiQXsdv+y0H4OgtFBqn/rUNSaCBx7/CGmqpMEoAh+P1J6boYQJ5X
         BZfgQxIt0jqr0WfLhr+UzaRJSiEtSwIwQN71GbPreIfa0V/3zHd1IQxYtDS6NP4449i1
         Hk0l0lxAQXVHfdxaLPP3+9J6dxczUvd6nn49y1hUq4kpvdTKRcJe2eV7hTJ4Q6DGagvV
         zMxvrx+4Lq1LEopoXOPJAn/zI2tWHEix1WgpxYDlC9mOa67LFUlQQhqIwwjuKvm6sAZ7
         EO9UFSLTqKZo59+FxvCKTLOzFAl9EeeimZDFWwd1nXpa1jLiBh0Vf8UYdnpW97LZehKW
         gGjg==
X-Gm-Message-State: AOAM532uTiffMKu5zu8XWvNCT9ZJGrihBAOrsRrsK/s3/Y2xvlDzbsIX
	qArAc5oedjBGC0EHO+ECptArNMKSEHU=
X-Google-Smtp-Source: 
 ABdhPJyp9fMtJ9YqtkCdO99qS8X+J9l90QjpcDiZWsP2ev5X96olx4wVhak1prOhYvKwBQbQnq1Tow==
X-Received: by 2002:ac8:5b89:: with SMTP id a9mr32466081qta.363.1639230958593;
        Sat, 11 Dec 2021 05:55:58 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca.
 [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 v9sm3017246qkf.90.2021.12.11.05.55.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Dec 2021 05:55:58 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH v2] override syntax fixup
Date: Sat, 11 Dec 2021 08:55:43 -0500
Message-Id: <20211211135543.15070-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.34.1.75.gabe6bb3905
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Dec 2021 13:56:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55550

The _virtual notation is not an override. These syntax "fixes" need to be
reverted.

In the case of the kernel override, when it was added, the rock-pi-e needed
the latest kernel (linux-yocto-dev) but now the default linux-yocto kernel
will suffice. So this mistake actually switched the rock-pi-e from
linux-yocto-dev back to linux-yocto inadvertently but at a time when
linux-yocto-dev was no longer required.

In the case of the bootloader overrides, u-boot was always the default, so
these overrides were always redundant.

Therefore, in the end, simply removing these overrides is the best way
forward (considering these aren't doing anything, and the builds are working
fine regardless).

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/rk3288.inc            | 1 -
 conf/machine/include/rk3328.inc            | 2 --
 conf/machine/include/rk3399.inc            | 2 --
 conf/machine/include/rockchip-defaults.inc | 1 -
 conf/machine/rock-pi-e.conf                | 2 --
 5 files changed, 8 deletions(-)

diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index 5b84e94..1d4a0e3 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -12,5 +12,4 @@ SERIAL_CONSOLES = "115200;ttyS2"
 KBUILD_DEFCONFIG ?= "multi_v7_defconfig"
 KERNEL_IMAGETYPE = "zImage"
 
-PREFERRED_PROVIDER:virtual/bootloader ?= "u-boot"
 UBOOT_SUFFIX ?= "bin"
diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
index 0f3a730..acc9afd 100644
--- a/conf/machine/include/rk3328.inc
+++ b/conf/machine/include/rk3328.inc
@@ -19,5 +19,3 @@ TFA_BUILD_TARGET = "bl31"
 
 UBOOT_SUFFIX ?= "itb"
 UBOOT_ENTRYPOINT ?= "0x06000000"
-
-PREFERRED_PROVIDER:virtual/bootloader ?= "u-boot"
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
index 09c87c0..1e6c3b6 100644
--- a/conf/machine/include/rk3399.inc
+++ b/conf/machine/include/rk3399.inc
@@ -19,5 +19,3 @@ TFA_BUILD_TARGET = "bl31"
 
 UBOOT_SUFFIX ?= "itb"
 UBOOT_ENTRYPOINT ?= "0x06000000"
-
-PREFERRED_PROVIDER:virtual/bootloader ?= "u-boot"
diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
index 455cca8..ca94249 100644
--- a/conf/machine/include/rockchip-defaults.inc
+++ b/conf/machine/include/rockchip-defaults.inc
@@ -5,7 +5,6 @@ PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 KCONFIG_MODE ?= "alldefconfig"
 
 # xserver
-PREFERRED_PROVIDER:virtual/xserver = "xserver-xorg"
 XSERVER = " \
 	xserver-xorg \
 	xserver-xorg-utils \
diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf
index 7f49c9f..0e2856f 100644
--- a/conf/machine/rock-pi-e.conf
+++ b/conf/machine/rock-pi-e.conf
@@ -7,9 +7,7 @@ require conf/machine/include/rk3328.inc
 
 MACHINEOVERRIDES =. "rock-pi-e:"
 
-PREFERRED_PROVIDER:virtual/kernel = "linux-yocto-dev"
 KERNEL_DEVICETREE = "rockchip/rk3328-rock-pi-e.dtb"
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
 
-PREFERRED_PROVIDER:virtual/bootloader = "u-boot"
 UBOOT_MACHINE = "rock-pi-e-rk3328_defconfig"
-- 
2.34.1.75.gabe6bb3905


