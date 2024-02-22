Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 147AEC48BF8
	for <webhook@archiver.kernel.org>; Thu, 22 Feb 2024 17:04:39 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web11.18085.1708621474957925495
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Feb 2024 09:04:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=M38yym8Z;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-78731e444daso126476885a.2
        for <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 09:04:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708621473; x=1709226273; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hwt3j1wSVFmvT2Joq4lYguscb6gf2lyLfnpmczdD3qU=;
        b=M38yym8ZD8WlYM76tVQ+GHgXhphR1olURBP6f0zqP3BTvBvQL/SXACya/qOevG58HK
         q6cft31a/U63vpbBDctORA9UbTzZRAN6Eny5UMmCbVDbHTfumuIULqtzHXPEgFvRVWve
         uOjKw5zg1AFt323q5L88Yfp7KJEmZ1+7NLvLnniTruInb44kNRFWnw/Y3snnhdCwQbcM
         c43J6MT7FKa/8CDW6mePo/HUHwtBxk0mmLc09hXVYkpWFerisAEQ+HrwZImMo/F4+KjR
         jDBysnNZwUpX8owLInxkFCyKDrl+nJxmLEKFks6Ee9E+HBb8g8g9qawaQfwUpg9uXZMx
         U4gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708621473; x=1709226273;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hwt3j1wSVFmvT2Joq4lYguscb6gf2lyLfnpmczdD3qU=;
        b=Svv53qBsguMicZVDMUj9Ts3MRa0wF7O0O1fPdXOOu0c231YvuH+LH+m6x3jXiVYZoH
         Ox4or3QuONR5kmp1iRCyhJAi4PGk4huG/7NfVremxfACumr6JqHzHv66XjTMTNbdyp7T
         tDPFuiJ6vzoQheLPqrLQOim5sz5ou6tW7/khxBoM1R+no2jCIRPbCcfRAUF5V1n+KmoH
         KWx0LEYt0v9HAXUuv5es6ZLQHrFYBPc/RhLLjOscHABAMYJUfK/Fs9sBxtKnAhV/WAUV
         LhOO/1+NHSjNyNJqdRtnO0HpeFFL6P2Y9xHs1X1z69D+s3Qrg2FPHcHNUUieh0bR/b3n
         Kemg==
X-Gm-Message-State: AOJu0Yz3J9C7t1lfxSMVyc52GVHrH+tyDGa0MNIL2T1BD8AJ9OwjUXsC
	7yIVgG0KSOG6Rh6cQx09xZyaT8kMPe+TdBIYPREkoLcv0qbvBSUdVQftQQ1k
X-Google-Smtp-Source: AGHT+IHIsA8pMmZoFw79gZ6ohuZSgBCdGMHBNaTrk6+Bj4eLEnwQ8MuoAGQHAv/pwLGDe8vjLbaUXA==
X-Received: by 2002:a05:620a:7f1:b0:784:b12:ba1c with SMTP id k17-20020a05620a07f100b007840b12ba1cmr23199424qkk.78.1708621472687;
        Thu, 22 Feb 2024 09:04:32 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id qj17-20020a05620a881100b007872541c53bsm265848qkn.24.2024.02.22.09.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 09:04:30 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: [meta-rockchip][PATCH v4 4/5] remove /boot partition
Date: Thu, 22 Feb 2024 12:04:14 -0500
Message-ID: <20240222170415.7061-4-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
In-Reply-To: <20240222170415.7061-1-twoerner@gmail.com>
References: <20240222170415.7061-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 17:04:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62571

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

Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
changes in v4:
- updated for latest rockchip.wks
- remove offset for /boot partition (let wic calculate this)

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
index 714fc5e11e11..6622e395ee2f 100644
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
 part v_storage  --offset 7168s  --fixed-size 256K    --fstype=none
 part reserved   --offset 7680s  --fixed-size 192K    --fstype=none
 part reserved1  --offset 8064s  --fixed-size 32K     --fstype=none
 part uboot_env  --offset 8128s  --fixed-size 32K     --fstype=none
 part reserved2  --offset 8192s  --fixed-size 4096K   --fstype=none
-part loader2    --offset 16384s --fixed-size 4096K   --fstype=none            --source rawcopy                                   --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
+part loader2    --offset 16384s --fixed-size 4096K   --fstype=none            --source rawcopy              --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
 part atf        --offset 24576s --fixed-size 4096K   --fstype=none
-part /boot      --offset 32768s --size       114688K --fstype=vfat --active   --source bootimg-partition --label boot --use-uuid --sourceparams="loader=u-boot"
-part /                                               --fstype=ext4            --source rootfs            --label root --use-uuid
+part /                                               --fstype=ext4 --active   --source rootfs  --label root
 
-bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw rootfstype=ext4 init=/sbin/init"
+bootloader --ptable gpt
-- 
2.43.0.76.g1a87c842ece3


