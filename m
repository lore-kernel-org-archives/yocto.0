Return-Path: <Jiwei.Sun@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6975EE00D81; Thu, 28 Sep 2017 19:10:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 324CCE00D74
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 19:10:38 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v8T2AbnJ012202
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 28 Sep 2017 19:10:37 -0700 (PDT)
Received: from pek-lpd-ccm2.wrs.com (128.224.179.210) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Thu, 28 Sep 2017 19:10:36 -0700
From: Jiwei Sun <jiwei.sun@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 29 Sep 2017 10:09:37 +0800
Message-ID: <1506650980-87720-5-git-send-email-jiwei.sun@windriver.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1506650980-87720-1-git-send-email-jiwei.sun@windriver.com>
References: <1506650980-87720-1-git-send-email-jiwei.sun@windriver.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 29 Sep 2017 08:40:16 -0700
Cc: anibal.limon@linux.intel.com
Subject: [ptest-runner 5/8] Add parallelism to TC execution
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
X-List-Received-Date: Fri, 29 Sep 2017 02:10:39 -0000
Content-Type: text/plain

Kinda only makes sense with JUnit test output.

Signed-off-by: Jiwei Sun <jiwei.sun@windriver.com>
---
 ptest_list.c                         |  16 +--
 ptest_list.h                         |  14 ++-
 tests/data/glibc/ptest/run-pptest    |   3 +
 tests/data/parallel/ptest/run-pptest |   3 +
 tests/ptest_list.c                   |  10 +-
 tests/utils.c                        |  13 ++-
 utils.c                              | 183 +++++++++++++++++++++++++++++++----
 utils.h                              |   2 +-
 8 files changed, 207 insertions(+), 37 deletions(-)
 create mode 100755 tests/data/glibc/ptest/run-pptest
 create mode 100755 tests/data/parallel/ptest/run-pptest

diff --git a/ptest_list.c b/ptest_list.c
index 2e1aa30..8a59383 100644
--- a/ptest_list.c
+++ b/ptest_list.c
@@ -27,8 +27,8 @@
 #include "utils.h"
 #include "ptest_list.h"
 
-#define VALIDATE_PTR_RINT(ptr) if (ptr == NULL) { errno = EINVAL; return -1; } 
-#define VALIDATE_PTR_RNULL(ptr) if (ptr == NULL) { errno = EINVAL; return NULL; } 
+#define VALIDATE_PTR_RINT(ptr) if (ptr == NULL) { errno = EINVAL; return -1; }
+#define VALIDATE_PTR_RNULL(ptr) if (ptr == NULL) { errno = EINVAL; return NULL; }
 
 struct ptest_list *
 ptest_list_alloc()
