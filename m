Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B308AE00C19; Sat, 15 Oct 2016 19:28:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B648E00C10
	for <yocto@yoctoproject.org>; Sat, 15 Oct 2016 19:28:17 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id 128so10125589pfz.1
	for <yocto@yoctoproject.org>; Sat, 15 Oct 2016 19:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=G/ibocDNWI6P0Mb9TZ60+lSbcK2BZ0Co2FEqSAuX2U8=;
	b=oRfi6sswlPCXyVKLABmq4TT5d/atlchHQxII76nL6HO4LTXer8PWty4OQJDFRLxluU
	0ohnkUDn081BHAcK/uLkux+Wx7xgbUXszN5O3I0zw/2tBSL5AWrjUKinFg6fYD4+RLLV
	hZ57G0axP5prUvHsMUp/yjeyvU8/mLOL0EBHUlUvoMeSXSzIgX5FZFgmtjuuJXH+bB4L
	jkuQJcV3ec0k473kVG7oXhOQIED8OkCgFl6Of2Dz7mf+xx95ZEs+d94AadjRp23nQJto
	yOceaolejGuIz3bIwbSfXt+gjVr+N1kLTj2bRtFsLfq0QeQ/T0xtqglqqdvsyXZlJmAa
	7M0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=G/ibocDNWI6P0Mb9TZ60+lSbcK2BZ0Co2FEqSAuX2U8=;
	b=gl+ZpO+wmIIgWOoVDvV26jk6mMLkVuQmyZWna1rSHaAzEmM9yFWNkVJcRKoxNTpMJm
	lj2YsjD33RXevMpm2koq7ClxO01QSlsS2jBlpoU3+ysZXXgU3hEAMwlMRXcBzZj+JF8Y
	fMEGJTJee+llkfwAdpqLhrnHrwBg2//G27Uj2UCiOiDwm454VgPRD+RuZo1Dfqqh+wXk
	x3fJNcIFlSqE03XBw4vPZ8L9mjpEvkzZb118tsN9yOUAoIQq3XTkAkiQyI+rKDGjbus/
	6YmCYg73bTdVjPX+2L9kl3GFYVnJrOZOEZWgOBQ3ZRl5Ohi94jZxLK50kvZmCDh6BYFB
	LdQQ==
X-Gm-Message-State: AA6/9RnCde78wFuj6aOkohLYrfD28aEvaY8rn52zqXkyuNvNHHAXHjvFmQ/Dm/Pce6wOHw==
X-Received: by 10.99.144.74 with SMTP id a71mr23931841pge.101.1476584897262;
	Sat, 15 Oct 2016 19:28:17 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	tj8sm37831927pab.16.2016.10.15.19.28.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 15 Oct 2016 19:28:16 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Oct 2016 13:27:39 +1100
Message-Id: <20161016022739.26984-1-net147@gmail.com>
X-Mailer: git-send-email 2.10.0
Subject: [meta-raspberrypi][PATCH] linux-firmware: Fix "No generic license file exists" warning
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
X-List-Received-Date: Sun, 16 Oct 2016 02:28:21 -0000

The NO_GENERIC_LICENSE map value for Firmware-broadcom_brcm80211 needs
to have the full path to LICENSE.broadcom_brcm80211 from the URL
instead of just the filename.

Fixes the following warning building the linux-firmware recipe:
WARNING: linux-firmware-1_0.0+gitAUTOINC+42ad5367dd-r0 do_populate_lic: linux-firmware: No generic license file exists for: Firmware-broadcom_brcm80211 in any provider

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-kernel/linux-firmware/linux-firmware_git.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux-firmware/linux-firmware_git.bbappend b/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
index 20ef05f..b4408cb 100644
--- a/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
+++ b/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
@@ -4,7 +4,7 @@ LICENSE_append = " & Firmware-broadcom_brcm80211"
 
 LIC_FILES_CHKSUM_append = " file://${WORKDIR}/LICENSE.broadcom_brcm80211;md5=8cba1397cda6386db37210439a0da3eb"
 
-NO_GENERIC_LICENSE[Firmware-broadcom_brcm80211] = "LICENSE.broadcom_brcm80211"
+NO_GENERIC_LICENSE[Firmware-broadcom_brcm80211] = "${WORKDIR}/LICENSE.broadcom_brcm80211"
 
 SRC_URI_append = " \
     file://brcmfmac43430-sdio.bin \
-- 
2.10.0


