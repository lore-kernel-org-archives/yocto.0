Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAEACE00CBE; Fri, 26 Aug 2016 15:42:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 628D6E00CB6
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2016 15:42:40 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 26 Aug 2016 15:42:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,583,1464678000"; d="scan'208";a="1042088844"
Received: from chang-s2600cp.jf.intel.com ([10.54.77.22])
	by orsmga002.jf.intel.com with ESMTP; 26 Aug 2016 15:42:39 -0700
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 26 Aug 2016 15:45:02 -0700
Message-Id: <1472251502-16136-1-git-send-email-jianxun.zhang@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] Makefile: remove static linking in Linux build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 26 Aug 2016 22:42:40 -0000

The removed static linking was for a desire to make rmc run
on systems where c libraries are not provided.

But it is nothing wrong to dynamically link rmc with libraries.
We also don't have to hardcode the way of linking in Makefile
since people can specify it in RMC_CFLAGS passed to make command.

Signed-off-by: Jianxun Zhang <jianxun.zhang@linux.intel.com>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index e873af6..f152829 100644
--- a/Makefile
+++ b/Makefile
@@ -17,7 +17,7 @@ RMC_INSTALL_BIN_PATH := $(RMC_INSTALL_PREFIX)/bin/
 
 ALL_OBJS := $(RMC_TOOL_OBJ) $(RMCL_OBJ) $(RSMP_OBJ)
 
-CFLAGS := -static -Wall -O2 -Iinc $(RMC_CFLAGS)
+CFLAGS := -Wall -O2 -Iinc $(RMC_CFLAGS)
 
 all: rmc librmcl librsmp
 
-- 
2.7.4


