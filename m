Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 001A4E01363
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 20:33:43 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Apr 2012 20:33:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="130466040"
Received: from unknown (HELO localhost) ([10.255.12.66])
	by orsmga001.jf.intel.com with ESMTP; 16 Apr 2012 20:33:43 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 16 Apr 2012 22:33:53 -0500
Message-Id: <790d5f5037df247216fffbffa6780d9c2197d57e.1334633481.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1334633481.git.tom.zanussi@intel.com>
References: <cover.1334633481.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] ia32-base: don't use obsolete kernel26
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
X-List-Received-Date: Tue, 17 Apr 2012 03:33:44 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

kernel26 is now a no-op so don't use it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 conf/machine/include/ia32-base.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
index 9b2ef5a..874e258 100644
--- a/conf/machine/include/ia32-base.inc
+++ b/conf/machine/include/ia32-base.inc
@@ -5,7 +5,7 @@
 #
 # common settings for Intel-based machines
 #
-MACHINE_FEATURES += "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
+MACHINE_FEATURES += "screen keyboard pci usbhost ext2 ext3 x86 \
                      acpi serial usbgadget alsa"
 
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules eee-acpi-scripts"
-- 
1.7.0.4


