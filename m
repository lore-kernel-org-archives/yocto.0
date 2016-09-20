Return-Path: <edwin.plauchu.camacho@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C28D9E00B5F; Tue, 20 Sep 2016 08:58:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70E34E00B48
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 08:58:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Sep 2016 08:58:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,368,1470726000"; d="scan'208";a="1053891075"
Received: from pianodaemon-contraption.zpn.intel.com ([10.219.128.75])
	by orsmga002.jf.intel.com with ESMTP; 20 Sep 2016 08:58:16 -0700
From: Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 20 Sep 2016 10:59:26 -0500
Message-Id: <20160920155926.20467-1-edwin.plauchu.camacho@linux.intel.com>
X-Mailer: git-send-email 2.9.3
X-Mailman-Approved-At: Wed, 21 Sep 2016 07:54:27 -0700
Cc: Edwin Plauchu <edwin.plauchu.camacho@intel.com>
Subject: [ptest-runner][PATCH] Added error coverage to support when launching child process fails.
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
X-List-Received-Date: Tue, 20 Sep 2016 15:58:18 -0000

From: Edwin Plauchu <edwin.plauchu.camacho@intel.com>

[YOCTO #9752]

Signed-off-by: Edwin Plauchu <edwin.plauchu.camacho@intel.com>
---
 utils.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/utils.c b/utils.c
index 6991af1..2ebfb04 100644
--- a/utils.c
+++ b/utils.c
@@ -249,7 +249,7 @@ run_child(char *run_ptest, int fd_stdout, int fd_stderr)
 	dup2(fd_stderr, STDERR_FILENO);
 	execv(run_ptest, argv);
 
-	exit(0);
+	exit(1);
 }
 
 static inline int
@@ -336,6 +336,7 @@ run_ptests(struct ptest_list *head, int timeout, const char *progname,
 
 			child = fork();
 			if (child == -1) {
+				fprintf(stderr, "ERROR: Fork fatal\n");
 				rc = -1;
 				break;
 			} else if (child == 0) {
@@ -351,6 +352,7 @@ run_ptests(struct ptest_list *head, int timeout, const char *progname,
 				status = wait_child(ptest_dir, p->run_ptest, child,
 						timeout, fds, fps);
 				if (status)
+					fprintf(stderr, "ERROR: Program child error\n");
 					rc += 1;
 
 				fprintf(fp, "END: %s\n", ptest_dir);
-- 
2.9.3


