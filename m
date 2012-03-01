Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96AABE013AF
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 16:00:37 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 16:00:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="116733503"
Received: from unknown (HELO localhost) ([10.7.199.61])
	by orsmga002.jf.intel.com with ESMTP; 01 Mar 2012 15:59:43 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Thu,  1 Mar 2012 15:58:42 -0800
Message-Id: <10a35a7d54bb54c25ecd74615a9350333b77dd21.1330643860.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1330643860.git.dvhart@linux.intel.com>
References: <cover.1330643860.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1330643860.git.dvhart@linux.intel.com>
References: <cover.1330643860.git.dvhart@linux.intel.com>
Subject: [PATCH 01/11] pch_uart: add missing comment about OKI ML7223
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

From: Alexander Stein <alexander.stein@systec-electronic.com>

commit bff52fd458a1bca06266449b0ab8a43e9a50d240 upstream.

Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
Reviewed-by: Jesper Juhl <jj@chaosbits.net>
Signed-off-by: Greg Kroah-Hartman <gregkh@suse.de>
---
 drivers/tty/serial/pch_uart.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/drivers/tty/serial/pch_uart.c b/drivers/tty/serial/pch_uart.c
index 902588b..394d35a 100644
--- a/drivers/tty/serial/pch_uart.c
+++ b/drivers/tty/serial/pch_uart.c
@@ -44,6 +44,7 @@ enum {
 /* Set the max number of UART port
  * Intel EG20T PCH: 4 port
  * OKI SEMICONDUCTOR ML7213 IOH: 3 port
+ * OKI SEMICONDUCTOR ML7223 IOH: 2 port
 */
 #define PCH_UART_NR	4
 
-- 
1.7.6.5


