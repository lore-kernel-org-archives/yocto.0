Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61740EB64DA
	for <webhook@archiver.kernel.org>; Thu, 20 Jul 2023 14:17:06 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
 by mx.groups.io with SMTP id smtpd.web10.14114.1689862623873150939
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jul 2023 07:17:03 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=M1SqlDBl;
 spf=pass (domain: gmail.com, ip: 209.85.210.47, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6b9af1826b6so705751a34.1
        for <yocto@lists.yoctoproject.org>; Thu, 20 Jul 2023 07:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689862622; x=1690467422;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZrE1LcVIk4JEgMCvUKYf24AF1eHJkarYJAexKDslitU=;
        b=M1SqlDBlFKP1/0JrX0Gmk/A7o32oqpJkdSTVs99AO5L8wpTW9xj3mKOZhGDekgwxYs
         ewPhhN+G6SV7p4XlEWwxBjkjdBaAtTvTJtea4Qe5O1/09dXOE5I3Ns5FY/JUiosK3VKR
         5hh/aRxo/E12hZOql0AwRzUhaO1D7oanGwgPauy6XzXKM/iFom0G0pUjyx0uZdgXxCZz
         rnA9KX3bFrMz0hGnwfjE52hm6drFPayjslPimimimj/2GLOYMzmHJdSRPoixEbrLic9Z
         YKC2PG3neSqIiVmKkSUB2NhfMrLqLip5knmivI+IAv2DxfEw3N1ZDx50ibRuaR4JFALi
         684A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689862622; x=1690467422;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZrE1LcVIk4JEgMCvUKYf24AF1eHJkarYJAexKDslitU=;
        b=RROvv5vsD5x7bUkeBX4RWcr5OiPZJXA/QFwUmaKSKqn1PsHK1lYuMqxMOLZIInxvg3
         J3BDpMD3tSHm7WpgMcNJ4Wm55CU9FpR+Em0hoIaf13qCZt4NR7dS7YXWYQXSvFY7uLWt
         tHqUzHQMSt0cVBPRI+X66c0HjRHXW/GylH7WQuAOoiy2myUilBdja2CAT4klXZWA0S+w
         Ypryaf7fAYq5fKawb1DLsr9YF0qMlg1GV6XDm7uhqFFmZnSdDUvPhjBDRRcNOHQLRbTS
         dhXot18epZk9vBVxSFi7rS75BzTMolR9wzMwUN2Xc2m+gSNKrp4whXrMLQPVDQi1Jtlx
         P6JA==
X-Gm-Message-State: ABy/qLatNOqRCFxuHOhgm0HCzZsDatrxfsCBZDy/nJnVFmqgk62NGLx0
	KTGbJDOqak9oOLVl6TlbPZwKOaIOi3E=
X-Google-Smtp-Source: APBJJlGPFSXnSloPiFuD+JzgWHv14AD2YOcHJ4nwumYDI2QxevdEyA3XfjKzT54iDPzHAnasbz4BTg==
X-Received: by 2002:a9d:6ac6:0:b0:6b8:79e6:a2ba with SMTP id m6-20020a9d6ac6000000b006b879e6a2bamr2792107otq.25.1689862622122;
        Thu, 20 Jul 2023 07:17:02 -0700 (PDT)
Received: from localhost.localdomain ([2601:282:4300:19e0::65c])
        by smtp.gmail.com with ESMTPSA id p14-20020a056830130e00b006b9cc007e87sm480336otq.20.2023.07.20.07.17.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 07:17:01 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [ptest-runner][PATCH] tests: Ensure that timeouts still print ERROR
Date: Thu, 20 Jul 2023 08:16:57 -0600
Message-Id: <20230720141657.1086331-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jul 2023 14:17:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60622

When a test times out, it should still print an ERROR message in the log
for parsing. Modify the timeout test suite to ensure this is done.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 tests/utils.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/tests/utils.c b/tests/utils.c
index d82b90e..e493858 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -201,12 +201,13 @@ START_TEST(test_run_ptests)
 END_TEST
 
 static void
-search_for_timeout_and_duration(const int rp, FILE *fp_stdout)
+search_for_timeout_error_and_duration(const int rp, FILE *fp_stdout)
 {
 	const char *timeout_str = "TIMEOUT";
 	const char *duration_str = "DURATION";
+	const char *error_str = "ERROR";
 	char line_buf[PRINT_PTEST_BUF_SIZE];
-	bool found_timeout = false, found_duration = false;
+	bool found_timeout = false, found_duration = false, found_error = false;
 	char *line = NULL;
 
 	ck_assert(rp != 0);
@@ -215,10 +216,12 @@ search_for_timeout_and_duration(const int rp, FILE *fp_stdout)
 		// once true, stay true
 		found_timeout = found_timeout ? found_timeout : find_word(line, timeout_str);
 		found_duration = found_duration ? found_duration : find_word(line, duration_str);
+		found_error = found_error ? found_error : find_word(line, error_str);
 	}
 
 	ck_assert_msg(found_timeout == true, "TIMEOUT not found");
 	ck_assert_msg(found_duration == true, "DURATION not found");
+	ck_assert_msg(found_error == true, "ERROR not found");
 }
 
 START_TEST(test_run_timeout_duration_ptest)
@@ -226,7 +229,7 @@ START_TEST(test_run_timeout_duration_ptest)
 	struct ptest_list *head = get_available_ptests(opts_directory);
 	unsigned int timeout = 1;
 
-	test_ptest_expected_failure(head, timeout, "hang", search_for_timeout_and_duration);
+	test_ptest_expected_failure(head, timeout, "hang", search_for_timeout_error_and_duration);
 
 	ptest_list_free_all(head);
 }
-- 
2.33.0


