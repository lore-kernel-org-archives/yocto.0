Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F364EB64D9
	for <webhook@archiver.kernel.org>; Thu, 29 Jun 2023 16:05:51 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
 by mx.groups.io with SMTP id smtpd.web10.983.1688054741865137925
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jun 2023 09:05:41 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Oh3mTYpA;
 spf=pass (domain: gmail.com, ip: 209.85.210.48, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-6b74e2d8c98so737133a34.2
        for <yocto@lists.yoctoproject.org>; Thu, 29 Jun 2023 09:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688054740; x=1690646740;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vZrvmGY+WT37ljbXSZcsucnyrucz0Eo4PUeEc4ipr2c=;
        b=Oh3mTYpAr13hR/J1pADLev3OKlI4ZC1OQivbClCs6SY+A/6KCRdi5uYfVqu6b54St0
         frxCaV53nWKi8wLcTp1fPilGuFqHV+Hg4tHgF652J9t5t8zhgTrArs6QzCvJ0OrzGz6C
         /egkMSTVnstPrd9q8TtVOgw/y6sG5KI/q2zcJLjBHpNjZZgAGoY8SDtczWErmZmYi3mp
         ar0rwhD1ecau9hsjTB4oH9+WmtwU5xlt++06qRqKBJ26C43mcjxDPGVC7FBgtGkR8oAB
         FL1hiTwiFjmAHuJXD1EAEqZXOl9cMBHQFfKbtmHghVKCkhf/EX6CzcFaY4jLA6GLr9iD
         tCHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688054740; x=1690646740;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vZrvmGY+WT37ljbXSZcsucnyrucz0Eo4PUeEc4ipr2c=;
        b=KAS9PJbM8sEAkLydmFbelIvEYAPLSGNhrompHjFZRGqfbVAlfVUz4R3H5kwtWo16NX
         uK7RHq+npmVeJWSAMfRKik/ro6s6oc+hdaZUUs5kG4dC4yfqmWwvaFnpGp8CPf/tMKed
         8s1pXgjSh3CXSGSbduB4GTu3rHLc3yuJ3IXF9BClHMEG3AYRKAOFcX1DKfBsKI0K1xe7
         J3BJ75TPaB9oZDPPx+T9WX3fKjO13p5AbLS0WtRASHeOzQL9Vvbrl06ThdsLP+9Nwi8r
         QsE9js/nQ5PIL4JAaXprVgYciNrQD+NLYl5Q5WZMQZN65RgWZ/PEHytiR3iKgqDI5HGV
         RsUQ==
X-Gm-Message-State: AC+VfDwzFAEPXkXt/TYdEGkZr/PdrQNkO0Cd78UBSOfkWsftf/SvzrJ5
	GuwCd8Vf/3Q2BUoRp2hTbuFEHC2k0oc=
X-Google-Smtp-Source: ACHHUZ6SqaWlwPaezDg7YHT5TJgAB/RGzwYL/8E9sr+qH2tufujS5rYFaQSidJq44X2Vtzxy9OeKMQ==
X-Received: by 2002:a05:6830:1d54:b0:6b8:9a3a:ea12 with SMTP id p20-20020a0568301d5400b006b89a3aea12mr477455oth.12.1688054740238;
        Thu, 29 Jun 2023 09:05:40 -0700 (PDT)
Received: from localhost.localdomain ([204.77.163.107])
        by smtp.gmail.com with ESMTPSA id o11-20020a9d764b000000b006b731c1e1efsm5430574otl.76.2023.06.29.09.05.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jun 2023 09:05:39 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [ptest-runner][PATCH] runner: Remove threads and mutexes
Date: Thu, 29 Jun 2023 11:05:05 -0500
Message-Id: <20230629160505.884231-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Jun 2023 16:05:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60479

Re-works the way that ptest-runner waits for processes to exit to make
it simpler and eliminate the need for a thread. In the new system, the
runner will not wait() for the process to exit until both the stdout and
stderr pipes have gotten an EOF. This works because when a process
exits, the pipes will be closed. This also ensures that the runner reads
all available output from the child process before moving on. After
reading all the data, then ptest runner will wait() on the process,
which should never block (unless a process does something strange like
close its stdout and stderr without exiting, which is handled with an
extra SIGKILL to prevent deadlock). Test timeouts are handled by sending
the child process SIGKILL if no output is detected for the timeout, but
the loop still waits for the file descriptors to reach EOF before
reaping the child.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>

[YOCTO #15154]

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 utils.c | 214 +++++++++++++++++++++++++++++++++-----------------------
 1 file changed, 125 insertions(+), 89 deletions(-)

diff --git a/utils.c b/utils.c
index 65b1df3..6a6e848 100644
--- a/utils.c
+++ b/utils.c
@@ -39,7 +39,7 @@
 #include <string.h>
 #include <time.h>
 #include <unistd.h>
-#include <pthread.h>
+#include <stdbool.h>
 
 #include <sys/ioctl.h>
 #include <sys/resource.h>
@@ -63,7 +63,6 @@ static struct {
 	int timeouted;
 	pid_t pid;
 	int padding1;
-	pthread_mutex_t fd_lock;
 } _child_reader;
 
 static inline char *
@@ -88,6 +87,29 @@ check_allocation1(void *p, size_t size, char *file, int line, int exit_on_null)
 	}
 }
 
