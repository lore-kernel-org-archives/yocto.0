Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DEE5E00F65; Fri, 22 Apr 2016 07:46:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E4AEE00C39
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 07:46:24 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id n3so30679910wmn.0
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 07:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=ZJ6t5P4rMCOudfh/ul42jv1bRKG4bzOPH62neeFCMrQ=;
	b=ZMILWZcKpnKFas41eMIUWK/+UI4qBA+tAVGXHkyhrvvEk8CIEvHHnCjlmt237/gb48
	wiqeFMP0fBo42UBIJbFjoV37O/M03xLQ13UvGPHKo+j5wPoiEYcUcCtErFLgQQdwjgf7
	DGY6D5EwbFFgQhIgw0Oega6RbOA/lNusrM2DTw3Ds6GvwqGMeQuinP+8l9JCjnczo/wh
	ty9oVoatQ4xju+xoqGz243HYL2ROWPYWajmJoeGEZqw8C7gho/sO7PjfG/3Wwh7hpt5n
	XFydbXMQDiSvZZs05CLQZ/xWIO7pJgnb8a1yZ2obbGhr0jHh0H5BY5wrThE1a2Pf4oSd
	lptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ZJ6t5P4rMCOudfh/ul42jv1bRKG4bzOPH62neeFCMrQ=;
	b=fuiFnYEs0TvE5khbaHqNCiQD3ldCgxhazPzf/H/AwyKOcskogA7GaKTQhi3cBSFRi2
	0czxWPg0PrS/G8xqpirrjqWezKzvtG9wNAyP5WwhSaxL+zDh62ehEytZnei9gc0UoifN
	d0MuYKn7kjVzaazF/uY1+diHF9wIha1zlWqN2ajXRMajc5PXuHrZ0WzsmV2mxwpyvpb1
	w8mLuHQaWFIjVY7RIftqRDfbK7ZaMp2nNA2xv9rP4xFkWOUWEIzppwvxmfU+sHYUMSyv
	U8RIHT7sGNka8wzXG6/PhVrpgJe54ml1Ywrqy5C2mx8/m92kEMi6xPaAmhofBUp+B5OH
	XLvw==
X-Gm-Message-State: AOPr4FUqe1/5zfAX0M1G7Pj03zAYl41PzzYn90cIc8zlkZShQbLrLEWB3blivboi0rezKw==
X-Received: by 10.194.187.145 with SMTP id fs17mr20503763wjc.179.1461336383665;
	Fri, 22 Apr 2016 07:46:23 -0700 (PDT)
Received: from localhost.localdomain
	([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id m14sm3750574wmc.4.2016.04.22.07.46.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 22 Apr 2016 07:46:22 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 22 Apr 2016 16:46:12 +0200
Message-Id: <1461336375-19194-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.8.0
In-Reply-To: <1461336375-19194-1-git-send-email-andrei@gherzan.ro>
References: <1461336375-19194-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/5] linux-raspberrypi: Set baudrate and use serial0 for kgdboc
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
X-List-Received-Date: Fri, 22 Apr 2016 14:46:27 -0000

The driver for 8250 defaults to 9600. We setup it on 115200 to be consistent
with getty configuration.

The firmware can do its magic with kgdboc too as it searches and replaces
=serial0 and =serial1. So, use serial0 for kgdboc too.

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index eccbbc6..4799c74 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -20,10 +20,10 @@ KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
 KERNEL_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
 
 # CMDLINE for raspberrypi
-CMDLINE = "dwc_otg.lpm_enable=0 console=serial0 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
+CMDLINE = "dwc_otg.lpm_enable=0 console=serial0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
 
 # Add the kernel debugger over console kernel command line option if enabled
-CMDLINE_append = ' ${@base_conditional("ENABLE_KGDB", "1", "kgdboc=ttyAMA0,115200", "", d)}'
+CMDLINE_append = ' ${@base_conditional("ENABLE_KGDB", "1", "kgdboc=serial0,115200", "", d)}'
 
 UDEV_GE_141 ?= "1"
 
-- 
2.8.0


