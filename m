Received: from mail-io1-f68.google.com (mail-io1-f68.google.com [209.85.166.68])
 by mx.groups.io with SMTP id smtpd.web09.9438.1579794563312954216
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 07:49:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=b8w0HqxF;
 spf=pass (domain: gmail.com, ip: 209.85.166.68, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f68.google.com with SMTP id i7so3410711ioo.5
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 07:49:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=p3oFrE865s+tBrfVlfSNrNhqA3Gzemc/NV/JmWpWmSk=;
        b=b8w0HqxFolQ4rgPd1DWVqpVYJj1IhXR+lK1hk6CYMrvP1YcWdcKHCR+B3bleeTwMea
         8Hii/y9iROzwGb+WamMbfnGrSvPMFvq/k5U2iUWP4m8zy8v5AOG5QmAraG8f4DqZ4fHZ
         zwo/s4gJA1kfWgB17l7MJND6YfADUJK+ZzTQe0JS73zsUe0H4dSb8BDKGi+DpWgzlWah
         +j1WNXlaCtcocRZMx78X9QvAyHykbO3wmytfOCA/glZJ4095UPBm/Lj1Zp2Wpv5R4+UA
         VicTwRjU2hzjIh1r+Tf/c5Pl4fAU6f9Z4SbVUN1Djj9FSkF+Vj7X3+FPxsImnDhmB5gw
         O34Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=p3oFrE865s+tBrfVlfSNrNhqA3Gzemc/NV/JmWpWmSk=;
        b=J29ZF5nZ3Vt53ASUkRAHK+mU8IPy34aNytQNWzaPjtey4X7t79JP6UJLoCXJonUBx+
         viK1TR2A9tIQ3twizM8i/kkuO6SaeLdzPiMKupXvKU/zARvbQjisPKOacjvAbC57JWaI
         sT3HEg/ykzIaib1V9y3bjjcUYSYmcCWSixD/lqvRkpxlg39ne83DdTdOkNEOWSaS4Qhn
         x9hrxB+JEMKpiYskwURdvuNiZlBjqRRZ/SS1QHadD53UoCyaWWltsToR6LTDNx0jjW52
         AI21V2zYlsZPXjGhYQgmEpT1CzAMbWtmrszr/VJe1tMhAz6DnNIDrVmED/0J4/H0BnWw
         UR2g==
X-Gm-Message-State: APjAAAUGlFIgqcaLBUOhkH+NhRLd+NnuYjdEx/yMf5qNmsPKhK699Cr/
	CkLzZWkO4bQ9noJCvt5Q9tsL9yqpgIo=
X-Google-Smtp-Source: APXvYqxMXwTOob0OOpMcYBM4/zVhPWTmHw56w/fud3E1sZZWSA0hfeKTXe15eBxb6CvBJrca7H3brQ==
X-Received: by 2002:a02:c6d5:: with SMTP id r21mr11687216jan.129.1579794562389;
        Thu, 23 Jan 2020 07:49:22 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id z12sm526377ioe.0.2020.01.23.07.49.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2020 07:49:21 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-rockchip][PATCH v2] Remove u-boot-rockchip
Date: Thu, 23 Jan 2020 09:49:08 -0600
Message-Id: <20200123154908.778009-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200122004828.1461264-1-JPEWhacker@gmail.com>
References: <20200122004828.1461264-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removes the u-boot-rockchip recipe. Upstream oe-core has dropped support
for Python2, which is required to build this recipe. It appears that no
machines are actually using it anymore, so it can be removed.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 recipes-bsp/u-boot/u-boot-rockchip.inc        | 27 -------------------
 .../binutils-2.28-ld-fix.patch                | 13 ---------
 .../u-boot/u-boot-rockchip_20171218.bb        | 13 ---------
 3 files changed, 53 deletions(-)
 delete mode 100644 recipes-bsp/u-boot/u-boot-rockchip.inc
 delete mode 100644 recipes-bsp/u-boot/u-boot-rockchip/binutils-2.28-ld-fix.patch
 delete mode 100644 recipes-bsp/u-boot/u-boot-rockchip_20171218.bb

diff --git a/recipes-bsp/u-boot/u-boot-rockchip.inc b/recipes-bsp/u-boot/u-boot-rockchip.inc
deleted file mode 100644
index 5d89cd6..0000000
--- a/recipes-bsp/u-boot/u-boot-rockchip.inc
+++ /dev/null
@@ -1,27 +0,0 @@
-# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
-# Copyright (C) 2017 Trevor Woerner <twoerner@gmail.com>
-# Released under the MIT license (see COPYING.MIT for the terms)
-
-require recipes-bsp/u-boot/u-boot.inc
-
-DESCRIPTION = "Rockchip next-dev U-Boot"
-LICENSE = "GPLv2+"
-LIC_FILES_CHKSUM = "file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"
-COMPATIBLE_MACHINE = "(rk3036|rk3066|rk3188|rk3288|rk3328|rk3399)"
-
-DEPENDS = "dtc-native bc-native swig-native"
-
-# u-boot will build native python module
-inherit pythonnative
-
-do_compile_prepend () {
-	export STAGING_INCDIR=${STAGING_INCDIR_NATIVE};
-	export STAGING_LIBDIR=${STAGING_LIBDIR_NATIVE};
-}
-
-do_compile_append () {
-	# copy to default search path
-	if [ ${SPL_BINARY} ]; then
-		cp ${B}/spl/${SPL_BINARY} ${B}/
-	fi
-}
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

