Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.897.1616611264406883730
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 11:41:04 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linaro.org header.s=google header.b=Sp+K6MSZ;
 spf=softfail (domain: linaro.org, ip: 198.145.29.25, mailfrom: anibal.limon@linaro.org)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7127B38C081C
	for <yocto@yoctoproject.org>; Wed, 24 Mar 2021 18:41:03 +0000 (UTC)
Received: by mail-ot1-f45.google.com with SMTP id w21-20020a9d63950000b02901ce7b8c45b4so23982991otk.5
        for <yocto@yoctoproject.org>; Wed, 24 Mar 2021 11:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9/fjv/2PxK1aBsZ7SzzMI7MHA62ysNxH/JxxNo7/r18=;
        b=Sp+K6MSZLvzWGRFUY+3SRPM2oduOOsojnBh5MiUUuSQKsmxtuvuRN0YhLFViAF1VUp
         zFi6Un99e2IM+67ShWI1ZWzPpAaT6aQkyV5vnCBYnKQfkccM/bWm5nKAK/V66wOwpjbK
         tkibULzXpJDmEwk2Gp95gWkHZnyKhQAHpSW3bvHfud5yYpW6cSgviQbtuOB+lYzYDu0S
         fGIe5Q16Sl9rI7xu99fTA+rQ/Fli2hpoLINW5od8WdR90m1pMc2G/v+I5fZG9jmITxDB
         +G3XKmMSNTToCFGw5CwxrQVBOXyfK3RGP/0KZgOxxEbZqL+e23Xw5MsGAwaxJiU3aSnh
         UOUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9/fjv/2PxK1aBsZ7SzzMI7MHA62ysNxH/JxxNo7/r18=;
        b=GS4xjHzS/Y0zL5+wSqUs5qcJaxR99iMZIE/aiq8o6qSG6c03B8SYB7Yf/HXsopOmf5
         5aITMPWnQtaFqaS9ogD0MpWaDLrUvRfdks3iyKRSxecx0mgYOKnFmM7JL3NuxgGBTYTz
         r/OaKp3JW9NfRA0dvn2Q2K5wNHpjR5A4p6pAP1DWCjnQ22BAagzqPmFmYfehxkFI9Aw4
         YW7jkNKRtn4PhKaqRKjYUVGLj0HkYp3j2KQoOoZBjXejhySW2k1/ZfhlgVcMGc5h2/B8
         novODJ+WbvJOegffzL7n7KiJIfLpFZr5m/XaO8bZH+86VbPCj1D50nehdMrjLAnjX3Ke
         8fhw==
X-Gm-Message-State: AOAM53363cZlO+lj+M1oDc4zm6EVZJM7vbdGJ04TwMgi3uVmtUL+24rp
	0Lw0aUkhhLhciootfyPEgypOxRQOg1+I5pGt
X-Google-Smtp-Source: ABdhPJwcUEzNmW4jVgb92YXSsPPM7YG1GLJbtT/qZI/ZS5a2AX6eARBKgh1H0e5HlLpfFfZ5HS8Umw==
X-Received: by 2002:a05:6830:1404:: with SMTP id v4mr4150404otp.2.1616611262614;
        Wed, 24 Mar 2021 11:41:02 -0700 (PDT)
Received: from blackbox.Home ([2806:10b7:2:e880:2c32:cfff:fe8e:de1f])
        by smtp.gmail.com with ESMTPSA id w10sm614361oth.7.2021.03.24.11.41.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 11:41:02 -0700 (PDT)
From: "Anibal Limon" <anibal.limon@linaro.org>
To: yocto@yoctoproject.org
Cc: yifan.yu@windriver.com,
	Randy.MacLeod@windriver.com,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
Subject: [ptest-runner][PATCH 4/4v2] utils.c: wait_child reimplement timeout using alarm
Date: Wed, 24 Mar 2021 12:40:59 -0600
Message-Id: <20210324184059.3699215-1-anibal.limon@linaro.org>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Since we are using threads to read from child, no complex logic is
needed for handle timeouts by std{out,err} in the child using alarm(2).

[YOCTO #14220]

Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
---
 utils.c | 65 ++++++++++++++++++++++++---------------------------------
 1 file changed, 27 insertions(+), 38 deletions(-)

diff --git a/utils.c b/utils.c
index 84cb570..b28107d 100644
--- a/utils.c
+++ b/utils.c
@@ -57,6 +57,10 @@
 static struct {
 	int fds[2];
 	FILE *fps[2];
+
+	int timeout;
+	int timeouted;
+	pid_t pid;
 } _child_reader;
=20
 static inline char *
@@ -304,6 +308,9 @@ read_child(void *arg)
 					fwrite(buf, (size_t)n, 1, _child_reader.fps[1]);
 			}
=20
+			/* Child output reset alarm */
+			alarm(0);
+			alarm(_child_reader.timeout);
 		}
=20
 		fflush(_child_reader.fps[0]);
@@ -335,45 +342,28 @@ run_child(char *run_ptest, int fd_stdout, int fd_st=
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
=20
-	*timeouted =3D 0;
+	_child_reader.timeout =3D timeout;
+	_child_reader.timeouted =3D 0;
+	_child_reader.pid =3D pid;
=20
-	while (looping) {
-		waitflags =3D WNOHANG;
+	/* setup alarm to timeout based on std{out,err} in the child */
+	alarm(timeout);
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
+	waitpid(pid, &status, 0);
+	if (WIFEXITED(status))
+		status =3D WEXITSTATUS(status);
=20
 	return status;
 }
@@ -438,7 +428,6 @@ run_ptests(struct ptest_list *head, const struct ptes=
t_options opts,
 	pid_t child;
 	int pipefd_stdout[2];
 	int pipefd_stderr[2];
-	int timeouted;
 	time_t sttime, entime;
 	time_t duration;
 	int slave;
@@ -477,6 +466,7 @@ run_ptests(struct ptest_list *head, const struct ptes=
t_options opts,
 			close(pipefd_stdout[1]);
 			break;
 		}
+		signal(SIGALRM, timeout_child_handler);
=20
 		fprintf(fp, "START: %s\n", progname);
 		PTEST_LIST_ITERATE_START(head, p)
@@ -527,8 +517,7 @@ run_ptests(struct ptest_list *head, const struct ptes=
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
@@ -538,11 +527,11 @@ run_ptests(struct ptest_list *head, const struct pt=
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

