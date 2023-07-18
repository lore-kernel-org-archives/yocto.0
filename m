Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44DD7EB64DD
	for <webhook@archiver.kernel.org>; Tue, 18 Jul 2023 17:26:25 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
 by mx.groups.io with SMTP id smtpd.web10.1922.1689701183626261695
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jul 2023 10:26:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=R45ZA6FK;
 spf=pass (domain: gmail.com, ip: 209.85.160.48, mailfrom: jpewhacker@gmail.com)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-1b05d63080cso4772317fac.2
        for <yocto@lists.yoctoproject.org>; Tue, 18 Jul 2023 10:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689701182; x=1692293182;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+O+h+nWuKnDPa3mn+oNMlR9T01HUBI3+/nwk7K2NT6s=;
        b=R45ZA6FK5QQrTK4WDN3skRhKx/VnDDZKjwm8M/Ahi63SPcVMTyIlctrBcUHHpa6dVM
         /eL8+g0DO7FC2fUW8bbZ/081caNx/8xE0bgQh1IwDnCx5dJsrd/fs565hZGw8vyLw1KY
         CV/yvjEVBX/dt7xbzatItnAM6XoTy/U0QYlwyLF1KugR/nngv/bvWuwN7pVwiJGb3fW7
         O2gcyOst7b7kufWcD3v4jCCLiFsBSHElj9DLhnAE3F4LFJcMxXhsrSrWQ+W60RRxNF2J
         0Cf2EkZ1LXyesKoXIpdfkVByQ0v+t0UFrVa6l8nTjwXP1rNqz4wcMVQKoiuqi+qlWNCE
         YZcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689701182; x=1692293182;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+O+h+nWuKnDPa3mn+oNMlR9T01HUBI3+/nwk7K2NT6s=;
        b=cpUYREX7qvpDsrkezfOYNSOvf1jW1n6YaKxbZBLwqQzgS3bwF3wT/899BwXuJ3hZAT
         WGWJQ7YByHr/yq0XwsBq4Lr9t3mK4bgAKtwFAzI+RScE8SJZ5eQxyYO2vPa0XHIF90kp
         TgMjAkgdhuOmmptLHHOew9B3KJq6VjyY0a0qX/X8CwwVsH5+svkxjq14S8McoJKKeHCG
         7aEY0TY6zATPGUTzfuJfREQ7LU75SHFuF0KRDjYFQkxnFNioCYE3pk/eXPzKHw//EV08
         ZTji5B1XpRw7y7IJl1ifO3WDmYT+we7VuSkBfRpQSsy7kEDzXKAQ6GnXKQp3Y/WiUcIX
         4e0w==
X-Gm-Message-State: ABy/qLZ9r8k9eV6IN/XR3GMbcglKH1hGHho9DAaJo9Rzh0PhRqzNEnQx
	y6IXSof7L0OAmBdSfbaiRs+5alEHcAo=
X-Google-Smtp-Source: APBJJlFU4M4a7KKPDSCtE4JDSoh5AsPdtoNIHpto25slmhqKYHLUPKloG07Fc/HjIz5CfCWJ35Ew2A==
X-Received: by 2002:a05:6870:c354:b0:1b0:3e54:946 with SMTP id e20-20020a056870c35400b001b03e540946mr20924182oak.50.1689701180724;
        Tue, 18 Jul 2023 10:26:20 -0700 (PDT)
Received: from localhost.localdomain ([2601:282:4300:19e0::65c])
        by smtp.gmail.com with ESMTPSA id 129-20020a4a0687000000b00565ebacf9cfsm1005120ooj.33.2023.07.18.10.26.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jul 2023 10:26:19 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [ptest-runner][PATCH 1/5] Revert "Change test timeout to be total elapsed time"
Date: Tue, 18 Jul 2023 11:26:10 -0600
Message-Id: <20230718172614.469304-2-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230718172614.469304-1-JPEWhacker@gmail.com>
References: <20230718172614.469304-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jul 2023 17:26:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60607

This reverts commit e50f2175d9c6b8aeb8b0bf687e5cca64a0f6e61a.

The timeout is actually the amount of time to wait until there is no
output from the test, not the total test time.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 tests/data/hang/ptest/run-ptest |  1 -
 tests/utils.c                   |  2 +-
 utils.c                         | 23 +++++++++++------------
 3 files changed, 12 insertions(+), 14 deletions(-)

diff --git a/tests/data/hang/ptest/run-ptest b/tests/data/hang/ptest/run-ptest
index 9031be3..738041d 100755
--- a/tests/data/hang/ptest/run-ptest
+++ b/tests/data/hang/ptest/run-ptest
@@ -3,6 +3,5 @@
 echo "hang" 1>&2
 echo "hang"
 while true; do
-	echo "hang"
 	sleep 1
 done
diff --git a/tests/utils.c b/tests/utils.c
index 849a412..d82b90e 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -224,7 +224,7 @@ search_for_timeout_and_duration(const int rp, FILE *fp_stdout)
 START_TEST(test_run_timeout_duration_ptest)
 {
 	struct ptest_list *head = get_available_ptests(opts_directory);
-	unsigned int timeout = 3;
+	unsigned int timeout = 1;
 
 	test_ptest_expected_failure(head, timeout, "hang", search_for_timeout_and_duration);
 
diff --git a/utils.c b/utils.c
index 353d6dc..34ca2f0 100644
--- a/utils.c
+++ b/utils.c
@@ -403,8 +403,7 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 	pid_t child;
 	int pipefd_stdout[2] = {-1, -1};
 	int pipefd_stderr[2] = {-1, -1};
-	time_t sttime, entime, now;
-	time_t timeout_deadline;
+	time_t sttime, entime;
 	time_t duration;
 	int slave;
 	int pgid = -1;
@@ -490,7 +489,6 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				}
 
 				sttime = time(NULL);
-				timeout_deadline = sttime + opts.timeout;
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, sttime));
 				fprintf(fp, "BEGIN: %s\n", ptest_dir);
 
@@ -521,17 +519,18 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 					if (done) {
 						break;
 					}
-					now = time(NULL);
-					if (now >= timeout_deadline) {
-						kill(-child, SIGKILL);
-						_child_reader.timeouted = 1;
-						break;
-					}
 
-					int ret = poll(pfds, 2, (timeout_deadline - now) * 1000);
+					int ret = poll(pfds, 2, _child_reader.timeout*1000);
 
-					if (ret == 0) {
-						continue;
+					if (ret == 0 && !_child_reader.timeouted) {
+						/* kill the child if we haven't
+						 * already. Note that we
+						 * continue to read data from
+						 * the pipes until EOF to make
+						 * sure we get all the output
+						 */
+						kill(-child, SIGKILL);
+						_child_reader.timeouted = 1;
 					}
 
 					for (int i = 0; i < 2; i++) {
-- 
2.33.0


