Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38100E00D93; Wed, 20 Jul 2016 02:49:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4FEFE00D82
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 02:49:11 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id o80so60352345wme.1
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 02:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=YZ9l3RCif0ZLKzc6IKphBbE2ruWodO8ukkuoP0AKxQE=;
	b=U8cIvuXjvzXb2z4IA5jMIXgfyqw7Kzb5XeNW9cpMQ5cDDpZk0kObupgiMiIDrW4LpL
	pm0VFh5mO4mKK5l1xvjhbFoP+pSTFsHpUikLp3pKGrC6NPnj2qyUZT199Op4Lcb/Ww8g
	RpjIgT111puMHs04/kH2zH5eheF8jt4shYhvSWz43JVLk1f2RHznD9fh4IVjqIsKAZZp
	5vjCBgaA4s6TPIaY+7uik1HjS6LX1vh1Y64mcCKoH4OT2zLdoGF5qqjT9IUNgkhAPORn
	rf7WdjKPMQj4SFVRZFuzNsKebA+Xngnehx74dMdf3g9ftIvTUiab+IdOts4jDlmrn/mD
	MPvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=YZ9l3RCif0ZLKzc6IKphBbE2ruWodO8ukkuoP0AKxQE=;
	b=LjYvJIqN/zQoTfk0p2jQRZdfhUti9N1SanUS1HiUXiOiA6BWtHF+b1OHjtg1S/BABR
	r+YuTeBoKbr8+MwDPB15O5yNI0xZ7jQ4AZ5uAsPP6QK2BWCtOT+yyx/tsFwv3qhEapLA
	vpPclndqBJfP4DoBw/98ECfc2qawV17LrwLWkpvRRYZf6BDF/iYipi2EK65h3Logys3D
	59pCjJq0MqmpCj6YgXV2T2Sl9puy0h2JTnJ6XV2tDxXjLADuAvU70MuK2ZEIQ8GNeCqR
	R/1ZT0oWIfluGkNb/bh8Vedg4Q20M87f7G21BpdYAlmozjMcr+VDqfjif/TiZu2UcD+J
	4jUA==
X-Gm-Message-State: ALyK8tJs074yPe/Vl0RgFuFtBIoDB1o7qye2fM4/HAIvhr2Us6dN48YOXCDspc0lAqHVlQ==
X-Received: by 10.28.104.137 with SMTP id d131mr10792835wmc.7.1469008150647;
	Wed, 20 Jul 2016 02:49:10 -0700 (PDT)
Received: from piotr-Elfin.elnet (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	q139sm30584885wmb.18.2016.07.20.02.49.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 20 Jul 2016 02:49:10 -0700 (PDT)
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
To: yocto@yoctoproject.org
Date: Wed, 20 Jul 2016 11:49:05 +0200
Message-Id: <1469008145-8492-1-git-send-email-piotr.lewicki@elfin.de>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi: remove unbuildable task
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
X-List-Received-Date: Wed, 20 Jul 2016 09:49:15 -0000

Resending with fixed Subject.

This patch removes append from do_bundle_initramfs task in linux-raspberrypi which made building kernel fail with error:
| /home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/work/raspberrypi3-poky-linux-gnueabi/linux-raspberrypi/1_4.4.13+gitAUTOINC+680be5e27a-r0/temp/run.do_bundle_initramfs.19144: 152: /home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/work/raspberrypi3-poky-linux-gnueabi/linux-raspberrypi/1_4.4.13+gitAUTOINC+680be5e27a-r0/temp/run.do_bundle_initramfs.19144: /home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/sysroots/x86_64-linux/usr/bin/mkknlimg: not found
| WARNING: exit code 127 from a shell command.
| ERROR: Function failed: do_bundle_initramfs (log file is located at /home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/work/raspberrypi3-poky-linux-gnueabi/linux-raspberrypi/1_4.4.13+gitAUTOINC+680be5e27a-r0/temp/log.do_bundle_initramfs.19144)

Tested with kernel 4.4.13.

Unfortunately I didn't test it with older kernels (3.18 and 4.1) but since we don't have
raspberrypi/tools (a.k.a. rpi-mkimage) anymore- I assume that this task would also fail.


---
 recipes-kernel/linux/linux-raspberrypi.inc | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 6184402..98229d9 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -54,16 +54,3 @@ do_deploy_append() {
     fi
     echo "${CMDLINE}${PITFT_PARAMS}" > ${DEPLOYDIR}/bcm2835-bootfiles/cmdline.txt
 }
-
-do_bundle_initramfs_append() {
-    if [ ! -z "${INITRAMFS_IMAGE}" -a x"${INITRAMFS_IMAGE_BUNDLE}" = x1 ]; then
-        if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
-            if test -n "${KERNEL_DEVICETREE}"; then
-                # Add RPi bootloader trailer to kernel image to enable DeviceTree support
-                for type in ${KERNEL_IMAGETYPES} ; do
-                    ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT_DIR}/$type.initramfs ${KERNEL_OUTPUT_DIR}/$type.initramfs
-                done
-            fi
-        fi
-    fi
-}
-- 
2.7.4


