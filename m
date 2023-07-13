Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E80C001B0
	for <webhook@archiver.kernel.org>; Thu, 13 Jul 2023 15:29:04 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
 by mx.groups.io with SMTP id smtpd.web10.11545.1689262135188605341
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jul 2023 08:28:55 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=mlpQf7NG;
 spf=pass (domain: gmail.com, ip: 209.85.210.43, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6b74faaac3bso733554a34.1
        for <yocto@lists.yoctoproject.org>; Thu, 13 Jul 2023 08:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689262134; x=1691854134;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KsYTSoC5gZVKT+MF+dcUA912s3zZxyD3todIndECFTE=;
        b=mlpQf7NGNR0tEovR9vnoG/b7hhj0jBYcPvnG1ML8/jh174p2hvWhkbIBGwgkvFYz+h
         UexKm2QLjIVa/4yZTZKRJZ6nV1OcUoVH0VTDuJ7w7ezC2No1frTBedSm60lg58S8yVgE
         JrZK1L8Ivv+oorTJrOWwLk8ZQZ1oLjJIQ/MDeYtI8Qaii+84lCZ0x11fci8Fg0vN8dSc
         /hBIC/hJkeFB6MgUup+0psFiqSp1+nb5dqbGnDdMUn2cBZsD2JH50wh+lIW3HoY9dac4
         iIj1Qfga6xtDUTgHcVwB+Gl0o7AG7FYU3phnCUztXZvNucIwDGNhRFCPdlCtMwWrSkgV
         6SwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689262134; x=1691854134;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KsYTSoC5gZVKT+MF+dcUA912s3zZxyD3todIndECFTE=;
        b=CHpl81Evc/J65n8TMV9QLB9IAYAbe1EUPJaGHKpzr93p74Hr4rVw450FK+utv8Ojkf
         +VPiMGX6Jc+/9ZGMvydm5gyg+3ZKZQtV4VRYYLkCEmlLf8iUQs0wnThlZcD2KMtPEnAB
         i87g2x/BvzmwdNe72WalRjb4fSdScjTGXTtL7Wt0fbaswPya/fQiRhoIgPd02gmrXNkW
         TCV584s8IlYp+QNDhI5RrKX5MH/OyxALg2DnTa/VcNYrQweAKPmTISSzwqPkw99urnSf
         v7BNUBbp/6qKayoFIe8OWAkXepNZYEvGKWg25jDv+0hBWjq3SZ0KRnr4uzBozpq/aUhH
         YFwQ==
X-Gm-Message-State: ABy/qLaZJYdJzrF5Qhu3ZgDbSoHpA5HhDyvbjyc9o+dvRa0oQ2Oc1f3k
	rlNUSvGndNxLBN+O8tJE1T4gMOselS4=
X-Google-Smtp-Source: APBJJlFRRihTAgEncw+vdqfBwOdcxZnWDfm/xp+6rj10J7oWGC3eQJjnW57Ot4Edq2DkCoP4RmoGCQ==
X-Received: by 2002:a9d:4b01:0:b0:6b8:6785:ed0b with SMTP id q1-20020a9d4b01000000b006b86785ed0bmr1917241otf.30.1689262133723;
        Thu, 13 Jul 2023 08:28:53 -0700 (PDT)
Received: from localhost.localdomain ([2601:282:4300:19e0:caf7:50ff:fef8:954c])
        by smtp.gmail.com with ESMTPSA id z19-20020a0568301db300b006b8a0c7e14asm2943833oti.55.2023.07.13.08.28.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 08:28:53 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [ptest-runner][PATCH] runner: Correctly handle running parallel tests
Date: Thu, 13 Jul 2023 09:28:39 -0600
Message-Id: <20230713152839.382578-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jul 2023 15:29:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60568

8259375 ("runner: Remove threads and mutexes") did not correctly account
for the case where multiple tests are being run in parallel by
ptest-runner. Fix the code to track all of the child processes (but
still have them share the same stdout/stderr pipe) and wait for all of
them to finish before exiting.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 tests/utils.c |  39 +++++++-
 utils.c       | 248 +++++++++++++++++++++++++++++---------------------
 2 files changed, 182 insertions(+), 105 deletions(-)

diff --git a/tests/utils.c b/tests/utils.c
index 19657ee..4560e93 100644
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
+		found_error = found_error ? found_error : find_word(line, "ERROR: Exited with signal");
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
index 6a6e848..c444b2a 100644
--- a/utils.c
+++ b/utils.c
@@ -60,11 +60,20 @@ static struct {
 	FILE *fps[2];
 
 	unsigned int timeout;
-	int timeouted;
-	pid_t pid;
 	int padding1;
 } _child_reader;
 
+struct running_test {
+	struct running_test *next;
+	char *ptest_dir;
+	pid_t pid;
+	time_t start_time;
+	time_t end_time;
+	int status;
+	bool timed_out;
+	bool exited;
+};
+
 static inline char *
 get_stime(char *stime, size_t size, time_t t)
 {
@@ -344,16 +353,18 @@ run_child(char *run_ptest, int fd_stdout, int fd_stderr)
 	/* exit(1); not needed? */
 }
 
-static inline int
-wait_child(pid_t pid)
+static void
+wait_child(struct running_test *test, int options)
 {
-	int status = -1;
-
-	waitpid(pid, &status, 0);
-	if (WIFEXITED(status))
-		status = WEXITSTATUS(status);
+	int status;
 
-	return status;
+	if (!test->exited) {
+		if (waitpid(test->pid, &status, options) == test->pid) {
+			test->status = status;
+			test->end_time = time(NULL);
+			test->exited = true;
+		}
+	}
 }
 
 /* Returns an integer file descriptor.
@@ -416,10 +427,9 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 	pid_t child;
 	int pipefd_stdout[2];
 	int pipefd_stderr[2];
-	time_t sttime, entime;
-	time_t duration;
 	int slave;
 	int pgid = -1;
+	struct running_test *running_tests = NULL;
 
 	if (opts.xml_filename) {
 		xh = xml_create(ptest_list_length(head), opts.xml_filename);
@@ -447,7 +457,6 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 		_child_reader.fps[0] = fp;
 		_child_reader.fps[1] = fp_stderr;
 		_child_reader.timeout = opts.timeout;
-		_child_reader.timeouted = 0;
 
 		fprintf(fp, "START: %s\n", progname);
 		PTEST_LIST_ITERATE_START(head, p)
@@ -491,123 +500,158 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				run_child(p->run_ptest, pipefd_stdout[1], pipefd_stderr[1]);
 
 			} else {
-				int status;
-
-				/* Close write ends of the pipe, otherwise this process will never get EOF when the child dies */
-				do_close(&pipefd_stdout[1]);
-				do_close(&pipefd_stderr[1]);
+				struct running_test *test = malloc(sizeof(*test));
+				test->pid = child;
+				test->status = 0;
+				test->timed_out = false;
+				test->exited = false;
+				test->ptest_dir = ptest_dir;
+				test->start_time = time(NULL);
+				test->next = running_tests;
+				running_tests = test;
 
-				_child_reader.pid = child;
 				if (setpgid(child, pgid) == -1) {
 					fprintf(fp, "ERROR: setpgid() failed, %s\n", strerror(errno));
 				}
 
-				sttime = time(NULL);
-				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, sttime));
+				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, test->start_time));
 				fprintf(fp, "BEGIN: %s\n", ptest_dir);
