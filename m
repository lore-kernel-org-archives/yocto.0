Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web09.12528.1631886050583363057
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Sep 2021 06:40:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=DPuTCFf4;
 spf=pass (domain: gmail.com, ip: 209.85.221.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f49.google.com with SMTP id t18so15325911wrb.0
        for <yocto@lists.yoctoproject.org>; Fri, 17 Sep 2021 06:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eCEoraIjiyozv0Hj2FuqjApFYrcw+uDBA49Cq/mvh3s=;
        b=DPuTCFf4XGhRVOzITKXgZbS6KwEnxunv5CCmCrWw4msQ3tWDXbGb5/IRzwMqyJ1MA6
         NgEUWUg3pekh+CmVKLAnScnFVHO861G0zFI8NlvxIFht5NBi21sePVJ6B2mfgyhjmV0c
         cOrF/N91CRO/uWxVgMN89vEPV3bqfSaZWUuLThBSCC+CRww6tULYLQwwUKPJKiWqP49Q
         /LAMfEpIk7tts5w00h7Potv0s6p0E3BRaIVAXswo+s1KJtPIjyCA1/DgMi1Q7mYoV4N1
         zoJDa841jUGfvWABX9iBW/lkuywkMKD3Vz5XAooxgShJ5tj6a+hff2ZuAO4tWYd3kGTm
         N0+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eCEoraIjiyozv0Hj2FuqjApFYrcw+uDBA49Cq/mvh3s=;
        b=3whExHgyoDLkBN6PUML5S4okqql4klnx3r4q6e2hh0ljX5nqxh99sqgW1qt40/F0R1
         wAh3yhdrQOmF5KN6h2yXSZj7GDnQKv929qtKVZAN7YySstkbalcJkwPej02T23v23BqF
         +gHkFgwvQpTzg1KRNfdUoC/iel2T79FmKkScUJMZ6Aobz1sNp9CwHDuXydSWVnvWJVMH
         ostD6XH/fW86H15z2CxJKE8BP8Rf8ZHIGzuWIn3luMx/TqIhXrbPDgx/RPXvZAoVTgxQ
         ppk3LAv7rWZrGKepwFQbgE7The2LjW87oApGd/0boI6gD6Y//nmi3u0LdgKPwFi48/bN
         lemw==
X-Gm-Message-State: AOAM531mtPAqyznxSpeK2Zu0tfSu8bhlLJXuTpxER3HbpxqBupC+NBU6
	VCuW0SuhUMLQ+dHaBWXYn7EjeQ1waHc=
X-Google-Smtp-Source: ABdhPJy4XLDgpcio6ZrjQlZB51jN2WaKH8OIBFKMU6GZPYm2FHLxL7IxIF7igx3tBLnbEqDPN+7l/Q==
X-Received: by 2002:a05:6000:186a:: with SMTP id d10mr3411893wri.113.1631886049074;
        Fri, 17 Sep 2021 06:40:49 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([46.183.103.17])
        by smtp.gmail.com with ESMTPSA id j23sm7317192wmo.14.2021.09.17.06.40.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Sep 2021 06:40:48 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [ptest-runner][PATCH 1/3] tests/utils.c: fix a memory corruption in find_word
Date: Fri, 17 Sep 2021 15:40:40 +0200
Message-Id: <20210917134042.179202-1-alex@linutronix.de>
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

