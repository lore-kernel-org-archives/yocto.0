Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E9E0E00EAC; Fri, 14 Jun 2019 07:50:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 828A9E00ED0
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2019 07:50:38 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x5EEne4I030376
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 14 Jun 2019 07:49:50 -0700
Received: from fidler.wrs.com (172.25.44.4) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.439.0;
	Fri, 14 Jun 2019 07:49:30 -0700
From: Randy MacLeod <Randy.MacLeod@windriver.com>
To: <yocto@yoctoproject.org>, <anibal.limon@linaro.org>
Date: Fri, 14 Jun 2019 10:48:52 -0400
Message-ID: <20190614144853.25839-4-Randy.MacLeod@windriver.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190614144853.25839-1-Randy.MacLeod@windriver.com>
References: <20190613223928.14424-1-Randy.MacLeod@windriver.com>
	<20190614144853.25839-1-Randy.MacLeod@windriver.com>
MIME-Version: 1.0
Subject: [ptest-runner][PATCH v2 3/4] utils: Ensure pipes are read after exit
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
X-List-Received-Date: Fri, 14 Jun 2019 14:50:47 -0000
Content-Type: text/plain

From: Richard Purdie <richard.purdie@linuxfoundation.org>

There was a race in the code where the pipes may not be read after the process has exited
and data may be left behind in them. This change to ordering ensures the pipes are read
after the exit code has been read meaning no data can be left behind and the logs should
be complete.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Upstream-Status: Pending [code being tested]
---
 utils.c | 29 ++++++++++++++++-------------
 1 file changed, 16 insertions(+), 13 deletions(-)

diff --git a/utils.c b/utils.c
index 86dcdad..ad737c2 100644
--- a/utils.c
+++ b/utils.c
@@ -285,6 +285,7 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 	struct pollfd pfds[2];
 	struct timespec sentinel;
 	clockid_t clock = CLOCK_MONOTONIC;
+	int looping = 1;
 	int r;
 
 	int status;
@@ -302,9 +303,23 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 
 	*timeouted = 0;
 
-	while (1) {
+	while (looping) {
 		waitflags = WNOHANG;
 
+		if (timeout >= 0) {
+			struct timespec time;
+
+			clock_gettime(clock, &time);
+			if ((time.tv_sec - sentinel.tv_sec) > timeout) {
+				*timeouted = 1;
+				kill(-pid, SIGKILL);
+				waitflags = 0;
+			}
+		}
+
+		if (waitpid(pid, &status, waitflags) == pid)
+			looping = 0;
+
 		r = poll(pfds, 2, WAIT_CHILD_POLL_TIMEOUT_MS);
 		if (r > 0) {
 			char buf[WAIT_CHILD_BUF_MAX_SIZE];
@@ -324,19 +339,7 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 			}
 
 			clock_gettime(clock, &sentinel);
-		} else if (timeout >= 0) {
-			struct timespec time;
-
-			clock_gettime(clock, &time);
-			if ((time.tv_sec - sentinel.tv_sec) > timeout) {
-				*timeouted = 1;
-				kill(-pid, SIGKILL);
-				waitflags = 0;
-			}
 		}
-
-		if (waitpid(pid, &status, waitflags) == pid)
-			break;
 	}
 
 	fflush(fps[0]);
-- 
2.17.0


