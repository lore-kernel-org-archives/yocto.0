Return-Path: <anibal@limonsoftware.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9C8FC47DA9
	for <webhook@archiver.kernel.org>; Sat, 27 Jan 2024 19:23:54 +0000 (UTC)
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
 by mx.groups.io with SMTP id smtpd.web10.22797.1706383425794898749
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Jan 2024 11:23:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@limonsoftware-com.20230601.gappssmtp.com header.s=20230601 header.b=g6I3GjxE;
 spf=pass (domain: limonsoftware.com, ip: 209.85.161.41, mailfrom: anibal@limonsoftware.com)
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-59a2dde1cfcso44502eaf.1
        for <yocto@lists.yoctoproject.org>; Sat, 27 Jan 2024 11:23:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=limonsoftware-com.20230601.gappssmtp.com; s=20230601; t=1706383425; x=1706988225; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tOQVtVyarvQJha95YZzsVfrW+kz9SUlvqizgB/Xt96o=;
        b=g6I3GjxE9J61jTKwG/oBOHXf+yN97WAghegPhwxQqU9TW3VjEA0M+gTEPJWZPo7Tdf
         +p4QxIbQKRL8JZfmvpZVBoWxAGdCL6/XS7RLurYu/da4ylKVXOyZw0xz+QAlRKoGBbyb
         seM4yYFF8DEtNGVzqYjbasRvcdc7ypoU5Qho0SB2/Se01o9U2bf5wKT+8Hkuxnm5Egvw
         Z4LCvRpNx6EKcbEMwugqD6kqZu3f7whARYqIJbv30FliI0hjQ3pBxiynsbCZiPK7B/bm
         KzoZFXa+rIfZlHRbFWQ87ToMenRLh9uvu/FkyLGyugU/RB2M2E81ZdBCAUzVvs+TMAHv
         n/Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706383425; x=1706988225;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tOQVtVyarvQJha95YZzsVfrW+kz9SUlvqizgB/Xt96o=;
        b=lTIZG+Jpnq/o6a9mpeSa5ulg99J8K1TS0dvJ0U1XeD0YDakCIDVdtV6G9rYiHwrbFt
         730L4ltQzYgx2h4MBFFo8qX1KXNknyu/1lvOw6a6uIvAWIKRYRgg6f8E6Oq4rKsdfEnU
         3aI9f8xFgHZ1glgis4RV20A5zL2QJwkKoBgvGCR5SA6w9/m1c4IQEKwk9HAVvfvBySYn
         TDzjSoBGeTyo3VoeYfv1k+cFB8v2SNGtKGBXo58TPnbT3UGkfIFXd7xmkN0xl+T8/Ss5
         QMjO+UnAd56fZ1zZ/TqQGwWyiIPJkrWfTPcJwQ70kYn7aACikm7XIXJ2uua5QwPVxNpT
         oyIw==
X-Gm-Message-State: AOJu0YyGZvYcgWPsn9CgByexMtc6HF1eiX4sC/98aG2snGOxbibM2SAo
	fKZ95i7FH2iD38DlmiFapLgaAiEbrZrFLKhsWUkEcCXAZW3+zTSPK6ONZS9y4o52mYbD7ynZ1mC
	c
X-Google-Smtp-Source: AGHT+IHLSSpMKnDodQ79gmvFlCKj7b5VuodvSFaCJX+0/XB6kU1WfRZ3csEk6otN51Mw/2UVVUsHjg==
X-Received: by 2002:a4a:c489:0:b0:59a:a18:59cc with SMTP id f9-20020a4ac489000000b0059a0a1859ccmr579674ooq.4.1706383424994;
        Sat, 27 Jan 2024 11:23:44 -0800 (PST)
Received: from localhost.localdomain ([2806:10b7:3:10a9:bcea:6138:f9fd:313f])
        by smtp.gmail.com with ESMTPSA id h10-20020a4ac44a000000b00599f1741917sm64558ooq.43.2024.01.27.11.23.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 11:23:44 -0800 (PST)
From: Anibal Limon <anibal@limonsoftware.com>
To: yocto@lists.yoctoproject.org
Cc: richard.purdie@linuxfoundation.org,
	JPEWhacker@gmail.com,
	randy.macleod@windriver.com,
	Anibal Limon <anibal@limonsoftware.com>
Subject: [yocto][ptest-runner 2/2] utils: run_child fix security flags build
Date: Sat, 27 Jan 2024 13:23:38 -0600
Message-ID: <20240127192338.776610-2-anibal@limonsoftware.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240127192338.776610-1-anibal@limonsoftware.com>
References: <20240127192338.776610-1-anibal@limonsoftware.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 27 Jan 2024 19:23:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62311

Move chdir outside run_child to better handle when fails output an error
message plus remove the need to strdup inside run_child (already have
ptest_dir).

Signed-off-by: Anibal Limon <anibal@limonsoftware.com>
---
 utils.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/utils.c b/utils.c
index 54394cc..472520f 100644
--- a/utils.c
+++ b/utils.c
@@ -327,7 +327,6 @@ static inline void
 run_child(char *run_ptest, int fd_stdout, int fd_stderr)
 {
 	char *const argv[2] = {run_ptest, NULL};
-	chdir(dirname(strdup(run_ptest)));
 
 	dup2(fd_stdout, STDOUT_FILENO);
 	// XXX: Redirect stderr to stdout to avoid buffer ordering problems.
@@ -466,7 +465,11 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 					fprintf(fp, "ERROR: Unable to attach to controlling tty, %s\n", strerror(errno));
 				}
 
-				run_child(p->run_ptest, pipefd_stdout[PIPE_WRITE], pipefd_stderr[PIPE_WRITE]);
+				if (chdir(ptest_dir) == -1) {
+					fprintf(fp, "ERROR: Unable to chdir(%s), %s\n", ptest_dir, strerror(errno));
+				} else {
+					run_child(p->run_ptest, pipefd_stdout[PIPE_WRITE], pipefd_stderr[PIPE_WRITE]);
+				}
 
 			} else {
 				bool timedout = false;
-- 
2.43.0


