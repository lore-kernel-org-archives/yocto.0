Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id C61084C80BEE
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2011 18:25:39 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Jul 2011 16:25:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,522,1304319600"; d="scan'208";a="26429892"
Received: from unknown (HELO localhost) ([10.255.13.208])
	by azsmga001.ch.intel.com with ESMTP; 12 Jul 2011 16:25:38 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 12 Jul 2011 18:25:21 -0500
Message-Id: <60d9296ae52ccb0235af1154cd7b4000a1023db9.1310512706.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <d2c6a3d2b150590c146a2409696351f98fabcd35.1310512705.git.tom.zanussi@intel.com>
References: <d2c6a3d2b150590c146a2409696351f98fabcd35.1310512705.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1310512705.git.tom.zanussi@intel.com>
References: <cover.1310512705.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2][KERNEL] meta-fri2: use iwlagn feature
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
X-List-Received-Date: Tue, 12 Jul 2011 23:25:40 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Make use of the Intel wireless support for the Intel 6205 ABGN.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
index eca5cab..6ac0bfb 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
@@ -5,6 +5,7 @@ include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/dmaengine/dmaengine.scc
 include features/serial/8250.scc
 include features/ericsson-3g/f5521gw.scc
+include features/iwlagn/iwlagn.scc
 
 include features/logbuf/size-normal.scc
 
-- 
1.7.0.4


