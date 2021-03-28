Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web09.10014.1616951419747781617
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Mar 2021 10:10:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jk/uwWMW;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id y32so6770791pga.11
        for <yocto@lists.yoctoproject.org>; Sun, 28 Mar 2021 10:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Wy3iMKP4oCdOG3xGlSRkdRiIy0IpExR6r7h+XFpIWfs=;
        b=jk/uwWMWXi3pd/BEhgVTtkq0Pm7/Pb6hR68JflD3mCz3wmBJSUTRMT+DmY2UjHbMrh
         sQN777HdBQaDKe1Sl5UVTIR6/bEavuPawazfa0qCZOvzqC4oEqj2qRrtwTRJGYH5Hcgy
         Urdp6DA+umlY/kXwNu0daQ5Jw6Ib6iF7BgY/q3W3DE4KgY+Wdu4O7bRuIpuU8wtLrh9B
         +SC85pm061nZu5lY0B41OVVscXXYhm5761+tP4+U+4a5B30GXYkLQwJ86hAIsYfzkpyy
         dQStFBiGBw/8uBrLqSGV8yU5IQxEGDuH0GQM+DWwXzfDixfEvSLo9/htm7TYwook6gQf
         Q5eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Wy3iMKP4oCdOG3xGlSRkdRiIy0IpExR6r7h+XFpIWfs=;
        b=pmT9YC5q1NRvDYo/ATuhNo8oCF55937Drk5cNBD6JvGCBoU/VqrORbJzqnYU0UtzMY
         ihAaY/YMbL7bKLtx+OSWT5RFAYYNr4dCFYprQ3ccqlKNft+688eKnRm4uWTaxZs3F4aE
         /QJ10QkdchyAoEy8HSp1S+AYCQZCZatCnWhZrgRowx9ZIc3uF2RGf8xhvJaSdv2+yWpd
         CqKpwwPR0OwYT/9BWQEoi8zQVA2WQOgnTFgNdih1UYzGcp/0JEj1IQFV3uLYK7u+agOU
         sBl1zFlXH1z4V4l8kfKMJ2Et6Ys9gVi7DvltShTyLSgwq4uIRdK+uOh06avBMzpCzALd
         XqLw==
X-Gm-Message-State: AOAM532Y/mdK7Giy7GRO9QAcJKolQVg2xXd7Fc9lnaYB6mnB/QavXCT6
	1cwbSHErTSCJlb6V6ndbNZgTtvSyYto=
X-Google-Smtp-Source: ABdhPJz4sreW24hs2Ekhxc8KHO733YlSEUe65CITPYRfsIqVTQx0SwQUpEXuy0ZcBei7FpSon2YPMw==
X-Received: by 2002:a62:1594:0:b029:1f1:5ede:5245 with SMTP id 142-20020a6215940000b02901f15ede5245mr22150807pfv.6.1616951418829;
        Sun, 28 Mar 2021 10:10:18 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id d17sm7787243pfn.60.2021.03.28.10.10.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Mar 2021 10:10:18 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] packagegroup-core-security: drop clamav-cvd
Date: Sun, 28 Mar 2021 17:10:16 +0000
Message-Id: <20210328171016.2149532-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 0a4452e..9ac0d2c 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -51,9 +51,9 @@ RDEPENDS_packagegroup-security-scanners = "\
     isic \
     nikto \
     checksecurity \
-    ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 riscv64", "", " clamav clamav-freshclam clamav-cvd",d)} \
+    ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 riscv64", "", " clamav clamav-freshclam",d)} \
     "
-RDEPENDS_packagegroup-security-scanners_remove_libc-musl = "clamav clamav-freshclam clamav-cvd"
+RDEPENDS_packagegroup-security-scanners_remove_libc-musl = "clamav clamav-freshclam"
 
 SUMMARY_packagegroup-security-audit = "Security Audit tools "
 RDEPENDS_packagegroup-security-audit = " \
-- 
2.25.1

