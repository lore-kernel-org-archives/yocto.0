Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66194C001DF
	for <webhook@archiver.kernel.org>; Mon, 17 Jul 2023 14:28:47 +0000 (UTC)
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
 by mx.groups.io with SMTP id smtpd.web11.9688.1689604119592371316
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jul 2023 07:28:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Zt7b+C2U;
 spf=pass (domain: gmail.com, ip: 209.85.160.49, mailfrom: jpewhacker@gmail.com)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-1b0748bc78dso3582375fac.0
        for <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 07:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689604118; x=1692196118;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f/BormeG+5yLgr+vn3f18N35WQi39siBRNY4xDN84To=;
        b=Zt7b+C2UWA4EBbidSt9yMH2Ni7i0oMmRNum/Rlh7BqU/4Rp+aasWjt1G2qyKG4Pf/+
         mxS8j8LCy3EVKZQqOD02TKx83lju7MII7AuiL+C+dujCOG19vdXCvp4ztxQjAU3uyAi0
         b3gPN0a/hewYOo+R7eSAtpyeImBhutcFkLxFePvq9gi/3/3/ZQgnajiHcBT8XIW6IHLI
         6R+uIaDPw8x0ogmYxTPBczUNNblkKxLgm9uJ3StbUGiP230jwvAun2MutGH0HQE/VggF
         /CtQdowEa0QFmsVphgDtvXb0y67ORbbCYVycHHbHzYPpWR1IODHNQ3i6TIAhealjiDjd
         Nb1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689604118; x=1692196118;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f/BormeG+5yLgr+vn3f18N35WQi39siBRNY4xDN84To=;
        b=QQ1nR4vv+4rdDcFUKVOPmoNG6G85gaB7+A1SaycuCmP4KwgDiFHsN/W8i5fbskmeM1
         Ybnaq5LsifCBr1IUFq4ukfD/yil5udR/1qASxoJYgtFz8Mc9g4X9R142dhla5Q5dG8mM
         MUa226uBZO9fGISAFUe7cwQVRdSQAkDArt1mvSrxnjBkeecPNZMO22F092GBze5DOkUp
         DPdkiDa5AcjtiZkPZhDSMRcIUTADX0c+QNwLMWkHrRBAFUy8T9uxTnbstywvirGCB4fj
         nLqjmbIM17NP2bU9s4qrLj2s+TcDpIihHJCpPtmpK4ejqQLpeRIhaFqAZ71Ucp2wJERB
         WwKQ==
X-Gm-Message-State: ABy/qLZhEUIHvek94Dbiyj5k9kYrXW8/blUAFK7P72dQkV6M6cUN8F1u
	UldJJf5A80BUlmySLMqIb8W5Q846Iy0=
X-Google-Smtp-Source: APBJJlEcuj+JmL3bNvj1iuAXgQOSFcE0mVIKZ16A5oosNsXy2saA2yk0UAC5hNHXyl20xLx+IoKKjg==
X-Received: by 2002:a05:6871:609:b0:1b7:39f9:3ad8 with SMTP id w9-20020a056871060900b001b739f93ad8mr6695804oan.1.1689604118215;
        Mon, 17 Jul 2023 07:28:38 -0700 (PDT)
Received: from localhost.localdomain ([2601:282:4300:19e0::ad83])
        by smtp.gmail.com with ESMTPSA id x6-20020a056870740600b001b04434d934sm7205967oam.34.2023.07.17.07.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 07:28:37 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [ptest-runner][PATCH 2/4] Recreate pipe for each test
Date: Mon, 17 Jul 2023 08:28:29 -0600
Message-Id: <20230717142831.1634172-3-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230717142831.1634172-1-JPEWhacker@gmail.com>
References: <20230717142831.1634172-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 14:28:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60590

The write end of the pipe has to be closed by ptest-runner to make sure
that it will get EOF when the child process is done with it. This means
that a new pipe needs to be opened for each child so that the write ends
can be passed to it.

