Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48446E009B1; Tue, 16 Aug 2016 16:09:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDC70E0073D
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 16:09:55 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 16 Aug 2016 16:09:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,529,1464678000"; d="scan'208";a="1015582293"
Received: from chang-s2600cp.jf.intel.com ([10.54.77.22])
	by orsmga001.jf.intel.com with ESMTP; 16 Aug 2016 16:09:55 -0700
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 16 Aug 2016 16:12:14 -0700
Message-Id: <1471389134-55008-1-git-send-email-jianxun.zhang@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] rmc: fix allocating buffer issue in read_file() (32 bit)
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
X-List-Received-Date: Tue, 16 Aug 2016 23:09:56 -0000

Runtime test script failed on T100TA (32 bit) machine because
read_file() function in rmc.c gets a wrong value of st_size from
the buffer returned by stat(). We include rmc header files prior
to the rest of standard header files in rmc.c, so standard data
subsequently defined could be affected by "#pragma pack(1)" in rmc
header files.

Runtime test passes on T100TA and other two boards with this change.

Signed-off-by: Jianxun Zhang <jianxun.zhang@linux.intel.com>
---
 src/rmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/src/rmc.c b/src/rmc.c
index 714ae3a..6cf584e 100644
--- a/src/rmc.c
+++ b/src/rmc.c
@@ -10,8 +10,6 @@
 #include <stdio.h>
 #include <unistd.h>
 #include <ctype.h>
-#include <rmcl.h>
-#include <rsmp.h>
 #include <sys/types.h>
 #include <sys/stat.h>
 #include <fcntl.h>
@@ -20,6 +18,8 @@
 #include <sys/stat.h>
 #include <sys/mman.h>
 
+#include <rmcl.h>
+#include <rsmp.h>
 
 #define USAGE "RMC (Runtime Machine configuration) Tool\n" \
     "NOTE: Most of usages require root permission (sudo)\n" \
-- 
2.7.4


