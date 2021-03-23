Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.3131.1616465449363330974
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 19:10:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linaro.org header.s=google header.b=yryMa5ru;
 spf=softfail (domain: linaro.org, ip: 198.145.29.25, mailfrom: anibal.limon@linaro.org)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 20C1638C05B5
	for <yocto@yoctoproject.org>; Tue, 23 Mar 2021 02:10:49 +0000 (UTC)
Received: by mail-oi1-f182.google.com with SMTP id m13so15361246oiw.13
        for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 19:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=U6tspICpDZTjOtz6gDgdQilQTdVSALNKRyeJ/o94H4w=;
        b=yryMa5ruPivSLT2hDcxsR/9vvxxzTrwQrS8DRR7KZJZu5twgJcOxGCMT9DTw6Fpi9s
         +PEdjCRSm76L95ULBSHoK8vkh94xqkVi+/Y2amH2FqZNsqfiEfl67f6/VogBtGiWe1/G
         CnS73acqM/1QQSompAlXJOdSps5tTJcGewcrd52Mzx69zyLxcTVfe9M5VoXjjg42EE7u
         XYGAUL8WqNXz5AONP1xPXnF6gStyjkKM+66I6hD06Taj+ZxNTGTZpw9znjzTWaAusU+C
         jaYDSb2gXT553Nvcb2opFG2QEJVJhPDdd0v8D5qufcqJ7OCRJv3hMPkkzDFVE4CfirEN
         MJzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=U6tspICpDZTjOtz6gDgdQilQTdVSALNKRyeJ/o94H4w=;
        b=rOk93Dt1GMskuJXqcUTujrVCXMhZXkD+AXl63wcyyQKLEOBqs2bf52Zn02ewIc48Sk
         vc/O660N6mYZAm2Y9Fa3m5FQDqjktzLyD0N8SD74eFHfxjHhXdKuqiGnITOK/mtti/ox
         d6/jIDajM36G9GE7vVVq7uzJZA0GhC0mVcI+qMMcRdn/OI6tDa7JkRQMRoF0pvy8fwxy
         VmBA/1tshFGrhO7YMOFRhMzxh/7rfHEomPQn1jjRQ50FM+XGyDoBPRX4/N/4dXUQyRC0
         2+FNCIavurlYGZog1pueZENFyfwHVZh59i9Pl6IIZeSKRjnrUHu38LzhmiMppTPFmAyS
         ZaVQ==
X-Gm-Message-State: AOAM533bgwUvPDDeHO4GSMuHBugqG5LiYOhUXEJkagcpHxl0oY1L/Z4x
	tlAo2ELf1LHAApvW45y1yXrnSVdTGU1lmDf9
X-Google-Smtp-Source: ABdhPJy4Pf7ywAQ5q4vUdaazhJH2YaFG3KPpDJ0dFIqhg935BXykQeHNcmkQxHIZ191zyXD7J/Xc9g==
X-Received: by 2002:aca:cf95:: with SMTP id f143mr1560796oig.104.1616465448080;
        Mon, 22 Mar 2021 19:10:48 -0700 (PDT)
Received: from blackbox.Home ([2806:10b7:2:e880:2c32:cfff:fe8e:de1f])
        by smtp.gmail.com with ESMTPSA id h59sm3924505otb.29.2021.03.22.19.10.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 19:10:47 -0700 (PDT)
From: "Anibal Limon" <anibal.limon@linaro.org>
To: yocto@yoctoproject.org
Cc: yifan.yu@windriver.com,
	Randy.MacLeod@windriver.com,
	nicolas.dechesne@linaro.org,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
Subject: [ptest-runner][PATCH 3/4] utils.c: Use a thread to read from child
Date: Mon, 22 Mar 2021 20:10:37 -0600
Message-Id: <20210323021038.1049654-3-anibal.limon@linaro.org>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210323021038.1049654-1-anibal.limon@linaro.org>
References: <20210323021038.1049654-1-anibal.limon@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

In order to handle large output add a thread for read from childs using
a pipe and remove non-blocking option.

Modify bash unittest to output large data and cover this scenario.

