Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.972.1616525844661648846
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Mar 2021 11:57:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linaro.org header.s=google header.b=b616EBcx;
 spf=softfail (domain: linaro.org, ip: 198.145.29.25, mailfrom: anibal.limon@linaro.org)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6AFE638C08E7
	for <yocto@yoctoproject.org>; Tue, 23 Mar 2021 18:57:24 +0000 (UTC)
Received: by mail-oi1-f175.google.com with SMTP id n140so18135166oig.9
        for <yocto@yoctoproject.org>; Tue, 23 Mar 2021 11:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+puBahlMqP0crbwoBfMhk0J8g4Cd5euA9LqjyAJCXSs=;
        b=b616EBcxlj9fmCrklYSed+mpEZwONLkXKK+lSoQYSGQTEN6ASrlI4LPh2T08Wr/Yl3
         oN0CqJ/hJjB0NEMjdV4QgIPECc1NYASXlNm9mH8dfWf5mhtUv5ttidfvIQhnBSPW0xNz
         vtO42FuuHoO+CYMM6PXvnRpiQqVyJjDhuSf8uVuxpaAEJK5o8B0cUQbBREhhdsTRI8iw
         mjygeryLXwRohGEE3HMsgAf0ra8odqxHwB/v/rYoBXATZwK2kczVR1mE/aHSg9Nos+xV
         3XPYFMb3qk8olHIL+ZH7HisUJF/DCkYQ6J7B0vvw3ldtTyZ5kx15FIaePxgcOhOQUr3a
         QeUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+puBahlMqP0crbwoBfMhk0J8g4Cd5euA9LqjyAJCXSs=;
        b=c5+4hu8wsKa8hXPaGX+R4vCWnb6vJqj+uhKzoy/NyDZALfbOC9owAeZ0U0+psnSOyl
         hwChqOeyxHV5LzpwzaUICPbUr+IIil8kemI4BHDBSGdSVcikYkxuq/r/jCsFfATPqnwb
         ROwo9fMzcJNvc6LckRnGhzHj7gGAikpzLAdxL5QrGWK7pySH/c/mPErMJcaOivuUvGlc
         81GXsN2r7EUsv63RYrYGVxta0dZnzCHyJQ6VTuMaddJygdKsxhdF56m6/++uNN0RvoUN
         U79NsxIRZJQ/m2uwhA10mbDCzGIbZCN6q/OiiPEl4SYrnLhleCT0t62I9QrvEGc1ORTX
         MB+g==
X-Gm-Message-State: AOAM533QnBQwPIfEBKGNKk11lbgOiU3Whu4rfKfERNKu5IbGPV+U4zYF
	Xr6aSf7HLNUZyy65UYHzPnB5GJLId0qMfPMD
X-Google-Smtp-Source: ABdhPJybIMhpPuEOAiEXg68N/yPZpTiY/EyR8vjcHoIzO5m8NVKl2YiISmkysgxjVKxaSZ/lecgD7Q==
X-Received: by 2002:aca:4ad2:: with SMTP id x201mr4498546oia.46.1616525843746;
        Tue, 23 Mar 2021 11:57:23 -0700 (PDT)
Received: from blackbox.Home ([2806:10b7:2:e880:2c32:cfff:fe8e:de1f])
        by smtp.gmail.com with ESMTPSA id r10sm917744ots.33.2021.03.23.11.57.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 11:57:23 -0700 (PDT)
From: "Anibal Limon" <anibal.limon@linaro.org>
To: yocto@yoctoproject.org
Cc: yifan.yu@windriver.com,
	Randy.MacLeod@windriver.com,
	nicolas.dechesne@linaro.org,
	richard.purdie@linuxfoundation.org,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
Subject: [ptest-runner][PATCH 2/2] tests: Update to cover ptest timeout by file
Date: Tue, 23 Mar 2021 12:57:19 -0600
Message-Id: <20210323185719.2949300-2-anibal.limon@linaro.org>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210323185719.2949300-1-anibal.limon@linaro.org>
References: <20210323185719.2949300-1-anibal.limon@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
---
 tests/ptest_list.c | 10 +++++-----
 tests/utils.c      | 14 +++++++-------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/tests/ptest_list.c b/tests/ptest_list.c
index 081f027..37d19ae 100644
--- a/tests/ptest_list.c
+++ b/tests/ptest_list.c
@@ -52,7 +52,7 @@ END_TEST
 START_TEST(test_add)
 {
 	struct ptest_list *head =3D ptest_list_alloc();
-	ck_assert(ptest_list_add(head, strdup("perl"), NULL) !=3D NULL);
+	ck_assert(ptest_list_add(head, strdup("perl"), NULL, 1) !=3D NULL);
 	ptest_list_free_all(head);
 }
 END_TEST
