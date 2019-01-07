Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9064E00CAD; Mon,  7 Jan 2019 13:18:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
	[209.85.167.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACD07E00C93
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2019 13:18:41 -0800 (PST)
Received: by mail-oi1-f194.google.com with SMTP id v6so1593373oif.2
	for <yocto@yoctoproject.org>; Mon, 07 Jan 2019 13:18:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=1mcC2l2xX/vhNDMqL9Dv5YKod/5RvchmZYmyWhhWM/Y=;
	b=Jfb+x0bjWLxd6mEDSD8QTIHU3gg1nwTOg1zRbeG1dKw9jBJdjK07OhQ6QfYnuHzvRB
	B1yMhGG+HrD9GTko09hSFRuVXbyUWLuiHqnGzcqfPLiSK5pMhWCzbrq2/6eBJOsOiq/u
	k9SmASvscxk03Fq5g8cLjHh/aqWp6bAeQ/csw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=1mcC2l2xX/vhNDMqL9Dv5YKod/5RvchmZYmyWhhWM/Y=;
	b=C23ZI/K1UT5aF177tynATZUeI/7qdA8F35ZTnCsN8tItQtACNlMnbq0+CmYk8YD31V
	X1TewmGbZN6CPDENXx3dMYM/rP4Z6U5Lj/YMCW7SaytfFGKai+Z0DyhryWWkdEXBXxFz
	P5prmgW+Z7xQGdd9f6n7gdRhvECN0+ASlebx+6aur2pyeDgpUHsUEGDVgC3EQ20f+5UB
	C0VvKcIpxEMZNTNIjleEDCxlbhEt7RpDvyIVrlyPGWGQDoobkhaYnOR+uc8QVIJSKBj9
	1Xcx6CjvpZdug1E3dufhFZ/OL9q4UWrmvqYnSm6VsiF7XSYaYmtsATtjKjYSPp7izb1G
	jNEQ==
X-Gm-Message-State: AJcUukce/LtUdISp7mLqaBJ1ZEJE504BD6x/AGaDZPa8udwDfKa11bTQ
	xScQV4DN4z6rUEh4FvOOtLVxXTVhwCg=
X-Google-Smtp-Source: ALg8bN5wOI3OgGLSduLV7YoehTgICv3pCLkwisdD1wF/jSjljZp3Sr3H2/VQ8B2M2iOXlf4UnAhghA==
X-Received: by 2002:aca:4d47:: with SMTP id a68mr8564288oib.43.1546895920768; 
	Mon, 07 Jan 2019 13:18:40 -0800 (PST)
Received: from blackbox.Home ([200.68.141.36])
	by smtp.gmail.com with ESMTPSA id
	99sm32026840oth.20.2019.01.07.13.18.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 07 Jan 2019 13:18:40 -0800 (PST)
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
To: yocto@yoctoproject.org
Date: Mon,  7 Jan 2019 15:18:36 -0600
Message-Id: <20190107211837.25225-1-anibal.limon@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [PATCHv2][ptest-runner] ptest-runner: Add support to report duration of each ptest
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
X-List-Received-Date: Mon, 07 Jan 2019 21:18:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

In stdout reported as,

...
BEGIN: ptest-dir
...
DURATION: N
END: ptest-dir
...

In XML reported as,

...
<testcase classname='test1' name='run-ptest'>
	<duration>N</duration>
</testcase>
...

Signed-off-by: Aníbal Limón <anibal.limon@linaro.org>
---
 tests/data/reference.xml |  2 ++
 tests/utils.c            | 20 ++++++++++++--------
 utils.c                  | 19 ++++++++++++-------
 utils.h                  |  2 +-
 4 files changed, 27 insertions(+), 16 deletions(-)

diff --git a/tests/data/reference.xml b/tests/data/reference.xml
index 17f91c2..f6ff389 100644
--- a/tests/data/reference.xml
+++ b/tests/data/reference.xml
@@ -1,8 +1,10 @@
 <?xml version='1.0' encoding='UTF-8'?>
 <testsuite name='ptest' tests='2'>
 	<testcase classname='test1' name='run-ptest'>
+		<duration>5</duration>
 	</testcase>
 	<testcase classname='test2' name='run-ptest'>
+		<duration>10</duration>
 		<failure type='exit_code' message='run-ptest exited with code: 1'></failure>
 		<failure type='timeout'/>
 	</testcase>
diff --git a/tests/utils.c b/tests/utils.c
index 662abe8..2ccb1c0 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -188,26 +188,30 @@ START_TEST(test_run_ptests)
 END_TEST
 
 static void
-search_for_timeout(const int rp, FILE *fp_stdout, FILE *fp_stderr)
+search_for_timeout_and_duration(const int rp, FILE *fp_stdout, FILE *fp_stderr)
 {
 	const char *timeout_str = "TIMEOUT";
+	const char *duration_str = "DURATION";
 	char line_buf[PRINT_PTEST_BUF_SIZE];
-	int found_timeout = 0;
+	int found_timeout = 0, found_duration = 0;
 	char *line = NULL;
 
 	ck_assert(rp != 0);
 
-	while ((line = fgets(line_buf, PRINT_PTEST_BUF_SIZE, fp_stdout)) != NULL)
+	while ((line = fgets(line_buf, PRINT_PTEST_BUF_SIZE, fp_stdout)) != NULL) {
 		find_word(&found_timeout, line, timeout_str);
+		find_word(&found_duration, line, duration_str);
+	}
 
 	ck_assert(found_timeout == 1);
+	ck_assert(found_duration == 1);
 }
 
-START_TEST(test_run_timeout_ptest)
+START_TEST(test_run_timeout_duration_ptest)
 	struct ptest_list *head = get_available_ptests(opts_directory);
 	int timeout = 1;
 
-	test_ptest_expected_failure(head, timeout, "hang", search_for_timeout);
+	test_ptest_expected_failure(head, timeout, "hang", search_for_timeout_and_duration);
 
 	ptest_list_free_all(head);
 END_TEST
@@ -257,8 +261,8 @@ START_TEST(test_xml_pass)
 	FILE *xp;
 	xp = xml_create(2, "./test.xml");
 	ck_assert(xp != NULL);
-	xml_add_case(xp, 0,"test1", 0);
-	xml_add_case(xp, 1,"test2", 1);
+	xml_add_case(xp, 0,"test1", 0, 5);
+	xml_add_case(xp, 1,"test2", 1, 10);
 	xml_finish(xp);
 
 	FILE *fp, *fr;
@@ -291,7 +295,7 @@ utils_suite()
 	tcase_add_test(tc_core, test_print_ptests);
 	tcase_add_test(tc_core, test_filter_ptests);
 	tcase_add_test(tc_core, test_run_ptests);
-	tcase_add_test(tc_core, test_run_timeout_ptest);
+	tcase_add_test(tc_core, test_run_timeout_duration_ptest);
 	tcase_add_test(tc_core, test_run_fail_ptest);
 	tcase_add_test(tc_core, test_xml_pass);
 	tcase_add_test(tc_core, test_xml_fail);
diff --git a/utils.c b/utils.c
index 4a38ea1..01ee415 100644
--- a/utils.c
+++ b/utils.c
@@ -45,12 +45,10 @@
 #define WAIT_CHILD_BUF_MAX_SIZE 1024
 
 static inline char *
-get_stime(char *stime, size_t size)
+get_stime(char *stime, size_t size, time_t t)
 {
-	time_t t;
 	struct tm *lt;
 
-	t = time(NULL);
 	lt = localtime(&t);
 	strftime(stime, size, "%Y-%m-%dT%H:%M", lt);
 
@@ -334,6 +332,8 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 	int pipefd_stdout[2];
 	int pipefd_stderr[2];
 	int timeouted;
+	time_t sttime, entime;
+	int duration;
 
 	if (opts.xml_filename) {
 		xh = xml_create(ptest_list_length(head), opts.xml_filename);
@@ -373,11 +373,15 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				int fds[2]; fds[0] = pipefd_stdout[0]; fds[1] = pipefd_stderr[0];
 				FILE *fps[2]; fps[0] = fp; fps[1] = fp_stderr;
 
-				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
+				sttime = time(NULL);
+				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, sttime));
 				fprintf(fp, "BEGIN: %s\n", ptest_dir);
 
 				status = wait_child(ptest_dir, p->run_ptest, child,
 						opts.timeout, fds, fps, &timeouted);
+				entime = time(NULL);
+				duration = entime - sttime;
+				fprintf(fps[0], "DURATION: %d\n", duration);
 
 				if (status) {
 					fprintf(fps[0], "\nERROR: Exit status is %d\n", status);
@@ -387,10 +391,10 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 					fprintf(fps[0], "TIMEOUT: %s\n", ptest_dir);
 
 				if (opts.xml_filename)
-					xml_add_case(xh, status, ptest_dir, timeouted);
+					xml_add_case(xh, status, ptest_dir, timeouted, duration);
 
 				fprintf(fp, "END: %s\n", ptest_dir);
-				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
+				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, entime));
 			}
 		PTEST_LIST_ITERATE_END;
 		fprintf(fp, "STOP: %s\n", progname);
@@ -426,9 +430,10 @@ xml_create(int test_count, char *xml_filename)
 }
 
 void
-xml_add_case(FILE *xh, int status, const char *ptest_dir, int timeouted)
+xml_add_case(FILE *xh, int status, const char *ptest_dir, int timeouted, int duration)
 {
 	fprintf(xh, "\t<testcase classname='%s' name='run-ptest'>\n", ptest_dir);
+	fprintf(xh, "\t\t<duration>%d</duration>\n", duration);
 
 	if (status != 0) {
 		fprintf(xh, "\t\t<failure type='exit_code'");
diff --git a/utils.h b/utils.h
index 880105f..5a3f44a 100644
--- a/utils.h
+++ b/utils.h
@@ -48,7 +48,7 @@ extern int run_ptests(struct ptest_list *, const struct ptest_options,
 		const char *, FILE *, FILE *);
 
 extern FILE *xml_create(int, char *);
-extern void xml_add_case(FILE *, int, const char *, int);
+extern void xml_add_case(FILE *, int, const char *, int, int);
 extern void xml_finish(FILE *);
 
 #endif
-- 
2.20.1


