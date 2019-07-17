Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 757C7E00E0B; Wed, 17 Jul 2019 11:36:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE0BEE00E12
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 11:36:01 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x6HIa1En013746
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 17 Jul 2019 11:36:01 -0700 (PDT)
Received: from fidler.wrs.com (172.25.44.5) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.468.0;
	Wed, 17 Jul 2019 11:36:00 -0700
From: Randy MacLeod <Randy.MacLeod@windriver.com>
To: <yocto@yoctoproject.org>, <anibal.limon@linaro.org>
Date: Wed, 17 Jul 2019 14:35:30 -0400
Message-ID: <20190717183530.24893-4-Randy.MacLeod@windriver.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190717183530.24893-1-Randy.MacLeod@windriver.com>
References: <20190717183530.24893-1-Randy.MacLeod@windriver.com>
MIME-Version: 1.0
Subject: [ptest-runner][PATCH 4/4] Fix additional warnings when using clang
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
X-List-Received-Date: Wed, 17 Jul 2019 18:36:11 -0000
Content-Type: text/plain

Drop unused function parameters in wait_child().

The remaining warning in the top dir code is:
  utils.c:25:9: warning: macro name is a reserved identifier [-Wreserved-id-macro]
  #define _GNU_SOURCE
and it's not clear how to deal with that in a portable manner.

Drop unused variable in analizer code.
Rename analizer to analyzer.

Avoid program scope global by adding a set function for
the opts directory variable.

Free strdup()ed memory before exit.

Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
---
 tests/main.c       | 13 ++++++++-----
 tests/ptest_list.c |  2 ++
 tests/utils.c      | 22 ++++++++++++++--------
 utils.c            |  6 ++----
 utils.h            |  2 ++
 5 files changed, 28 insertions(+), 17 deletions(-)

diff --git a/tests/main.c b/tests/main.c
index e1a8b69..1344bc0 100644
--- a/tests/main.c
+++ b/tests/main.c
@@ -38,14 +38,14 @@ static SuiteFunction *suites[] = {
 	NULL,
 };
 
+extern void set_opts_dir(char *);
+
 static inline void
 print_usage(FILE *stream, char *progname)
 {
 	fprintf(stream, "Usage: %s <-d directory>\n", progname);
 }
 
-char *opts_directory;
-
 int
 main(int argc, char *argv[])
 {
@@ -54,12 +54,12 @@ main(int argc, char *argv[])
 	int number_failed;
 	SuiteFunction *sf;
 
-	opts_directory = NULL;
+	char *opts_dir = NULL;
 
 	while ((opt = getopt(argc, argv, "d:t:h")) != -1) {
 		switch (opt) {
 			case 'd':
-				opts_directory = strdup(optarg);
+				opts_dir = strdup(optarg);
 			break;
 			case 'h':
 				/* fall though !! */
@@ -69,10 +69,11 @@ main(int argc, char *argv[])
 		}
 	}
 
-	if (opts_directory == NULL) {
+	if (opts_dir == NULL) {
 		print_usage(stdout, argv[0]);
 		exit(1);
 	}
+	set_opts_dir(opts_dir);
 
 	i = 0;
 	number_failed = 0;
@@ -88,6 +89,8 @@ main(int argc, char *argv[])
 		i++;
 		sf = suites[i];
 	}
+	set_opts_dir(NULL);
+	free(opts_dir);
 
 	return number_failed;
 }
diff --git a/tests/ptest_list.c b/tests/ptest_list.c
index e0ec276..081f027 100644
--- a/tests/ptest_list.c
+++ b/tests/ptest_list.c
@@ -29,6 +29,8 @@
 
 #include "ptest_list.h"
 
