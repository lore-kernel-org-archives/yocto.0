Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 901F6E00A28; Fri, 21 Aug 2015 07:02:06 -0700 (PDT)
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
	*      [209.85.220.50 listed in list.dnswl.org]
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58C39E009D7
	for <yocto@yoctoproject.org>; Fri, 21 Aug 2015 07:02:01 -0700 (PDT)
Received: by padfo6 with SMTP id fo6so7961556pad.1
	for <yocto@yoctoproject.org>; Fri, 21 Aug 2015 07:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=yV058IYHZScSTH1/UZ1aQiTpIcZVY9G/Gj7tdUxEu34=;
	b=W21Oqhl6oJOP4YVbRiS17WxrWd1kqi4suF7OxcQ/IPoYJ2cgrHlLAxq/zyu3t14Ufl
	zDwvKR6sGRUTQLH9rJqHEDY9uCAgllkFet6dhhM8VlD76G6dLLl7UPaWUzYUWuNylA72
	qaSAH8uLE0vj5/xP8O74tbyw95JSEgD8uZJCzm7iPHRXG58Hp0j46DwU55Yepq32bbyP
	ri2Gaq0C0tq/wWU0fgHcrqZzwpcnLkQT29Cd1lec6+2vRMP2kiVBOacQSJALoepgwu1U
	g2bord8vShtTHlPQVBMDwXfvu1QXu67/GKZlexjTlEuO9g5MH+fGso0HRZVqewAyOurt
	cMIA==
X-Received: by 10.68.95.68 with SMTP id di4mr17701549pbb.36.1440165721523;
	Fri, 21 Aug 2015 07:02:01 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id f5sm8020133pas.23.2015.08.21.07.01.59
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Aug 2015 07:01:59 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 22 Aug 2015 00:01:44 +1000
Message-Id: <1440165704-5971-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.5.0
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi.inc: use SRCPV instead of SRCREV for PV
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
X-List-Received-Date: Fri, 21 Aug 2015 14:02:06 -0000

SRCPV is intended to be used by PV. Using SRCREV for PV is incorrect.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index d60a3e9..2263822 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -12,7 +12,7 @@ SRC_URI += " \
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-PV = "${LINUX_VERSION}+git${SRCREV}"
+PV = "${LINUX_VERSION}+git${SRCPV}"
 
 # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
 KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
-- 
2.5.0


