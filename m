Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64EA6E0140F
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 14:38:06 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 May 2012 14:38:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="138378384"
Received: from unknown (HELO localhost) ([10.255.12.248])
	by orsmga001.jf.intel.com with ESMTP; 08 May 2012 14:38:05 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue,  8 May 2012 16:37:59 -0500
Message-Id: <8beb897404e40b387b61159f040aa9d631d9341a.1336510044.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <7c0829132be31ea39b475943ae66230ff9ef9563.1336510043.git.tom.zanussi@intel.com>
References: <7c0829132be31ea39b475943ae66230ff9ef9563.1336510043.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336510043.git.tom.zanussi@intel.com>
References: <cover.1336510043.git.tom.zanussi@intel.com>
Subject: [PATCH 7/9][KERNEL] meta/crownbay: move smp options from recipe-space
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
X-List-Received-Date: Tue, 08 May 2012 21:38:06 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

SMP support was configured in recipe-space, remove it from
recipe-space and move it here.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
index d4299a9..c4bc1a5 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
@@ -10,6 +10,7 @@ include features/hpet/hpet.scc
 include cfg/vesafb.scc
 include cfg/usb-mass-storage.scc
 include cfg/boot-live.scc
+include cfg/smp.scc
 include features/power/intel.scc
 
 include features/logbuf/size-normal.scc
-- 
1.7.0.4


