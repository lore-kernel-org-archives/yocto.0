Return-Path: <edwin.plauchu.camacho@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6F55E00C97; Wed, 21 Sep 2016 17:47:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF9B5E00529
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 17:47:00 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga101.jf.intel.com with ESMTP; 21 Sep 2016 17:47:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,376,1470726000"; d="scan'208";a="11921608"
Received: from pianodaemon-contraption.zpn.intel.com ([10.219.128.75])
	by fmsmga005.fm.intel.com with ESMTP; 21 Sep 2016 17:46:59 -0700
From: Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 21 Sep 2016 19:48:12 -0500
Message-Id: <20160922004812.10630-1-edwin.plauchu.camacho@linux.intel.com>
X-Mailer: git-send-email 2.9.3
Cc: Edwin Plauchu <edwin.plauchu.camacho@intel.com>
Subject: [ptest-runner][PATCH V4] Added error coverage to support when launching child process fails.
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
X-List-Received-Date: Thu, 22 Sep 2016 00:47:05 -0000

From: Edwin Plauchu <edwin.plauchu.camacho@intel.com>

An error message is required when detecting one or more
ptest are not launched.

[YOCTO #9752]

Signed-off-by: Edwin Plauchu <edwin.plauchu.camacho@intel.com>
---
 tests/data/fail/ptest/run-ptest |   0
 tests/utils.c                   | 149 +++++++++++++++++++++++++++++++---------
 utils.c                         |   8 ++-
 3 files changed, 121 insertions(+), 36 deletions(-)
 create mode 100644 tests/data/fail/ptest/run-ptest

diff --git a/tests/data/fail/ptest/run-ptest b/tests/data/fail/ptest/run-ptest
new file mode 100644
index 0000000..e69de29
diff --git a/tests/utils.c b/tests/utils.c
index 5d9a909..c68a636 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -37,13 +37,14 @@ extern char *opts_directory;
 
 static char *ptests_found[] = {
 	"bash",
+        "fail",
 	"gcc",
 	"glibc",
 	"hang",
 	"python",
 	NULL
 };
-static int ptests_found_length = 5;
+static int ptests_found_length = 6;
 static char *ptests_not_found[] = {
 	"busybox",
 	"perl",
@@ -136,6 +137,101 @@ START_TEST(test_filter_ptests)
 	ptest_list_free_all(head_new);
 END_TEST
 
+static inline void
+find_word(int *found, const char *line, const char *word) {
+
+	char *pivot = NULL;
+
+	pivot = strdup(line);
+	pivot[strlen(word)] = '\0';
+	if (strcmp(pivot, word) == 0) { *found = 1; }
+	free(pivot);
+}
+
+
+static void
+search_for_fail(const int rp, FILE *fp_stdout, FILE *fp_stderr)
+{
+        const char *fail_str = "ERROR";
+        char line_buf[PRINT_PTEST_BUF_SIZE];
+        int found_fail = 0;
+        char *line = NULL;
+
+        ck_assert(rp != 0);
+
+        while ((line = fgets(line_buf, PRINT_PTEST_BUF_SIZE, fp_stdout)) != NULL) {
+		find_word(&found_fail, line, fail_str);
+        }
+
+        ck_assert(found_fail == 1);
+}
+
+
+static void
+search_for_timeout(const int rp, FILE *fp_stdout, FILE *fp_stderr)
+{
+        const char *ptest_hang = "hang";
+        const char *timeout_str = "TIMEOUT";
+        char line_buf[PRINT_PTEST_BUF_SIZE];
+	int found_hang = 0;
+	int found_timeout = 0;
+	int next = 0;
+	char *line = NULL;
+
+	ck_assert(rp != 0);
+
+	while ((line = fgets(line_buf, PRINT_PTEST_BUF_SIZE, fp_stdout)) != NULL) {
+		if (next) {
+                        find_word(&found_timeout, line, timeout_str);
+                } else {
+                        find_word(&next, line, ptest_hang); // XXX: Only compare the name part
+                }
+	}
+
+	ck_assert(found_timeout == 1);
+
+        /* Test stderr output */
+        line = fgets(line_buf, PRINT_PTEST_BUF_SIZE, fp_stderr);
+        find_word(&found_hang, line, ptest_hang);
+
+	ck_assert(found_hang == 1);
+}
+
+
+static void
+run_specific_one(struct ptest_list *head, const int timeout, char *progname,
+		void (*h_analizer)(const int, FILE *, FILE *))
+{
+        char *buf_stdout;
+        size_t size_stdout = PRINT_PTEST_BUF_SIZE;
+        FILE *fp_stdout;
+        char *buf_stderr;
+        size_t size_stderr = PRINT_PTEST_BUF_SIZE;
+        FILE *fp_stderr;
+
+        fp_stdout = open_memstream(&buf_stdout, &size_stdout);
+        ck_assert(fp_stdout != NULL);
+        fp_stderr = open_memstream(&buf_stderr, &size_stderr);
+        ck_assert(fp_stderr != NULL);
+
+	{
+		struct ptest_list *filtered = filter_ptests(head, &progname, 1);
+		ck_assert(ptest_list_length(filtered) == 1);
+
+		h_analizer(
+			run_ptests(filtered, timeout, progname, fp_stdout, fp_stderr),
+			fp_stdout, fp_stderr
+		);
+
+		PTEST_LIST_FREE_ALL_CLEAN(filtered);
+	}
+
+        fclose(fp_stdout);
+        free(buf_stdout);
+        fclose(fp_stderr);
+        free(buf_stderr);
+}
+
 START_TEST(test_run_ptests)
 	struct ptest_list *head; 
 	int timeout = 1;
@@ -148,13 +244,6 @@ START_TEST(test_run_ptests)
 	size_t size_stderr = PRINT_PTEST_BUF_SIZE;
 	FILE *fp_stderr;
 
-	int found_timeout = 0;
-	int next = 0;
-	const char *ptest_hang = "hang";
-	const char *timeout_str = "TIMEOUT";
-	char *line;
-	char line_buf[PRINT_PTEST_BUF_SIZE];
-
 	fp_stdout = open_memstream(&buf_stdout, &size_stdout);
 	ck_assert(fp_stdout != NULL);
 	fp_stderr = open_memstream(&buf_stderr, &size_stderr);
@@ -162,39 +251,33 @@ START_TEST(test_run_ptests)
 
 	head = get_available_ptests(opts_directory);
 	ptest_list_remove(head, "hang", 1);
+	ptest_list_remove(head, "fail", 1);
 	rc = run_ptests(head, timeout, "test_run_ptests", fp_stdout, fp_stderr);
 	ck_assert(rc == 0);
 	ptest_list_free_all(head);
 
-	head = get_available_ptests(opts_directory);
-	rc = run_ptests(head, timeout, "test_run_ptests", fp_stdout, fp_stderr);
+        fclose(fp_stdout);
+        free(buf_stdout);
+        fclose(fp_stderr);
+        free(buf_stderr);
 
-	/* Search for TIMEOUT keyword in output of hang ptest */
-	while ((line = fgets(line_buf, PRINT_PTEST_BUF_SIZE, fp_stdout)) != NULL) {
-		if (next) {
-			line[strlen(timeout_str)] = '\0'; 
-			if (strcmp(line, timeout_str) == 0)
-				found_timeout = 1;
-		} else {
-			line[strlen(ptest_hang)] = '\0'; // XXX: Only compare the name part
-			if (strcmp(line, ptest_hang) == 0)
-				next = 1;
-		}
-	}
-	ck_assert(found_timeout == 1);
-
-	/* Test stderr output */
-	line = fgets(line_buf, PRINT_PTEST_BUF_SIZE, fp_stderr);
-	line[strlen(ptest_hang)] = '\0';
-	ck_assert(strcmp(line, ptest_hang) == 0);
+	head = get_available_ptests(opts_directory);
+	run_specific_one(
+		head,
+		timeout,
+		"hang",
+		search_for_timeout
+	);
+
+        run_specific_one(
+                head,
+                timeout,
+                "fail",
+                search_for_fail
+        );
 
-	ck_assert(rc != 0);
 	ptest_list_free_all(head);
 
-	fclose(fp_stdout);
-	free(buf_stdout);
-	fclose(fp_stderr);
-	free(buf_stderr);
 END_TEST
 
 Suite *
diff --git a/utils.c b/utils.c
index 6991af1..402e6fb 100644
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
+				fprintf(fp, "ERROR: Fork fatal\n");
 				rc = -1;
 				break;
 			} else if (child == 0) {
@@ -350,9 +351,10 @@ run_ptests(struct ptest_list *head, int timeout, const char *progname,
 
 				status = wait_child(ptest_dir, p->run_ptest, child,
 						timeout, fds, fps);
-				if (status)
+				if (status) {
+					fprintf(fp, "ERROR: Program child error\n");
 					rc += 1;
-
+				}
 				fprintf(fp, "END: %s\n", ptest_dir);
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
 			}
-- 
2.9.3


