Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29770EB64DC
	for <webhook@archiver.kernel.org>; Tue, 18 Jul 2023 17:26:35 +0000 (UTC)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
 by mx.groups.io with SMTP id smtpd.web11.1871.1689701185183593378
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jul 2023 10:26:25 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=eP3PV2cc;
 spf=pass (domain: gmail.com, ip: 209.85.210.42, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-6b9e478e122so706583a34.1
        for <yocto@lists.yoctoproject.org>; Tue, 18 Jul 2023 10:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689701183; x=1692293183;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AwbO4EJM/CWYrg7CgWs2TyXTOJ4GQa4W36VYE/9QcEw=;
        b=eP3PV2ccuqIlvluP0hGn/A7vp2FHmySf2U9jlSZvGgGVxiZxrOCOyhPl5laRdFdqKz
         P5Ik2DcF/LxMui/HRXos1Z0327ktCAAL6eMRcXDqbJBZKsmBKJSPM4iYdzBOgWk8aaaF
         ACGNAt94jWo29Icz6ORkVPiHZ/me+Go6GVxWnU+Rb4QDGNjMORQzy723EQkc5kpfdosu
         KfX6TPOJw0hU8DGJtNNHbmCQilNGrHkN4s6MYLSU5wIcvpSNgLBehiT1Zm6R/uHZRcq0
         TLxZhWvhMwKJB55z6RvWq+Hcg+ncWX/4JRgeDZ9wQiW/LTAyZpWFdI0DCbPx22MvRNYO
         /3sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689701183; x=1692293183;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AwbO4EJM/CWYrg7CgWs2TyXTOJ4GQa4W36VYE/9QcEw=;
        b=RCNBGNVEtjTxaMjA19NBJkqAgw4iReD6y6r1q53ykneiWzdHtVLAnf/khLN0923dYI
         JUBTJc8ZX7F3I4UPxD5jhlCXnZHyb1SeAu8FjSy+FIYkzlu5foba4rwNPaxkHrqYbGsl
         xOiKw3laJbvZlQib29BQgjpxjlXtmBp0iNpguzIPlM9Ons62JuSxMLxPp4f9BAjVfNa2
         xEZ8Da5DBOWRcWl9l+TveeRNGE23pwyKzlm29NEtx2BnydmPuw58cK6hQf9FOsuA6lpf
         oruwVcQtSRDZzXXasFcsTymnBrAk8Ur3jTrQ5yR9M7Uh6UeNHAHjjkhTv5bl6UUiKOe8
         /JZg==
X-Gm-Message-State: ABy/qLYBsRiHGTE1AMqbgaREn0s1+u6X7J8P/oCsR8brmZnHYvCklTWv
	KZB3PLJIaiH9RgshYGEy4j2IAYP1mrQ=
X-Google-Smtp-Source: APBJJlFxBDDRaegHGo+b6WHFEF7EMO7dA0BotODrn1yEKYh2HBA+fcZ80KrLWJQpqCXspWa+dw0Ujg==
X-Received: by 2002:a05:6870:3306:b0:1ba:5464:774d with SMTP id x6-20020a056870330600b001ba5464774dmr11321832oae.19.1689701183574;
        Tue, 18 Jul 2023 10:26:23 -0700 (PDT)
Received: from localhost.localdomain ([2601:282:4300:19e0::65c])
        by smtp.gmail.com with ESMTPSA id 129-20020a4a0687000000b00565ebacf9cfsm1005120ooj.33.2023.07.18.10.26.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jul 2023 10:26:22 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [ptest-runner][PATCH 3/5] Report test failure on timeout
Date: Tue, 18 Jul 2023 11:26:12 -0600
Message-Id: <20230718172614.469304-4-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230718172614.469304-1-JPEWhacker@gmail.com>
References: <20230718172614.469304-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jul 2023 17:26:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60608

Even when a test times out, an "ERROR:" message should be printed so
that the OE selftest parser knows the test has failed.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 utils.c | 27 ++++++++++++---------------
 1 file changed, 12 insertions(+), 15 deletions(-)

diff --git a/utils.c b/utils.c
index d0e6a99..aacf123 100644
--- a/utils.c
+++ b/utils.c
@@ -575,23 +575,20 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				entime = time(NULL);
 				duration = entime - sttime;
 
-				int exit_code = 0;
-
-				if (!_child_reader.timeouted) {
-					if (WIFEXITED(status)) {
-						exit_code = WEXITSTATUS(status);
-						if (exit_code) {
-							fprintf(fp, "\nERROR: Exit status is %d\n", exit_code);
-							rc += 1;
-						}
-					} else if (WIFSIGNALED(status)) {
-						int signal = WTERMSIG(status);
-						fprintf(fp, "\nERROR: Exited from signal %s (%d)\n", strsignal(signal), signal);
-						rc += 1;
-					} else {
-						fprintf(fp, "\nERROR: Exited for unknown reason (%d)\n", status);
+				int exit_code = -1;
+				if (WIFEXITED(status)) {
+					exit_code = WEXITSTATUS(status);
+					if (exit_code) {
+						fprintf(fp, "\nERROR: Exit status is %d\n", exit_code);
 						rc += 1;
 					}
+				} else if (WIFSIGNALED(status)) {
+					int signal = WTERMSIG(status);
+					fprintf(fp, "\nERROR: Exited from signal %s (%d)\n", strsignal(signal), signal);
+					rc += 1;
+				} else {
+					fprintf(fp, "\nERROR: Exited for unknown reason (%d)\n", status);
+					rc += 1;
 				}
 				fprintf(fp, "DURATION: %d\n", (int) duration);
 				if (_child_reader.timeouted) {
-- 
2.33.0


