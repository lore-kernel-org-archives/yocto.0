Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 578C9EB64DC
	for <webhook@archiver.kernel.org>; Mon, 17 Jul 2023 14:28:47 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
 by mx.groups.io with SMTP id smtpd.web11.9689.1689604121031130584
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jul 2023 07:28:41 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=XfCnDhKX;
 spf=pass (domain: gmail.com, ip: 209.85.160.48, mailfrom: jpewhacker@gmail.com)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-1a28de15c8aso3563922fac.2
        for <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 07:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689604119; x=1692196119;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4To0Ih8eo7BAZMeRhZr6lGt5SXM5JFws8B326PT7KGE=;
        b=XfCnDhKXdriES+aw16zz739q/6fmMXNOEYyDXkGKqyeXW06AVT0pmwpAtohNB6ubAN
         ZmLS9X9RI/rFnsz4RzVKXGWHclRDDou8k/tS1AH77Gr6fwDPJ4/jcsyLEG7Ek4reihDf
         Edgeqtv+WffrEcwCQPE4+b0S0wt0esRmmIGG0ZInotGsOG9SZttvJqmCnOgZe6tW2Zgh
         KgJqYvCPZbqLKrh7dsmWhAF8vbOhQ5Z4TG+/YmSkZCwIQPoS6KdPueGzGlNYmOv22zTj
         8K9hAasuRJU53PJ06JfFo34DWQ45Xb9lVNqOsgZWoBReNWMyr94KiznESPw3daicJAfd
         gxgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689604119; x=1692196119;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4To0Ih8eo7BAZMeRhZr6lGt5SXM5JFws8B326PT7KGE=;
        b=VQE7Q8JBGVPP0TtbUyyEu4gztoBm1QmzLLYF+q81KiwyHyMKAQBqUKh2F4pYXG6xJu
         Kf/H6Pwws0Bd4CfS7pRzPUC4gM9y+0HbhmOlZV9seriPngZR96odtEhE8Kf+TRDIcc+B
         nVjfKbHAyE7Q50yfiud3msjvdAv/DNm31dsA3CoolMIlKmCGmzdVF+4bv5CPIhfmedSQ
         Kb/4oV2W2pwQ4yprLFBKE8Q4ey6i+lEx83m6+6TuN2sjP/MtnOjkt8JZ7fnnEkg1IHbQ
         FwDWZLwvXZB2MkMBcWEerVmRY7+4kO+c9q3DsBaiX2ZWFXI1NLNqde/lM9zSaZ7Oca8H
         HNRQ==
X-Gm-Message-State: ABy/qLYHHgEeGVtEaqczISb1rekYyBVc7jAjVVaFtPp6PdoWDwLhC1nP
	tIfVCRgw1lk1rkQESNn8J2MFeYhISwQ=
X-Google-Smtp-Source: APBJJlH04y2KP6o7/03oX/q4w36cBIlWasKsLNc0T8OP0r6V4qgBsAx1iMI+d7ddJDey8TWCNLyf+w==
X-Received: by 2002:a05:6870:9726:b0:1b0:5bf7:3bb6 with SMTP id n38-20020a056870972600b001b05bf73bb6mr13287973oaq.28.1689604119583;
        Mon, 17 Jul 2023 07:28:39 -0700 (PDT)
Received: from localhost.localdomain ([2601:282:4300:19e0::ad83])
        by smtp.gmail.com with ESMTPSA id x6-20020a056870740600b001b04434d934sm7205967oam.34.2023.07.17.07.28.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 07:28:38 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [ptest-runner][PATCH 3/4] Report if child dies from a signal
Date: Mon, 17 Jul 2023 08:28:30 -0600
Message-Id: <20230717142831.1634172-4-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230717142831.1634172-1-JPEWhacker@gmail.com>
References: <20230717142831.1634172-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 14:28:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60591

Tests can exit due to a signal, which should also be reported in the
test output.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 tests/data/signal/ptest/run-ptest | 10 ++++++++
 tests/utils.c                     | 39 +++++++++++++++++++++++++++---
 utils.c                           | 40 +++++++++++++++++--------------
 3 files changed, 68 insertions(+), 21 deletions(-)
 create mode 100755 tests/data/signal/ptest/run-ptest

diff --git a/tests/data/signal/ptest/run-ptest b/tests/data/signal/ptest/run-ptest
new file mode 100755
index 0000000..93ac65b
--- /dev/null
+++ b/tests/data/signal/ptest/run-ptest
@@ -0,0 +1,10 @@
+#!/bin/sh
+
+echo "signal" 1>&2
+echo "signal"
+
+kill -ABRT $$
+
+while true; do
+	sleep 1
+done
diff --git a/tests/utils.c b/tests/utils.c
index 19657ee..d82b90e 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -50,9 +50,10 @@ static char *ptests_found[] = {
 	"glibc",
 	"hang",
 	"python",
+	"signal",
 	NULL
 };
