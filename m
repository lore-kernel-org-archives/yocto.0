Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89468C54764
	for <webhook@archiver.kernel.org>; Mon, 19 Feb 2024 17:48:46 +0000 (UTC)
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
 by mx.groups.io with SMTP id smtpd.web10.532.1708364921267627778
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Feb 2024 09:48:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=c2zwsNq0;
 spf=pass (domain: gmail.com, ip: 209.85.166.171, mailfrom: twoerner@gmail.com)
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-365337ad3e7so2895565ab.0
        for <yocto@lists.yoctoproject.org>; Mon, 19 Feb 2024 09:48:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708364919; x=1708969719; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VyYb4wWfi9qLFSpsrO+bp4aVGyiaqTjMCDj3HHZ4+eM=;
        b=c2zwsNq0XzoCSOrTAXo/88ih1vgzcXTzO+Lb/EimSb6VlAWNh3dmpjdu0dtwTO3Sx+
         NM8yl/FBYVZqyoM7iFhS8zXWjyJAwRiq3XMpzNNPcWBz3kE6vXp6ESNrwk6bGNttDuST
         GQpGXKvtbnVAJokfYyguUxFM/0NoWoytNbW/6W4BdZCgjBdlQsfoptzeD0LpaAZUnWSc
         Fe5U/115J0MdOsTnRDnJNy8d/7MKKkDI05GFgsLPygKqo/Y4BejWUt+we2U4nY2obZd8
         UyYYL12+PcrqajfBG38r/ctf0MJY0phKP2M02032VNp8A4NywDZ2Yi/MyieEC6NhKDJG
         asLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708364919; x=1708969719;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VyYb4wWfi9qLFSpsrO+bp4aVGyiaqTjMCDj3HHZ4+eM=;
        b=RLXvyH9loRpFvwu23AXnDvJDZeEYJa8ImsFuo85S+XaI2FMMfPwzm7crXuC/kf3tp8
         qxoZf5qQaS8kXm17BcZAiVkrycV9yX1LsO+bOQKBqAAnd/e2NWcqEEdY7w2CQq+rFrEh
         1ID/QEp6fW/sISsIuJwlXSRbog2PisjZB+f3/uR3KQeDu7YpyQte88tt5L6Wwnw1yggV
         vlCw6vdu+zxFUBLavkdsu9mvNbVXTz4NuJ3DPjzlWzaBTEGcebwYQcV8utPlKm1/hx2S
         feiCuNI31JCqtUfrPU0khBIRzhok5NV2o/cmOPcaz/pPtY1ljQ9CDdaRJ4b8nr2iK6ZY
         xRUQ==
X-Gm-Message-State: AOJu0YziaajpTLOxuu87u9jIHJBVllw4JTF32RhCeMpa8dmCPBpFjA9q
	jCqS2vwUH+HhmuhgEMyJqmV4m/qQD3py3VZJZIEMSD+9y55iOWBcaMaE/O6R
X-Google-Smtp-Source: AGHT+IF5fufCTWmMpojgIVklXbRveeJrG8fyX/fVJZb3AFIdNSGK+2FNCU64whhRSGbTywV98Yr5Eg==
X-Received: by 2002:a92:d84f:0:b0:365:17cf:f759 with SMTP id h15-20020a92d84f000000b0036517cff759mr8451450ilq.14.1708364919215;
        Mon, 19 Feb 2024 09:48:39 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id x5-20020a056e021ca500b00363ea5c0fb4sm2300208ill.70.2024.02.19.09.48.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 09:48:36 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH v3 4/5] remove /boot partition
Date: Mon, 19 Feb 2024 12:48:24 -0500
Message-ID: <20240219174825.7084-4-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
In-Reply-To: <20240219174825.7084-1-twoerner@gmail.com>
References: <20240219174825.7084-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Feb 2024 17:48:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62544

In order to boot successfully, most Rockchip SoCs require a specific
partitioning scheme which was defined many years (and many SoCs) ago. That
partitioning scheme places the SPL and U-Boot at specific offsets at the
start of the boot block device:

        https://opensource.rock-chips.com/wiki_Partitions

The Rockchip partitioning scheme goes on to also define the locations
of a number of additional partitions, including the "boot" and "root"
partitions.

Since both the SPL and U-Boot have already been placed on the block device,
the "boot" partition only contains the extlinux config file and the
kernel+dtb/fitImage; it doesn't contain any bootloader artifacts (other
than the extlinux config).

The location of the SPL partition is a hard dependency since the BOOTROM
etched inside the Rockchip SoCs is programmed to load and run a validated
binary it finds at this location. The locations of the "boot" and "root"
partitions are not so rigid since it is U-Boot which interacts with them.
U-Boot is very flexible with how it finds boot components, and in its
support for various devices, filesystems, sizes, etc.

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

