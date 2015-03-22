Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6137EE0084F; Sun, 22 Mar 2015 13:21:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6246BE005B6
	for <yocto@yoctoproject.org>; Sun, 22 Mar 2015 13:21:19 -0700 (PDT)
Received: by wgbcc7 with SMTP id cc7so130663748wgb.0
	for <yocto@yoctoproject.org>; Sun, 22 Mar 2015 13:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:subject:date:message-id:mime-version:content-type
	:content-transfer-encoding;
	bh=AlXdZnE4FH4H8pP7SkinXFo7+p4cMCixaMce2es9OeE=;
	b=Up75unix2qx/aivh7VGS0r7oosuCVfjvA9l2sRsaQEBoh9zrn1/5L9NkDj00upAmQY
	l6xqiuayQTXv0jT0BMvXwOxtCBzrD9EquOukH3aQLsnwr4+m166urHd1Gs8d+qDzVoKc
	K25rKupfYVBj2fLni2gAInffsDMPvthxq2Sx66ji886BWOxzxOIOUUR/A4YAPZeVAMjT
	7zRMKis3IYMs73ox5An3LMOvXi62ptpgmLN5nqsGj/vBiPw6Dr7mBpVCBGrvfoMxU5lY
	+xd7FYqLO35rGmPMJVV1kSKM7brjdZ80OYWM9dgm90YaxtyRyrm0I9iSfFm1Tvul6DY/
	6sgA==
X-Received: by 10.194.24.103 with SMTP id t7mr176307397wjf.15.1427055678578;
	Sun, 22 Mar 2015 13:21:18 -0700 (PDT)
Received: from localhost.localdomain (p4FDF0F61.dip0.t-ipconnect.de.
	[79.223.15.97])
	by mx.google.com with ESMTPSA id n1sm8033902wib.11.2015.03.22.13.21.17
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 22 Mar 2015 13:21:17 -0700 (PDT)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
To: yocto@yoctoproject.org
Date: Sun, 22 Mar 2015 21:21:07 +0100
Message-Id: <1427055667-2226-1-git-send-email-schnitzeltony@googlemail.com>
X-Mailer: git-send-email 1.9.3
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH] make sound work out of the box for raspberrypi2
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
X-List-Received-Date: Sun, 22 Mar 2015 20:21:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
---
 ...-during-boot-by-compiling-SND_BCM2835-int.patch | 38 ++++++++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_3.18.bb     |  8 +++--
 2 files changed, 43 insertions(+), 3 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0001-start-sound-during-boot-by-compiling-SND_BCM2835-int.patch

diff --git a/recipes-kernel/linux/linux-raspberrypi/0001-start-sound-during-boot-by-compiling-SND_BCM2835-int.patch b/recipes-kernel/linux/linux-raspberrypi/0001-start-sound-during-boot-by-compiling-SND_BCM2835-int.patch
new file mode 100644
index 0000000..cb06253
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi/0001-start-sound-during-boot-by-compiling-SND_BCM2835-int.patch
@@ -0,0 +1,38 @@
+From dc6d02c68956a1833bd30159d4e411f1515db66e Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
+Date: Wed, 18 Mar 2015 23:51:37 +0100
+Subject: [PATCH] start sound during boot by compiling SND_BCM2835 into kernel
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
+---
+ arch/arm/configs/bcm2709_defconfig | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/arch/arm/configs/bcm2709_defconfig b/arch/arm/configs/bcm2709_defconfig
+index b5bf4cb..426f2ed 100644
+--- a/arch/arm/configs/bcm2709_defconfig
++++ b/arch/arm/configs/bcm2709_defconfig
+@@ -765,7 +765,7 @@ CONFIG_LOGO=y
+ # CONFIG_LOGO_LINUX_MONO is not set
+ # CONFIG_LOGO_LINUX_VGA16 is not set
+ CONFIG_SOUND=y
+-CONFIG_SND=m
++CONFIG_SND=y
+ CONFIG_SND_SEQUENCER=m
+ CONFIG_SND_SEQ_DUMMY=m
+ CONFIG_SND_MIXER_OSS=m
+@@ -778,7 +778,7 @@ CONFIG_SND_VIRMIDI=m
+ CONFIG_SND_MTPAV=m
+ CONFIG_SND_SERIAL_U16550=m
+ CONFIG_SND_MPU401=m
+-CONFIG_SND_BCM2835=m
++CONFIG_SND_BCM2835=y
+ CONFIG_SND_USB_AUDIO=m
+ CONFIG_SND_USB_UA101=m
+ CONFIG_SND_USB_CAIAQ=m
+-- 
+1.9.3
+
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
index 921e702..053e892 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
@@ -1,8 +1,10 @@
 LINUX_VERSION ?= "3.18.5"
 
 SRCREV = "a6cf3c99bc89e2c010c2f78fbf9e3ed478ccfd46"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
+SRC_URI = " \
+    git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y \
+    file://sl030raspberrypii2ckernel.patch \
+    file://0001-start-sound-during-boot-by-compiling-SND_BCM2835-int.patch \
+"
 
 require linux-raspberrypi.inc
-- 
1.9.3


