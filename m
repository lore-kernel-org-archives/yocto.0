Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31B1AE002AB
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 23:00:00 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Sep 2012 23:00:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,441,1344236400"; d="scan'208";a="223405631"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 17 Sep 2012 22:59:59 -0700
Received: from qa.intel.com (qa.rb.intel.com [10.237.100.11])
	by linux.intel.com (Postfix) with ESMTP id DA41E2C8001;
	Mon, 17 Sep 2012 22:59:59 -0700 (PDT)
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
To: <yocto@yoctoproject.org>
Date: Tue, 18 Sep 2012 09:00:04 +0300
Message-Id: <7f2da05208f4cbeb4d9a4faa66ce78fb49bd6352.1347946602.git.mihaix.lindner@linux.intel.com>
X-Mailer: git-send-email 1.7.8.6
In-Reply-To: <cover.1347946602.git.mihaix.lindner@linux.intel.com>
References: <cover.1347946602.git.mihaix.lindner@linux.intel.com>
Subject: [PATCH 1/1] [linux-yocto-3.0] boot-live.cfg: enable BLK_DEV_INITRD in kernel
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
X-List-Received-Date: Tue, 18 Sep 2012 06:00:00 -0000

Added BLK_DEV_INITRD in boot-live.cfg for linux-yocto-3.0, meta branch.
Cedartrail (at least) cannot boot live from ISO image due to
BLK_DEV_INITRD missing:
"VFS: Cannot open root device "ram0" or unkown-block(0,0)"
Should fix #3050

[YOCTO #3050]

Signed-off-by: Mihai Lindner <mihaix.lindner@linux.intel.com>
---
 meta/cfg/kernel-cache/cfg/boot-live.cfg |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/cfg/boot-live.cfg b/meta/cfg/kernel-cache/cfg/boot-live.cfg
index a102052..a3ea9f5 100644
--- a/meta/cfg/kernel-cache/cfg/boot-live.cfg
+++ b/meta/cfg/kernel-cache/cfg/boot-live.cfg
@@ -7,3 +7,5 @@ CONFIG_RD_GZIP=y
 CONFIG_BLK_DEV_IDECD=y
 CONFIG_ISO9660_FS=y
 CONFIG_BLK_DEV_SR=y
+# Initial ramdisk support
+CONFIG_BLK_DEV_INITRD=y
-- 
1.7.8.6


