Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2541E01276
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 15:46:06 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Dec 2011 15:46:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="106815608"
Received: from unknown (HELO localhost) ([10.255.13.53])
	by fmsmga002.fm.intel.com with ESMTP; 28 Dec 2011 15:46:06 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, raj.khem@gmail.com,
	koen@dominion.thruhere.net, kergoth@gmail.com, martin.jansa@gmail.com,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Wed, 28 Dec 2011 15:45:30 -0800
Message-Id: <fbed4e9f94ed9bd1bb5a9c8fa37113e325f89371.1325115602.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1325115602.git.dvhart@linux.intel.com>
References: <cover.1325115602.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1325115602.git.dvhart@linux.intel.com>
References: <cover.1325115602.git.dvhart@linux.intel.com>
Subject: [PATCH 3/3] image_types: Ensure /init exists for cpio rootfs archives
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
X-List-Received-Date: Wed, 28 Dec 2011 23:46:07 -0000

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
index 6893e38..ebff0ba 100644
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


