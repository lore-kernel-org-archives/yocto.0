Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F316E00DF3; Fri,  3 Jun 2016 12:58:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2BE1E00DE8
	for <yocto@yoctoproject.org>; Fri,  3 Jun 2016 12:58:50 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id e3so1671315wme.2
	for <yocto@yoctoproject.org>; Fri, 03 Jun 2016 12:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=QswSOlfvJGTj/SlgH2Xq60ept95T1jIlMkIMxg59hDA=;
	b=R1Iw3KD75lt66IjGTTFzA6hpLar8f+3W3L9vtcyWW4b1r0YHytpCjeud0gEQgZyhcM
	aebRIAMiO62r0Dc84xIaoI/W8XYN6oh+jETBjYHQhv9pVqo+3oUBA8QloUrgOegjEUcv
	4WxQj7nN7iYHmOtqHCI66ct2k2zUylov8lSg+ukjzEWnF4BuADoISh4mzidUs66Dob8E
	2LZ+Cv4yMM9v4QOmq2Rcmnzz1dt4j/XkDAzP3rQ6sIXvcCPRq0gnuSUGaVwOZju95B3S
	ZLSLNNVKWDLSwVgZ0QgO3Sfm42k3FeM62bgGeK36JNAJ27hmsXMtMQTfiVG0JT6YMQh1
	8sUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=QswSOlfvJGTj/SlgH2Xq60ept95T1jIlMkIMxg59hDA=;
	b=G/jcjQ5X1j0/fKwu0A0ZEQYt0uXHiTSNVhavHxhkoSBn+UVGn99n1SkBcgVpIedymx
	jlkIr2HIsMMs0gKv54qqAA3Fkl6iJYs56l5SqysMsHze07TjctaPmOjN9C84t1BSixf1
	5LrFZsUECFAr8/NbWnDFzpQFRJdh3F2v8HURbWVMPknh8KoqGrekjl81zNz1T9AZh5Bt
	H/ZqUYvf1tdCAxxfjwogxkHixqCP8D6CEn6mAeDfdm5WW7081Bqk2N7DBixgivRGAo6H
	6cgtxhdErMcy1YojFHLPr7p+mWem6R4cv4Jp8ate8cpANK+zY6gfjrMA2yykklFheWN0
	9u+Q==
X-Gm-Message-State: ALyK8tI6gzr3Q+sDl5xZVLrUjLRqIb6uHWWq21uwpSoSNuY0usn7vCgRBwdU4iCX43wfgw==
X-Received: by 10.28.45.9 with SMTP id t9mr1021639wmt.89.1464983929541;
	Fri, 03 Jun 2016 12:58:49 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id v5sm7219500wjv.36.2016.06.03.12.58.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 03 Jun 2016 12:58:48 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Fri,  3 Jun 2016 20:58:57 +0100
Message-Id: <1464983940-32210-2-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1464983940-32210-1-git-send-email-paul@paulbarker.me.uk>
References: <1464983940-32210-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH V2 1/4] linux-raspberrypi: rpi-mkimage is no longer needed
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
X-List-Received-Date: Fri, 03 Jun 2016 19:58:57 -0000

Recent versions of the Raspberry Pi firmware can directly handle kernel images
which use device tree. The modifications made by rpi-mkimage are no longer
needed.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 4799c74..ddf4785 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -35,13 +35,6 @@ python __anonymous () {
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
@@ -62,15 +55,6 @@ do_deploy_append() {
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
@@ -81,5 +65,3 @@ do_bundle_initramfs_append() {
         fi
     fi
 }
-
-addtask rpiboot_mkimage before do_install after do_compile
-- 
2.1.4


