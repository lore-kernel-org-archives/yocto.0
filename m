Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A01BBE0166B
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 15:02:36 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Nov 2013 14:59:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="402364573"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.15.12])
	by orsmga001.jf.intel.com with ESMTP; 01 Nov 2013 15:02:36 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org,
	flihp@twobit.us
Date: Fri,  1 Nov 2013 15:02:33 -0700
Message-Id: <1383343353-23232-8-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1383343353-23232-1-git-send-email-sgw@linux.intel.com>
References: <1383343353-23232-1-git-send-email-sgw@linux.intel.com>
Subject: [meta-measured][PATCH 7/7] core-image-tpm: add kmod and udev-extraconf
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
X-List-Received-Date: Fri, 01 Nov 2013 22:02:36 -0000

Add these two packages to ensure media gets mounted correct and the modules are loaded, they
are needed in both the core image and the initramfs

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 recipes-tpm/images/core-image-tpm-initramfs.bb | 2 ++
 recipes-tpm/images/core-image-tpm.inc          | 3 ++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/recipes-tpm/images/core-image-tpm-initramfs.bb b/recipes-tpm/images/core-image-tpm-initramfs.bb
index 16b009f..f17e37d 100644
--- a/recipes-tpm/images/core-image-tpm-initramfs.bb
+++ b/recipes-tpm/images/core-image-tpm-initramfs.bb
@@ -7,9 +7,11 @@ IMAGE_INSTALL = " \
     initramfs-boot-tpm \
     busybox \
     udev \
+    udev-extraconf \
     base-passwd \
     packagegroup-tpm \
     coreutils \
+    kmod \
     "
 
 # Do not pollute the initrd image with rootfs features
diff --git a/recipes-tpm/images/core-image-tpm.inc b/recipes-tpm/images/core-image-tpm.inc
index 7024d33..10a3ce0 100644
--- a/recipes-tpm/images/core-image-tpm.inc
+++ b/recipes-tpm/images/core-image-tpm.inc
@@ -6,7 +6,8 @@ LICENSE = "MIT"
 
 IMAGE_INSTALL += "\
 	${CORE_IMAGE_BASE_INSTALL} \
-	packagegroup-core-basic \
+	kmod udev-extraconf \
+	packagegroup-core-boot \
 	packagegroup-tpm \
 	packagegroup-tboot \
 "
-- 
1.8.3.1


