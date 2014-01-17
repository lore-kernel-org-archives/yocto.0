Return-Path: <andrei@gherzan.ro>
Received: from mail-qe0-f52.google.com (mail-qe0-f52.google.com
	[209.85.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A02C7E0087D
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 06:51:32 -0800 (PST)
Received: by mail-qe0-f52.google.com with SMTP id a11so1742530qen.39
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 06:51:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=1GqWnxGQSAMpoKXX+3mWRH2hlQCSe2GG+EG/a8stoWY=;
	b=jIjzOvRfkcc8z5tdtDKZRjjS/nNF2bhtqLXIgLvpV3YYQx0Z3mrub6nsKXqGWGaeCk
	Y7dNR1PZzm0xHxIbYJqu/y67bPGePop+xuv9fpj43nDBUUDNVPm/aF1J6wzsxGl1D8ji
	CRSYieyUkfjsDmadmOXWtpWyRuLu2nVI4u4jr6cfcfNht2pS+q1c9XK1qLO2EqIidu+R
	SnsANFVJS36Wi51vnBTwFYOxTKeM3uhwyeRArY1VoGchPdqq3ggZ7fwFC2W8T/uH0QZp
	ZOHZ9O3qxCT6zO/TVlL45KUxa7azoZauQBV/Gi2pIKe25b4YXv01p4jD3Rmm7FD8cAyW
	K0wg==
X-Gm-Message-State: ALoCoQkm2b2XKdUbvowh3oa7aoespMCvcpjt4lEdmY0Cfa0OfzPB7IOUHParcXSnKUZqZlX3e6f5
X-Received: by 10.224.38.137 with SMTP id b9mr3904045qae.38.1389970291208;
	Fri, 17 Jan 2014 06:51:31 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id w8sm14398658qag.15.2014.01.17.06.51.29
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 17 Jan 2014 06:51:30 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 17 Jan 2014 16:51:14 +0200
Message-Id: <1389970274-26349-4-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1389970274-26349-1-git-send-email-andrei@gherzan.ro>
References: <1389970274-26349-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 4/4] README: Cleanup and add info about images
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
X-List-Received-Date: Fri, 17 Jan 2014 14:51:32 -0000

Change-Id: I904de647fdd5514d361d33e887fd68977cde7e8c
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 README | 58 +++++++++++++++++++++-------------------------------------
 1 file changed, 21 insertions(+), 37 deletions(-)

diff --git a/README b/README
index c4be792..474c5f3 100644
--- a/README
+++ b/README
@@ -27,13 +27,15 @@
 
 Contents:
 =========
-1. OpenEmbedded BSP Layer - RaspberryPi
+1. Description
 2. Yocto BSP Layer - RaspberryPi
     2.A. Compressed deployed files
     2.B. GPU memory
     2.C. Add purchased license codecs
     2.D. Disable overscan
     2.E. Set overclocking options
+    2.F. Optional - Video camera support with V4L2 drivers
+    2.G. Images
 3. Extra apps
     3.A. omxplayer
 4. Source code and mirrors
@@ -44,54 +46,20 @@ Contents:
 6. Maintainers
 
 
-
-1. OpenEmbedded BSP Layer - RaspberryPi
-=======================================
+1. Description
+==============
 
 This is the general hardware specific BSP overlay for the RaspberryPi device.
-It should be used with openembedded-core (not old-style org.openembedded.dev).
 
 More information can be found at:
-
                    http://www.raspberrypi.org/ (Official Site)
-                   http://www.distant-earth.com/ (My Site)
-
-Build scripts patched to support making a firmware image for the RaspberryPi
-with Angstrom can be found at:
-
-                   http://github.com/Angstrom-distribution/setup-scripts
-
-When not depending on meta-openembedded and not using systemd, you may need to
-mask few recipes requiring systemd or other recipes not included in your
-distribution of choice.
-
-You can achieve this by adding something like the following to local.conf:
-
-BBMASK = "meta-raspberrypi/recipes-multimedia/libav|\
-meta-raspberrypi/recipes-core/systemd"
-
-You can adjust the BBMASK for any .bbappends that your distribution does not
-contain recipes for.
 
 The core BSP part of meta-raspberrypi should work with different
 OpenEmbedded/Yocto distributions and layer stacks, such as:
-
 * Distro-less (only with OE-Core).
 * Angstrom (main focus of testing).
 * Yocto/Poky.
 
-This layer in its entirety depends on:
-
-URI: git://git.openembedded.org/openembedded-core
-branch: master
-revision: HEAD
-
-URI: git://git.openembedded.org/meta-openembedded
-branch: master
-revision: HEAD
-
-
-
 2. Yocto BSP Layer - RaspberryPi
 ================================
 
@@ -101,6 +69,11 @@ URI: git://git.yoctoproject.org/poky
 branch: master
 revision: HEAD
 
+URI: git://github.com/openembedded/meta-oe.git
+layers: meta-multimedia
+branch: master
+revision: HEAD
+
 How to use it:
 
 1. source poky/oe-init-build-env rpi-build
@@ -159,9 +132,20 @@ SDRAM_FREQ = "500"
 OVER_VOLTAGE = "6"
 
 2.F. Optional - Video camera support with V4L2 drivers
+======================================================
 Set this variable to enable support for the video camera (Linux 3.12.4+ required)
 VIDEO_CAMERA = "1"
 
+2.G. Images
+===========
+* rpi-hwup-image
+    Hardware up image
+* rpi-basic-image
+    Based on rpi-hwup-image with some added features (ex: splash)
+* rpi-test-image
+    Image based on rpi-basic-image which includes most of the packages in this
+    layer and some media samples.
+
 
 3. Extra apps
 =============
-- 
1.8.1.4


