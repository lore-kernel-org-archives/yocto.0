Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.3233.1616465450073667231
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 19:10:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linaro.org header.s=google header.b=iACTGcQa;
 spf=softfail (domain: linaro.org, ip: 198.145.29.25, mailfrom: anibal.limon@linaro.org)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by mail.yoctoproject.org (Postfix) with ESMTPS id ED54B38C05B5
	for <yocto@yoctoproject.org>; Tue, 23 Mar 2021 02:10:49 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id i81so13886131oif.6
        for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 19:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HnjXqItF7YE1GO2tHtLDUSqPa2chrLsUPHcw9Igv1Fo=;
        b=iACTGcQaowj+oBnVktLl5ANFthb7/GfpC6dFr187/tvxoXs0M+kPfzx1Y9CkfLAONe
         tXWu+j9utHgVj5b0GTtSulpO8uJig9J+Qa6LwoBrD4Rv3iP1KbNhrdU09FloEKcuJ3UF
         DMJbwIUWQkvdWxdsgwzF4HDLqH0upmAf6ppbbCwj41+YnA/LqnlzbDCUr4vzrfU9wdb7
         yTxtp+z+la1HAljRJPoGpA3Wa88743mOUC4K5eaNSFex8C8phhFDwlrxq1USYMWVwmO0
         xx2MPcWcbE1tF4Las7gPbV5fJxOgEiXXif9vwvcO6VR5THu5hslYi1FHtoVWM4m6w1TS
         a6HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HnjXqItF7YE1GO2tHtLDUSqPa2chrLsUPHcw9Igv1Fo=;
        b=ofL5qXufu+SEn4/kVPfynXHkpRfJnf/1eoSJWav8LwPnDgFfZlNT+r90B+4MfhwoWT
         wVDcfTZIWkqS2tQGoSvbCoQveIneiE+ix/UCJyZDv3Xm4DIkPyIgx+D/faKBdDROJ4f/
         B0XBT9oH1fiibC16PZhCq4/o84ilhBzZh2H74wnYevRB/NmCuCQX6s5u4SbGG2vRQXGw
         aNRMpFF+vyDwFxQxtbZpbIu6nNATkAEwM+PjU/OrDH3VR8hqA/3i1o4gdddRaoqZIY3z
         3VpV7wnsQ4jy440f2IDTpfD2tYXoiOSAqcUBjvIZLb0T0IdPRP0IY2QesBX0c00ZrP3C
         gGyw==
X-Gm-Message-State: AOAM533v5AxJU/8sl1WM626eCPEKHkqqlrPNo3EFHarbXMxhtRuKb2H9
	Eap4H7tiOeKHXuYAyPeTD2rsWpXvfdxGjzRK
X-Google-Smtp-Source: ABdhPJx6SVfucypJYr3cQmUPLjboOsCNZOCxzLM6otTeX7eUnfmiHvb9uhdDAJlSkeGTFQirpO0EWA==
X-Received: by 2002:aca:2219:: with SMTP id b25mr1561400oic.112.1616465449083;
        Mon, 22 Mar 2021 19:10:49 -0700 (PDT)
Received: from blackbox.Home ([2806:10b7:2:e880:2c32:cfff:fe8e:de1f])
        by smtp.gmail.com with ESMTPSA id h59sm3924505otb.29.2021.03.22.19.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 19:10:48 -0700 (PDT)
From: "Anibal Limon" <anibal.limon@linaro.org>
To: yocto@yoctoproject.org
Cc: yifan.yu@windriver.com,
	Randy.MacLeod@windriver.com,
	nicolas.dechesne@linaro.org,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
Subject: [ptest-runner][PATCH 4/4] utils.c: wait_child reimplement timeout using alarm
Date: Mon, 22 Mar 2021 20:10:38 -0600
Message-Id: <20210323021038.1049654-4-anibal.limon@linaro.org>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210323021038.1049654-1-anibal.limon@linaro.org>
References: <20210323021038.1049654-1-anibal.limon@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Since we are using threads to read from child, no complex logic is
needed for handle timeouts use alarm(2).

