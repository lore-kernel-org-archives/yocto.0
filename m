Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.3214.1616465448049066057
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 19:10:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linaro.org header.s=google header.b=FgAcEggF;
 spf=softfail (domain: linaro.org, ip: 198.145.29.25, mailfrom: anibal.limon@linaro.org)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E87F638C0874
	for <yocto@yoctoproject.org>; Tue, 23 Mar 2021 02:10:47 +0000 (UTC)
Received: by mail-oi1-f174.google.com with SMTP id d12so15371849oiw.12
        for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 19:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=u/WFinQ3TIOWSlW9Isn9t3RGxYeamtH6+YBDlp5GErU=;
        b=FgAcEggFUCy6BHzG+8B0AC1PLCM+GXbAfeQpkKOW3MPA/IRe48HOSCP4I8f2Nrvrh9
         1K28gyoHBIRpUFzPK5XNpj1fYlEMxGX4bPt3Ea9xkqy8qr8cOeTNvssMo3xnpws3q8pg
         /ihoiqqnpXyEiHGAzrAoJgnlgsJm3bvnRyuCJRxHye3ABbei6WBvULa3hreOqIMULDtG
         fJQUY6QlwsIxOxIz3KrPqVGAQsW4NC83mVanAKBifo+lziEpSzqr3VNcdl8nK9mLCXOE
         HWTXvGR8SqkQ/55O4S5ojtBnuJiisMyyHidyCJHjhUqLcQfc2opqZb9dy3eN/Am3Q36V
         lL8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=u/WFinQ3TIOWSlW9Isn9t3RGxYeamtH6+YBDlp5GErU=;
        b=ayZ+17Kmy/8PxC3UvK+oAE+1hiegOW84mBrPoHvqAO3dU6J1WFVEqo8CGAoUWuSPff
         gXLs1GlYI28DyRgHsgY5c7YbEj5UtjjuVavXwcsEeZhNv6VQngwJM0JlwLKECS8+be/B
         P/zvYFaEVt2MAESoi7cK5g7BfBpjhkF9YVwOjaLXUUqgMWBZ8CArVUspbxbBjJ8ZXg78
         ELvdZ9MnQDnP0xTG90NEdA4SRuEtowBI/1Z4j9aAwytoCPooj+601pqqUz67OcKODutD
         8SR9U+SnnxBmCmD/4LYKvzjiIqE/upu2VOhQN2l9Up/CU96h4aaDoemFf3m8k5+DF8Mt
         dSww==
X-Gm-Message-State: AOAM530PtlDbfsgyLVbYYo0LeMQChCIa2ywD2O2DPIsKvQ9JVSEEe97N
	Vc0sGomUqROcIS9CIpnIa91iVq4b1/sjRufp
X-Google-Smtp-Source: ABdhPJwf7qPVYMa0jj8tSBmLPBSqdd/8rem0ErpgnArNjGb0ZCL4XomZ/oJ/steA+7TXYT3tGEWCpg==
X-Received: by 2002:aca:d884:: with SMTP id p126mr1598442oig.118.1616465447065;
        Mon, 22 Mar 2021 19:10:47 -0700 (PDT)
Received: from blackbox.Home ([2806:10b7:2:e880:2c32:cfff:fe8e:de1f])
        by smtp.gmail.com with ESMTPSA id h59sm3924505otb.29.2021.03.22.19.10.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 19:10:46 -0700 (PDT)
From: "Anibal Limon" <anibal.limon@linaro.org>
To: yocto@yoctoproject.org
Cc: yifan.yu@windriver.com,
	Randy.MacLeod@windriver.com,
	nicolas.dechesne@linaro.org,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
Subject: [ptest-runner][PATCH 2/4] utils.c: Fix exit status of a child
Date: Mon, 22 Mar 2021 20:10:36 -0600
Message-Id: <20210323021038.1049654-2-anibal.limon@linaro.org>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210323021038.1049654-1-anibal.limon@linaro.org>
References: <20210323021038.1049654-1-anibal.limon@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Modify testcase to validate the actual exit status.

[YOCTO #14217]

Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
---
 tests/data/fail/ptest/run-ptest | 3 +++
 tests/utils.c                   | 2 +-
 utils.c                         | 3 +++
 3 files changed, 7 insertions(+), 1 deletion(-)
 mode change 100644 =3D> 100755 tests/data/fail/ptest/run-ptest

diff --git a/tests/data/fail/ptest/run-ptest b/tests/data/fail/ptest/run-=
ptest
old mode 100644
new mode 100755
index e69de29..f4e5d0b
--- a/tests/data/fail/ptest/run-ptest
+++ b/tests/data/fail/ptest/run-ptest
@@ -0,0 +1,3 @@
+#!/bin/bash
+
+exit 10
diff --git a/tests/utils.c b/tests/utils.c
index 132d98f..105e0c8 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -234,7 +234,7 @@ END_TEST
 static void
 search_for_fail(const int rp, FILE *fp_stdout)
 {
-        const char *fail_str =3D "ERROR: Exit status is";
+        const char *fail_str =3D "ERROR: Exit status is 10";
         char line_buf[PRINT_PTEST_BUF_SIZE];
         int found_fail =3D 0;
         char *line =3D NULL;
diff --git a/utils.c b/utils.c
index 43ab03b..d784736 100644
--- a/utils.c
+++ b/utils.c
@@ -352,6 +352,9 @@ wait_child(pid_t pid, int timeout, int *fds, FILE **f=
ps, int *timeouted)
=20
 			clock_gettime(clock, &sentinel);
 		}
+
+		if (WIFEXITED(status))
+			status =3D WEXITSTATUS(status);
 	}
=20
 	fflush(fps[0]);
--=20
2.31.0

