Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46EDAC001DF
	for <webhook@archiver.kernel.org>; Tue, 18 Jul 2023 17:26:25 +0000 (UTC)
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
 by mx.groups.io with SMTP id smtpd.web11.1870.1689701183211045389
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jul 2023 10:26:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=pLQlu0Dl;
 spf=pass (domain: gmail.com, ip: 209.85.161.43, mailfrom: jpewhacker@gmail.com)
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-56598263d1dso3869647eaf.0
        for <yocto@lists.yoctoproject.org>; Tue, 18 Jul 2023 10:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689701182; x=1692293182;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/chmA5HZfGusxWMEjNKsIshsKdY9O33vilaiD1u7PvM=;
        b=pLQlu0DlGIOzDPjvsE+9xgz49uWNyNDbxIAOP/fWA43tNtSMWxFVXrgamH7JZNHtrD
         0QgzLyemFe7t7NrpD8PtCAbO+PmZ/8NLRlXtwboC7nBLHUKhUJ0+iPzuszN+07hUiOzl
         i358a9LzAkdWBUCiFyfEkVeYAZM1p5lTCbUsbkhPVfzgG7Vuc6HadbbceMTEknpjo5zC
         0qPSso+tMjskbEnEdI4z4cdtk37h9izlAxxZ/0yS1JD6P5EglHTg2fVaPkmbnVb5wtgw
         v6kpZAJUI95BSp5bLeTvr5lR6Mwp4YjedGIC7chwwVV/XdyukBPhSygglcVAHwvSlvvH
         BQ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689701182; x=1692293182;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/chmA5HZfGusxWMEjNKsIshsKdY9O33vilaiD1u7PvM=;
        b=VqAOM7pxoksuiIRt8LJIluk55I+rbGK5bcLQu6fj4cGzgmle/5GadyBQcOvGK79WuD
         9MV7epf9NH50F6p1GakBxlD8TXpP+3JmjSK+CwcBTi0zrROrei9WCfpvida/JCmQI7lg
         UG9mNud29hlgQZ6+kAbrXGp6kevR5w5wctA1nMaO2MErgLrnVy9OIB5g2Thj/EASK1Fl
         vb60kquESrRiXaTbQvWyNIXlt3FXeOr5OBowLkCsyvQ8YrAjZDvqp3b3jXsa8av5Yt8O
         ZXN/B5rehRzPq1FXekF652FDagRhdULIKIWYVgtB8oVgmQg6LgVTMWAtmGsW7Nax66Mg
         WuUw==
X-Gm-Message-State: ABy/qLZ79htu3SkK6wnnV56Q1c9h0wWqfOlWgCc1GGlGyJcnxPzO3csV
	DShxZbwee/K2+B0ZT1tRp6UmwK8UDaQ=
X-Google-Smtp-Source: APBJJlGB8P/YL4YgVxLuEAY5UHDzAfhJgk5dafwRSmiWr+OUrBJYJhn2RNhDPhpaIgCGwMdu2Av7qQ==
X-Received: by 2002:a4a:271b:0:b0:566:f406:9b7c with SMTP id l27-20020a4a271b000000b00566f4069b7cmr6878925oof.3.1689701181633;
        Tue, 18 Jul 2023 10:26:21 -0700 (PDT)
Received: from localhost.localdomain ([2601:282:4300:19e0::65c])
        by smtp.gmail.com with ESMTPSA id 129-20020a4a0687000000b00565ebacf9cfsm1005120ooj.33.2023.07.18.10.26.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jul 2023 10:26:21 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [ptest-runner][PATCH 2/5] Only collect system state on timeout
Date: Tue, 18 Jul 2023 11:26:11 -0600
Message-Id: <20230718172614.469304-3-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230718172614.469304-1-JPEWhacker@gmail.com>
References: <20230718172614.469304-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jul 2023 17:26:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60606

To match the behavior of the previous ptest-runner, only collect system
state when a test has timed out

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 utils.c | 25 +++++++++++--------------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/utils.c b/utils.c
index 34ca2f0..d0e6a99 100644
--- a/utils.c
+++ b/utils.c
@@ -556,21 +556,18 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 						}
 					}
 				}
-				collect_system_state(_child_reader.fps[0]);
 
-				for (int i = 0; i < 2; i++) {
-					fflush(_child_reader.fps[i]);
-				}
-
-				/*
-				 * This kill is just in case the child did
-				 * something really silly like close its
-				 * stdout and stderr but then go into an
-				 * infinite loop and never exit. Normally, it
-				 * will just fail because the child is already
-				 * dead
-				 */
-				if (!_child_reader.timeouted) {
+				if (_child_reader.timeouted) {
+					collect_system_state(fp);
+				} else {
+					/*
+					 * This kill is just in case the child did
+					 * something really silly like close its
+					 * stdout and stderr but then go into an
+					 * infinite loop and never exit. Normally, it
+					 * will just fail because the child is already
+					 * dead
+					 */
 					kill(-child, SIGKILL);
 				}
 				waitpid(child, &status, 0);
-- 
2.33.0


