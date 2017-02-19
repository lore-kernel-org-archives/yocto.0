Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DE6AE00A3B; Sat, 18 Feb 2017 18:43:55 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E7F0E009F6
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 18:43:54 -0800 (PST)
Received: by mail-it0-f67.google.com with SMTP id e137so7398037itc.0
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 18:43:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=FPlprS/HICQQ3yNesvVCofVutBcD1WWnZp46i5GYgHA=;
	b=pidR/jxtxbxh8dMXSbYnlVw4+eLbVEW+fQqQLOV2Ot0D9ytMnTG18bWMUcGliN0PCf
	OPnMbXqc/043CEtAgvFTnx5RpQ0N9jb6F2ecRhqQtbVOg9pLBWxzGYD8oyuG/OPtwEiz
	vym4STs6jjMHJloI1DNEqD3n7dKIQreFOwEehekJFjia/yXFPBy4SOy60dwS9DTaoHqC
	5j0kO6o0dIzjkqd5QtyIKpS6wRCz9hdX3RCj78HNGvaURfqN9hzYYCvABMNlcQTiisQo
	Bsnw8gjjL1WN8UjL/6v/ibBpd+T39W+jXV61JZg6zAJkrgzIacql2q5rMgt/uH2xceWj
	nbiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=FPlprS/HICQQ3yNesvVCofVutBcD1WWnZp46i5GYgHA=;
	b=YQAG9V68YfB6Nt9w09bsHLEUgCpyWECyFk+rWsqu4P7ircrePWkQUO1uEvtgPRQ8Z8
	dsItjxA3bFIIHw95oz1uVEvdQNA1iIg2XWh9CsMGChjE/dQZmwP53Ry/NVlzU98H3rjO
	PILu7fzUCUOTEiVnBRHtx8qn24PIL2qKyX2eUPlypy1mrES0F5h9vGLnkCIbsWxVZFFa
	ZpNSNw4p3W/gQv6TRiRHiIahZKOTxkIdvvPq+YAt7w3tFO17dg/TPS1zLh1DTPXmO1Ma
	8TR744pU87yDDTwRa5ImrtpMsv+CiPj1aBIegcXyA+QazOwodf8hR2evbNL86fRX4tPK
	pdUQ==
X-Gm-Message-State: AMke39k0ek99zEooIpU5Dz/2J0leK5T+WII+G02vlsKAtLre4UZGYV5g9nda6gNU242EQQ==
X-Received: by 10.36.6.211 with SMTP id 202mr13527188itv.54.1487472233886;
	Sat, 18 Feb 2017 18:43:53 -0800 (PST)
Received: from linux-uys3.suse ([45.72.225.54])
	by smtp.gmail.com with ESMTPSA id
	a197sm1957754ita.1.2017.02.18.18.43.53 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 18 Feb 2017 18:43:53 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 18 Feb 2017 21:43:39 -0500
Message-Id: <20170219024340.23664-5-twoerner@gmail.com>
X-Mailer: git-send-email 2.12.0.rc1.48.g076c053
In-Reply-To: <20170219024340.23664-1-twoerner@gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
Subject: [meta-rockchip][PATCH v2 4/5] classes: rockchip-gpt-img: add
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
X-List-Received-Date: Sun, 19 Feb 2017 02:43:55 -0000

This bbclass was taken from the Rockchip team's work at
https://github.com/rockchip-linux/meta-rockchip/commit/53d2e2e474a3014e3013d0059fd1da773fb0e2b7
It was mostly written by Jacob Chen <jacob-chen@iotwrt.com>. I've made some
small modifications and added it.

Older images used (what Rockchip calls) the "rk-boot" format. Newer images use
u-boot and a GPT partitioning scheme. This class allows the build to generate
a gpt-img file that can either be flashed to eMMC or written to an SDcard (the
same image is used for both).

This is the new image format used for rk3288 SoCs (e.g. the Firefly board).

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 classes/rockchip-gpt-img.bbclass | 132 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 132 insertions(+)
 create mode 100644 classes/rockchip-gpt-img.bbclass

