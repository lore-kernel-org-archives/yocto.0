Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6C70E009CA; Tue, 16 Aug 2016 16:10:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 441FEE0043F
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 16:10:09 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 16 Aug 2016 16:10:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,529,1464678000"; d="scan'208";a="749657888"
Received: from chang-s2600cp.jf.intel.com ([10.54.77.22])
	by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2016 16:10:08 -0700
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 16 Aug 2016 16:12:30 -0700
Message-Id: <1471389150-55063-1-git-send-email-jianxun.zhang@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] rmc: fix wrong error message
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
X-List-Received-Date: Tue, 16 Aug 2016 23:10:30 -0000

Signed-off-by: Jianxun Zhang <jianxun.zhang@linux.intel.com>
---
 src/rmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/rmc.c b/src/rmc.c
index 6cf584e..7f63c59 100644
--- a/src/rmc.c
+++ b/src/rmc.c
@@ -112,7 +112,7 @@ static int read_file(const char *pathname, char **data, size_t* len) {
 
     while (byte < total) {
         if ((tmp = read(fd, buf + byte, total - byte)) < 0) {
-            perror("rmc: failed to alloc read buf");
+            perror("rmc: failed to read file");
             free(buf);
             close(fd);
             return 1;
-- 
2.7.4


