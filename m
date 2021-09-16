Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web08.465.1631796384594256214
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Sep 2021 05:46:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ixv093/Q;
 spf=pass (domain: gmail.com, ip: 209.85.221.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f45.google.com with SMTP id i23so9321457wrb.2
        for <yocto@lists.yoctoproject.org>; Thu, 16 Sep 2021 05:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SA1tq3asZQRQLk7ikHf6yXWVBGwDXivdevRfiP4wmDA=;
        b=Ixv093/QrNYPDZ9PREjEGK894IYDzfYhc51AbPdISBqKM5gjR2qWHMe9Hyufw8EYdF
         d5iH/3XQLP1Hq6pM0szK7UxIUxiJXLnVh7zfof0cnwlfWeo4kpy7uMW0BkXbs20gWdow
         JqmMLj/r8wqdLrbu79Khr6tHQIz6nFK3ebpsm5WutPUbpWlf4NpjRLmYAhn/sQAaZR5T
         +QdDV0U5GphXEnukY+k/0bK9gRJLonmRaloWS2KClUhjBl3laEJLiJ4/bacozbPszMSc
         q0vzm6WHaRruM5SuC84M8qEB57qIX/Cv6j3qEOyENEUOSUXtVaOKOirzxJpyiG+VuQKN
         uSmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SA1tq3asZQRQLk7ikHf6yXWVBGwDXivdevRfiP4wmDA=;
        b=WN/F9YYlwW07NPfUfWwfPcUoI5DFO/NJG+G3IZzi4NBliEid5nrX3cxdwlkQnohj6z
         JQj84D4n1M/bQcKWXEz3b7sq3ewDn2wf9Of4d+1pCdzaEzG/8asSflycaHi6BI0+TRVV
         AwX6Jgy1x0FXKiRfiXMGdYbihCfNkTO4ajGheKiQJS4c6Yc1UUwYJYvJX5xnyxz9P0Rq
         BnlIy9sBn1XRbto3uRW7e8f3FJ6mmggB6kFu+N11Hur5nojIiwmr1qAz+AE6p2Rfcb99
         5WI5y0ER/39S/bl0ae4NF51/Do8+xsawlyv4rejTj7buLUJLsAg3xn+85MXxYwdgWcXX
         S9yg==
X-Gm-Message-State: AOAM532AAC9o6FgogtvKRArquXWKlb7SYmVVSCzvj7Ndn1F0PXVB6MUt
	BhEk2yrh0HpigKQpiSzSz1Djij3Cst0=
X-Google-Smtp-Source: ABdhPJy3Rq8ThD29qxcQb7sFdgQBc18uH0NBYQCAW2nUeU+cpXOqZk2kVSEPK/WWC9DsBAGgJDFp4A==
X-Received: by 2002:adf:e9c4:: with SMTP id l4mr5919627wrn.257.1631796383264;
        Thu, 16 Sep 2021 05:46:23 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from alex-lx-laptop.tec.linutronix.de (b2b-109-90-143-202.unitymedia.biz. [109.90.143.202])
        by smtp.gmail.com with ESMTPSA id l19sm3162383wrc.16.2021.09.16.05.46.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 05:46:22 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org,
	anibal.limon@linaro.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [ptest-runner][PATCH 2/3] utils.c: handle test timeouts directly with poll()
Date: Thu, 16 Sep 2021 14:46:16 +0200
Message-Id: <20210916124617.72791-2-alex@linutronix.de>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210916124617.72791-1-alex@linutronix.de>
References: <20210916124617.72791-1-alex@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

if poll()'s timeout expires that means the test did not
produce any output, which is exactly what we need to catch.

So there's no need to set up separate timeouts with signals
and alarms, and this greatly simplifies more sophisticated
processing of hanging tests (such as collecting overall system data).

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 utils.c | 34 ++++++++++------------------------
 1 file changed, 10 insertions(+), 24 deletions(-)

diff --git a/utils.c b/utils.c
index 128ff61..58c3aa1 100644
--- a/utils.c
+++ b/utils.c
@@ -51,7 +51,6 @@
 #include "utils.h"
 
 #define GET_STIME_BUF_SIZE 1024
-#define WAIT_CHILD_POLL_TIMEOUT_MS 200
 #define WAIT_CHILD_BUF_MAX_SIZE 1024
 
 #define UNUSED(x) (void)(x)
@@ -296,7 +295,7 @@ read_child(void *arg)
 	pfds[1].events = POLLIN;
 
 	do {
-		r = poll(pfds, 2, WAIT_CHILD_POLL_TIMEOUT_MS);
+		r = poll(pfds, 2, _child_reader.timeout*1000);
 		if (r > 0) {
 			char buf[WAIT_CHILD_BUF_MAX_SIZE];
 			ssize_t n;
@@ -313,10 +312,10 @@ read_child(void *arg)
 					fwrite(buf, (size_t)n, 1, _child_reader.fps[1]);
 			}
 
-			/* Child output reset alarm */
-			alarm(0);
-			alarm(_child_reader.timeout);
-		}
+		} else if (r == 0) {
+			_child_reader.timeouted = 1;
+			kill(-_child_reader.pid, SIGKILL);
+                }
 
 		fflush(_child_reader.fps[0]);
 		fflush(_child_reader.fps[1]);
@@ -344,26 +343,11 @@ run_child(char *run_ptest, int fd_stdout, int fd_stderr)
 	/* exit(1); not needed? */
 }
 
-static void
-timeout_child_handler(int signo)
-{
-	UNUSED(signo);
-	_child_reader.timeouted = 1;
-	kill(-_child_reader.pid, SIGKILL);
-}
-
 static inline int
-wait_child(pid_t pid, unsigned int timeout)
+wait_child(pid_t pid)
 {
 	int status = -1;
 
-	_child_reader.timeout = timeout;
-	_child_reader.timeouted = 0;
-	_child_reader.pid = pid;
-
-	/* setup alarm to timeout based on std{out,err} in the child */
-	alarm(timeout);
-
 	waitpid(pid, &status, 0);
 	if (WIFEXITED(status))
 		status = WEXITSTATUS(status);
@@ -462,6 +446,8 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 		_child_reader.fds[1] = pipefd_stderr[0];
 		_child_reader.fps[0] = fp;
 		_child_reader.fps[1] = fp_stderr;
+		_child_reader.timeout = opts.timeout;
+		_child_reader.timeouted = 0;
 		rc = pthread_create(&tid, NULL, read_child, NULL);
 		if (rc != 0) {
 			fprintf(fp, "ERROR: Failed to create reader thread, %s\n", strerror(errno));
@@ -469,7 +455,6 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 			close(pipefd_stdout[1]);
 			break;
 		}
-		signal(SIGALRM, timeout_child_handler);
 
 		fprintf(fp, "START: %s\n", progname);
 		PTEST_LIST_ITERATE_START(head, p)
@@ -511,6 +496,7 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 			} else {
 				int status;
 
+				_child_reader.pid = child;
 				if (setpgid(child, pgid) == -1) {
 					fprintf(fp, "ERROR: setpgid() failed, %s\n", strerror(errno));
 				}
@@ -520,7 +506,7 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				fprintf(fp, "BEGIN: %s\n", ptest_dir);
 
 
-				status = wait_child(child, opts.timeout);
+				status = wait_child(child);
 
 				entime = time(NULL);
 				duration = entime - sttime;
-- 
2.33.0

