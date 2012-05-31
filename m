Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 033F0E006D9
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 11:05:04 -0700 (PDT)
Received: by dadz8 with SMTP id z8so2055521dad.35
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 11:05:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=hzNimgySRrzH9+d9WEXiJKr1+OinO10c+dSrOnjoj1w=;
	b=FnvogoSASkIcpSDEn7W8J+IgybNWiRlBWOswiDniGjHOAXycZmv2ZNUsUnGvPhkQqA
	hDsGVW9R525LMl4eLpnERFRRyJ7LjwoIlSCyvUQQ0BdxOWiSCWMJr22tMcVwfuLFXmvz
	gatzlYPFn09siU64Q2w+7qC8tJ7MkpMmUxKRpcAvgwidGwl2V3lwTtvEOLrxqY6+ef38
	0MA/3dvu6Ea8O+z54dmr+G5hFGUCARLff/DPaCB2GhjeukeF3GGkm/pLljMHLQIkAEzb
	ay52KdKbBFfb3sVdT7Df8C4mTyiNtt0JvKzK12X1Dk/Ho0QT9zocfBVWco9FcJx+TmAy
	4drQ==
Received: by 10.68.223.129 with SMTP id qu1mr1662889pbc.165.1338487504778;
	Thu, 31 May 2012 11:05:04 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id ku7sm4887065pbc.31.2012.05.31.11.05.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 May 2012 11:05:04 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Thu, 31 May 2012 11:04:59 -0700
Message-Id: <6b54bf2abd8986403d17eb241bfade352246ab57.1338487192.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1338487192.git.dvhart@linux.intel.com>
References: <cover.1338487192.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1338487192.git.dvhart@linux.intel.com>
References: <cover.1338487192.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQkwtLUILIwD0bWznI3If1aT0sm/GzOmYqxo9glBdingJo1JwdIjg1W3hgT+1MtKT3qQ1XgF
Subject: [PATCH 2/2] [RT] pch_uart: Correct spin_lock and irqsave usage in pch_console_write
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
X-List-Received-Date: Thu, 31 May 2012 18:05:05 -0000

pch_console_write was calling:

    local_irq_save()
        spin_lock(a)
	spin_lock(b)
        ...
        spin_unlock(b)
        spin_unlock(a)
    local_irq_restore()

Which trips the rtmutex debug code:

BUG: sleeping function called from invalid context at kernel/rtmutex.c:646

Update the function to use the _nort versions of local_irq* (thanks Peterz for
the suggestion).

    local_irq_save_nort()
        spin_lock(a)
	spin_lock(b)
        ...
        spin_unlock(b)
        spin_unlock(a)
    local_irq_restore_nort()

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tomoya MORINAGA <tomoya.rohm@gmail.com>
CC: Feng Tang <feng.tang@intel.com>
CC: Alexander Stein <alexander.stein@systec-electronic.com>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: Alan Cox <alan@linux.intel.com>
CC: Steven Rostedt <rostedt@goodmis.org>
CC: Peter Zijlstra <peterz@infradead.org>
CC: linux-serial@vger.kernel.org
---
 drivers/tty/serial/pch_uart.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/pch_uart.c b/drivers/tty/serial/pch_uart.c
index db61d00..9164cef 100644
--- a/drivers/tty/serial/pch_uart.c
+++ b/drivers/tty/serial/pch_uart.c
@@ -1489,7 +1489,7 @@ pch_console_write(struct console *co, const char *s, unsigned int count)
 
 	touch_nmi_watchdog();
 
-	local_irq_save(flags);
+	local_irq_save_nort(flags);
 	spin_lock(&priv->lock);
 	if (priv->port.sysrq) {
 		/* serial8250_handle_port() already took the lock */
@@ -1519,7 +1519,7 @@ pch_console_write(struct console *co, const char *s, unsigned int count)
 	if (locked)
 		spin_unlock(&priv->port.lock);
 	spin_unlock(&priv->lock);
-	local_irq_restore(flags);
+	local_irq_restore_nort(flags);
 
 }
 
-- 
1.7.5.4


