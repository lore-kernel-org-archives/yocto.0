Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F36FFE009CE; Fri, 24 Mar 2017 10:49:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 466B9E0097C
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 10:49:28 -0700 (PDT)
Received: by mail-it0-f65.google.com with SMTP id z70so1438847itb.1
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 10:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=0Hof4ILEyrKoCYixQu0/axRsTPFTgY1vSnRq1yQ199o=;
	b=H5aKUWd4vXZarYCNP0DNsTTrsxEHgBtakEuqI+rlvcEOhWLLtyw5R8a/6KpzWX/aWb
	SguGEgGZQCzyEjUBSKL5dSpjMsQAwT1ovWdWVhOXRuKjY0JzP4sQC8148KnHl5wuYaOg
	vew4gYxgWytA3FqnQQBlO/l0LRcdH9k8px/9OdoHsd3v1JqEj6HAbHxhywaOqu2jjsYT
	IdoXVdxZUEyWcQTEyBmaX5zxM8VyAfITb93UqwrYx/v9YW6E6wnwDVVDJvrFZZhaC7Wj
	N3K0LOqkLNLwFMBUKT83RBdqtLUAQcSIaVek1QtzjcLzroY9Y3zdu1A/S5c0AUMi1tB2
	D5xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=0Hof4ILEyrKoCYixQu0/axRsTPFTgY1vSnRq1yQ199o=;
	b=eTU+704fCmQgt0GLdzGQyfVTN84Gp7tfLJO/SK29/HUDUouUnOUGVUUllMdxliheqY
	7nSf3xWuhmHMFA7iEcvPZELdT6E24aANeprZSHtHOxcXv3uHq5wL7nTg4k49CMWrfsyd
	gO0h4ewH7mgyY1tP66r4F8dZ9KDEgntjZtiGIoxwZmRSvYZ3zTGS/c5xu5FUDx6B9r8m
	JmLTzRf3EE4STe/+rDzi3lHVIqwVC+ykbLMeBduQdDymbK+7E24y3POJIhZozXc03J0V
	4PHj+ZWE55fVjVac863HPZsgp5peG92QigPikxzr5rj8R33bIFC1pPledglhaVOrDfvW
	lWBQ==
X-Gm-Message-State: AFeK/H3phHFnVtTO2elZIjzUQSPx4kp4k0Q9/H/O/uKazv9/UMTIZff4xRHOuXb26U03mg==
X-Received: by 10.36.28.74 with SMTP id c71mr4386937itc.45.1490377768034;
	Fri, 24 Mar 2017 10:49:28 -0700 (PDT)
Received: from linux-uys3.suse (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id j4sm1254744ita.29.2017.03.24.10.49.27
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 24 Mar 2017 10:49:27 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 24 Mar 2017 13:49:16 -0400
Message-Id: <20170324174916.17866-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.12.0.rc1.48.g076c053
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH] rpi-config: waveshare screen support
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
X-List-Received-Date: Fri, 24 Mar 2017 17:49:32 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add support for the Waveshare 1024x600 "C" Rev2.1 7" IPS Capacitive Touch
Screen LCD with HDMI interface:

	http://www.waveshare.com/7inch-HDMI-LCD-C.htm
	http://www.waveshare.com/wiki/7inch_HDMI_LCD_(C)

This product works "out of the box" with the Raspberry Pi. Simply connect
the provided HDMI and USB cables between the two devices. The touch<=>mouse
integration works automatically.

Tested with a Raspberry Pi 3, with a 32-bit raspberrypi3 build.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 README                                  | 13 ++++++++++---
 recipes-bsp/bootfiles/rpi-config_git.bb | 10 ++++++++++
 2 files changed, 20 insertions(+), 3 deletions(-)

diff --git a/README b/README
index 65a1e5f..c58bc99 100644
--- a/README
+++ b/README
@@ -29,7 +29,8 @@ Contents:
     3.L. Enable SPI bus
     3.M. Enable I2C
     3.N. Enable PiTFT support
-    3.O. Enable UART support
+    3.O. Misc. display
+    3.P. Enable UART support
 4. Extra apps
     4.A. omxplayer
 5. Board Configuration
@@ -241,9 +242,15 @@ List of currently supported models:
     - pitft22
     - pitft28r
 
-3.O. Enable UART
-===============
+3.O. Misc. display
+==================
+If you would like to use the Waveshare "C" 1024×600, 7 inch Capacitive Touch
+Screen LCD, HDMI interface (http://www.waveshare.com/7inch-HDMI-LCD-C.htm)
+Rev 2.1, please set the following in your local.conf
+WAVESHARE_1024X600_C_2.1 = "1"
 
+3.P. Enable UART
+===============
 RaspberryPi 1, 2 and CM will have UART console enabled by default.
 
 RaspberryPi 3 does not have the UART enabled by default because this needs a
diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index 20ec343..8adc938 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -110,6 +110,16 @@ do_deploy() {
         echo "# Enable VC4 Graphics" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
         echo "dtoverlay=vc4-kms-v3d,${VC4_CMA_SIZE}" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
+
+    # Waveshare "C" 1024x600 7" Rev2.1 IPS capacitive touch (http://www.waveshare.com/7inch-HDMI-LCD-C.htm)
+    if [ "${WAVESHARE_1024X600_C_2.1}" = "1" ]; then
+        echo "# Waveshare \"C\" 1024x600 7\" Rev2.1 IPS capacitive touch screen" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "max_usb_current=1" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "hdmi_group=2" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "hdmi_mode=87" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "hdmi_cvt 1024 600 60 6 0 0 0" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "hdmi_drive=1" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
 }
 
 do_deploy_append_raspberrypi3-64() {
-- 
2.12.0.rc1.48.g076c053


