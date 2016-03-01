Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD987E00C2D; Tue,  1 Mar 2016 05:40:10 -0800 (PST)
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
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9183E00C28
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 05:39:46 -0800 (PST)
Received: by mail-pf0-f178.google.com with SMTP id 124so51410040pfg.0
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 05:39:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=MFi7xMmoW7G3bGbtGfmr+fzK+nv9AzS1OnKBKuXD12E=;
	b=NE0plghh6uImX+XeXfJ9w3+6eGj3x/R9pprYXMZ2VJGvmfiR2yGAZowc9DOwES54aW
	nPugTbTtBl/D+xPiX4su3BwbMTkgK6WAApEb3HDuSce2jejLX/kU/uIjFkbPIgUZyn12
	Cm8Qsk89UKIw4Oab2QnfwFcVTgE62v8jD6CQH94ZzUkK0vx3bCoagS4nO1GMS/nQ8xW8
	dK1DIT9o+tfw/3meKSOA56vxFeki4weGPjVIllpwQH/yWFNQ8mSuIm8nWfAKJ6bPbgw4
	hASAEEJJEpLX9c0psz5QZUPGuOaTDozZdyinjrAkebZPx3xmt5q9pLCI5N/U+3WRDPyr
	Y4FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=MFi7xMmoW7G3bGbtGfmr+fzK+nv9AzS1OnKBKuXD12E=;
	b=W2AWuB+BjIrhuddpfg1X8OE4fWhncHn3gGReVJOIfz3VdHCduyLuJfn1EG2Bp+y+uu
	SaZpZ2e/J5Zy93jVQNA9j9IYU1zq/yVM9n8UBrfCN0KooyWCRhAIKc1mOUDJHzE0GEKf
	2iXDYfHGIULdHieYltpXkygtuCiU0Pru0PXMwfppGtAiePtZiKV2O/lNXvIksZ0Kuv1/
	OiKx4xLpPjLcGc0ocDDDDIxWerfh4Ve1kW5tYhijju7uJB3g9soRp5wWKWrKToPU8d8m
	kIK9uCyRjW4tVb5EXG+mpz0qRLY6aPmvV6hwK+0IIPMMo+zLzYwcIBGAytbm7lr/TkGq
	kjgA==
X-Gm-Message-State: AD7BkJKCAEiY6FI/2dJGE78NSahiziQbgAwP39JwrMKhoKwzzbDHkqrgrR51GcmJj9LC4A==
X-Received: by 10.98.33.211 with SMTP id o80mr28240089pfj.158.1456839586343;
	Tue, 01 Mar 2016 05:39:46 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id 6sm45778946pfo.58.2016.03.01.05.39.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Mar 2016 05:39:45 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Mar 2016 00:40:03 +1100
Message-Id: <1456839603-12600-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.7.1
Subject: [meta-raspberrypi][PATCH] u-boot-rpi: update path to mkknlimg
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
X-List-Received-Date: Tue, 01 Mar 2016 13:40:10 -0000

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-bsp/u-boot/u-boot_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
index 8420eef..85b556f 100644
--- a/recipes-bsp/u-boot/u-boot_%.bbappend
+++ b/recipes-bsp/u-boot/u-boot_%.bbappend
@@ -8,7 +8,7 @@ do_compile_append_raspberrypi2() {
 
 do_deploy_append_raspberrypi2() {
     # Add RPi bootloader trailer to U-Boot image to enable Device Tree support
-    ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok ${DEPLOYDIR}/${UBOOT_IMAGE} ${DEPLOYDIR}/${UBOOT_IMAGE}
+    ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok ${DEPLOYDIR}/${UBOOT_IMAGE} ${DEPLOYDIR}/${UBOOT_IMAGE}
 }
 
 UBOOT_ENV_raspberrypi2 = "boot"
-- 
2.7.1


