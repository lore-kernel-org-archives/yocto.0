Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 158F1E00EB0; Sun, 29 May 2016 08:59:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDC95E00CC8
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 08:59:09 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id a136so15262399wme.0
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 08:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=ilBrwRxhNHsBLHiQ8x2xN77T7zr2U2CbPRElI1jhlxU=;
	b=kvs1LE9M2azTUUmgF6Z9X0oV+QPw/5hLwJjU8A7vLoydPQqkabmVhT9ngzsV/VZhfs
	ICst/Sj62b0M2lyMrE9G7gFe9d0Id+mX12nkNDpymDM+pQyL9OkwyrUjKFs0Sjy8+5iJ
	iCZ1SXzaKHYISm3nnN/kY4Ct4WqVdwM9+bTEKMtdIVR9bPIFitzzJx9/OQSJfjpMdtNq
	yXxQlnwQLT95S+98sFTou2t+Q2M9kV5iThH71/sf/8PDtLJIHsOEeHk6ureKMzxs3RAI
	6yHb5vW9nUU38wJz3+1/GzW3x6ke4FWDU/LUAx/lsx+EGItUeECIFsXyFT+2C6NuZsss
	1/BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=ilBrwRxhNHsBLHiQ8x2xN77T7zr2U2CbPRElI1jhlxU=;
	b=GiKrzCSd+OXHAeHwxx4xzH+lp73OliUsuSnyLFD0doZQzKgNghwiymIyPjfSjkJXMo
	UVpvaqOHVA2iy33wTsqkMeik42DJ8NPUAzozcI9vu65LwaiWvjYjIAHE1PbQqNEO+262
	L3A30/tGp1FEVM0eCjcUANfiJjP8bq7XwTkbTbS4hzTDbA2TXhAmtf5k98MiNu9KRoPk
	USSSzwxQIihO7ezL/rm/C+1/DPlB1Hpkf4H6BAePYBDxakbu2tU5UzQ+OM8Ju6eyb3l0
	5F/e2cvwUuN6hy91XndXsvJeAr+2SP1zul/cK6jyvKIoQrw7FfsI9pzBLD+TsN51f2ql
	50uQ==
X-Gm-Message-State: ALyK8tK02fQDqtCBaxn4uLzrIcYVsC0tEjOoWu1nAFZ7nzR7BTi66VIBHI2Bjqdmjez2Tg==
X-Received: by 10.28.167.9 with SMTP id q9mr7271260wme.7.1464537548468;
	Sun, 29 May 2016 08:59:08 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id
	kq9sm29834872wjc.26.2016.05.29.08.59.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 29 May 2016 08:59:07 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Sun, 29 May 2016 16:59:09 +0100
Message-Id: <1464537553-24915-3-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
References: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH 2/6] linux-raspberrypi: rpi-mkimage is no longer needed
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
X-List-Received-Date: Sun, 29 May 2016 15:59:11 -0000

Recent versions of the Raspberry Pi firmware can directly handle kernel images
which use device tree. The modifications made by rpi-mkimage are no longer
needed.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index dd477cd..c6bb8e8 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -34,13 +34,6 @@ python __anonymous () {
     kerneltype = d.getVar('KERNEL_IMAGETYPE', True)
     kerneldt = get_dts(d, d.getVar('LINUX_VERSION', True))
     d.setVar("KERNEL_DEVICETREE", kerneldt)
-
-    # Add dependency to 'rpi-mkimage-native' package only if RPi bootloader is used with DT-enable kernel
-    if kerneldt:
-        if kerneltype != 'uImage' and len(kerneldt.strip()) > 1:
-            depends = d.getVar("DEPENDS", True)
-            depends = "%s rpi-mkimage-native" % depends
-            d.setVar("DEPENDS", depends)
 }
 
 do_kernel_configme_prepend() {
@@ -61,15 +54,6 @@ do_deploy_append() {
     echo "${CMDLINE}${PITFT_PARAMS}" > ${DEPLOYDIR}/bcm2835-bootfiles/cmdline.txt
 }
 
-do_rpiboot_mkimage() {
-    if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
-        if test -n "${KERNEL_DEVICETREE}"; then
-            # Add RPi bootloader trailer to kernel image to enable DeviceTree support
-            ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
-        fi
-    fi
-}
-
 do_bundle_initramfs_append() {
     if [ ! -z "${INITRAMFS_IMAGE}" -a x"${INITRAMFS_IMAGE_BUNDLE}" = x1 ]; then
         if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
@@ -80,5 +64,3 @@ do_bundle_initramfs_append() {
         fi
     fi
 }
-
-addtask rpiboot_mkimage before do_install after do_compile
-- 
2.1.4


