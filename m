Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F00DC001DF
	for <webhook@archiver.kernel.org>; Tue, 18 Jul 2023 17:26:35 +0000 (UTC)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
 by mx.groups.io with SMTP id smtpd.web10.1923.1689701186265322816
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jul 2023 10:26:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=FvY07xnz;
 spf=pass (domain: gmail.com, ip: 209.85.210.44, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-6b9b835d302so2788137a34.1
        for <yocto@lists.yoctoproject.org>; Tue, 18 Jul 2023 10:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689701185; x=1692293185;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q0P7fzlMoPiY/NNkquroxGdBAj1XyAgJhy6dA2mIHQA=;
        b=FvY07xnzsJb4+lnTKWVjyIQITl3JnYCu11Juafk05mRaETrzAXIWCDxsCvnUjWk1ti
         kju7s4QSyV59Ibunzv/kkcEURG94mGqbeS/HNUjnPZrIkxtkPVDi8pWzRfz79KqM8OTX
         sQ8EY3YpYCGegIk7BlIee4KIZ1q3xd8uuc+Btl+J1OmHFcDwDrUjrpk3Gl7o5b5/qR58
         NcEdYIz8NWXjdyYlAL2+RlB+fbRlrslyqMY94lyj7F2GkDVkKZ0FYr/8EdObg7yJWyTa
         vFdawKVXM1V5NksuVHQNiK9C074TGv2nH483f4Zd4ImgPzlFtdyfI92Z6WrgAKVjceJM
         cMRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689701185; x=1692293185;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q0P7fzlMoPiY/NNkquroxGdBAj1XyAgJhy6dA2mIHQA=;
        b=eEHviyZTrIPC2O1YFWCjlWeSs4zGJ2akXG5wT8MPZp59liE3xfnMFAEEBtQAfFVXXe
         t+tw+Gq34O0IqrD9rKgZqwaPlbHgCIqO1zGpM2lyh0qaE4OUzO4rwss9h8gz3QY11hab
         8SG2YekZv8+1Qhz2lgZQyWwt4nrG+LBM4ZaN5wnDsOryro3PR9YXC/Ma+I51/kp62OLB
         SqhfgJiZL6z/vbUGWGslh7r/jAZM8z/ZH2SLJMCpas9kuG0Cxez4mJ95JIxjjIAjHPDQ
         jn5ZDJFGRDDl6i/u3B81CQd0sgh7KbSFFUVU8JpldpfavHWL94H/LnxTDIHi63oHal1D
         QDfQ==
X-Gm-Message-State: ABy/qLb5cumBKo+to/0kksJSBF3R87d3GU7aLQQ6vXmQi6cTd5e1Zmsd
	WTt06/xrUwGfb71Swlx4poU4eVPvjO4=
X-Google-Smtp-Source: APBJJlGQB7NSjexY0KsrNtmFkLqBFvhdZCe7Qy/hRqJMod3rnXzUfu0doxY4XBjSPqndaNHfkJhR1w==
X-Received: by 2002:a05:6871:720:b0:1b0:18e8:9535 with SMTP id f32-20020a056871072000b001b018e89535mr13010877oap.56.1689701184942;
        Tue, 18 Jul 2023 10:26:24 -0700 (PDT)
Received: from localhost.localdomain ([2601:282:4300:19e0::65c])
        by smtp.gmail.com with ESMTPSA id 129-20020a4a0687000000b00565ebacf9cfsm1005120ooj.33.2023.07.18.10.26.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jul 2023 10:26:23 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [ptest-runner][PATCH 4/5] Remove _child_reader singleton
Date: Tue, 18 Jul 2023 11:26:13 -0600
Message-Id: <20230718172614.469304-5-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230718172614.469304-1-JPEWhacker@gmail.com>
References: <20230718172614.469304-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jul 2023 17:26:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60609

Instead of using the _child_reader singleton to track the child process,
use variables on the stack. Also, limit the variable scope as much as
possible and used named constants for the pipe indices.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 utils.c | 108 +++++++++++++++++++++++++-------------------------------
 1 file changed, 48 insertions(+), 60 deletions(-)

diff --git a/utils.c b/utils.c
index aacf123..bd52544 100644
--- a/utils.c
+++ b/utils.c
@@ -55,14 +55,10 @@
 
 #define UNUSED(x) (void)(x)
 
-static struct {
-	int fds[2];
-	FILE *fps[2];
-
-	unsigned int timeout;
-	int timeouted;
-	int padding1;
-} _child_reader;
+enum {
+	PIPE_READ = 0,
+	PIPE_WRITE = 1,
+};
 
 static inline char *
 get_stime(char *stime, size_t size, time_t t)
@@ -398,15 +394,7 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 	FILE *xh = NULL;
 
 	struct ptest_list *p;
-	char stime[GET_STIME_BUF_SIZE];
 
-	pid_t child;
-	int pipefd_stdout[2] = {-1, -1};
-	int pipefd_stderr[2] = {-1, -1};
-	time_t sttime, entime;
-	time_t duration;
-	int slave;
-	int pgid = -1;
 
 	if (opts.xml_filename) {
 		xh = xml_create(ptest_list_length(head), opts.xml_filename);
@@ -423,12 +411,16 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 
 		fprintf(fp, "START: %s\n", progname);
 		PTEST_LIST_ITERATE_START(head, p)
+			int pipefd_stdout[2] = {-1, -1};
+			int pipefd_stderr[2] = {-1, -1};
+			int pgid = -1;
+
 			if ((rc = pipe2(pipefd_stdout, 0)) == -1)
 				break;
 
 			if ((rc = pipe2(pipefd_stderr, 0)) == -1) {
-				close(pipefd_stdout[0]);
-				close(pipefd_stdout[1]);
+				close(pipefd_stdout[PIPE_READ]);
+				close(pipefd_stdout[PIPE_WRITE]);
 				break;
 			}
 
@@ -443,16 +435,18 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				fprintf(fp, "ERROR: getpgid() failed, %s\n", strerror(errno));
 			}
 
-			child = fork();
+			pid_t child = fork();
 			if (child == -1) {
 				fprintf(fp, "ERROR: Fork %s\n", strerror(errno));
 				rc = -1;
 				break;
 			} else if (child == 0) {
+				int slave;
+
 				close(0);
 				/* Close read ends of the pipe */
-				do_close(&pipefd_stdout[0]);
-				do_close(&pipefd_stderr[0]);
+				do_close(&pipefd_stdout[PIPE_READ]);
+				do_close(&pipefd_stderr[PIPE_READ]);
 
 				if ((slave = setup_slave_pty(fp)) < 0) {
 					fprintf(fp, "ERROR: could not setup pty (%d).", slave);
@@ -469,37 +463,35 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 					fprintf(fp, "ERROR: Unable to attach to controlling tty, %s\n", strerror(errno));
 				}
 
-				run_child(p->run_ptest, pipefd_stdout[1], pipefd_stderr[1]);
+				run_child(p->run_ptest, pipefd_stdout[PIPE_WRITE], pipefd_stderr[PIPE_WRITE]);
 
 			} else {
-				int status;
+				bool timedout = false;
+				char stime[GET_STIME_BUF_SIZE];
 
 				/* Close write ends of the pipe, otherwise this process will never get EOF when the child dies */
-				do_close(&pipefd_stdout[1]);
-				do_close(&pipefd_stderr[1]);
-
-				_child_reader.fds[0] = pipefd_stdout[0];
-				_child_reader.fds[1] = pipefd_stderr[0];
-				_child_reader.fps[0] = fp;
-				_child_reader.fps[1] = fp_stderr;
-				_child_reader.timeout = opts.timeout;
-				_child_reader.timeouted = 0;
+				do_close(&pipefd_stdout[PIPE_WRITE]);
+				do_close(&pipefd_stderr[PIPE_WRITE]);
+
 				if (setpgid(child, pgid) == -1) {
 					fprintf(fp, "ERROR: setpgid() failed, %s\n", strerror(errno));
 				}
 
-				sttime = time(NULL);
-				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, sttime));
+				time_t start_time= time(NULL);
+				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, start_time));
 				fprintf(fp, "BEGIN: %s\n", ptest_dir);
 
