Return-Path: <darren@apps.dvhart.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC827E013D4
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 11:05:03 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id rq8so2284515pbb.35
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 11:05:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=wiosuQ1GEEyTD660AGbdXXEzVsDvs9N6jIH15hM571M=;
	b=l54G+EtlsQQTQNPDNhDVmLtnylIbKnlYl8W3Ii0xmnRwgmVQEdnqW8Ba8IdMW9ls2I
	e0g5G9bABywuWd2mSwetz9EwHlRZn5b8sYDSmODi8WQkyiozdO08rGntQeONAvXTeYR9
	FrKO4h7Gql5/MVrxoRaHUrKoR/rCj47TsYLcTvwWiYvqToaqEj8lWV9gcyb7VnTsNN8h
	EWbLBhrxjltlGU7DuoQ4mUiCMg5DbvAvqVLiZ12yvPAlTQgYxNzVSqeCqi5VsJkl4aB7
	QVb84zl/iqhYcefR6xTlDSBU0Zr96alZwNGwZu4nusNXuzQJH+EKajCSepEGlcE1ZSPy
	mDyQ==
Received: by 10.68.227.5 with SMTP id rw5mr2205215pbc.32.1338487503465;
	Thu, 31 May 2012 11:05:03 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id ph1sm4880814pbb.45.2012.05.31.11.05.02
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 May 2012 11:05:03 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Thu, 31 May 2012 11:04:58 -0700
Message-Id: <869c4af006da658351a29a15867ed5b0310904b2.1338487192.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1338487192.git.dvhart@linux.intel.com>
References: <cover.1338487192.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1338487192.git.dvhart@linux.intel.com>
References: <cover.1338487192.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQmCXfbwOqgiwxEJrHayunPoXomiN4IGIUNswzUOSwVlp5Ikl57KLNO2OVxFw/iJBDqJeY5P
Subject: [PATCH 1/2] pch_uart: Add eg20t_port lock field, avoid recursive spinlocks
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
X-List-Received-Date: Thu, 31 May 2012 18:05:03 -0000

pch_uart_interrupt() takes priv->port.lock which leads to two recursive
spinlock calls if low_latency==1 or CONFIG_PREEMPT_RT_FULL=y (one
otherwise):

pch_uart_interrupt
  spin_lock_irqsave(priv->port.lock, flags)
  case PCH_UART_IID_RDR_TO (data ready)
  handle_rx_to
    push_rx
      tty_port_tty_get
        spin_lock_irqsave(&port->lock, flags) <--- already hold this lock
        ...
      tty_flip_buffer_push
        ...
        flush_to_ldisc
          spin_lock_irqsave(&tty->buf.lock)
            spin_lock_irqsave(&tty->buf.lock)
            disc->ops->receive_buf(tty, char_buf)
              n_tty_receive_buf
                tty->ops->flush_chars()
                uart_flush_chars
                  uart_start
                    spin_lock_irqsave(&port->lock) <--- already hold this lock

Avoid this by using a dedicated lock to protect the eg20t_port structure
and IO access to its membase. This is more consistent with the 8250
driver.  Ensure priv->lock is always take prior to priv->port.lock when
taken at the same time.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tomoya MORINAGA <tomoya.rohm@gmail.com>
CC: Feng Tang <feng.tang@intel.com>
CC: Alexander Stein <alexander.stein@systec-electronic.com>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: Alan Cox <alan@linux.intel.com>
CC: linux-serial@vger.kernel.org
---
 drivers/tty/serial/pch_uart.c |   22 ++++++++++++++++------
 1 files changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/tty/serial/pch_uart.c b/drivers/tty/serial/pch_uart.c
