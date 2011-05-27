Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 67B844C80AC1
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:47:10 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 May 2011 13:47:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; d="scan'208";a="10112482"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by fmsmga001.fm.intel.com with ESMTP; 27 May 2011 13:47:09 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Fri, 27 May 2011 15:46:13 -0500
Message-Id: <3ef38d9b80ebc7b23fa9a1c6712d688e6f2f5f86.1306514719.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <603e71a1badfdaac8b49913f9e60f2b0e8712287.1306514719.git.tom.zanussi@intel.com>
References: <603e71a1badfdaac8b49913f9e60f2b0e8712287.1306514719.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306514719.git.tom.zanussi@intel.com>
References: <cover.1306514719.git.tom.zanussi@intel.com>
Subject: [PATCH 3/3] ahci: AHCI mode SATA patch for Intel Patsburg SATA RAID controller
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
X-List-Received-Date: Fri, 27 May 2011 20:47:10 -0000

From: Seth Heasley

commit 64a3903d0885879ba8706a8bcf71c5e3e7664db2 upstream

This patch adds an updated SATA RAID DeviceID for the Intel Patsburg PCH.

Signed-off-by: Seth Heasley
Signed-off-by: Jeff Garzik
Integrated-by: Tom Zanussi
---
 drivers/ata/ahci.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 3288263..dfc0a26 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -260,6 +260,7 @@ static const struct pci_device_id ahci_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, 0x1d02), board_ahci }, /* PBG AHCI */
 	{ PCI_VDEVICE(INTEL, 0x1d04), board_ahci }, /* PBG RAID */
 	{ PCI_VDEVICE(INTEL, 0x1d06), board_ahci }, /* PBG RAID */
+	{ PCI_VDEVICE(INTEL, 0x2826), board_ahci }, /* PBG RAID */
 
 	/* JMicron 360/1/3/5/6, match class to avoid IDE function */
 	{ PCI_VENDOR_ID_JMICRON, PCI_ANY_ID, PCI_ANY_ID, PCI_ANY_ID,
-- 
1.7.0.4


