Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4B66E013AE
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 16:00:37 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 16:00:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="116734265"
Received: from unknown (HELO localhost) ([10.7.199.61])
	by orsmga002.jf.intel.com with ESMTP; 01 Mar 2012 16:00:33 -0800
From: Darren Hart <darren@dvhart.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Thu,  1 Mar 2012 15:59:37 -0800
Message-Id: <fb59b041abf760f392572d5a8905782eab9b848c.1330644211.git.darren@dvhart.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1330644211.git.darren@dvhart.com>
References: <cover.1330644211.git.darren@dvhart.com>
In-Reply-To: <cover.1330644211.git.darren@dvhart.com>
References: <cover.1330644211.git.darren@dvhart.com>
Subject: [PATCH 2/5] pch_uart: Use uartclk instead of base_baud
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
X-List-Received-Date: Fri, 02 Mar 2012 00:00:38 -0000

From: Darren Hart <dvhart@linux.intel.com>

The term "base baud" refers to the fastest baud rate the device can communicate
at. This is clock/16. pch_uart is using base_baud as the clock itself. Rename
the variables to be semantically correct.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tomoya MORINAGA <tomoya.rohm@gmail.com>
CC: Feng Tang <feng.tang@intel.com>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: Alan Cox <alan@linux.intel.com>
CC: linux-serial@vger.kernel.org
---
 drivers/tty/serial/pch_uart.c |   24 ++++++++++++------------
 1 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/tty/serial/pch_uart.c b/drivers/tty/serial/pch_uart.c
index de0f613..fd5d6df 100644
--- a/drivers/tty/serial/pch_uart.c
+++ b/drivers/tty/serial/pch_uart.c
@@ -203,7 +203,7 @@ enum {
 
 #define BOTH_EMPTY (UART_LSR_TEMT | UART_LSR_THRE)
 
-#define DEFAULT_BAUD_RATE 1843200 /* 1.8432MHz */
+#define DEFAULT_UARTCLK 1843200 /* 1.8432MHz */
 
 struct pch_uart_buffer {
 	unsigned char *buf;
@@ -218,7 +218,7 @@ struct eg20t_port {
 	unsigned int iobase;
 	struct pci_dev *pdev;
 	int fifo_size;
-	int base_baud;
+	int uartclk;
 	int start_tx;
 	int start_rx;
 	int tx_empty;
@@ -293,7 +293,7 @@ static const int trigger_level_16[4] = { 1, 4, 8, 14 };
 static const int trigger_level_1[4] = { 1, 1, 1, 1 };
 
 static void pch_uart_hal_request(struct pci_dev *pdev, int fifosize,
-				 int base_baud)
+				 int uartclk)
 {
 	struct eg20t_port *priv = pci_get_drvdata(pdev);
 
@@ -332,7 +332,7 @@ static int pch_uart_hal_set_line(struct eg20t_port *priv, int baud,
 	unsigned int dll, dlm, lcr;
 	int div;
 
-	div = DIV_ROUND_CLOSEST(priv->base_baud / 16, baud);
+	div = DIV_ROUND_CLOSEST(priv->uartclk / 16, baud);
 	if (div < 0 || USHRT_MAX <= div) {
 		dev_err(priv->port.dev, "Invalid Baud(div=0x%x)\n", div);
 		return -EINVAL;
@@ -1153,9 +1153,9 @@ static int pch_uart_startup(struct uart_port *port)
 	priv->tx_empty = 1;
 
 	if (port->uartclk)
-		priv->base_baud = port->uartclk;
+		priv->uartclk = port->uartclk;
 	else
-		port->uartclk = priv->base_baud;
+		port->uartclk = priv->uartclk;
 
 	pch_uart_hal_disable_interrupt(priv, PCH_UART_HAL_ALL_INT);
 	ret = pch_uart_hal_set_line(priv, default_baud,
@@ -1507,7 +1507,7 @@ static int __init pch_console_setup(struct console *co, char *options)
 		return -ENODEV;
 
 	/* setup uartclock */
-	port->uartclk = DEFAULT_BAUD_RATE;
+	port->uartclk = DEFAULT_UARTCLK;
 
 	if (options)
 		uart_parse_options(options, &baud, &parity, &bits, &flow);
@@ -1550,7 +1550,7 @@ static struct eg20t_port *pch_uart_init_port(struct pci_dev *pdev,
 	unsigned int iobase;
 	unsigned int mapbase;
 	unsigned char *rxbuf;
-	int fifosize, base_baud;
+	int fifosize, uartclk;
 	int port_type;
 	struct pch_uart_driver_data *board;
 	const char *board_name;
@@ -1566,12 +1566,12 @@ static struct eg20t_port *pch_uart_init_port(struct pci_dev *pdev,
 	if (!rxbuf)
 		goto init_port_free_txbuf;
 
-	base_baud = DEFAULT_BAUD_RATE;
+	uartclk = DEFAULT_UARTCLK;
 
 	/* quirk for CM-iTC board */
 	board_name = dmi_get_system_info(DMI_BOARD_NAME);
 	if (board_name && strstr(board_name, "CM-iTC"))
-		base_baud = 192000000; /* 192.0MHz */
+		uartclk = 192000000; /* 192.0MHz */
 
 	switch (port_type) {
 	case PORT_UNKNOWN:
@@ -1597,7 +1597,7 @@ static struct eg20t_port *pch_uart_init_port(struct pci_dev *pdev,
 	priv->rxbuf.size = PAGE_SIZE;
 
 	priv->fifo_size = fifosize;
-	priv->base_baud = base_baud;
+	priv->uartclk = uartclk;
 	priv->port_type = PORT_MAX_8250 + port_type + 1;
 	priv->port.dev = &pdev->dev;
 	priv->port.iobase = iobase;
@@ -1614,7 +1614,7 @@ static struct eg20t_port *pch_uart_init_port(struct pci_dev *pdev,
 	spin_lock_init(&priv->port.lock);
 
 	pci_set_drvdata(pdev, priv);
-	pch_uart_hal_request(pdev, fifosize, base_baud);
+	pch_uart_hal_request(pdev, fifosize, uartclk);
 
 #ifdef CONFIG_SERIAL_PCH_UART_CONSOLE
 	pch_uart_ports[board->line_no] = priv;
-- 
1.7.6.5


