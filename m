Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
 by mx.groups.io with SMTP id smtpd.web12.6915.1624538414353652078
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Jun 2021 05:40:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dt07qLPK;
 spf=pass (domain: gmail.com, ip: 209.85.166.44, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f44.google.com with SMTP id i189so7884297ioa.8
        for <yocto@lists.yoctoproject.org>; Thu, 24 Jun 2021 05:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xj/rVwr7zyiBgjpIndoclvgfAxLAj069ZUQTaeNHosY=;
        b=dt07qLPKVsvloPMuO9DnNVeJtzjGer4Ltcr4c03E+EkYeoqA6ybN62igIxxkHKvf9O
         iDXhXT2A7lal5cJxe2FPIuSZ9SQVPwp/pbTyPXTwkZE3Ie3bTsl0uNyTzGDZ4ifUZM+p
         vENLph+jTJ+zH/WpLDK31XActUzpf/JyDoNxtuvzWUX+bEeGf/+T0UlUg9brfoTBGID5
         +cK8edXfB8ARmibhhCwqE2LsjenTXarlKCG7RLjGEsSHNBm1ZyeEry7u0M+MEnXtVC+t
         s85PUrfQGpFAlD0e1IAdT1utMoPKkRsrtpdCLx/3POMkfRP0BO0ofMIcqilfL/YLlgGq
         JXQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xj/rVwr7zyiBgjpIndoclvgfAxLAj069ZUQTaeNHosY=;
        b=lB3+6J3XxKH2rgD8uZc5cvgORqdw+n1q/Zq/LwQfsfI1vb9YteonMpRFz9GDkpCT74
         ByJlYVezb4QtVhEoC4vAqQWSix/0PLHuEnv8ucgSevZb19e6VFNZA0pobdIHuENuSnXD
         hoHLqdDlh3Jm37eei5apfNoVZinJRdoKFItfdTzsskxR8sjbockasaIjBCjzzRE5SaIW
         WIuQB6hATPn9TP2KGr806MgK/nXUbCKk+RNzPVk0LpLhNWumNnxqXwnvZ4e5OBURwrKW
         7DOdWW6MLYcESwx0lBuVcZOF2LEbpWHVIR67vMk6muXmtZdropdcPWvt8I3l+A7KMe3Q
         1h/A==
X-Gm-Message-State: AOAM5338Eoq/Hb0M2IELAYJleq4HO0fhrup+r7tu3BWiBG7K0t+bGHjw
	uQ3klMAk/FNMbejgU6/EpPo/xK+nXOB+cw==
X-Google-Smtp-Source: ABdhPJxASoA9frQAPppeYN6jPGz68ew+w8wdICxHHO3crgM0fToCCUT+8bP19q6I76P8JuL/1wyrLA==
X-Received: by 2002:a5e:8a41:: with SMTP id o1mr3883505iom.92.1624538412722;
        Thu, 24 Jun 2021 05:40:12 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id d194sm868850iof.37.2021.06.24.05.40.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jun 2021 05:40:11 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH v2] console cleanup
Date: Thu, 24 Jun 2021 08:39:59 -0400
Message-Id: <20210624123959.10105-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Consolidate all the various console definitions to the common
conf/machine/include/rockchip-defaults.inc file and create
RK_CONSOLE_BAUD and RK_CONSOLE_DEVICE variables that can be
reused in the wks files.

The following variables were checked before and after this patch
to make sure they are sensible:
- SERIAL_CONSOLES
- RK_CONSOLE_DEVICE
- RK_CONSOLE_BAUD

A boot test was performed on the following boards to make sure
they all continue to boot to a cmdline:
- tinker-board
- rock-pi-e
- nanopi-m4-2gb
- rock64
- rock-pi-4b

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
Changes from v1:
- In v1 I defined RK_CONSOLE_BAUD and RK_CONSOLE_DEVICE for each MACHINE
  and then redefined SERIAL_CONSOLES to be the concatenation of these two
  variables. Khem pointed out this is a bad approach because I'm redefining
  an oe-core-defined variable that all BSPs expect.
- In v2 I set/consolidate SERIAL_CONSOLES for each MACHINE and then generate
  RK_CONSOLE_BAUD and RK_CONSOLE_DEVICE based on the first-defined
  <baud>;<device> pair found in SERIAL_CONSOLES; these generated variables are
  then used in the wks files.

