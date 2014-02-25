Return-Path: <andrei@gherzan.ro>
Received: from mail-qa0-f49.google.com (mail-qa0-f49.google.com
	[209.85.216.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05360E008E8
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 08:51:14 -0800 (PST)
Received: by mail-qa0-f49.google.com with SMTP id w8so660712qac.22
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 08:51:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=NcIqv9MbC6OuQZSJbqgdm1W+eCgdEV5H7+CRpiJOx4Y=;
	b=QE1vehRi2dh8e2uxlxniAX2HtgShuQDKQ5yUEAZq/+IxL92oycPxjVq2qmCMUhG6m7
	Agg9TT7pcT7sipJrN+TKeOLDW6GJZaTv6frvxQTlfHi7S6X34RreKWZftZmD0XTN9ShD
	Mr+vvo1N+ABbOosG0YzOPA+V8V/fZoE/q06oz/Jik5+4pUMP9mIHeAaKv7jlp2D3CNZB
	6bOrWAaDNH3coVHXfjAdSK+A7EcVEYFIcAMaA47YIJecTw94V55Vsky4W0TFOyJZKyLX
	SwxJqpltK4HTeUenL+hUVO1ezcygXoDap/j15XIfFdQI26QWz4uZPvt0bc4Vfdh1buPZ
	EwjQ==
X-Gm-Message-State: ALoCoQmvT8EG32Q/d+f1uBoOdTodUOn4UyTNXwQTFcluI/mfbnv6joZDGjz94kr8G2H+C6AkBY/e
X-Received: by 10.224.60.193 with SMTP id q1mr1228844qah.67.1393347074037;
	Tue, 25 Feb 2014 08:51:14 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id k1sm1451851qat.16.2014.02.25.08.51.12
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 25 Feb 2014 08:51:13 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 25 Feb 2014 18:51:01 +0200
Message-Id: <1393347061-26621-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1393347061-26621-1-git-send-email-andrei@gherzan.ro>
References: <1393347061-26621-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/2] sdcard_image-rpi: Make rpi-sdimg image dependent on ext3
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
X-List-Received-Date: Tue, 25 Feb 2014 16:51:15 -0000

Change-Id: Ib48c8fd941be5ceb8fe2bcc087f53fb4ef1c0eb5
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 classes/sdcard_image-rpi.bbclass | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index c7cfa7c..1b055bd 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -22,6 +22,8 @@ inherit image_types
 # |                        |            |                        |
 # 0                      4MiB     4MiB + 20MiB       4MiB + 20Mib + SDIMG_ROOTFS
 
+# This image depends on ext3 image
+IMAGE_TYPEDEP_rpi-sdimg = "ext3"
 
 # Set kernel and boot loader
 IMAGE_BOOTLOADER ?= "bcm2835-bootfiles"
-- 
1.8.1.4


