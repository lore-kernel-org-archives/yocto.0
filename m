Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5731E00A48; Fri, 14 Apr 2017 09:21:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9072CE00939
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 09:20:58 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id a188so15885702pfa.2
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 09:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=IEr2jQS5vPNS55Y6CJOiHcvPxucuZ/tr/geW/715CPA=;
	b=ow0fK84eYqMeGMYEJjBABHhQWj1v4zrjg17aw2g7c7I54aUrz3Asr5C2mA5AYKpSbK
	WcS0iZU7ZEiKZ4WFPwKbkvwjoEGoFI+ZIneSOxWV8FMn7s6LLOzjUB43X+zjAtCnJt3U
	I56bHIoV2Gei+hWrV1DDtXBDFprnwmCaKtQmygmOqGrcDWrbgUtbRHcUxnwZUJx8Wgvu
	L+kLQem64WS0k7/rVoWqaEtWjMGdlDEn8ZyR8g8RAgicz+a+Zz/KYFwzlnL/clhvb4gV
	RxSXm+Cuqpdcv+a4F7mhBYVZ7N9ApUSVt4jqg7YDNnvrOjT7FQsgafyEayWfLyYd5HY+
	WpGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=IEr2jQS5vPNS55Y6CJOiHcvPxucuZ/tr/geW/715CPA=;
	b=fGS+KNTLcEnZXcM0w3rrIlPfgV96woBE0dpD5dXxzhid1I151GZ8LQPoxZlN38g5NS
	H3iOV4wVuGhJSbcFzolJtrJa5OH4K4i9tO3tWcsL661s79efMsxSVHYByBxjldATbJL3
	RMOjTnUUtPJIssZFnC5mTV+Hwk6u2vHYYv4f17+qivTCfS1QQpq9tUEvjm7wPkSFYX6S
	Eq1NuOr0yx7sIQirlxZYEFpKIV97D1gurE7Bnl+pU1b7W9VXl2xior+rPATVoGj34hAR
	R+PvxHFMFGd3rtrw29PknJdP5xh1nc/ibAcIVmnx0JNITlhddnSLjYobQu/tY6mYtI7f
	0b8g==
X-Gm-Message-State: AN3rC/5sYRr+lwArBz/ftgdadar1Rp8dExK74v05WZVCQvC8fI0LeMLH
	bomLJ7+YDLhK9Q==
X-Received: by 10.99.215.85 with SMTP id w21mr7683155pgi.217.1492186857839;
	Fri, 14 Apr 2017 09:20:57 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	z21sm4157245pgc.53.2017.04.14.09.20.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Apr 2017 09:20:56 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 14 Apr 2017 09:20:31 -0700
Message-Id: <20170414162035.23522-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.12.2
Subject: [meta-raspberrypi][PATCH 1/5] pitft: Add support for pitft35r
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
X-List-Received-Date: Fri, 14 Apr 2017 16:21:01 -0000

From: Rob Woolley <rob.woolley@windriver.com>

The support for the PiTFT 3.5 inch resistive touchscreen is optional.
It may be enabled by adding the following line in local.conf:

MACHINE_FEATURES += "pitft pitft35r"

Signed-off-by: Rob Woolley <rob.woolley@windriver.com>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 README                                  | 1 +
 conf/machine/include/rpi-base.inc       | 1 +
 conf/machine/raspberrypi3-64.conf       | 1 +
 recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
 4 files changed, 9 insertions(+)

diff --git a/README b/README
index 9fdd5eb..e44475c 100644
--- a/README
+++ b/README
@@ -241,6 +241,7 @@ the modelname should be added as a MACHINE_FEATURES in local.conf like below:
 List of currently supported models:
     - pitft22
     - pitft28r
+    - pitft35r
 
 3.O. Misc. display
 ==================
diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 092cbeb..9bcb91d 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -31,6 +31,7 @@ KERNEL_DEVICETREE ?= " \
     overlays/lirc-rpi.dtbo \
     overlays/pitft22.dtbo \
     overlays/pitft28-resistive.dtbo \
+    overlays/pitft35-resistive.dtbo \
     overlays/pps-gpio.dtbo \
     overlays/rpi-ft5406.dtbo \
     overlays/w1-gpio.dtbo \
diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
index ca10ed9..0efe3ff 100644
--- a/conf/machine/raspberrypi3-64.conf
+++ b/conf/machine/raspberrypi3-64.conf
@@ -23,6 +23,7 @@ KERNEL_DEVICETREE = " \
     overlays/lirc-rpi.dtbo \
     overlays/pitft22.dtbo \
     overlays/pitft28-resistive.dtbo \
+    overlays/pitft35-resistive.dtbo \
     overlays/pps-gpio.dtbo \
     overlays/rpi-ft5406.dtbo \
     overlays/w1-gpio.dtbo \
diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index af55983..b3c5084 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -18,6 +18,7 @@ PR = "r5"
 PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
 PITFT22="${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0", d)}"
 PITFT28r="${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "1", "0", d)}"
+PITFT35r="${@bb.utils.contains("MACHINE_FEATURES", "pitft35r", "1", "0", d)}"
 
 VC4GRAPHICS="${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "1", "0", d)}"
 
@@ -99,6 +100,11 @@ do_deploy() {
         echo "dtoverlay=pitft28-resistive,rotate=90,speed=32000000,txbuflen=32768" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
 
+    if [ "${PITFT35r}" = "1" ]; then
+        echo "# Enable PITFT35r display" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "dtoverlay=pitft35-resistive,rotate=90,speed=42000000,fps=20" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
+
     # UART support
     if [ "${ENABLE_UART}" = "1" ]; then
         echo "# Enable UART" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
-- 
2.12.2


