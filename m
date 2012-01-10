Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EFDBE006E9
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 09:41:43 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 10 Jan 2012 09:39:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="55146634"
Received: from unknown (HELO shamshir.amr.corp.intel.com) ([10.255.14.3])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Jan 2012 09:39:29 -0800
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 10 Jan 2012 09:39:26 -0800
Message-Id: <69142337a9e09118b3a36841840c55c9bdf53c47.1326216128.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7.5
In-Reply-To: <cover.1326216128.git.josh@linux.intel.com>
References: <cover.1326216128.git.josh@linux.intel.com>
In-Reply-To: <cover.1326216128.git.josh@linux.intel.com>
References: <cover.1326216128.git.josh@linux.intel.com>
Subject: [PATCH 1/3] ia32-base: add alsa to MACHINE_FEATURES
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
X-List-Received-Date: Tue, 10 Jan 2012 17:41:43 -0000

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 conf/machine/include/ia32-base.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
index 84693e2..8556d6e 100644
--- a/conf/machine/include/ia32-base.inc
+++ b/conf/machine/include/ia32-base.inc
@@ -6,7 +6,7 @@
 # common settings for Intel-based machines
 #
 MACHINE_FEATURES += "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
-                     acpi serial usbgadget"
+                     acpi serial usbgadget alsa"
 
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules eee-acpi-scripts"
 MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "grub"
-- 
1.7.7.5


