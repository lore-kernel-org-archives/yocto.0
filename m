Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 447F2C48BC1
	for <webhook@archiver.kernel.org>; Mon, 12 Feb 2024 20:24:01 +0000 (UTC)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
 by mx.groups.io with SMTP id smtpd.web10.17136.1707769432004122391
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Feb 2024 12:23:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Wd92aawb;
 spf=pass (domain: gmail.com, ip: 209.85.222.41, mailfrom: twoerner@gmail.com)
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-7d6a772e08dso1018112241.2
        for <yocto@lists.yoctoproject.org>; Mon, 12 Feb 2024 12:23:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707769429; x=1708374229; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+rWuyhE4H3LCBQl5K3aMdLQZia6EQFtfeTuCvR3dEXA=;
        b=Wd92aawbO4LS/yfz2eXiup7+DV5RGgsqhyk895p3PFoQekzg+up++lR5BtLlWJf+Gp
         nWDqB56UKj1PmLXlkwMrpGoF4Y0UD1pioFNmNqiLmmFQeruiO5JoBLQ4kSnq7zylO1as
         uZkIZ5VO7DzXUkl8reBR2HgwIcswIwdzKILNmRHyxL4o3EXNmh/P4qTMB3qJgP/NpW7i
         PddWNb8sVyhjSKqzInDhbaZdxG0jhK8CbcQVCA6sdmQR5QvvMN4Yqu4nZQM1y0DLKvH+
         wUKnhBrK0zCBGBsuWbNskaO3T4S72njsvzw0L1n8Pkl4fWy55xXQMGxlpWuc7bh2/S5Y
         pfmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707769429; x=1708374229;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+rWuyhE4H3LCBQl5K3aMdLQZia6EQFtfeTuCvR3dEXA=;
        b=RqSZ9jjDpvGLg3CMlh4cm4j5OCl8mE9JciXNTrYV2cVwodYO8yQMX1OSGjdGx579Cj
         gMCVfOgREA29YStzVNQ7r7XEVanhWZamPaP8mM/wWTIr4vbOQGNoL26QcKislxfJiyLf
         how4wTmA800jnvXJ/5OpLFRlLVQwfvGlvOrs5O0WopGZDO8UsKfUiZPK3tAYikekvZIZ
         11GXKs4Lhpzoc/ESey3WxiAVuJV2Wl4mSSLwAWSO2g6jc7/7BW6lggqw8qoWXDXkldLr
         wI9j+GwWPUI/osS+aFm5OY3AOiP7e1qHUtZ7WGsu13MroQW1zJxJlRnjyl3reu7DArZk
         QEmw==
X-Gm-Message-State: AOJu0YxHHxqBcVpX/0drLpTCUyPouCsKNh33OJMTgR0bnBiU3Ek5i7+j
	MtNdkUtWnIDEo/cW9YjO1Uhs/uaqKVaVNBb4iQMZpkrmJ5jGx//IXJWiTZs9
X-Google-Smtp-Source: AGHT+IEl6yxWFecsWnP+zo28Bpv+r2kf04BkRLA7oer5i60BzhifIBEu10xQVGmPpIw7wg/Poj9mew==
X-Received: by 2002:a05:6102:394e:b0:46d:7523:1fe with SMTP id f14-20020a056102394e00b0046d752301femr3642210vsu.30.1707769429345;
        Mon, 12 Feb 2024 12:23:49 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id oj9-20020a056214440900b0068d1c9801aesm477233qvb.66.2024.02.12.12.23.47
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 12:23:47 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 3/4] remove /boot partition from wic:bootimg-paritition
Date: Mon, 12 Feb 2024 15:23:41 -0500
Message-ID: <20240212202342.37778-3-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
In-Reply-To: <20240212202342.37778-1-twoerner@gmail.com>
References: <20240212202342.37778-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Feb 2024 20:24:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62466

In order to boot successfully, most Rockchip SoCs require a specific
partitioning scheme which was defined many years (and many SoCs) ago. That
partitioning scheme places the SPL and U-Boot at specific offsets at the
start of the boot block device:

	https://opensource.rock-chips.com/wiki_Partitions

The Rockchip partitioning scheme goes on to also define the locations and
sizes of a number of additional partitions, including the "boot" and "root"
partitions.

Since both the SPL and U-Boot have already been placed on the block device,
the "boot" partition only contains the extlinux config file and the
kernel+dtb/fitImage; it doesn't contain any bootloader artifacts (other
than the extlinux config).

The locations and sizes of the SPL and U-Boot partitions are hard
dependencies since the BOOTROM etched inside the Rockchip SoCs is
programmed to blindly load and run what it finds at these locations. The
locations, sizes, and contents of the "boot" and "root" partitions are
not so rigid since it is U-Boot which interacts with them. U-Boot is very
flexible with how it finds boot components, and in its support for various
devices, filesystems, sizes, etc.

Both oe-core's U-Boot metadata and wic's bootimg-partition script contain
logic to generate the extlinux pieces required for a bootloader to boot
a Linux system. If both are enabled, the wic pieces silently clobber the
U-Boot pieces. However, the mechanisms contained in the U-Boot metadata are
much more flexible, from a user's point of view, than the mechanisms in
bootimg-partition.

Also, if a user wishes to setup some sort of A/B redundant update
mechanism, they must have redundant root partitions (in order to update
their filesystem contents) but they also need to have redundant boot
partitions if they wish to update the kernel as part of their update
mechanism. Pairing redundant kernel partitions with redundant filesystem
partitions becomes unnecessarily complicated. Therefore it makes sense
to combine the kernel and the filesystem into the same partition so that
both the kernel and filesystem are updated, or rolled back, in lock-step
as one unit. Specific kernel versions and configurations often have
dependencies on user-space components and versions.

