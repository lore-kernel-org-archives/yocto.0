Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8CC0E00942; Wed, 11 Feb 2015 12:35:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f54.google.com (mail-la0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76158E003D4
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 12:35:06 -0800 (PST)
Received: by labgd6 with SMTP id gd6so5924457lab.7
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 12:35:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=MBgydfAbvUWsaKrByBDIPGnRya2bCryBxqlifw+kLjo=;
	b=EF6WEDQEREq745RV5Va0qx6XzowmafpVU2oU7vtHBJKOA/MEd9g6M5TFNhEYowuPkq
	4Oc+hvt45HIYrgXTW2OEv0eJ/phe92rs3qRfXU2bdkaHxb7EbSX8QGYdSBRjGuYEYHlQ
	dS4J2+C1iSKk/pvZVMlZf5crzSU2kNkfbHQppEvVpKWXQH6dvJ/6Bsel9nNOlcO6r+x/
	a52J4V2pyiP1p2cHyhhdvI18wjpeUYymK73CTWKV3ad1QXOweCyK+9QhpcdTpMqZePaA
	fJx73Mq8GSUoKmkDjXiS62eXZUJ/URsfMs3wknNaY8XQdKsjC49QFFikPOmbbuZRIGw+
	oLfg==
X-Gm-Message-State: ALoCoQnT2GkR9ax5pe8qE8cdWh+Q6xm5uT5QA9RTgcppWBLnVgbC74P5ZqJ+qGO+vJ2hQOWz5e0c
X-Received: by 10.152.204.73 with SMTP id kw9mr448704lac.16.1423686904872;
	Wed, 11 Feb 2015 12:35:04 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	rv1sm361520lbb.25.2015.02.11.12.35.04 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 11 Feb 2015 12:35:04 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 11 Feb 2015 21:34:57 +0100
Message-Id: <1423686898-23144-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1423686898-23144-1-git-send-email-andrei@gherzan.ro>
References: <1423686898-23144-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/3] rpi-base.inc: Use KERNEL_DEVICETREE by default
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
X-List-Received-Date: Wed, 11 Feb 2015 20:35:12 -0000

We already switched to kernel v3.18 by default so we can activate
KERNEL_DEVICETREE by default too.

Change-Id: I69612be72f8254d462421112cf851e17a1ef24f8
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-base.inc | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index f1c404d..102f9d8 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -18,22 +18,22 @@ XSERVER = " \
     "
 
 # Really supported starting from linux-raspberrypi 3.18.y only
-#KERNEL_DEVICETREE ?= " \
-#    bcm2708-rpi-b.dtb \
-#    bcm2708-rpi-b-plus.dtb \
-#    ds1307-rtc-overlay.dtb \
-#    hifiberry-amp-overlay.dtb \
-#    hifiberry-dac-overlay.dtb \
-#    hifiberry-dacplus-overlay.dtb \
-#    hifiberry-digi-overlay.dtb \
-#    iqaudio-dac-overlay.dtb \
-#    iqaudio-dacplus-overlay.dtb \
-#    lirc-rpi-overlay.dtb \
-#    pcf8523-rtc-overlay.dtb \
-#    pps-gpio-overlay.dtb \
-#    w1-gpio-overlay.dtb \
-#    w1-gpio-pullup-overlay.dtb \
-#    "
+KERNEL_DEVICETREE ?= " \
+    bcm2708-rpi-b.dtb \
+    bcm2708-rpi-b-plus.dtb \
+    ds1307-rtc-overlay.dtb \
+    hifiberry-amp-overlay.dtb \
+    hifiberry-dac-overlay.dtb \
+    hifiberry-dacplus-overlay.dtb \
+    hifiberry-digi-overlay.dtb \
+    iqaudio-dac-overlay.dtb \
+    iqaudio-dacplus-overlay.dtb \
+    lirc-rpi-overlay.dtb \
+    pcf8523-rtc-overlay.dtb \
+    pps-gpio-overlay.dtb \
+    w1-gpio-overlay.dtb \
+    w1-gpio-pullup-overlay.dtb \
+    "
 KERNEL_IMAGETYPE ?= "Image"
 
 MACHINE_FEATURES = "kernel26 apm usbhost keyboard vfat ext2 screen touchscreen alsa bluetooth wifi sdio"
-- 
2.1.0


