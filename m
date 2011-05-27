Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A44144C80AC1
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:46:37 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 May 2011 13:46:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; d="scan'208";a="10112291"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by fmsmga001.fm.intel.com with ESMTP; 27 May 2011 13:46:36 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Fri, 27 May 2011 15:45:08 -0500
Message-Id: <6de12cf48cef48ffc88e26534612bd09224aad77.1306509168.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
References: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306509168.git.tom.zanussi@intel.com>
References: <cover.1306509168.git.tom.zanussi@intel.com>
Subject: [PATCH 14/14][KERNEL] meta: add romley features
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
X-List-Received-Date: Fri, 27 May 2011 20:46:37 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add uio, ixgbe, e1xxx and hugetlb features to romley bsp.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/romley/romley.scc |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/romley/romley.scc b/meta/cfg/kernel-cache/bsp/romley/romley.scc
index 1c4a657..411fe09 100644
--- a/meta/cfg/kernel-cache/bsp/romley/romley.scc
+++ b/meta/cfg/kernel-cache/bsp/romley/romley.scc
@@ -2,6 +2,10 @@ kconf hardware romley.cfg
 
 include features/i915/i915.scc
 include features/serial/8250.scc
+include features/uio/uio.scc
+include features/hugetlb/hugetlb.scc
+include features/intel-e1xxxx/e1xxxx.scc
+include features/ixgbe/ixgbe.scc
 
 include features/logbuf/size-normal.scc
 
-- 
1.7.0.4


