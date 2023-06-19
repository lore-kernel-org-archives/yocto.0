Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43CCEB64D9
	for <webhook@archiver.kernel.org>; Mon, 19 Jun 2023 15:09:04 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.9873.1687187334928905774
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Jun 2023 08:08:55 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=AAaPxlVF;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3111cb3dda1so4141548f8f.0
        for <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 08:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1687187333; x=1689779333;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=1MyLhK2t5XrfQhxiRnyqqjrv1IdsJ4AW32bl43geRKI=;
        b=AAaPxlVFUqnjkJ4UNtT91b/38aUVft59eXnpGR/vP/m5xAbUlFvGEEqX2eE67f9fCI
         l3/JXhaHjFHfPB23Mr7T6N1FJsN2iuIla866la++TOn782NOzbtraltWEAo864NJg44N
         7dlWSMkdxqAGR7FYd5gEmUvTW0GV0R4nMhe/M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687187333; x=1689779333;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1MyLhK2t5XrfQhxiRnyqqjrv1IdsJ4AW32bl43geRKI=;
        b=BUGLCvgoF9cICIvuszx1GCZbB4QpPEM75Vv6CQyPwdZQZFLKEMBujCsJiCtKfe8zSt
         t/7K3+aFWzOymVJ7cPIXdPshXcWIQkt40LevewqSHIaegiBLcYrCK3RZRR1oObw9hWwA
         z3vfjZ2HDucVu570F8qSVo68ppLJ+HHhkcZenGZKHj/Pkxx6lRhI8L6ej7v6R8OOxixY
         Tn6VyN0hj5GD73fPwyAVg3MSVBRP/zBz2EZW6N7MfJGzfcZA+EM/AbGaYtz3ohiC1gDM
         91LNAspM4fM0GBq1O4EZcEoe6IRHC9kRBVAL97tdofQMMeXIGzIt2E8Xa7gmzvUKke6o
         eiBA==
X-Gm-Message-State: AC+VfDwmO+GtsznI5RlbSxOYgW2OlPNrzUd0HtGNOMKWRKSNvoB9Ci4Y
	PLmu4uwRUVsRw8y2SSUGVEzkttLSOaj+hTr35Oc=
X-Google-Smtp-Source: ACHHUZ5U3eHGEdU3bn6X+DF20QwgiLZmsxn4QBDkN3SdizHc9mhb9SFdeJ23Dtx0EL8jC0wZ3zlkAQ==
X-Received: by 2002:a05:6000:1286:b0:30a:e6d4:f2b8 with SMTP id f6-20020a056000128600b0030ae6d4f2b8mr8433819wrx.25.1687187332813;
        Mon, 19 Jun 2023 08:08:52 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:f105:ba55:87cc:dc34])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm31830951wrq.43.2023.06.19.08.08.52
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jun 2023 08:08:52 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [ptest-runner2] [PATCH] utils: Ensure data is only written with a mutex held
Date: Mon, 19 Jun 2023 16:08:51 +0100
Message-Id: <20230619150851.2675823-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 15:09:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60347

Currently the code can race as there is a read/write thread handling the stdio but
there is no guarantee that when the process exits, the thread has handled all the
data. This results in output where "END:" isn't actually at the end of the logs
but somewhere in the middle of the output.

Synchronisation is hard. The easiest way I can see to fix this is to have a mutex
for the output and then in the main thread, after the child exits, read any remaining
data. This avoids concurrent writes corrupting the output and ensures END: is
actually at the end of the test data.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 utils.c | 25 +++++++++++++++++++++----
 1 file changed, 21 insertions(+), 4 deletions(-)

diff --git a/utils.c b/utils.c
index ec57fa4..65b1df3 100644
--- a/utils.c
+++ b/utils.c
@@ -63,6 +63,7 @@ static struct {
 	int timeouted;
 	pid_t pid;
 	int padding1;
+	pthread_mutex_t fd_lock;
 } _child_reader;
 
 static inline char *
@@ -317,12 +318,13 @@ read_child(void *arg)
 
 	do {
 		r = poll(pfds, 2, _child_reader.timeout*1000);
+		pthread_mutex_lock(&_child_reader.fd_lock);
 		if (r > 0) {
 			char buf[WAIT_CHILD_BUF_MAX_SIZE];
 			ssize_t n;
 
 			if (pfds[0].revents != 0) {
-				n = read(_child_reader.fds[0], buf, WAIT_CHILD_BUF_MAX_SIZE);
+ 				n = read(_child_reader.fds[0], buf, WAIT_CHILD_BUF_MAX_SIZE);
 				if (n > 0)
 					fwrite(buf, (size_t)n, 1, _child_reader.fps[0]);
 			}
@@ -338,11 +340,13 @@ read_child(void *arg)
 			// as much data from the system as possible and kill the test
 			collect_system_state(_child_reader.fps[0]);
 			_child_reader.timeouted = 1;
+			pthread_mutex_unlock(&_child_reader.fd_lock);
 			kill(-_child_reader.pid, SIGKILL);
                 }
 
 		fflush(_child_reader.fps[0]);
 		fflush(_child_reader.fps[1]);
+		pthread_mutex_unlock(&_child_reader.fd_lock);
 	} while (1);
 
 	return NULL;
@@ -444,6 +448,8 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 	int slave;
 	int pgid = -1;
 	pthread_t tid;
+	ssize_t n;
+	char buf[WAIT_CHILD_BUF_MAX_SIZE];
 
 	if (opts.xml_filename) {
 		xh = xml_create(ptest_list_length(head), opts.xml_filename);
@@ -453,10 +459,10 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 
 	do
 	{
-		if ((rc = pipe(pipefd_stdout)) == -1)
+		if ((rc = pipe2(pipefd_stdout, O_NONBLOCK)) == -1)
 			break;
 
-		if ((rc = pipe(pipefd_stderr)) == -1) {
+		if ((rc = pipe2(pipefd_stderr, O_NONBLOCK)) == -1) {
 			close(pipefd_stdout[0]);
 			close(pipefd_stdout[1]);
 			break;
@@ -466,6 +472,11 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 			fprintf(fp, "ERROR: Unable to detach from controlling tty, %s\n", strerror(errno));
 		}
 
+ 		if (pthread_mutex_init(&_child_reader.fd_lock, NULL) != 0) {
+			printf("Failed to init mutex\n");
+			exit(EXIT_FAILURE);
+		}
+
 		_child_reader.fds[0] = pipefd_stdout[0];
 		_child_reader.fds[1] = pipefd_stderr[0];
 		_child_reader.fps[0] = fp;
@@ -535,8 +546,13 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				entime = time(NULL);
 				duration = entime - sttime;
 
-				/* Now the child has exited, ensure buffers are in sync before writing */
+				pthread_mutex_lock(&_child_reader.fd_lock);
+				while ((n = read(_child_reader.fds[0], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0)
+					fwrite(buf, (size_t)n, 1, _child_reader.fps[0]);
+				while ((n = read(_child_reader.fds[1], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0)
+					fwrite(buf, (size_t)n, 1, _child_reader.fps[1]);
 				fflush(NULL);
+				pthread_mutex_unlock(&_child_reader.fd_lock);
 
 				if (status) {
 					fprintf(fp, "\nERROR: Exit status is %d\n", status);
@@ -558,6 +574,7 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 
 		pthread_cancel(tid);
 		pthread_join(tid, NULL);
+		pthread_mutex_destroy(&_child_reader.fd_lock);
 
 		close(pipefd_stdout[0]); close(pipefd_stdout[1]);
 		close(pipefd_stderr[0]); close(pipefd_stderr[1]);
-- 
2.39.2


