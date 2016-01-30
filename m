Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CA6AE00B44; Sat, 30 Jan 2016 09:05:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DB3FE0082F
	for <yocto@yoctoproject.org>; Sat, 30 Jan 2016 09:05:55 -0800 (PST)
Received: by mail-pa0-f53.google.com with SMTP id uo6so59046692pac.1
	for <yocto@yoctoproject.org>; Sat, 30 Jan 2016 09:05:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=woK+F6xxjn6mEk+YseirkK+U4MKYUOwLpR1LONOpIdo=;
	b=YbGbIA+h7d9/EpC4LcPCiGtsTI388bM6Fash3GgcDUE+UJXw+8U9i1fI/cichtOwta
	DMMeBMV54xezbYG7/T1PGerd0dB4yMwai9z3WsJKedBBIFUgXPzcrbHSd/rB3eChWmnG
	oheErl4S0K5EcaqiVMs20HYHOO4lLhxW5kCCD14ywVKOG+ORUa2Im+8TnKp3Ms+8D5im
	8u8FIG20XKCKYc0fEg8xUCkyXuNSG7liTwsBqp7j9iQdZMzpk7kh1gBQ1hwUDvEmJnGJ
	eDvVKX+R/mcBMSekmBqX0LhkpK9QPtVaBlnJm/0/qhQQkKv8OxqN1y0FwWeXnLV1+9FB
	kilg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=woK+F6xxjn6mEk+YseirkK+U4MKYUOwLpR1LONOpIdo=;
	b=PPWgTNraogh3EgScy5/Xkvfn6w6rf801xYaYassqS1i0U/3p8XiwZhEvDKVJ4Y9T5t
	iGxmPbIdqnTDIeq2SKIZ75am8C77hsg+C87uKa0JYq2jc4N1U7obKIj8Ezyw/FdoA5hb
	NUvwb6zMEfa0kjlGFNDmZ2ch2Nsvr2ph5CpYLbBk90sVAKst0cnQXCYdO0Nwzickb7/o
	/+lo9U5/8+zgkzZPxgGUi/loq8QUiU8FfjNv/du0l++/IWf8HR+ntNUKjzUd3xLISFbu
	BRanC1X6Fr+YO9OAOy1NLPqXZmiP10VAK8ZoMl/YO19FQZcO2+KZGeDbG3qPh4D9IDzz
	pGlA==
X-Gm-Message-State: AG10YOQiLgkBRIhn4ycTT3JlUaE+j67dwICdqCJScDLBi/ASJ3ukYtHiCRtVrrCfjf6IvQ==
X-Received: by 10.66.141.79 with SMTP id rm15mr23512266pab.77.1454173555572;
	Sat, 30 Jan 2016 09:05:55 -0800 (PST)
Received: from haswell.localdomain (c-73-252-206-77.hsd1.ca.comcast.net.
	[73.252.206.77]) by smtp.gmail.com with ESMTPSA id
	s19sm31615643pfs.62.2016.01.30.09.05.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 30 Jan 2016 09:05:54 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 30 Jan 2016 09:05:48 -0800
Message-Id: <1454173548-5806-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.7.0
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi: Adjust for libexecdir changes
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
X-List-Received-Date: Sat, 30 Jan 2016 17:05:57 -0000

libexecdir has changed its location in latest OE core, it used to be
pointing to /usr/lib which was essentially same as libdir and when
hardcoded in do_rpiboot_mkimage it worked.

Fixes kernel build failures e.g.

DEBUG: Executing shell function do_rpiboot_mkimage
/a/builder/mnt/build-oe/tmp-musl/work/raspberrypi2-oe-linux-musleabi/linux-raspberrypi/1_4.1.10+gitAUTOINC+b74df9228c-r0/temp/run.do_rpiboot_mkimage.5543:
line 111:
/a/builder/mnt/build-oe/tmp-musl/sysroots/x86_64-linux/usr/lib/rpi-mkimage/mkknlimg: No such file or directory

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 70e8bfe..0798788 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -60,7 +60,7 @@ do_rpiboot_mkimage() {
     if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
         if test -n "${KERNEL_DEVICETREE}"; then
             # Add RPi bootloader trailer to kernel image to enable DeviceTree support
-            ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
+            ${STAGING_DIR_NATIVE}${libexecdir}/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
         fi
     fi
 }
-- 
2.7.0


