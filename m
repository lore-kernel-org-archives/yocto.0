Return-Path: <toolmmy@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D16C2E00AD8; Sat,  9 Apr 2016 03:48:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (toolmmy[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DB15E00ACF
	for <yocto@yoctoproject.org>; Sat,  9 Apr 2016 03:48:12 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id a140so9784934wma.2
	for <yocto@yoctoproject.org>; Sat, 09 Apr 2016 03:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=HhTPk0qowtN9yZ43n7X/gp9TOjniJKl4tEHqlsrdf+E=;
	b=D40F03lrtuV1L3uwm7aLBzis+VfP/VerZtIuvNn6T3HHZArT9+2W8BuKlL+9p+9ql/
	qqbGolYDLLhNJFtb67/WXcFcuFpaN/f81zFPa4E6P0BY/1nMbSPvlU1P/1o4BuMWM6v+
	qr1ydskWhr9LWCAo3fB48Jtv8B8GpMDXzwKRkucrxvT59FNzLZGrTZo3QujkSjB+cyBY
	m/hdyCIOGxh+y/eODjfD9k2UlcFLtT2zpPbzgK4G7B+uwX9P4MbeaKtpL/Ljvp3Msxg3
	q2H7bx25FcHUPAXJG/759JYAvtzxis0Y3KDSsaS4O3zM55/l2nv12/X7fxxOiNL9nJoe
	jOQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=HhTPk0qowtN9yZ43n7X/gp9TOjniJKl4tEHqlsrdf+E=;
	b=AfVpiLLRHwAqH5wNnQdC+NEBa286yxZT7hqSbqFp1B3MblD9jszde5YJu61jYNr31u
	ZC9E1QtgSvnIPN24koFYlBcNKUVY0rWjNYoyCxzRAzSx5HTRo58PI0ltLvoX5C8Fn9M7
	7D1nUddVfpSOWbmyRZLcJtpPmVecwohLsitVpHaK/6Pb76zsXwqMFxlCzZkQQNrBADrb
	fVJ3YcP+Xi5KaBP+XH14q89UmThktmTmAA4D/PvigICAFGUHpuaAthOFk627uBCXJkR7
	a4joUCbbeE5jksu7SIZBSgESmEYsoipo3bfeIZIgnjtPJd3dAEENvF2ySJYQ/Kf8Ya++
	RAAg==
X-Gm-Message-State: AD7BkJI+gAI8xSih9EsHNhFpTDlR2Zl06PMbIgb9BME3yE/kH3NaGwOYdg3Z47l5uXyuaw==
X-Received: by 10.28.55.139 with SMTP id e133mr8755120wma.98.1460198891065;
	Sat, 09 Apr 2016 03:48:11 -0700 (PDT)
Received: from localhost.localdomain
	(HSI-KBW-095-208-027-092.hsi5.kabel-badenwuerttemberg.de.
	[95.208.27.92]) by smtp.gmail.com with ESMTPSA id
	cb2sm17640326wjc.16.2016.04.09.03.48.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 09 Apr 2016 03:48:10 -0700 (PDT)
From: toolmmy <toolmmy@googlemail.com>
X-Google-Original-From: toolmmy <toolmmy@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  9 Apr 2016 12:48:03 +0200
Message-Id: <1460198883-15445-1-git-send-email-toolmmy@gmail.com>
X-Mailer: git-send-email 1.9.1
X-Mailman-Approved-At: Sun, 10 Apr 2016 08:40:15 -0700
Cc: toolmmy <toolmmy@gmail.com>
Subject: [meta-raspberrypi][PATCH] linux-firmware: Rework of brcmfmac43430 firmware handling
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
X-List-Received-Date: Sat, 09 Apr 2016 10:48:15 -0000

The current version of the recipe produces the following warnings while createing an image:

WARNING: The license listed Firmware-broadcom_brcm80211 was not in the licenses collected for recipe linux-firmwa
re
WARNING: [log_check] td-core-image: found a warning message in the logfile (keyword 'WARNING:'):
[log_check] WARNING: The license listed Firmware-broadcom_brcm80211 was not in the licenses collected for recipe
linux-firmware

This commit contains a rework of the brcm80211 firmware handling and deploys the firmware and the LICENSE files that fixes the warning messages.

Signed-off-by: Tom Doehring <toolmmy@gmail.com>
---
 .../linux-firmware/linux-firmware_git.bbappend       | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/recipes-kernel/linux-firmware/linux-firmware_git.bbappend b/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
index f0c9fe2..20ef05f 100644
--- a/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
+++ b/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
@@ -1,6 +1,10 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
-LIC_FILES_CHKSUM_append = "file://${WORKDIR}/LICENSE.broadcom_brcm80211;md5=8cba1397cda6386db37210439a0da3eb"
+LICENSE_append = " & Firmware-broadcom_brcm80211"
+
+LIC_FILES_CHKSUM_append = " file://${WORKDIR}/LICENSE.broadcom_brcm80211;md5=8cba1397cda6386db37210439a0da3eb"
+
+NO_GENERIC_LICENSE[Firmware-broadcom_brcm80211] = "LICENSE.broadcom_brcm80211"
 
 SRC_URI_append = " \
     file://brcmfmac43430-sdio.bin \
@@ -9,21 +13,21 @@ SRC_URI_append = " \
     "
 
 do_install_append() {
-    cp ${WORKDIR}/brcmfmac43430-sdio.* ${D}/lib/firmware/brcm
+    cp ${WORKDIR}/brcmfmac43430-sdio.* ${D}/lib/firmware/brcm/
+    cp ${WORKDIR}/LICENSE.broadcom_brcm80211 ${D}/lib/firmware/
 }
 
-PACKAGES =+ "${PN}-brcm43430"
+PACKAGES =+ "${PN}-brcm43430 ${PN}-brcm43430-license"
+
+LICENSE_${PN}-brcm43430 = "Firmware-broadcom_brcm80211"
+FILES_${PN}-brcm43430-license = "/lib/firmware/LICENSE.broadcom_brcm80211"
 FILES_${PN}-brcm43430 = " \
     /lib/firmware/brcm/brcmfmac43430-sdio.bin \
     /lib/firmware/brcm/brcmfmac43430-sdio.txt \
     "
 
-LICENSE_append = " & Firmware-broadcom_brcm80211"
-NO_GENERIC_LICENSE[Firmware-broadcom_brcm80211] = "LICENCE.broadcom_brcm80211"
-LICENSE_${PN}-brcm43430 = "LICENSE.broadcom_brcm80211"
+RDEPENDS_${PN}-brcm43430 += "${PN}-brcm43430-license"
 
 ALTERNATIVE_LINK_NAME[brcmfmac-sdio.bin] = "/lib/firmware/brcm/brcmfmac-sdio.bin"
 ALTERNATIVE_TARGET_linux-firmware-brcm43430[brcmfmac-sdio.bin] = "/lib/firmware/brcm/brcmfmac43430-sdio.bin"
 ALTERNATIVE_linux-firmware-brcm43430 = "brcmfmac-sdio.bin"
-
-RDEPENDPS_${PN}-brcm43430 += "${PN}-broadcom-license"