[YOCTO #14220]

Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
---
 utils.c | 60 ++++++++++++++++++++-------------------------------------
 1 file changed, 21 insertions(+), 39 deletions(-)

diff --git a/utils.c b/utils.c
index 84cb570..1a3c90f 100644
--- a/utils.c
+++ b/utils.c
@@ -57,6 +57,9 @@
 static struct {
 	int fds[2];
 	FILE *fps[2];
+
+	int timeouted;
+	pid_t pid;
 } _child_reader;
=20
 static inline char *
@@ -335,45 +338,25 @@ run_child(char *run_ptest, int fd_stdout, int fd_st=
derr)
 	/* exit(1); not needed? */
 }
=20
-static inline int
-wait_child(pid_t pid, int timeout, int *timeouted)
+static void
+timeout_child_handler(int signo)
 {
-	struct timespec sentinel;
-	clockid_t clock =3D CLOCK_MONOTONIC;
-	int looping =3D 1;
+	_child_reader.timeouted =3D 1;
+	kill(-_child_reader.pid, SIGKILL);
+}
=20
+static inline int
+wait_child(pid_t pid, int timeout)
+{
 	int status =3D -1;
-	int waitflags;
-
-	if (clock_gettime(clock, &sentinel) =3D=3D -1) {
-		clock =3D CLOCK_REALTIME;
-		clock_gettime(clock, &sentinel);
-	}
-
-	*timeouted =3D 0;
=20
-	while (looping) {
-		waitflags =3D WNOHANG;
+	_child_reader.timeouted =3D 0;
+	_child_reader.pid =3D pid;
=20
-		if (timeout >=3D 0) {
-			struct timespec time;
-
-			clock_gettime(clock, &time);
-			if ((time.tv_sec - sentinel.tv_sec) > timeout) {
-				*timeouted =3D 1;
-				kill(-pid, SIGKILL);
-				waitflags =3D 0;
-			}
-		}
-
-		if (waitpid(pid, &status, waitflags) =3D=3D pid)
-			looping =3D 0;
-
-		clock_gettime(clock, &sentinel);
-
-		if (WIFEXITED(status))
-			status =3D WEXITSTATUS(status);
-	}
+	alarm(timeout);
+	waitpid(pid, &status, 0);
+	if (WIFEXITED(status))
+		status =3D WEXITSTATUS(status);
=20
 	return status;
 }
@@ -438,7 +421,6 @@ run_ptests(struct ptest_list *head, const struct ptes=
t_options opts,
 	pid_t child;
 	int pipefd_stdout[2];
 	int pipefd_stderr[2];
-	int timeouted;
 	time_t sttime, entime;
 	time_t duration;
 	int slave;
@@ -477,6 +459,7 @@ run_ptests(struct ptest_list *head, const struct ptes=
t_options opts,
 			close(pipefd_stdout[1]);
 			break;
 		}
+		signal(SIGALRM, timeout_child_handler);
=20
 		fprintf(fp, "START: %s\n", progname);
 		PTEST_LIST_ITERATE_START(head, p)
@@ -527,8 +510,7 @@ run_ptests(struct ptest_list *head, const struct ptes=
t_options opts,
 				fprintf(fp, "BEGIN: %s\n", ptest_dir);
=20
=20
-				status =3D wait_child(child, opts.timeout, &timeouted);
-
+				status =3D wait_child(child, opts.timeout);
=20
 				entime =3D time(NULL);
 				duration =3D entime - sttime;
@@ -538,11 +520,11 @@ run_ptests(struct ptest_list *head, const struct pt=
est_options opts,
 					rc +=3D 1;
 				}
 				fprintf(fp, "DURATION: %d\n", (int) duration);
-				if (timeouted)
+				if (_child_reader.timeouted)
 					fprintf(fp, "TIMEOUT: %s\n", ptest_dir);
=20
 				if (opts.xml_filename)
-					xml_add_case(xh, status, ptest_dir, timeouted, (int) duration);
+					xml_add_case(xh, status, ptest_dir, _child_reader.timeouted, (int) =
duration);
=20
 				fprintf(fp, "END: %s\n", ptest_dir);
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, entime));
--=20
2.31.0

