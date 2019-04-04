Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5890FE00D07; Thu,  4 Apr 2019 09:00:24 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.43 listed in list.dnswl.org]
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1DD3E009A4
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 09:00:23 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id t17so4404208wrw.13
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 09:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=TsuifP0UD8SkVEYcSK/f2d4iKtpCpFahW2MMWI7PwT4=;
	b=XXjX2QIfuV/ysWlV69UTybmKu19KfDFqvWqXMSmZ+F81/y/4iNTrZEV5RCC/gd+/9n
	ap0hGPoVNCorl317pS+/evOn/mu4qHJugwTNUzW5Rs2TZPlQcSl+XwBKabydLqUBlxrP
	pKdD9jfZzf4ND5mebqCuvVi0DtHS0nTZ1ys3yOj40Pvcsn/R6NGJmMP4bAc0MAUUAl9U
	cZ1ZTA/6RpxNtYEpSU77o43zKSLx2RM/If1Jxpde0fVHqnTriM5mWBzN3XaVMPrWY69n
	8+cnd+OhsuK+nvzf6VUAPlJkXXnqUzt3jIGHenxHfai001b2nPlcg1E/KC6IL5V2gcsv
	bHjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=TsuifP0UD8SkVEYcSK/f2d4iKtpCpFahW2MMWI7PwT4=;
	b=G67snwgYab5PbPn6j08c1tKGEVQHz7RmuTUJs9XigVzCmL5GB0Wy8AWhIaIjGrq/3B
	ssLjNMdAnG7saYliKHWmCvfGtkHkUKq24RtP8pMkytHlsK7zjyCPFMcpADIWhMa2TmWi
	THeQuod3aFrt9AUQ4g3aSHunYLf2kAYXVADyURw2c3u+pscRREvLV2cff5ivweSM0OsF
	vCj5sxXbbOt1/afj/mGa7L676lJrQvd81swkGsaKZ7CQ7tXV7o3G/gO3q0UkqOhgCcV5
	GAUkXZATqTIKUfKtj1rr17KtPPdW0Poa/SCHpf3PDJ/oEchbl7T6ZeQqSksxHB7JXikR
	OF2Q==
X-Gm-Message-State: APjAAAU4jsqNu89UIlAR2QkkzVrnTIY3SssRH9I0XkBFPkM4+pSSUTmR
	aC8UnS+XOb9s3wP+K0a9JHTSYF0C5fg=
X-Google-Smtp-Source: APXvYqy9sx/f8IIfTQgnm/2BRy0JwozTcSG1WAPfxXaSeX1Uf2G9qTPt9oBjJ6UhiwDzSLba1SRCZw==
X-Received: by 2002:adf:edc6:: with SMTP id v6mr4845368wro.189.1554393622714; 
	Thu, 04 Apr 2019 09:00:22 -0700 (PDT)
Received: from alexander-box.luxoft.com ([62.96.135.139])
	by smtp.gmail.com with ESMTPSA id
	f10sm23369086wrs.17.2019.04.04.09.00.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 04 Apr 2019 09:00:21 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@yoctoproject.org,
	anibal.limon@linaro.org
Date: Thu,  4 Apr 2019 18:00:15 +0200
Message-Id: <20190404160015.39306-1-alex.kanavin@gmail.com>
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
X-List-Received-Date: Thu, 04 Apr 2019 16:00:24 -0000

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
 utils.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/utils.c b/utils.c
index 504df0b..1376e39 100644
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
-- 
2.17.1


