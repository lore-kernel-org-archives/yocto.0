Received: from mail-il1-f194.google.com (mail-il1-f194.google.com [209.85.166.194])
 by mx.groups.io with SMTP id smtpd.web12.9640.1579795714452268471
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 08:08:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DrPwx4Jm;
 spf=pass (domain: gmail.com, ip: 209.85.166.194, mailfrom: jpewhacker@gmail.com)
Received: by mail-il1-f194.google.com with SMTP id g12so2484515ild.2
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 08:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zm5OELj6RgWiGLK3shMP1GJwWcVjuC1a3PsnR9IRpFA=;
        b=DrPwx4Jm4Gcf+gu4oLalQ3Caq4L0ZekzvkEmjSdVBPftwpqhC3wAd5JGO2+iYwAaoa
         tLA1sYd/6f5xG5WbvlTmHdOzrYE7Ae2WgEd7VKU54Za0TUCeV0lIuam6AGDrKOZ2Nmwf
         Ncg1OaY9RrSYOPRfVqtWPTF80cOtJsLGSEVjiSIj6i9MbEoPLxMvjrvtxU3tgNBkVWC6
         GFYZ2Hekp/AG5+ULWzQjixkI+KBPlbcIw9qGmvlCv19HM9rns6g0KaRK4MkSg/OKYIi5
         Nw5RBQjL3X27VPw2IU3DFLGe3Z9v/IzBvexwyJZDmBgpo54USGmHW2E0TGzq/fteXUbh
         XF6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zm5OELj6RgWiGLK3shMP1GJwWcVjuC1a3PsnR9IRpFA=;
        b=epgM9Z3PsznQumnKPaHw4I1ZpCf/o7IJWRWiLQShPGk1Ygkh/QXBarYNECdgt0kjwD
         1LXebzbWMgHkkM+pKy8uCJPO5+7znA6KL8xgLfr/uB7Tr5Io6wW9Td5OOK6QxJFyJ8mN
         v21W/k18StKxkVoTzhiRYhh8A3hrdmyVrjNJMXebH/gSvQHpmJkh4biuqD8NL4oNGMdR
         so5ixPzN/gslKJV1sarsKCoiGw7fOjJCq7dXIm5fRhTN+5ujW4xJwqapPZKgyhm1Qrmg
         LzzFJdZEo8KR3xcAwmvpUyhZILEmNhAUz/aBNhe4UFN5XDoVUYaI1qNjg9w6eM+NWBfd
         H6QQ==
X-Gm-Message-State: APjAAAUqwcMIGzP5Dx+DI2kZraw+un+1w6hJk4S5Cz+SpUX50yY/EvTn
	bNsklRvkWbdttFy7d9JDaoy8TC3iv3Y=
X-Google-Smtp-Source: APXvYqx8gZ8Cwj5fZQcrzfCKdNqARuQH4UTtmuw2YtofTzOWctdb8U/g6EU5jSI8pqjPiX96mdoGag==
X-Received: by 2002:a92:bb08:: with SMTP id w8mr12554752ili.27.1579795713203;
        Thu, 23 Jan 2020 08:08:33 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id w15sm523063iol.86.2020.01.23.08.08.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2020 08:08:32 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-rockchip][PATCH 3/4] rk3399: Add generic rk3399 support
Date: Thu, 23 Jan 2020 10:08:20 -0600
Message-Id: <20200123160821.778821-4-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200123160821.778821-1-JPEWhacker@gmail.com>
References: <20200123160821.778821-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adds support for the rk3399 SoC. Notably:
 *) Split out the default kernel config and image type from
    rockchip-defaults.inc now that not all support chips are ARMv7
 *) Apply a patch to Arm Trusted Firmware to fix a compile issue
 *) Arm Trusted Firmware requires the arm-none-eabi-native compiler to
    compile the M0 firmware.
 *) Modify u-boot to pull in the ATF files when compiling
 *) The rk3399 is support by the panfrost driver in mesa, so enable it

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 conf/machine/include/rk3066.inc               |  3 +
 conf/machine/include/rk3188.inc               |  3 +
 conf/machine/include/rk3288.inc               |  3 +
 conf/machine/include/rk3399.inc               | 27 ++++++
 conf/machine/include/rockchip-defaults.inc    |  2 -
 ...hip-Prevent-macro-expansion-in-paths.patch | 94 +++++++++++++++++++
 .../arm-trusted-firmware_2.2.bb               |  8 +-
 recipes-bsp/u-boot/u-boot%.bbappend           |  8 ++
 recipes-graphics/mesa/mesa_%.bbappend         |  1 +
 wic/rk3399-boot.wks                           | 24 +++++
 10 files changed, 170 insertions(+), 3 deletions(-)
 create mode 100644 conf/machine/include/rk3399.inc
 create mode 100644 recipes-bsp/arm-trusted-firmware/arm-trusted-firmware/0001-rockchip-Prevent-macro-expansion-in-paths.patch
 create mode 100644 wic/rk3399-boot.wks

