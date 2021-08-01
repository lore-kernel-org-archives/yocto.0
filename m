Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web12.8373.1627832476963878217
 for <yocto@lists.yoctoproject.org>;
 Sun, 01 Aug 2021 08:41:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AyuTyMJd;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id e2-20020a17090a4a02b029016f3020d867so21364767pjh.3
        for <yocto@lists.yoctoproject.org>; Sun, 01 Aug 2021 08:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WQ1LyAvYBU76YOrJY+hTyo9t1Uj65SYDc8enogIEd9I=;
        b=AyuTyMJdR+T9dWoRJRxpG80A6M8WFyMUlZkS29DUmL17vDvD0BBELmIwxVfBaT2Qoy
         x7qzPti2TuMiG64IOrQaO91Ak4fejJaPsYqDFlauL06i7yS4lPBXWOaZvOOBagaWMki9
         h3cKIWHxV24Zg/aky7l4ikSr2u20VFBgr5q1248HNj3lV0FrGllfShd5oKIDUJ87qWDJ
         gSerPAaXSy1LvQEjeredzKtYK4ShS+Ts/dcSSueBV7AFfw/a85y7CdvUwpVmoj1DIeK+
         rjbz5frB6fYRcWowfKpNCbLoWF+5Guejfbe3Y+7fXaHuOOUYRedYzj6yT+b0tn3LflVd
         Xpgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WQ1LyAvYBU76YOrJY+hTyo9t1Uj65SYDc8enogIEd9I=;
        b=egmSZSSl2DUOfO5qXhgpO0FBNxfkGvACIl2qbUlJT6Y1iTXWjxCKdQnU+xDfzP4Voq
         aR4eF/x/kDDrkxUlnuNAttvejez30aHIm9qT/MzDbW2yPGIXJqqeWS6RcmIV+2SPiKyJ
         L8N+k0IzLZubN5bHsLvm8kPz7K5+cc6n+ReWmsU2Z1Z29Rc+uWtnph2a9SBwiLclnDCV
         mioNxPl02tX8e7LFJWwQtFGvpS0IdcGZyEfeGm8/LUF1uB/yivOHrlujl3bMUDcM/WFu
         a+dNbqdznhItgoTT/+MmaBiZt8qSKOMGl9YTjtFCP2xOR4vyqxsGdXzgucKeXHM6Vhxf
         bzHg==
X-Gm-Message-State: AOAM530EK2m4dYo/jZNZv3V2X/qYbPdVqyuEO2SLkZaXvx2nyjlzBYME
	thgt7paztuhQtFhldzGkEXoapLvDdL4zug==
X-Google-Smtp-Source: ABdhPJzDFWop/D6621+dCY1Pn/haDpDjWfBu/ik6+i6/KTH76HVRVgRK3lxCoOZjxEKwm5ggD0j+CQ==
X-Received: by 2002:a63:5a08:: with SMTP id o8mr5254506pgb.120.1627832476293;
        Sun, 01 Aug 2021 08:41:16 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from localhost.localdomain ([12.176.236.254])
        by smtp.gmail.com with ESMTPSA id mu9sm8094557pjb.26.2021.08.01.08.41.15
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Aug 2021 08:41:15 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] packagegroup-core-security.bb: only include suricat-ptest if rust is included
Date: Sun,  1 Aug 2021 08:41:14 -0700
Message-Id: <20210801154114.7645-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../packagegroup/packagegroup-core-security.bb    | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index c76b3de..6375e24 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -69,11 +69,16 @@ RDEPENDS:packagegroup-security-hardening = " \
 SUMMARY:packagegroup-security-ids = "Security Intrusion Detection systems"
 RDEPENDS:packagegroup-security-ids = " \
     samhain-standalone \
-    ${@bb.utils.contains_any("TUNE_FEATURES", "ppc7400 riscv32 riscv64", "", " suricata",d)} \
+    ${@bb.utils.contains("BBLAYERS", "meta-rust", "suricata","", d)} \
     ossec-hids \
     aide \
     "
 
+RDEPENDS:packagegroup-security-ids:remove:powerpc = "suricata"
+RDEPENDS:packagegroup-security-ids:remove:powerpc64le = "suricata"
+RDEPENDS:packagegroup-security-ids:remove:powerpc64 = "suricata"
+RDEPENDS:packagegroup-security-ids:remove:riscv32 = "suricata"
+RDEPENDS:packagegroup-security-ids:remove:riscv64 = "suricata"
 RDEPENDS:packagegroup-security-ids:remove:libc-musl = "ossec-hids"
 
 SUMMARY:packagegroup-security-mac = "Security Mandatory Access Control systems"
@@ -88,7 +93,13 @@ RDEPENDS:packagegroup-security-mac:remove:mipsarch = "apparmor"
 RDEPENDS:packagegroup-meta-security-ptest-packages = "\
     ptest-runner \
     samhain-standalone-ptest \
-    ${@bb.utils.contains_any("TUNE_FEATURES", "ppc7400 riscv32 riscv64", "", " suricata-ptest",d)} \
+    ${@bb.utils.contains("BBLAYERS", "meta-rust", "suricata-ptest","", d)} \
     python3-fail2ban-ptest \
     ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack-ptest", "",d)} \
 "
+
+RDEPENDS:packagegroup-security-ptest-packages:remove:powerpc = "suricata-ptest"
+RDEPENDS:packagegroup-security-ptest-packages:remove:powerpc64le = "suricata-ptest"
+RDEPENDS:packagegroup-security-ptest-packages:remove:powerpc64 = "suricata-ptest"
+RDEPENDS:packagegroup-security-ptest-packages:remove:riscv32 = "suricata-ptest"
+RDEPENDS:packagegroup-security-ptest-packages:remove:riscv64 = "suricata-ptest"
-- 
2.25.1