-				set_nonblocking(_child_reader.fds[0]);
-				set_nonblocking(_child_reader.fds[1]);
-
 				struct pollfd pfds[2];
-				for (int i = 0; i < 2; i++) {
-					pfds[i].fd = _child_reader.fds[i];
-					pfds[i].events = POLLIN;
-				}
+				FILE* dest_fps[2];
+				set_nonblocking(pipefd_stdout[PIPE_READ]);
+				pfds[0].fd = pipefd_stdout[PIPE_READ];
+				pfds[0].events = POLLIN;
+				dest_fps[0] = fp;
+
+				set_nonblocking(pipefd_stderr[PIPE_READ]);
+				pfds[1].fd = pipefd_stderr[PIPE_READ];
+				pfds[1].events = POLLIN;
+				dest_fps[1] = fp_stderr;
 
 				while (true) {
 					/*
@@ -520,9 +512,9 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 						break;
 					}
 
-					int ret = poll(pfds, 2, _child_reader.timeout*1000);
+					int ret = poll(pfds, 2, opts.timeout*1000);
 
-					if (ret == 0 && !_child_reader.timeouted) {
+					if (ret == 0 && !timedout) {
 						/* kill the child if we haven't
 						 * already. Note that we
 						 * continue to read data from
@@ -530,7 +522,7 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 						 * sure we get all the output
 						 */
 						kill(-child, SIGKILL);
-						_child_reader.timeouted = 1;
+						timedout = true;
 					}
 
 					for (int i = 0; i < 2; i++) {
@@ -551,13 +543,13 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 								}
 								continue;
 							} else {
-								fwrite(buf, (size_t)n, 1, _child_reader.fps[i]);
+								fwrite(buf, (size_t)n, 1, dest_fps[i]);
 							}
 						}
 					}
 				}
 