+			}
+		PTEST_LIST_ITERATE_END
+
+		/*
+		 * Close write ends of the pipe, otherwise this process will
+		 * never get EOF when the child dies
+		 */
+		do_close(&pipefd_stdout[1]);
+		do_close(&pipefd_stderr[1]);
 
-				set_nonblocking(_child_reader.fds[0]);
-				set_nonblocking(_child_reader.fds[1]);
+		set_nonblocking(_child_reader.fds[0]);
+		set_nonblocking(_child_reader.fds[1]);
 
-				struct pollfd pfds[2];
-				for (int i = 0; i < 2; i++) {
-					pfds[i].fd = _child_reader.fds[i];
-					pfds[i].events = POLLIN;
+		struct pollfd pfds[2];
+		for (int i = 0; i < 2; i++) {
+			pfds[i].fd = _child_reader.fds[i];
+			pfds[i].events = POLLIN;
+		}
+
+		while (true) {
+			/*
+			 * Check all the poll file descriptors. Only when all
+			 * of them are done (negative) will the poll() loop
+			 * exit. This ensures all output is read from all
+			 * children.
+			 */
+			bool done = true;
+			for (int i = 0; i < 2; i++) {
+				if (pfds[i].fd >= 0) {
+					done = false;
+					break;
 				}
+			}
 
-				while (true) {
-					/*
-					 * Check all the poll file descriptors.
-					 * Only when all of them are done
-					 * (negative) will we exit the poll()
-					 * loop
-					 */
-					bool done = true;
-					for (int i = 0; i < 2; i++) {
-						if (pfds[i].fd >= 0) {
-							done = false;
-							break;
-						}
-					}
+			if (done) {
+				break;
+			}
 
-					if (done) {
-						break;
-					}
+			int ret = poll(pfds, 2, _child_reader.timeout*1000);
 
-					int ret = poll(pfds, 2, _child_reader.timeout*1000);
-
-					if (ret == 0 && !_child_reader.timeouted) {
-						/* kill the child if we haven't
-						 * already. Note that we
-						 * continue to read data from
-						 * the pipes until EOF to make
-						 * sure we get all the output
-						 */
-						kill(-_child_reader.pid, SIGKILL);
-						_child_reader.timeouted = 1;
+			for (int i = 0; i < 2; i++) {
+				if (pfds[i].revents & (POLLIN | POLLHUP)) {
+					char buf[WAIT_CHILD_BUF_MAX_SIZE];
+					ssize_t n = read(pfds[i].fd, buf, sizeof(buf));
+
+					if (n == 0) {
+						/* Closed */
+						pfds[i].fd = -1;
+						continue;
 					}
 
-					for (int i = 0; i < 2; i++) {
-						if (pfds[i].revents & (POLLIN | POLLHUP)) {
-							char buf[WAIT_CHILD_BUF_MAX_SIZE];
-							ssize_t n = read(pfds[i].fd, buf, sizeof(buf));
-
-							if (n == 0) {
-								/* Closed */
-								pfds[i].fd = -1;
-								continue;
-							}
-
-							if (n < 0) {
-								if (errno != EAGAIN && errno != EWOULDBLOCK) {
-									pfds[i].fd = -1;
-									fprintf(stderr, "Error reading from stream %d: %s\n", i, strerror(errno));
-								}
-								continue;
-							} else {
-								fwrite(buf, (size_t)n, 1, _child_reader.fps[i]);
-							}
+					if (n < 0) {
+						if (errno != EAGAIN && errno != EWOULDBLOCK) {
+							pfds[i].fd = -1;
+							fprintf(stderr, "Error reading from stream %d: %s\n", i, strerror(errno));
 						}
+						continue;
+					} else {
+						fwrite(buf, (size_t)n, 1, _child_reader.fps[i]);
 					}
 				}
-				collect_system_state(_child_reader.fps[0]);
+			}
 
-				for (int i = 0; i < 2; i++) {
-					fflush(_child_reader.fps[i]);
-				}
+			for (struct running_test *test = running_tests; test; test = test->next) {
+				/*
+				 * Check if this child has exited yet.
+				 */
+				wait_child(test, WNOHANG);
 
 				/*
-				 * This kill is just in case the child did
-				 * something really silly like close its
-				 * stdout and stderr but then go into an
-				 * infinite loop and never exit. Normally, it
-				 * will just fail because the child is already
-				 * dead
+				 * If a timeout has occurred, kill the child if
+				 * it has not been done already and has not
+				 * exited
 				 */
-				if (!_child_reader.timeouted) {
-					kill(-_child_reader.pid, SIGKILL);
+				if (ret == 0 && !test->exited && !test->timed_out) {
+					kill(-test->pid, SIGKILL);
+					test->timed_out = true;
 				}
-				status = wait_child(child);
+			}
+		}
+		collect_system_state(_child_reader.fps[0]);
+
+		for (int i = 0; i < 2; i++) {
+			fflush(_child_reader.fps[i]);
+		}
+
+		for (struct running_test *test = running_tests; test; test = test->next) {
+			time_t duration;
+			int exit_code = 0;
+
+			/*
+			 * This kill is just in case the child did something really
+			 * silly like close its stdout and stderr but then go into an
+			 * infinite loop and never exit. Normally, it will just fail
+			 * because the child is already dead
+			 */
+			if (!test->timed_out && !test->exited) {
+				kill(-test->pid, SIGKILL);
+			}
 
-				entime = time(NULL);
-				duration = entime - sttime;
+			wait_child(test, 0);
 
-				if (status) {
-					fprintf(fp, "\nERROR: Exit status is %d\n", status);
+			duration = test->end_time - test->start_time;
+
+			if (WIFEXITED(test->status)) {
+				exit_code = WEXITSTATUS(test->status);
+				if (exit_code) {
+					fprintf(fp, "\nERROR: Exit status is %d\n", exit_code);
 					rc += 1;
 				}
-				fprintf(fp, "DURATION: %d\n", (int) duration);
-				if (_child_reader.timeouted)
-					fprintf(fp, "TIMEOUT: %s\n", ptest_dir);
+			} else if (WIFSIGNALED(test->status) && !test->timed_out) {
+				int signal = WTERMSIG(test->status);
+				fprintf(fp, "\nERROR: Exited with signal %s (%d)\n", strsignal(signal), signal);
+				rc += 1;
+			}
+			fprintf(fp, "DURATION: %d\n", (int) duration);
+			if (test->timed_out) {
+				fprintf(fp, "TIMEOUT: %s\n", test->ptest_dir);
+				rc += 1;
+			}
 
-				if (opts.xml_filename)
-					xml_add_case(xh, status, ptest_dir, _child_reader.timeouted, (int) duration);
+			if (opts.xml_filename)
+				xml_add_case(xh, exit_code, test->ptest_dir, test->timed_out, (int) duration);
+
+			fprintf(fp, "END: %s\n", test->ptest_dir);
+			fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, test->end_time));
+		}
+
+		while (running_tests) {
+			struct running_test *test = running_tests;
+			running_tests = running_tests->next;
+
+			free(test->ptest_dir);
+			free(test);
+		}
 
-				fprintf(fp, "END: %s\n", ptest_dir);
-				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, entime));
-			}
-			free(ptest_dir);
-		PTEST_LIST_ITERATE_END
 		fprintf(fp, "STOP: %s\n", progname);
 
 		do_close(&pipefd_stdout[0]);
-- 
2.33.0


