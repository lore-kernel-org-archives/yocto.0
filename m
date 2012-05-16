Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C682E01421
	for <yocto@yoctoproject.org>; Wed, 16 May 2012 08:51:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 May 2012 08:51:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="141328334"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by orsmga001.jf.intel.com with ESMTP; 16 May 2012 08:51:31 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed, 16 May 2012 10:50:37 -0500
Message-Id: <0a56a3bfc51c99eb484dd5ad2e0e1e97c8c099c7.1337182769.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337182769.git.tom.zanussi@intel.com>
References: <cover.1337182769.git.tom.zanussi@intel.com>
Subject: [PATCH 17/22][KERNEL] meta/common-pc-64: factor out SCSI CDROM option
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
X-List-Received-Date: Wed, 16 May 2012 15:51:32 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Remove the BLK_DEV_SR option from common-pc-64.cfg and replace it with
the scsi/cdrom feature.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../kernel-cache/bsp/common-pc-64/common-pc-64.cfg |    2 --
 .../kernel-cache/bsp/common-pc-64/common-pc-64.scc |    1 +
 2 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg
index ffb2cbc..fb5c349 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg
@@ -35,8 +35,6 @@ CONFIG_ATA=y
 CONFIG_SATA_AHCI=y
 CONFIG_ATA_PIIX=y
 
-CONFIG_BLK_DEV_SR=y
-
 CONFIG_BLK_DEV_FD=m
 
 CONFIG_MII=y
diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
index 82d1af3..0100a82 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
@@ -7,3 +7,4 @@ include features/usb/uhci-hcd.scc
 include features/usb/ohci-hcd.scc
 include features/intel-e1xxxx/intel-e100.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
+include features/scsi/cdrom.scc
-- 
1.7.0.4