Fixes the problem where tests would be reported with no output when
ptest-runner was told to run multiple tests because they were passed
invalid stdin/stderr pipes.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 utils.c | 45 ++++++++++++++++++++++++---------------------
 1 file changed, 24 insertions(+), 21 deletions(-)

diff --git a/utils.c b/utils.c
index 6a6e848..c1188dd 100644
--- a/utils.c
+++ b/utils.c
@@ -61,7 +61,6 @@ static struct {
 
 	unsigned int timeout;
 	int timeouted;
-	pid_t pid;
 	int padding1;
 } _child_reader;
 
@@ -414,8 +413,8 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 	char stime[GET_STIME_BUF_SIZE];
 
 	pid_t child;
-	int pipefd_stdout[2];
-	int pipefd_stderr[2];
+	int pipefd_stdout[2] = {-1, -1};
+	int pipefd_stderr[2] = {-1, -1};
 	time_t sttime, entime;
 	time_t duration;
 	int slave;
@@ -429,28 +428,22 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 
 	do
 	{
-		if ((rc = pipe2(pipefd_stdout, 0)) == -1)
-			break;
-
-		if ((rc = pipe2(pipefd_stderr, 0)) == -1) {
-			close(pipefd_stdout[0]);
-			close(pipefd_stdout[1]);
-			break;
-		}
-
 		if (isatty(0) && ioctl(0, TIOCNOTTY) == -1) {
 			fprintf(fp, "ERROR: Unable to detach from controlling tty, %s\n", strerror(errno));
 		}
 
-		_child_reader.fds[0] = pipefd_stdout[0];
-		_child_reader.fds[1] = pipefd_stderr[0];
-		_child_reader.fps[0] = fp;
-		_child_reader.fps[1] = fp_stderr;
-		_child_reader.timeout = opts.timeout;
-		_child_reader.timeouted = 0;
 
 		fprintf(fp, "START: %s\n", progname);
 		PTEST_LIST_ITERATE_START(head, p)
+			if ((rc = pipe2(pipefd_stdout, 0)) == -1)
+				break;
+
+			if ((rc = pipe2(pipefd_stderr, 0)) == -1) {
+				close(pipefd_stdout[0]);
+				close(pipefd_stdout[1]);
+				break;
+			}
+
 			char *ptest_dir = strdup(p->run_ptest);
 			if (ptest_dir == NULL) {
 				rc = -1;
@@ -497,7 +490,12 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				do_close(&pipefd_stdout[1]);
 				do_close(&pipefd_stderr[1]);
 
-				_child_reader.pid = child;
+				_child_reader.fds[0] = pipefd_stdout[0];
+				_child_reader.fds[1] = pipefd_stderr[0];
+				_child_reader.fps[0] = fp;
+				_child_reader.fps[1] = fp_stderr;
+				_child_reader.timeout = opts.timeout;
+				_child_reader.timeouted = 0;
 				if (setpgid(child, pgid) == -1) {
 					fprintf(fp, "ERROR: setpgid() failed, %s\n", strerror(errno));
 				}
@@ -543,7 +541,7 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 						 * the pipes until EOF to make
 						 * sure we get all the output
 						 */
-						kill(-_child_reader.pid, SIGKILL);
+						kill(-child, SIGKILL);
 						_child_reader.timeouted = 1;
 					}
 
@@ -585,7 +583,7 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				 * dead
 				 */
 				if (!_child_reader.timeouted) {
-					kill(-_child_reader.pid, SIGKILL);
+					kill(-child, SIGKILL);
 				}
 				status = wait_child(child);
 
@@ -607,6 +605,11 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, entime));
 			}
 			free(ptest_dir);
+			do_close(&pipefd_stdout[0]);
+			do_close(&pipefd_stdout[1]);
+			do_close(&pipefd_stderr[0]);
+			do_close(&pipefd_stderr[1]);
+
 		PTEST_LIST_ITERATE_END
 		fprintf(fp, "STOP: %s\n", progname);
 
-- 
2.33.0


