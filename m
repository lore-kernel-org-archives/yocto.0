Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB0DFE0030B
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 16:00:30 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 16:00:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="113646822"
Received: from unknown (HELO localhost) ([10.7.199.61])
	by orsmga001.jf.intel.com with ESMTP; 01 Mar 2012 15:59:43 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Thu,  1 Mar 2012 15:58:46 -0800
Message-Id: <19ae9a80769b6b678aa79166e055eb6bc74cf139.1330643860.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1330643860.git.dvhart@linux.intel.com>
References: <cover.1330643860.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1330643860.git.dvhart@linux.intel.com>
References: <cover.1330643860.git.dvhart@linux.intel.com>
Subject: [PATCH 05/11] pch_uart: Add MSI support
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
X-List-Received-Date: Fri, 02 Mar 2012 00:00:31 -0000

From: Alexander Stein <alexander.stein@systec-electronic.com>

commit e463595fd9c752fa4bf06b47df93ef9ade3c7cf0 upstream.

Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@suse.de>
---
 drivers/tty/serial/pch_uart.c |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/drivers/tty/serial/pch_uart.c b/drivers/tty/serial/pch_uart.c
index 81d262e..c124011 100644
--- a/drivers/tty/serial/pch_uart.c
+++ b/drivers/tty/serial/pch_uart.c
@@ -1438,6 +1438,8 @@ static struct eg20t_port *pch_uart_init_port(struct pci_dev *pdev,
 		goto init_port_hal_free;
 	}
 
+	pci_enable_msi(pdev);
+
 	iobase = pci_resource_start(pdev, 0);
 	mapbase = pci_resource_start(pdev, 1);
 	priv->mapbase = mapbase;
@@ -1494,6 +1496,8 @@ static void pch_uart_pci_remove(struct pci_dev *pdev)
 	struct eg20t_port *priv;
 
 	priv = (struct eg20t_port *)pci_get_drvdata(pdev);
+
+	pci_disable_msi(pdev);
 	pch_uart_exit_port(priv);
 	pci_disable_device(pdev);
 	kfree(priv);
@@ -1581,6 +1585,7 @@ static int __devinit pch_uart_pci_probe(struct pci_dev *pdev,
 	return ret;
 
 probe_disable_device:
+	pci_disable_msi(pdev);
 	pci_disable_device(pdev);
 probe_error:
 	return ret;
-- 
1.7.6.5


