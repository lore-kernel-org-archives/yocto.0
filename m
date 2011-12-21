Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28F82E01388
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 01:04:03 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Dec 2011 01:04:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="88837782"
Received: from unknown (HELO localhost) ([10.255.12.104])
	by orsmga001.jf.intel.com with ESMTP; 21 Dec 2011 01:04:02 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Yocto Project <yocto@yoctoproject.org>, raj.khem@gmail.com,
	koen@dominion.thruhere.net, kergoth@gmail.com, elizabeth.flanagan@intel.com
Date: Wed, 21 Dec 2011 01:02:55 -0800
Message-Id: <b1d9ede08accfae89a8cda00fca1b5823f8ba38b.1324456294.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1324456294.git.dvhart@linux.intel.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1324456294.git.dvhart@linux.intel.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
Subject: [PATCH 9/9] image_types: Ensure /init exists for cpio rootfs archives
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
X-List-Received-Date: Wed, 21 Dec 2011 09:04:03 -0000

NOTE: I'm looking for a more appropriate mechanism.

In order for the kernel to accept an initramfs as a rootfs,
it must have /init - even if it is an empty file. Touch /init
to ensure it exists for cpio and cpio.gz image types.

When used with initrd and rootfs=/dev/ram0, this allows the
cpio and cpio.gz images to be used as the rootfs.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/classes/image_types.bbclass |   10 ++++++++--
 1 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/meta/classes/image_types.bbclass b/meta/classes/image_types.bbclass
index 489fbe1..f83aaad 100644
--- a/meta/classes/image_types.bbclass
+++ b/meta/classes/image_types.bbclass
@@ -110,8 +110,14 @@ IMAGE_CMD_tar = "cd ${IMAGE_ROOTFS} && tar -cvf ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME
 IMAGE_CMD_tar.gz = "cd ${IMAGE_ROOTFS} && tar -zcvf ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.tar.gz ."
 IMAGE_CMD_tar.bz2 = "cd ${IMAGE_ROOTFS} && tar -jcvf ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.tar.bz2 ."
 IMAGE_CMD_tar.xz = "cd ${IMAGE_ROOTFS} && tar --xz -cvf ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.tar.xz ."
-IMAGE_CMD_cpio = "cd ${IMAGE_ROOTFS} && (find . | cpio -o -H newc >${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.cpio)"
-IMAGE_CMD_cpio.gz = "cd ${IMAGE_ROOTFS} && (find . | cpio -o -H newc | gzip -c -9 >${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.cpio.gz)"
+IMAGE_CMD_cpio () {
+	touch ${IMAGE_ROOTFS}/init
+	cd ${IMAGE_ROOTFS} && (find . | cpio -o -H newc >${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.cpio)
+}
+IMAGE_CMD_cpio.gz () {
+	touch ${IMAGE_ROOTFS}/init
+	cd ${IMAGE_ROOTFS} && (find . | cpio -o -H newc | gzip -c -9 >${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.cpio.gz)
+}
 IMAGE_CMD_cpio.xz = "type cpio >/dev/null; cd ${IMAGE_ROOTFS} && (find . | cpio -o -H newc | xz -c ${XZ_COMPRESSION_LEVEL} --check=${XZ_INTEGRITY_CHECK} > ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.cpio.xz) ${EXTRA_IMAGECMD}"
 IMAGE_CMD_cpio.lzma = "type cpio >/dev/null; cd ${IMAGE_ROOTFS} && (find . | cpio -o -H newc | xz --format=lzma -c ${XZ_COMPRESSION_LEVEL} --check=${XZ_INTEGRITY_CHECK} >${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.cpio.lzma) ${EXTRA_IMAGECMD}"
 
-- 
1.7.6.4


