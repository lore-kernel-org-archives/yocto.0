Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web12.2914.1602957819706493798
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ViP0KVkF;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id a1so3250144pjd.1
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=ouuErRt+Bel0cuYB3Kzgmip+8/V/wWQYTa+aBkvcI/8=;
        b=ViP0KVkFo6iktScygwOZGFzP7b2ebNklXcsfoIPu504eW5F/qzvn7uakJxJyXpXG4x
         g/MF8wjx7i1Sbu0bNsCWgeJcwLRATo91M/f6kzKIdRNKg+KJ2fpjQWA35bcPClI+OLsH
         KbK2N/m46cQZB5mtzS74fjD7JrneDemsGra/JNoFwMrZnSnNRRLsbVDZXCV9eftnqN9b
         cQQgaK4UjV78OMBNFzrtdbprACf+Y6zmcP94ehxT7Yzi8q0T5pf/EHaHpMtPqIYqI723
         vOuQE35dnn3C5tkK0Tw7pIGxdwyoJbuglbrq9o7/aaqSkej34SozVu4J9Gmw0qSPPX99
         CYTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=ouuErRt+Bel0cuYB3Kzgmip+8/V/wWQYTa+aBkvcI/8=;
        b=R0w0LvFNYdPGJ9H/vprR9gVp57KedUQPgaP+vNjZes7ihra2DCLLbnjUsB6LCqgv7v
         kNcdsssStcpRNVwEZ74uTuqJPhlNqWf3uFlXNZ13bWzImtS9LEhtV2hyOBO16s1Qjfbm
         Flbjo6k+TO2TRlr1lct6W0OVRvrRy/kwJbZw+dus/8BzQupzIQTd0HfuMReYLGDbyJ19
         M++FO/f6sZT1wxL74/uWgr63HVEP9Rsh+fsaF8vzbQAm90K/HvTuJr4fnK5nyBiVqhKk
         9GBJC0sHUlXWzg3wQzoBtEoed8meUrX/hJ44omkCjRUK2+X4Oy18vDKnuCLNUR/DSCG7
         zDXw==
X-Gm-Message-State: AOAM531uGfbcAoJWk5vcDqbLVdZXzuCwjJDjK/65MTU2zy4P8jkiYH3e
	R0pOL0ryOccWN2m6GYh86fB5tJYclLE=
X-Google-Smtp-Source: ABdhPJzqJhduiG6zpK4V78FFrsbVOvocXYmDMCoAiC51hqRgQRn3ErxFz+OZs/OkYOE5vzG7tQljNA==
X-Received: by 2002:a17:902:8348:b029:d3:781a:5857 with SMTP id z8-20020a1709028348b02900d3781a5857mr9350208pln.2.1602957818939;
        Sat, 17 Oct 2020 11:03:38 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:38 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 03/32] packagegroup-core-security: remove clamav for riscv*
Date: Sat, 17 Oct 2020 11:03:00 -0700
Message-Id: <a1d933f4578161ae7b59222cf7343b045a27adbc.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 98ff502d4096331e2b8a8e4044860b23bf6f8ea5)
---
 recipes-security/packagegroup/packagegroup-core-security.bb | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index e0a9d05..bb790b4 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -37,9 +37,7 @@ SUMMARY_packagegroup-security-scanners = "Security scanners"
 RDEPENDS_packagegroup-security-scanners = "\
     nikto \
     checksecurity \
-    clamav \
-    clamav-freshclam \
-    clamav-cvd \
+    ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 riscv64", "", " clamav clamav-freshclam clamav-cvd",d)} \
     "
 
 SUMMARY_packagegroup-security-audit = "Security Audit tools "
-- 
2.17.1