index 565e099..db61d00 100644
--- a/drivers/tty/serial/pch_uart.c
+++ b/drivers/tty/serial/pch_uart.c
@@ -246,6 +246,8 @@ struct eg20t_port {
 	int				tx_dma_use;
 	void				*rx_buf_virt;
 	dma_addr_t			rx_buf_dma;
+	/* protect the eg20t_port private structure and io access to membase */
+	spinlock_t lock;
 };
 
 /**
@@ -999,7 +1001,7 @@ static irqreturn_t pch_uart_interrupt(int irq, void *dev_id)
 	unsigned int iid;
 	unsigned long flags;
 
-	spin_lock_irqsave(&priv->port.lock, flags);
+	spin_lock_irqsave(&priv->lock, flags);
 	handled = 0;
 	while ((iid = pch_uart_hal_get_iid(priv)) > 1) {
 		switch (iid) {
@@ -1050,7 +1052,7 @@ static irqreturn_t pch_uart_interrupt(int irq, void *dev_id)
 			priv->int_dis_flag = 0;
 	}
 
-	spin_unlock_irqrestore(&priv->port.lock, flags);
+	spin_unlock_irqrestore(&priv->lock, flags);
 	return IRQ_RETVAL(handled);
 }
 
@@ -1163,9 +1165,9 @@ static void pch_uart_break_ctl(struct uart_port *port, int ctl)
 	unsigned long flags;
 
 	priv = container_of(port, struct eg20t_port, port);
-	spin_lock_irqsave(&port->lock, flags);
+	spin_lock_irqsave(&priv->lock, flags);
 	pch_uart_hal_set_break(priv, ctl);
-	spin_unlock_irqrestore(&port->lock, flags);
+	spin_unlock_irqrestore(&priv->lock, flags);
 }
 
 /* Grab any interrupt resources and initialise any low level driver state. */
@@ -1314,7 +1316,8 @@ static void pch_uart_set_termios(struct uart_port *port,
 
 	baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk / 16);
 
-	spin_lock_irqsave(&port->lock, flags);
+	spin_lock_irqsave(&priv->lock, flags);
+	spin_lock(&port->lock);
 
 	uart_update_timeout(port, termios->c_cflag, baud);
 	rtn = pch_uart_hal_set_line(priv, baud, parity, bits, stb);
@@ -1327,7 +1330,8 @@ static void pch_uart_set_termios(struct uart_port *port,
 		tty_termios_encode_baud_rate(termios, baud, baud);
 
 out:
-	spin_unlock_irqrestore(&port->lock, flags);
+	spin_unlock(&port->lock);
+	spin_unlock_irqrestore(&priv->lock, flags);
 }
 
 static const char *pch_uart_type(struct uart_port *port)
@@ -1486,6 +1490,7 @@ pch_console_write(struct console *co, const char *s, unsigned int count)
 	touch_nmi_watchdog();
 
 	local_irq_save(flags);
+	spin_lock(&priv->lock);
 	if (priv->port.sysrq) {
 		/* serial8250_handle_port() already took the lock */
 		locked = 0;
@@ -1494,6 +1499,7 @@ pch_console_write(struct console *co, const char *s, unsigned int count)
 	} else
 		spin_lock(&priv->port.lock);
 
+
 	/*
 	 *	First save the IER then disable the interrupts
 	 */
@@ -1512,7 +1518,9 @@ pch_console_write(struct console *co, const char *s, unsigned int count)
 
 	if (locked)
 		spin_unlock(&priv->port.lock);
+	spin_unlock(&priv->lock);
 	local_irq_restore(flags);
+
 }
 
 static int __init pch_console_setup(struct console *co, char *options)
@@ -1608,6 +1616,8 @@ static struct eg20t_port *pch_uart_init_port(struct pci_dev *pdev,
 	pci_enable_msi(pdev);
 	pci_set_master(pdev);
 
+	spin_lock_init(&priv->lock);
+
 	iobase = pci_resource_start(pdev, 0);
 	mapbase = pci_resource_start(pdev, 1);
 	priv->mapbase = mapbase;
-- 
1.7.5.4


