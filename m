Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web12.1350.1616632805104240562
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:40:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=rFWvejqp;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.177, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f177.google.com with SMTP id c204so244233pfc.4
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=cRNYVX/Kvyja8PhygYIy4i65m6gne+DksxIjVGWOX1Q=;
        b=rFWvejqpF9qdS7ovcdC/vViUvxflIbdL37FfLqbjB7WcfyO1P9WfdnFpp42by9Wwfa
         CPplzvHzcB+Kkklqr8ICzhNK7+xegAQSbNV9YFjekuB36dzpNnqfrIKg5jiXkws/zWU5
         uvKCn4bm4RQlWJVjC8Ti2AF6c+hU9tufvpRowtD2/8GcEUUDdqFqnLvtHajKsdxdKQ5r
         UsNwe94djvfvmINZ2NymtqC8cJvr04mzrEAiGWf4HpvGsqW6OVLaHYJdLgOBK01hBhwX
         Xo+QijqLS+6OZU6B2+mIYG+2HL9qcfpWjZcUY7VntZUcG2aJ2jGDBOtc1xJ5Gh/e1Myi
         SFRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cRNYVX/Kvyja8PhygYIy4i65m6gne+DksxIjVGWOX1Q=;
        b=ihaKAsJJk7PgPL/gLofvjFrv6Mj88ktzCgpQEdJRqWWW1g8t2CmiGGTAdWoH6MfnRy
         v3g7KC2zkx8QDZNseHeyo4O5xRtDWzCzG9UDrBO7Ee5YsnD+H0mdbMpENiTU49jpfmEJ
         q5zruZ5r0ihAFWs6PZqvfG1Bh7hASpfT3exFUyGBhtptBeVAwcNx1FNkYH/inEASBBWE
         Jerr4LInWSY6eLbBolxvyiivui2tKblxx4v86j3j0qGtWoFPlLI7NsG0DrMcy3pFu1OH
         4K9vsYNdUk3/H1fJk54+RDkjGMlQMq0Oa/hDjMuUwnDrqhRoYK3UsXqwnAI4XzI7uNPD
         0alg==
X-Gm-Message-State: AOAM531IaEZNVus2tWLakKoMaum5ZceTh3DJ6nb+VITyMwLxMk0eNQEP
	DIiUOG7Zs5phFEjH/GiZC0KsHWI+ZUuP8Po2
X-Google-Smtp-Source: ABdhPJwe/L4V7SxlUUS8MMFys093eqDVBM91iTV+Lk3YcqcY7V6tBHixOYFt0Z+b42Vsjm2wrDPXnw==
X-Received: by 2002:aa7:96f0:0:b029:1f3:97a4:19d2 with SMTP id i16-20020aa796f00000b02901f397a419d2mr5183319pfq.73.1616632804152;
        Wed, 24 Mar 2021 17:40:04 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.40.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:40:03 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 04/23] scripts/generate-testresult-index.py: Ensure we're not always rerunning resulttool
Date: Wed, 24 Mar 2021 14:39:13 -1000
Message-Id: <72e4dd5fad84b543f022f4b10d10f11e06a00060.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 098de71cbdfcb9d0cd24f604cf049a7a596b8513)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/generate-testresult-index.py | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/scripts/generate-testresult-index.py b/scripts/generate-testresult-index.py
index 7839cc0..52be26b 100755
--- a/scripts/generate-testresult-index.py
+++ b/scripts/generate-testresult-index.py
@@ -121,6 +121,9 @@ for build in sorted(os.listdir(path), key=keygen, reverse=True):
                     if logs:
                         continue
                     subprocess.check_call(["resulttool", "log", f, "--dump-ptest", f])
+                    # Ensure we don't rerun every time with a dummy log
+                    with open(f + "/resulttool-done.log", "a+") as tf:
+                        tf.write("\n")
 
 t = Template(index_templpate)
 with open(os.path.join(path, "index.html"), 'w') as f:
-- 
2.25.1

