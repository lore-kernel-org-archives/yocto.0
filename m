Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web12.1214.1631916090675553275
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Sep 2021 15:01:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HJEVWVEE;
 spf=pass (domain: gmail.com, ip: 209.85.222.177, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id bk29so21961646qkb.8
        for <yocto@lists.yoctoproject.org>; Fri, 17 Sep 2021 15:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iIvemyjkBm8cjnKtx8U4K6tKvI5WLNx7I7kOFGWQqCc=;
        b=HJEVWVEE8Jpnz9/vdjEyvBW+DcSAJmuqLbspzECT3FnnQfmrT6GOjlZ7VETdVhTeKX
         iHwiiboBjdI/wGyaoRmBWIeAftlkspWV6+q83yXtrHekY6kx1v2a+nq6Er9FO3h6DEZZ
         ZGWP7uFKqxlPdoqis8vhXaNj50eUbNzY/DNAkqLN57apBxzw7/Wl/dIc+98JIzBPFY1C
         U82sHAcLIhKJVZuP8bGWQSvAsYhsb1fWeG1v0UvxaJpgTpQ+uoYuPUPn60FJZXgoYlWY
         97UVNK7aBpz9+PYKaFJCsVcfRBZYSaXY5u7GV2XAKIY4wEoBDE3ocrezZ6nqi1Ag65sx
         U5CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iIvemyjkBm8cjnKtx8U4K6tKvI5WLNx7I7kOFGWQqCc=;
        b=tXRbHglTBYojQiuY75oXnNwqmKPvd04bv0+FPLktWHYx5P7pR+dXTzeMgl2Fui+AB4
         4LcoJnRKsQ1shgfDM1mcebT4Bf0KZ1CAhyEuGiTEBYVeOHVuUSgdmh3XUDnY3DSZwnyg
         aoP4IXYgUIBBQBndarh5ZaiI6kb8WG/WTMlLg9vLeNTwyzBc4QX6Zh0AIj6zMw59zlJs
         zhqlLLI097UTGdu9ogTyh1K/WbGIEeK6B3Qg+amLz6A1l1/D4e/8N5MoZdWEU27dpaXO
         wjixtJrl8LMQxTY9R+CIHbjA/G1Yp3ZsFM+5iH9FOoF7aXY2UNl3C1JRWcc9HTHEhGmG
         YlkQ==
X-Gm-Message-State: AOAM5301c5MkeT0K+yEpwN/R/MFKLrrbqR9UgAtU35IFo0+hZuleYoqP
	h6LulzdxeyWN8Wt5z8oYMyFdTcF38EI=
X-Google-Smtp-Source: ABdhPJykHzW3834j27i6uth2MAY1RoTpPdHgc5HxhSHYls5ilzKezYXvgPHny9NHmpWydaD1Msx0Xg==
X-Received: by 2002:a05:620a:1105:: with SMTP id o5mr13313515qkk.278.1631916089359;
        Fri, 17 Sep 2021 15:01:29 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id m68sm5902920qkb.105.2021.09.17.15.01.28
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Sep 2021 15:01:28 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] use uuid instead of hard-coding root device
Date: Fri, 17 Sep 2021 18:01:21 -0400
Message-Id: <20210917220121.26663-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Recent upstream kernel changes have made the mmc probing order unpredictable.
Therefore, boards with both an emmc and sdmmc interface aren't guaranteed to
boot with a hard-coded root device selected.

For example, on the rock64, with linux-yocto 5.10.y, using the uSD card (i.e.
the sdmmc interface) about 50% of the time the boot would succeed, and roughly
50% of the time it wouldn't:

	...
	[    0.612233] Waiting for root device /dev/mmcblk1p7...
	[    0.634551] mmc_host mmc1: Bus speed (slot 0) = 300000Hz (slot req 300000Hz, actual 300000HZ div = 0)
	[    0.639064] mmc_host mmc0: Bus speed (slot 0) = 50000000Hz (slot req 50000000Hz, actual 50000000HZ di)
	[    0.640007] mmc0: new high speed SDXC card at address 5048
	[    0.641176] mmcblk0: mmc0:5048 SD64G 58.0 GiB
	[    0.647610] random: fast init done
	[    0.648279] GPT:Primary header thinks Alt. header is not at the end of the disk.
	[    0.648941] GPT:376479 != 121634815
	[    0.649252] GPT:Alternate GPT header not at the end of the disk.
	[    0.649796] GPT:376479 != 121634815
	[    0.650106] GPT: Use GNU Parted to correct GPT errors.
	[    0.650598]  mmcblk0: p1 p2 p3 p4 p5 p6 p7

NOTE the discrepancy between the kernel waiting for device /dev/mmcblk1p7,
which comes from the hard-coded kernel cmdline, and the kernel probing putting
the sdmmc on mmcblk0.

With linux-yocto 5.13.y on the rock64 using the uSD card the board would never
boot, the sdmmc always appears on mmcblk0.

Instead of simply changing the hard-coded root device (i.e. from mmcblk0 to
mmcblk1) switch to using partition UUIDs instead. Hard-coding the boot device
would work with 5.13.y but would fail 50% of the time with 5.10.y; who knows
what other kernels will do?

In any case, switching to UUIDs works regardless of board, kernel, or
available mmc interfaces.

