Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85AE0E00948; Thu, 21 Apr 2016 10:32:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD1E8E00948
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:32:23 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id n3so23346491wmn.1
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=ualGN7qIZMKcBNzf0zxEzrqvdDiE343rCZH4fouwBs8=;
	b=rv+4TogLgu8iRA/hpnHleYGvbX8G9okZJOklgLjd4/d0KPf7bDx61TVZLWGRwqJssz
	gzSN3DoD5D5siPWRIJv9O4iX6UeQM9dK210PHwROqgOA25/NozZpAYU4YNia8UDm+QRl
	azpjkwOJgawJQVYEDEf1j4cZlQanCyicUBgFlaO+g/eU0PXvwkBxRYO+KfHRbkpeR03z
	gs7WetxEoGheHsAinUOddCE9YSe8udgqCKGb1Ed21CiCIj6yF4FC5laNjqUT2SofEkqI
	svsU3ONo12FNnqW1Yh7Yzj+QZTWbJZCSeFxMQs/YkRW0ZcJVu8GkII1j0rB4/vISdtVB
	Vl0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=ualGN7qIZMKcBNzf0zxEzrqvdDiE343rCZH4fouwBs8=;
	b=KDlG6C6U1V/NbWVPB/7znAKNWud9yyf8+Xpb8wrIk67BV1gjqbkKiv025NuY3/Ny1S
	JxAVkagaE74VSYnRdzXriMeEYjHEisLRdqzG04dtpJ3BlNY8LZ3ZLCA+9PJAoN3TbHEx
	xjqoMCgKFJH/I39eK1JfR+eyILYZMNnpOkJBFBGaqHNAuI86CXHD/gu/TMI8u2J6THc+
	wlR3efBvUORJQsiU7phfslyGShhLPgT9TGAFYFkeYYADNVvO9A9j8FGOnx0MBCYWSMhO
	vTJ9biTUTaSaBJYF2VH6vXNY63Sn9IRmJEAFdgeQx/mENNJllf/kVtewkQuHJLPaV14y
	3MLg==
X-Gm-Message-State: AOPr4FWr4EXE76Mq39q6aqWaBBC/9xGlIy6OMHUKt3U10sNw70iejHgOGMzX5Qq2Zq8rKA==
X-Received: by 10.194.104.135 with SMTP id ge7mr15696119wjb.15.1461259942485; 
	Thu, 21 Apr 2016 10:32:22 -0700 (PDT)
Received: from Theodors-MBP.home
	(host81-159-212-160.range81-159.btcentralplus.com. [81.159.212.160])
	by smtp.gmail.com with ESMTPSA id
	o128sm4251128wmb.19.2016.04.21.10.32.21
	(version=TLS1 cipher=AES128-SHA bits=128/128);
	Thu, 21 Apr 2016 10:32:21 -0700 (PDT)
From: Theodor Gherzan <theodor@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 21 Apr 2016 18:32:09 +0100
Message-Id: <1461259933-1661-1-git-send-email-theodor@gherzan.ro>
X-Mailer: git-send-email 2.6.4 (Apple Git-63)
Subject: [meta-raspberrypi][PATCH 1/5] SERIAL_CONSOLE definition split
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
X-List-Received-Date: Thu, 21 Apr 2016 17:32:30 -0000

From: Trevor Woerner <twoerner@gmail.com>

The latest raspberrypi3 puts its console on ttyS0 instead of ttyAMA0 (like all
the preceding boards). Therefore pull this definition out of the common
include file and add it separately for each MACHINE.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
Signed-off-by: Theodor Gherzan <theodor@resin.io>
---
 conf/machine/include/rpi-base.inc | 2 --
 conf/machine/raspberrypi.conf     | 2 ++
 conf/machine/raspberrypi0.conf    | 2 ++
 conf/machine/raspberrypi2.conf    | 2 ++
 conf/machine/raspberrypi3.conf    | 2 ++
 5 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 792150e..b125506 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -7,8 +7,6 @@ include conf/machine/include/soc-family.inc
 
 IMAGE_FSTYPES ?= "tar.bz2 ext3 rpi-sdimg"
 
-SERIAL_CONSOLE = "115200 ttyAMA0"
-
 XSERVER = " \
     xserver-xorg \
     xf86-input-evdev \
diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf
index e8516e7..0f95f1a 100644
--- a/conf/machine/raspberrypi.conf
+++ b/conf/machine/raspberrypi.conf
@@ -6,3 +6,5 @@ DEFAULTTUNE ?= "arm1176jzfshf"
 
 require conf/machine/include/tune-arm1176jzf-s.inc
 include conf/machine/include/rpi-base.inc
+
+SERIAL_CONSOLE = "115200 ttyAMA0"
diff --git a/conf/machine/raspberrypi0.conf b/conf/machine/raspberrypi0.conf
index 58468ed..ccf9ae7 100644
--- a/conf/machine/raspberrypi0.conf
+++ b/conf/machine/raspberrypi0.conf
@@ -4,3 +4,5 @@
 
 MACHINEOVERRIDES = "raspberrypi:${MACHINE}"
 include conf/machine/raspberrypi.conf
+
+SERIAL_CONSOLE = "115200 ttyAMA0"
diff --git a/conf/machine/raspberrypi2.conf b/conf/machine/raspberrypi2.conf
index 30edae3..b6346e6 100644
--- a/conf/machine/raspberrypi2.conf
+++ b/conf/machine/raspberrypi2.conf
@@ -6,3 +6,5 @@ DEFAULTTUNE ?= "cortexa7thf-neon-vfpv4"
 
 require conf/machine/include/tune-cortexa7.inc
 include conf/machine/include/rpi-base.inc
+
+SERIAL_CONSOLE = "115200 ttyAMA0"
diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
index 1b73f2f..cb6056e 100644
--- a/conf/machine/raspberrypi3.conf
+++ b/conf/machine/raspberrypi3.conf
@@ -7,3 +7,5 @@ MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-brcm43430"
 
 include conf/machine/raspberrypi2.conf
+
+SERIAL_CONSOLE = "115200 ttyS0"
-- 
2.1.4