diff --git a/conf/machine/include/rk3066.inc b/conf/machine/include/rk3066.inc
index 91fbbaa..dffbee0 100644
--- a/conf/machine/include/rk3066.inc
+++ b/conf/machine/include/rk3066.inc
@@ -6,3 +6,6 @@ SOC_FAMILY = "rk3066"
 require conf/machine/include/tune-cortexa9.inc
 require conf/machine/include/soc-family.inc
 require conf/machine/include/rockchip-defaults.inc
+
+KBUILD_DEFCONFIG = "multi_v7_defconfig"
+KERNEL_IMAGETYPE = "zImage"
diff --git a/conf/machine/include/rk3188.inc b/conf/machine/include/rk3188.inc
index bd36837..59e65d1 100644
--- a/conf/machine/include/rk3188.inc
+++ b/conf/machine/include/rk3188.inc
@@ -6,3 +6,6 @@ SOC_FAMILY  = "rk3188"
 require conf/machine/include/tune-cortexa9.inc
 require conf/machine/include/soc-family.inc
 require conf/machine/include/rockchip-defaults.inc
+
+KBUILD_DEFCONFIG = "multi_v7_defconfig"
+KERNEL_IMAGETYPE = "zImage"
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index b261692..a7edac5 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -7,6 +7,9 @@ require conf/machine/include/tune-cortexa17.inc
 require conf/machine/include/soc-family.inc
 require conf/machine/include/rockchip-defaults.inc
 
+KBUILD_DEFCONFIG = "multi_v7_defconfig"
+KERNEL_IMAGETYPE = "zImage"
+
 SERIAL_CONSOLES = "115200;ttyS2"
 
 PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
new file mode 100644
index 0000000..1fd8fd6
--- /dev/null
+++ b/conf/machine/include/rk3399.inc
@@ -0,0 +1,27 @@
+# Copyright (C) 2020 Garmin Ltd. or its subsidaries
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SOC_FAMILY = "rk3399"
+
+DEFAULTTUNE ?= "cortexa72-cortexa53-crypto"
+
+require conf/machine/include/tune-cortexa72-cortexa53.inc
+require conf/machine/include/soc-family.inc
+require conf/machine/include/rockchip-defaults.inc
+
+KBUILD_DEFCONFIG ?= "defconfig"
+KERNEL_CLASSES = "kernel-fitimage"
+KERNEL_IMAGETYPE = "fitImage"
+
+ATF_PLATFORM ?= "rk3399"
+ATF_TARGET ?= "bl31"
+ATF_SUFFIX ?= "elf"
+
+UBOOT_SUFFIX ?= "itb"
+UBOOT_ENTRYPOINT ?= "0x06000000"
+
+SERIAL_CONSOLES = "115200;ttyS2"
+
+PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
+SPL_BINARY ?= "idbloader.img"
+
diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
index ed180f9..0507017 100644
--- a/conf/machine/include/rockchip-defaults.inc
+++ b/conf/machine/include/rockchip-defaults.inc
@@ -3,8 +3,6 @@
 # kernel
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-stable"
 LINUX_VERSION_EXTENSION ?= "-rockchip"
-KBUILD_DEFCONFIG = "multi_v7_defconfig"
-KERNEL_IMAGETYPE = "zImage"
 
 # xserver
 PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
