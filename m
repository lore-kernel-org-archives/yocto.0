Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web10.498.1631796383874430090
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Sep 2021 05:46:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GsXFn+zu;
 spf=pass (domain: gmail.com, ip: 209.85.221.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f44.google.com with SMTP id q26so9267231wrc.7
        for <yocto@lists.yoctoproject.org>; Thu, 16 Sep 2021 05:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eCEoraIjiyozv0Hj2FuqjApFYrcw+uDBA49Cq/mvh3s=;
        b=GsXFn+zuyxVOcDbehW5U1JIjltdzTo58Y+9UK4MlYHLA2Sx1/wONInHpvxK8jywS/D
         Z90HHZQoSFpw7X2h9cPXg9lVFDXbqh3CpWthz8r6N2zwywfuxK3M6V7UjTi+rRUlBl7+
         +/3W+1hQef5OaqtQ+kFZ/cIhAwncn9APpVeoXPjtBfu35B2mNJxcqKtl1UTocDQib3rq
         7rEAgJ4cl2X+JzYRa/Wg6Q7FPT6RCdPo1kqksNY+/9b7wZcVkTVqyL35dGH4H67Ik1BC
         ViU/xtyqg3w2a4BHxKzXpMzbfApgd3RLKfkCFw63JfubG18M8DQQCXz9/iMZ1KSNn2tG
         LNqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eCEoraIjiyozv0Hj2FuqjApFYrcw+uDBA49Cq/mvh3s=;
        b=Sv30nEdapZolOVcr7m1Yt26IsoRFCPVHVB+pQlFBkdug8prrm8kUsmDWk8he8IXd5i
         o1TUhnbn1NWPqI8OqaikwIhRA4jYqCs8CBIb9QLxLwFyVBu/rWd0viIsSLszmh6SSOa7
         /hFUEd3TynriHcPV0y0KI3PKplCOfrL2MhqG1mMryGdA0Y7eylfiuUjxGy4cDQaM820d
         NeIAzm+D2N94SwvVpoBBTLXBDNv7YKYXnZDsfZCW053rG3r5rUUpuWtGeEGyAfASVSZZ
         rsgtsqP7Bli4pabTfSih23itZ80voXmePaJUE/e3T4+HAJcb9I7BJ6p0hKsjoGhFNR1d
         opcg==
X-Gm-Message-State: AOAM530gTGKDxmpeKGPjQGH4b360gow6RqOmY68r2yZoaVZq8dpzQN/+
	B7iqG3NEWzr99IQwJsrWXtFG/Bb0dcU=
X-Google-Smtp-Source: ABdhPJzQ8GkxBjebBnsgzu2AmgMk5QZ95tWPFDZ8lq/dqZrFqfhD0D0gJMcBEOoTseQEh3znX+S9Eg==
X-Received: by 2002:adf:cd92:: with SMTP id q18mr5827256wrj.211.1631796382517;
        Thu, 16 Sep 2021 05:46:22 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from alex-lx-laptop.tec.linutronix.de (b2b-109-90-143-202.unitymedia.biz. [109.90.143.202])
        by smtp.gmail.com with ESMTPSA id l19sm3162383wrc.16.2021.09.16.05.46.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 05:46:22 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org,
	anibal.limon@linaro.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [ptest-runner][PATCH 1/3] tests/utils.c: fix a memory corruption in find_word
Date: Thu, 16 Sep 2021 14:46:15 +0200
Message-Id: <20210916124617.72791-1-alex@linutronix.de>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

I also took the opportunity to correct a weird API that
returns a result (or not), depending on some internal condition.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 tests/utils.c | 35 ++++++++++++++++++-----------------
 1 file changed, 18 insertions(+), 17 deletions(-)

diff --git a/tests/utils.c b/tests/utils.c
index 8fffc18..19657ee 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -26,6 +26,7 @@
 #include <stdlib.h>
 #include <stdio.h>
 #include <errno.h>
+#include <stdbool.h>
 
 #include <check.h>
 
@@ -61,16 +62,13 @@ static char *ptests_not_found[] = {
 
 static struct ptest_options EmptyOpts;
 
-static inline void
-find_word(int *found, const char *line, const char *word)
+static inline bool
+find_word(const char *line, const char *word)
 {
-
-	char *pivot = NULL;
-
-	pivot = strdup(line);
-	pivot[strlen(word)] = '\0';
-	if (strcmp(pivot, word) == 0) { *found = 1; }
-	free(pivot);
+	if (strncmp(line, word, strlen(word)) == 0)
+                return true;
+        else
+                return false;
 }
 
 static void test_ptest_expected_failure(struct ptest_list *, const unsigned int, char *,
@@ -206,18 +204,19 @@ search_for_timeout_and_duration(const int rp, FILE *fp_stdout)
 	const char *timeout_str = "TIMEOUT";
 	const char *duration_str = "DURATION";
 	char line_buf[PRINT_PTEST_BUF_SIZE];
-	int found_timeout = 0, found_duration = 0;
+	bool found_timeout = false, found_duration = false;
 	char *line = NULL;
 
 	ck_assert(rp != 0);
 
 	while ((line = fgets(line_buf, PRINT_PTEST_BUF_SIZE, fp_stdout)) != NULL) {
-		find_word(&found_timeout, line, timeout_str);
-		find_word(&found_duration, line, duration_str);
+		// once true, stay true
+		found_timeout = found_timeout ? found_timeout : find_word(line, timeout_str);
+		found_duration = found_duration ? found_duration : find_word(line, duration_str);
 	}
 
-	ck_assert(found_timeout == 1);
-	ck_assert(found_duration == 1);
+	ck_assert(found_timeout == true);
+	ck_assert(found_duration == true);
 }
 
 START_TEST(test_run_timeout_duration_ptest)
@@ -236,16 +235,18 @@ search_for_fail(const int rp, FILE *fp_stdout)
 {
         const char *fail_str = "ERROR: Exit status is 10";
         char line_buf[PRINT_PTEST_BUF_SIZE];
-        int found_fail = 0;
+        int found_fail = false;
         char *line = NULL;
 
         ck_assert(rp != 0);
 
         while ((line = fgets(line_buf, PRINT_PTEST_BUF_SIZE, fp_stdout)) != NULL) {
-		find_word(&found_fail, line, fail_str);
+		found_fail = find_word(line, fail_str);
+		if (found_fail == true)
+			break;
         }
 
-        ck_assert(found_fail == 1);
+        ck_assert(found_fail == true);
 }
 
 START_TEST(test_run_fail_ptest)
-- 
2.33.0