Boot tested on:
- rock64
- nanopi-m4-2gb
- tinker-board
- rock-pi-e
- rock-pi-4b

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/nanopi-m4.inc    |  2 --
 conf/machine/include/rock-pi-4.inc    |  2 --
 conf/machine/include/rockchip-wic.inc |  4 ----
 conf/machine/rock64.conf              |  3 ---
 conf/machine/tinker-board-s.conf      |  2 --
 conf/machine/vyasa-rk3288.conf        |  2 --
 wic/rockchip.wks                      | 16 ++++++++--------
 7 files changed, 8 insertions(+), 23 deletions(-)

diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/nanopi-m4.inc
index ac6479d..3870b51 100644
--- a/conf/machine/include/nanopi-m4.inc
+++ b/conf/machine/include/nanopi-m4.inc
@@ -7,5 +7,3 @@ MACHINE_FEATURES += "usbhost serial"
 
 KMACHINE = "nanopi-m4"
 KERNEL_DEVICETREE = "rockchip/rk3399-nanopi-m4.dtb"
-
-RK_BOOT_DEVICE = "mmcblk1"
diff --git a/conf/machine/include/rock-pi-4.inc b/conf/machine/include/rock-pi-4.inc
index b6fb3dd..0a86846 100644
--- a/conf/machine/include/rock-pi-4.inc
+++ b/conf/machine/include/rock-pi-4.inc
@@ -3,6 +3,4 @@ MACHINEOVERRIDES =. "rock-pi-4:"
 
 require conf/machine/include/rk3399.inc
 
-RK_BOOT_DEVICE = "mmcblk1"
-
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
index b5939f7..15010a0 100644
--- a/conf/machine/include/rockchip-wic.inc
+++ b/conf/machine/include/rockchip-wic.inc
@@ -20,11 +20,7 @@ IMAGE_BOOT_FILES = " \
 RK_CONSOLE_BAUD ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[0]}"
 RK_CONSOLE_DEVICE ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[1].split()[0]}"
 
-# boot device (sd-card/emmc)
-RK_BOOT_DEVICE ??= "mmcblk0"
-
 WICVARS:append = " \
-	RK_BOOT_DEVICE \
 	RK_CONSOLE_BAUD \
 	RK_CONSOLE_DEVICE \
 	SPL_BINARY \
diff --git a/conf/machine/rock64.conf b/conf/machine/rock64.conf
index 21755a8..fa75a51 100644
--- a/conf/machine/rock64.conf
+++ b/conf/machine/rock64.conf
@@ -12,7 +12,4 @@ MACHINE_FEATURES += "usbhost serial"
 UBOOT_MACHINE = "rock64-rk3328_defconfig"
 KERNEL_DEVICETREE = "rockchip/rk3328-rock64.dtb"
 
-# set to mmcblk0 for booting from optional eMMC
-RK_BOOT_DEVICE ?= "mmcblk1"
-
 KBUILD_DEFCONFIG = "defconfig"
diff --git a/conf/machine/tinker-board-s.conf b/conf/machine/tinker-board-s.conf
index 9f44f2f..870b9bc 100644
--- a/conf/machine/tinker-board-s.conf
+++ b/conf/machine/tinker-board-s.conf
@@ -9,5 +9,3 @@ require conf/machine/include/tinker.inc
 
 KERNEL_DEVICETREE = "rk3288-tinker-s.dtb"
 UBOOT_MACHINE = "tinker-s-rk3288_defconfig"
-
-RK_BOOT_DEVICE ?= "mmcblk1"
diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.conf
index 9ad1ed4..5b44257 100644
--- a/conf/machine/vyasa-rk3288.conf
+++ b/conf/machine/vyasa-rk3288.conf
@@ -13,5 +13,3 @@ KERNEL_DEVICETREE = "rk3288-vyasa.dtb"
 KERNEL_EXTRA_ARGS += "LOADADDR=0x02000000"
 
 UBOOT_MACHINE = "vyasa-rk3288_defconfig"
-
-RK_BOOT_DEVICE = "mmcblk2"
diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index eedae0d..5ee276b 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -15,12 +15,12 @@
 #   boot        32768           229376
 #   root        262144          -           (suggested)
 
-part loader1    --offset 32     --fixed-size 4000K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy                                      --sourceparams="file=${SPL_BINARY}"
-part reserved1  --offset 4032   --fixed-size 64K              --ondisk ${RK_BOOT_DEVICE}
-part reserved2  --offset 4096   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE}
-part loader2    --offset 8192   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy                                      --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
-part atf        --offset 12288  --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE}
-part /boot      --offset 16384  --size       114688K --active --ondisk ${RK_BOOT_DEVICE} --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
-part /                                                        --ondisk ${RK_BOOT_DEVICE} --source rootfs            --fstype=ext4 --label root
+part loader1    --offset 32     --fixed-size 4000K            --source rawcopy                                                 --sourceparams="file=${SPL_BINARY}"
+part reserved1  --offset 4032   --fixed-size 64K
+part reserved2  --offset 4096   --fixed-size 4096K
+part loader2    --offset 8192   --fixed-size 4096K            --source rawcopy                                                 --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
+part atf        --offset 12288  --fixed-size 4096K
+part /boot      --offset 16384  --size       114688K --active --source bootimg-partition --fstype=vfat --label boot            --sourceparams="loader=u-boot"
+part /                                                        --source rootfs            --fstype=ext4 --label root --use-uuid
 
-bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
+bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw rootfstype=ext4 init=/sbin/init"
-- 
2.30.0.rc0

