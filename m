Return-Path: <lauri.hintsala@bluegiga.com>
Received: from blue-gw.bluegiga.fi (bluegiga.fi [194.100.31.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C077CE004E9
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2011 03:55:42 -0700 (PDT)
Received: from bgtlh.bgt.local (unknown [10.1.1.28])
	by blue-gw.bluegiga.fi (Postfix) with ESMTP id 11F027BE28A;
	Tue, 18 Oct 2011 13:55:40 +0300 (EEST)
From: Lauri Hintsala <lauri.hintsala@bluegiga.com>
To: yocto@yoctoproject.org
Date: Tue, 18 Oct 2011 13:55:24 +0300
Message-Id: <1318935324-17713-1-git-send-email-lauri.hintsala@bluegiga.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH] poky: fix broken ubifs link in deploy folder
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 18 Oct 2011 10:55:43 -0000

Fix broken rootfs image link when ubifs is used.

Function runimagecmd is using image name "${IMAGE_NAME}.rootfs.${type}".
Let's use the same name in IMAGE_CMD_ubifs.

Signed-off-by: Lauri Hintsala <lauri.hintsala@bluegiga.com>
---
 meta/classes/image_types.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/image_types.bbclass b/meta/classes/image_types.bbclass
index c24b326..45abdeb 100644
--- a/meta/classes/image_types.bbclass
+++ b/meta/classes/image_types.bbclass
@@ -111,7 +111,7 @@ IMAGE_CMD_ubi () {
 	echo vol_flags=autoresize >> ubinize.cfg
 	mkfs.ubifs -r ${IMAGE_ROOTFS} -o ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.ubifs ${MKUBIFS_ARGS} && ubinize -o ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.ubi ${UBINIZE_ARGS} ubinize.cfg
 }
-IMAGE_CMD_ubifs = "mkfs.ubifs -r ${IMAGE_ROOTFS} -o ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.ubifs.img ${MKUBIFS_ARGS}"
+IMAGE_CMD_ubifs = "mkfs.ubifs -r ${IMAGE_ROOTFS} -o ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.ubifs ${MKUBIFS_ARGS}"
 
 EXTRA_IMAGECMD = ""
 EXTRA_IMAGECMD_jffs2 ?= "--pad --little-endian --eraseblock=0x40000"
-- 
1.7.4.1


