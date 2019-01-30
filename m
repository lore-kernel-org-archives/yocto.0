Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B37D1E00D15; Wed, 30 Jan 2019 09:08:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
	[209.85.210.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44E47E00D15
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 09:08:01 -0800 (PST)
Received: by mail-ot1-f67.google.com with SMTP id 32so189755ota.12
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 09:08:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=IVkdU2ATw6NY4ZJ8tXkDkRBcq1nNgv9cD4BImQRORAY=;
	b=QX4J+qgxW0r9o17wrK15nYgiRwLpeCc4pzz62JlajeBDF5/AMperM632h2qHic6gOf
	E8wfwDdGEf6u/T93wv+qzd+Ws2zvZdIQmav/iVHZUFaO2HQ2Zn+VlS3/bxXpeQGFY7+J
	tXTCVZIqAnAdW4MpeCsHRDh6BuIrHSRij9QXo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=IVkdU2ATw6NY4ZJ8tXkDkRBcq1nNgv9cD4BImQRORAY=;
	b=NxOmq7YedZ0Q8rQDBMNqPYmOEVH2kb7m97FWJhaRO35cT6XKyeGRsqzBivs6dSn87o
	5IzK3v75HA06WszexmLdlg33inK9qylEOm/zm1PpW8tT/pchQ1HstZ6TA/49EPbD/XQV
	S2LfFBqyyBQgrz4CxJd87q2mQWCNqR0VStmc50I24a4AadJxbPQS3N07Cyb45ERAoX4p
	jAZaQeYoeRw6tHPBQmcwIRPp+0uuxT5QeXgshjC27boJdvTfikGOFjJWNEtQsCYNf/f3
	/evlbi3xp9Vcb+hJrZSce0hKG7uWZInDrmY2cXd1ccMonkdwMCm0e2ZDgv0V+oLJWTtp
	tkig==
X-Gm-Message-State: AJcUukcuAxnTnZqmLB6LNV3xO9N6wmg/gVQRhVCEw+ywi1Q+vUIv6Ssb
	a5EoqYoVZh45egvAiNU3E24VG4ornLA=
X-Google-Smtp-Source: ALg8bN5c9o33RSLwRLWjju0FUOFeacjD7J/Z8wu4TtTGSnaa4IcJGEw0xizCN3R+nRKuNU+Br58MBw==
X-Received: by 2002:a9d:715d:: with SMTP id y29mr23624835otj.148.1548868079058;
	Wed, 30 Jan 2019 09:07:59 -0800 (PST)
Received: from blackbox.Home ([200.68.141.9])
	by smtp.gmail.com with ESMTPSA id z9sm864050oiz.21.2019.01.30.09.07.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 30 Jan 2019 09:07:58 -0800 (PST)
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2019 11:07:36 -0600
Message-Id: <20190130170737.5347-1-anibal.limon@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [PATCH][ptest-runner 1/2] utils.c: run_child redirect stderr to stdout
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
X-List-Received-Date: Wed, 30 Jan 2019 17:08:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

To fix buffer ordering problems.

Signed-off-by: Aníbal Limón <anibal.limon@linaro.org>
---
 utils.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/utils.c b/utils.c
index 01ee415..0813e3c 100644
--- a/utils.c
+++ b/utils.c
@@ -250,7 +250,8 @@ run_child(char *run_ptest, int fd_stdout, int fd_stderr)
 	argv[1] = NULL;
 
 	dup2(fd_stdout, STDOUT_FILENO);
-	dup2(fd_stderr, STDERR_FILENO);
+	// XXX: Redirect stderr to stdout to avoid buffer ordering problems.
+	dup2(fd_stdout, STDERR_FILENO);
 	execv(run_ptest, argv);
 
 	exit(1);
-- 
2.20.1


