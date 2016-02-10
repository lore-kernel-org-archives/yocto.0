Return-Path: <scerveau@connected-labs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C3ADE00CDF; Wed, 10 Feb 2016 01:45:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3E97E00CD0
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 01:45:15 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id p63so19751439wmp.1
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 01:45:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=connected-labs-com.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:cc:subject:date:message-id:mime-version:content-type
	:content-transfer-encoding;
	bh=VE2S90I1kR/VPWvOVeROru/KpOyjlmCpk0CF1Si0OYM=;
	b=nPEjlDeoH3KueoOY1dMOofJNULtrMhRZr2XE/o0DtLAVHdmO8fd1l3/zOwyiQDgMDq
	AuFtGOeFIaONlChMiyXas3qnwMm4y8ly0LXr1YEZwF5itOozyU5z6Zuh1X1Beo1t2r7e
	ZVAYv6H4jJNIrw4Ld1CWm8iMNBrrmPEwzlFYC3J2lJXZ8Qr0wKoB8qhQUDsNX51jFBHE
	1zsUcvCJzLu364Es+XA0B1lVkQpWFdZXFjoGb5uxcBoTbK/E90V1MrnsqzXAnAFq04Oo
	TU2YVNR/moNnGl+lt2LFGc96aMi4ar4KN3bIWzU6zvkfTp25rMSbGptN0n1mkmau5KnH
	g66g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:mime-version:content-type:content-transfer-encoding;
	bh=VE2S90I1kR/VPWvOVeROru/KpOyjlmCpk0CF1Si0OYM=;
	b=ZoatTZOibgW/NKlyPXXUXUdB76u8zAR+SXL4JxSxTY759JJWhukpnJMbUIJ2keTvyj
	ZwW2dWBg2WNw+HD7k9+rwTlEtF6iSdrOPa6bhVunoGLJLdl6BZCvvFLuAiJC4ycUVZ94
	MpN9iZU821pabucr/8wrAPAa+t5Sto2mWLG7VsCgj99tan26DKtwbqrFqVE4Me7ScDDz
	lmDELoXaXlfekq3xK8nWxkuXvJYkd5uziTk59D18RgCj8rRtUGvcv6vhC//aqgo5Z4Eq
	ypyQixgToWIhWIAAf4/CCGZ6KlbtQQdh+KAYsKqJyo3hrVE36YFgnw/UWJXOgx3O58uM
	sxcg==
X-Gm-Message-State: AG10YOQQhKX9InxJs9upOyOWVkOof4/cJx5uVkMEH+ObCbBsbVYL4ayXAGrjGZzoGsVzRg==
X-Received: by 10.194.78.230 with SMTP id e6mr8182393wjx.179.1455097514927;
	Wed, 10 Feb 2016 01:45:14 -0800 (PST)
Received: from maupiti.lan (connected-labs-gw1.ter2.neodc.mpl.cust.as8218.eu.
	[94.103.137.126])
	by smtp.gmail.com with ESMTPSA id ka7sm2127718wjb.8.2016.02.10.01.45.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 10 Feb 2016 01:45:13 -0800 (PST)
Sender: Stephane Cerveau <scerveau@connected-labs.com>
From: "=?UTF-8?q?St=C3=A9phane=20Cerveau?=" <scerveau@voxtok.com>
X-Google-Original-From: =?UTF-8?q?St=C3=A9phane=20Cerveau?= <voxtok@voxtok.com>
To: yocto@yoctoproject.org
Date: Wed, 10 Feb 2016 10:43:35 +0100
Message-Id: <1455097415-22996-1-git-send-email-voxtok@voxtok.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 10 Feb 2016 07:08:11 -0800
Cc: =?UTF-8?q?St=C3=A9phane=20Cerveau?= <voxtok@voxtok.com>
Subject: [meta-raspberrypi][PATCH] linux-raspberry.inc: add initramfs support
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
X-List-Received-Date: Wed, 10 Feb 2016 09:45:18 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

in do_rpiboot_mkimage add rpi bootload trailer
for initramfs image.

Signed-off-by: Stéphane Cerveau <voxtok@voxtok.com>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 70e8bfe..634bd5e 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -61,6 +61,9 @@ do_rpiboot_mkimage() {
         if test -n "${KERNEL_DEVICETREE}"; then
             # Add RPi bootloader trailer to kernel image to enable DeviceTree support
             ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
+            if [ ! -z "${INITRAMFS_IMAGE}" ]; then
+				 ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok ${KERNEL_OUTPUT}.initramfs ${KERNEL_OUTPUT}.initramfs
+            fi
         fi
     fi
 }
-- 
2.1.4


