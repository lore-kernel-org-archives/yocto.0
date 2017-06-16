Return-Path: <msm-oss@mcclintock.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C69F3E00B18; Fri, 16 Jun 2017 12:12:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.193 listed in list.dnswl.org]
Received: from mail-ot0-f193.google.com (mail-ot0-f193.google.com
	[74.125.82.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 314C9E009A0
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 12:12:19 -0700 (PDT)
Received: by mail-ot0-f193.google.com with SMTP id r67so5411386ota.3
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 12:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mcclintock.net; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=/zVTLd+4/muPTNgN7Afpi8Y26yE2iSPGF5Vy+XQXfzQ=;
	b=eByONyTpthbs2DQUftwHDY+cpKfylc+F7xzdYhI0ojlsBYRGRAtwHQCKPqUdGWz52J
	9TXyAZ1jXL4VGD4f7OF/ccVDqnsNqjdSfhV4o9Frb9AMZPLkl7Wh8kdU16rlm9U7I+z4
	MFw3235IuS97cu6yQ2Aht5gVFGmX7heQ/Xvg8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=/zVTLd+4/muPTNgN7Afpi8Y26yE2iSPGF5Vy+XQXfzQ=;
	b=EacbLoaWtCQyLPUSv61K1YyxQANSfymYtaZ/m0OqFrhe9sTacAxbKui3Ec3FQEFp3Z
	mqeGXtXp2BCbsL9J6JwZTK93qcFlfCb+ALtHpJmU9Bl2DIHRzSMx/+a9nZ9pqMUPDHut
	lZmQT8kRNRO5DrrNaYvpaWuxf3zfEquj4O63eYSP4xYsi5cX96t5OzQ0cYXMOvk+9STH
	g5xr/EKmqnDnRb0SeQA2AGprn32BSiA6vKrICUQvtglqGQ9Hj2zqeHGcky85iI5qBjmn
	3sGrHtQ6q9k0oyOu0gQhm7ZjAftPBr87Y3ogdtICTiNnGGVJwUcLWqaoLLaG5Mp7CaLF
	qEjw==
X-Gm-Message-State: AKS2vOwgUZWcojJ5msLc7qyD3A5dRo5+Zwymm2IWa9izogYFvEh0hv9M
	jZyjqDdDCMcoxrpJhJ4=
X-Received: by 10.157.20.42 with SMTP id h39mr7311796oth.35.1497640338479;
	Fri, 16 Jun 2017 12:12:18 -0700 (PDT)
Received: from pandora.lan (cpe-72-182-106-201.austin.res.rr.com.
	[72.182.106.201]) by smtp.gmail.com with ESMTPSA id
	x190sm1422116oix.8.2017.06.16.12.12.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 16 Jun 2017 12:12:17 -0700 (PDT)
From: Matthew McClintock <msm-oss@mcclintock.net>
To: yocto@yoctoproject.org
Date: Fri, 16 Jun 2017 14:12:13 -0500
Message-Id: <20170616191213.26849-1-msm-oss@mcclintock.net>
X-Mailer: git-send-email 2.13.1
Subject: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: deploy vfat partition
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
X-List-Received-Date: Fri, 16 Jun 2017 19:12:22 -0000

This is useful to update the bootloader/vfat partition from u-boot when
you don't want to update everything:

U-Boot> tftpboot 0x1000000 tmp/0VXje
Waiting for Ethernet connection... done.
Using sms0 device
TFTP from server 192.168.0.1; our IP address is 192.168.0.26
Filename 'image.vfat'.
Load address: 0x1000000
Loading: ##################################################  40 MiB
	 2.1 MiB/s
done
Bytes transferred = 41943040 (2800000 hex)
U-Boot> mmc part

Partition Map for MMC device 0  --   Partition Type: DOS

Part	Start Sector	Num Sectors	UUID		Type
  1	8192      	81920     	a63a4fbc-01	0c Boot
  2	90112     	163840    	a63a4fbc-02	83
U-Boot> mmc erase 0x2000 0x14000

MMC erase: dev # 0, block # 8192, count 81920 ... 81920 blocks erased:
OK
U-Boot> mmc write 0x1000000 0x2000 0x14000

MMC write: dev # 0, block # 8192, count 81920 ... 81920 blocks written:
OK
U-Boot>

Signed-off-by: Matthew McClintock <msm-oss@mcclintock.net>
---
 classes/sdcard_image-rpi.bbclass | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index af3e807..27a0dfc 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -72,6 +72,10 @@ SDIMG = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"
 # Additional files and/or directories to be copied into the vfat partition from the IMAGE_ROOTFS.
 FATPAYLOAD ?= ""
 
+# SD card vfat partition image name
+SDIMG_VFAT = "${IMGDEPLOYDIR}/${IMAGE_NAME}.vfat"
+SDIMG_LINK_VFAT = "${IMGDEPLOYDIR}/${IMAGE_LINK_NAME}.vfat"
+
 IMAGE_CMD_rpi-sdimg () {
 
 	# Align partitions
@@ -145,6 +149,10 @@ IMAGE_CMD_rpi-sdimg () {
 	echo "${IMAGE_NAME}" > ${WORKDIR}/image-version-info
 	mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}/image-version-info ::
 
+        # Deploy vfat partition
+        cp ${WORKDIR}/boot.img ${SDIMG_VFAT}
+        ln -sf ${SDIMG_VFAT} ${SDIMG_LINK_VFAT}
+
 	# Burn Partitions
 	dd if=${WORKDIR}/boot.img of=${SDIMG} conv=notrunc seek=1 bs=$(expr ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
 	# If SDIMG_ROOTFS_TYPE is a .xz file use xzcat
-- 
2.13.1


