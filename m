Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EB20E01435
	for <yocto@yoctoproject.org>; Sat, 12 May 2012 12:42:44 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 May 2012 12:42:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="165425719"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by fmsmga002.fm.intel.com with ESMTP; 12 May 2012 12:42:43 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Sat, 12 May 2012 14:42:02 -0500
Message-Id: <f13922b6e812ff37647d8396bc2dd2a83d95af1c.1336851382.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336851382.git.tom.zanussi@intel.com>
References: <cover.1336851382.git.tom.zanussi@intel.com>
Subject: [PATCH 17/22] meta/common-pc-64: factor out SCSI CDROM option
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
X-List-Received-Date: Sat, 12 May 2012 19:42:44 -0000

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


