Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 399DCE00D89; Thu,  2 Nov 2017 08:51:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11BE7E00DA9
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 08:51:37 -0700 (PDT)
Received: by mail-wr0-f194.google.com with SMTP id w105so5443477wrc.0
	for <yocto@yoctoproject.org>; Thu, 02 Nov 2017 08:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=c3PcpRliFapRBwMGPEmY8HS+0YiGmQoav9//PDPdvvs=;
	b=l8izYvJbeFiZlgkad1eU9Dfm9i7Rq3bLpatmhEy5DexT0QYAsGqwSMD+ONh7/l4ZqW
	CMzZCYyA0xegaOzUQb5pbp4viBaLdUiOz2wD9QP1S9KKpSgFWmIf1TW1fm/67Ag68Fyv
	a4JaTygwTtyq7xLJ/MT/WmZHTjiUnRgUbTFpifqssrCWPZfcbcaUbfe+RWbnTnuIDwJ/
	AqUyI3YXbEInMfwggCyLsrYB15SUcZaYOEDVtZMPVgNSCSKjch66tybN2D8rUpfSqUOz
	ffZmoWYZ5k+ewzWQPFbra2IeJgX1UpQ1iw5xiGCUmrS/0bbfQrzR/BT3xjYSNoYlYqOW
	xEvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=c3PcpRliFapRBwMGPEmY8HS+0YiGmQoav9//PDPdvvs=;
	b=I4GgdzsQ2a7MryoE6SvZDrppUQL+9GOPURjxFVBaJwbnx6p2dMqG07Be4JhlsVFiYJ
	5JzAG7vnepagcYSEi/ImhD+xKOS8NH514XrAupMTNnyz9CQp1r20nAd/8NYVQmEKCvgc
	eLWOnjX3OtD4mobpVSKzQHlNE8KzirsqTV/oeJho5WK5s22NKLG0apISuBBEuJJV3t6b
	uXjGtU52SLcvyqud1cEHdH/xH7AwOczdkGmPY7kZMSip13Qg0apJftBb6gsWOL9ORdMz
	mGEtz8j0AdVZyL2n0h8D486+HW77biQ/Z/UVBeCiisuwDCAi4fIyGqSGXdkm0npxflJo
	GS4A==
X-Gm-Message-State: AMCzsaWO5UBCuw0XbldvbjdJNgA+SYKTbSZqUFoLfrxsq7B3eO5O3P8D
	9NL2RcFPLMxLbfFnwtMI6U+Zy2j9zD4=
X-Google-Smtp-Source: ABhQp+SCCVwgwAgUQx8MEaIUD3OTcv137uJRbYzbig22zcQUTAwUjRg9zoU/yJ9FKRlH06LbLV/gDg==
X-Received: by 10.223.196.3 with SMTP id v3mr3579596wrf.255.1509637896527;
	Thu, 02 Nov 2017 08:51:36 -0700 (PDT)
Received: from localhost.localdomain
	(host86-154-149-85.range86-154.btcentralplus.com. [86.154.149.85])
	by smtp.gmail.com with ESMTPSA id 89sm1481975wri.79.2017.11.02.08.51.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 02 Nov 2017 08:51:36 -0700 (PDT)
Sender: Andrei Gherzan <andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@yoctoproject.org
Date: Thu,  2 Nov 2017 15:51:08 +0000
Message-Id: <1509637869-29982-4-git-send-email-andrei@gherzan.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1509637869-29982-1-git-send-email-andrei@gherzan.com>
References: <1509637869-29982-1-git-send-email-andrei@gherzan.com>
Cc: Andrei Gherzan <andrei@gherzan.com>
Subject: [meta-raspberrypi][PATCH 4/5] rpi-base.inc: KERNEL_IMAGETYPE default to zzImage
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
X-List-Received-Date: Thu, 02 Nov 2017 15:51:45 -0000

We used to have this as the default but there was a bug at some point in the
firmware which didn't work with compressed kernel images. We switched to Image
and never changed it back even though that bug is long history.

In this way we will stop carrying 15M of a kernel image. 4M looks much better.

Signed-off-by: Andrei Gherzan <andrei@gherzan.com>
---
 conf/machine/include/rpi-base.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 688227c..71c63cb 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -51,7 +51,7 @@ KERNEL_DEVICETREE ?= " \
 #   within u-boot to load the kernel.
 KERNEL_BOOTCMD ??= "bootm"
 KERNEL_IMAGETYPE_UBOOT ??= "uImage"
-KERNEL_IMAGETYPE ?= "${@bb.utils.contains('RPI_USE_U_BOOT', '1', '${KERNEL_IMAGETYPE_UBOOT}', 'Image', d)}"
+KERNEL_IMAGETYPE ?= "${@bb.utils.contains('RPI_USE_U_BOOT', '1', '${KERNEL_IMAGETYPE_UBOOT}', 'zImage', d)}"
 
 MACHINE_FEATURES += "apm usbhost keyboard vfat ext2 screen touchscreen alsa bluetooth wifi sdio"
 
-- 
2.7.4