-				if (_child_reader.timeouted) {
+				if (timedout) {
 					collect_system_state(fp);
 				} else {
 					/*
@@ -570,10 +562,11 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 					 */
 					kill(-child, SIGKILL);
 				}
+				int status;
 				waitpid(child, &status, 0);
 
-				entime = time(NULL);
-				duration = entime - sttime;
+				time_t end_time = time(NULL);
+				time_t duration = end_time - start_time;
 
 				int exit_code = -1;
 				if (WIFEXITED(status)) {
@@ -591,30 +584,25 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 					rc += 1;
 				}
 				fprintf(fp, "DURATION: %d\n", (int) duration);
-				if (_child_reader.timeouted) {
+				if (timedout) {
 					fprintf(fp, "TIMEOUT: %s\n", ptest_dir);
 					rc += 1;
 				}
 
 				if (opts.xml_filename)
-					xml_add_case(xh, exit_code, ptest_dir, _child_reader.timeouted, (int) duration);
+					xml_add_case(xh, exit_code, ptest_dir, timedout, (int) duration);
 
 				fprintf(fp, "END: %s\n", ptest_dir);
-				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, entime));
+				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, end_time));
 			}
 			free(ptest_dir);
-			do_close(&pipefd_stdout[0]);
-			do_close(&pipefd_stdout[1]);
-			do_close(&pipefd_stderr[0]);
-			do_close(&pipefd_stderr[1]);
+			do_close(&pipefd_stdout[PIPE_READ]);
+			do_close(&pipefd_stdout[PIPE_WRITE]);
+			do_close(&pipefd_stderr[PIPE_READ]);
+			do_close(&pipefd_stderr[PIPE_WRITE]);
 
 		PTEST_LIST_ITERATE_END
 		fprintf(fp, "STOP: %s\n", progname);
-
-		do_close(&pipefd_stdout[0]);
-		do_close(&pipefd_stdout[1]);
-		do_close(&pipefd_stderr[0]);
-		do_close(&pipefd_stderr[1]);
 	} while (0);
 
 	if (rc == -1)
-- 
2.33.0


