Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C2BFE0135B
	for <yocto@yoctoproject.org>; Mon,  2 Jan 2012 11:31:54 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Jan 2012 11:31:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="108020812"
Received: from unknown (HELO localhost) ([10.255.13.35])
	by fmsmga002.fm.intel.com with ESMTP; 02 Jan 2012 11:31:53 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Mon,  2 Jan 2012 13:31:55 -0600
Message-Id: <69ec2c0e0ebd1df160a4e40945fdcc66772fa3c7.1325522900.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1325522900.git.tom.zanussi@intel.com>
References: <cover.1325522900.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1][KERNEL] crownbay: use emgd-1.10
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
X-List-Received-Date: Mon, 02 Jan 2012 19:31:54 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Use the yocto/emgd-1.10 branch in place of yocto/emgd.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
index fb761a0..60a3755 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
@@ -1,6 +1,6 @@
 kconf hardware crownbay.cfg
 
-git merge yocto/emgd
+git merge yocto/emgd-1.10
 
 include features/eg20t/eg20t.scc
 include features/intel-e1xxxx/intel-e100.scc
-- 
1.7.0.4


