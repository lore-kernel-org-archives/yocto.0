Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48A7FE00ACE; Wed, 19 Apr 2017 10:41:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.195 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4377E009A5
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 10:41:09 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id l28so4148863wre.0
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 10:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=sfo1mtkW0FmuVl0aQg0r2YqJ4mj1GYkXdl2lcUVYtg4=;
	b=Szz8wbj5ICmwWwYGEh5PGmMql4TVGT3tXX2RMzejfLWJvEqCz281SjidgFvcw8z0QU
	gtkLWFC+1s1mHyqpDwA9Oib1ilapWcjL8B43MuYi/GS1wPXBDTLXKt0NEVUmuO1nyCQB
	HowhjCNK6ha4stKiAH4pPJj9kKKGUwfRMw2grYRo4JdY8Jd1spAESyo3uchnvvMMb+Iu
	eFkCiY7IahQtNXGndtGnGrq0qG3yMkeC470FOtzKarIxmb5NTj6f07wiTYUyeYbGHM7w
	stWeDM6z77viJftn7PSC+NAlt9shds4RGqv8axkgCtq2PD9pSJ1UVVL2OM+j5LbKzpyd
	9lhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=sfo1mtkW0FmuVl0aQg0r2YqJ4mj1GYkXdl2lcUVYtg4=;
	b=QtN+bpu3WKHJVbpZDtnDkmpK6eyQrowa/clOIesvBFA6FYRN99263o/U9tCQ6ekM6U
	z6BkXarBvyXvsMVwoJhctFg5XDrHX164oE+F/t/zTYqK7QRgYq+CzCDF2Z7ZdFv6L7Bh
	gLMtICluygEKX28PLBc10qQ/4H4cax5hA1GLzSdOnjJWgXkbcQU5L3fgoqpfskf/+oMb
	iZ5WkUsPfihh4tfkPC8mKLTBLr0OSCjbVm6X+nuqdZbOHuy+qp2z+1cCxsyVFE2NEw1O
	jC1KqfMTv6HER4VjoyvxBAlF0rqbtA6BgMTxdyFM1gZtD9yH6pJipRqzKNVZ27UAE1c+
	p5Cw==
X-Gm-Message-State: AN3rC/7edR5paNEz5XfYgkt5JHZ/6T21q58qKtegthUC1Vv9QVZQRAoM
	LPalPUuXrCatZA5vi5k=
X-Received: by 10.223.155.130 with SMTP id d2mr4210634wrc.36.1492623668406;
	Wed, 19 Apr 2017 10:41:08 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id
	x20sm20093000wme.0.2017.04.19.10.41.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 19 Apr 2017 10:41:07 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 19 Apr 2017 18:41:03 +0100
Message-Id: <20170419174103.30981-1-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.2
Subject: [meta-raspberrypi][PATCH v2 1/1] raspberrypi0-wifi.conf: Use a stand alone machine configuration
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
X-List-Received-Date: Wed, 19 Apr 2017 17:41:13 -0000

As well make all the variables assigned in a way that they can be
overwritten so we can give maximum flexibility to distros.

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/raspberrypi0-wifi.conf | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/conf/machine/raspberrypi0-wifi.conf b/conf/machine/raspberrypi0-wifi.conf
index 2b7cea4..adb2238 100644
--- a/conf/machine/raspberrypi0-wifi.conf
+++ b/conf/machine/raspberrypi0-wifi.conf
@@ -2,10 +2,14 @@
 #@NAME: RaspberryPi Zero WiFi Development Board
 #@DESCRIPTION: Machine configuration for the RaspberryPi Zero  WiFi board (https://www.raspberrypi.org/blog/raspberry-pi-zero-w-joins-family/)
 
-MACHINEOVERRIDES = "raspberrypi:${MACHINE}"
-include conf/machine/raspberrypi.conf
+DEFAULTTUNE ?= "arm1176jzfshf"
+require conf/machine/include/tune-arm1176jzf-s.inc
+include conf/machine/include/rpi-base.inc
 
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
 
-SERIAL_CONSOLE = "115200 ttyS0"
+SDIMG_KERNELIMAGE ?= "kernel.img"
+KERNEL_DEFCONFIG ?= "bcmrpi_defconfig"
+UBOOT_MACHINE ?= "rpi_config"
+SERIAL_CONSOLE ?= "115200 ttyS0"
 VC4_CMA_SIZE ?= "cma-128"
-- 
2.12.2


