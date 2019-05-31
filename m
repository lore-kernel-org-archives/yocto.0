Return-Path: <Sakib.Sajal@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68512E00A84; Fri, 31 May 2019 09:45:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C971CE008F2
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 09:45:38 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x4VGjc65019401
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 09:45:38 -0700 (PDT)
Received: from ssajal-HP-EliteBook-850-G3.wrs.com (128.224.140.236) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.439.0; Fri, 31 May 2019 09:45:37 -0700
From: Sakib Sajal <sakib.sajal@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 31 May 2019 12:45:36 -0400
Message-ID: <20190531164536.17236-1-sakib.sajal@windriver.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 06 Jun 2019 08:27:38 -0700
Subject: [PATCH] utils.c: close all file descriptors after completing a ptest
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
X-List-Received-Date: Fri, 31 May 2019 16:45:39 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

vredir ptest fails since too many file descriptors were open.

From the failed ptest log:
   run-vredir
   87,88c87,88
   < ./vredir6.sub: line 10: /dev/null: Too many open files
   < ./vredir6.sub: line 13: /dev/null: Too many open files
   FAIL: run-vredir

Added function to close file descriptors before starting a new process.

Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
Signed-off-by: Randy Macleod <randy.macleod@windriver.com>
---
 utils.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/utils.c b/utils.c
index 504df0b..05c2bfe 100644
--- a/utils.c
+++ b/utils.c
@@ -28,6 +28,7 @@
 #include <fcntl.h>
 #include <time.h>
 #include <dirent.h>
+#include <sys/resource.h>
 #include <sys/types.h>
 #include <sys/wait.h>
 #include <sys/stat.h>
@@ -240,6 +241,23 @@ filter_ptests(struct ptest_list *head, char **ptests, int ptest_num)
 	return head_new;
 }
 
+/* Close all fds from 3 up to 'ulimit -n'
+ * i.e. do not close STDIN, STDOUT, STDERR.
+ * Typically called in in a child process after forking
+ * but before exec as a good policy especially for security.
+ */ 
+static void
+close_fds(void)
+{
+	struct rlimit curr_lim;
+	getrlimit(RLIMIT_NOFILE, &curr_lim);
+
+	int fd;
+	for (fd=3; fd < curr_lim.rlim_cur; fd++) {
+		(void) close(fd);
+   	}
+}
+
 static inline void
 run_child(char *run_ptest, int fd_stdout, int fd_stderr)
 {
@@ -252,6 +270,7 @@ run_child(char *run_ptest, int fd_stdout, int fd_stderr)
 	dup2(fd_stdout, STDOUT_FILENO);
 	// XXX: Redirect stderr to stdout to avoid buffer ordering problems.
 	dup2(fd_stdout, STDERR_FILENO);
+	close_fds();
 	execv(run_ptest, argv);
 
 	exit(1);
-- 
2.20.1


