Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5919BC0015E
	for <webhook@archiver.kernel.org>; Mon, 17 Jul 2023 14:28:47 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
 by mx.groups.io with SMTP id smtpd.web11.9685.1689604118175196438
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jul 2023 07:28:38 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=NuJ8XcME;
 spf=pass (domain: gmail.com, ip: 209.85.160.48, mailfrom: jpewhacker@gmail.com)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-1a1fa977667so3556936fac.1
        for <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 07:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689604117; x=1692196117;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uH3l0KKb+bpndRFgWBEMvrpOUdXxsn7h6vYE2tWABZk=;
        b=NuJ8XcMESKhHaLduJ58mXn73TUwE+gTo0pXW5peJqrXZwgzKRHfsOSJ0YbDOvUo76i
         rlPdWOaqLLXIUk0OudhFGoZv+FGGjaxZDVJHibtoSN2BZKQ/L/bLYmEu361zHZA19wld
         aMZDTpGENfi7P/cVhmxyyEHvSpED8ZE2c3m9v4YvvAQ5UYsl47feWfRHfv+//PmzYiQ2
         LbQUaG16XFMCzcvHe5C4zJ2r0RuHaIRR3dME7VK2wneR2zc/qcolZgkJLoCDrXzqH+Cl
         TCsbk/I4T17WndTKp6wwihUFr66WoMd3HQ14+WcbAy+cGOyt3brTClTlOPZsWCjemBV9
         KKDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689604117; x=1692196117;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uH3l0KKb+bpndRFgWBEMvrpOUdXxsn7h6vYE2tWABZk=;
        b=dHXDTdspcq2X9z6dHqtvLDnJT9UG2trT8dX/00Vr+gsCFFcD4geZO8JI6A5prBSCvq
         gKFeeIBMEQrB9I54hARHUDDMGncSHwZMnF8xvLGct1yfVOFK1U6NmtwpK0OBG9oejLY6
         mM3wv+xRlHmKEnIn1ZWUf0Vn0dDqLZv3rpZHygtKTPk7WbtmQ2DmPeaSpFsEYV2kr2gB
         RdalbMB+CxA9ThI8Z7qm95Rx09VQaXZl8LEGpLW4uR2Kzw8TTvsvOLZaCNsO5rNPGc9W
         HpBZEYLI5ftByvgYTlWS4Mob/Dk/blcvOOBqDbAEl3vqqCk9v84k5BJyhaKSunS+q/m/
         qtWg==
X-Gm-Message-State: ABy/qLYF6X91lD9dSleEvqM8dakZIk8oBp5vkPQYLWR2YcuHh0nmxk1+
	HDsQ2zJ2EAFtAV4MSSw4Ky+wFi6LDXc=
X-Google-Smtp-Source: APBJJlEoXYCDUK/Z/8+7EPzSLlpj4uXLQ4djJ1ZhQR1rT2Idd91bs32tMm5ob6+kvnPcwWMCZ5CAQg==
X-Received: by 2002:a05:6870:b69e:b0:1b7:8950:c286 with SMTP id cy30-20020a056870b69e00b001b78950c286mr14116910oab.17.1689604116766;
        Mon, 17 Jul 2023 07:28:36 -0700 (PDT)
Received: from localhost.localdomain ([2601:282:4300:19e0::ad83])
        by smtp.gmail.com with ESMTPSA id x6-20020a056870740600b001b04434d934sm7205967oam.34.2023.07.17.07.28.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 07:28:35 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [ptest-runner][PATCH 1/4] Revert "runner: Correctly handle running parallel tests"
Date: Mon, 17 Jul 2023 08:28:28 -0600
Message-Id: <20230717142831.1634172-2-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230717142831.1634172-1-JPEWhacker@gmail.com>
References: <20230717142831.1634172-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 14:28:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60589

This reverts commit 07d8a676aa962ecc5ec264ec33b0074adf2a8733.

This commit incorrectly assumed that ptest ran tests in parallel, which
is not true. Doing so interleaves the test output in the log file, which
the OE selftest parser cannot handle and thus breaks the test cases.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 tests/utils.c |  39 +-------
 utils.c       | 248 +++++++++++++++++++++-----------------------------
 2 files changed, 105 insertions(+), 182 deletions(-)

diff --git a/tests/utils.c b/tests/utils.c
index 4560e93..19657ee 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -50,10 +50,9 @@ static char *ptests_found[] = {
 	"glibc",
 	"hang",
 	"python",
-	"signal",
 	NULL
 };