@@ -67,7 +67,7 @@ START_TEST(test_free_all)
=20
 	head =3D ptest_list_alloc();
 	for (i =3D 0; i < ptests_num; i++)
-		ptest_list_add(head, strdup(ptest_names[i]), NULL);
+		ptest_list_add(head, strdup(ptest_names[i]), NULL, 1);
=20
 	ptest_list_free_all(head);
 }
@@ -84,7 +84,7 @@ START_TEST(test_length)
 =20
 	head =3D ptest_list_alloc();
 	for (i =3D 0; i < ptests_num; i++)
-		ptest_list_add(head, strdup(ptest_names[i]), NULL);
+		ptest_list_add(head, strdup(ptest_names[i]), NULL, 1);
=20
 	ck_assert_int_eq(ptest_list_length(head), ptests_num);
 	ptest_list_free_all(head);
@@ -103,7 +103,7 @@ START_TEST(test_search)
 	head =3D ptest_list_alloc();
 	for (i =3D 0; i < ptests_num; i++) {
 		ptest =3D strdup(ptest_names[i]);
-		ptest_list_add(head, ptest, NULL);
+		ptest_list_add(head, ptest, NULL, 1);
 	}
=20
 	for (i =3D ptests_num - 1; i >=3D 0; i--)
@@ -122,7 +122,7 @@ START_TEST(test_remove)
=20
 	for (i =3D 0; i < ptests_num; i++) {
 		ptest =3D strdup(ptest_names[i]);
-		ptest_list_add(head, ptest, NULL);
+		ptest_list_add(head, ptest, NULL, 1);
 	}
=20
 	/* Remove node free'ing */
diff --git a/tests/utils.c b/tests/utils.c
index 105e0c8..8df1b54 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -78,7 +78,7 @@ static void test_ptest_expected_failure(struct ptest_li=
st *, const int, char *,
=20
 START_TEST(test_get_available_ptests)
 {
-	struct ptest_list *head =3D get_available_ptests(opts_directory);
+	struct ptest_list *head =3D get_available_ptests(opts_directory, 1);
 	int i;
=20
 	ck_assert(ptest_list_length(head) =3D=3D ptests_found_length);
@@ -121,7 +121,7 @@ START_TEST(test_print_ptests)
 	ck_assert(line !=3D NULL);
 	ck_assert(strcmp(line, PRINT_PTESTS_NOT_FOUND) =3D=3D 0);
=20
-	head =3D get_available_ptests(opts_directory);
+	head =3D get_available_ptests(opts_directory, 1);
 	ck_assert(print_ptests(head, fp) =3D=3D 0);
 	ptest_list_free_all(head);
 	line =3D fgets(line_buf, PRINT_PTEST_BUF_SIZE, fp);
@@ -143,7 +143,7 @@ END_TEST
=20
 START_TEST(test_filter_ptests)
 {
-	struct ptest_list *head =3D get_available_ptests(opts_directory);
+	struct ptest_list *head =3D get_available_ptests(opts_directory, 1);
 	struct ptest_list *head_new;
 	char *ptest_not_exists[] =3D {
 		"glib",
@@ -185,7 +185,7 @@ START_TEST(test_run_ptests)
 	fp_stderr =3D open_memstream(&buf_stderr, &size_stderr);
 	ck_assert(fp_stderr !=3D NULL);
=20
-	head =3D get_available_ptests(opts_directory);
+	head =3D get_available_ptests(opts_directory, 1);
 	ptest_list_remove(head, "hang", 1);
 	ptest_list_remove(head, "fail", 1);
=20
@@ -222,8 +222,8 @@ search_for_timeout_and_duration(const int rp, FILE *f=
p_stdout)
=20
 START_TEST(test_run_timeout_duration_ptest)
 {
-	struct ptest_list *head =3D get_available_ptests(opts_directory);
-	int timeout =3D 1;
+	int timeout =3D 20;
+	struct ptest_list *head =3D get_available_ptests(opts_directory, timeou=
t);
=20
 	test_ptest_expected_failure(head, timeout, "hang", search_for_timeout_a=
nd_duration);
=20
@@ -250,8 +250,8 @@ search_for_fail(const int rp, FILE *fp_stdout)
=20
 START_TEST(test_run_fail_ptest)
 {
-	struct ptest_list *head =3D get_available_ptests(opts_directory);
 	int timeout =3D 1;
+	struct ptest_list *head =3D get_available_ptests(opts_directory, timeou=
t);
=20
 	test_ptest_expected_failure(head, timeout, "fail", search_for_fail);
=20
--=20
2.31.0

