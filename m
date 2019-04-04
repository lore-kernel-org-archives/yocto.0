Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B2A5E00CD6; Thu,  4 Apr 2019 08:34:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DBD1E00BC8
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 08:34:43 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id y197so3968539wmd.0
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 08:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=JICp87+gCh3Cgfpp+8nmrUk+fsnqeBk/YW1TzKdBI4c=;
	b=g6wNwqMjZSsiK6gb18JqQmhWd8TZIs38ozlVqn9/zzgYcc1bWrFlEDKmEtgL3UxiUG
	EMNgeNQq3EjZaURYIfWVJhP/ziSjm2jtdaIL+rUJ8FxaALS4V2/hJOCDmuyW9ly6U5rL
	D/ykMUCbHemHa1nwUEI9WLxB9yBdbqCOPq1EQQJCVkkwCOqxjI7NGvd3BQo0rZBdFlz0
	wJqMkVioDxcNeRumbu478bSlNPBKmiQtwmZynJbUxtIzROHES+1wvb8kco/SO3B2/qEb
	XTaa3ZtQ5HuwqHhq/+Xa6zGZHPhWtIWcF7qchLeJJyliVkfGDXqtixmPbwrA8S3KbwqQ
	XTpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=JICp87+gCh3Cgfpp+8nmrUk+fsnqeBk/YW1TzKdBI4c=;
	b=m4njKqDD6y7BVDWoWzCvzyI92IW94NZBau7EyCCk9vprA4JkwfUiI2NptMUpmCZVa7
	J5vKB5nk1pU2/5foEn8J8zTb+IivJpjrIg7pzofPzVHLN8RnRIS6wRv4FjHznD3RtqkS
	Xkkb/wifPWp0AtbjMi6dykwDyxabEqtt030XvKVtmIiJjqDeaDQkGvrCsJMnPN9lPVmf
	15SsP4M/vOHpd7U2mxDz5WSo5b7r0WaT0nly8jhbLaqpZFzGq8XvjEsZritFx/tRsw8P
	t7fUAKwMVMEIQIMZ0ZIPERaAXbGSBI5n4+4jPhYLoImHMIuKnRjiSROLiS68kLV91WlU
	B0Xw==
X-Gm-Message-State: APjAAAV97PLm4Sky+7o7sHlX4++Qmo1hqBtYEjnofhVjogsvKGayJPHb
	xNJn5LJrzUzP7tXvKq1Vul3ByAA7FS8=
X-Google-Smtp-Source: APXvYqw6u12kc9spI5qDken5eUke0BaF8RXYgT+5NHrO9ojTk1JpCOscvL4jjo4RW65t7Zug5k1U5A==
X-Received: by 2002:a7b:c111:: with SMTP id w17mr4590035wmi.6.1554392082811;
	Thu, 04 Apr 2019 08:34:42 -0700 (PDT)
Received: from alexander-box.luxoft.com ([62.96.135.139])
	by smtp.gmail.com with ESMTPSA id
	b11sm23946605wru.61.2019.04.04.08.34.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 04 Apr 2019 08:34:41 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@yoctoproject.org,
	anibal.limon@linaro.org
Date: Thu,  4 Apr 2019 17:34:29 +0200
Message-Id: <20190404153429.37636-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [ptest-runner] Run ptests via stdbuf configured to line-buffering
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Apr 2019 15:34:44 -0000

As ptest-runner communicates with child processes via pipe2(),
the corresponding channels are not attached to a pty. In that
situation stdio facilities like printf() or fwrite() are fully
buffered. If a ptest would use them, without bothering
to fflush() the output, ptest-runner will only receive what
was written by the child ptest process after a buffer gets filled.
If the unit tests are proceeding slowly, this may mean that
ptest-runner will erroneously timeout due to an apparent lack of
'signs of life' from the child process.

stdbuf utility from coreutils adjusts the buffering to a line-buffered
one, and so ptest-runner will get the lines as soon as they are
written.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 utils.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/utils.c b/utils.c
index 504df0b..c130fbd 100644
--- a/utils.c
+++ b/utils.c
@@ -243,16 +243,13 @@ filter_ptests(struct ptest_list *head, char **ptests, int ptest_num)
 static inline void
 run_child(char *run_ptest, int fd_stdout, int fd_stderr)
 {
-	char **argv = malloc(sizeof(char) * 2);
+	char* argv[] = {"stdbuf", "-oL", "-eL", "./run-ptest", NULL};
 	chdir(dirname(strdup(run_ptest)));
 
-	argv[0] = run_ptest;
-	argv[1] = NULL;
-
 	dup2(fd_stdout, STDOUT_FILENO);
 	// XXX: Redirect stderr to stdout to avoid buffer ordering problems.
 	dup2(fd_stdout, STDERR_FILENO);
-	execv(run_ptest, argv);
+	execvp(argv[0], argv);
 
 	exit(1);
 }
@@ -291,12 +288,12 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 
 			if (pfds[0].revents != 0) {
 				while ((n = read(fds[0], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0)
-					fwrite(buf, n, 1, fps[0]);
+					fwrite(buf, n, 1, fps[0]); fwrite("hallo", 5 ,1 ,fps[0]); fflush(fps[0]);
 			}
 
 			if (pfds[1].revents != 0) {
 				while ((n = read(fds[1], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0)
-					fwrite(buf, n, 1, fps[1]);
+					fwrite(buf, n, 1, fps[1]); fwrite("hallo-err", 9 ,1 ,fps[0]); fflush(fps[1]);
 			}
 
 			clock_gettime(clock, &sentinel);
-- 
2.17.1


