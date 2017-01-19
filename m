Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9F3BE009B8; Thu, 19 Jan 2017 05:54:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.35.17.14 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1229 seconds by postgrey-1.32 at yocto-www;
	Thu, 19 Jan 2017 05:54:41 PST
Received: from david.siemens.de (david.siemens.de [192.35.17.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E9DFE006C6
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 05:54:41 -0800 (PST)
Received: from mail3.siemens.de (mail3.siemens.de [139.25.208.14])
	by david.siemens.de (8.15.2/8.15.2) with ESMTPS id v0JDY73G015459
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 14:34:07 +0100
Received: from dev.sbt.siemens.com (MD1FZU9C.ad001.siemens.net [139.16.79.32])
	by mail3.siemens.de (8.15.2/8.15.2) with ESMTP id v0JDY7jZ019266;
	Thu, 19 Jan 2017 14:34:07 +0100
From: Pascal Bach <pascal.bach@siemens.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 14:33:43 +0100
Message-Id: <1484832823-10892-1-git-send-email-pascal.bach@siemens.com>
X-Mailer: git-send-email 2.1.4
Cc: Christian Schuler <schuler.christian@siemens.com>
Subject: [ptest-runner][PATCH] feat: generate xml-file
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
X-List-Received-Date: Thu, 19 Jan 2017 13:54:43 -0000

From: Christian Schuler <schuler.christian@siemens.com>

add a feature that allows the user to generate an XUnit xml-file.
This file shows if the ptests run correctly or not. e.g. bash, zlib.
It doesn't list the underlaying tests of the package.
The feature is activated by console input -x <filepath>.
Unit-tests of the feature are included.

Signed-off-by: Christian Schuler <schuler.christian@siemens.com>
Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
---
 README.md     |  1 +
 main.c        | 15 +++++++++++----
 tests/utils.c | 46 +++++++++++++++++++++++++++++++++++++++++++--
 utils.c       | 60 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 utils.h       |  7 ++++++-
 5 files changed, 121 insertions(+), 8 deletions(-)

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
index 31bf3b5..8dfdad6 100644
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
 
@@ -50,6 +50,7 @@ static struct {
 	int list;
 	int timeout;
 	char **ptests;
+	char * xml_filename;
 } opts;
 
 int
@@ -70,8 +71,9 @@ main(int argc, char *argv[])
 	opts.list = 0;
 	opts.timeout = DEFAULT_TIMEOUT;
 	opts.ptests = NULL;
+	opts.xml_filename = NULL;
 
-	while ((opt = getopt(argc, argv, "d:lt:h")) != -1) {
+	while ((opt = getopt(argc, argv, "d:ltx:h")) != -1) {
 		switch (opt) {
 			case 'd':
 				free(opts.directory);
@@ -88,6 +90,11 @@ main(int argc, char *argv[])
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
@@ -131,9 +138,9 @@ main(int argc, char *argv[])
 		run = filter_ptests(head, opts.ptests, ptest_num);
 		CHECK_ALLOCATION(run, ptest_num, 1);
 		ptest_list_free_all(head);
-	} 
+	}
 
-	rc = run_ptests(run, opts.timeout, argv[0], stdout, stderr);
+	rc = run_ptests(run, opts.timeout, argv[0], stdout, stderr, opts.xml_filename);
 
 	ptest_list_free_all(run);
 
diff --git a/tests/utils.c b/tests/utils.c
index 1332798..dd869e9 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -173,7 +173,7 @@ START_TEST(test_run_ptests)
 	ptest_list_remove(head, "hang", 1);
 	ptest_list_remove(head, "fail", 1);
 
-	rc = run_ptests(head, timeout, "test_run_ptests", fp_stdout, fp_stderr);
+	rc = run_ptests(head, timeout, "test_run_ptests", fp_stdout, fp_stderr, NULL);
 	ck_assert(rc == 0);
 	ptest_list_free_all(head);
 
@@ -234,6 +234,46 @@ START_TEST(test_run_fail_ptest)
 	ptest_list_free_all(head);
 END_TEST
 
+START_TEST(test_xml_pass)
+	char ref[] = "<?xml version='1.0' encoding='UTF-8'?>\n<testsuite name='ptests' tests='2'>\n"
+			"<testcase name='.'>\n<nodes expected='/' result='/'>\n"
+			"<nodes expected='0' result='0'>\n"
+			"</nodes>\n"
+			"</nodes>\n"
+			"</testcase>\n"
+			"<testcase name='.'>\n"
+			"<nodes expected='/' result='/'>\n"
+			"<nodes expected='0' result='1'>\n"
+			"<error type='Timeout/Unexpected error'>\n"
+			"A Timeout has occured or more tests than expected failed.\n"
+			"</error>\n"
+			"</nodes>\n"
+			"</nodes>\n"
+			"</testcase>\n"
+			"</testsuite>";
+	char buffer[strlen(ref)];
+
+	FILE *fp;
+	fp = xml_create(2, "./test_xml");
+	xml_add_case(fp, 0,".");
+	xml_add_case(fp, 1,".");
+	xml_finish(fp);
+
+	fp = fopen("./test_xml", "a+");
+	fseek(fp, 0, SEEK_SET);
+
+	fread(buffer, strlen(ref), 1, fp);
+	ck_assert(strncmp(ref, buffer, strlen(ref)) == 0);
+	fclose(fp);
+	unlink("./test_xml");
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
@@ -249,6 +289,8 @@ utils_suite()
 	tcase_add_test(tc_core, test_run_ptests);
 	tcase_add_test(tc_core, test_run_timeout_ptest);
 	tcase_add_test(tc_core, test_run_fail_ptest);
+	tcase_add_test(tc_core, test_xml_pass);
+	tcase_add_test(tc_core, test_xml_fail);
 
 	suite_add_tcase(s, tc_core);
 
@@ -276,7 +318,7 @@ test_ptest_expected_failure(struct ptest_list *head, const int timeout, char *pr
 		ck_assert(ptest_list_length(filtered) == 1);
 
 		h_analizer(
-			run_ptests(filtered, timeout, progname, fp_stdout, fp_stderr),
+			run_ptests(filtered, timeout, progname, fp_stdout, fp_stderr, NULL),
 			fp_stdout, fp_stderr
 		);
 
diff --git a/utils.c b/utils.c
index 77427e0..430fb7a 100644
--- a/utils.c
+++ b/utils.c
@@ -303,9 +303,10 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 
 int
 run_ptests(struct ptest_list *head, int timeout, const char *progname,
-		FILE *fp, FILE *fp_stderr)
+		FILE *fp, FILE *fp_stderr, char *xml_filename)
 {
 	int rc = 0;
+	XML *xh;
 
 	struct ptest_list *p;
 	char stime[GET_STIME_BUF_SIZE];
@@ -314,6 +315,12 @@ run_ptests(struct ptest_list *head, int timeout, const char *progname,
 	int pipefd_stdout[2];
 	int pipefd_stderr[2];
 
+	if(xml_filename) {
+		xh = xml_create(ptest_list_length(head), xml_filename);
+		if(!xh)
+			exit(EXIT_FAILURE);
+	}
+
 	do
 	{
 		if ((rc = pipe2(pipefd_stdout, O_NONBLOCK)) == -1) 
@@ -355,6 +362,9 @@ run_ptests(struct ptest_list *head, int timeout, const char *progname,
 					fprintf(fp, "ERROR: Exit status is %d\n", status);
 					rc += 1;
 				}
+				if (xml_filename)
+					xml_add_case(xh, status, ptest_dir);
+        
 				fprintf(fp, "END: %s\n", ptest_dir);
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
 			}
@@ -368,5 +378,53 @@ run_ptests(struct ptest_list *head, int timeout, const char *progname,
 	if (rc == -1) 
 		fprintf(fp_stderr, "run_ptests fails: %s", strerror(errno));
 
+	if (xml_filename)
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
+		fprintf(xh, "<testsuite name='ptests' tests='%d'>\n", test_count);
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
+	fprintf(xh, "<testcase name='%s'>\n", ptest_dir);
+	fprintf(xh, "<nodes expected='/' result='/'>\n");
+
+	if(status == 0){
+		fprintf(xh, "<nodes expected='0' result='0'>\n");
+		fprintf(xh, "</nodes>\n");
+	}
+	else{
+		fprintf(xh, "<nodes expected='0' result='%d'>\n", status);
+		fprintf(xh, "<error type='Timeout/Unexpected error'>\n");
+		fprintf(xh, "A Timeout has occured or more tests than expected failed.\n");
+		fprintf(xh, "</error>\n");
+		fprintf(xh, "</nodes>\n");
+	}
+	fprintf(xh, "</nodes>\n");
+	fprintf(xh, "</testcase>\n");
+}
+
+void
+xml_finish(FILE *xh)
+{
+	fprintf(xh, "</testsuite>");
+	fclose(xh);
+}
diff --git a/utils.h b/utils.h
index 4dc23ef..99f6100 100644
--- a/utils.h
+++ b/utils.h
@@ -30,10 +30,15 @@
 #define CHECK_ALLOCATION(p, size, exit_on_null) \
 	check_allocation1(p, size, __FILE__, __LINE__, exit_on_null)
 
+typedef FILE XML;
+
 extern void check_allocation1(void *, size_t, char *, int, int);
 extern struct ptest_list *get_available_ptests(const char *);
 extern int print_ptests(struct ptest_list *, FILE *);
 extern struct ptest_list *filter_ptests(struct ptest_list *, char **, int);
-extern int run_ptests(struct ptest_list *, int, const char *progname, FILE *, FILE *);
+extern int run_ptests(struct ptest_list *, int, const char *progname, FILE *, FILE *, char *xml_filename);
+extern XML * xml_create(int test_count, char *filename);
+extern void xml_add_case(XML *, int status, const char *ptest_dir);
+extern void xml_finish(XML *);
 
 #endif
-- 
2.1.4


