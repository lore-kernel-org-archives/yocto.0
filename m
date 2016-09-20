Return-Path: <edwin.plauchu.camacho@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99E11E00B74; Tue, 20 Sep 2016 09:25:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F4E3E00B52
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 09:25:14 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga103.jf.intel.com with ESMTP; 20 Sep 2016 09:25:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,368,1470726000"; d="scan'208";a="11457814"
Received: from pianodaemon-contraption.zpn.intel.com ([10.219.128.75])
	by orsmga005.jf.intel.com with ESMTP; 20 Sep 2016 09:25:12 -0700
From: Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 20 Sep 2016 11:26:25 -0500
Message-Id: <20160920162625.21235-1-edwin.plauchu.camacho@linux.intel.com>
X-Mailer: git-send-email 2.9.3
Cc: Edwin Plauchu <edwin.plauchu.camacho@intel.com>
Subject: [ptest-runner][PATCH v2] Added error coverage to support when launching child process fails.
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
X-List-Received-Date: Tue, 20 Sep 2016 16:25:16 -0000

From: Edwin Plauchu <edwin.plauchu.camacho@intel.com>

Signed-off-by: Edwin Plauchu <edwin.plauchu.camacho@intel.com>
---
 utils.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/utils.c b/utils.c
index 6991af1..d1b5139 100644
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
@@ -350,9 +351,10 @@ run_ptests(struct ptest_list *head, int timeout, const char *progname,
 
 				status = wait_child(ptest_dir, p->run_ptest, child,
 						timeout, fds, fps);
-				if (status)
+				if (status) {
+					fprintf(stderr, "ERROR: Program child error\n");
 					rc += 1;
-
+				}
 				fprintf(fp, "END: %s\n", ptest_dir);
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
 			}
-- 
2.9.3


