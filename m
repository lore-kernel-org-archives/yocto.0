Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8BA2E013AE
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 16:00:37 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 16:00:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="116733509"
Received: from unknown (HELO localhost) ([10.7.199.61])
	by orsmga002.jf.intel.com with ESMTP; 01 Mar 2012 15:59:43 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Thu,  1 Mar 2012 15:58:48 -0800
Message-Id: <715019228a939662948f58fc0b41058e06a9af8e.1330643860.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1330643860.git.dvhart@linux.intel.com>
References: <cover.1330643860.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1330643860.git.dvhart@linux.intel.com>
References: <cover.1330643860.git.dvhart@linux.intel.com>
MIME-Version: 1.0
Subject: [PATCH 07/11] serial/pch: use global div helper instead of creating a private one
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
X-List-Received-Date: Fri, 02 Mar 2012 00:00:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>

commit 0e2adc06843a9b5a28af4ca5f796240297907897 upstream.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
Acked-by: Alan Cox  <alan@linux.intel.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@suse.de>
---
 drivers/tty/serial/pch_uart.c |    5 ++---
 1 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/pch_uart.c b/drivers/tty/serial/pch_uart.c
index bd829dd..de0f613 100644
--- a/drivers/tty/serial/pch_uart.c
+++ b/drivers/tty/serial/pch_uart.c
@@ -14,6 +14,7 @@
  *along with this program; if not, write to the Free Software
  *Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307, USA.
  */
+#include <linux/kernel.h>
 #include <linux/serial_reg.h>
 #include <linux/slab.h>
 #include <linux/module.h>
@@ -143,8 +144,6 @@ enum {
 #define PCH_UART_DLL		0x00
 #define PCH_UART_DLM		0x01
 
-#define DIV_ROUND(a, b)	(((a) + ((b)/2)) / (b))
-
 #define PCH_UART_IID_RLS	(PCH_UART_IIR_REI)
 #define PCH_UART_IID_RDR	(PCH_UART_IIR_RRI)
 #define PCH_UART_IID_RDR_TO	(PCH_UART_IIR_RRI | PCH_UART_IIR_TOI)
@@ -333,7 +332,7 @@ static int pch_uart_hal_set_line(struct eg20t_port *priv, int baud,
 	unsigned int dll, dlm, lcr;
 	int div;
 
-	div = DIV_ROUND(priv->base_baud / 16, baud);
+	div = DIV_ROUND_CLOSEST(priv->base_baud / 16, baud);
 	if (div < 0 || USHRT_MAX <= div) {
 		dev_err(priv->port.dev, "Invalid Baud(div=0x%x)\n", div);
 		return -EINVAL;
-- 
1.7.6.5


