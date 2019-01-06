Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3960E00C59; Sun,  6 Jan 2019 09:43:34 -0800 (PST)
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
	*      [209.85.167.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
	[209.85.167.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBB58E00BFB
	for <yocto@yoctoproject.org>; Sun,  6 Jan 2019 09:43:33 -0800 (PST)
Received: by mail-oi1-f193.google.com with SMTP id x202so34124409oif.13
	for <yocto@yoctoproject.org>; Sun, 06 Jan 2019 09:43:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=340sYdwQ/lPexz0MlzCnucx/Vw45HT0uFkOImq5+2Dw=;
	b=AJOHpDgOJszlf7WCmFRfDR47ugKXtbTJtwGEX+sXplyqOMZGq/BgmH07NXOnSYgGlL
	mYuJZpm1XSGNupcrpYZBjlFaP+DyMhWIa+JIQZv8f567P5SGy4JHCYuy7d/4T2bULmfJ
	PSWi0OElqvhNqCfQXTHv4wusfdWF9zT8+y7x8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=340sYdwQ/lPexz0MlzCnucx/Vw45HT0uFkOImq5+2Dw=;
	b=V0m0MloDldpAhnGlZwNkLw4asJcvJu2z+j9stLI0FwxZxCCFjAw/TUF10u2gnsh/YE
	myHJxjpjK+bJ9VPW7gzYU79erMQ46JfcwS7Franw/o2ZXe/lFXk/xwKasuWI9oWs3gG6
	5KYn4LDmXLJRUkHDjBTrCwNbwjkWUlCzaDq7fXHlF5ScTR4l5+G1WiP5J6kQg9unMQ2q
	e59vJW2dGMFKs5NFwJHCm5Azd90SLsY5oT+2qB+8WDxNu8FF6chpmA1GnAbBOnIx8mdo
	fbpBoOeKqp0JTbhbG5ywz7y3iI3KlQR/CIXaK56UEX9ncDK0K0Q9Tm5MbcbimO6Fobjd
	MJxw==
X-Gm-Message-State: AJcUukeyon48lM7zCRYEnAVp8CI72uy0D58JhbxcKOuW3mx53fB/qxzi
	kVGARHeXwyNap+jsbydb0AsfgKKEboo=
X-Google-Smtp-Source: ALg8bN7cVdmxy+/5g7UDFjom1KkeijQu4NLQLwJz+YuVigJsbNiWx+Tqo4ci2nZDnsDAJatoxXUgEg==
X-Received: by 2002:aca:b388:: with SMTP id c130mr5806915oif.123.1546796612791;
	Sun, 06 Jan 2019 09:43:32 -0800 (PST)
Received: from blackbox.Home ([200.68.141.36])
	by smtp.gmail.com with ESMTPSA id
	x127sm31747145oia.20.2019.01.06.09.43.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 06 Jan 2019 09:43:32 -0800 (PST)
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
To: yocto@yoctoproject.org
Date: Sun,  6 Jan 2019 11:43:28 -0600
Message-Id: <20190106174328.20978-1-anibal.limon@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [PATCH][ptest-runner] ptest-runner: Add support to report duration of each ptest
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
X-List-Received-Date: Sun, 06 Jan 2019 17:43:34 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

In stdout reported as,

...
BEGIN: ptest-dir
...
DURATION: Ns
END: ptest-dir
...

In XML reported as,

...
<testcase classname='test1' name='run-ptest'>
	<duration>Ns</duration>
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
index 17f91c2..33bce41 100644
--- a/tests/data/reference.xml
+++ b/tests/data/reference.xml
@@ -1,8 +1,10 @@
 <?xml version='1.0' encoding='UTF-8'?>
 <testsuite name='ptest' tests='2'>
 	<testcase classname='test1' name='run-ptest'>
+		<duration>5s</duration>
 	</testcase>
 	<testcase classname='test2' name='run-ptest'>
+		<duration>10s</duration>
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
index 4a38ea1..f3b417c 100644
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
+				fprintf(fps[0], "DURATION: %ds\n", duration);
 
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
+	fprintf(xh, "\t\t<duration>%ds</duration>\n", duration);
 
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


