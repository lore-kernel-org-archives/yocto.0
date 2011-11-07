Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07549E01376
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 07:56:24 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Nov 2011 07:56:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="71956191"
Received: from unknown (HELO localhost) ([10.255.15.253])
	by orsmga001.jf.intel.com with ESMTP; 07 Nov 2011 07:56:24 -0800
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Mon,  7 Nov 2011 09:56:53 -0600
Message-Id: <30e1c0f31e6b1dd079f651d26c9decc3a1c4462c.1320637311.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3cf438aafc41692895a077d01895cc7b9244479d.1320637311.git.tom.zanussi@intel.com>
References: <3cf438aafc41692895a077d01895cc7b9244479d.1320637311.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1320637311.git.tom.zanussi@intel.com>
References: <cover.1320637311.git.tom.zanussi@intel.com>
Subject: [PATCH 2/4][KERNEL] meta/fri2: use power/intel feature
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
X-List-Received-Date: Mon, 07 Nov 2011 15:56:25 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Have fri2 use more power-friendly settings.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
index d44cd68..f5eef84 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
@@ -13,6 +13,7 @@ include features/iwlagn/iwlagn.scc
 include features/framebuffer/vesafb.scc
 include cfg/usb-mass-storage.scc
 include cfg/boot-live.scc
+include features/power/intel.scc
 
 include features/logbuf/size-normal.scc
 
-- 
1.7.0.4


