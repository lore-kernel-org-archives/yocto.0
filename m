Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DF96E00874; Fri, 17 Feb 2017 10:08:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.67 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0262E00405
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 10:08:04 -0800 (PST)
Received: by mail-it0-f67.google.com with SMTP id e137so4109026itc.0
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 10:08:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=iiShZdMV3Iq4baYl2nVBRPkd5Aw6y7tQK4pITsoaQww=;
	b=EACks+XNWru+OwgvTNQ/B4nziSS/omOZwFRej1kyzXfgp8lgCRp0I9K0Ax8KPxryHR
	Etw1JBYd+n+kS+h/SqdkiGID5tOT96Vkdp9OUJ98qNFsRmFnvL6vEf/2/XZSAG0tzaNI
	KU3nQTyiirE3HfHnp+j1/rT3tu5LfA3mWRC9nqJkFvA21g/vgWzig1sZkWGo5gQVdjIS
	J+uGxcNJdTyUndCiEF0VAxx+eSEKfUvNzQJNBcyW2VEW2o6UQmVjcBBGg6+Uw04OGGgt
	2iSOvu10JOGflkCm8RNu7F1W62iTS5gIToY/biRu2ok2H9E42WtZDUb6//kn4GDV6o6F
	A99A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=iiShZdMV3Iq4baYl2nVBRPkd5Aw6y7tQK4pITsoaQww=;
	b=puhsJy8cL+B+wzGYmegLcIkjB2Sn/MkPkWvOC8uGLBRdYRL0q68YAFGEN1WwELmJjA
	zO1oIzWdgXtTmRgI83RDxAO0zydJPl2QTJHHiQQ2jJOUXHRk2nogM6CUazK52t1Jbxmq
	aaYgAbtYl0WQfWEjMWRxY7wTtUXpgK+34SSzI1TNDpk6KdlI5ELaj2djxkaDESDYvjsv
	4wsjKbetO5W1vzrHo6djcPy3H5LaLU3sliiLqbF2y4h1vHOoiRTaJg806k8jhYQlbk84
	s+A4shJRtISGaNSzDecgy1b8GoFAgKGqKonN+kvyzqjO5PORKsLDTqvdKmZ6GezXqF7q
	pv1Q==
X-Gm-Message-State: AMke39nhlNHltGT7aKOf2BLItDn2hGk3DrI0RaTY0B052YsGg7Ro6EPoelFsbzTx0kwHWw==
X-Received: by 10.36.81.65 with SMTP id s62mr5495030ita.33.1487354884175;
	Fri, 17 Feb 2017 10:08:04 -0800 (PST)
Received: from linux-uys3.suse ([45.72.225.54])
	by smtp.gmail.com with ESMTPSA id 202sm866258ith.7.2017.02.17.10.08.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 17 Feb 2017 10:08:03 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 17 Feb 2017 13:07:48 -0500
Message-Id: <20170217180748.28796-4-twoerner@gmail.com>
X-Mailer: git-send-email 2.11.0.258.ge05806d
In-Reply-To: <20170217180748.28796-1-twoerner@gmail.com>
References: <20170217180748.28796-1-twoerner@gmail.com>
Cc: Jacob Chen <jacob-chen@iotwrt.com>
Subject: [meta-rockchip][PATCH 3/3] rockchip-next-img: add image for rockchip next-dev u-boot
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
X-List-Received-Date: Fri, 17 Feb 2017 18:08:06 -0000

From: Jacob Chen <jacob-chen@iotwrt.com>

Being different from the previous rk-boot which use parameter, next-dev u-boot
use gpt partition, so it needs to generate a different image.

Reviewed-by: Trevor Woerner <twoerner@gmail.com>
Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
---
 classes/rockchip-next-img.bbclass | 130 ++++++++++++++++++++++++++++++++++++++
 conf/machine/include/rk3288.inc   |   4 ++
 2 files changed, 134 insertions(+)
 create mode 100644 classes/rockchip-next-img.bbclass

diff --git a/classes/rockchip-next-img.bbclass b/classes/rockchip-next-img.bbclass
new file mode 100644
index 0000000..cd87dee
--- /dev/null
+++ b/classes/rockchip-next-img.bbclass
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
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index f067ad5..68936bf 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -9,7 +9,11 @@ require conf/machine/include/soc-family.inc
 PREFERRED_PROVIDER_virtual/kernel = "linux"
 KERNEL_IMAGETYPE = "zImage"
 KBUILD_DEFCONFIG = "multi_v7_defconfig"
+APPEND = "console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk2p7 rootfstype=ext4 init=/sbin/init"
 
 PREFERRED_PROVIDER_virtual/bootloader = "u-boot-rockchip"
 SERIAL_CONSOLES = "115200;ttyS2"
 SPL_BINARY = "u-boot-spl-dtb.bin"
+
+IMAGE_CLASSES += "rockchip-next-img"
+IMAGE_FSTYPES += "ext4 rockchip-next-img"
-- 
2.11.0.258.ge05806d