+static void
+set_nonblocking(int fd)
+{
+	int flags = fcntl(fd, F_GETFL, 0);
+	if (flags < 0) {
+		fprintf(stderr, "Unable to get flags for FD %d: %s\n", fd, strerror(errno));
+		return;
+	}
+
+	if (fcntl(fd, F_SETFL, flags | O_NONBLOCK) < 0) {
+		fprintf(stderr, "Unable to set flags for FD %d: %s\n", fd, strerror(errno));
+	}
+}
+
+static void
+do_close(int *fd)
+{
+	if (*fd >= 0) {
+		close(*fd);
+		*fd = -1;
+	}
+}
+
 
 struct ptest_list *
 get_available_ptests(const char *dir)
@@ -227,7 +249,7 @@ filter_ptests(struct ptest_list *head, char **ptests, int ptest_num)
 		}
 
 		head_new = ptest_list_alloc();
-		if (head_new == NULL) 
+		if (head_new == NULL)
 			break;
 
 		for (i = 0; i < ptest_num; i++) {
@@ -259,7 +281,7 @@ filter_ptests(struct ptest_list *head, char **ptests, int ptest_num)
 		if (fail) {
 			PTEST_LIST_FREE_ALL_CLEAN(head_new);
 			errno = saved_errno;
-		} 
+		}
 	} while (0);
 
 	return head_new;
@@ -269,7 +291,7 @@ filter_ptests(struct ptest_list *head, char **ptests, int ptest_num)
  * i.e. do not close STDIN, STDOUT, STDERR.
  * Typically called in in a child process after forking
  * but before exec as a good policy especially for security.
- */ 
+ */
 static void
 close_fds(void)
 {
@@ -303,55 +325,6 @@ collect_system_state(FILE* fout)
 	}
 }
 
