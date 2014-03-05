Return-Path: <net147@gmail.com>
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E26DDE00A44
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 05:28:13 -0800 (PST)
Received: by mail-pa0-f45.google.com with SMTP id kl14so1092829pab.4
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 05:28:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=XTSv/bUGWr4rK+q7AGbni+95BB97F/p+Fch0903Ltvo=;
	b=y3foJHljqZE6gUBRqrpEZcGL+PWFi6oVg/fmaDLQ7J2wN8F7dHviicDokyTDCZWGZo
	mvHPCQWabBMluv5HjYC+IXgtHwdFHDBFZJfV6W4myeiHhawnNB3iQXHT7CQxGddTp64F
	JM0GYC4gLnvv+JbcTM7uOjxE2VXDLJqwTNadP3eYMAlM6U1UvPfHjOiD//ximOIQfdQU
	QS9EeKb8saL7NNfuxDNoJHTOm9IoUvTjNaYO9UZuToUBmBFN9Yn5yUVJlool7yUpK8aE
	tL2jcYMexa5jT8s+U7lI4e/hXmSnG2OGgmFZfMfXdHRwi8eiS5XRb0Nn63qIIBxeV1py
	uWDQ==
X-Received: by 10.68.49.228 with SMTP id x4mr7001148pbn.50.1394026093375;
	Wed, 05 Mar 2014 05:28:13 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by mx.google.com with ESMTPSA id cz3sm8426997pbc.9.2014.03.05.05.28.11
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Mar 2014 05:28:12 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Mar 2014 00:33:16 +1100
Message-Id: <1394026396-22961-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 1.9.0
Subject: [meta-raspberrypi][PATCH] sdcard_image-rpi: make rpi-sdimg image dependent on rootfs type
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
X-List-Received-Date: Wed, 05 Mar 2014 13:28:14 -0000

The rootfs may be using a filesystem type other than ext3 so it should
not be hardcoded.

Change-Id: I71c1a96831ce4617b24de7743fe3b70ec5822a33
Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 classes/sdcard_image-rpi.bbclass | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 1b055bd..71b6477 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -22,8 +22,8 @@ inherit image_types
 # |                        |            |                        |
 # 0                      4MiB     4MiB + 20MiB       4MiB + 20Mib + SDIMG_ROOTFS
 
-# This image depends on ext3 image
-IMAGE_TYPEDEP_rpi-sdimg = "ext3"
+# This image depends on the rootfs image
+IMAGE_TYPEDEP_rpi-sdimg = "${SDIMG_ROOTFS_TYPE}"
 
 # Set kernel and boot loader
 IMAGE_BOOTLOADER ?= "bcm2835-bootfiles"
-- 
1.9.0


