Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web11.12720.1631886051746797050
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Sep 2021 06:40:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LWrAtciJ;
 spf=pass (domain: gmail.com, ip: 209.85.221.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f50.google.com with SMTP id t8so15265590wrq.4
        for <yocto@lists.yoctoproject.org>; Fri, 17 Sep 2021 06:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SA1tq3asZQRQLk7ikHf6yXWVBGwDXivdevRfiP4wmDA=;
        b=LWrAtciJyozUnB7I6asB5OpnxiIaf25P9394kvhAUO6mIggwD0RlTkYcYKhozTdPzg
         j1R9w/rBUnTDHAGUWV5MCbUcuGxjHuQ5vsWlOIb6P3XQuSH6Nmn061lpdgRAVilVEHFd
         8Ve0B0D5VDHJDsLdwgSlFfcdcGHozuI//KDempnnE87wKH3lKGyn/E5oh6dh04svTEd2
         6IzwR2AAe4dLHPfsAROmTL+khFFFMvL3DwgEgaZ3XsdL2fqcMyOEYkdjtKU77bqukkDx
         uZyV+TfYFzdl0g578xOsCGXD20ge92froR6TKMs2mXgipIi9a0vbEmKcHB9r/jyEyFoG
         +h4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SA1tq3asZQRQLk7ikHf6yXWVBGwDXivdevRfiP4wmDA=;
        b=FHPXE0A1NDvREDi+h3S2zNDyl0XDpTm6XvmvNuRBgIiyyRHTD5dVNakoPLXvGeISrB
         98jZPNBijt+EWxVU84nwSSrbFfUXlKhVSfKXy9dQ+UclaMa15i2M7HgLvLaDKBnODqbA
         bb0ebWGN5WdTcyKj3OhWJOXNW8YKh3/tLTCZCg70oFgxzRI4G8qMblGv5ep07HIXJkvz
         J5DwIsxwL1Ynd/32SYXyUFm+HlYAGDLqVR3EOAAMHf7HbzMFvPrFRZdVhpLngQojtIIB
         JI9c9BV6eaLoyfTNtOQlx20RKFkOLi6lV8tlM9iAHVW6+XST0fmVRYD5zMQ57ZPE4O1J
         wH0A==
X-Gm-Message-State: AOAM532O01kkNajB36v0uJfINBV09xPixfqkxCew4KxUtH/FpfgYAIUk
	vj9hBzlRJLIEJSgCs9SoWYgjrdIeXEw=
X-Google-Smtp-Source: ABdhPJxUPfZQaMbgHYk6ohXt/yLYYmXHalFaKiZJuHY3YZzQ2Pka1wo0VXmt4oAYN4wbr3YMFTjTOA==
X-Received: by 2002:a5d:554e:: with SMTP id g14mr12328637wrw.48.1631886050217;
        Fri, 17 Sep 2021 06:40:50 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([46.183.103.17])
        by smtp.gmail.com with ESMTPSA id j23sm7317192wmo.14.2021.09.17.06.40.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Sep 2021 06:40:49 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [ptest-runner][PATCH 2/3] utils.c: handle test timeouts directly with poll()
Date: Fri, 17 Sep 2021 15:40:41 +0200
Message-Id: <20210917134042.179202-2-alex@linutronix.de>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210917134042.179202-1-alex@linutronix.de>
References: <20210917134042.179202-1-alex@linutronix.de>
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

