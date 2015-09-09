Return-Path: <romain.perier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C9EDE00C5C; Wed,  9 Sep 2015 09:35:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (romain.perier[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 965F8E00C13
	for <yocto@yoctoproject.org>; Wed,  9 Sep 2015 09:35:37 -0700 (PDT)
Received: by wicge5 with SMTP id ge5so162228479wic.0
	for <yocto@yoctoproject.org>; Wed, 09 Sep 2015 09:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=vs8GfY82fUCFao/IN/syXK5YoUiuBVc+D6bo/ak5XEw=;
	b=I69Brtmzx81KNxDSKlTZG02+KyEO6s4ZZtaqUVXzfCv47u7/er9PTsU/wbN7dXQ5eq
	W7VyNL+VrV9MauLHFqO/kyLxKYIArNoUxz+CuGI04fFBPVa8G49pph6BGtZhQ5J+6mls
	oGXOoMS83f0+jzkN9YSz1faeeaC2KJRvPZtlMbLwnT+Let3LLw4G80P0QP+mLh5MCb0e
	wAxGfULAfdHDyw6ynfWfObm46OS6WdsH/Fl2Kah+N87uPZVbI1VwGSWGtxYxKTTfNfrl
	1wG7x6VKD3qcTXMTExh+1+KC89ETk+6zZGUfkXtFyTI8M8aAR/KWNUfYK1cS74h4Hwbv
	y9iw==
X-Received: by 10.194.87.4 with SMTP id t4mr64368885wjz.84.1441816537017;
	Wed, 09 Sep 2015 09:35:37 -0700 (PDT)
Received: from localhost.localdomain
	(i19-les01-ntr-176-186-2-137.sfr.lns.abo.bbox.fr. [176.186.2.137])
	by smtp.gmail.com with ESMTPSA id
	fa8sm4697058wib.14.2015.09.09.09.35.35
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 09 Sep 2015 09:35:36 -0700 (PDT)
From: Romain Perier <romain.perier@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  9 Sep 2015 18:35:31 +0200
Message-Id: <1441816531-16393-1-git-send-email-romain.perier@gmail.com>
X-Mailer: git-send-email 2.1.4
Cc: openembedded-core@lists.openembedded.org
Subject: [PATCH] linux-firmware: split out bcm4354 firmware
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
X-List-Received-Date: Wed, 09 Sep 2015 16:35:42 -0000

Signed-off-by: Romain Perier <romain.perier@gmail.com>
---

Note: This firmware is required by some devices like rockchip-based chromebooks

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


