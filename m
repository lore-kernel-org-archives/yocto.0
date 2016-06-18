Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C03CE00CD0; Sat, 18 Jun 2016 04:06:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 385D5E00DF7
	for <yocto@yoctoproject.org>; Sat, 18 Jun 2016 04:06:51 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id r201so3303228wme.0
	for <yocto@yoctoproject.org>; Sat, 18 Jun 2016 04:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=7l5ruajjUW7vXijKN7Nu5VF466JHKiD7fdRJ6f0I6t8=;
	b=wSEr5fpynKcJFa9xdgP3JVspQsaZphnn2ZGGFKeweygvhHwHriTh4r7SpX3EjnWTUP
	IERL/bArU7E0IM69zZCF6D1jzoH+izwWvBygtiXIvI6gyN7urF6MWkbxOgriZC2qhs71
	l09AZFv3OPQW9KhI6hCyIIRg5KUI7h5am247NXo2jEYtTfUO7icpMBBXtPd21DkOEO2x
	9lQjzHV2jHwh26h8vQk52pKmP2uu1Lz/V542SWFvbDPXUa5thKFZNcyqEQ2eCGZSnwDF
	ww61RQCONAD8Kl3Zdhhhjf6QEzQH4roa/gKHejeqj6Eoh1ZnZsUf3f2XyAQ/SXS1MMeW
	azPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=7l5ruajjUW7vXijKN7Nu5VF466JHKiD7fdRJ6f0I6t8=;
	b=PxaKVhVeCFPZuhEfvBl5vj7nxhnLc+fqmrp/b2GYL8XX66bf/aXTXqfCYZgWDCCuDF
	ohtIUGLB6EGsA7bIKMPs6pT5h1C+RAtrH2bWyFFUsgCZ/Tfy+GmEwm9++2sQl44WWZM3
	i+ds+SyQhkkM3WntcnuAa1yrlQ+OV4wOSWVsiJjWPI1SOuTpJRehCu8Yxen41MZAW3tw
	X0AfpvRob/Dn+DvtHFge3KyZwd8IxSVzl/dII6rnLsm9Xo1ln+r0Aj5EtgjXNm4r0m09
	gm7Lt2c4KGV0m6+ySAU5/5MJNY5ze0IL1yjdBk5lD/9nwIpO+PQbxrjBbbQcKnKg/sqE
	HdyA==
X-Gm-Message-State: ALyK8tIIgq3Y5MvmgJA66kbA8nJx96JcdFVVdQCAWQGOYz1bvx8O4TfgjiB3sFi+87l3cg==
X-Received: by 10.194.7.70 with SMTP id h6mr6267209wja.38.1466248010360;
	Sat, 18 Jun 2016 04:06:50 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id
	u71sm3201406wmu.13.2016.06.18.04.06.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 18 Jun 2016 04:06:49 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Sat, 18 Jun 2016 12:07:03 +0100
Message-Id: <1466248026-4838-2-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1466248026-4838-1-git-send-email-paul@paulbarker.me.uk>
References: <1466248026-4838-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH V3 1/4] linux-raspberrypi: rpi-mkimage is no longer needed
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
X-List-Received-Date: Sat, 18 Jun 2016 11:06:55 -0000

Recent versions of the Raspberry Pi firmware can directly handle kernel images
which use device tree. The modifications made by rpi-mkimage are no longer
needed.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 20 --------------------
 1 file changed, 20 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 6133b02..6184402 100644
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
@@ -62,17 +55,6 @@ do_deploy_append() {
     echo "${CMDLINE}${PITFT_PARAMS}" > ${DEPLOYDIR}/bcm2835-bootfiles/cmdline.txt
 }
 
-do_rpiboot_mkimage() {
-    if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
-        if test -n "${KERNEL_DEVICETREE}"; then
-            # Add RPi bootloader trailer to kernel image to enable DeviceTree support
-            for type in ${KERNEL_IMAGETYPES} ; do
-                ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT_DIR}/$type ${KERNEL_OUTPUT_DIR}/$type
-            done
-        fi
-    fi
-}
-
 do_bundle_initramfs_append() {
     if [ ! -z "${INITRAMFS_IMAGE}" -a x"${INITRAMFS_IMAGE_BUNDLE}" = x1 ]; then
         if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
@@ -85,5 +67,3 @@ do_bundle_initramfs_append() {
         fi
     fi
 }
-
-addtask rpiboot_mkimage before do_install after do_compile
-- 
2.1.4


