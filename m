Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2D07E00C32; Tue,  1 Aug 2017 03:14:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BC20E00C25
	for <yocto@yoctoproject.org>; Tue,  1 Aug 2017 03:14:25 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id q189so2301205wmd.0
	for <yocto@yoctoproject.org>; Tue, 01 Aug 2017 03:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=CHv6vu/NwbNv6RM2ilrCzKbID/NWUGW2Cem1tLNsXfc=;
	b=QuKPm9aJcY8nqzmDPKTc/d6fzvHT/0CzKyyROTuVD+b4KPyWDfKON2Lh18qF5LQoVO
	0qrDl5XZUp3SCxcsdH2m2ucpVR69OOK0x+puBcLeNiDvhVdIYtazUoPINcO6J0ncZeCv
	V1BTDxc2kubUitH88rty87G7rFa7tnYsJzeoPI+F2CFKiBT93JgYHrXm9kbS9vmsxElJ
	SexD+RPBNsbnCz6Ihq/NwhKr79D3FynyueB/RDsHEQo7sDAfF8sw6CBSL/qQerFp0XId
	Mb4HFYaNK8iRTcuH3ap3KVI8dcgXGn+xzEF0+fAWu6u5Mjsjd7icCw0o4d7IzV3D/ozu
	C5Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=CHv6vu/NwbNv6RM2ilrCzKbID/NWUGW2Cem1tLNsXfc=;
	b=ozn8FqPQ27LydBJgknPB7SE3NCMRq4OXcnmcIWzpVcmNS47ZVpvMO/MxWQRl/pRZST
	gtYPF6JFgn1/UdwjCMI6NFE65u7P/MriPtK8nKQ5t3a1M3wo205X5isGS0vRDzIMFhDE
	XdQJnOXQ+wBOXm39Xf9Oz+YH/2jfzKkVVQ+XI+LIQEWHpsF9cKMOcmv4g/iiiF+1roCT
	dpYtG5q90uNwuvDSHk7QDEn3DsBzPABPm6K0UuLkBAwufk4Suxuwb3gRlfEWywDGDgDx
	Fvg/O8qkoTc2ZPgFtIQRJAh1gNPjLWbXXD/pIZ+OpbSKMrT2ODBsyV/KUIQQQXrCLoqS
	V+wQ==
X-Gm-Message-State: AIVw112AaZR7aBhsayJnkiG54/d8YLzD0f6TrVkFC2hwrVowzHqm9Zsn
	D8/kV285zOv3IJK9
X-Received: by 10.28.7.213 with SMTP id 204mr1074200wmh.113.1501582464028;
	Tue, 01 Aug 2017 03:14:24 -0700 (PDT)
Received: from gizero-desktop.tw.it
	(host193-245-static.58-79-b.business.telecomitalia.it.
	[79.58.245.193]) by smtp.gmail.com with ESMTPSA id
	m77sm1471074wmd.21.2017.08.01.03.14.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 01 Aug 2017 03:14:23 -0700 (PDT)
From: Andrea Galbusera <gizero@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  1 Aug 2017 12:14:14 +0200
Message-Id: <1501582454-25082-1-git-send-email-gizero@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH] sdcard_image-rpi: fix absolute path in vfat symlink
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
X-List-Received-Date: Tue, 01 Aug 2017 10:14:25 -0000

Fix bitbake complaining with:

ERROR: core-image-minimal-1.0-r0 do_image_complete: sstate found an absolute
path symlink [...].vfat pointing at [...].vfat. Please replace this with a
relative link.

Signed-off-by: Andrea Galbusera <gizero@gmail.com>
---
 classes/sdcard_image-rpi.bbclass | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 1f75ef7..42753d6 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -73,7 +73,7 @@ SDIMG = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"
 FATPAYLOAD ?= ""
 
 # SD card vfat partition image name
-SDIMG_VFAT = "${IMGDEPLOYDIR}/${IMAGE_NAME}.vfat"
+SDIMG_VFAT = "${IMAGE_NAME}.vfat"
 SDIMG_LINK_VFAT = "${IMGDEPLOYDIR}/${IMAGE_LINK_NAME}.vfat"
 
 IMAGE_CMD_rpi-sdimg () {
@@ -152,7 +152,7 @@ IMAGE_CMD_rpi-sdimg () {
         # Deploy vfat partition (for u-boot case only)
         case "${KERNEL_IMAGETYPE}" in
         "uImage")
-                cp ${WORKDIR}/boot.img ${SDIMG_VFAT}
+                cp ${WORKDIR}/boot.img ${IMGDEPLOYDIR}/${SDIMG_VFAT}
                 ln -sf ${SDIMG_VFAT} ${SDIMG_LINK_VFAT}
                 ;;
         *)
-- 
2.7.4


