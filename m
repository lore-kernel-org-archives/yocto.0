Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32482E013AF
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 16:00:46 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 16:00:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="113647318"
Received: from unknown (HELO localhost) ([10.7.199.61])
	by orsmga001.jf.intel.com with ESMTP; 01 Mar 2012 16:00:45 -0800
From: Darren Hart <darren@dvhart.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Thu,  1 Mar 2012 15:59:53 -0800
Message-Id: <9e7d52880d843dc06d2462c192fa4a55eb797b35.1330644090.git.darren@dvhart.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1330644090.git.darren@dvhart.com>
References: <cover.1330644090.git.darren@dvhart.com>
In-Reply-To: <cover.1330644090.git.darren@dvhart.com>
References: <cover.1330644090.git.darren@dvhart.com>
Subject: [PATCH 3/6] fri2: Drop 8250 from the fri2 scc
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
X-List-Received-Date: Fri, 02 Mar 2012 00:00:46 -0000

From: Darren Hart <dvhart@linux.intel.com>

The FRI2 has a pch_uart. Depending on the firmware, the kernel may
decide to use the 8250 or the pch_uart driver. As the firmware
configures the pch_uart with a non-standard UART clock, it is
necessary to ensure the pch_uart is used. To do this, drop the 8250
support from the kernel.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
index 419bb8d..2dd3170 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
@@ -4,8 +4,7 @@ include features/eg20t/eg20t.scc
 include features/intel-e1xxxx/intel-e100.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/drm-emgd/drm-emgd.scc
-include cfg/dmaengine.scc
-include features/serial/8250.scc
+include cfg/dmaengine/dmaengine.scc
 include features/ericsson-3g/f5521gw.scc
 include features/iwlagn/iwlagn.scc
 include cfg/vesafb.scc
-- 
1.7.6.5


