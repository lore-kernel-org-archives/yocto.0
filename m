Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f180.google.com (mail-ea0-f180.google.com
	[209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B75EAE003D8
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:23 -0800 (PST)
Received: by mail-ea0-f180.google.com with SMTP id o10so866875eaj.39
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=k2QUfRHm8/FT1FuAxLvKf8nfnK/k5Eg4hTgS3Dtv5x8=;
	b=G/E/vuycTG7y2AjWicsmzZ2o2OianktA9u7BO+tdL9MfXgSUY4VdObz5u2YGmG1g5Y
	0aHpJW8iNRzf75aLr67s83Z8wqwy2545AZHIZpcG6JlHBUPxdatL03orjNdjfOnm0WEG
	3XG/oSJYNFLuxLJljm+aC/5gyWWjlQjGaNpsD9GtXeEZWQAwG8fOcbSOD7mC0hFTK03f
	uBUEwZsV1BHKv4AekT6BvD6cteNENbHzOUcht+NGxYRVa6yJC4ZuRuE+bmQW0r+m5kCU
	63kiFtO4Bup88p3KtBN4ZL8PNRTRUpoXVR5/uENG0JZYlzNvJ07DeymdReTUkDUChUVi
	ki3Q==
X-Gm-Message-State: ALoCoQlvewQevoNz9FlCdbEcRd7O0Cw1rE+hGEACSyi4zvNZ/gZlK6jo8a8INzFkuUFnv/ZqF8Ym
X-Received: by 10.14.221.193 with SMTP id r41mr787103eep.92.1390647442487;
	Sat, 25 Jan 2014 02:57:22 -0800 (PST)
Received: from localhost.localdomain (5-13-179-54.residential.rdsnet.ro.
	[5.13.179.54])
	by mx.google.com with ESMTPSA id 4sm14600656eed.14.2014.01.25.02.57.21
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 25 Jan 2014 02:57:21 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sat, 25 Jan 2014 12:56:58 +0200
Message-Id: <1390647421-4818-7-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
References: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 6/9] sdcard_image-rpi: Add support for u-boot and uImage
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
X-List-Received-Date: Sat, 25 Jan 2014 10:57:24 -0000

If KERNEL_IMAGETYPE is uImage, use u-boot image as kernel.img and copy uImage
too. Otherwise, use kernel image as kernel.img (as we did until now
unconditionally).

Change-Id: Iac46a57e4266299f2fe5746cb6957dcfc0e90443
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 classes/sdcard_image-rpi.bbclass | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 3ee4e94..ab6ffe8 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -45,6 +45,7 @@ IMAGE_DEPENDS_rpi-sdimg = " \
 			dosfstools-native \
 			virtual/kernel \
 			${IMAGE_BOOTLOADER} \
+			${@base_contains("KERNEL_IMAGETYPE", "uImage", "u-boot", "",d)} \
 			"
 
 # SD card image name
@@ -91,7 +92,15 @@ IMAGE_CMD_rpi-sdimg () {
 	BOOT_BLOCKS=$(LC_ALL=C parted -s ${SDIMG} unit b print | awk '/ 1 / { print substr($4, 1, length($4 -1)) / 512 /2 }')
 	mkfs.vfat -n "${BOOTDD_VOLUME_ID}" -S 512 -C ${WORKDIR}/boot.img $BOOT_BLOCKS
 	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/* ::/
-	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::kernel.img
+	case "${KERNEL_IMAGETYPE}" in
+	"uImage")
+	    mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/u-boot.img ::kernel.img
+	    mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::uImage
+	    ;;
+	"*")
+	    mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::kernel.img
+	    ;;
+	esac
 
 	if [ -n ${FATPAYLOAD} ] ; then
 		echo "Copying payload into VFAT"
-- 
1.8.1.4


