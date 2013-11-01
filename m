Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54665E0166B
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 15:02:36 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Nov 2013 14:59:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="402364572"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.15.12])
	by orsmga001.jf.intel.com with ESMTP; 01 Nov 2013 15:02:35 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org,
	flihp@twobit.us
Date: Fri,  1 Nov 2013 15:02:32 -0700
Message-Id: <1383343353-23232-7-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1383343353-23232-1-git-send-email-sgw@linux.intel.com>
References: <1383343353-23232-1-git-send-email-sgw@linux.intel.com>
Subject: [meta-measured][PATCH 6/7] init-boot-tpm.sh: Use aufs instead of unionfs for 3.10 kernel
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

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 recipes-tpm/initrdscripts/files/init-boot-tpm.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-tpm/initrdscripts/files/init-boot-tpm.sh b/recipes-tpm/initrdscripts/files/init-boot-tpm.sh
index 45a6f4d..27e9f8d 100644
--- a/recipes-tpm/initrdscripts/files/init-boot-tpm.sh
+++ b/recipes-tpm/initrdscripts/files/init-boot-tpm.sh
@@ -136,7 +136,7 @@ mount_rootimg() {
     if ! $MOUNT -t tmpfs -o rw,noatime,mode=755 tmpfs $cow_mnt ; then
         fatal "Failed to mount tmpfs to back rootfs union."
     fi
-    if ! $MOUNT -t unionfs -o dirs=$cow_mnt=rw:$rootro_mnt=ro unionfs $root_mnt ; then
+    if ! $MOUNT -t aufs -o dirs=$cow_mnt=rw:$rootro_mnt=ro none $root_mnt ; then
         fatal "Failed to mount union between $root_img and tmpfs at $cow_mnt."
     fi
 }
-- 
1.8.3.1