-static int ptests_found_length = 7;
+static int ptests_found_length = 6;
 static char *ptests_not_found[] = {
 	"busybox",
 	"perl",
@@ -187,7 +186,6 @@ START_TEST(test_run_ptests)
 	head = get_available_ptests(opts_directory);
 	ptest_list_remove(head, "hang", 1);
 	ptest_list_remove(head, "fail", 1);
-	ptest_list_remove(head, "signal", 1);
 
 	rc = run_ptests(head, opts, "test_run_ptests", fp_stdout, fp_stderr);
 	ck_assert(rc == 0);
@@ -217,8 +215,8 @@ search_for_timeout_and_duration(const int rp, FILE *fp_stdout)
 		found_duration = found_duration ? found_duration : find_word(line, duration_str);
 	}
 
-	ck_assert_msg(found_timeout == true, "TIMEOUT not found");
-	ck_assert_msg(found_duration == true, "DURATION not found");
+	ck_assert(found_timeout == true);
+	ck_assert(found_duration == true);
 }
 
 START_TEST(test_run_timeout_duration_ptest)
@@ -232,36 +230,6 @@ START_TEST(test_run_timeout_duration_ptest)
 }
 END_TEST
 
-static void
-search_for_signal_and_duration(const int rp, FILE *fp_stdout)
-{
-	char line_buf[PRINT_PTEST_BUF_SIZE];
-	bool found_error = false, found_duration = false;
-	char *line = NULL;
-
-	ck_assert(rp != 0);
-
-	while ((line = fgets(line_buf, PRINT_PTEST_BUF_SIZE, fp_stdout)) != NULL) {
-		// once true, stay true
-		found_error = found_error ? found_error : find_word(line, "ERROR: Exited with signal");
-		found_duration = found_duration ? found_duration : find_word(line, "DURATION");
-	}
-
-	ck_assert_msg(found_error == true, "ERROR not found");
-	ck_assert_msg(found_duration == true, "DURATION not found");
-}
-
-START_TEST(test_run_signal_ptest)
-{
-	struct ptest_list *head = get_available_ptests(opts_directory);
-	unsigned int timeout = 10;
-
-	test_ptest_expected_failure(head, timeout, "signal", search_for_signal_and_duration);
-
-	ptest_list_free_all(head);
-}
-END_TEST
-
 static void
 search_for_fail(const int rp, FILE *fp_stdout)
 {
@@ -350,7 +318,6 @@ utils_suite(void)
 	tcase_add_test(tc_core, test_filter_ptests);
 	tcase_add_test(tc_core, test_run_ptests);
 	tcase_add_test(tc_core, test_run_timeout_duration_ptest);
-	tcase_add_test(tc_core, test_run_signal_ptest);
 	tcase_add_test(tc_core, test_run_fail_ptest);
 	tcase_add_test(tc_core, test_xml_pass);
 	tcase_add_test(tc_core, test_xml_fail);
diff --git a/utils.c b/utils.c
index c444b2a..6a6e848 100644
--- a/utils.c
+++ b/utils.c
@@ -60,20 +60,11 @@ static struct {
 	FILE *fps[2];
 
 	unsigned int timeout;
+	int timeouted;
+	pid_t pid;
 	int padding1;
 } _child_reader;
 
-struct running_test {
-	struct running_test *next;
-	char *ptest_dir;
-	pid_t pid;
-	time_t start_time;
-	time_t end_time;
-	int status;
-	bool timed_out;
-	bool exited;
-};
-
 static inline char *
 get_stime(char *stime, size_t size, time_t t)
 {
@@ -353,18 +344,16 @@ run_child(char *run_ptest, int fd_stdout, int fd_stderr)
 	/* exit(1); not needed? */
 }
 
-static void
-wait_child(struct running_test *test, int options)
+static inline int
+wait_child(pid_t pid)
 {
-	int status;
+	int status = -1;
 
-	if (!test->exited) {
-		if (waitpid(test->pid, &status, options) == test->pid) {
-			test->status = status;
-			test->end_time = time(NULL);
-			test->exited = true;
-		}
-	}
+	waitpid(pid, &status, 0);
+	if (WIFEXITED(status))
+		status = WEXITSTATUS(status);
+
+	return status;
 }
 
 /* Returns an integer file descriptor.
@@ -427,9 +416,10 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 	pid_t child;
 	int pipefd_stdout[2];
 	int pipefd_stderr[2];
+	time_t sttime, entime;
+	time_t duration;
 	int slave;
 	int pgid = -1;
-	struct running_test *running_tests = NULL;
 
 	if (opts.xml_filename) {
 		xh = xml_create(ptest_list_length(head), opts.xml_filename);
@@ -457,6 +447,7 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 		_child_reader.fps[0] = fp;
 		_child_reader.fps[1] = fp_stderr;
 		_child_reader.timeout = opts.timeout;
+		_child_reader.timeouted = 0;
 
 		fprintf(fp, "START: %s\n", progname);
 		PTEST_LIST_ITERATE_START(head, p)
@@ -500,158 +491,123 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				run_child(p->run_ptest, pipefd_stdout[1], pipefd_stderr[1]);
 
 			} else {
-				struct running_test *test = malloc(sizeof(*test));
-				test->pid = child;
-				test->status = 0;
-				test->timed_out = false;
-				test->exited = false;
-				test->ptest_dir = ptest_dir;
-				test->start_time = time(NULL);
-				test->next = running_tests;
-				running_tests = test;
+				int status;
+
+				/* Close write ends of the pipe, otherwise this process will never get EOF when the child dies */
+				do_close(&pipefd_stdout[1]);
+				do_close(&pipefd_stderr[1]);
 
+				_child_reader.pid = child;
 				if (setpgid(child, pgid) == -1) {
 					fprintf(fp, "ERROR: setpgid() failed, %s\n", strerror(errno));
 				}
 
-				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, test->start_time));
+				sttime = time(NULL);
+				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, sttime));
 				fprintf(fp, "BEGIN: %s\n", ptest_dir);
