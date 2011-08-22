Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC49EE00321
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2011 07:15:07 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Aug 2011 07:15:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,263,1312182000"; d="scan'208";a="41091010"
Received: from unknown (HELO [10.255.14.5]) ([10.255.14.5])
	by azsmga001.ch.intel.com with ESMTP; 22 Aug 2011 07:15:07 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 22 Aug 2011 09:15:49 -0500
Message-ID: <1314022549.2394.165.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH] meta-intel: update init-install.sh
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
X-List-Received-Date: Mon, 22 Aug 2011 14:15:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

The parted 3.0 release introduced some API changes such as the removal
of mkpartfs.  This updates init-install.sh to use mkpart instead.

Fixes [YOCTO #1387]

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../initramfs-live-install/init-install.sh         |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/recipes-core/initrdscripts/initramfs-live-install/init-install.sh b/common/recipes-core/initrdscripts/initramfs-live-install/init-install.sh
index 7f2ea7f..7d80190 100644
--- a/common/recipes-core/initrdscripts/initramfs-live-install/init-install.sh
+++ b/common/recipes-core/initrdscripts/initramfs-live-install/init-install.sh
@@ -105,13 +105,13 @@ echo "Creating new partition table on /dev/${device} ..."
 parted /dev/${device} mklabel msdos
 
 echo "Creating boot partition on /dev/${device}1"
-parted /dev/${device} mkpartfs primary ext2 0 $boot_size
+parted /dev/${device} mkpart primary 0 $boot_size
 
 echo "Creating rootfs partition on /dev/${device}2"
-parted /dev/${device} mkpartfs primary ext2 $rootfs_start $rootfs_end 
+parted /dev/${device} mkpart primary $rootfs_start $rootfs_end 
 
 echo "Creating swap partition on /dev/${device}3"
-parted /dev/${device} mkpartfs primary linux-swap $swap_start $disk_size
+parted /dev/${device} mkpart primary $swap_start $disk_size
 
 parted /dev/${device} print
 
-- 
1.7.0.4




