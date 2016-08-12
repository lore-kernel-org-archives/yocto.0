Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8086E0103E; Thu, 11 Aug 2016 18:06:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EE30E01039
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:16 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id y134so582455pfg.3
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=k3M3FRSoVGNBs/CDB+UY5uj68c1auwRGKSI+phzv/TM=;
	b=y71wePwUnU+a5klAuMWQNDhRCpFNy63LegdEjvvzhXIffat1He6w6J8ZoyxGCu3bQ+
	ink8Xn5P8Hdt67IrK5Ix9pvvIQNJF7dB0HeZXh7K6HPkc2xKwIIct6HZzthfccUN53lK
	Aq2jwnG+q1orwZk41DTX1x9flAo71X7I5KPfMEBEaXL7tslDl5F+tLCh6+xU6eaPzGRd
	f1TWpD0c2DThR21rR/kFpY4u4ZyBYUmw/oiOBd57Ov1ACJfhoZyQvV0T++9lm9aMAG2M
	i/wNGypQ37tZX9Jd4jAm76LfkTK7KsIkt0HwwdK9egOCWLTdrS/B83GNb/qgWw3Au64p
	ThCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=k3M3FRSoVGNBs/CDB+UY5uj68c1auwRGKSI+phzv/TM=;
	b=Z+IfOH4hKSqEA8zjgQtYlBO6vIMwYX7g5L1/7LNx+eFbw3Tm5bqkJDbiOHB9J/OGuw
	+7DQW+JmOQN1SmDfNsQVg6rb1mxw74Aa6LrPkJ5RkE9cLPBUCzJCXr8Zq+U7VjmevUN/
	TObV6lzMH9KotU38HAIgpn5kyEnrFUQMp6IrhYLUGChMSurcIo6GGgUY8AaMtULxix/Y
	nFAgU7bVKZN2DwkDhG3JSDj71bY8lgs5E4nAsjIX6WIAX1sgAZDDNsPb87/GkHoWKXEv
	/BynzkLAuGRCwJgO0TxzLZ/mECxoEl7LnFH3jX1sm11TSBp1ntoZZSP66Zg1+T2qDa+9
	EJIw==
X-Gm-Message-State: AEkoouvrA2z6XyztUJD9kaW6y1AUfmfJaBFZ3wFmW5/CcPz5ce4HrXBHTMI3wbUFvD7wfQ==
X-Received: by 10.98.55.1 with SMTP id e1mr22366890pfa.58.1470963976779;
	Thu, 11 Aug 2016 18:06:16 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:15 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:05:47 -0700
Message-Id: <20160812010608.31182-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 02/23] rpi-base.inc: support for .dtbo files for dtb overlays
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:18 -0000

From: Herve Jourdain <herve.jourdain@neuf.fr>

Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
Add support for .dtbo variant of overlays for the default KERNEL_DEVICETREE variable
(the list will be turned into "-overlay.dtb" by linux-raspberry-base.bbclass, if needed, depending on the kernel version)

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/include/rpi-base.inc | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 56ca83e..47eb23b 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -22,21 +22,21 @@ KERNEL_DEVICETREE ?= " \
     bcm2709-rpi-2-b.dtb \
     bcm2710-rpi-3-b.dtb \
     \
-    overlays/hifiberry-amp-overlay.dtb \
-    overlays/hifiberry-dac-overlay.dtb \
-    overlays/hifiberry-dacplus-overlay.dtb \
-    overlays/hifiberry-digi-overlay.dtb \
-    overlays/i2c-rtc-overlay.dtb \
-    overlays/iqaudio-dac-overlay.dtb \
-    overlays/iqaudio-dacplus-overlay.dtb \
-    overlays/lirc-rpi-overlay.dtb \
-    overlays/pitft22-overlay.dtb \
-    overlays/pitft28-resistive-overlay.dtb \
-    overlays/pps-gpio-overlay.dtb \
-    overlays/rpi-ft5406-overlay.dtb \
-    overlays/w1-gpio-overlay.dtb \
-    overlays/w1-gpio-pullup-overlay.dtb \
-    overlays/pi3-miniuart-bt-overlay.dtb \
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
+    overlays/pi3-miniuart-bt.dtbo \
     "
 KERNEL_IMAGETYPE ?= "Image"
 
-- 
2.9.2


