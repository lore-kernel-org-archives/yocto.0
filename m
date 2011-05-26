Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 617014C80A7C
	for <yocto@yoctoproject.org>; Thu, 26 May 2011 00:06:02 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 May 2011 22:06:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,271,1304319600"; 
   d="scan'208";a="5092728"
Received: from unknown (HELO localhost) ([10.255.12.181])
	by orsmga001.jf.intel.com with ESMTP; 25 May 2011 22:06:01 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 May 2011 22:06:07 -0700
Message-Id: <121828d9afff016db6971d97838afdd8cb4e65c5.1306386209.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1306386209.git.dvhart@linux.intel.com>
References: <cover.1306386209.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/1] beagleboard: specify UBOOT_MACHINE in machine conf
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
X-List-Received-Date: Thu, 26 May 2011 05:06:02 -0000

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-yocto/conf/machine/beagleboard.conf |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/machine/beagleboard.conf b/meta-yocto/conf/machine/beagleboard.conf
index 963014b..d6eee6f 100644
--- a/meta-yocto/conf/machine/beagleboard.conf
+++ b/meta-yocto/conf/machine/beagleboard.conf
@@ -26,6 +26,7 @@ PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 
 KERNEL_IMAGETYPE = "uImage"
 
+UBOOT_MACHINE = "omap3_beagle_config"
 UBOOT_ENTRYPOINT = "0x80008000"
 UBOOT_LOADADDRESS = "0x80008000"
 
-- 
1.7.1


