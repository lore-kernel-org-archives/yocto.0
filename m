Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F3EAE0097D; Wed,  1 Feb 2017 07:42:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.35.17.28 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from goliath.siemens.de (goliath.siemens.de [192.35.17.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78A12E00524
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2017 07:42:54 -0800 (PST)
Received: from mail1.siemens.de (mail1.siemens.de [139.23.33.14])
	by goliath.siemens.de (8.15.2/8.15.2) with ESMTPS id v11Fgrqk003732
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Wed, 1 Feb 2017 16:42:53 +0100
Received: from dev.sbt.siemens.com ([139.16.24.182])
	by mail1.siemens.de (8.15.2/8.15.2) with ESMTP id v11Fgnuv017492;
	Wed, 1 Feb 2017 16:42:52 +0100
From: Pascal Bach <pascal.bach@siemens.com>
To: yocto@yoctoproject.org
Date: Wed,  1 Feb 2017 16:42:41 +0100
Message-Id: <1485963761-25773-2-git-send-email-pascal.bach@siemens.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1485963761-25773-1-git-send-email-pascal.bach@siemens.com>
References: <1485963761-25773-1-git-send-email-pascal.bach@siemens.com>
Cc: Schuler Christian <schuler.christian@siemens.com>
Subject: [ptest-runner][PATCHv2 2/2] Add xml output
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
X-List-Received-Date: Wed, 01 Feb 2017 15:42:57 -0000

The format follow the one defined in the Yocto wiki:
https://wiki.yoctoproject.org/wiki/QA/xUnit_XML_Template

It is only the minimum required but it can be extended in the future.

Signed-off-by: Schuler Christian <schuler.christian@siemens.com>
Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
---
 README.md                |  1 +
 main.c                   | 13 ++++++++++---
 tests/data/reference.xml |  8 ++++++++
 tests/utils.c            | 46 ++++++++++++++++++++++++++++++++++++++++++++
 utils.c                  | 50 ++++++++++++++++++++++++++++++++++++++++++++++++
 utils.h                  | 10 ++++++++--
 6 files changed, 123 insertions(+), 5 deletions(-)
 create mode 100644 tests/data/reference.xml

diff --git a/README.md b/README.md
index ed7a589..fedab04 100644
--- a/README.md
+++ b/README.md
@@ -14,6 +14,7 @@ Now the ptest-runner2 support the next features:
 - List available ptests.
 - Specify the timeout for avoid blocking indefinetly.
 - Only run certain ptests.
+- XML-ouput
 
 Proposed features:
 
diff --git a/main.c b/main.c
index 765d688..5f37541 100644
--- a/main.c
+++ b/main.c
@@ -41,7 +41,7 @@
 static inline void
 print_usage(FILE *stream, char *progname)
 {
-	fprintf(stream, "Usage: %s [-d directory] [-l list] [-t timeout] "
+	fprintf(stream, "Usage: %s [-d directory] [-l list] [-t timeout] [-x xml-filename]"
 			"[-h] [ptest1 ptest2 ...]\n", progname);
 }
 
@@ -60,12 +60,14 @@ main(int argc, char *argv[])
 	struct ptest_list *head, *run;
 
 	struct options opts;
+
 	opts.directory = strdup(DEFAULT_DIRECTORY);
 	opts.list = 0;
 	opts.timeout = DEFAULT_TIMEOUT;
 	opts.ptests = NULL;
+	opts.xml_filename = NULL;
 
-	while ((opt = getopt(argc, argv, "d:lt:h")) != -1) {
+	while ((opt = getopt(argc, argv, "d:ltx:h")) != -1) {
 		switch (opt) {
 			case 'd':
 				free(opts.directory);
@@ -82,6 +84,11 @@ main(int argc, char *argv[])
 				print_usage(stdout, argv[0]);
 				exit(0);
 			break;
+			case 'x':
+				free(opts.xml_filename);
+				opts.xml_filename = strdup(optarg);
+				CHECK_ALLOCATION(opts.xml_filename, 1, 1);
+			break;
 			default:
 				print_usage(stdout, argv[0]);
 				exit(1);
@@ -125,7 +132,7 @@ main(int argc, char *argv[])
 		run = filter_ptests(head, opts.ptests, ptest_num);
 		CHECK_ALLOCATION(run, ptest_num, 1);
 		ptest_list_free_all(head);
-	} 
+	}
 
 	rc = run_ptests(run, opts, argv[0], stdout, stderr);
 
diff --git a/tests/data/reference.xml b/tests/data/reference.xml
new file mode 100644
index 0000000..0d858e1
--- /dev/null
+++ b/tests/data/reference.xml
@@ -0,0 +1,8 @@
+<?xml version='1.0' encoding='UTF-8'?>
+<testsuite name='ptest' tests='2'>
+<testcase classname='test1' name='run-ptest'>
+</testcase>
+<testcase classname='test2' name='run-ptest'>
+<failure type='exit_code' message='run-ptest exited with code: 1'></failure>
+</testcase>
+</testsuite>
diff --git a/tests/utils.c b/tests/utils.c
index 6b70c2e..f5d3b62 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -237,6 +237,50 @@ START_TEST(test_run_fail_ptest)
 	ptest_list_free_all(head);
 END_TEST
 
+int filecmp(FILE *fp1, FILE *fp2)
+{
+    char f1, f2;
+    while (1) {
+			  int end = 0;
+        if ((f1 = getc(fp1)) == EOF) end++;
+        if ((f2 = getc(fp2)) == EOF) end++;
+
+				if (end == 2) return 0;
+				if (end == 1) return 1;
+        if (f1 != f2) return 2;
+    }
+}
+
+START_TEST(test_xml_pass)
+
+
+
+	XML *xp;
+	xp = xml_create(2, "./test.xml");
+	ck_assert(xp != NULL);
+	xml_add_case(xp, 0,"test1");
+	xml_add_case(xp, 1,"test2");
+	xml_finish(xp);
+
+  FILE *fp, *fr;
+  fr = fopen("./tests/data/reference.xml", "r");
+	ck_assert(fr != NULL);
+	fp = fopen("./test.xml", "r");
+	ck_assert(fp != NULL);
+
+	ck_assert(filecmp(fr, fp) == 0);
+
+	fclose(fr);
+	fclose(fp);
+	unlink("./test.xml");
+
+END_TEST
+
+START_TEST(test_xml_fail)
+	ck_assert(xml_create(2, "./") == NULL);
+
+END_TEST
+
 Suite *
 utils_suite()
 {
@@ -252,6 +296,8 @@ utils_suite()
 	tcase_add_test(tc_core, test_run_ptests);
 	tcase_add_test(tc_core, test_run_timeout_ptest);
 	tcase_add_test(tc_core, test_run_fail_ptest);
+	tcase_add_test(tc_core, test_xml_pass);
+	tcase_add_test(tc_core, test_xml_fail);
 
 	suite_add_tcase(s, tc_core);
 
diff --git a/utils.c b/utils.c
index 48c1990..0fb6ff8 100644
--- a/utils.c
+++ b/utils.c
@@ -306,6 +306,7 @@ run_ptests(struct ptest_list *head, const struct options opts, const char *progn
 		FILE *fp, FILE *fp_stderr)
 {
 	int rc = 0;
+	XML *xh;
 
 	struct ptest_list *p;
 	char stime[GET_STIME_BUF_SIZE];
@@ -314,6 +315,12 @@ run_ptests(struct ptest_list *head, const struct options opts, const char *progn
 	int pipefd_stdout[2];
 	int pipefd_stderr[2];
 
+	if(opts.xml_filename) {
+		xh = xml_create(ptest_list_length(head), opts.xml_filename);
+		if(!xh)
+			exit(EXIT_FAILURE);
+	}
+
 	do
 	{
 		if ((rc = pipe2(pipefd_stdout, O_NONBLOCK)) == -1) 
@@ -355,6 +362,9 @@ run_ptests(struct ptest_list *head, const struct options opts, const char *progn
 					fprintf(fp, "ERROR: Exit status is %d\n", status);
 					rc += 1;
 				}
+				if (opts.xml_filename)
+					xml_add_case(xh, status, ptest_dir);
+
 				fprintf(fp, "END: %s\n", ptest_dir);
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
 			}
@@ -368,5 +378,45 @@ run_ptests(struct ptest_list *head, const struct options opts, const char *progn
 	if (rc == -1) 
 		fprintf(fp_stderr, "run_ptests fails: %s", strerror(errno));
 
+	if (opts.xml_filename)
+		xml_finish(xh);
+
 	return rc;
 }
+
+FILE *
+xml_create(int test_count, char *xml_filename)
+{
+	FILE *xh;
+
+	if ((xh = fopen(xml_filename, "w"))) {
+		fprintf(xh, "<?xml version='1.0' encoding='UTF-8'?>\n");
+		fprintf(xh, "<testsuite name='ptest' tests='%d'>\n", test_count);
+	}
+	else {
+		fprintf(stderr, "File could not be created. Make sure the path is correct and you have the right permissions.");
+		return NULL;
+	}
+
+	return xh;
+}
+
+void
+xml_add_case(FILE *xh, int status, const char *ptest_dir)
+{
+	fprintf(xh, "<testcase classname='%s' name='run-ptest'>\n", ptest_dir);
+
+  if(status != 0){
+    fprintf(xh, "<failure type='exit_code'");
+    fprintf(xh, " message='run-ptest exited with code: %d'>", status);
+    fprintf(xh, "</failure>\n");
+	}
+	fprintf(xh, "</testcase>\n");
+}
+
+void
+xml_finish(FILE *xh)
+{
+	fprintf(xh, "</testsuite>\n");
+	fclose(xh);
+}
diff --git a/utils.h b/utils.h
index d7f5268..7a8956a 100644
--- a/utils.h
+++ b/utils.h
@@ -33,14 +33,20 @@
 struct options {
   char *directory;
   int list;
-	int timeout;
-	char **ptests;
+  int timeout;
+  char **ptests;
+  char * xml_filename;
 };
 
+typedef FILE XML;
+
 extern void check_allocation1(void *, size_t, char *, int, int);
 extern struct ptest_list *get_available_ptests(const char *);
 extern int print_ptests(struct ptest_list *, FILE *);
 extern struct ptest_list *filter_ptests(struct ptest_list *, char **, int);
 extern int run_ptests(struct ptest_list *, const struct options, const char *progname, FILE *, FILE *);
+extern XML * xml_create(int test_count, char *filename);
+extern void xml_add_case(XML *, int status, const char *ptest_dir);
+extern void xml_finish(XML *);
 
 #endif
-- 
2.1.4


