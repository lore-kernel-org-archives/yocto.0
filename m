Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F201E00CBA; Sun, 17 Sep 2017 22:41:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM, URIBL_SBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.6 URIBL_SBL Contains an URL's NS IP listed in the SBL blocklist
	*      [URIs: waveshare.com]
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84F63E00C8A
	for <yocto@yoctoproject.org>; Sun, 17 Sep 2017 22:41:49 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id d8so4739835pgt.3
	for <yocto@yoctoproject.org>; Sun, 17 Sep 2017 22:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=KSgm+Yf5VAxUHs36e5RNEFGSdG2Hz1bk248tcAOOOaE=;
	b=Cx5KWV29T+fa+laM+KKBmP6NLC4DFA2Aa81dyyD3IA7VzZTrpQYKhSKKflvALDYwDp
	P2d/ri77gemjOFxVjN982pDQJ0HM4ozP88T+95ZRWgS2oF5kWx2+teY5Tn13X7vY6FEY
	LdsdNkDPVbHBz3qtUqE9kLF0AbPefwD0mmfzXsIZT9FXfIlw80NbGR+CEIc9wGOvOg9u
	YEUMlPFZutT2r6gavqkzPSR/S5YesUygEr9FrpxCVaEZ7xeTBcrF1S+RsP8ACrQYpwfC
	Pg2tqWU9csN03R/zyWZ2vJho9y/0hq0Fc3jYJYOJ51Ucjd/i+plBWojl/oqIXR9gljr8
	0IRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=KSgm+Yf5VAxUHs36e5RNEFGSdG2Hz1bk248tcAOOOaE=;
	b=T1RWnD3axPgVCtcBbd9bfWHg01Gmk+Cg7p1uvGjXw4vmsrVc8a7S7SamRUHiRYa9KR
	nYgC5OsjFh/HZnX8EZBNJaU32phRf1Q+j8hhgbfCJyftFdNV9FwQLQqZx5IPsdODJOYK
	/lqLtTctWMrbj0KwdRw4TcTAurrsXqN3jo4d6qBL7BMWIP3ExjgkW238f3Rzo9G1AUCT
	4ec8j6hJwFw+yjz9jBOm7+YqND/G5TZMmF/jZ7wQ4Xc1JX6lbL+XN4KAz0PFrdw5DJat
	frQf6z0p0R52yU6bMryeYity99NinAD/IYWgG6bH7aSbfiUOzg83YeJgYLdDlc/XD9A/
	xG3A==
X-Gm-Message-State: AHPjjUg0cTaFcmaQPnKqEI40s/lIc49L+ekTeCI8/1es8TQY83Blmydf
	fwGcaGkR3MuQI5/S
X-Google-Smtp-Source: AOwi7QCZ3tLqeMM0uy1Ti2DQySPze7XiOPyeHDkgTJpQ5vRYdO6+bzO7nY1UWZz6M5RFLg7ae05nTA==
X-Received: by 10.101.80.202 with SMTP id s10mr12464047pgp.34.1505713309087;
	Sun, 17 Sep 2017 22:41:49 -0700 (PDT)
Received: from localhost.localdomain ([2601:646:8882:b8c::a20b])
	by smtp.gmail.com with ESMTPSA id
	h186sm11406591pge.72.2017.09.17.22.41.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 17 Sep 2017 22:41:48 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 17 Sep 2017 22:41:36 -0700
Message-Id: <20170918054137.33583-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20170918054137.33583-1-raj.khem@gmail.com>
References: <20170918054137.33583-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/3] raspberrypi3-64: Use vc4-fkms-v3d overlay for rpi64
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
X-List-Received-Date: Mon, 18 Sep 2017 05:41:50 -0000

Use correct overlay for enabled vc4 accelaration
This enable 3D accelaration over dispmanx on vc4/rpi64
Enable audio over HDMI
Disable overscan to avoid graphics glitches

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
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