-static void *
-read_child(void *arg)
-{
-	struct pollfd pfds[2];
-	int r;
-
-	UNUSED(arg);
-
-	pfds[0].fd = _child_reader.fds[0];
-	pfds[0].events = POLLIN;
-	pfds[1].fd = _child_reader.fds[1];
-	pfds[1].events = POLLIN;
-
-	do {
-		r = poll(pfds, 2, _child_reader.timeout*1000);
-		pthread_mutex_lock(&_child_reader.fd_lock);
-		if (r > 0) {
-			char buf[WAIT_CHILD_BUF_MAX_SIZE];
-			ssize_t n;
-
-			if (pfds[0].revents != 0) {
- 				n = read(_child_reader.fds[0], buf, WAIT_CHILD_BUF_MAX_SIZE);
-				if (n > 0)
-					fwrite(buf, (size_t)n, 1, _child_reader.fps[0]);
-			}
-
-			if (pfds[1].revents != 0) {
-				n = read(_child_reader.fds[1], buf, WAIT_CHILD_BUF_MAX_SIZE);
-				if (n > 0)
-					fwrite(buf, (size_t)n, 1, _child_reader.fps[1]);
-			}
-
-		} else if (r == 0) {
-			// no output from the test after a timeout; the test is stuck, so collect
-			// as much data from the system as possible and kill the test
-			collect_system_state(_child_reader.fps[0]);
-			_child_reader.timeouted = 1;
-			pthread_mutex_unlock(&_child_reader.fd_lock);
-			kill(-_child_reader.pid, SIGKILL);
-                }
-
-		fflush(_child_reader.fps[0]);
-		fflush(_child_reader.fps[1]);
-		pthread_mutex_unlock(&_child_reader.fd_lock);
-	} while (1);
-
-	return NULL;
-}
-
 static inline void
 run_child(char *run_ptest, int fd_stdout, int fd_stderr)
 {
@@ -389,7 +362,7 @@ wait_child(pid_t pid)
  * fp should be writable, likely stdout/err.
  */
 static int
-setup_slave_pty(FILE *fp) { 
+setup_slave_pty(FILE *fp) {
 	int pty_master = -1;
 	int pty_slave = -1;
 	char pty_name[256];
@@ -447,9 +420,6 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 	time_t duration;
 	int slave;
 	int pgid = -1;
-	pthread_t tid;
-	ssize_t n;
-	char buf[WAIT_CHILD_BUF_MAX_SIZE];
 
 	if (opts.xml_filename) {
 		xh = xml_create(ptest_list_length(head), opts.xml_filename);
@@ -459,10 +429,10 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 
 	do
 	{
-		if ((rc = pipe2(pipefd_stdout, O_NONBLOCK)) == -1)
+		if ((rc = pipe2(pipefd_stdout, 0)) == -1)
 			break;
 
-		if ((rc = pipe2(pipefd_stderr, O_NONBLOCK)) == -1) {
+		if ((rc = pipe2(pipefd_stderr, 0)) == -1) {
 			close(pipefd_stdout[0]);
 			close(pipefd_stdout[1]);
 			break;
@@ -472,24 +442,12 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 			fprintf(fp, "ERROR: Unable to detach from controlling tty, %s\n", strerror(errno));
 		}
 
- 		if (pthread_mutex_init(&_child_reader.fd_lock, NULL) != 0) {
-			printf("Failed to init mutex\n");
-			exit(EXIT_FAILURE);
-		}
-
 		_child_reader.fds[0] = pipefd_stdout[0];
 		_child_reader.fds[1] = pipefd_stderr[0];
 		_child_reader.fps[0] = fp;
 		_child_reader.fps[1] = fp_stderr;
 		_child_reader.timeout = opts.timeout;
 		_child_reader.timeouted = 0;
-		rc = pthread_create(&tid, NULL, read_child, NULL);
-		if (rc != 0) {
-			fprintf(fp, "ERROR: Failed to create reader thread, %s\n", strerror(errno));
-			close(pipefd_stdout[0]);
-			close(pipefd_stdout[1]);
-			break;
-		}
 
 		fprintf(fp, "START: %s\n", progname);
 		PTEST_LIST_ITERATE_START(head, p)
@@ -511,6 +469,10 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				break;
 			} else if (child == 0) {
 				close(0);
+				/* Close read ends of the pipe */
+				do_close(&pipefd_stdout[0]);
+				do_close(&pipefd_stderr[0]);
+
 				if ((slave = setup_slave_pty(fp)) < 0) {
 					fprintf(fp, "ERROR: could not setup pty (%d).", slave);
 				}
@@ -531,6 +493,10 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 			} else {
 				int status;
 
+				/* Close write ends of the pipe, otherwise this process will never get EOF when the child dies */
+				do_close(&pipefd_stdout[1]);
+				do_close(&pipefd_stderr[1]);
+
 				_child_reader.pid = child;
 				if (setpgid(child, pgid) == -1) {
 					fprintf(fp, "ERROR: setpgid() failed, %s\n", strerror(errno));
@@ -540,20 +506,92 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, sttime));
 				fprintf(fp, "BEGIN: %s\n", ptest_dir);
 
+				set_nonblocking(_child_reader.fds[0]);
+				set_nonblocking(_child_reader.fds[1]);
+
+				struct pollfd pfds[2];
+				for (int i = 0; i < 2; i++) {
+					pfds[i].fd = _child_reader.fds[i];
+					pfds[i].events = POLLIN;
+				}
+
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
+
+					if (done) {
+						break;
+					}
+
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
+					}
+
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
+						}
+					}
+				}
+				collect_system_state(_child_reader.fps[0]);
+
+				for (int i = 0; i < 2; i++) {
+					fflush(_child_reader.fps[i]);
+				}
 
+				/*
+				 * This kill is just in case the child did
+				 * something really silly like close its
+				 * stdout and stderr but then go into an
+				 * infinite loop and never exit. Normally, it
+				 * will just fail because the child is already
+				 * dead
+				 */
+				if (!_child_reader.timeouted) {
+					kill(-_child_reader.pid, SIGKILL);
+				}
 				status = wait_child(child);
 
 				entime = time(NULL);
 				duration = entime - sttime;
 
-				pthread_mutex_lock(&_child_reader.fd_lock);
-				while ((n = read(_child_reader.fds[0], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0)
-					fwrite(buf, (size_t)n, 1, _child_reader.fps[0]);
-				while ((n = read(_child_reader.fds[1], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0)
-					fwrite(buf, (size_t)n, 1, _child_reader.fps[1]);
-				fflush(NULL);
-				pthread_mutex_unlock(&_child_reader.fd_lock);
-
 				if (status) {
 					fprintf(fp, "\nERROR: Exit status is %d\n", status);
 					rc += 1;
@@ -572,15 +610,13 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 		PTEST_LIST_ITERATE_END
 		fprintf(fp, "STOP: %s\n", progname);
 
-		pthread_cancel(tid);
-		pthread_join(tid, NULL);
-		pthread_mutex_destroy(&_child_reader.fd_lock);
-
-		close(pipefd_stdout[0]); close(pipefd_stdout[1]);
-		close(pipefd_stderr[0]); close(pipefd_stderr[1]);
+		do_close(&pipefd_stdout[0]);
+		do_close(&pipefd_stdout[1]);
+		do_close(&pipefd_stderr[0]);
+		do_close(&pipefd_stderr[1]);
 	} while (0);
 
-	if (rc == -1) 
+	if (rc == -1)
 		fprintf(fp_stderr, "run_ptests fails: %s", strerror(errno));
 
 	if (opts.xml_filename)
@@ -598,8 +634,8 @@ xml_create(int test_count, char *xml_filename)
 		fprintf(xh, "<?xml version='1.0' encoding='UTF-8'?>\n");
 		fprintf(xh, "<testsuite name='ptest' tests='%d'>\n", test_count);
 	} else {
-		fprintf(stderr, "XML File could not be created. %s.\n",
-				strerror(errno));
+		fprintf(stderr, "XML File '%s' could not be created. %s.\n",
+				xml_filename, strerror(errno));
 		return NULL;
 	}
 
-- 
2.33.0


