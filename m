Return-Path: <shane.wang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93361E004D2
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2012 01:58:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Apr 2012 01:58:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="127713706"
Received: from yocto-build5.sh.intel.com (HELO localhost) ([10.239.48.3])
	by orsmga002.jf.intel.com with ESMTP; 02 Apr 2012 01:58:57 -0700
From: Shane Wang <shane.wang@intel.com>
To: yocto@yoctoproject.org
Date: Mon,  2 Apr 2012 17:23:25 +0800
Message-Id: <5d0a3fc2ba2b0ba509a50dffcdaee298f1ac0e9d.1333358047.git.shane.wang@intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1333358047.git.shane.wang@intel.com>
References: <cover.1333358047.git.shane.wang@intel.com>
Subject: [PATCH 1/1] meta-yocto/local.conf.sample: change = to ?= for BB_NUMBER_THREADS and PARALLEL_MAKE
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
X-List-Received-Date: Mon, 02 Apr 2012 08:58:58 -0000

In the current local.conf, BB_NUMBER_THREADS and PARALLEL_MAKE are assigned
by '=', which overwrites the values set from the Hob. To avoid that, use '?='
instead.

[Yocto #2210]

Signed-off-by: Shane Wang <shane.wang@intel.com>
---
 meta-yocto/conf/local.conf.sample |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 38507e3..a4a8192 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -17,12 +17,12 @@
 # These two options control how much parallelism BitBake should use. The first 
 # option determines how many tasks bitbake should run in parallel:
 #
-#BB_NUMBER_THREADS = "4"
+#BB_NUMBER_THREADS ?= "4"
 # 
 # The second option controls how many processes make should run in parallel when
 # running compile tasks:
 #
-#PARALLEL_MAKE = "-j 4"
+#PARALLEL_MAKE ?= "-j 4"
 #
 # For a quad-core machine, BB_NUMBER_THREADS = "4", PARALLEL_MAKE = "-j 4" would
 # be appropriate for example.
-- 
1.7.6


