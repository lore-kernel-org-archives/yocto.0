Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EE95E0093B; Sun,  8 Feb 2015 03:57:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE249E00894
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 03:57:10 -0800 (PST)
Received: by mail-lb0-f178.google.com with SMTP id w7so4095613lbi.9
	for <yocto@yoctoproject.org>; Sun, 08 Feb 2015 03:57:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=/9yiwtQCAiW6oe2i7YvrLRCYuXgYj6AetP+BqSbuoXM=;
	b=mdBJsRRVnDQdB323DVO7V3ulYvn3XDvKJCarsHhRN18SPjIRjbqVBCDUyEJGtZiKN/
	EzI0A6uDGXq5ZPv/KO+9NCLfXh/peGnbCXyYRbBLYktiSsE7MZ2f2V73jdXA28hNkhyA
	Yf8m3LyESZB8zfNjK0Lc7uOnV7PZf+MZ8XE8rNTI5KdC0LbVcwQNNDHuhDpjuyFrl3ii
	ZlDTdahiVWqWT7vH85QlT1VjIO9QWRJSlSKQulIQTfzdrlYtKpABQ36BDkADhNAcS+bM
	NU0CjqjFtAy9SpsKogab/fQel3NATy3lNsf0QEIOAW+mX5v3cEvZK65d0RpepFfiTJnL
	H7vg==
X-Gm-Message-State: ALoCoQmwZDvVAsUNoo/ZXht8YjGfO7O6pi+K2oQWzFtq0Qix05c82q4+GGu4n+3htNxv6qceBaON
X-Received: by 10.112.198.161 with SMTP id jd1mr3098308lbc.93.1423396628885;
	Sun, 08 Feb 2015 03:57:08 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	jf3sm1434173lbc.44.2015.02.08.03.57.07 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 08 Feb 2015 03:57:08 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun,  8 Feb 2015 13:56:56 +0200
Message-Id: <1423396620-22510-4-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1423396620-22510-1-git-send-email-andrei@gherzan.ro>
References: <1423396620-22510-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 4/8] linux-raspberrypi.inc: Remove machine specific CMDLINE definition
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
X-List-Received-Date: Sun, 08 Feb 2015 11:57:13 -0000

This is already a raspberrypi specific recipe. So this is useless and would
break other machines.

Change-Id: Ie1d627384255660d7e213833fd4433f47c0edc1d
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index ff0c5ce..017b7d3 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -17,7 +17,7 @@ PV_append = "+git${SRCREV}"
 KERNEL_DEFCONFIG = "bcmrpi_defconfig"
 
 # CMDLINE for raspberrypi
-CMDLINE_raspberrypi = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200 kgdboc=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
+CMDLINE = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200 kgdboc=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
 
 UDEV_GE_141 ?= "1"
 
-- 
2.1.0


