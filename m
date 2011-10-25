Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FADDE01398
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 12:18:19 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Oct 2011 12:18:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="67379311"
Received: from unknown (HELO localhost) ([10.255.15.57])
	by orsmga001.jf.intel.com with ESMTP; 25 Oct 2011 12:18:18 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 25 Oct 2011 14:17:38 -0500
Message-Id: <47e2891b5a500076f49bc564949bfb2de979f6b6.1319552233.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <e5bd0dd3266789e6e107f2b41f0d03e4e2054ce6.1319552233.git.tom.zanussi@intel.com>
References: <e5bd0dd3266789e6e107f2b41f0d03e4e2054ce6.1319552233.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1319552233.git.tom.zanussi@intel.com>
References: <cover.1319552233.git.tom.zanussi@intel.com>
Subject: [PATCH 3/4][KERNEL] meta/crownbay: use power/intel feature
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
X-List-Received-Date: Tue, 25 Oct 2011 19:18:19 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Have crownbay use more power-friendly settings.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
index 391b955..fb761a0 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
@@ -12,6 +12,7 @@ include features/hpet/hpet.scc
 include features/framebuffer/vesafb.scc
 include cfg/usb-mass-storage.scc
 include cfg/boot-live.scc
+include features/power/intel.scc
 
 include features/logbuf/size-normal.scc
 
-- 
1.7.0.4


