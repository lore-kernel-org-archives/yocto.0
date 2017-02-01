Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DBF8E00524; Wed,  1 Feb 2017 07:42:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.35.17.2 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from thoth.sbs.de (thoth.sbs.de [192.35.17.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48D9BE003E1
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2017 07:42:50 -0800 (PST)
Received: from mail1.siemens.de (mail1.siemens.de [139.23.33.14])
	by thoth.sbs.de (8.15.2/8.15.2) with ESMTPS id v11Fgn0W003386
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Wed, 1 Feb 2017 16:42:49 +0100
Received: from dev.sbt.siemens.com ([139.16.24.182])
	by mail1.siemens.de (8.15.2/8.15.2) with ESMTP id v11Fgnuu017492;
	Wed, 1 Feb 2017 16:42:49 +0100
From: Pascal Bach <pascal.bach@siemens.com>
To: yocto@yoctoproject.org
Date: Wed,  1 Feb 2017 16:42:40 +0100
Message-Id: <1485963761-25773-1-git-send-email-pascal.bach@siemens.com>
X-Mailer: git-send-email 2.1.4
Subject: [ptest-runner][PATCHv2 1/2] utils, main: pass opts struct to run_ptests
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
X-List-Received-Date: Wed, 01 Feb 2017 15:42:52 -0000

This allows to easily add additional parameters

Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
---
 main.c        | 10 ++--------
 tests/utils.c | 14 ++++++++++----
 utils.c       |  4 ++--
 utils.h       |  9 ++++++++-
 4 files changed, 22 insertions(+), 15 deletions(-)

diff --git a/main.c b/main.c
index 31bf3b5..765d688 100644
--- a/main.c
+++ b/main.c
@@ -45,13 +45,6 @@ print_usage(FILE *stream, char *progname)
 			"[-h] [ptest1 ptest2 ...]\n", progname);
 }
 
-static struct {
-	char *directory;
-	int list;
-	int timeout;
-	char **ptests;
-} opts;
-
 int
 main(int argc, char *argv[])
 {
@@ -66,6 +59,7 @@ main(int argc, char *argv[])
 
 	struct ptest_list *head, *run;
 
+	struct options opts;
 	opts.directory = strdup(DEFAULT_DIRECTORY);
 	opts.list = 0;
 	opts.timeout = DEFAULT_TIMEOUT;
@@ -133,7 +127,7 @@ main(int argc, char *argv[])
 		ptest_list_free_all(head);
 	} 
 
-	rc = run_ptests(run, opts.timeout, argv[0], stdout, stderr);
+	rc = run_ptests(run, opts, argv[0], stdout, stderr);
 
 	ptest_list_free_all(run);
 
diff --git a/tests/utils.c b/tests/utils.c
index 1332798..6b70c2e 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -51,6 +51,8 @@ static char *ptests_not_found[] = {
 	NULL,
 };
 
+static struct options EmptyOpts;
+
 static inline void
 find_word(int *found, const char *line, const char *word)
 {
@@ -153,8 +155,9 @@ START_TEST(test_filter_ptests)
 END_TEST
 
 START_TEST(test_run_ptests)
-	struct ptest_list *head; 
-	int timeout = 1;
+	struct ptest_list *head;
+	struct options opts = EmptyOpts;
+	opts.timeout = 1;
 	int rc;
 
 	char *buf_stdout;
@@ -173,7 +176,7 @@ START_TEST(test_run_ptests)
 	ptest_list_remove(head, "hang", 1);
 	ptest_list_remove(head, "fail", 1);
 
-	rc = run_ptests(head, timeout, "test_run_ptests", fp_stdout, fp_stderr);
+	rc = run_ptests(head, opts, "test_run_ptests", fp_stdout, fp_stderr);
 	ck_assert(rc == 0);
 	ptest_list_free_all(head);
 
@@ -275,8 +278,11 @@ test_ptest_expected_failure(struct ptest_list *head, const int timeout, char *pr
 		struct ptest_list *filtered = filter_ptests(head, &progname, 1);
 		ck_assert(ptest_list_length(filtered) == 1);
 
+		struct options opts = EmptyOpts;
+		opts.timeout = timeout;
+
 		h_analizer(
-			run_ptests(filtered, timeout, progname, fp_stdout, fp_stderr),
+			run_ptests(filtered, opts, progname, fp_stdout, fp_stderr),
 			fp_stdout, fp_stderr
 		);
 
diff --git a/utils.c b/utils.c
index 77427e0..48c1990 100644
--- a/utils.c
+++ b/utils.c
@@ -302,7 +302,7 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 }
 
 int
-run_ptests(struct ptest_list *head, int timeout, const char *progname,
+run_ptests(struct ptest_list *head, const struct options opts, const char *progname,
 		FILE *fp, FILE *fp_stderr)
 {
 	int rc = 0;
@@ -350,7 +350,7 @@ run_ptests(struct ptest_list *head, int timeout, const char *progname,
 				fprintf(fp, "BEGIN: %s\n", ptest_dir);
 
 				status = wait_child(ptest_dir, p->run_ptest, child,
-						timeout, fds, fps);
+						opts.timeout, fds, fps);
 				if (status) {
 					fprintf(fp, "ERROR: Exit status is %d\n", status);
 					rc += 1;
diff --git a/utils.h b/utils.h
index 4dc23ef..d7f5268 100644
--- a/utils.h
+++ b/utils.h
@@ -30,10 +30,17 @@
 #define CHECK_ALLOCATION(p, size, exit_on_null) \
 	check_allocation1(p, size, __FILE__, __LINE__, exit_on_null)
 
+struct options {
+  char *directory;
+  int list;
+	int timeout;
+	char **ptests;
+};
+
 extern void check_allocation1(void *, size_t, char *, int, int);
 extern struct ptest_list *get_available_ptests(const char *);
 extern int print_ptests(struct ptest_list *, FILE *);
 extern struct ptest_list *filter_ptests(struct ptest_list *, char **, int);
-extern int run_ptests(struct ptest_list *, int, const char *progname, FILE *, FILE *);
+extern int run_ptests(struct ptest_list *, const struct options, const char *progname, FILE *, FILE *);
 
 #endif
-- 
2.1.4


