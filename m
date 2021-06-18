Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
 by mx.groups.io with SMTP id smtpd.web11.11380.1624038676622330467
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Jun 2021 10:51:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gWoC1x8D;
 spf=pass (domain: gmail.com, ip: 209.85.219.50, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f50.google.com with SMTP id im10so3989410qvb.3
        for <yocto@lists.yoctoproject.org>; Fri, 18 Jun 2021 10:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nkU5Ac1kz+AWgsRjxRN3fINKao+ikUC+1d/bvpJBoFI=;
        b=gWoC1x8D2h6JsXoNVRmv4poMX1h+EGREGZZV8IcZGE+59nMvJFX0W7W4uPyO4FzXwH
         Jpo1do072fezSYwHzj7AF6cFoTspCJjCRrbCG6z0TeQ/DPGIf2Zm7Vh8YtH6dPpixgtC
         KzVLOD/8nHWUusaBhrnOMPu4UbGe1KOhppiNDXw1FS7v5HS5Kj5Vi2EDkZmo6IQei2CA
         mBJIK9Y/4i8Dt7re6TVZ1birKsyZjvF9Q/OyeFiDJ7tKLgP8o0kSKGFiirckxObAotqI
         l6AHzkbjQCPjtDcV1BlZvhvLmH0Mk4UH1BqHGGhzy52xkHJ0QUs6l640rpisujy/8KMk
         XYNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nkU5Ac1kz+AWgsRjxRN3fINKao+ikUC+1d/bvpJBoFI=;
        b=YCxjjH9h+xXZYAORrOIf7qaa4PULytkL/X4Hli/6s/DWfFdVYFZlOFjkn9pzsgBh35
         YK02aLpNmVFXfK9bCOs9s3ShcdMX5SMALGUQiHgUYygiSY2ilq+/sxe7rBSa9ai2XytF
         9lzF6AEY7zLj4h5h0B3HTXx8/eYaY++Z+rCc31MT7eCZ43C312jgowtAvp4MWVA6dSWr
         qacEldmo3F+HspRBjQHSyjl9m/S4Ub2DXLU97+OVpvXXOqTbqG6lMs4o1jWq0rxk+Xwm
         sr6Qem4xCMtS8mpLFWtPFtWVutGuUJ784DzbxRKK1i1mvAMWTs1FBzN9SCwn+8m8mOxQ
         qGpw==
X-Gm-Message-State: AOAM53161TjF0qyZuXk3ICsnuyDgWL4lx33tQwfwx0IZmJhgVoz/h6c4
	+ViIyxkYCebDudG9Kk6HJqxoxqU4PuBSPA==
X-Google-Smtp-Source: ABdhPJx/6JBFuvYid4N/8zyp1PpHTxdPfjr/M6ZVWO6i3yvoAJypCAApKG1nYasCMWWwADX3L1AN+w==
X-Received: by 2002:a05:6214:1185:: with SMTP id t5mr6838522qvv.7.1624038675474;
        Fri, 18 Jun 2021 10:51:15 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id 206sm4813423qke.67.2021.06.18.10.51.14
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 10:51:15 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][meta-rockchip] rock-pi-e: use common rk3328.inc
Date: Fri, 18 Jun 2021 13:51:09 -0400
Message-Id: <20210618175109.8587-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Now that there is a second rk3328-based MACHINE (rock64) switch rock-pi-e to
use the common rk3328 include.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/rock-pi-e.conf | 21 +++------------------
 1 file changed, 3 insertions(+), 18 deletions(-)

diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf
index 035a950..38362a0 100644
--- a/conf/machine/rock-pi-e.conf
+++ b/conf/machine/rock-pi-e.conf
@@ -3,29 +3,16 @@
 #@DESCRIPTION: ROCK Pi E is a Rockchip RK3328-based SBC by Radxa. E is for Ethernets.
 #https://wiki.radxa.com/RockpiE
 
-MACHINEOVERRIDES =. "rock-pi-e:"
-SOC_FAMILY = "rk3328"
-DEFAULTTUNE = "cortexa53-crypto"
+require conf/machine/include/rk3328.inc
 
-require conf/machine/include/soc-family.inc
-require conf/machine/include/tune-cortexa53.inc
-require conf/machine/include/rockchip-defaults.inc
+MACHINEOVERRIDES =. "rock-pi-e:"
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-stable-bleeding"
 KERNEL_DEVICETREE = "rockchip/rk3328-rock-pi-e.dtb"
-KBUILD_DEFCONFIG = "defconfig"
-KERNEL_CLASSES = "kernel-fitimage"
-KERNEL_IMAGETYPE = "fitImage"
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
 
-TFA_PLATFORM = "rk3328"
-TFA_BUILD_TARGET = "bl31"
-
-UBOOT_MACHINE = "rock-pi-e-rk3328_defconfig"
-UBOOT_SUFFIX = "itb"
-UBOOT_ENTRYPOINT = "0x06000000"
 PREFERRED_PROVIDER_virtual/bootloader = "u-boot"
-SPL_BINARY = "idbloader.img"
+UBOOT_MACHINE = "rock-pi-e-rk3328_defconfig"
 
 WKS_FILE = "rock-pi-e.wks"
 IMAGE_FSTYPES += "wic.xz wic.bmap"
@@ -38,5 +25,3 @@ WKS_FILE_DEPENDS = " \
 IMAGE_BOOT_FILES ?= " \
     ${KERNEL_IMAGETYPE} \
     "
-
-SERIAL_CONSOLES = "1500000;ttyS2"
-- 
2.30.0.rc0

