Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D377E013FD
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 06:59:57 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 28 Oct 2011 06:59:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,418,1315206000"; d="scan'208";a="78971535"
Received: from unknown (HELO localhost) ([10.255.15.170])
	by fmsmga001.fm.intel.com with ESMTP; 28 Oct 2011 06:59:56 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 28 Oct 2011 08:59:49 -0500
Message-Id: <3cf02697e2c7cf03c9f38b4c7d2192c1aceddc56.1319810084.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1319810084.git.tom.zanussi@intel.com>
References: <cover.1319810084.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] meta-romley: Fix BSP description in romley.conf
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
X-List-Received-Date: Fri, 28 Oct 2011 13:59:57 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The description still had a reference to Sugar Bay; this changes it to
Romley.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-romley/conf/machine/romley.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-romley/conf/machine/romley.conf b/meta-romley/conf/machine/romley.conf
index 38bd17a..2dcb5db 100644
--- a/meta-romley/conf/machine/romley.conf
+++ b/meta-romley/conf/machine/romley.conf
@@ -1,7 +1,7 @@
 #@TYPE: Machine
 #@NAME: romley
 
-#@DESCRIPTION: Machine configuration for Sugar Bay systems
+#@DESCRIPTION: Machine configuration for Romley systems
 # i.e. Sandy Bridge + Patsburg Chipset
 
 require conf/machine/include/tune-x86_64.inc
-- 
1.7.0.4


