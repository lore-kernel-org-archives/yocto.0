Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B9C1E013BF
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 16:00:38 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 16:00:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="116733794"
Received: from unknown (HELO localhost) ([10.7.199.61])
	by orsmga002.jf.intel.com with ESMTP; 01 Mar 2012 16:00:07 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Thu,  1 Mar 2012 15:59:16 -0800
Message-Id: <2880d3bc6dc0b7a8c8f6c83a4dcae423d5d46462.1330643786.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1330643786.git.dvhart@linux.intel.com>
References: <cover.1330643786.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1330643786.git.dvhart@linux.intel.com>
References: <cover.1330643786.git.dvhart@linux.intel.com>
Subject: [PATCH 2/3] eg20t: Enable serial console for the pch_uart
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

The FRI2 uses the pch_uart driver for the serial console. Enable the console
driver.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/cfg/kernel-cache/features/eg20t/eg20t.cfg |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg b/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
index d579e00..a572bf2 100644
--- a/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
+++ b/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
@@ -3,6 +3,7 @@
 CONFIG_PCH_DMA=y
 
 CONFIG_SERIAL_PCH_UART=y
+CONFIG_SERIAL_PCH_UART_CONSOLE=y
 CONFIG_SERIAL_CORE=y
 
 CONFIG_SPI=y
-- 
1.7.6.5


