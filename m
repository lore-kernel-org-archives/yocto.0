Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FBEAE00935; Thu, 16 Feb 2017 10:47:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F298E006D8
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:47:00 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 5so2658317pgj.0
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:47:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=4PWpVhaqpyQ69r9A2VyK4NeqPcXnMxtJA6MAqPSWjy0=;
	b=qcgkuPv68D5h6iriemUhGyDLepaRF6yoL12IdhdsZs2dlsRODtJJBerJ5xRib706TW
	hCqdgZMzfX8Dq25sMCNijZPnKg870VweD47EN6YMZB6lW6VbzQA+AlrLkyKlXNu8GnVN
	S8CcDS03rAb21iSI1jgUIirSyuJwUHeDS620F1o2IMg4cRSFX6CvsneoiGBObks8hbSj
	K0ZR1xwC+5o5BjB/BO0Djw7nB0kcK86m4U3hZDLLUBW4maWh889z1AKcH6T55f5EfXLK
	6M+BjTTWpDuxRdEIwFlduc8pYyxvSj6hq+kN4SNbr0EouLOhAgEJkhkrb+tNex8UvMUG
	bBlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=4PWpVhaqpyQ69r9A2VyK4NeqPcXnMxtJA6MAqPSWjy0=;
	b=sUXKexJgakKICOHNKy2zmdtKjFtPlbXcTkhJvgxNMqqzoupbNk3vRTdx6wgI8Qnb63
	56EJuLhlEVl4I6n+pU8yBV/uTvPKlhWLhLi6ZwEyqh7jvVqy0NN4qfHuVwgMeAB2HB8V
	zB4yxTsaXKC9i30ITT0Y+36GGtk8HtYwpFEJ6tHWi7lfJBA/Enq89IiUcZVwaih54lt9
	LJESMFKtiE4JwiY1c+qRgF32wbXu9MYiGA+FhXI60tBdg9S4Zfb5RG+EPnuSxYoKcjWE
	eAdzRkD73Yl1Nrq4wlqHYlJ8kXaoRAZKWLrJPJiwb91pAt50AUvNuSt2XZhAmEgUh++h
	sY2Q==
X-Gm-Message-State: AMke39mtDJgaBeZZhDZaReD1M05x8o/0V6GWrNH46XreuCvBtrYIIWEHEBLPABMLK7oqDw==
X-Received: by 10.98.215.27 with SMTP id b27mr4316977pfh.70.1487270819964;
	Thu, 16 Feb 2017 10:46:59 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	188sm14970399pfg.99.2017.02.16.10.46.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 10:46:59 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 10:46:40 -0800
Message-Id: <20170216184645.6258-9-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170216184645.6258-1-raj.khem@gmail.com>
References: <20170216184645.6258-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V4 09/14] raspberrypi3-64.conf: Specifiy rpi3-64bit dtbs
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
X-List-Received-Date: Thu, 16 Feb 2017 18:47:00 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/raspberrypi3-64.conf | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
index cdcd726..e7d9af2 100644
--- a/conf/machine/raspberrypi3-64.conf
+++ b/conf/machine/raspberrypi3-64.conf
@@ -9,6 +9,29 @@ MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
 require conf/machine/include/arm/arch-armv8.inc
 include conf/machine/include/rpi-base.inc
 
+KERNEL_DEVICETREE = " \
+    broadcom/bcm2710-rpi-3-b.dtb \
+    broadcom/bcm2837-rpi-3-b.dtb \
+    \
+    overlays/hifiberry-amp.dtbo \
+    overlays/hifiberry-dac.dtbo \
+    overlays/hifiberry-dacplus.dtbo \
+    overlays/hifiberry-digi.dtbo \
+    overlays/i2c-rtc.dtbo \
+    overlays/iqaudio-dac.dtbo \
+    overlays/iqaudio-dacplus.dtbo \
+    overlays/lirc-rpi.dtbo \
+    overlays/pitft22.dtbo \
+    overlays/pitft28-resistive.dtbo \
+    overlays/pps-gpio.dtbo \
+    overlays/rpi-ft5406.dtbo \
+    overlays/w1-gpio.dtbo \
+    overlays/w1-gpio-pullup.dtbo \
+    overlays/pi3-disable-bt.dtbo \
+    overlays/pi3-miniuart-bt.dtbo \
+    overlays/vc4-kms-v3d.dtbo \
+    "
+
 SERIAL_CONSOLE = "115200 ttyS0"
 VC4_CMA_SIZE ?= "cma-256"
 
-- 
2.11.1


