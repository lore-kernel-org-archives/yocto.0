Return-Path: <jukka.rissanen@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80AD6E01439
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 05:23:18 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Feb 2013 05:23:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,650,1355126400"; d="scan'208";a="286145345"
Received: from sorvi.fi.intel.com ([10.237.72.58])
	by fmsmga001.fm.intel.com with ESMTP; 12 Feb 2013 05:23:17 -0800
From: Jukka Rissanen <jukka.rissanen@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 12 Feb 2013 15:23:16 +0200
Message-Id: <1360675396-24351-1-git-send-email-jukka.rissanen@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH] initramfs: udevd can be located in /sbin
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
X-List-Received-Date: Tue, 12 Feb 2013 13:23:18 -0000

Do not hard code the udevd path.

Signed-off-by: Jukka Rissanen <jukka.rissanen@linux.intel.com>
---
 meta/recipes-core/initrdscripts/files/init-live.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/initrdscripts/files/init-live.sh b/meta/recipes-core/initrdscripts/files/init-live.sh
index 0ae359d..0524737 100644
--- a/meta/recipes-core/initrdscripts/files/init-live.sh
+++ b/meta/recipes-core/initrdscripts/files/init-live.sh
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-PATH=/sbin:/bin:/usr/sbin:/usr/bin
+PATH=/sbin:/bin:/usr/sbin:/usr/bin:/lib/udev
 
 ROOT_MOUNT="/rootfs/"
 ROOT_IMAGE="rootfs.img"
@@ -21,7 +21,7 @@ early_setup() {
 
     mkdir -p /run
     mkdir -p /var/run
-    /lib/udev/udevd --daemon
+    udevd --daemon
     udevadm trigger --action=add
 }
 
-- 
1.7.11.4