-			}
-		PTEST_LIST_ITERATE_END
-
-		/*
-		 * Close write ends of the pipe, otherwise this process will
-		 * never get EOF when the child dies
-		 */
-		do_close(&pipefd_stdout[1]);
-		do_close(&pipefd_stderr[1]);
 
-		set_nonblocking(_child_reader.fds[0]);
-		set_nonblocking(_child_reader.fds[1]);
+				set_nonblocking(_child_reader.fds[0]);
+				set_nonblocking(_child_reader.fds[1]);
 
-		struct pollfd pfds[2];
-		for (int i = 0; i < 2; i++) {
-			pfds[i].fd = _child_reader.fds[i];
-			pfds[i].events = POLLIN;
-		}
-
-		while (true) {
-			/*
-			 * Check all the poll file descriptors. Only when all
-			 * of them are done (negative) will the poll() loop
-			 * exit. This ensures all output is read from all
-			 * children.
-			 */
-			bool done = true;
-			for (int i = 0; i < 2; i++) {
-				if (pfds[i].fd >= 0) {
-					done = false;
-					break;
+				struct pollfd pfds[2];
+				for (int i = 0; i < 2; i++) {
+					pfds[i].fd = _child_reader.fds[i];
+					pfds[i].events = POLLIN;
 				}
-			}
 
-			if (done) {
-				break;
-			}
-
-			int ret = poll(pfds, 2, _child_reader.timeout*1000);
+				while (true) {
+					/*
+					 * Check all the poll file descriptors.
+					 * Only when all of them are done
+					 * (negative) will we exit the poll()
+					 * loop
+					 */
+					bool done = true;
+					for (int i = 0; i < 2; i++) {
+						if (pfds[i].fd >= 0) {
+							done = false;
+							break;
+						}
+					}
 
-			for (int i = 0; i < 2; i++) {
-				if (pfds[i].revents & (POLLIN | POLLHUP)) {
-					char buf[WAIT_CHILD_BUF_MAX_SIZE];
-					ssize_t n = read(pfds[i].fd, buf, sizeof(buf));
+					if (done) {
+						break;
+					}
 
-					if (n == 0) {
-						/* Closed */
-						pfds[i].fd = -1;
-						continue;
+					int ret = poll(pfds, 2, _child_reader.timeout*1000);
+
+					if (ret == 0 && !_child_reader.timeouted) {
+						/* kill the child if we haven't
+						 * already. Note that we
+						 * continue to read data from
+						 * the pipes until EOF to make
+						 * sure we get all the output
+						 */
+						kill(-_child_reader.pid, SIGKILL);
+						_child_reader.timeouted = 1;
 					}
 
-					if (n < 0) {
-						if (errno != EAGAIN && errno != EWOULDBLOCK) {
-							pfds[i].fd = -1;
-							fprintf(stderr, "Error reading from stream %d: %s\n", i, strerror(errno));
+					for (int i = 0; i < 2; i++) {
+						if (pfds[i].revents & (POLLIN | POLLHUP)) {
+							char buf[WAIT_CHILD_BUF_MAX_SIZE];
+							ssize_t n = read(pfds[i].fd, buf, sizeof(buf));
+
+							if (n == 0) {
+								/* Closed */
+								pfds[i].fd = -1;
+								continue;
+							}
+
+							if (n < 0) {
+								if (errno != EAGAIN && errno != EWOULDBLOCK) {
+									pfds[i].fd = -1;
+									fprintf(stderr, "Error reading from stream %d: %s\n", i, strerror(errno));
+								}
+								continue;
+							} else {
+								fwrite(buf, (size_t)n, 1, _child_reader.fps[i]);
+							}
 						}
-						continue;
-					} else {
-						fwrite(buf, (size_t)n, 1, _child_reader.fps[i]);
 					}
 				}
-			}
+				collect_system_state(_child_reader.fps[0]);
 
-			for (struct running_test *test = running_tests; test; test = test->next) {
-				/*
-				 * Check if this child has exited yet.
-				 */
-				wait_child(test, WNOHANG);
+				for (int i = 0; i < 2; i++) {
+					fflush(_child_reader.fps[i]);
+				}
 
 				/*
-				 * If a timeout has occurred, kill the child if
-				 * it has not been done already and has not
-				 * exited
+				 * This kill is just in case the child did
+				 * something really silly like close its
+				 * stdout and stderr but then go into an
+				 * infinite loop and never exit. Normally, it
+				 * will just fail because the child is already
+				 * dead
 				 */
-				if (ret == 0 && !test->exited && !test->timed_out) {
-					kill(-test->pid, SIGKILL);
-					test->timed_out = true;
+				if (!_child_reader.timeouted) {
+					kill(-_child_reader.pid, SIGKILL);
 				}
-			}
-		}
-		collect_system_state(_child_reader.fps[0]);
-
-		for (int i = 0; i < 2; i++) {
-			fflush(_child_reader.fps[i]);
-		}
-
-		for (struct running_test *test = running_tests; test; test = test->next) {
-			time_t duration;
-			int exit_code = 0;
-
-			/*
-			 * This kill is just in case the child did something really
-			 * silly like close its stdout and stderr but then go into an
-			 * infinite loop and never exit. Normally, it will just fail
-			 * because the child is already dead
-			 */
-			if (!test->timed_out && !test->exited) {
-				kill(-test->pid, SIGKILL);
-			}
+				status = wait_child(child);
 
-			wait_child(test, 0);
+				entime = time(NULL);
+				duration = entime - sttime;
 
-			duration = test->end_time - test->start_time;
-
-			if (WIFEXITED(test->status)) {
-				exit_code = WEXITSTATUS(test->status);
-				if (exit_code) {
-					fprintf(fp, "\nERROR: Exit status is %d\n", exit_code);
+				if (status) {
+					fprintf(fp, "\nERROR: Exit status is %d\n", status);
 					rc += 1;
 				}
-			} else if (WIFSIGNALED(test->status) && !test->timed_out) {
-				int signal = WTERMSIG(test->status);
-				fprintf(fp, "\nERROR: Exited with signal %s (%d)\n", strsignal(signal), signal);
-				rc += 1;
-			}
-			fprintf(fp, "DURATION: %d\n", (int) duration);
-			if (test->timed_out) {
-				fprintf(fp, "TIMEOUT: %s\n", test->ptest_dir);
-				rc += 1;
-			}
-
-			if (opts.xml_filename)
-				xml_add_case(xh, exit_code, test->ptest_dir, test->timed_out, (int) duration);
-
-			fprintf(fp, "END: %s\n", test->ptest_dir);
-			fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, test->end_time));
-		}
-
-		while (running_tests) {
-			struct running_test *test = running_tests;
-			running_tests = running_tests->next;
+				fprintf(fp, "DURATION: %d\n", (int) duration);
+				if (_child_reader.timeouted)
+					fprintf(fp, "TIMEOUT: %s\n", ptest_dir);
 
-			free(test->ptest_dir);
-			free(test);
-		}
+				if (opts.xml_filename)
+					xml_add_case(xh, status, ptest_dir, _child_reader.timeouted, (int) duration);
 
+				fprintf(fp, "END: %s\n", ptest_dir);
+				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, entime));
+			}
+			free(ptest_dir);
+		PTEST_LIST_ITERATE_END
 		fprintf(fp, "STOP: %s\n", progname);
 
 		do_close(&pipefd_stdout[0]);
-- 
2.33.0