@@ -98,7 +98,7 @@ ptest_list_search(struct ptest_list *head, char *ptest)
 	VALIDATE_PTR_RNULL(ptest);
 
 	for (p = head; p != NULL; p = p->next) {
-		if (p->ptest == NULL) 
+		if (p->ptest == NULL)
 			continue;
 
 		if (strcmp(p->ptest, ptest) == 0) {
@@ -111,9 +111,12 @@ ptest_list_search(struct ptest_list *head, char *ptest)
 }
 
 struct ptest_list *
-ptest_list_add(struct ptest_list *head, char *ptest, char *run_ptest)
+ptest_list_add(struct ptest_list *head,
+	       char *ptest,
+	       char *run_ptest,
+	       int parallel)
 {
-	struct ptest_list *n, *p; 
+	struct ptest_list *n, *p;
 
 	VALIDATE_PTR_RNULL(head);
 	VALIDATE_PTR_RNULL(ptest);
@@ -124,6 +127,7 @@ ptest_list_add(struct ptest_list *head, char *ptest, char *run_ptest)
 
 	n->ptest = ptest;
 	n->run_ptest = run_ptest;
+	n->parallel = parallel;
 
 	n->prev = NULL;
 	n->next = NULL;
@@ -139,7 +143,7 @@ ptest_list_add(struct ptest_list *head, char *ptest, char *run_ptest)
 struct ptest_list *
 ptest_list_remove(struct ptest_list *head, char *ptest, int free)
 {
-	struct ptest_list *p; 
+	struct ptest_list *p;
 	struct ptest_list *q, *r;
 
 	VALIDATE_PTR_RNULL(head);
diff --git a/ptest_list.h b/ptest_list.h
index 8b39485..e627921 100644
--- a/ptest_list.h
+++ b/ptest_list.h
@@ -25,12 +25,19 @@
 #define PTEST_LIST_FREE_CLEAN(x) { ptest_list_free(x); x = NULL; }
 #define PTEST_LIST_FREE_ALL_CLEAN(x) { ptest_list_free_all(x); x = NULL; }
 
-#define PTEST_LIST_ITERATE_START(head, p) for (p = head->next; p != NULL; p = p->next) { 
+#define PTEST_LIST_ITERATE_START(head, p) for (p = head->next; p != NULL; p = p->next) {
 #define PTEST_LIST_ITERATE_END }
 
+struct ptest_entry {
+	char *ptest;
+	char *run_ptest;
+	int parallel;
+};
+
 struct ptest_list {
 	char *ptest;
 	char *run_ptest;
+	int parallel;
 
 	struct ptest_list *next;
 	struct ptest_list *prev;
@@ -42,7 +49,10 @@ extern int ptest_list_free_all(struct ptest_list *);
 
 extern int ptest_list_length(struct ptest_list *);
 extern struct ptest_list *ptest_list_search(struct ptest_list *, char *);
-extern struct ptest_list *ptest_list_add(struct ptest_list *, char *, char *);
+extern struct ptest_list *ptest_list_add(struct ptest_list *,
+					 char *,
+					 char *,
+					 int);
 extern struct ptest_list *ptest_list_remove(struct ptest_list *, char *, int);
 
 #endif // _PTEST_RUNNER_LIST_H_
diff --git a/tests/data/glibc/ptest/run-pptest b/tests/data/glibc/ptest/run-pptest
new file mode 100755
index 0000000..f7f0316
--- /dev/null
+++ b/tests/data/glibc/ptest/run-pptest
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+echo "glibc"
diff --git a/tests/data/parallel/ptest/run-pptest b/tests/data/parallel/ptest/run-pptest
new file mode 100755
index 0000000..23a0fff
--- /dev/null
+++ b/tests/data/parallel/ptest/run-pptest
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+echo "parallel"
diff --git a/tests/ptest_list.c b/tests/ptest_list.c
index 2641620..a02af0e 100644
--- a/tests/ptest_list.c
+++ b/tests/ptest_list.c
@@ -49,7 +49,7 @@ END_TEST
 START_TEST(test_add)
 {
 	struct ptest_list *head = ptest_list_alloc();
-	ck_assert(ptest_list_add(head, strdup("perl"), NULL) != NULL);
+	ck_assert(ptest_list_add(head, strdup("perl"), NULL, 0) != NULL);
 	ptest_list_free_all(head);
 }
 END_TEST
@@ -64,7 +64,7 @@ START_TEST(test_free_all)
 
 	head = ptest_list_alloc();
 	for (i = 0; i < ptests_num; i++)
-		ptest_list_add(head, strdup(ptest_names[i]), NULL);
+		ptest_list_add(head, strdup(ptest_names[i]), NULL, 0);
 
 	ptest_list_free_all(head);
 }
@@ -81,7 +81,7 @@ START_TEST(test_length)
  
 	head = ptest_list_alloc();
 	for (i = 0; i < ptests_num; i++)
-		ptest_list_add(head, strdup(ptest_names[i]), NULL);
+		ptest_list_add(head, strdup(ptest_names[i]), NULL, 0);
 
 	ck_assert_int_eq(ptest_list_length(head), ptests_num);
 	ptest_list_free_all(head);
@@ -100,7 +100,7 @@ START_TEST(test_search)
 	head = ptest_list_alloc();
 	for (i = 0; i < ptests_num; i++) {
 		ptest = strdup(ptest_names[i]);
-		ptest_list_add(head, ptest, NULL);
+		ptest_list_add(head, ptest, NULL, 0);
 	}
 
 	for (i = ptests_num - 1; i >= 0; i--)
@@ -119,7 +119,7 @@ START_TEST(test_remove)
 
 	for (i = 0; i < ptests_num; i++) {
 		ptest = strdup(ptest_names[i]);
-		ptest_list_add(head, ptest, NULL);
+		ptest_list_add(head, ptest, NULL, 0);
 	}
 
 	/* Remove node free'ing */
diff --git a/tests/utils.c b/tests/utils.c
index ecf3e8a..9b1f442 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -40,11 +40,13 @@ static char *ptests_found[] = {
 	"fail",
 	"gcc",
 	"glibc",
+	"glibc",
 	"hang",
+	"parallel",
 	"python",
 	NULL
 };
-static int ptests_found_length = 6;
+static int ptests_found_length = 8;
 static char *ptests_not_found[] = {
 	"busybox",
 	"perl",
@@ -254,10 +256,15 @@ filecmp(FILE *fp1, FILE *fp2)
 
 START_TEST(test_xml_pass)
 	FILE *xp;
+        struct ptest_entry entry;
+
 	xp = xml_create(2, "./test.xml");
 	ck_assert(xp != NULL);
-	xml_add_case(xp, 0,"test1");
-	xml_add_case(xp, 1,"test2");
+        entry.ptest = "test1";
+        entry.run_ptest = "run-ptest";
+	xml_add_case(xp, 0, &entry);
+        entry.ptest = "test2";
+        xml_add_case(xp, 1, &entry);
 	xml_finish(xp);
 
 	FILE *fp, *fr;
diff --git a/utils.c b/utils.c
index a07faec..056d7b7 100644
--- a/utils.c
+++ b/utils.c
@@ -42,7 +42,7 @@
 
 #define GET_STIME_BUF_SIZE 1024
 #define WAIT_CHILD_POLL_TIMEOUT_MS 200
-#define WAIT_CHILD_BUF_MAX_SIZE 1024
+#define WAIT_CHILD_BUF_MAX_SIZE 4096
 
 static inline char *
 get_stime(char *stime, size_t size)
@@ -108,7 +108,6 @@ get_available_ptests(const char *dir)
 		fail = 0;
 		for (i = 0; i < n; i++) {
 			char *run_ptest;
-
 			char *d_name = strdup(namelist[i]->d_name);
 			CHECK_ALLOCATION(d_name, sizeof(namelist[i]->d_name), 0);
 			if (d_name == NULL) {
@@ -124,7 +123,7 @@ get_available_ptests(const char *dir)
 			}
 
 			if (asprintf(&run_ptest, "%s/%s/ptest/run-ptest",
-			    dir, d_name) == -1)  {
+				     dir, d_name) == -1) {
 				fail = 1;
 				saved_errno = errno;
 				free(d_name);
@@ -133,18 +132,52 @@ get_available_ptests(const char *dir)
 
 			if (stat(run_ptest, &st_buf) == -1) {
 				free(run_ptest);
+				goto parallel;
+			}
+
+			if (!S_ISREG(st_buf.st_mode)) {
+				free(run_ptest);
+				goto parallel;
+			}
+
+			struct ptest_list *p = ptest_list_add(head,
+							      d_name,
+							      run_ptest,
+							      0);
+
+			CHECK_ALLOCATION(p, sizeof(struct ptest_list *), 0);
+			if (p == NULL) {
+				fail = 1;
+				saved_errno = errno;
+				free(run_ptest);
+				free(d_name);
+				break;
+			}
+
+		parallel:
+			if (asprintf(&run_ptest, "%s/%s/ptest/run-pptest",
+				     dir, d_name) == -1) {
+				fail = 1;
+				saved_errno = errno;
 				free(d_name);
+				break;
+			}
+
+			if (stat(run_ptest, &st_buf) == -1) {
+				free(run_ptest);
 				continue;
 			}
 
 			if (!S_ISREG(st_buf.st_mode)) {
 				free(run_ptest);
-				free(d_name);
 				continue;
 			}
 
-			struct ptest_list *p = ptest_list_add(head,
-				d_name, run_ptest);
+			p = ptest_list_add(head,
+					   strdup(d_name),
+					   run_ptest,
+					   1);
+
 			CHECK_ALLOCATION(p, sizeof(struct ptest_list *), 0);
 			if (p == NULL) {
 				fail = 1;
@@ -162,7 +195,7 @@ get_available_ptests(const char *dir)
 		if (fail) {
 			PTEST_LIST_FREE_ALL_CLEAN(head);
 			errno = saved_errno;
-			break;
+			return NULL;
 		}
 	} while (0);
 
@@ -220,7 +253,10 @@ filter_ptests(struct ptest_list *head, char **ptests, int ptest_num)
 				break;
 			}
 
-			if (ptest_list_add(head_new, ptest, run_ptest) == NULL) {
+			if (ptest_list_add(head_new,
+					   ptest,
+					   run_ptest,
+					   n->parallel) == NULL) {
 				saved_errno = errno;
 				fail = 1;
 				break;
@@ -288,7 +324,7 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 					fwrite(buf, n, 1, fps[1]);
 			}
 
-			sentinel = time(NULL);
+		sentinel = time(NULL);
 		} else if (timeout >= 0 && ((time(NULL) - sentinel) > timeout)) {
 			timeouted = 1;
 			kill(pid, SIGKILL);
@@ -303,11 +339,11 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 		if (timeouted)
 			fprintf(fps[0], "TIMEOUT: %s ", ptest_dir);
 
-		if(WIFEXITED(status)) {
+		if(WIFEXITED(status) && pid > 0) {
 			fprintf(fps[0], "\nERROR: Exit status is %d\n", WEXITSTATUS(status));
 			return WEXITSTATUS(status);
 		}
-		else if(WIFSIGNALED(status)) {
+		else if(WIFSIGNALED(status) && pid > 0) {
 			fprintf(fps[0], " Killed by signal\n");
 			return 127;
 		}
@@ -328,7 +364,7 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 	struct ptest_list *p;
 	char stime[GET_STIME_BUF_SIZE];
 
-	pid_t child;
+	pid_t child, pid;
 	int pipefd_stdout[2];
 	int pipefd_stderr[2];
 
@@ -336,6 +372,7 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 		xh = xml_create(ptest_list_length(head), opts.xml_filename);
 		if (!xh)
 			exit(EXIT_FAILURE);
+		fflush(xh);
 	}
 
 	do
@@ -349,9 +386,90 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 			break;
 		}
 
+		fprintf(fp, "START PARALLEL: %s\n", progname);
+		PTEST_LIST_ITERATE_START(head, p);
+		        char *ptest_dir;
+			int master;
+
+			if (!p->parallel)
+				continue;
+
+			master = fork();
+			if (master)
+				continue;
+
+		        ptest_dir = strdup(p->run_ptest);
+			if (ptest_dir == NULL) {
+				rc = -1;
+				break;
+			}
+			dirname(ptest_dir);
+
+			child = fork();
+			if (child == -1) {
+				fprintf(fp, "ERROR: Fork %s\n", strerror(errno));
+				rc = -1;
+				break;
+			} else if (child == 0) {
+				run_child(p->run_ptest, pipefd_stdout[1], pipefd_stderr[1]);
+			} else {
+				int status;
+				int fds[2]; fds[0] = pipefd_stdout[0]; fds[1] = pipefd_stderr[0];
+				FILE *fps[2]; fps[0] = fp; fps[1] = fp_stderr;
+
+//				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
+				fprintf(fp, "BEGIN: %s\n", ptest_dir);
+
+				status = wait_child(ptest_dir, p->run_ptest, child,
+						opts.timeout, fds, fps);
+				if (status)
+					rc += 1;
+
+				if (opts.xml_filename)
+					xml_add_case(xh,
+						     status,
+						     (struct ptest_entry *)p);
+
+//				fprintf(fp, "END: %s\n", ptest_dir);
+//				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
+				/* Let non-master gracefully terminate */
+				exit(0);
+			}
+		PTEST_LIST_ITERATE_END;
+
+		/* Reap all children before continuing */
+		while (1) {
+			int status;
+			pid = waitpid((pid_t)(-1), &status, WNOHANG);
+
+			/* Child reaped */
+			if (pid > 0) {
+				if (WIFEXITED(status)) {
+					if (WEXITSTATUS(status) == 0)
+						continue;
+				}
+				fprintf(fp, "One child failed to do its job pid:%u", pid);
+				exit(-1);
+			}
+
+			/* Still children alive */
+			if (pid == 0) {
+				usleep(100000); /* 100ms */
+				continue;
+			}
+
+			/* No more children to reap */
+			if (pid < 0)
+				break;
+		}
+
 		fprintf(fp, "START: %s\n", progname);
 		PTEST_LIST_ITERATE_START(head, p);
-			char *ptest_dir = strdup(p->run_ptest);
+		        char *ptest_dir;
+			if (p->parallel)
+				continue;
+
+			ptest_dir = strdup(p->run_ptest);
 			if (ptest_dir == NULL) {
 				rc = -1;
 				break;
@@ -379,7 +497,9 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 					rc += 1;
 
 				if (opts.xml_filename)
-					xml_add_case(xh, status, ptest_dir);
+					xml_add_case(xh,
+						     status,
+						     (struct ptest_entry *)p);
 
 				fprintf(fp, "END: %s\n", ptest_dir);
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
@@ -418,17 +538,40 @@ xml_create(int test_count, char *xml_filename)
 }
 
 void
-xml_add_case(FILE *xh, int status, const char *ptest_dir)
+xml_add_case(FILE *xh, int status, struct ptest_entry *ptest)
 {
-	fprintf(xh, "\t<testcase classname='%s' name='run-ptest'>\n", ptest_dir);
+	struct flock lock;
+	int fd;
+	char *bname;
 
+	fd = fileno(xh);
+	memset (&lock, 0, sizeof(lock));
+	lock.l_type = F_WRLCK;
+	fcntl (fd, F_SETLKW, &lock);
+	bname = strdup(ptest->run_ptest);
+
+	/* fprintf should guarantee atomicity for fprintfs within the same process */
 	if (status != 0) {
-		fprintf(xh, "\t\t<failure type='exit_code'");
-		fprintf(xh, " message='run-ptest exited with code: %d'>", status);
-		fprintf(xh, "</failure>\n");
+		fprintf(xh, "\t<testcase classname='%s' name='%s'>\n" \
+			"\t\t<failure type='exit_code'" \
+			" message='run-ptest exited with code: %d'>" \
+			"</failure>\n" \
+			"\t</testcase>\n",
+			ptest->ptest,
+			basename(bname),
+			status);
+	}
+	else {
+		fprintf(xh, "\t<testcase classname='%s' name='%s'>\n" \
+			"\t</testcase>\n",
+		        ptest->ptest,
+			basename(bname));
 	}
 
-	fprintf(xh, "\t</testcase>\n");
+	fflush(xh);
+	lock.l_type = F_UNLCK;
+	fcntl (fd, F_SETLKW, &lock);
+	free(bname);
 }
 
 void
diff --git a/utils.h b/utils.h
index 8fa20a8..d0ef735 100644
--- a/utils.h
+++ b/utils.h
@@ -47,7 +47,7 @@ extern int run_ptests(struct ptest_list *, const struct ptest_options,
 		const char *, FILE *, FILE *);
 
 extern FILE *xml_create(int, char *);
-extern void xml_add_case(FILE *, int, const char *);
+extern void xml_add_case(FILE *, int, struct ptest_entry *);
 extern void xml_finish(FILE *);
 
 #endif
-- 
1.8.3.1


