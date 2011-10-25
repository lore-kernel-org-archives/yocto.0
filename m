Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35F99E013A3
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 12:18:28 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Oct 2011 12:18:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,405,1315206000"; d="scan'208";a="77543145"
Received: from unknown (HELO localhost) ([10.255.15.57])
	by fmsmga001.fm.intel.com with ESMTP; 25 Oct 2011 12:18:20 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 25 Oct 2011 14:17:39 -0500
Message-Id: <defdd5dfe232a13833c101308e99b8ab1590d5bb.1319552233.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <e5bd0dd3266789e6e107f2b41f0d03e4e2054ce6.1319552233.git.tom.zanussi@intel.com>
References: <e5bd0dd3266789e6e107f2b41f0d03e4e2054ce6.1319552233.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1319552233.git.tom.zanussi@intel.com>
References: <cover.1319552233.git.tom.zanussi@intel.com>
Subject: [PATCH 4/4][KERNEL] meta/common-pc-64: remove igb
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
X-List-Received-Date: Tue, 25 Oct 2011 19:18:28 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

igb shouldn't be included by default in the common-pc-64 base, so
remove it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../kernel-cache/bsp/common-pc-64/common-pc-64.scc |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
index ad01836..2c6b441 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
@@ -4,7 +4,6 @@ kconf hardware common-pc-64-graphics.cfg
 include cfg/boot-live.scc
 
 include features/hpet/hpet.scc
-include features/igb/igb.scc
 include features/intel-e1xxxx/intel-e100.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
 
-- 
1.7.0.4


