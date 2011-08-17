Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5118FE0121B
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 09:50:02 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 17 Aug 2011 09:50:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,240,1312182000"; 
   d="scan'208";a="8190385"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by AZSMGA002.ch.intel.com with ESMTP; 17 Aug 2011 09:50:11 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Wed, 17 Aug 2011 11:50:14 -0500
Message-Id: <49c96ae040bb44f4d0d699d35fd0bded1e909550.1313598858.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <0fdd02a74ec09889077473c5c2b6423f0d5ce758.1313598858.git.tom.zanussi@intel.com>
References: <0fdd02a74ec09889077473c5c2b6423f0d5ce758.1313598858.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1313598858.git.tom.zanussi@intel.com>
References: <cover.1313598858.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2][KERNEL] bsp/fri2: use EMGD feature
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
X-List-Received-Date: Wed, 17 Aug 2011 16:50:02 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add kernel options needed for enabling EMGD.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
index a87ce7e..2d30049 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
@@ -4,6 +4,7 @@ git merge yocto/emgd
 
 include features/eg20t/eg20t.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
+include features/drm-emgd/drm-emgd.scc
 include features/dmaengine/dmaengine.scc
 include features/serial/8250.scc
 include features/ericsson-3g/f5521gw.scc
-- 
1.7.0.4


