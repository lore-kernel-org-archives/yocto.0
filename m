Return-Path: <Jiwei.Sun@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A510E00D8C; Thu, 28 Sep 2017 19:10:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ECB7E00D81
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 19:10:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v8T2Ad5v023582
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 28 Sep 2017 19:10:39 -0700
Received: from pek-lpd-ccm2.wrs.com (128.224.179.210) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Thu, 28 Sep 2017 19:10:38 -0700
From: Jiwei Sun <jiwei.sun@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 29 Sep 2017 10:09:38 +0800
Message-ID: <1506650980-87720-6-git-send-email-jiwei.sun@windriver.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1506650980-87720-1-git-send-email-jiwei.sun@windriver.com>
References: <1506650980-87720-1-git-send-email-jiwei.sun@windriver.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 29 Sep 2017 08:40:16 -0700
Cc: anibal.limon@linux.intel.com
Subject: [ptest-runner 6/8] Add <system-out></system-out> to XML when tests fail
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
X-List-Received-Date: Fri, 29 Sep 2017 02:10:42 -0000
Content-Type: text/plain

* Introduce a maximum number of concurrent ptests, since
we are dealing with embedded targets.

* Add stdout || stderr output from ptests into XML.
For testcases running in parallel, cluttering stdout won't
help anyone.

Signed-off-by: Jiwei Sun <jiwei.sun@windriver.com>
---
 main.c                   |  2 +
 tests/data/reference.xml |  1 +
 tests/utils.c            |  4 +-
 utils.c                  | 99 +++++++++++++++++++++++++++++-------------------
 utils.h                  |  3 +-
 5 files changed, 67 insertions(+), 42 deletions(-)

diff --git a/main.c b/main.c
index d524200..a201e87 100644
--- a/main.c
+++ b/main.c
@@ -37,6 +37,7 @@
 
 #define DEFAULT_DIRECTORY "/usr/lib"
 #define DEFAULT_TIMEOUT 300
+#define DEFAULT_MAX_PARALLEL 64
 
 static inline void
 print_usage(FILE *stream, char *progname)
@@ -69,6 +70,7 @@ main(int argc, char *argv[])
 	opts.directory = strdup(DEFAULT_DIRECTORY);
 	opts.list = 0;
 	opts.timeout = DEFAULT_TIMEOUT;
+	opts.max_parallel = DEFAULT_MAX_PARALLEL;
 	opts.ptests = NULL;
 	opts.xml_filename = NULL;
 
diff --git a/tests/data/reference.xml b/tests/data/reference.xml
index 91522c7..a23b44b 100644
--- a/tests/data/reference.xml
+++ b/tests/data/reference.xml
@@ -4,5 +4,6 @@
 	</testcase>
 	<testcase classname='test2' name='run-ptest'>
 		<failure type='exit_code' message='run-ptest exited with code: 1'></failure>
+		<system-out>ERROR</system-out>
 	</testcase>
 </testsuite>
diff --git a/tests/utils.c b/tests/utils.c
index 9b1f442..bb799f4 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -262,9 +262,9 @@ START_TEST(test_xml_pass)
 	ck_assert(xp != NULL);
         entry.ptest = "test1";
         entry.run_ptest = "run-ptest";
-	xml_add_case(xp, 0, &entry);
+        xml_add_case(xp, 0, &entry, "");
         entry.ptest = "test2";
-        xml_add_case(xp, 1, &entry);
+        xml_add_case(xp, 1, &entry, "ERROR");
 	xml_finish(xp);
 
 	FILE *fp, *fr;
diff --git a/utils.c b/utils.c
index 056d7b7..0e97ac4 100644
--- a/utils.c
+++ b/utils.c
@@ -289,8 +289,13 @@ run_child(char *run_ptest, int fd_stdout, int fd_stderr)
 }
 
 static inline int
-wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
-		int timeout, int *fds, FILE **fps)
+wait_child(const char *ptest_dir,
+	   const char *run_ptest,
+	   pid_t pid,
+	   int timeout,
+	   int *fds,
+	   FILE **fps,
+	   char *buf)
 {
 	struct pollfd pfds[2];
 	time_t sentinel;
@@ -311,7 +316,6 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 
 		r = poll(pfds, 2, WAIT_CHILD_POLL_TIMEOUT_MS);
 		if (r > 0) {
-			char buf[WAIT_CHILD_BUF_MAX_SIZE];
 			ssize_t n;
 
 			if (pfds[0].revents != 0) {
@@ -354,6 +358,35 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 	return status;
 }
 
+static void reap_all_children(FILE *fp) {
+	/* Reap all children before continuing */
+	while (1) {
+		int status;
+		pid_t pid;
+		pid = waitpid((pid_t)(-1), &status, WNOHANG);
+
+		/* Child reaped */
+		if (pid > 0) {
+			if (WIFEXITED(status)) {
+				if (WEXITSTATUS(status) == 0)
+					continue;
+			}
+			fprintf(fp, "One child failed to do its job pid:%u", pid);
+			exit(-1);
+		}
+
+		/* Still children alive */
+		if (pid == 0) {
+			usleep(100000); /* 100ms */
+			continue;
+		}
+
+		/* No more children to reap */
+		if (pid < 0)
+			break;
+	}
+}
+
 int
 run_ptests(struct ptest_list *head, const struct ptest_options opts,
 		const char *progname, FILE *fp, FILE *fp_stderr)
@@ -363,8 +396,8 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 
 	struct ptest_list *p;
 	char stime[GET_STIME_BUF_SIZE];
-
-	pid_t child, pid;
+	int nr_children = 0;
+	pid_t child;
 	int pipefd_stdout[2];
 	int pipefd_stderr[2];
 
@@ -395,8 +428,13 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				continue;
 
 			master = fork();
-			if (master)
+			if (master) {
+				if (++nr_children >= opts.max_parallel) {
+					reap_all_children(fp);
+					nr_children = 0;
+				}
 				continue;
+			}
 
 		        ptest_dir = strdup(p->run_ptest);
 			if (ptest_dir == NULL) {
@@ -416,53 +454,30 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				int status;
 				int fds[2]; fds[0] = pipefd_stdout[0]; fds[1] = pipefd_stderr[0];
 				FILE *fps[2]; fps[0] = fp; fps[1] = fp_stderr;
+				char buf[WAIT_CHILD_BUF_MAX_SIZE];
 
 //				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
 				fprintf(fp, "BEGIN: %s\n", ptest_dir);
 
 				status = wait_child(ptest_dir, p->run_ptest, child,
-						opts.timeout, fds, fps);
+						    opts.timeout, fds, fps, buf);
 				if (status)
 					rc += 1;
 
 				if (opts.xml_filename)
 					xml_add_case(xh,
 						     status,
-						     (struct ptest_entry *)p);
+						     (struct ptest_entry *)p,
+						     buf);
 
-//				fprintf(fp, "END: %s\n", ptest_dir);
 //				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
 				/* Let non-master gracefully terminate */
 				exit(0);
 			}
 		PTEST_LIST_ITERATE_END;
 
-		/* Reap all children before continuing */
-		while (1) {
-			int status;
-			pid = waitpid((pid_t)(-1), &status, WNOHANG);
-
-			/* Child reaped */
-			if (pid > 0) {
-				if (WIFEXITED(status)) {
-					if (WEXITSTATUS(status) == 0)
-						continue;
-				}
-				fprintf(fp, "One child failed to do its job pid:%u", pid);
-				exit(-1);
-			}
-
-			/* Still children alive */
-			if (pid == 0) {
-				usleep(100000); /* 100ms */
-				continue;
-			}
-
-			/* No more children to reap */
-			if (pid < 0)
-				break;
-		}
-
+		reap_all_children(fp);
+		
 		fprintf(fp, "START: %s\n", progname);
 		PTEST_LIST_ITERATE_START(head, p);
 		        char *ptest_dir;
@@ -487,19 +502,22 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				int status;
 				int fds[2]; fds[0] = pipefd_stdout[0]; fds[1] = pipefd_stderr[0];
 				FILE *fps[2]; fps[0] = fp; fps[1] = fp_stderr;
+				char buf[WAIT_CHILD_BUF_MAX_SIZE];
 
+				memset(buf, 0, sizeof(buf));
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
 				fprintf(fp, "BEGIN: %s\n", ptest_dir);
 
 				status = wait_child(ptest_dir, p->run_ptest, child,
-						opts.timeout, fds, fps);
+						    opts.timeout, fds, fps, buf);
 				if (status)
 					rc += 1;
 
 				if (opts.xml_filename)
 					xml_add_case(xh,
 						     status,
-						     (struct ptest_entry *)p);
+						     (struct ptest_entry *)p,
+						     buf);
 
 				fprintf(fp, "END: %s\n", ptest_dir);
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
@@ -538,7 +556,7 @@ xml_create(int test_count, char *xml_filename)
 }
 
 void
-xml_add_case(FILE *xh, int status, struct ptest_entry *ptest)
+xml_add_case(FILE *xh, int status, struct ptest_entry *ptest, char *buf)
 {
 	struct flock lock;
 	int fd;
@@ -556,10 +574,13 @@ xml_add_case(FILE *xh, int status, struct ptest_entry *ptest)
 			"\t\t<failure type='exit_code'" \
 			" message='run-ptest exited with code: %d'>" \
 			"</failure>\n" \
+			"\t\t<system-out>%s" \
+			"</system-out>\n" \
 			"\t</testcase>\n",
 			ptest->ptest,
 			basename(bname),
-			status);
+			status,
+			buf);
 	}
 	else {
 		fprintf(xh, "\t<testcase classname='%s' name='%s'>\n" \
diff --git a/utils.h b/utils.h
index d0ef735..70e2abe 100644
--- a/utils.h
+++ b/utils.h
@@ -34,6 +34,7 @@ struct ptest_options {
 	char *directory;
 	int list;
 	int timeout;
+	int max_parallel;
 	char **ptests;
 	char *xml_filename;
 };
@@ -47,7 +48,7 @@ extern int run_ptests(struct ptest_list *, const struct ptest_options,
 		const char *, FILE *, FILE *);
 
 extern FILE *xml_create(int, char *);
-extern void xml_add_case(FILE *, int, struct ptest_entry *);
+extern void xml_add_case(FILE *, int, struct ptest_entry *, char *);
 extern void xml_finish(FILE *);
 
 #endif
-- 
1.8.3.1


