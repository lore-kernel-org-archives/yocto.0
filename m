Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE4CDE00D4E; Sun, 10 Jul 2016 16:18:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D74FE00D54
	for <yocto@yoctoproject.org>; Sun, 10 Jul 2016 16:18:11 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id x83so12935943wma.3
	for <yocto@yoctoproject.org>; Sun, 10 Jul 2016 16:18:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=dNodIQBdWFSxGaa7g9Y1hj/xeAjJpqzj1uzL7L639Dk=;
	b=GU8Ux2L6MYgOZepsMCc4ggEcUCSxnj3YOJMFSmz66grn+OBWIwZ7wwEKI3xlJSILhV
	nqpYU4ANQnf7cpP+Hg7zVp5OI7Yl1EMdKxJRAI78hXZbJN9HdcdNbgfn5bVCl3gWxqqa
	7CRmpSfg9Xf8EMUfrYOCcKppb+ab+AkbQ4OSMhuHYOMBsGoqxo9SxkFbtGrAjPLxx7bV
	/z+RLP/38s3SGzZKXxTOvjTVw0OSQrFLznzpCTTE4t4kvQjs/XYvpsuac1oKBDIEbdXd
	4Io4pXnxyOpEqXLANtTGrgjdL7y3T9zm9rw5Nnb9+YYTjqVyeAAf2Qtdi8mPXwfg3Nrt
	G0Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=dNodIQBdWFSxGaa7g9Y1hj/xeAjJpqzj1uzL7L639Dk=;
	b=RAPdRhVpibkrfbZJ7H4pmkppJ4P/sHuLYKBXmkMzz3BV6Ym0LTEbGxYnDCmC6e6a3Z
	dFPSzOusnmwCcwHWyWof8PA2hy1tWJNxS7X+gIeCc1lf+qhsiyjZh3n/CCAyPZXYgcPe
	ig+DSHgoEz9DScuStIIJJAJAfN1pBYV2A/mZOh/Itpr/eG5pHCsJLbtxL597mSWaUt0R
	p+vdBIrUUEJ1L23O2HNQE6k8gTttDwx5/yF4goUNjdc19U+xgpQL/qq0bQpd90oyUP8P
	Ndl/vZ9NnKhsLqdjvf8d0kpn8bwhGx5RqKEKlSWyTe1+fIJ7UM9y9jWMJ6J0ABSqnkS/
	DsWQ==
X-Gm-Message-State: ALyK8tK0WcgrulVyMEPa5QSbYx+16wGxdUTY7SCkONbtioBKpI8vQVQiZ6dB+LIbE8LPzA==
X-Received: by 10.28.69.210 with SMTP id l79mr13777509wmi.31.1468192691082;
	Sun, 10 Jul 2016 16:18:11 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id
	x83sm17787086wmx.9.2016.07.10.16.18.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 10 Jul 2016 16:18:10 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Mon, 11 Jul 2016 00:17:56 +0100
Message-Id: <1468192676-22030-4-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1468192676-22030-1-git-send-email-paul@paulbarker.me.uk>
References: <1468192676-22030-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH 3/3] sdcard_image-rpi.bbclass: Include boot script when using u-boot
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
X-List-Received-Date: Sun, 10 Jul 2016 23:18:13 -0000

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 classes/sdcard_image-rpi.bbclass | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 6960aca..20be56f 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -55,7 +55,7 @@ IMAGE_DEPENDS_rpi-sdimg = " \
 			dosfstools-native \
 			virtual/kernel:do_deploy \
 			${IMAGE_BOOTLOADER} \
-			${@bb.utils.contains('KERNEL_IMAGETYPE', 'uImage', 'u-boot', '',d)} \
+			${@bb.utils.contains('KERNEL_IMAGETYPE', 'uImage', 'u-boot u-boot-scr', '',d)} \
 			"
 
 # SD card image name
@@ -128,6 +128,7 @@ IMAGE_CMD_rpi-sdimg () {
 	"uImage")
 		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/u-boot.bin ::${SDIMG_KERNELIMAGE}
 		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::uImage
+		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/boot.scr ::boot.scr
 		;;
 	*)
 		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::${SDIMG_KERNELIMAGE}
-- 
2.1.4


