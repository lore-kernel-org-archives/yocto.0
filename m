Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E178E006C6; Thu, 19 Jan 2017 02:10:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 564D7E0053F
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 02:10:23 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id t6so3842379pgt.1
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 02:10:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=kACKelNzTrXNOYyk5zDB31aWhgdy/xA5hqBCxwN+ays=;
	b=oVT8dv4OLVajtCqw5Sdnzr9XvmF5CEJvGMcz321ezUhuD2c/rDBmyeJ8GE2tegQhDt
	+J2RfFPqlMXuTUZFCAEs8KitPo4wrKfgkjJq5g1AR8ym+Da9tNJ7uEmsProa7ZvDiLiB
	VomycXLGSSlc0ZdV7iQhhHmW+SqjQ93cpfrvh/CEMAA3iO84raaLZHPWyMSRSxzjbBqB
	t/ufhpmGSauDIOJIBX7qY/60sDOvdJ2ASLRSyb+2HuqImzDqONTMRF3ukWh1twTQK6ZG
	ESKbzTHiZkH36h8T7dJL9Q/Eg8cZbmsAtG3YlPsPucty24gG2bx0v55bMM58AtHszA35
	GhvA==
X-Gm-Message-State: AIkVDXJI1+bcxjv3IuMwsSwCacZgoJkRXBEMbyG5iOL2rOnV2c0bjGnOwRfUJUhYLMf3Rg==
X-Received: by 10.84.233.193 with SMTP id m1mr12143070pln.126.1484820623481;
	Thu, 19 Jan 2017 02:10:23 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	w125sm7440387pfb.8.2017.01.19.02.10.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Jan 2017 02:10:22 -0800 (PST)
From: Jacob Chen <jacob-chen@iotwrt.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 18:09:32 +0800
Message-Id: <1484820572-11891-8-git-send-email-jacob-chen@iotwrt.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
Cc: Jacob Chen <jacob-chen@iotwrt.com>, eddie.cai@rock-chips.com
Subject: [PATCH 7/7] rockchip-next-image: introduce image for rockchip next-dev u-boot
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 19 Jan 2017 10:10:25 -0000

Being different from the previous rk-boot which use parameter, next-dev u-boot use gpt
 partition, so it needs to generate a different image.

Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
---
 classes/rockchip-next-image.bbclass | 130 ++++++++++++++++++++++++++++++++++++
 1 file changed, 130 insertions(+)
 create mode 100644 classes/rockchip-next-image.bbclass

