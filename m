Return-Path: <net147@gmail.com>
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B3ACE00896
	for <yocto@yoctoproject.org>; Tue, 18 Feb 2014 03:47:54 -0800 (PST)
Received: by mail-pa0-f51.google.com with SMTP id ld10so16718154pab.10
	for <yocto@yoctoproject.org>; Tue, 18 Feb 2014 03:47:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=AJzWz8pq564FC0zt4R4iuJxJoyhqT6LBoWjtgm7R2y8=;
	b=gwxIn5Qt9F8/gUo2SYAjg/i7lFfNCEwjgiuRp3t43MHvkWpUHBNLJO+2S+ItQv7PtM
	cpMateE/xD4BZQH1XEBhvP9qjiLdS/7XBOpr3AugDraPKEBZeZ4xo6bQ8mSA8yztlpA3
	xTXUy9N8gGpOfhF05nVzi7LQ8dbVB7hD7TVXlLwS5u8/Hocn89kvDE4g1DqnPDPGaNxs
	doue8lviBOHHz+PEcc0wMZgqk3cUaqD7AH5ztWBQM0+YajkONR75nG7VusdGSwuBYSb4
	AYcKLOIA+NuYyLM/LhMbD6q+63ZGgcoaE4eEbqpdgOFzYoeeGhXWJyA7P7uNo55g75yu
	NNSQ==
X-Received: by 10.69.31.235 with SMTP id kp11mr32407911pbd.36.1392724074327;
	Tue, 18 Feb 2014 03:47:54 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by mx.google.com with ESMTPSA id
	jk16sm55122032pbb.34.2014.02.18.03.47.51 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 18 Feb 2014 03:47:53 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 18 Feb 2014 22:52:09 +1100
Message-Id: <1392724329-14226-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 1.8.5.4
Subject: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: use absolute path to rootfs
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
X-List-Received-Date: Tue, 18 Feb 2014 11:47:59 -0000

Change-Id: Ib513f195351b379dbb9f503dc5927f2018169b95
Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 classes/sdcard_image-rpi.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index eb337dc..c7cfa7c 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -40,7 +40,7 @@ IMAGE_ROOTFS_ALIGNMENT = "4096"
 
 # Use an uncompressed ext3 by default as rootfs
 SDIMG_ROOTFS_TYPE ?= "ext3"
-SDIMG_ROOTFS = "${IMAGE_NAME}.rootfs.${SDIMG_ROOTFS_TYPE}"
+SDIMG_ROOTFS = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.${SDIMG_ROOTFS_TYPE}"
 
 IMAGE_DEPENDS_rpi-sdimg = " \
 			parted-native \
-- 
1.8.5.4


