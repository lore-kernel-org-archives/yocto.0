Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7ED0C48BEB
	for <webhook@archiver.kernel.org>; Fri, 16 Feb 2024 08:29:48 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web10.14489.1708072181063803987
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Feb 2024 00:29:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=b3pAZa4G;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6861538916cso10217236d6.3
        for <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 00:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708072179; x=1708676979; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/0zjx/UDQy0kfZLjqxEhpLYDP3NbE1jSLoNjUKggU1s=;
        b=b3pAZa4GN0rRJ2oufU2LRuNO5slLqPyZyX/GbMxGOasoHziapRWCbxzxfT0vEs1pDd
         TwIVrsxeIbLp4u6BPrAbyx2vhy1Nh+pfWummFpn38hXtr1Z/PZiATRIXsnSgoFJImJlr
         zZlkIGx1wXqy37PSkk/dwwPn6ek02fiHfcWK+OXKE4kRZ4e2lhtOjHMtEMTr192MRkeQ
         HuA+S/TJpCY4Q8/Z8iPH5csZNkI6e58HsfwA0aDYrf1rs0bpBNnOUiZeyliKO1pSQPWy
         66T4wE7l6h4yEqQmwhJ7mbRLapXtDUdVJEU0ljx1rR7PLtqBEoneqb7oEr2mdDgcjU4n
         0p8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708072179; x=1708676979;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/0zjx/UDQy0kfZLjqxEhpLYDP3NbE1jSLoNjUKggU1s=;
        b=FY5O4omPp8R4njNe9aeJYRyLs0CVd9t6sRIFrhRP+qZnu92fBqfemT/mhWBgyofIC1
         Ju/effzPAKx/d78o7iQy350v189tEfpu9xEyTNpT+ryFb0dYb13KghViYKC44RmZAQps
         D/To19Ya20ngn2GgOI1iAUEjGvJZNRUalyVGDQCWBfTdCy6ibl0W33WXrbUvx1BtrMWr
         Dr+jF9Qcvqp2imcHbVzv2GIkmyiE5VDIkQ99QKtvncjOKeLoflzfjXTevBKld/laTmCk
         +XeRBjqSLz1Fwxhy+oB2VzW49ts/Eft5rGR2mGvcfDhTmWVfN9CkzysVLFadJRIEseI3
         crig==
X-Gm-Message-State: AOJu0YwoI7AsojV8AXAZvegfLEcl2J3M7t7bwpDnQ8Z8M1wxI8KTKt/5
	RlrZ/YADbE8Wn+A0HB7PbW6+qxhpRwk9YyVGcblNO8YdIcXOt8hCxEofn0N6
X-Google-Smtp-Source: AGHT+IFHpabd550BP3kIuFWUet7y8FG9PskFzojJwEfcl37dg8zIZZ+u7ufVybLJGM7RHlS0VDbzZw==
X-Received: by 2002:a05:6214:29c7:b0:68c:4f18:b057 with SMTP id gh7-20020a05621429c700b0068c4f18b057mr4839122qvb.39.1708072178872;
        Fri, 16 Feb 2024 00:29:38 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id ma17-20020a0562145b1100b0068cd399760fsm1522701qvb.61.2024.02.16.00.29.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 00:29:36 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH v2 3/4] remove /boot partition
Date: Fri, 16 Feb 2024 03:29:21 -0500
Message-ID: <20240216082922.7873-3-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
In-Reply-To: <20240216082922.7873-1-twoerner@gmail.com>
References: <20240216082922.7873-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 08:29:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62514

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

The location and size of the SPL partition is a hard dependency since the
BOOTROM etched inside the Rockchip SoCs is programmed to load and run a
validated binary it finds at this location. The locations, sizes, and
contents of the "boot" and "root" partitions are not so rigid since it
is U-Boot which interacts with them. U-Boot is very flexible with how it
finds boot components, and in its support for various devices, filesystems,
sizes, etc.

Both oe-core's U-Boot metadata and wic's bootimg-partition script contain
logic to generate the extlinux pieces required for a bootloader to boot
a Linux system. If both are enabled, the wic pieces silently clobber the
U-Boot pieces. However, the mechanisms contained in the U-Boot metadata are
much more flexible, from a user's point of view, than the mechanisms in
wic's bootimg-partition.

If a user wishes to setup some sort of A/B redundant update mechanism, they
must have redundant root partitions (in order to update their filesystem
contents) but they also need to have redundant boot partitions if they
wish to update the kernel as part of their update mechanism. Pairing
redundant kernel partitions with redundant filesystem partitions becomes
unnecessarily complicated. Therefore it makes sense to combine the kernel
and the filesystem into the same partition so that both the kernel and
filesystem are updated, or rolled back, in lock-step as one unit. Specific
kernel versions and configurations often have dependencies on user-space
components and versions.

The /boot location is not going away. This patch simply transfers
responsibility for its creation to the more flexible U-Boot mechanism
and includes the kernel as part of the same partition as the root
filesystem. Not only does it add flexibility, it also makes update schemes
more straightforward. Although having a separate /boot partition is a
"requirement" of the Rockchip partitioning scheme, it is not an actual
hard requirement when using a flexible, open-source bootloader (such as
U-Boot) instead of using Rockchip's proprietary miniloader, preloader, and
trust.img.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
changes in v2:
- add UBOOT_EXTLINUX_FDT and tweak UBOOT_EXTLINUX_FDTDIR to modify their
  behaviour based on whether or not KERNEL_IMAGETYPE is fitImage