diff --git a/classes/rockchip-next-image.bbclass b/classes/rockchip-next-image.bbclass
new file mode 100644
index 0000000..cd87dee
--- /dev/null
+++ b/classes/rockchip-next-image.bbclass
@@ -0,0 +1,130 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+inherit image_types
+
+# Use an uncompressed ext4 by default as rootfs
+IMG_ROOTFS_TYPE = "ext4"
+IMG_ROOTFS = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.${IMG_ROOTFS_TYPE}"
+
+# This image depends on the rootfs image
+IMAGE_TYPEDEP_rockchip-next-img = "${IMG_ROOTFS_TYPE}"
+
+NEXT_IMG       = "${IMAGE_NAME}.next.img"
+BOOT_IMG       = "boot.img"
+MINILOADER     = "loader.bin"
+UBOOT          = "u-boot.out"
+TRUST          = "trust.out"
+
+# Target image total size [in MiB]
+NEXT_IMG_SIZE ?= "4096"
+
+# default partitions [in Sectors]
+# More info at http://rockchip.wikidot.com/partitions
+LOADER1_SIZE = "8000"
+RESERVED1_SIZE = "128"
+RESERVED2_SIZE = "8192"
+LOADER2_SIZE = "8192"
+ATF_SIZE = "8192"
+BOOT_SIZE = "229376"
+
+IMAGE_DEPENDS_rockchip-next-img = "parted-native \
+	u-boot-mkimage-native \
+	mtools-native \
+	dosfstools-native \
+	virtual/kernel:do_deploy \
+	virtual/bootloader:do_deploy"
+
+PER_CHIP_IMG_GENERATION_COMMAND_rk3288 = "generate_rk3288_image"
+
+IMAGE_CMD_rockchip-next-img () {
+	# Change to image directory
+	cd ${DEPLOY_DIR_IMAGE}
+
+	create_rk_image
+
+	${PER_CHIP_IMG_GENERATION_COMMAND}
+}
+
+create_rk_image () {
+
+	echo "Creating filesystem with total size ${NEXT_IMG_SIZE} MiB"
+
+	# Remove the exist image
+	rm -rf *.next.img
+
+	# Initialize sdcard image file
+	dd if=/dev/zero of=${NEXT_IMG} bs=1M count=0 seek=${NEXT_IMG_SIZE}
+
+	# Create partition table
+	parted -s ${NEXT_IMG} mklabel gpt
+
+	# Create vendor defined partitions
+	LOADER1_START=64
+	RESERVED1_START=`expr ${LOADER1_START}  + ${LOADER1_SIZE}`
+	RESERVED2_START=`expr ${RESERVED1_START}  + ${RESERVED1_SIZE}`
+	LOADER2_START=`expr ${RESERVED2_START}  + ${RESERVED2_SIZE}`
+	ATF_START=`expr ${LOADER2_START}  + ${LOADER2_SIZE}`
+	BOOT_START=`expr ${ATF_START}  + ${ATF_SIZE}`
+	ROOTFS_START=`expr ${BOOT_START}  + ${BOOT_SIZE}`
+
+	parted -s ${NEXT_IMG} unit s mkpart loader1 ${LOADER1_START} `expr ${RESERVED1_START} - 1`
+	parted -s ${NEXT_IMG} unit s mkpart reserved1 ${RESERVED1_START} `expr ${RESERVED2_START} - 1`
+	parted -s ${NEXT_IMG} unit s mkpart reserved2 ${RESERVED2_START} `expr ${LOADER2_START} - 1`
+	parted -s ${NEXT_IMG} unit s mkpart loader2 ${LOADER2_START} `expr ${ATF_START} - 1`
+	parted -s ${NEXT_IMG} unit s mkpart atf ${ATF_START} `expr ${BOOT_START} - 1`
+
+	# Create boot partition and mark it as bootable
+	parted -s ${NEXT_IMG} unit s mkpart boot ${BOOT_START} `expr ${ROOTFS_START} - 1`
+	parted -s ${NEXT_IMG} set 6 boot on
+
+	# Create rootfs partition
+	parted -s ${NEXT_IMG} unit s mkpart root ${ROOTFS_START} 100%
+
+	parted ${NEXT_IMG} print
+
+	# Delete the boot image to avoid trouble with the build cache
+	rm -f ${WORKDIR}/${BOOT_IMG}
+
+	# Create boot partition image
+	BOOT_BLOCKS=$(LC_ALL=C parted -s ${NEXT_IMG} unit b print | awk '/ 6 / { print substr($4, 1, length($4 -1)) / 512 /2 }')
+	BOOT_BLOCKS=`expr $BOOT_BLOCKS / 63 \* 63`
+
+	mkfs.vfat -n "boot" -S 512 -C ${WORKDIR}/${BOOT_IMG} $BOOT_BLOCKS
+	mcopy -i ${WORKDIR}/${BOOT_IMG} -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::${KERNEL_IMAGETYPE}
+
+	DEVICETREE_DEFAULT=""
+	for DTS_FILE in ${KERNEL_DEVICETREE}; do
+		[ -n "${DEVICETREE_DEFAULT}"] && DEVICETREE_DEFAULT="${DTS_FILE}"
+		mcopy -i ${WORKDIR}/${BOOT_IMG} -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${DTS_FILE} ::${DTS_FILE}
+	done
+
+	# Create extlinux config file
+	cat > ${WORKDIR}/extlinux.conf <<EOF
+default yocto
+
+label yocto
+	kernel /${KERNEL_IMAGETYPE}
+	devicetree /${DEVICETREE_DEFAULT}
+	append ${APPEND}
+EOF
+
+	mmd -i ${WORKDIR}/${BOOT_IMG} ::/extlinux
+	mcopy -i ${WORKDIR}/${BOOT_IMG} -s ${WORKDIR}/extlinux.conf ::/extlinux/
+
+	# Burn Boot Partition
+	dd if=${WORKDIR}/${BOOT_IMG} of=${NEXT_IMG} conv=notrunc,fsync seek=${BOOT_START}
+
+	# Burn Rootfs Partition
+	dd if=${IMG_ROOTFS} of=${NEXT_IMG} seek=${ROOTFS_START}
+
+}
+
+generate_rk3288_image () {
+
+	# Burn bootloader
+	mkimage -n rk3288 -T rksd -d ${DEPLOY_DIR_IMAGE}/${SPL_BINARY} ${WORKDIR}/${UBOOT}
+	cat ${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.bin >>  ${WORKDIR}/${UBOOT}
+	dd if=${WORKDIR}/${UBOOT} of=${NEXT_IMG} conv=notrunc,fsync seek=64
+
+}
-- 
2.7.4


