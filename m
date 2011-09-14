Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDF7CE006DD
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2011 22:41:30 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Sep 2011 22:41:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="48195076"
Received: from unknown (HELO localhost) ([10.255.14.200])
	by orsmga001.jf.intel.com with ESMTP; 13 Sep 2011 22:41:28 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 14 Sep 2011 00:41:08 -0500
Message-Id: <28012eed7b8de36fe3a36a6276c55aa1e1d4f7bb.1315977970.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <c081ed51d8ba76c293bcd2afdad8cbfef556cf49.1315977970.git.tom.zanussi@intel.com>
References: <c081ed51d8ba76c293bcd2afdad8cbfef556cf49.1315977970.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1315977969.git.tom.zanussi@intel.com>
References: <cover.1315977969.git.tom.zanussi@intel.com>
Subject: [PATCH 4/5] meta-sugarbay: prefer grub 1.99
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
X-List-Received-Date: Thu, 15 Sep 2011 03:50:27 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Switch from grub 1.98 to 1.99

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-sugarbay/conf/machine/sugarbay.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index ea8d98a..f3e6c35 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -39,4 +39,4 @@ GLIBC_EXTRA_OECONF = "--with-tls"
 
 MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
 
-PREFERRED_VERSION_grub ?= "1.98"
+PREFERRED_VERSION_grub ?= "1.99"
-- 
1.7.0.4


