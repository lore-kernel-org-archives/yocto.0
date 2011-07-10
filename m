Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id B3A844C80A4D
	for <yocto@yoctoproject.org>; Sun, 10 Jul 2011 11:26:11 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Jul 2011 09:26:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,509,1304319600"; d="scan'208";a="25408238"
Received: from unknown (HELO localhost) ([10.255.13.195])
	by azsmga001.ch.intel.com with ESMTP; 10 Jul 2011 09:26:08 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sun, 10 Jul 2011 11:26:05 -0500
Message-Id: <a2a1effbe31417a432d10a2e2f8f8f089e43408a.1310314387.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <8b824f53292e21ccb9de938b2c115adf0a9b1aa0.1310314387.git.tom.zanussi@intel.com>
References: <8b824f53292e21ccb9de938b2c115adf0a9b1aa0.1310314387.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1310314386.git.tom.zanussi@intel.com>
References: <cover.1310314386.git.tom.zanussi@intel.com>
Subject: [PATCH 2/3][KERNEL] meta/crownbay: remove eg20t.cfg and use new eg20t feature instead
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
X-List-Received-Date: Sun, 10 Jul 2011 16:26:12 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
index 8543d4c..09ecf3b 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
@@ -1,8 +1,8 @@
 kconf hardware crownbay.cfg
-kconf hardware eg20t.cfg
 
 git merge yocto/emgd
 
+include features/eg20t/eg20t.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/drm-emgd/drm-emgd.scc
 include features/dmaengine/dmaengine.scc
-- 
1.7.0.4