[YOCTO #14220]

Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
---
 Makefile                        |   2 +-
 tests/data/bash/ptest/run-ptest |   4 +-
 utils.c                         | 112 +++++++++++++++++++++-----------
 3 files changed, 78 insertions(+), 40 deletions(-)

diff --git a/Makefile b/Makefile
index 3cca17b..1aa1830 100644
--- a/Makefile
+++ b/Makefile
@@ -31,7 +31,7 @@ TEST_DATA=3D$(shell echo `pwd`/tests/data)
 all: $(SOURCES) $(EXECUTABLE)
=20
 $(EXECUTABLE): $(OBJECTS)
-	$(CC) $(LDFLAGS) $(OBJECTS) -lutil -o $@
+	$(CC) $(LDFLAGS) $(OBJECTS) -pthread -lutil -o $@
=20
 tests: $(TEST_SOURCES) $(TEST_EXECUTABLE)
=20
diff --git a/tests/data/bash/ptest/run-ptest b/tests/data/bash/ptest/run-=
ptest
index 09f997f..f36e077 100755
--- a/tests/data/bash/ptest/run-ptest
+++ b/tests/data/bash/ptest/run-ptest
@@ -1,4 +1,4 @@
-#!/bin/sh
+#!/bin/bash
=20
 echo "bash"
 printf "Hello World!,stderr\n" >&2
@@ -7,3 +7,5 @@ printf "Hello World!,stderr2\n" >&2
 echo "bash3"
 echo "bash4"
 printf "Hello World!,stderr3\n" >&2
+
+echo {1..1000000}\\n
diff --git a/utils.c b/utils.c
index d784736..84cb570 100644
--- a/utils.c
+++ b/utils.c
@@ -39,6 +39,7 @@
 #include <string.h>
 #include <time.h>
 #include <unistd.h>
+#include <pthread.h>
=20
 #include <sys/ioctl.h>
 #include <sys/resource.h>
@@ -53,6 +54,11 @@
 #define WAIT_CHILD_POLL_TIMEOUT_MS 200
 #define WAIT_CHILD_BUF_MAX_SIZE 1024
=20
+static struct {
+	int fds[2];
+	FILE *fps[2];
+} _child_reader;
+
 static inline char *
 get_stime(char *stime, size_t size, time_t t)
 {
@@ -269,6 +275,44 @@ close_fds(void)
    	}
 }
=20
+static void *
+read_child(void *arg)
+{
+	struct pollfd pfds[2];
+	int r;
+
+	pfds[0].fd =3D _child_reader.fds[0];
+	pfds[0].events =3D POLLIN;
+	pfds[1].fd =3D _child_reader.fds[1];
+	pfds[1].events =3D POLLIN;
+
+	do {
+		r =3D poll(pfds, 2, WAIT_CHILD_POLL_TIMEOUT_MS);
+		if (r > 0) {
+			char buf[WAIT_CHILD_BUF_MAX_SIZE];
+			ssize_t n;
+
+			if (pfds[0].revents !=3D 0) {
+				n =3D read(_child_reader.fds[0], buf, WAIT_CHILD_BUF_MAX_SIZE);
+				if (n > 0)
+					fwrite(buf, (size_t)n, 1, _child_reader.fps[0]);
+			}
+
+			if (pfds[1].revents !=3D 0) {
+				n =3D read(_child_reader.fds[1], buf, WAIT_CHILD_BUF_MAX_SIZE);
+				if (n > 0)
+					fwrite(buf, (size_t)n, 1, _child_reader.fps[1]);
+			}
+
+		}
+
+		fflush(_child_reader.fps[0]);
+		fflush(_child_reader.fps[1]);
+	} while (1);
+
+	return NULL;
+}
+
 static inline void
 run_child(char *run_ptest, int fd_stdout, int fd_stderr)
 {
@@ -292,22 +336,15 @@ run_child(char *run_ptest, int fd_stdout, int fd_st=
derr)
 }
=20
 static inline int
