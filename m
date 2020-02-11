Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.8394.1581417935727135983
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 02:45:36 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: mail1.xn--80adja5bqm.su, ip: 140.211.169.56, mailfrom: jin@mail1.xn--80adja5bqm.su)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91915E01673; Tue, 11 Feb 2020 02:45:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	KHOP_HELO_FCRDNS,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
	*  0.4 KHOP_HELO_FCRDNS Relay HELO differs from its IP's reverse DNS
Received: from mail1.xn--80adja5bqm.su (xn--80adja5bqm.su [45.62.210.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFD25E00C62
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 02:45:34 -0800 (PST)
Received: by mail1.xn--80adja5bqm.su (Postfix, from userid 1000)
	id B3AA420DBB30; Tue, 11 Feb 2020 04:52:05 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail1.xn--80adja5bqm.su B3AA420DBB30
From: "Sergey Bostandzhyan" <jin@mediatomb.cc>
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>
Subject: [meta-rockchip][PATCH v2 1/2] Add configuration parameter to set boot device for the image
Date: Tue, 11 Feb 2020 04:50:08 +0100
Message-Id: <1581393008-5466-1-git-send-email-jin@mediatomb.cc>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <20200211042218.GA10571@linux-uys3>
References: <20200211042218.GA10571@linux-uys3>

From: Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>

wic modifies /etc/fstab on the root file system during image generation,
without the --ondisk parameter it assumes some default device name which
leads to an /etc/fstab file populated with /dev/sda entries.
This is not correct for the machines in the rockchip layer which use
mmcblkX.

This patch introduces an RK_BOOT_DEVICE option which is being set in the
machine configuratoin and which is being used in the wks files.
The variable expansion in the wks is handled by propagating the variable to
the wic environment.

This results in correct /etc/fstab entries and in a correct kernel
bootargs root= parameter.

Signed-off-by: Sergey Bostandzhyan <jin@mediatomb.cc>
---
 conf/machine/include/rockchip-defaults.inc |  5 +++++
 conf/machine/rock-pi-4.conf                |  1 +
 conf/machine/vyasa-rk3288.conf             |  1 +
 wic/firefly-rk3288.wks                     |  4 ++--
 wic/rk3288-boot.wks                        | 12 ++++++------
 wic/rk3399-boot.wks                        | 12 ++++++------
 wic/rock-pi-4.wks                          |  4 ++--
 wic/tinker-board.wks                       |  5 +++--
 wic/vyasa-rk3288.wks                       |  4 ++--
 9 files changed, 28 insertions(+), 20 deletions(-)

diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
index 0507017..82fd590 100644
--- a/conf/machine/include/rockchip-defaults.inc
+++ b/conf/machine/include/rockchip-defaults.inc
@@ -21,3 +21,8 @@ XSERVER = " \
 
 # misc
 IMAGE_FSTYPES += "ext4"
+
+# boot device (sd-card/emmc)
+RK_BOOT_DEVICE ??= "mmcblk0"
+WICVARS_append = " RK_BOOT_DEVICE"
+
diff --git a/conf/machine/rock-pi-4.conf b/conf/machine/rock-pi-4.conf
index 4a0671c..5231abf 100644
--- a/conf/machine/rock-pi-4.conf
+++ b/conf/machine/rock-pi-4.conf
@@ -10,6 +10,7 @@ require conf/machine/include/rk3399.inc
 KERNEL_DEVICETREE = "rockchip/rk3399-rock-pi-4.dtb"
 UBOOT_MACHINE = "rock-pi-4-rk3399_defconfig"
 
+RK_BOOT_DEVICE = "mmcblk1"
 WKS_FILE ?= "rock-pi-4.wks"
 IMAGE_FSTYPES += "wic wic.bmap"
 
diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.conf
index d8a6af6..1e1eba4 100644
--- a/conf/machine/vyasa-rk3288.conf
+++ b/conf/machine/vyasa-rk3288.conf
@@ -13,6 +13,7 @@ KERNEL_EXTRA_ARGS += "LOADADDR=0x02000000"
 
 UBOOT_MACHINE = "vyasa-rk3288_defconfig"
 
+RK_BOOT_DEVICE = "mmcblk2"
 WKS_FILE = "vyasa-rk3288.wks"
 IMAGE_FSTYPES += "wic wic.bmap"
 
diff --git a/wic/firefly-rk3288.wks b/wic/firefly-rk3288.wks
index c2027bd..b60aa0e 100644
--- a/wic/firefly-rk3288.wks
+++ b/wic/firefly-rk3288.wks
@@ -2,6 +2,6 @@
 # Released under the MIT license (see COPYING.MIT for the terms)
 
 include rk3288-boot.wks
-part / --align 131072 --source rootfs --fstype=ext4 --label root
+part / --align 131072 --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
 
-bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk0p7 rootfstype=ext4 init=/sbin/init"
+bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/rk3288-boot.wks b/wic/rk3288-boot.wks
index 53c8162..c0b7d95 100644
--- a/wic/rk3288-boot.wks
+++ b/wic/rk3288-boot.wks
@@ -15,10 +15,10 @@
 #   root        262144          -
 #
 
-part loader1    --align 32     --size 4000K            --source rawcopy --sourceparams="file=idbloader.img"
-part reserved1  --align 4032   --size 64K
-part reserved2  --align 4096   --size 4096K
-part loader2    --align 8192   --size 4096K            --source rawcopy --sourceparams="file=u-boot.bin"
-part atf        --align 12288  --size 4096K
-part /boot      --align 16384  --size=114688K --active --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
+part loader1    --align 32     --size 4000K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=idbloader.img"
+part reserved1  --align 4032   --size 64K              --ondisk ${RK_BOOT_DEVICE}
+part reserved2  --align 4096   --size 4096K            --ondisk ${RK_BOOT_DEVICE}
+part loader2    --align 8192   --size 4096K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=u-boot.bin"
+part atf        --align 12288  --size 4096K            --ondisk ${RK_BOOT_DEVICE}
+part /boot      --align 16384  --size=114688K --active --ondisk ${RK_BOOT_DEVICE} --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
 
diff --git a/wic/rk3399-boot.wks b/wic/rk3399-boot.wks
index 100b94d..885d46b 100644
--- a/wic/rk3399-boot.wks
+++ b/wic/rk3399-boot.wks
@@ -15,10 +15,10 @@
 #   root        262144          -
 #
 
-part loader1    --align 32     --size 4000K            --source rawcopy --sourceparams="file=idbloader.img"
-part reserved1  --align 4032   --size 64K
-part reserved2  --align 4096   --size 4096K
-part loader2    --align 8192   --size 4096K            --source rawcopy --sourceparams="file=u-boot.itb"
-part atf        --align 12288  --size 4096K
-part /boot      --align 16384  --size=114688K --active --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
+part loader1    --align 32     --size 4000K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=idbloader.img"
+part reserved1  --align 4032   --size 64K              --ondisk ${RK_BOOT_DEVICE}
+part reserved2  --align 4096   --size 4096K            --ondisk ${RK_BOOT_DEVICE}
+part loader2    --align 8192   --size 4096K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=u-boot.itb"
+part atf        --align 12288  --size 4096K            --ondisk ${RK_BOOT_DEVICE}
+part /boot      --align 16384  --size=114688K --active --ondisk ${RK_BOOT_DEVICE} --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
 
diff --git a/wic/rock-pi-4.wks b/wic/rock-pi-4.wks
index 8e4b37c..75ac358 100644
--- a/wic/rock-pi-4.wks
+++ b/wic/rock-pi-4.wks
@@ -2,6 +2,6 @@
 # Released under the MIT license (see COPYING.MIT for the terms)
 
 include rk3399-boot.wks
-part / --align 131072 --source rootfs --fstype=ext4 --label root
+part / --align 131072 --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
 
-bootloader --ptable gpt --append="console=tty1 console=ttyS2,1500000n8 rw root=/dev/mmcblk1p7 rootfstype=ext4 init=/sbin/init"
+bootloader --ptable gpt --append="console=tty1 console=ttyS2,1500000n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/tinker-board.wks b/wic/tinker-board.wks
index c2027bd..8f08138 100644
--- a/wic/tinker-board.wks
+++ b/wic/tinker-board.wks
@@ -2,6 +2,7 @@
 # Released under the MIT license (see COPYING.MIT for the terms)
 
 include rk3288-boot.wks
-part / --align 131072 --source rootfs --fstype=ext4 --label root
 
-bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk0p7 rootfstype=ext4 init=/sbin/init"
+part / --align 131072 --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
+
+bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/vyasa-rk3288.wks b/wic/vyasa-rk3288.wks
index f019e0d..b577e5a 100644
--- a/wic/vyasa-rk3288.wks
+++ b/wic/vyasa-rk3288.wks
@@ -2,7 +2,7 @@
 # Released under the MIT license (see COPYING.MIT for the terms)
 
 include rk3288-boot.wks
-part / --align 131072 --source rootfs --fstype=ext4 --label root
+part / --align 131072 --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
 
-bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk2p7 rootfstype=ext4 init=/sbin/init"
+bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
 
-- 
2.24.1