---
 conf/machine/include/nanopi-m4.inc         |  2 --
 conf/machine/include/rk3066.inc            |  2 ++
 conf/machine/include/rk3188.inc            |  2 ++
 conf/machine/include/rk3288.inc            |  4 ++--
 conf/machine/include/rk3328.inc            |  2 --
 conf/machine/include/rk3399.inc            |  2 --
 conf/machine/include/rock-pi-4.inc         |  2 --
 conf/machine/include/rockchip-defaults.inc | 12 +++++++++++-
 conf/machine/marsboard-rk3066.conf         |  1 -
 conf/machine/radxarock.conf                |  1 -
 wic/firefly-rk3288.wks                     |  2 +-
 wic/rock-pi-4.wks                          |  2 +-
 wic/rock-pi-e.wks                          |  2 +-
 wic/tinker-board.wks                       |  2 +-
 wic/vyasa-rk3288.wks                       |  2 +-
 15 files changed, 22 insertions(+), 18 deletions(-)

diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/nanopi-m4.inc
index a14b705..8a7c1d9 100644
--- a/conf/machine/include/nanopi-m4.inc
+++ b/conf/machine/include/nanopi-m4.inc
@@ -21,5 +21,3 @@ WKS_FILE_DEPENDS ?= " \
 IMAGE_BOOT_FILES ?= "\
     ${KERNEL_IMAGETYPE} \
     "
-
-SERIAL_CONSOLES = "1500000;ttyS2"
diff --git a/conf/machine/include/rk3066.inc b/conf/machine/include/rk3066.inc
index dffbee0..5cc1024 100644
--- a/conf/machine/include/rk3066.inc
+++ b/conf/machine/include/rk3066.inc
@@ -7,5 +7,7 @@ require conf/machine/include/tune-cortexa9.inc
 require conf/machine/include/soc-family.inc
 require conf/machine/include/rockchip-defaults.inc
 
+SERIAL_CONSOLES = "115200;ttyS2"
+
 KBUILD_DEFCONFIG = "multi_v7_defconfig"
 KERNEL_IMAGETYPE = "zImage"
diff --git a/conf/machine/include/rk3188.inc b/conf/machine/include/rk3188.inc
index 59e65d1..6f3da93 100644
--- a/conf/machine/include/rk3188.inc
+++ b/conf/machine/include/rk3188.inc
@@ -7,5 +7,7 @@ require conf/machine/include/tune-cortexa9.inc
 require conf/machine/include/soc-family.inc
 require conf/machine/include/rockchip-defaults.inc
 
+SERIAL_CONSOLES = "115200;ttyFIQ0"
+
 KBUILD_DEFCONFIG = "multi_v7_defconfig"
 KERNEL_IMAGETYPE = "zImage"
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index 480e250..a109f26 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -7,11 +7,11 @@ require conf/machine/include/tune-cortexa17.inc
 require conf/machine/include/soc-family.inc
 require conf/machine/include/rockchip-defaults.inc
 
+SERIAL_CONSOLES = "115200;ttyS2"
+
 KBUILD_DEFCONFIG ?= "multi_v7_defconfig"
 KERNEL_IMAGETYPE = "zImage"
 
-SERIAL_CONSOLES = "115200;ttyS2"
-
 PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
 SPL_BINARY ?= "idbloader.img"
 
diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
index a4bbc5d..5b11868 100644
--- a/conf/machine/include/rk3328.inc
+++ b/conf/machine/include/rk3328.inc
@@ -19,7 +19,5 @@ TFA_BUILD_TARGET = "bl31"
 UBOOT_SUFFIX ?= "itb"
 UBOOT_ENTRYPOINT ?= "0x06000000"
 
-SERIAL_CONSOLES = "1500000;ttyS2"
-
 PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
 SPL_BINARY ?= "idbloader.img"
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
index f6b7826..9f9f474 100644
--- a/conf/machine/include/rk3399.inc
+++ b/conf/machine/include/rk3399.inc
@@ -19,8 +19,6 @@ TFA_BUILD_TARGET = "bl31"
 UBOOT_SUFFIX ?= "itb"
 UBOOT_ENTRYPOINT ?= "0x06000000"
 
-SERIAL_CONSOLES = "115200;ttyS2"
-
 PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
 SPL_BINARY ?= "idbloader.img"
 
