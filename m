Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B5CCE00723
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 15:15:12 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 May 2012 15:15:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="160635237"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by fmsmga002.fm.intel.com with ESMTP; 01 May 2012 15:15:11 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Tue,  1 May 2012 15:14:38 -0700
Message-Id: <34a728c3203fdb6c95fef93c0eefbca2b4d2b95b.1335908646.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1335908646.git.dvhart@linux.intel.com>
References: <cover.1335908646.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1335908646.git.dvhart@linux.intel.com>
References: <cover.1335908646.git.dvhart@linux.intel.com>
Subject: [PATCH 1/1] pch_gbe: Do not abort probe on bad MAC
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
X-List-Received-Date: Tue, 01 May 2012 22:15:12 -0000

commit: 2b53d07891630dead46d65c8f896955fd3ae0302 (linux-stable)

If the MAC is invalid or not implemented, do not abort the probe. Issue
a warning and prevent bringing the interface up until a MAC is set manually
(via ifconfig $IFACE hw ether $MAC).

Tested on two platforms, one with a valid MAC, the other without a MAC. The real
MAC is used if present, the interface fails to come up until the MAC is set on
the other. They successfully get an IP over DHCP and pass a simple ping and
login over ssh test.

This is meant to allow the Inforce SYS940X development board:
http://www.inforcecomputing.com/SYS940X_ECX.html
(and others suffering from a missing MAC) to work with the mainline kernel.
Without this patch, the probe will fail and the interface will not be created,
preventing the user from configuring the MAC manually.

This does not make any attempt to address a missing or invalid MAC for the
pch_phub driver.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Arjan van de Ven <arjan@linux.intel.com>
CC: Alan Cox <alan@linux.intel.com>
CC: Tomoya MORINAGA <tomoya.rohm@gmail.com>
CC: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
CC: "David S. Miller" <davem@davemloft.net>
CC: Paul Gortmaker <paul.gortmaker@windriver.com>
CC: Jon Mason <jdmason@kudzu.us>
CC: netdev@vger.kernel.org
CC: Mark Brown <broonie@opensource.wolfsonmicro.com>
CC: David Laight <David.Laight@ACULAB.COM>
CC: Joe Perches <joe@perches.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
---
 .../net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c   |   17 ++++++++++++++---
 1 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c b/drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c
index 48406ca..43c7b25 100644
--- a/drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c
+++ b/drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c
@@ -1745,6 +1745,12 @@ int pch_gbe_up(struct pch_gbe_adapter *adapter)
 	struct pch_gbe_rx_ring *rx_ring = adapter->rx_ring;
 	int err;
 
+	/* Ensure we have a valid MAC */
+	if (!is_valid_ether_addr(adapter->hw.mac.addr)) {
+		pr_err("Error: Invalid MAC address\n");
+		return -EINVAL;
+	}
+
 	/* hardware has been reset, we need to reload some things */
 	pch_gbe_set_multi(netdev);
 
@@ -2467,9 +2473,14 @@ static int pch_gbe_probe(struct pci_dev *pdev,
 
 	memcpy(netdev->dev_addr, adapter->hw.mac.addr, netdev->addr_len);
 	if (!is_valid_ether_addr(netdev->dev_addr)) {
-		dev_err(&pdev->dev, "Invalid MAC Address\n");
-		ret = -EIO;
-		goto err_free_adapter;
+		/*
+		 * If the MAC is invalid (or just missing), display a warning
+		 * but do not abort setting up the device. pch_gbe_up will
+		 * prevent the interface from being brought up until a valid MAC
+		 * is set.
+		 */
+		dev_err(&pdev->dev, "Invalid MAC address, "
+		                    "interface disabled.\n");
 	}
 	setup_timer(&adapter->watchdog_timer, pch_gbe_watchdog,
 		    (unsigned long)adapter);
-- 
1.7.7.6


