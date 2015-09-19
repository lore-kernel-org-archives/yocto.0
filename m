Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA3CDE00D16; Fri, 18 Sep 2015 20:06:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78EFDE00B53
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 20:06:56 -0700 (PDT)
Received: by padhk3 with SMTP id hk3so65921739pad.3
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 20:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=r+WJp1LC+t+z69Vztg9WxQDWUXOk/1+yrtOk6eqWVOI=;
	b=o4rJ5YYBS7v2wiMNwVV2o4Q8xduzLv+LyRTpfFQ785wGV/vz1ZPYFPCmqWPsTcntsV
	+Qe7VPwNd3BJetjvlrZ1GHaVhNZTSw7biBjGI6TmUXnaUYoKL574hyVTT0qKet7B9MnF
	4galD/GVkyoUPRTdwZ8DPeWFDhZaN1srX9bLofA3CFrvWopdNJbcDN8wozE+Oh3qMSLc
	9YhNe2o7ANDVLe5SDj1C6N1XgXpyXxeDa1n3FyKHCRWLZA+G99P/5X1FOkduWL/ZzoIt
	572BdCtY/SJS1R8quMueFFRD69ktu0hZJzh0Yj1gatWxiH5ZcX1PmzsR+j4uP2FbZO4L
	uicA==
X-Received: by 10.66.226.37 with SMTP id rp5mr10854780pac.49.1442632016615;
	Fri, 18 Sep 2015 20:06:56 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	qv5sm11493245pbc.71.2015.09.18.20.06.55
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 18 Sep 2015 20:06:55 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 19 Sep 2015 13:07:26 +1000
Message-Id: <1442632046-6793-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.5.0
Subject: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: use existing ROOTFS_SIZE variable
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
X-List-Received-Date: Sat, 19 Sep 2015 03:06:59 -0000

The ROOTFS_SIZE variable is already set to the aligned root filesystem size.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 classes/sdcard_image-rpi.bbclass | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index bdecfb4..2e9bdb3 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -78,13 +78,9 @@ IMAGE_CMD_rpi-sdimg () {
 	# Align partitions
 	BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE} + ${IMAGE_ROOTFS_ALIGNMENT} - 1)
 	BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE_ALIGNED} - ${BOOT_SPACE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
-	ROOTFS_SIZE=`du -bks ${SDIMG_ROOTFS} | awk '{print $1}'`
-        # Round up RootFS size to the alignment size as well
-	ROOTFS_SIZE_ALIGNED=$(expr ${ROOTFS_SIZE} + ${IMAGE_ROOTFS_ALIGNMENT} - 1)
-	ROOTFS_SIZE_ALIGNED=$(expr ${ROOTFS_SIZE_ALIGNED} - ${ROOTFS_SIZE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
-	SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE_ALIGNED})
+	SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + $ROOTFS_SIZE)
 
-	echo "Creating filesystem with Boot partition ${BOOT_SPACE_ALIGNED} KiB and RootFS ${ROOTFS_SIZE_ALIGNED} KiB"
+	echo "Creating filesystem with Boot partition ${BOOT_SPACE_ALIGNED} KiB and RootFS $ROOTFS_SIZE KiB"
 
 	# Check if we are building with device tree support
 	DTS="${@get_dts(d, None)}"
-- 
2.5.0


