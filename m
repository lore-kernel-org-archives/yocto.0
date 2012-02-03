Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C216EE00718
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 14:22:23 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Feb 2012 14:22:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="103061527"
Received: from unknown (HELO localhost) ([10.255.14.106])
	by azsmga001.ch.intel.com with ESMTP; 03 Feb 2012 14:22:22 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Fri,  3 Feb 2012 16:22:03 -0600
Message-Id: <15d941e0ec9b6d27f48c014554b9894587025659.1328307536.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1328307536.git.tom.zanussi@intel.com>
References: <cover.1328307536.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] fri2: use emgd-1.10
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
X-List-Received-Date: Fri, 03 Feb 2012 22:22:24 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Use the yocto/emgd-1.10 branch in place of yocto/emgd.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
index f5eef84..e40622c 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
@@ -1,6 +1,6 @@
 kconf hardware fri2.cfg
 
-git merge yocto/emgd
+git merge yocto/emgd-1.10
 
 include features/eg20t/eg20t.scc
 include features/intel-e1xxxx/intel-e100.scc
-- 
1.7.0.4


