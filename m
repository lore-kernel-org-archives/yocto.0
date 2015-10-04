Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66F7AE00BE1; Sat,  3 Oct 2015 19:16:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39FB2E00AB0
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 19:16:32 -0700 (PDT)
Received: by padhy16 with SMTP id hy16so1382960pad.1
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 19:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=euqFbLtqYmpHTzKBtDPN7oGkTiRCuDN6x7yJ7J4J2EM=;
	b=geMFxvitar1pnb0CCb872Q/e1seHySmLrNRCrvzNGOiSLzE97kchBo11rSdLh96avR
	1gVuzkF1IMwapuf+orUi2EL6REnmEr9YWx4sIjaHUpc9lDBFczPvIH8sHr/2fmdhO+iC
	6ZwXvrwoQiDaYHub2G0kfEqP9YUbtQChRkY6CPJdkiMuLIe2CaxvHxNUEtRtwmFqymOL
	NU5vzcevl9qKkyRQwIiayaYurRLbXcKlv1neUsLMcXmovY9LTE9GD+oEYMZXH2butYwQ
	tyO5HArwm7fLlX4MNCwCohTmA0IJ1pt8bd4er+ra2Oc1jwxvv94SR6OyIHV/KOXnN9FE
	lESg==
X-Received: by 10.68.181.34 with SMTP id dt2mr29723956pbc.7.1443924991970;
	Sat, 03 Oct 2015 19:16:31 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	sj6sm19752387pbc.7.2015.10.03.19.16.29
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 03 Oct 2015 19:16:30 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  4 Oct 2015 13:15:33 +1100
Message-Id: <1443924933-29412-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.6.0
Subject: [meta-raspberrypi][PATCH v3] linux-raspberrypi.inc: use SRCPV instead of SRCREV for PV
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
X-List-Received-Date: Sun, 04 Oct 2015 02:16:36 -0000

SRCPV is intended to be used by PV. Using SRCREV for PV is incorrect.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index d60a3e9..70e8bfe 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -12,7 +12,8 @@ SRC_URI += " \
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-PV = "${LINUX_VERSION}+git${SRCREV}"
+PE = "1"
+PV = "${LINUX_VERSION}+git${SRCPV}"
 
 # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
 KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
-- 
2.6.0