+extern Suite *ptest_list_suite(void);
+
 static int ptests_num = 6;
 static char *ptest_names[] = {
 	"python",
diff --git a/tests/utils.c b/tests/utils.c
index 571d488..4fa4609 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -32,9 +32,15 @@
 #include "ptest_list.h"
 #include "utils.h"
 
+Suite *utils_suite(void);
+
 #define PRINT_PTEST_BUF_SIZE 8192
 
-extern char *opts_directory;
+static char *opts_directory = NULL;
+
+void set_opts_dir(char * od) {
+	opts_directory = od;
+}
 
 static char *ptests_found[] = {
 	"bash",
@@ -68,7 +74,7 @@ find_word(int *found, const char *line, const char *word)
 }
 
 static void test_ptest_expected_failure(struct ptest_list *, const int, char *,
-	void (*h_analizer)(const int, FILE *, FILE *));
+	void (*h_analyzer)(const int, FILE *));
 
 START_TEST(test_get_available_ptests)
 {
@@ -189,7 +195,7 @@ START_TEST(test_run_ptests)
 END_TEST
 
 static void
-search_for_timeout_and_duration(const int rp, FILE *fp_stdout, FILE *fp_stderr)
+search_for_timeout_and_duration(const int rp, FILE *fp_stdout)
 {
 	const char *timeout_str = "TIMEOUT";
 	const char *duration_str = "DURATION";
@@ -218,7 +224,7 @@ START_TEST(test_run_timeout_duration_ptest)
 END_TEST
 
 static void
-search_for_fail(const int rp, FILE *fp_stdout, FILE *fp_stderr)
+search_for_fail(const int rp, FILE *fp_stdout)
 {
         const char *fail_str = "ERROR: Exit status is";
         char line_buf[PRINT_PTEST_BUF_SIZE];
@@ -284,7 +290,7 @@ START_TEST(test_xml_fail)
 END_TEST
 
 Suite *
-utils_suite()
+utils_suite(void)
 {
 	Suite *s;
 	TCase *tc_core;
@@ -308,7 +314,7 @@ utils_suite()
 
 static void
 test_ptest_expected_failure(struct ptest_list *head, const int timeout, char *progname,
-		void (*h_analizer)(const int, FILE *, FILE *))
+		void (*h_analyzer)(const int, FILE *))
 {
 	char *buf_stdout;
 	size_t size_stdout = PRINT_PTEST_BUF_SIZE;
@@ -329,9 +335,9 @@ test_ptest_expected_failure(struct ptest_list *head, const int timeout, char *pr
 		struct ptest_options opts = EmptyOpts;
 		opts.timeout = timeout;
 
-		h_analizer(
+		h_analyzer(
 			run_ptests(filtered, opts, progname, fp_stdout, fp_stderr),
-			fp_stdout, fp_stderr
+			fp_stdout
 		);
 
 		PTEST_LIST_FREE_ALL_CLEAN(filtered);
diff --git a/utils.c b/utils.c
index 92654bf..a8ba190 100644
--- a/utils.c
+++ b/utils.c
@@ -288,8 +288,7 @@ run_child(char *run_ptest, int fd_stdout, int fd_stderr)
 }
 
 static inline int
-wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
-		int timeout, int *fds, FILE **fps, int *timeouted)
+wait_child(pid_t pid, int timeout, int *fds, FILE **fps, int *timeouted)
 {
 	struct pollfd pfds[2];
 	struct timespec sentinel;
@@ -490,8 +489,7 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, sttime));
 				fprintf(fp, "BEGIN: %s\n", ptest_dir);
 
-				status = wait_child(ptest_dir, p->run_ptest, child,
-						opts.timeout, fds, fps, &timeouted);
+				status = wait_child(child, opts.timeout, fds, fps, &timeouted);
 				entime = time(NULL);
 				duration = entime - sttime;
 
diff --git a/utils.h b/utils.h
index f6a56f1..aa53707 100644
--- a/utils.h
+++ b/utils.h
@@ -53,4 +53,6 @@ extern FILE *xml_create(int, char *);
 extern void xml_add_case(FILE *, int, const char *, int, int);
 extern void xml_finish(FILE *);
 
+void set_opts_dir(char * od);
+
 #endif
-- 
2.17.0


