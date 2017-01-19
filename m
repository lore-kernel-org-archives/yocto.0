Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34F9EE00A64; Thu, 19 Jan 2017 06:05:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 645EDE00A53
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 06:05:28 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id f144so3434041pfa.2
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 06:05:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=kACKelNzTrXNOYyk5zDB31aWhgdy/xA5hqBCxwN+ays=;
	b=coBsgf7piTXXnYA8Ev9sJRSexEm1N+OiIWCi4bvLndEqBcQZa+Dtyl+vQJs7bYAI48
	Mr3Midzzsahf0khQWYFob4XH+3Sga0vLZ0EB9mSiX2vOhI4z+nTseZ8uL8p/H1zW7MpO
	qNXFAk8dXh8mE5hRIRhHNOLM/MF2UcQ+edsDcN4QqIYNZ+MAFwyg9Wf+W9KAP3cbRBef
	flBouXXV2h2XZFoSsbTMhouqHhy9d/kmn2Wj1tIyAA7tKqo/ukPVOHr16Ecbp1r8Ke0v
	0qkkM93S/Jp0513reZLXfn3BjY3XcAQRsrHZjnB0e9nW6dvT4WdyP6h3l68zfKYGlxpM
	hP9Q==
X-Gm-Message-State: AIkVDXJPEv1uTP+M0EgZ7dWSeg2yAeIYksFFMKV3k66Sa8C9UWGq1QNO6jD/X/A7Us60pA==
X-Received: by 10.84.172.131 with SMTP id n3mr13270172plb.5.1484834728543;
	Thu, 19 Jan 2017 06:05:28 -0800 (PST)
Received: from localhost.localdomain ([27.155.138.228])
	by smtp.gmail.com with ESMTPSA id
	u78sm9259496pfa.53.2017.01.19.06.05.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Jan 2017 06:05:26 -0800 (PST)
From: Jacob Chen <jacob-chen@iotwrt.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 22:04:47 +0800
Message-Id: <1484834687-15746-8-git-send-email-jacob-chen@iotwrt.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
Cc: Jacob Chen <jacob-chen@iotwrt.com>, eddie.cai@rock-chips.com
Subject: [meta-rockchip][PATCH 7/7] rockchip-next-image: introduce image for rockchip next-dev u-boot
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
X-List-Received-Date: Thu, 19 Jan 2017 14:05:30 -0000

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


