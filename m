Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD844E00CE9; Tue, 19 Sep 2017 09:22:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM, URIBL_SBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.6 URIBL_SBL Contains an URL's NS IP listed in the SBL blocklist
	*      [URIs: waveshare.com]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E151E00C62
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 09:22:06 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id h4so52967pfk.0
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 09:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Q9v8Sqmefce7Qn9013vY7tccGHvoFShtOKoAQeaqYN0=;
	b=mprc+5arP3jzXE5rakLCdTKEDMqDaK/Idin7ik5U3oFh+fgTrA7GkOLz6wJJQLo8a/
	rxrndTxkZ8xbUBCkix1bwSskXqQKQQxZ0UzLnLhLaDj2xN5B9guNR+hjBSvCiwnnlmfi
	qLinWpduKYO0Nf9Qfh73oIfY9ciKnUJ555UFcxmuYORk7774eN6frePNPkt5A+GhpQW2
	MnkyLNjputCr7mgWMbw/LhI16z9HMCY9rsbxi/nb+h/PlVxgCoX0MXoCBD3q6kt4QqCb
	I0Rvt0ox153lAAwPCGXngRLRTnkZ8U79lTz2DDM2vvxlYbkJxCfsP+ut6sUM+8huT68v
	jSJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Q9v8Sqmefce7Qn9013vY7tccGHvoFShtOKoAQeaqYN0=;
	b=EuQ1GUtZFUwG/CUJcp1p8jmFZK1PRaWRi7RQqaAJsWQf1nYZLheH3Sa5gENEbS/pvf
	OavWH6gifyN7Mi9v2vxFiXdcACMhYDzLRljvY3GdoR3+Fj6OEOXN23R4xfOp3FbJNQBF
	vYoAEfBqMGMQzwZCI0MAFO7zvUDM33Yv948Z9N6IiM6E28/2WGJVhwtRt3l7wlQvvejN
	t5bSCT+RfiUhdPN2I/LGrgRoOOg2Zw14p7Q21XwVBkPu0vfXsvJ6JsR7lwuydkI+OoNP
	W6tmkQzWoYZ2P2QJ+ctKHUr1aAwuNdqlovYTFgJQa1Db1s8k0mpMtpMDZQbNOfZxBkrh
	UVUA==
X-Gm-Message-State: AHPjjUiSqBCUx5MNXyXg7uotpwsxOh+EPZiB8y56z5mjW/8gp4gZZO4I
	TcKIersvQl2smwcCgbwKlUJ8ZQ==
X-Google-Smtp-Source: AOwi7QBcR56+l7pyaKR9WkHf+NT1MdJLZwRPhHeaK2HzS/lZW1/QztkpCP16fe5bZFHn9Yn1n7tBIA==
X-Received: by 10.159.198.7 with SMTP id f7mr1853742plo.38.1505838125641;
	Tue, 19 Sep 2017 09:22:05 -0700 (PDT)
Received: from localhost.localdomain (c-73-158-54-208.hsd1.ca.comcast.net.
	[73.158.54.208]) by smtp.gmail.com with ESMTPSA id
	s81sm4906836pfg.162.2017.09.19.09.22.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 19 Sep 2017 09:22:04 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 19 Sep 2017 09:21:50 -0700
Message-Id: <20170919162152.37560-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20170919162152.37560-1-raj.khem@gmail.com>
References: <20170919162152.37560-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V2 2/4] raspberrypi3-64: Use vc4-fkms-v3d overlay for rpi64
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
X-List-Received-Date: Tue, 19 Sep 2017 16:22:08 -0000

Use correct overlay for enabled vc4 accelaration
This enable 3D accelaration over dispmanx on vc4/rpi64
Enable audio over HDMI
Disable overscan to avoid graphics glitches

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
Changes in v2: None
 conf/machine/raspberrypi3-64.conf       |  1 +
 recipes-bsp/bootfiles/rpi-config_git.bb | 14 ++++++++++++--
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
index e3d11f2..237684a 100644
--- a/conf/machine/raspberrypi3-64.conf
+++ b/conf/machine/raspberrypi3-64.conf
@@ -31,6 +31,7 @@ KERNEL_DEVICETREE = " \
     overlays/pi3-disable-bt.dtbo \
     overlays/pi3-miniuart-bt.dtbo \
     overlays/vc4-kms-v3d.dtbo \
+    overlays/vc4-fkms-v3d.dtbo \
     "
 
 SERIAL_CONSOLE ?= "115200 ttyS0"
diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index 38a1237..4353061 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -21,7 +21,8 @@ PITFT28r="${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "1", "0", d)}"
 PITFT35r="${@bb.utils.contains("MACHINE_FEATURES", "pitft35r", "1", "0", d)}"
 
 VC4GRAPHICS="${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "1", "0", d)}"
-
+VC4DTBO_raspberrypi3-64 = "vc4-fkms-v3d"
+VC4DTBO ?= "vc4-kms-v3d"
 inherit deploy
 
 do_deploy() {
@@ -114,7 +115,7 @@ do_deploy() {
     # VC4 Graphics support
     if [ "${VC4GRAPHICS}" = "1" ]; then
         echo "# Enable VC4 Graphics" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
-        echo "dtoverlay=vc4-kms-v3d,${VC4_CMA_SIZE}" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "dtoverlay=${VC4DTBO},${VC4_CMA_SIZE}" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
 
     # Waveshare "C" 1024x600 7" Rev2.1 IPS capacitive touch (http://www.waveshare.com/7inch-HDMI-LCD-C.htm)
@@ -129,6 +130,15 @@ do_deploy() {
 }
 
 do_deploy_append_raspberrypi3-64() {
+    echo "# have a properly sized image" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    echo "disable_overscan=1" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+
+    echo "# for sound over HDMI" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    echo "hdmi_drive=2" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+
+    echo "# Enable audio (loads snd_bcm2835)" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    echo "dtparam=audio=on" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+
     # Device Tree support
     echo "# Load correct Device Tree for Aarch64" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     echo "device_tree=bcm2710-rpi-3-b.dtb" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
-- 
2.14.1


