Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CD9EE00848; Sun,  8 Feb 2015 03:57:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B0E7E00897
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 03:57:12 -0800 (PST)
Received: by mail-lb0-f175.google.com with SMTP id n10so20808299lbv.6
	for <yocto@yoctoproject.org>; Sun, 08 Feb 2015 03:57:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=+WcIHG4gXiOTg1f/ttpBwtU6Sh8n/AvVC8UvMyZcNhk=;
	b=MmbfbxGTawClIB1cYMJFAXol0MQU4yCF3bNSULgAPB647DHkXkwP50PsTxzaEbAKOE
	VDB48H6/kqlP2rdP/iHIKyK7tM46ahYWjHzR7+hI8TrpmAKtZMCVsIgSae4CV4hiyWnC
	OV3Gv4YWkRzdYxpOpfD5+o7bpizTu9du2qiNdn6rorE4oXC5vDAk/fs/SPiU2l2AtVBL
	v3hg8h1nw1tdefdwLpve09aclFrEwcUW2JIszLmaGQK9LiGZth3ue8lIV9hwxgRkAfTL
	/lVl7I9xn63xrJ1guJpgx4sW/r1bKu7oA3leR7IilNmNBHtMpUnTssIFTFjo+ZSZfXHP
	Urtw==
X-Gm-Message-State: ALoCoQnnd6GeYBJ1pp1O+03icn5Rbx9qffYyr1p+PFPm8Vw7usi/CpFKyhIn1w7WFYRFHhD+MLU7
X-Received: by 10.112.73.104 with SMTP id k8mr10756725lbv.120.1423396630492;
	Sun, 08 Feb 2015 03:57:10 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	jf3sm1434173lbc.44.2015.02.08.03.57.09 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 08 Feb 2015 03:57:09 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun,  8 Feb 2015 13:56:58 +0200
Message-Id: <1423396620-22510-6-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1423396620-22510-1-git-send-email-andrei@gherzan.ro>
References: <1423396620-22510-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 6/8] linux-raspberrypi.inc: Make KERNEL_DEFCONFIG machine specific
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
X-List-Received-Date: Sun, 08 Feb 2015 11:57:14 -0000

Change-Id: I241a8adead67717f31d1b2e66a71bd5c3edfa9fd
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 017b7d3..b8afecc 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -14,7 +14,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
 PV_append = "+git${SRCREV}"
 
 # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
-KERNEL_DEFCONFIG = "bcmrpi_defconfig"
+KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
 
 # CMDLINE for raspberrypi
 CMDLINE = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200 kgdboc=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
-- 
2.1.0


