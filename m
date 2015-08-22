Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F098E00B30; Sat, 22 Aug 2015 01:28:32 -0700 (PDT)
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
	*      [209.85.192.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EAC6E00A99
	for <yocto@yoctoproject.org>; Sat, 22 Aug 2015 01:28:28 -0700 (PDT)
Received: by pdbmi9 with SMTP id mi9so34591778pdb.3
	for <yocto@yoctoproject.org>; Sat, 22 Aug 2015 01:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=cXH6ZdNhUwlRuVkL4/Afj1LMHf+NkzH6/sGipt/cf74=;
	b=KtMqJpo8DtUOydRsOadf2rea1tXTCDmcejZcMa3I9OYfNIgRO7s66aDNpND0Lo6sYs
	0b6fj1GAOHE3qNjiryzdhfoWCWECsm6/PDl5dRLpyEPFrbCxXz2ijPonlRYYKUsx/uqz
	7QStP+j4nVa/FkO6gegZrKmXHPpoOjlAsfhvNdvkNOF3Umr1EILVpG0yuy6X+Z/C5SY/
	IdgJ14hhzOijEywY4pi4FIfyyPgrU9zvg6SLxd+CdrbHVCwJaLwEAM6lbpPK+Z4H9vyL
	GKHxYm4zpjCkHcgK5GSw3hIB2C9Y5Sy8CLXTlivtenogem2JyJ8Y4WISyiFx+XX3VxP/
	8m3g==
X-Received: by 10.70.94.194 with SMTP id de2mr26046024pdb.8.1440232108269;
	Sat, 22 Aug 2015 01:28:28 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	v9sm10257561pdn.69.2015.08.22.01.28.26
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 22 Aug 2015 01:28:27 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 22 Aug 2015 18:25:35 +1000
Message-Id: <1440231935-11042-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.5.0
Subject: [meta-raspberrypi][PATCH v2] linux-raspberrypi.inc: use SRCPV instead of SRCREV for PV
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
X-List-Received-Date: Sat, 22 Aug 2015 08:28:32 -0000

SRCPV is intended to be used by PV. Using SRCREV for PV is incorrect.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index d60a3e9..ef98421 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -12,7 +12,8 @@ SRC_URI += " \
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-PV = "${LINUX_VERSION}+git${SRCREV}"
+PV = "${LINUX_VERSION}+git${SRCPV}"
+PR = "r1"
 
 # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
 KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
-- 
2.5.0


