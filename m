Received: from mail-io1-f66.google.com (mail-io1-f66.google.com [209.85.166.66])
 by mx.groups.io with SMTP id smtpd.web11.3332.1579654115603687504
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 16:48:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gftfu+1/;
 spf=pass (domain: gmail.com, ip: 209.85.166.66, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f66.google.com with SMTP id d15so4861055iog.3
        for <yocto@lists.yoctoproject.org>; Tue, 21 Jan 2020 16:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7xjla3W1o/VbK4KaGjkfrvZhWjFSOaebckV0ZkA6tZ0=;
        b=gftfu+1/d0Wz+99TyVQBWolgTWUC4D5azpmYeNcZaeK/KyEs791L1EDu2+jwHFfcK/
         E436r9XZDtrhVyjqmg5y4OCOfzHjVyk91dJPUXDiYISZc3qZIm0r3XbRGrGhJEYeSDN3
         uOwZW7NanGFjcZE81fohv0ig0JeODdqverWEINaUI9lKCGvJ61nnGmyzKLcxAoe07Y9h
         8C7nMneJaBKnfNC+4CCGdk4eugVQwpB8QEuy1f2avyyxJCGwZP3F+WZ2fTefcNXQubLx
         AORbJ2YpSWv3vVyFXuJ6pz2HmMxY3+n2xz2erbYgGwNM+mQDXv/BrbaRMrVMehNRhF9r
         3rIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7xjla3W1o/VbK4KaGjkfrvZhWjFSOaebckV0ZkA6tZ0=;
        b=o6/zvLVm3Vs2XdmX375P3qxLHiE0Mfp25dhqwT7sNfd+uYEK6lRhjO0mRIEL/jCc8f
         3dfajlRYKUeWwUgL2ojTgTjfvq6Gmq9987d4laCllJrEKj3y/6Cp1YNWPnbqda8xKNCm
         +3e4+Er+Yjovi7NTPqCyq8p44xDTLcuIeU/YjwDlGLfVWXSP5sfNL0/wmVEUKEO/OH7t
         /aph+mdn6nN7mHY6Epue18Y8xa+cOyw7RGmRqe4DOfagRbKrEsiU6/3C8H2dVRTO/Ue2
         ivlQ8EKtsIuj738A82DnduoITRY8wmgU9qpncfLsN9WhCeJh/E1618mf381pWIZEGq1T
         Jdmg==
X-Gm-Message-State: APjAAAX0s7FNQ5x9dR6Tgu1t2CACzg11XzFahfLvEEGxrHYyIPKNnHx2
	hE2uJfdRuABVVcfzxYdN3zrjgTRSuVo=
X-Google-Smtp-Source: APXvYqzk0ndsjhyHwp8I8UnX5fBRExescDEiUrWFY0dYJz+cogMKSbb8RBhrIH73IXQHnG7/j1yYXQ==
X-Received: by 2002:a05:6638:97c:: with SMTP id o28mr5455392jaj.8.1579654114626;
        Tue, 21 Jan 2020 16:48:34 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id q8sm307578ion.57.2020.01.21.16.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2020 16:48:34 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-rockchip][PATCH] Remove u-boot-rockchip
Date: Tue, 21 Jan 2020 18:48:28 -0600
Message-Id: <20200122004828.1461264-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removes the u-boot-rockchip recipe. Upstream oe-core has dropped support
for Python2, which is required to build this recipe. It appears that no
machines are actually using it anymore, so it can be removed.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 .../u-boot-rockchip/binutils-2.28-ld-fix.patch      | 13 -------------
 recipes-bsp/u-boot/u-boot-rockchip_20171218.bb      | 13 -------------
 2 files changed, 26 deletions(-)
 delete mode 100644 recipes-bsp/u-boot/u-boot-rockchip/binutils-2.28-ld-fix.patch
 delete mode 100644 recipes-bsp/u-boot/u-boot-rockchip_20171218.bb

diff --git a/recipes-bsp/u-boot/u-boot-rockchip/binutils-2.28-ld-fix.patch b/recipes-bsp/u-boot/u-boot-rockchip/binutils-2.28-ld-fix.patch
deleted file mode 100644
index b3f6795..0000000
--- a/recipes-bsp/u-boot/u-boot-rockchip/binutils-2.28-ld-fix.patch
+++ /dev/null
@@ -1,13 +0,0 @@
-Index: git/arch/arm/config.mk
-===================================================================
---- git.orig/arch/arm/config.mk
-+++ git/arch/arm/config.mk
-@@ -89,7 +89,7 @@ PLATFORM_LIBS := arch/arm/lib/eabi_compa
- endif
-
- # needed for relocation
--LDFLAGS_u-boot += -pie
-+LDFLAGS_u-boot += -N -pie
-
- #
- # FIXME: binutils versions < 2.22 have a bug in the assembler where
diff --git a/recipes-bsp/u-boot/u-boot-rockchip_20171218.bb b/recipes-bsp/u-boot/u-boot-rockchip_20171218.bb
deleted file mode 100644
index 4545f13..0000000
--- a/recipes-bsp/u-boot/u-boot-rockchip_20171218.bb
+++ /dev/null
@@ -1,13 +0,0 @@
-# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
-# Released under the MIT license (see COPYING.MIT for the terms)
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-include u-boot-rockchip.inc
-
-TAG = "release-${PV}"
-SRC_URI = " \
-	git://github.com/rockchip-linux/u-boot.git;tag=${TAG};nobranch=1; \
-	file://binutils-2.28-ld-fix.patch \
-"
-S = "${WORKDIR}/git"
-- 
2.24.1

