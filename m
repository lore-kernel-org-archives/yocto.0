Return-Path: <romain.perier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED9CCE00D3E; Sun, 13 Sep 2015 22:56:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (romain.perier[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1DB5E00B5E
	for <yocto@yoctoproject.org>; Sun, 13 Sep 2015 22:56:29 -0700 (PDT)
Received: by wicgb1 with SMTP id gb1so126102345wic.1
	for <yocto@yoctoproject.org>; Sun, 13 Sep 2015 22:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=fBUQidDvMKeYhZAS65ElrPPYqPHHtP8qpUnqb4ZYsTw=;
	b=XbQZEwA4lv/GeeVXFvQU3hTGARsUDz2r+xLy/UMfb2OiWMDUXawe42s74o9VdnKeN4
	SXMy+prOAWQBw0DqMu6haQ6FUBjCsD3L5Ozm+2slu+G7hk/ISsPQfYQh2XYJA0iUFU3B
	OaLm8CgGzgOIq6b8F5Vinfv0hdil512X+0kauXwGeBer2aLz9ZFsDEfqH8V+ixwBD+Zt
	glxNAjiv/qR0WPe+IttCSVwIzC2Y6aNcRLpKXDAS02UVAQZRDBAV9gQsqFw4FkP8kIRJ
	C/mxUbUpFDdefO0y4auEgyGcWibPQymYXBGUdimhEPFTqz6/DcUOySDE3lJntO845M35
	RH7g==
X-Received: by 10.180.90.198 with SMTP id by6mr23607961wib.82.1442210188205;
	Sun, 13 Sep 2015 22:56:28 -0700 (PDT)
Received: from localhost.localdomain
	(i19-les01-ntr-176-186-2-137.sfr.lns.abo.bbox.fr. [176.186.2.137])
	by smtp.gmail.com with ESMTPSA id
	pg5sm13584705wjb.21.2015.09.13.22.56.26
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 13 Sep 2015 22:56:27 -0700 (PDT)
From: Romain Perier <romain.perier@gmail.com>
To: cristian.iorga@intel.com
Date: Mon, 14 Sep 2015 07:56:25 +0200
Message-Id: <1442210185-29335-1-git-send-email-romain.perier@gmail.com>
X-Mailer: git-send-email 2.1.4
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: [PATCH v2] linux-firmware: package Broadcom BCM4354 firmware
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
X-List-Received-Date: Mon, 14 Sep 2015 05:56:34 -0000

Signed-off-by: Romain Perier <romain.perier@gmail.com>
---

changes in v2:
    - changed short log message
    - included the package maintainer in cc:

Note: we need this change for meta-rockchip

 meta/recipes-kernel/linux-firmware/linux-firmware_git.bb | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb b/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb
index ef8117c..4939ca6 100644
--- a/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb
+++ b/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb
@@ -168,7 +168,7 @@ PACKAGES =+ "${PN}-ralink-license ${PN}-ralink \
              ${PN}-ti-connectivity-license ${PN}-wl12xx ${PN}-wl18xx \
              ${PN}-vt6656-license ${PN}-vt6656 \
              ${PN}-rtl-license ${PN}-rtl8192cu ${PN}-rtl8192ce ${PN}-rtl8192su \
-             ${PN}-broadcom-license ${PN}-bcm4329 ${PN}-bcm4330 ${PN}-bcm4334 \
+             ${PN}-broadcom-license ${PN}-bcm4329 ${PN}-bcm4330 ${PN}-bcm4334 ${PN}-bcm4354 \
              ${PN}-atheros-license ${PN}-ar9170 ${PN}-ar3k ${PN}-ath6k ${PN}-ath9k \
              \
              ${PN}-iwlwifi-license ${PN}-iwlwifi-135-6 \
@@ -311,6 +311,7 @@ RDEPENDS_${PN}-vt6656 = "${PN}-vt6656-license"
 LICENSE_${PN}-bcm4329 = "Firmware-broadcom_bcm43xx"
 LICENSE_${PN}-bcm4330 = "Firmware-broadcom_bcm43xx"
 LICENSE_${PN}-bcm4334 = "Firmware-broadcom_bcm43xx"
+LICENSE_${PN}-bcm4354 = "Firmware-broadcom_bcm43xx"
 
 FILES_${PN}-broadcom-license = " \
   /lib/firmware/LICENCE.broadcom_bcm43xx \
@@ -324,11 +325,16 @@ FILES_${PN}-bcm4330 = " \
 FILES_${PN}-bcm4334 = " \
   /lib/firmware/brcm/brcmfmac4334-sdio.bin \
 "
+FILES_${PN}-bcm4354 = " \
+  /lib/firmware/brcm/brcmfmac4354-sdio.bin \
+"
 
 ALTERNATIVE_LINK_NAME[brcmfmac-sdio.bin] = "/lib/firmware/brcm/brcmfmac-sdio.bin"
 
 ALTERNATIVE_linux-firmware-bcm4334 = "brcmfmac-sdio.bin"
 ALTERNATIVE_TARGET_linux-firmware-bcm4334[brcmfmac-sdio.bin] = "/lib/firmware/brcm/brcmfmac4334-sdio.bin"
+ALTERNATIVE_linux_firmware-bcm4354 = "brcmfmac-sdio.bin"
+ALTERNATIVE_TARGET_linux-firmware-bcm4354[brcmfmac-sdio.bin] = "/lib/firmware/brcm/brcmfmac4354-sdio.bin"
 ALTERNATIVE_linux-firmware-bcm4329 = "brcmfmac-sdio.bin"
 ALTERNATIVE_TARGET_linux-firmware-bcm4329[brcmfmac-sdio.bin] = "/lib/firmware/brcm/brcmfmac4329-sdio.bin"
 ALTERNATIVE_linux-firmware-bcm4330 = "brcmfmac-sdio.bin"
@@ -337,6 +343,7 @@ ALTERNATIVE_TARGET_linux-firmware-bcm4330[brcmfmac-sdio.bin] = "/lib/firmware/br
 RDEPENDS_${PN}-bcm4329 += "${PN}-broadcom-license"
 RDEPENDS_${PN}-bcm4330 += "${PN}-broadcom-license"
 RDEPENDS_${PN}-bcm4334 += "${PN}-broadcom-license"
+RDEPENDS_${PN}-bcm4354 += "${PN}-broadcom-license"
 
 # For iwlwifi
 LICENSE_${PN}-iwlwifi-135-6     = "Firmware-iwlwifi_firmware"
-- 
2.1.4