diff --git a/conf/machine/include/rock-pi-4.inc b/conf/machine/include/rock-pi-4.inc
index 9c21084..a3e60c7 100644
--- a/conf/machine/include/rock-pi-4.inc
+++ b/conf/machine/include/rock-pi-4.inc
@@ -17,6 +17,4 @@ IMAGE_BOOT_FILES ?= "\
     ${KERNEL_IMAGETYPE} \
     "
 
-SERIAL_CONSOLES = "1500000;ttyS2"
-
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
index a4e2a2c..b0346c9 100644
--- a/conf/machine/include/rockchip-defaults.inc
+++ b/conf/machine/include/rockchip-defaults.inc
@@ -21,9 +21,19 @@ XSERVER = " \
 	"
 
 # misc
+SERIAL_CONSOLES ?= "1500000;ttyS2"
 IMAGE_FSTYPES += "ext4"
 
+# use the first-defined <baud>;<device> pair in SERIAL_CONSOLES
+# for the console parameter in the wks files
+RK_CONSOLE_BAUD ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[0]}"
+RK_CONSOLE_DEVICE ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[1].split()[0]}"
+
 # boot device (sd-card/emmc)
 RK_BOOT_DEVICE ??= "mmcblk0"
-WICVARS_append = " RK_BOOT_DEVICE"
 
+WICVARS_append = " \
+	RK_BOOT_DEVICE \
+	RK_CONSOLE_BAUD \
+	RK_CONSOLE_DEVICE \
+	"
diff --git a/conf/machine/marsboard-rk3066.conf b/conf/machine/marsboard-rk3066.conf
index 09414bc..52fd256 100644
--- a/conf/machine/marsboard-rk3066.conf
+++ b/conf/machine/marsboard-rk3066.conf
@@ -8,5 +8,4 @@
 
 require conf/machine/include/rk3066.inc
 
-SERIAL_CONSOLES = "115200;ttyS2"
 KERNEL_DEVICETREE = "rk3066a-marsboard.dtb"
diff --git a/conf/machine/radxarock.conf b/conf/machine/radxarock.conf
index 2036f6a..42d8848 100644
--- a/conf/machine/radxarock.conf
+++ b/conf/machine/radxarock.conf
@@ -9,5 +9,4 @@
 
 require conf/machine/include/rk3188.inc
 
-SERIAL_CONSOLES = "115200;ttyFIQ0"
 KERNEL_DEVICETREE = "rk3188-radxarock.dtb"
diff --git a/wic/firefly-rk3288.wks b/wic/firefly-rk3288.wks
index da0067f..7b14d1f 100644
--- a/wic/firefly-rk3288.wks
+++ b/wic/firefly-rk3288.wks
@@ -4,4 +4,4 @@
 include rk3288-boot.wks
 part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
 
-bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
+bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/rock-pi-4.wks b/wic/rock-pi-4.wks
index c6174a9..5c02e9f 100644
--- a/wic/rock-pi-4.wks
+++ b/wic/rock-pi-4.wks
@@ -4,4 +4,4 @@
 include rk3399-boot.wks
 part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
 
-bootloader --ptable gpt --append="console=tty1 console=ttyS2,1500000n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
+bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/rock-pi-e.wks b/wic/rock-pi-e.wks
index 97f84d1..9c10d90 100644
--- a/wic/rock-pi-e.wks
+++ b/wic/rock-pi-e.wks
@@ -1,4 +1,4 @@
 include rk3328-boot.wks
 part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
 
-bootloader --ptable gpt --append="console=tty1 console=ttyS2,1500000n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
+bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/tinker-board.wks b/wic/tinker-board.wks
index 5a63ce0..00ae820 100644
--- a/wic/tinker-board.wks
+++ b/wic/tinker-board.wks
@@ -5,4 +5,4 @@ include rk3288-boot.wks
 
 part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
 
-bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
+bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/vyasa-rk3288.wks b/wic/vyasa-rk3288.wks
index 5db65df..5346fbd 100644
--- a/wic/vyasa-rk3288.wks
+++ b/wic/vyasa-rk3288.wks
@@ -4,5 +4,5 @@
 include rk3288-boot.wks
 part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
 
-bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
+bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
 
-- 
2.30.0.rc0

