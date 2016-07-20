Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AF71E00D93; Wed, 20 Jul 2016 02:31:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61FE8E00D92
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 02:31:49 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id f65so167789933wmi.0
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 02:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=AvnA9XZggg1bIqygZr4+wJ/8wJDMVLW83+mA7ly11z0=;
	b=H9nntLBYah/CsXwhFdyY9rD2NBWhQziSxEzTbuentINTDX9JbD+B8PQSh0VvqFGF6H
	4B2R3LiuWH3OMH3iBibVzpJxqcckLze5UlAGaryIuf1JuaIR2ifpOaau+KO1gNHQGbPj
	UvnGLIbuMuipnozzJ++lus7liIkeyBbkAaVtNa30FmIjQYx98Inx5DPA7OnodSernswB
	VDT/lDwDqFNVonZF0ZDqjUCgIGkqqThUHlLOCiUrew98YGpgDEiReDJo/VTZJDk8htzT
	G1cZgwSwb05jKYi/E0t0h5QXbpqCLixCqBuSH12C7Lwqvstae/zopdXUvCv4hhApskoU
	5Aew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=AvnA9XZggg1bIqygZr4+wJ/8wJDMVLW83+mA7ly11z0=;
	b=gEUnapqC6y2BrM+k2LmThkdQB8+pbOK7o0yu2tewBjUV1OcauGdWGHLJVj2uAzRwIO
	vpylC4ZVwcXm7E0qfacxcOIPYdUtfR3tNaIXMXeb8sI5fOgOa32ZAbYgM+6ftR0kgmYY
	qI3+NOx4Mxl1LM1qYine7zK+TPZiSRlXd3pydjh5rtL0c34Y8Dk2mEqeQ0haJTeatmf4
	OI3v2Dnlh3SIjcvaBx1xtVhr/bU96d3Pf0UendS2lueYLIuz5h70mSsSdPtuvC6ELbUV
	y6A7prG6d7i/qeVEEhNxYyCDJJoqEaKte0B3RA4BpJLbH8VHz0qrEhNp+TMczwtlA0DG
	weag==
X-Gm-Message-State: ALyK8tKICX1NMfWNF0Wz2olCgBOfAQcfme5xUJbAL+kbG17mH4/7hck8MpiENkg0Ck27sA==
X-Received: by 10.194.144.82 with SMTP id sk18mr307493wjb.176.1469007107966;
	Wed, 20 Jul 2016 02:31:47 -0700 (PDT)
Received: from localhost.localdomain (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	v189sm30409313wmv.12.2016.07.20.02.31.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 20 Jul 2016 02:31:47 -0700 (PDT)
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
To: yocto@yoctoproject.org
Date: Wed, 20 Jul 2016 11:31:15 +0200
Message-Id: <1469007075-4945-2-git-send-email-piotr.lewicki@elfin.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1469007075-4945-1-git-send-email-piotr.lewicki@elfin.de>
References: <1469007075-4945-1-git-send-email-piotr.lewicki@elfin.de>
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
X-List-Received-Date: Wed, 20 Jul 2016 09:31:50 -0000

Signed-off-by: piotr.lewicki <piotr.lewicki@elfin.de>
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


