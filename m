Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4BC184C80AA4
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2011 23:05:25 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Aug 2011 21:05:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,308,1309762800"; d="scan'208";a="33676326"
Received: from unknown (HELO localhost) ([10.255.14.150])
	by orsmga002.jf.intel.com with ESMTP; 02 Aug 2011 21:05:24 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  2 Aug 2011 23:05:17 -0500
Message-Id: <7223567d3e6036ba579f428aeb1ef6bc8d0c07a7.1312343514.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3ef6aeff555624d7be783d11fe030e5e84de8b3c.1312343514.git.tom.zanussi@intel.com>
References: <3ef6aeff555624d7be783d11fe030e5e84de8b3c.1312343514.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1312343514.git.tom.zanussi@intel.com>
References: <cover.1312343514.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-fri2: add 3g and wifi features
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
X-List-Received-Date: Wed, 03 Aug 2011 04:05:25 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Make sure the 3g and wifi bits get added.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fri2/conf/machine/fri2.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index 61b102d..6b25a51 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -7,7 +7,7 @@
 include conf/machine/include/tune-atom.inc
 
 MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
-                    acpi serial usbgadget"
+                    acpi serial usbgadget wifi 3g"
 
 KERNEL_IMAGETYPE = "bzImage"
 
-- 
1.7.0.4