-static int ptests_found_length = 6;
+static int ptests_found_length = 7;
 static char *ptests_not_found[] = {
 	"busybox",
 	"perl",
@@ -186,6 +187,7 @@ START_TEST(test_run_ptests)
 	head = get_available_ptests(opts_directory);
 	ptest_list_remove(head, "hang", 1);
 	ptest_list_remove(head, "fail", 1);
+	ptest_list_remove(head, "signal", 1);
 
 	rc = run_ptests(head, opts, "test_run_ptests", fp_stdout, fp_stderr);
 	ck_assert(rc == 0);
@@ -215,8 +217,8 @@ search_for_timeout_and_duration(const int rp, FILE *fp_stdout)
 		found_duration = found_duration ? found_duration : find_word(line, duration_str);
 	}
 
-	ck_assert(found_timeout == true);
-	ck_assert(found_duration == true);
+	ck_assert_msg(found_timeout == true, "TIMEOUT not found");
+	ck_assert_msg(found_duration == true, "DURATION not found");
 }
 
 START_TEST(test_run_timeout_duration_ptest)
@@ -230,6 +232,36 @@ START_TEST(test_run_timeout_duration_ptest)
 }
 END_TEST
 
+static void
+search_for_signal_and_duration(const int rp, FILE *fp_stdout)
+{
+	char line_buf[PRINT_PTEST_BUF_SIZE];
+	bool found_error = false, found_duration = false;
+	char *line = NULL;
+
+	ck_assert(rp != 0);
+
+	while ((line = fgets(line_buf, PRINT_PTEST_BUF_SIZE, fp_stdout)) != NULL) {
+		// once true, stay true
+		found_error = found_error ? found_error : find_word(line, "ERROR: Exited from signal");
+		found_duration = found_duration ? found_duration : find_word(line, "DURATION");
+	}
+
+	ck_assert_msg(found_error == true, "ERROR not found");
+	ck_assert_msg(found_duration == true, "DURATION not found");
+}
+
+START_TEST(test_run_signal_ptest)
+{
+	struct ptest_list *head = get_available_ptests(opts_directory);
+	unsigned int timeout = 10;
+
+	test_ptest_expected_failure(head, timeout, "signal", search_for_signal_and_duration);
+
+	ptest_list_free_all(head);
+}
+END_TEST
+
 static void
 search_for_fail(const int rp, FILE *fp_stdout)
 {
@@ -318,6 +350,7 @@ utils_suite(void)
 	tcase_add_test(tc_core, test_filter_ptests);
 	tcase_add_test(tc_core, test_run_ptests);
 	tcase_add_test(tc_core, test_run_timeout_duration_ptest);
+	tcase_add_test(tc_core, test_run_signal_ptest);
 	tcase_add_test(tc_core, test_run_fail_ptest);
 	tcase_add_test(tc_core, test_xml_pass);
 	tcase_add_test(tc_core, test_xml_fail);
diff --git a/utils.c b/utils.c
index c1188dd..34ca2f0 100644
--- a/utils.c
+++ b/utils.c
@@ -343,18 +343,6 @@ run_child(char *run_ptest, int fd_stdout, int fd_stderr)
 	/* exit(1); not needed? */
 }
 
-static inline int
-wait_child(pid_t pid)
-{
-	int status = -1;
-
-	waitpid(pid, &status, 0);
-	if (WIFEXITED(status))
-		status = WEXITSTATUS(status);
-
-	return status;
-}
-
 /* Returns an integer file descriptor.
  * If it returns < 0, an error has occurred.
  * Otherwise, it has returned the slave pty file descriptor.
@@ -585,21 +573,37 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				if (!_child_reader.timeouted) {
 					kill(-child, SIGKILL);
 				}
-				status = wait_child(child);
+				waitpid(child, &status, 0);
 
 				entime = time(NULL);
 				duration = entime - sttime;
 
-				if (status) {
-					fprintf(fp, "\nERROR: Exit status is %d\n", status);
-					rc += 1;
+				int exit_code = 0;
+
+				if (!_child_reader.timeouted) {
+					if (WIFEXITED(status)) {
+						exit_code = WEXITSTATUS(status);
+						if (exit_code) {
+							fprintf(fp, "\nERROR: Exit status is %d\n", exit_code);
+							rc += 1;
+						}
+					} else if (WIFSIGNALED(status)) {
+						int signal = WTERMSIG(status);
+						fprintf(fp, "\nERROR: Exited from signal %s (%d)\n", strsignal(signal), signal);
+						rc += 1;
+					} else {
+						fprintf(fp, "\nERROR: Exited for unknown reason (%d)\n", status);
+						rc += 1;
+					}
 				}
 				fprintf(fp, "DURATION: %d\n", (int) duration);
-				if (_child_reader.timeouted)
+				if (_child_reader.timeouted) {
 					fprintf(fp, "TIMEOUT: %s\n", ptest_dir);
+					rc += 1;
+				}
 
 				if (opts.xml_filename)
-					xml_add_case(xh, status, ptest_dir, _child_reader.timeouted, (int) duration);
+					xml_add_case(xh, exit_code, ptest_dir, _child_reader.timeouted, (int) duration);
 
 				fprintf(fp, "END: %s\n", ptest_dir);
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, entime));
-- 
2.33.0