- remove extraneous WKS_FILE_DEPENDS
- remove "--ptable gpt" from wks
- move newly added "earlycon" to UBOOT_EXTLINUX_CONSOLE
- re-word the commit message to better explain the behaviour of the
  Rockchip BootROM
---
 conf/machine/include/rockchip-defaults.inc |  2 ++
 conf/machine/include/rockchip-extlinux.inc | 12 ++++++++++++
 conf/machine/include/rockchip-wic.inc      | 20 ++------------------
 wic/rockchip.wks                           |  8 ++------
 4 files changed, 18 insertions(+), 24 deletions(-)
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
index 000000000000..3af7ed629e34
--- /dev/null
+++ b/conf/machine/include/rockchip-extlinux.inc
@@ -0,0 +1,12 @@
+UBOOT_EXTLINUX ?= "1"
+UBOOT_EXTLINUX_ROOT ?= "root=PARTLABEL=root"
+UBOOT_EXTLINUX_FDTDIR ?= "${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '/boot', d)}"
+NONFITDT ?= "${@d.getVar('KERNEL_DEVICETREE').split('/')[1]}"
+UBOOT_EXTLINUX_FDT ?= "${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '${NONFITDT}', d)}"
+UBOOT_EXTLINUX_CONSOLE ?= "earlycon console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8"
+UBOOT_EXTLINUX_KERNEL_ARGS ?= "rootwait rw rootfstype=ext4"
+UBOOT_EXTLINUX_KERNEL_IMAGE ?= "/boot/${KERNEL_IMAGETYPE}"
+UBOOT_EXTLINUX_LABELS ?= "default"
+UBOOT_EXTLINUX_MENU_DESCRIPTION:default ?= "${MACHINE}"
+
+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "u-boot-extlinux"
diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
index 67a8310f7d6a..147a36685d7d 100644
--- a/conf/machine/include/rockchip-wic.inc
+++ b/conf/machine/include/rockchip-wic.inc
@@ -1,33 +1,17 @@
 # common meta-rockchip wic/wks items
 
+require conf/machine/include/rockchip-extlinux.inc
+
 SPL_BINARY ?= "idbloader.img"
 
 IMAGE_FSTYPES += "wic wic.bmap"
 WKS_FILE ?= "rockchip.wks"
 WKS_FILE_DEPENDS ?= " \
-	mtools-native \
-	dosfstools-native \
 	e2fsprogs-native \
 	virtual/bootloader \
-	virtual/kernel \
-	"
-# KERNEL_DEVICETREE follows the pattern of 'rockchip/${SOC_FAMILY}-${BOARD}.dtb'
-# but is placed in the deploy directory as simply '${SOC_FAMILY}-${BOARD}.dtb'
-# therefore we have to strip off the 'rockchip/' for IMAGE_BOOT_FILES
-NONFITDT="${@d.getVar('KERNEL_DEVICETREE').split('/')[1]}"
-IMAGE_BOOT_FILES = " \
-	${KERNEL_IMAGETYPE} \
-	${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '${NONFITDT}', d)} \
 	"
 
-# use the first-defined <baud>;<device> pair in SERIAL_CONSOLES
-# for the console parameter in the wks files
-RK_CONSOLE_BAUD ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[0]}"
-RK_CONSOLE_DEVICE ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[1].split()[0]}"
-
 WICVARS:append = " \
-	RK_CONSOLE_BAUD \
-	RK_CONSOLE_DEVICE \
 	SPL_BINARY \
 	UBOOT_SUFFIX \
 	"
diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index 034443d90050..4fccdf668c50 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -17,8 +17,7 @@
 #   reserved2   8192            8192        (legacy parameters, ATAGS, etc)
 #   loader2     16384           8192        (U-Boot proper)
 #   atf         24576           8192        (trusted OS e.g. ATR, OP-TEE, etc)
-#   boot        32768           229376
-#   root        262144          -           (suggested)
+#   root        32768           -
 
 part loader1    --offset 32     --fixed-size 3552K    --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
 part vstorage   --offset 3584   --fixed-size 256K     --fstype=none  --no-table
@@ -28,7 +27,4 @@ part uboot_env  --offset 4064   --fixed-size 32K      --fstype=none  --no-table
 part reserved2  --offset 4096   --fixed-size 4096K    --fstype=none  --no-table
 part loader2    --offset 8192   --fixed-size 4096K    --fstype=none            --source rawcopy                                   --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
 part atf        --offset 12288  --fixed-size 4096K    --fstype=none
-part /boot      --offset 16384  --size       114688K  --fstype=vfat  --active  --source bootimg-partition --label boot --use-uuid --sourceparams="loader=u-boot"
-part /                                                --fstype=ext4            --source rootfs            --label root --use-uuid
-
-bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw rootfstype=ext4 init=/sbin/init"
+part /          --offset 16384                        --fstype=ext4  --active  --source rootfs            --label root
-- 
2.43.0.76.g1a87c842ece3


