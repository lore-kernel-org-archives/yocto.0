Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0445E005BB
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2011 14:30:46 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 11 Oct 2011 14:30:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,525,1312182000"; d="scan'208";a="25354102"
Received: from unknown (HELO localhost) ([10.255.15.13])
	by AZSMGA002.ch.intel.com with ESMTP; 11 Oct 2011 14:30:42 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue, 11 Oct 2011 16:30:33 -0500
Message-Id: <c3e12aa981e97261093abee05bb0301c35f54c23.1318368128.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1318368128.git.tom.zanussi@intel.com>
References: <cover.1318368128.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-emenlow: switch edison back to linux-yocto-2.6.37 kernel
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
X-List-Received-Date: Tue, 11 Oct 2011 21:30:47 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

To minimize risk for the edison release, back up to the tried-and-true
2.6.37 kernel until more testing can be done in master.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-emenlow/conf/machine/emenlow.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index 9745531..f9172bc 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -12,7 +12,7 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 KERNEL_IMAGETYPE = "bzImage"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "3.0%"
+PREFERRED_VERSION_linux-yocto ?= "2.6.37+git%"
 
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_libdrm = "libdrm-poulsbo"
-- 
1.7.0.4