diff --git a/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware/0001-rockchip-Prevent-macro-expansion-in-paths.patch b/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware/0001-rockchip-Prevent-macro-expansion-in-paths.patch
new file mode 100644
index 0000000..755b618
--- /dev/null
+++ b/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware/0001-rockchip-Prevent-macro-expansion-in-paths.patch
@@ -0,0 +1,94 @@
+From 39a97dce61aca9f618e28e26c6e441c8976f3172 Mon Sep 17 00:00:00 2001
+From: Joshua Watt <JPEWhacker@gmail.com>
+Date: Fri, 13 Dec 2019 13:44:55 -0600
+Subject: [PATCH] rockchip: Prevent macro expansion in paths
+
+Instead of stringizing the paths to binary files, add them as string
+defines on the command line (e.g. -DFOO=\"BAR\" instead of -DFOO=BAR).
+This prevents macros from being expanded inside the string value itself.
+For example, -DFOO=/path/with-linux-in-it would have been expanded to
+"/path/with-1-in-it" because `linux=1` is one of the standard GCC
+defines.
+
+Upstream-Status: Accepted [https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/2813]
+Change-Id: I7b65df3c9930faed4f1aff75ad726982ae3671e6
+Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
+---
+ plat/rockchip/rk3399/drivers/dp/cdn_dp.c  |  2 +-
+ plat/rockchip/rk3399/drivers/pmu/pmu_fw.c | 24 +++++++++++------------
+ plat/rockchip/rk3399/platform.mk          |  6 +++---
+ 3 files changed, 15 insertions(+), 17 deletions(-)
+
+diff --git a/plat/rockchip/rk3399/drivers/dp/cdn_dp.c b/plat/rockchip/rk3399/drivers/dp/cdn_dp.c
+index aa71fdea..a8773f4f 100644
+--- a/plat/rockchip/rk3399/drivers/dp/cdn_dp.c
++++ b/plat/rockchip/rk3399/drivers/dp/cdn_dp.c
+@@ -18,7 +18,7 @@ __asm__(
+ 	".global hdcp_handler\n"
+ 	".balign 4\n"
+ 	"hdcp_handler:\n"
+-	".incbin \"" __XSTRING(HDCPFW) "\"\n"
++	".incbin \"" HDCPFW "\"\n"
+ 	".type hdcp_handler, %function\n"
+ 	".size hdcp_handler, .- hdcp_handler\n"
+ 	".popsection\n"
+diff --git a/plat/rockchip/rk3399/drivers/pmu/pmu_fw.c b/plat/rockchip/rk3399/drivers/pmu/pmu_fw.c
+index a09ad21e..25596b18 100644
+--- a/plat/rockchip/rk3399/drivers/pmu/pmu_fw.c
++++ b/plat/rockchip/rk3399/drivers/pmu/pmu_fw.c
+@@ -5,20 +5,18 @@
+  */
+ 
+ /* convoluted way to make sure that the define is pasted just the right way */
+-#define _INCBIN(file, sym, sec) \
++#define INCBIN(file, sym, sec) \
+ 	__asm__( \
+-		".section " #sec "\n" \
+-		".global " #sym "\n" \
+-		".type " #sym ", %object\n" \
++		".section " sec "\n" \
++		".global " sym "\n" \
++		".type " sym ", %object\n" \
+ 		".align 4\n" \
+-		#sym ":\n" \
+-		".incbin \"" #file "\"\n" \
+-		".size " #sym ", .-" #sym "\n" \
+-		".global " #sym "_end\n" \
+-		#sym "_end:\n" \
++		sym ":\n" \
++		".incbin \"" file "\"\n" \
++		".size " sym ", .-" sym "\n" \
++		".global " sym "_end\n" \
++		sym "_end:\n" \
+ 	)
+ 
+-#define INCBIN(file, sym, sec) _INCBIN(file, sym, sec)
+-
+-INCBIN(RK3399M0FW, rk3399m0_bin, ".sram.incbin");
+-INCBIN(RK3399M0PMUFW, rk3399m0pmu_bin, ".pmusram.incbin");
++INCBIN(RK3399M0FW, "rk3399m0_bin", ".sram.incbin");
++INCBIN(RK3399M0PMUFW, "rk3399m0pmu_bin", ".pmusram.incbin");
+diff --git a/plat/rockchip/rk3399/platform.mk b/plat/rockchip/rk3399/platform.mk
+index cfc48e8f..643c24f5 100644
+--- a/plat/rockchip/rk3399/platform.mk
++++ b/plat/rockchip/rk3399/platform.mk
+@@ -82,13 +82,13 @@ PLAT_M0                 :=      ${PLAT}m0
+ BUILD_M0		:=	${BUILD_PLAT}/m0
+ 
+ RK3399M0FW=${BUILD_M0}/${PLAT_M0}.bin
+-$(eval $(call add_define,RK3399M0FW))
++$(eval $(call add_define_val,RK3399M0FW,\"$(RK3399M0FW)\"))
+ 
+ RK3399M0PMUFW=${BUILD_M0}/${PLAT_M0}pmu.bin
+-$(eval $(call add_define,RK3399M0PMUFW))
++$(eval $(call add_define_val,RK3399M0PMUFW,\"$(RK3399M0PMUFW)\"))
+ 
+ HDCPFW=${RK_PLAT_SOC}/drivers/dp/hdcp.bin
+-$(eval $(call add_define,HDCPFW))
++$(eval $(call add_define_val,HDCPFW,\"$(HDCPFW)\"))
+ 
+ # CCACHE_EXTRAFILES is needed because ccache doesn't handle .incbin
+ export CCACHE_EXTRAFILES
+-- 
+2.23.0
+
diff --git a/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.2.bb b/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.2.bb
index 710336a..602ce30 100644
--- a/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.2.bb
+++ b/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.2.bb
@@ -6,10 +6,16 @@ HOMEPAGE = "https://developer.trustedfirmware.org/"
 LICENSE = "BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://docs/license.rst;md5=189505435dbcdcc8caa63c46fe93fa89"
 
+# Rockchip RK3399 compiles some M0 firmware which requires an arm-none-eabi GCC
+# toolchain
+DEPENDS_rk3399 = "virtual/arm-none-eabi-gcc"
+
 PROVIDES = "virtual/atf"
 
 BRANCH = "master"
-SRC_URI = "git://git.trustedfirmware.org/TF-A/trusted-firmware-a.git;protocol=http;branch=${BRANCH}"
+SRC_URI = "git://git.trustedfirmware.org/TF-A/trusted-firmware-a.git;protocol=http;branch=${BRANCH} \
+           file://0001-rockchip-Prevent-macro-expansion-in-paths.patch \
+           "
 SRCREV = "a04808c16cfc126d9fe572ae7c4b5a3d39de5796"
 
 S = "${WORKDIR}/git"
diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index 801f710..401d649 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -4,3 +4,11 @@ do_compile_append_rock2-square () {
 		cp ${B}/spl/${SPL_BINARY} ${B}
 	fi
 }
+
+ATF_DEPENDS ??= ""
+
+EXTRA_OEMAKE_append_rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31.elf"
+ATF_DEPENDS_rk3399 = "virtual/atf:do_deploy"
+
+do_compile[depends] += "${ATF_DEPENDS}"
+
diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa/mesa_%.bbappend
index 5856c71..3e8711c 100644
--- a/recipes-graphics/mesa/mesa_%.bbappend
+++ b/recipes-graphics/mesa/mesa_%.bbappend
@@ -1 +1,2 @@
 PACKAGECONFIG_append_rk3288 = " kmsro panfrost"
+PACKAGECONFIG_append_rk3399 = " kmsro panfrost"
diff --git a/wic/rk3399-boot.wks b/wic/rk3399-boot.wks
new file mode 100644
index 0000000..100b94d
--- /dev/null
+++ b/wic/rk3399-boot.wks
@@ -0,0 +1,24 @@
+# Copyright (C) 2020 Garmin Ltd. or its subsidiaries
+# Released under the MIT license (see COPYING.MIT for the terms)
+#
+# Disk layout
+# Note that the reference documentation refers to 512 byte disk sectors, but
+# wic uses 1KB blocks
+#
+#   Partition   Start Sector    Number of Sectors
+#   loader1     64              8000
+#   reserved1   8064            128
+#   reserved2   8192            8192
+#   loader2     16384           8192
+#   atf         24576           8192
+#   boot        32768           229376
+#   root        262144          -
+#
+
+part loader1    --align 32     --size 4000K            --source rawcopy --sourceparams="file=idbloader.img"
+part reserved1  --align 4032   --size 64K
+part reserved2  --align 4096   --size 4096K
+part loader2    --align 8192   --size 4096K            --source rawcopy --sourceparams="file=u-boot.itb"
+part atf        --align 12288  --size 4096K
+part /boot      --align 16384  --size=114688K --active --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
+
-- 
2.24.1