diff --git a/classes/rockchip-gpt-img.bbclass b/classes/rockchip-gpt-img.bbclass
new file mode 100644
index 0000000..fd80625
--- /dev/null
+++ b/classes/rockchip-gpt-img.bbclass
@@ -0,0 +1,132 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Copyright (C) 2017 Trevor Woerner <twoerner@gmail.com>
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+inherit image_types
+
+# Use an uncompressed ext4 by default as rootfs
+IMG_ROOTFS_TYPE = "ext4"
+IMG_ROOTFS = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.${IMG_ROOTFS_TYPE}"
+
+# This image depends on the rootfs image
+IMAGE_TYPEDEP_rockchip-gpt-img = "${IMG_ROOTFS_TYPE}"
+
+GPTIMG_SUFFIX  = "gpt-img"
+GPTIMG         = "${IMAGE_NAME}.${GPTIMG_SUFFIX}"
+GPTIMG_SIZE   ?= "4096"
+BOOT_IMG       = "boot.img"
+MINILOADER     = "loader.bin"
+UBOOT          = "u-boot.out"
+TRUST          = "trust.out"
+GPTIMG_APPEND ?= "console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk2p7 rootfstype=ext4 init=/sbin/init"
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
+IMAGE_DEPENDS_rockchip-gpt-img = "parted-native \
+	u-boot-mkimage-native \
+	mtools-native \
+	dosfstools-native \
+	virtual/kernel:do_deploy \
+	virtual/bootloader:do_deploy"
+
+PER_CHIP_IMG_GENERATION_COMMAND_rk3288 = "generate_rk3288_image"
+
+IMAGE_CMD_rockchip-gpt-img () {
+	# Change to image directory
+	cd ${DEPLOY_DIR_IMAGE}
+
+	# Remove the exist image
+	rm -rf *${GPTIMG_SUFFIX}
+
+	create_rk_image
+
+	${PER_CHIP_IMG_GENERATION_COMMAND}
+
+	cd ${DEPLOY_DIR_IMAGE}
+	ln -s ${GPTIMG} "${IMAGE_BASENAME}-${MACHINE}.${GPTIMG_SUFFIX}"
+}
+
+create_rk_image () {
+
+	# Initialize sdcard image file
+	dd if=/dev/zero of=${GPTIMG} bs=1M count=0 seek=${GPTIMG_SIZE}
+
+	# Create partition table
+	parted -s ${GPTIMG} mklabel gpt
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
+	parted -s ${GPTIMG} unit s mkpart loader1 ${LOADER1_START} `expr ${RESERVED1_START} - 1`
+	parted -s ${GPTIMG} unit s mkpart reserved1 ${RESERVED1_START} `expr ${RESERVED2_START} - 1`
+	parted -s ${GPTIMG} unit s mkpart reserved2 ${RESERVED2_START} `expr ${LOADER2_START} - 1`
+	parted -s ${GPTIMG} unit s mkpart loader2 ${LOADER2_START} `expr ${ATF_START} - 1`
+	parted -s ${GPTIMG} unit s mkpart atf ${ATF_START} `expr ${BOOT_START} - 1`
+
+	# Create boot partition and mark it as bootable
+	parted -s ${GPTIMG} unit s mkpart boot ${BOOT_START} `expr ${ROOTFS_START} - 1`
+	parted -s ${GPTIMG} set 6 boot on
+
+	# Create rootfs partition
+	parted -s ${GPTIMG} unit s mkpart root ${ROOTFS_START} 100%
+
+	parted ${GPTIMG} print
+
+	# Delete the boot image to avoid trouble with the build cache
+	rm -f ${WORKDIR}/${BOOT_IMG}
+
+	# Create boot partition image
+	BOOT_BLOCKS=$(LC_ALL=C parted -s ${GPTIMG} unit b print | awk '/ 6 / { print substr($4, 1, length($4 -1)) / 512 /2 }')
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
+	append ${GPTIMG_APPEND}
+EOF
+
+	mmd -i ${WORKDIR}/${BOOT_IMG} ::/extlinux
+	mcopy -i ${WORKDIR}/${BOOT_IMG} -s ${WORKDIR}/extlinux.conf ::/extlinux/
+
+	# Burn Boot Partition
+	dd if=${WORKDIR}/${BOOT_IMG} of=${GPTIMG} conv=notrunc,fsync seek=${BOOT_START}
+
+	# Burn Rootfs Partition
+	dd if=${IMG_ROOTFS} of=${GPTIMG} seek=${ROOTFS_START}
+
+}
+
+generate_rk3288_image () {
+
+	# Burn bootloader
+	mkimage -n rk3288 -T rksd -d ${DEPLOY_DIR_IMAGE}/${SPL_BINARY} ${WORKDIR}/${UBOOT}
+	cat ${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.bin >>  ${WORKDIR}/${UBOOT}
+	dd if=${WORKDIR}/${UBOOT} of=${GPTIMG} conv=notrunc,fsync seek=64
+
+}
-- 
2.12.0.rc1.48.g076c053


