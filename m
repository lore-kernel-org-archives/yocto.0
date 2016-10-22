Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76BA2E00839; Sat, 22 Oct 2016 12:50:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16358E009A4
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 12:50:24 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id d128so3737357wmf.0
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 12:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=V0953oeOMFvXIvuwmusBJ2tGQdCVZFLIJ/W7sKtPYNg=;
	b=a/CYaqbfOGSCHMmjAnXj49egkjYsb1IkE/UEPiCFbA5e1+t8iiX6ugztFtPoNWy39K
	ftJMn34ZdH3AbaNEWIkooIgdsEnVi9HS3yKdtuq+bUVDFbfP+I8V7deV3iwX+3YOLHkw
	nXH3nFo6NUGG31YXCw/Rr3xLNsN8rlfK78A7BgLqfbpo9MwsAR+MjcQrY14xqlbObb/1
	xq8Tk91te7DgH7K4/ZN1jr24g0+TZkuBUf2VsAiSscfLP+JqY9RDxNLTt1QInFDtFPUK
	RkOGgFSKOdR8mdSoTGufRGo19r/1i0DpUKXVAHaeJJ6t+WBJ7Mkiv9D6d0hoMB2RRSNo
	a7PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=V0953oeOMFvXIvuwmusBJ2tGQdCVZFLIJ/W7sKtPYNg=;
	b=AGQits5darTd++fkaj9XVaHtAcIgZ5teYG3OIrXHUFXXCd4kY5jzdcDr6azi63dk9H
	+2EFcJbL8IWCFOk7kU0HXQV/MVqwyMubqxSiMnWQ4Ubp7AvNo0EFJTiumxJG88WisdOV
	3VnqCttge2JkXFZvGL/MOm5YZNqUpD6H1YAyL0Cu/Y4eLKSJygItQ0jznGVLbU8SHU6v
	dKPG/rv7qV4Ms9Xje3KrEnN/S1ld4l2NAFsuFe1FtlWgPYlu7B+dwK6zApHXQjFKC10m
	BKFqu6Cu12BXg/OooPIpfeEwGIDt3UvSx4ObKzuc8uRPR6W3iEE/7hB0Fo8JOChi/sgg
	0UlQ==
X-Gm-Message-State: AA6/9RkN7snUd4Jfe7LlLmIlkDPrJo1nZSOQgRozYl6iVucL6NgqRjkXiu6vZiGeRsddyQ==
X-Received: by 10.28.197.67 with SMTP id v64mr15294334wmf.9.1477165823348;
	Sat, 22 Oct 2016 12:50:23 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id
	yo1sm9896023wjc.16.2016.10.22.12.50.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 22 Oct 2016 12:50:22 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: Yocto Project <yocto@yoctoproject.org>
Date: Sat, 22 Oct 2016 20:49:57 +0100
Message-Id: <1477165797-27121-5-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1477165797-27121-1-git-send-email-paul@paulbarker.me.uk>
References: <1477165797-27121-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH V2 4/4] sdcard_image-rpi.bbclass: Include boot script when using u-boot
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
X-List-Received-Date: Sat, 22 Oct 2016 19:50:27 -0000

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 classes/sdcard_image-rpi.bbclass | 1 +
 1 file changed, 1 insertion(+)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 0487ef1..116d5e8 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -125,6 +125,7 @@ IMAGE_CMD_rpi-sdimg () {
 	"uImage")
 		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/u-boot.bin ::${SDIMG_KERNELIMAGE}
 		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::uImage
+		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/boot.scr ::boot.scr
 		;;
 	*)
 		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::${SDIMG_KERNELIMAGE}
-- 
2.1.4


