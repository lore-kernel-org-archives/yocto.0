Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5D30E01201
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2011 10:35:02 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 Sep 2011 10:35:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,339,1312182000"; d="scan'208";a="46049214"
Received: from unknown (HELO localhost) ([10.255.14.186])
	by azsmga001.ch.intel.com with ESMTP; 06 Sep 2011 10:35:01 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  6 Sep 2011 10:34:59 -0700
Message-Id: <416449ec023a684a46b4cdbef9f33e6abb2dda80.1315330406.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <993552dd9e3bbfadcd3239f3b3bbfe2a3666451e.1315330406.git.dvhart@linux.intel.com>
References: <993552dd9e3bbfadcd3239f3b3bbfe2a3666451e.1315330406.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1315330406.git.dvhart@linux.intel.com>
References: <cover.1315330406.git.dvhart@linux.intel.com>
Subject: [PATCH 2/2] n450: update linux-yocto PREFERRED_VERSION to 3.0%
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
X-List-Received-Date: Tue, 06 Sep 2011 17:35:02 -0000

Avoid bitbake warnings about 3.0+git% not being available. The kernel version
contains the stable release as well (e.g. 3.0.4), so use the now standard
3.0% to select the latest 3.0 release of the linux-yocto kernel recipe.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-n450/conf/machine/n450.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-n450/conf/machine/n450.conf b/meta-n450/conf/machine/n450.conf
index 888c5d2..c0ff0cf 100644
--- a/meta-n450/conf/machine/n450.conf
+++ b/meta-n450/conf/machine/n450.conf
@@ -11,7 +11,7 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 KERNEL_IMAGETYPE = "bzImage"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto = "3.0+git%"
+PREFERRED_VERSION_linux-yocto = "3.0%"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
-- 
1.7.6