Build-tested for all boards.
Run-tested on:
	nanopi-m4-2gb, nanopi-m4b, nanopi-r2s, nanopi-r4s, roc-rk3328-cc,
	rock-3a, rock-5a, rock-5b, rock-pi-4b, rock-pi-e, rock-pi-s,
	rock64

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
changes in v3:
- add back the comment explaining the need for NONFITDT
- change the inclusion of the u-boot-extlinux package from RRECOMMENDS
  to RDEPENDS
- clarify the commit message to remove the un-true statement that sizes
  are hard requirements
- add back the "--ptable gpt" line to rockchip.wks

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
 conf/machine/include/rockchip-extlinux.inc | 24 ++++++++++++++++++++++
 conf/machine/include/rockchip-wic.inc      | 20 ++----------------
 wic/rockchip.wks                           | 12 +++++------
 4 files changed, 33 insertions(+), 25 deletions(-)
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
index 000000000000..ca33f4c7f42a
--- /dev/null
+++ b/conf/machine/include/rockchip-extlinux.inc
@@ -0,0 +1,24 @@
+# KERNEL_DEVICETREE follows the pattern of
+# 'rockchip/${SOC_FAMILY}-${BOARD}.dtb' which is required when compiling
+# the kernel so the kernel's Makefile can find the device tree
+#
+# when using extlinux with a fitImage the device tree is contained in the
+# fitImage
+#
+# however for non-fitImages it is not found at
+# $UBOOT_EXTLINUX_FDTDIR/rockchip/$KERNEL_DEVICETREE but rather at
+# $UBOOT_EXTLINUX_FDTDIR/$KERNEL_DEVICETREE therefore we need to strip off
+# the 'rockchip/' part for extlinux non-fitImage builds
+NONFITDT ?= "${@d.getVar('KERNEL_DEVICETREE').split('/')[1]}"
+
+UBOOT_EXTLINUX ?= "1"
+UBOOT_EXTLINUX_ROOT ?= "root=PARTLABEL=root"
+UBOOT_EXTLINUX_FDTDIR ?= "${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '/boot', d)}"
+UBOOT_EXTLINUX_FDT ?= "${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '${NONFITDT}', d)}"
+UBOOT_EXTLINUX_CONSOLE ?= "earlycon console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8"
+UBOOT_EXTLINUX_KERNEL_ARGS ?= "rootwait rw rootfstype=ext4"
+UBOOT_EXTLINUX_KERNEL_IMAGE ?= "/boot/${KERNEL_IMAGETYPE}"
+UBOOT_EXTLINUX_LABELS ?= "default"
+UBOOT_EXTLINUX_MENU_DESCRIPTION:default ?= "${MACHINE}"
+
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "u-boot-extlinux"
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
index b557f8137af1..e8f0251272c1 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -16,18 +16,16 @@
 #   reserved2   8192            8192        (legacy parameters, ATAGS, etc)
 #   loader2     16384           8192        (U-Boot proper)
 #   atf         24576           8192        (trusted OS e.g. ATF, OP-TEE, etc)
-#   boot        32768           229376
-#   root        262144          -           (suggested)
+#   root        32768           -
 
-part loader1    --offset 64s    --fixed-size 3552K   --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
+part loader1    --offset 64s    --fixed-size 3552K   --fstype=none            --source rawcopy              --sourceparams="file=${SPL_BINARY}"
 part v_storage  --offset 7168s  --fixed-size 256K    --fstype=none --no-table
 part reserved   --offset 7680s  --fixed-size 192K    --fstype=none --no-table
 part reserved1  --offset 8064s  --fixed-size 32K     --fstype=none --no-table
 part uboot_env  --offset 8128s  --fixed-size 32K     --fstype=none --no-table
 part reserved2  --offset 8192s  --fixed-size 4096K   --fstype=none --no-table
-part loader2    --offset 16384s --fixed-size 4096K   --fstype=none            --source rawcopy                                   --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
+part loader2    --offset 16384s --fixed-size 4096K   --fstype=none            --source rawcopy              --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
 part atf        --offset 24576s --fixed-size 4096K   --fstype=none
-part /boot      --offset 32768s --size       114688K --fstype=vfat --active   --source bootimg-partition --label boot --use-uuid --sourceparams="loader=u-boot"
-part /                                               --fstype=ext4            --source rootfs            --label root --use-uuid
+part /          --offset 32768s                      --fstype=ext4 --active   --source rootfs  --label root
 
-bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw rootfstype=ext4 init=/sbin/init"
+bootloader --ptable gpt
-- 
2.43.0.76.g1a87c842ece3


