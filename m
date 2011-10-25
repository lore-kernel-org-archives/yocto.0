Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D664E013A2
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 12:18:24 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Oct 2011 12:18:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,405,1315206000"; d="scan'208";a="77543087"
Received: from unknown (HELO localhost) ([10.255.15.57])
	by fmsmga001.fm.intel.com with ESMTP; 25 Oct 2011 12:18:16 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 25 Oct 2011 14:17:37 -0500
Message-Id: <2b8b36f0c65d5220d947267c72860032ee2770cb.1319552233.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <e5bd0dd3266789e6e107f2b41f0d03e4e2054ce6.1319552233.git.tom.zanussi@intel.com>
References: <e5bd0dd3266789e6e107f2b41f0d03e4e2054ce6.1319552233.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1319552233.git.tom.zanussi@intel.com>
References: <cover.1319552233.git.tom.zanussi@intel.com>
Subject: [PATCH 2/4][KERNEL] meta/sugarbay: use power/intel feature
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
X-List-Received-Date: Tue, 25 Oct 2011 19:18:24 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Have sugarbay use more power-friendly settings.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
index 77f51bd..dc107c3 100644
--- a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
+++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
@@ -3,6 +3,7 @@ kconf hardware sugarbay.cfg
 include features/i915/i915.scc
 include features/serial/8250.scc
 include cfg/usb-mass-storage.scc
+include features/power/intel.scc
 
 include features/logbuf/size-normal.scc
 
-- 
1.7.0.4