The boot partition is not going away. This patch simply transfers
responsibility for its creation to the more flexible U-Boot mechanism and
includes the kernel as part of the same partition as the root filesystem.
Not only does it add flexibility, it also makes update schemes more
straightforward. Although having a separate /boot partition is a
"requirement" of the Rockchip partitioning scheme, it is not an actual
hard requirement when using a flexible, open-source bootloader (such as
U-Boot) instead of using Rockchip's proprietary miniloader, preloader, and
trust.img.

Boot-tested on:
	nanopi-m4b, nanopi-r2s, nanopi-r4s, roc-rk3328-cc, rock-3a,
	rock-pi-4b, rock-5a, rock-5b, rock-pi-e, rock-pi-s, rock64

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/rockchip-defaults.inc |  2 ++
 conf/machine/include/rockchip-extlinux.inc | 10 ++++++++++
 conf/machine/include/rockchip-wic.inc      | 17 ++---------------
 wic/rockchip.wks                           |  5 ++---
 4 files changed, 16 insertions(+), 18 deletions(-)
 create mode 100644 conf/machine/include/rockchip-extlinux.inc

diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
index 3ce2e246ab0b..2387eb909934 100644
--- a/conf/machine/include/rockchip-defaults.inc
+++ b/conf/machine/include/rockchip-defaults.inc
@@ -19,3 +19,5 @@ XSERVER = " \
 
 # misc
 SERIAL_CONSOLES ?= "1500000;ttyS2"
+RK_CONSOLE_BAUD ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[0]}"
+RK_CONSOLE_DEVICE ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[1].split()[0]}"
diff --git a/conf/machine/include/rockchip-extlinux.inc b/conf/machine/include/rockchip-extlinux.inc
new file mode 100644
index 000000000000..c73fb7d17e02
--- /dev/null
+++ b/conf/machine/include/rockchip-extlinux.inc
@@ -0,0 +1,10 @@
+UBOOT_EXTLINUX ?= "1"
+UBOOT_EXTLINUX_ROOT ?= "root=PARTLABEL=root"
+UBOOT_EXTLINUX_FDTDIR ?= ""
+UBOOT_EXTLINUX_CONSOLE ?= "console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8"
+UBOOT_EXTLINUX_KERNEL_ARGS ?= "rootwait rw rootfstype=ext4 earlycon"
+UBOOT_EXTLINUX_KERNEL_IMAGE ?= "/boot/${KERNEL_IMAGETYPE}"
+UBOOT_EXTLINUX_LABELS ?= "default"
+UBOOT_EXTLINUX_MENU_DESCRIPTION:default ?= "${MACHINE}"
+
+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "u-boot-extlinux"
diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
index 67a8310f7d6a..cae14c90e1db 100644
--- a/conf/machine/include/rockchip-wic.inc
+++ b/conf/machine/include/rockchip-wic.inc
@@ -1,5 +1,7 @@
 # common meta-rockchip wic/wks items
 
+require conf/machine/include/rockchip-extlinux.inc
+
 SPL_BINARY ?= "idbloader.img"
 
 IMAGE_FSTYPES += "wic wic.bmap"
@@ -11,23 +13,8 @@ WKS_FILE_DEPENDS ?= " \
 	virtual/bootloader \
 	virtual/kernel \
 	"
-# KERNEL_DEVICETREE follows the pattern of 'rockchip/${SOC_FAMILY}-${BOARD}.dtb'
-# but is placed in the deploy directory as simply '${SOC_FAMILY}-${BOARD}.dtb'
-# therefore we have to strip off the 'rockchip/' for IMAGE_BOOT_FILES
-NONFITDT="${@d.getVar('KERNEL_DEVICETREE').split('/')[1]}"
-IMAGE_BOOT_FILES = " \
-	${KERNEL_IMAGETYPE} \
-	${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '${NONFITDT}', d)} \
-	"
-
-# use the first-defined <baud>;<device> pair in SERIAL_CONSOLES
-# for the console parameter in the wks files
-RK_CONSOLE_BAUD ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[0]}"
-RK_CONSOLE_DEVICE ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[1].split()[0]}"
 
 WICVARS:append = " \
-	RK_CONSOLE_BAUD \
-	RK_CONSOLE_DEVICE \
 	SPL_BINARY \
 	UBOOT_SUFFIX \
 	"
diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index 8dc4d20f2f54..5d7701ef8a2e 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -28,7 +28,6 @@ part uboot_env  --offset 4064   --fixed-size 32K      --fstype=none
 part reserved2  --offset 4096   --fixed-size 4096K    --fstype=none
 part loader2    --offset 8192   --fixed-size 4096K    --fstype=none            --source rawcopy                                   --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
 part atf        --offset 12288  --fixed-size 4096K    --fstype=none
-part /boot      --offset 16384  --size       114688K  --fstype=vfat  --active  --source bootimg-partition --label boot --use-uuid --sourceparams="loader=u-boot"
-part /                                                --fstype=ext4            --source rootfs            --label root --use-uuid
+part /          --offset 16384                        --fstype=ext4  --active  --source rootfs            --label root
 
-bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw rootfstype=ext4 init=/sbin/init"
+bootloader --ptable gpt
-- 
2.43.0.76.g1a87c842ece3


