Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 941A1E0030B
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 16:00:30 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 16:00:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="113646816"
Received: from unknown (HELO localhost) ([10.7.199.61])
	by orsmga001.jf.intel.com with ESMTP; 01 Mar 2012 15:59:43 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Thu,  1 Mar 2012 15:58:43 -0800
Message-Id: <433fa0248e57f6acf8c09383b04449d01159c9dc.1330643860.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1330643860.git.dvhart@linux.intel.com>
References: <cover.1330643860.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1330643860.git.dvhart@linux.intel.com>
References: <cover.1330643860.git.dvhart@linux.intel.com>
Subject: [PATCH 02/11] pch_uart: Set PCIe bus number using probe parameter
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
X-List-Received-Date: Fri, 02 Mar 2012 00:00:30 -0000

From: Tomoya MORINAGA <tomoya-linux@dsn.okisemi.com>

commit 6c4b47d243112e98811ce0da7bbb32cc3857dd1a upstream.

Currently, PCIe bus number is set as fixed value "2".
However, PCIe bus number is not always "2".
This patch sets bus number using probe() parameter.

Signed-off-by: Tomoya MORINAGA <tomoya-linux@dsn.okisemi.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@suse.de>
---
 drivers/tty/serial/pch_uart.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/drivers/tty/serial/pch_uart.c b/drivers/tty/serial/pch_uart.c
index 394d35a..eb676a0 100644
--- a/drivers/tty/serial/pch_uart.c
+++ b/drivers/tty/serial/pch_uart.c
@@ -603,7 +603,8 @@ static void pch_request_dma(struct uart_port *port)
 	dma_cap_zero(mask);
 	dma_cap_set(DMA_SLAVE, mask);
 
-	dma_dev = pci_get_bus_and_slot(2, PCI_DEVFN(0xa, 0)); /* Get DMA's dev
+	dma_dev = pci_get_bus_and_slot(priv->pdev->bus->number,
+				       PCI_DEVFN(0xa, 0)); /* Get DMA's dev
 								information */
 	/* Set Tx DMA */
 	param = &priv->param_tx;
-- 
1.7.6.5


