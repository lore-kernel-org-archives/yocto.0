Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web09.2751.1631741371316904469
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Sep 2021 14:29:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GEplVQhE;
 spf=pass (domain: gmail.com, ip: 209.85.221.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f44.google.com with SMTP id d6so6001108wrc.11
        for <yocto@lists.yoctoproject.org>; Wed, 15 Sep 2021 14:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eCEoraIjiyozv0Hj2FuqjApFYrcw+uDBA49Cq/mvh3s=;
        b=GEplVQhEvkMr7FRkPR9nu4nsRQOp7uUMSPfzsuciZdygjxmM7zZ5KEM3wH7nEAXg3P
         3gx9YUKjxyyEvZdoagQnhyXNU1lq6+pw9xVD6q7WGz3Wa/bG7zmAmcAqMZ0c7rR7pK/e
         556IlumTCISiQwUomFVX33SQ12NUuG0bihofxgig9xZ8iN7VAW2dk9OfYuhOFwQBplHI
         5Hvr2Oe69KqPzilZZggWZZGKfzlLnJk8o5GnkT7W7l1FFwE3j1AvCuEXd5/P5Y2Xh6H1
         TxmHq6hX1JRC4G3edOa8fADQpDgs3Zv4VixN0AdMcKVFOjDZgbbC7m2HqV9ToPmZNopH
         ZjHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eCEoraIjiyozv0Hj2FuqjApFYrcw+uDBA49Cq/mvh3s=;
        b=T/3Za0+++OVFroo3r5vndiAJXt60PAa/kvWnSqeTHHSc5A6VPDBUElXhTgSoS0SfGk
         Baide6Ste7r4uIz53kus/nz3EXS0DE++m4ykh2SHRTmUn8/jHIKFPsKilwe8dPTJU87M
         TqIYPyZu+/OmRW8iV2aXb0t4odUKU8hmT+pT8KsT+es5LLvp5mxcPp9QfqOhiTeXZaLW
         v3/V0ewpUn4rLzIdTWBQ2surRzsOIjjx1u9d5K3zjS8daSfEGhWoiHCDGfdv9hCdfXPD
         xlKdy5A2wTGgOWlnzdHy7g7HVAvpHP2uuSWET1c5D8/6AeuVhXwglWN7C1ill45UxvVM
         OYxQ==
X-Gm-Message-State: AOAM533fm5S5ds6mKfQcBtfRVfE21ZBHSuIfUBOm6cbKBcNxsmIGg6XL
	KjfudcMC4RanS0ewB/bvcQ4l8voerO0=
X-Google-Smtp-Source: ABdhPJzfbBpgPGFnZ83XhM/Uvqu5dLtXG9aBe9XWAXUjyYDVAlpuUXYXW7ASvFOfpNb0Tg+W5/caeg==
X-Received: by 2002:adf:c10b:: with SMTP id r11mr2302862wre.336.1631741369772;
        Wed, 15 Sep 2021 14:29:29 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from alex-lx-laptop.fritz.box (p5de0b40c.dip0.t-ipconnect.de. [93.224.180.12])
        by smtp.gmail.com with ESMTPSA id w5sm1079848wra.87.2021.09.15.14.29.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Sep 2021 14:29:29 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org,
	anibal.limon@linaro.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [ptest-runner] tests/utils.c: fix a memory corruption in find_word
Date: Wed, 15 Sep 2021 23:29:21 +0200
Message-Id: <20210915212921.23514-1-alex@linutronix.de>
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

