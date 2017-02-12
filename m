Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9A03E00A1F; Sat, 11 Feb 2017 21:27:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53D88E00A1C
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:12 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id 75so6486630pgf.3
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=4PWpVhaqpyQ69r9A2VyK4NeqPcXnMxtJA6MAqPSWjy0=;
	b=oYBXVcOlTnpgbjd5xy1UWSP1DETIbmQp8krlxpKYoVVIDJ9Zo7c70gb4rRX5qlmysG
	sCtIG8lz1f3kBXKGNlbxKzIH0F/G3jJdxcB9NS2Hl3aH6aaour2zUewteqHzBs4sS/3x
	OWoIiv0KV+MygQsRsBaIp6bnKXG6Y5Tvp/Kf4UQ5bCuT5n3HRlE0F8RbPNkRAyVVh+s8
	5+WnT6b8O3eOJgtFUINbtFAXJZSRFq8qy2bGI6o70QdIwEB6MEvC3ptv3SGaNqrgroqS
	mu2h8wJeBwfscFH1jr4S5q2t/q1j/i8wECrrFXlEUkglkDg01EeXnSbbWd887zRvdSVo
	M5QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=4PWpVhaqpyQ69r9A2VyK4NeqPcXnMxtJA6MAqPSWjy0=;
	b=qkRu4DFy8/eke7XWZIAYE46pYvkQaGs/HeYFyr5XOGZvdvoviGPIev30Ui2yY+udJI
	m1FVybwhza74KQrqAnWIab18btTn/l+7pzAOxcuwtnXq0Kqu2MvnDMUGAaBISf4+uEbx
	IE8oDI7TJtiY9uxLks7zzMh1gaQ3AnSPQnYU5kZgVzAYU4Va8s9SYG10RqpX9BXu+YtS
	pYqEoc4uHtCvha3DSPu+rJx3aXm7On+Yk/K9KGk0zdBpoHXd7IHaefqBWdijorhre4lB
	xpO0rUuU+mGg5my1MNVth9emiFjPyYM+v3mf6uoL7Sv8NDPkLDx3txcSItr3kEMP1M2k
	sVbw==
X-Gm-Message-State: AMke39luX5P0QOvkeD7oq7WXPbJEyWlbZlxBdcW1CtIt+joiwEYnIPvjEPDVDgEbpJFciQ==
X-Received: by 10.84.179.194 with SMTP id b60mr21730196plc.147.1486877232159; 
	Sat, 11 Feb 2017 21:27:12 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	f3sm13549604pfd.10.2017.02.11.21.27.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 11 Feb 2017 21:27:11 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 11 Feb 2017 21:26:53 -0800
Message-Id: <20170212052655.12342-9-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170212052655.12342-1-raj.khem@gmail.com>
References: <20170212052655.12342-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V2 09/11] raspberrypi3-64.conf: Specifiy rpi3-64bit dtbs
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
X-List-Received-Date: Sun, 12 Feb 2017 05:27:12 -0000

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