-wait_child(pid_t pid, int timeout, int *fds, FILE **fps, int *timeouted)
+wait_child(pid_t pid, int timeout, int *timeouted)
 {
-	struct pollfd pfds[2];
 	struct timespec sentinel;
 	clockid_t clock =3D CLOCK_MONOTONIC;
 	int looping =3D 1;
-	int r;
=20
 	int status =3D -1;
 	int waitflags;
=20
-	pfds[0].fd =3D fds[0];
-	pfds[0].events =3D POLLIN;
-	pfds[1].fd =3D fds[1];
-	pfds[1].events =3D POLLIN;
-
 	if (clock_gettime(clock, &sentinel) =3D=3D -1) {
 		clock =3D CLOCK_REALTIME;
 		clock_gettime(clock, &sentinel);
@@ -332,32 +369,12 @@ wait_child(pid_t pid, int timeout, int *fds, FILE *=
*fps, int *timeouted)
 		if (waitpid(pid, &status, waitflags) =3D=3D pid)
 			looping =3D 0;
=20
-		r =3D poll(pfds, 2, WAIT_CHILD_POLL_TIMEOUT_MS);
-		if (r > 0) {
-			char buf[WAIT_CHILD_BUF_MAX_SIZE];
-			ssize_t n;
-
-			if (pfds[0].revents !=3D 0) {
-				while ((n =3D read(fds[0], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0)
-					fwrite(buf, (size_t)n, 1, fps[0]);
-			}
-
-			if (pfds[1].revents !=3D 0) {
-				while ((n =3D read(fds[1], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0) {
-					fflush(fps[0]);
-					fwrite(buf, (size_t)n, 1, fps[1]);
-					fflush(fps[1]);
-				}
-			}
-
-			clock_gettime(clock, &sentinel);
-		}
+		clock_gettime(clock, &sentinel);
=20
 		if (WIFEXITED(status))
 			status =3D WEXITSTATUS(status);
 	}
=20
-	fflush(fps[0]);
 	return status;
 }
=20
@@ -426,6 +443,7 @@ run_ptests(struct ptest_list *head, const struct ptes=
t_options opts,
 	time_t duration;
 	int slave;
 	int pgid =3D -1;
+	pthread_t tid;
=20
 	if (opts.xml_filename) {
 		xh =3D xml_create(ptest_list_length(head), opts.xml_filename);
@@ -435,18 +453,32 @@ run_ptests(struct ptest_list *head, const struct pt=
est_options opts,
=20
 	do
 	{
-		if ((rc =3D pipe2(pipefd_stdout, O_NONBLOCK)) =3D=3D -1)=20
+		if ((rc =3D pipe(pipefd_stdout)) =3D=3D -1)
 			break;
=20
-		if ((rc =3D pipe2(pipefd_stderr, O_NONBLOCK)) =3D=3D -1) {
+		if ((rc =3D pipe(pipefd_stderr)) =3D=3D -1) {
 			close(pipefd_stdout[0]);
 			close(pipefd_stdout[1]);
 			break;
 		}
-		fprintf(fp, "START: %s\n", progname);
+
 		if (isatty(0) && ioctl(0, TIOCNOTTY) =3D=3D -1) {
 			fprintf(fp, "ERROR: Unable to detach from controlling tty, %s\n", str=
error(errno));
 		}
+
+		_child_reader.fds[0] =3D pipefd_stdout[0];
+		_child_reader.fds[1] =3D pipefd_stderr[0];
+		_child_reader.fps[0] =3D fp;
+		_child_reader.fps[1] =3D fp_stderr;
+		rc =3D pthread_create(&tid, NULL, read_child, NULL);
+		if (rc !=3D 0) {
+			fprintf(fp, "ERROR: Failed to create reader thread, %s\n", strerror(e=
rrno));
+			close(pipefd_stdout[0]);
+			close(pipefd_stdout[1]);
+			break;
+		}
+
+		fprintf(fp, "START: %s\n", progname);
 		PTEST_LIST_ITERATE_START(head, p)
 			char *ptest_dir =3D strdup(p->run_ptest);
 			if (ptest_dir =3D=3D NULL) {
@@ -485,8 +517,6 @@ run_ptests(struct ptest_list *head, const struct ptes=
t_options opts,
=20
 			} else {
 				int status;
-				int fds[2]; fds[0] =3D pipefd_stdout[0]; fds[1] =3D pipefd_stderr[0]=
;
-				FILE *fps[2]; fps[0] =3D fp; fps[1] =3D fp_stderr;
=20
 				if (setpgid(child, pgid) =3D=3D -1) {
 					fprintf(fp, "ERROR: setpgid() failed, %s\n", strerror(errno));
@@ -496,17 +526,20 @@ run_ptests(struct ptest_list *head, const struct pt=
est_options opts,
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, sttime));
 				fprintf(fp, "BEGIN: %s\n", ptest_dir);
=20
-				status =3D wait_child(child, opts.timeout, fds, fps, &timeouted);
+
+				status =3D wait_child(child, opts.timeout, &timeouted);
+
+
 				entime =3D time(NULL);
 				duration =3D entime - sttime;
=20
 				if (status) {
-					fprintf(fps[0], "\nERROR: Exit status is %d\n", status);
+					fprintf(fp, "\nERROR: Exit status is %d\n", status);
 					rc +=3D 1;
 				}
-				fprintf(fps[0], "DURATION: %d\n", (int) duration);
+				fprintf(fp, "DURATION: %d\n", (int) duration);
 				if (timeouted)
-					fprintf(fps[0], "TIMEOUT: %s\n", ptest_dir);
+					fprintf(fp, "TIMEOUT: %s\n", ptest_dir);
=20
 				if (opts.xml_filename)
 					xml_add_case(xh, status, ptest_dir, timeouted, (int) duration);
@@ -517,6 +550,9 @@ run_ptests(struct ptest_list *head, const struct ptes=
t_options opts,
 		PTEST_LIST_ITERATE_END
 		fprintf(fp, "STOP: %s\n", progname);
=20
+		pthread_cancel(tid);
+		pthread_join(tid, NULL);
+
 		close(pipefd_stdout[0]); close(pipefd_stdout[1]);
 		close(pipefd_stderr[0]); close(pipefd_stderr[1]);
 	} while (0);
--=20
2.31.0

