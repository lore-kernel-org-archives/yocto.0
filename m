Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BA7EC3DA41
	for <webhook@archiver.kernel.org>; Mon, 17 Jul 2023 14:28:47 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
 by mx.groups.io with SMTP id smtpd.web11.9690.1689604122391711951
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jul 2023 07:28:42 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=YBVJV6HY;
 spf=pass (domain: gmail.com, ip: 209.85.210.47, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6b9d562f776so620253a34.2
        for <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 07:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689604121; x=1692196121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tzv3EZpO/bXMDxx6tynzhDYXnUcVzJ3hzXE0Qp5ZUQc=;
        b=YBVJV6HY3zrQTzW09vMszH2pPzKw4BUJYOMtvusA4u5LaXsfsEweNJCrojzws04nsG
         zwjeIQyz3pEjotj4Ox5qxioqH9Ij8BDzDvNaA6utkHMbYjkedmFTQFgXs7SAsCY9sStq
         Z6wamR7dqpXM9x5pBNPa0v0NCGZGZoHt1O86DRCHLxJPIs5r8AUw5jSqr4eIzn3Z1OKV
         8dGsiEZTQ+8o5JZTSArZeo7Gss6xyn3JGMQAvcLpfVQyhxnSRGV1VoLKBBl0HgP2+Mse
         obYLiCzac09WHxUS3Q8X5ohOMUE3EZLcU1N0MAQ7A2dU53L9U4+thxRKy/I/+tTZG+ch
         ZAtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689604121; x=1692196121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tzv3EZpO/bXMDxx6tynzhDYXnUcVzJ3hzXE0Qp5ZUQc=;
        b=FiSEtKvTcj2fwhNNtltRVwt6XaN1qAony7CPu37XsUnNPyXBQzKVlsXWgDtsnbA7kS
         ieFx3pUesigS2mPmu/b73eUbu7e1DkscwEjfFLZeiCboykvcN51D1jUpMBBN9VY6J02D
         dxQqlwcRp44I9bfBgtQJJ9dvy9SenWss+hlF9/sWkm92pBITb8v8UqA8aIxzIEsTyTU6
         w9a5aQlux7TeeTqKurDj2cijYd+PQdn9Fxs/S4ShX0Ng+vZpgniUxR1e4j4Lp+qyJIkS
         xxaJPE6bV4ysQuWIodb51PczEVnC4p1d2YTzKd0mm6hM7a7xJbVtwPJorMB38BiasUrI
         VJRg==
X-Gm-Message-State: ABy/qLY8BT9grTES8e/PB4C+spzwHKYy6J892KLp//VtDSYtjGP45DqK
	hyTvdZtJHNHa3HE5XDBlK3b3av5QX98=
X-Google-Smtp-Source: APBJJlEjKw6eywsb/2MIgve8Vn9U78fra6lRbI4tSnLD/+czw5VeO37SxZIaBihtSi8KiZMf4RtAsA==
X-Received: by 2002:a05:6870:30a:b0:1a2:cfd7:bfd0 with SMTP id m10-20020a056870030a00b001a2cfd7bfd0mr13214578oaf.9.1689604120994;
        Mon, 17 Jul 2023 07:28:40 -0700 (PDT)
Received: from localhost.localdomain ([2601:282:4300:19e0::ad83])
        by smtp.gmail.com with ESMTPSA id x6-20020a056870740600b001b04434d934sm7205967oam.34.2023.07.17.07.28.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 07:28:39 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [ptest-runner][PATCH 4/4] Change test timeout to be total elapsed time
Date: Mon, 17 Jul 2023 08:28:31 -0600
Message-Id: <20230717142831.1634172-5-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230717142831.1634172-1-JPEWhacker@gmail.com>
References: <20230717142831.1634172-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 14:28:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60592

Changes the way that tests time out to be the total elapsed time for the
test, not just the time between receiving output from the test. This
matches the implementation before 8259375 ("runner: Remove threads and
mutexes").

Also update the timeout test case to test for this correctly.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 tests/data/hang/ptest/run-ptest |  1 +
 tests/utils.c                   |  2 +-
 utils.c                         | 23 ++++++++++++-----------
 3 files changed, 14 insertions(+), 12 deletions(-)

diff --git a/tests/data/hang/ptest/run-ptest b/tests/data/hang/ptest/run-ptest
index 738041d..9031be3 100755
--- a/tests/data/hang/ptest/run-ptest
+++ b/tests/data/hang/ptest/run-ptest
@@ -3,5 +3,6 @@
 echo "hang" 1>&2
 echo "hang"
 while true; do
+	echo "hang"
 	sleep 1
 done
diff --git a/tests/utils.c b/tests/utils.c
index d82b90e..849a412 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -224,7 +224,7 @@ search_for_timeout_and_duration(const int rp, FILE *fp_stdout)
 START_TEST(test_run_timeout_duration_ptest)
 {
 	struct ptest_list *head = get_available_ptests(opts_directory);
-	unsigned int timeout = 1;
+	unsigned int timeout = 3;
 
 	test_ptest_expected_failure(head, timeout, "hang", search_for_timeout_and_duration);
 
diff --git a/utils.c b/utils.c
index 34ca2f0..353d6dc 100644
--- a/utils.c
+++ b/utils.c
@@ -403,7 +403,8 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 	pid_t child;
 	int pipefd_stdout[2] = {-1, -1};
 	int pipefd_stderr[2] = {-1, -1};
-	time_t sttime, entime;
+	time_t sttime, entime, now;
+	time_t timeout_deadline;
 	time_t duration;
 	int slave;
 	int pgid = -1;
@@ -489,6 +490,7 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				}
 
 				sttime = time(NULL);
+				timeout_deadline = sttime + opts.timeout;
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, sttime));
 				fprintf(fp, "BEGIN: %s\n", ptest_dir);
 
@@ -519,18 +521,17 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 					if (done) {
 						break;
 					}
-
-					int ret = poll(pfds, 2, _child_reader.timeout*1000);
-
-					if (ret == 0 && !_child_reader.timeouted) {
-						/* kill the child if we haven't
-						 * already. Note that we
-						 * continue to read data from
-						 * the pipes until EOF to make
-						 * sure we get all the output
-						 */
+					now = time(NULL);
+					if (now >= timeout_deadline) {
 						kill(-child, SIGKILL);
 						_child_reader.timeouted = 1;
+						break;
+					}
+
+					int ret = poll(pfds, 2, (timeout_deadline - now) * 1000);
+
+					if (ret == 0) {
+						continue;
 					}
 
 					for (int i = 0; i < 2; i++) {
-- 
2.33.0


