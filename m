Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com [209.85.167.194])
 by mx.groups.io with SMTP id smtpd.web11.14082.1600225929153583270
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Sep 2020 20:12:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aECP0FFq;
 spf=pass (domain: gmail.com, ip: 209.85.167.194, mailfrom: akuster808@gmail.com)
Received: by mail-oi1-f194.google.com with SMTP id m7so6499951oie.0
        for <yocto@lists.yoctoproject.org>; Tue, 15 Sep 2020 20:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=y1Q4vmDytS2JJlCo/awV3+oNDe9s6HiRqQyWf2AffD4=;
        b=aECP0FFq51j4OuLEtmTQtxguCUYeoq0DR7QpRCvnSlJjH8KxbEbQoGaeIy5pRrnXxx
         dg9RXpNZ4Y7S9Rq/Mc/iCDuJglFS/8boPpFxIimhKL4FJmnkR4HQ2SgkFebsdEt23RtQ
         0vL2mS3jhXgN2KR8EnwOPzJE5cF1a08nePXqayC67mCI3suiQ2I09iPlk0Z/kjoeooi3
         EB8xZSmpQDSU7OVveX65I7t6nvr/xB0DAXSyFwKIUSYC4gq5vSAHBKTW4dA19CWfvy0u
         VX0RtzmE7+fZwVIE5dsrziAUkxi1g1B9a+yE7I0/t6sm41ywIpCVenxBpX/VPwQOThXc
         utZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=y1Q4vmDytS2JJlCo/awV3+oNDe9s6HiRqQyWf2AffD4=;
        b=SXQ7ov9LEKn0YIAahVN05WHA8aVB5jpkyibav9R5LUl5mCzinlM45xrVJrweGI8wWV
         M/bpL8ScYazXPXwnt3zk2V09QLEZ5oRtbAmMriCSKpsjT4ey237DcYQEjOOgxOVzrO94
         7FS3ncbckvMfawIofMKmgtwsjaiJTR4JgSAQdUBgcxD3jhr0i0Gg2KZQ4eVM7ytiq0DQ
         e0VwHbLuvUSjqd/jKa+mJOMOmuphMS+NqUy1I2ErhOmbm9tBLxX4zncrlmRhBVNHAsXq
         sGLEmKjUWhvXGZbJXAZNMO1sA9dKpsesQzidOOZoM3n0T/1z0aEBBj3yjWV4hEEa9RGg
         jOOA==
X-Gm-Message-State: AOAM530W5Iq1k1gmOOM2O8cZJxeT+RUXc5lgvNpHpGgwWq5xhPZJVb40
	UPTL0Gk7Kj6ennPcbwx8+a1uVg5SY6w=
X-Google-Smtp-Source: ABdhPJzOHXyFOx6uzdMO3V0t81yfpTleEqPEbEpjK9jAfS5wK1MYA56EDHvGUK7i9BfIUgeLKCPq1Q==
X-Received: by 2002:aca:6c5:: with SMTP id 188mr1668005oig.84.1600225927971;
        Tue, 15 Sep 2020 20:12:07 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:4964:c81b:ad7d:d6d4])
        by smtp.gmail.com with ESMTPSA id j26sm9160576oor.21.2020.09.15.20.12.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 20:12:07 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] packagegroup-core-security: add more pkgs to base group
Date: Tue, 15 Sep 2020 20:12:04 -0700
Message-Id: <20200916031205.9456-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../packagegroup/packagegroup-core-security.bb  | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 6aa0d6c..1d01800 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -9,6 +9,8 @@ PACKAGES = "\
     packagegroup-core-security \
     packagegroup-security-utils \
     packagegroup-security-scanners \
+    packagegroup-security-audit \
+    packagegroup-security-hardening \
     packagegroup-security-ids  \
     packagegroup-security-mac  \
     "
@@ -16,6 +18,8 @@ PACKAGES = "\
 RDEPENDS_packagegroup-core-security = "\
     packagegroup-security-utils \
     packagegroup-security-scanners \
+    packagegroup-security-audit \
+    packagegroup-security-hardening \
     packagegroup-security-ids  \
     packagegroup-security-mac  \
     "
@@ -23,18 +27,23 @@ RDEPENDS_packagegroup-core-security = "\
 SUMMARY_packagegroup-security-utils = "Security utilities"
 RDEPENDS_packagegroup-security-utils = "\
     checksec \
+    ding-libs \
+    ecryptfs-utils \
+    fscryptctl \
+    keyutils \
     nmap \
     pinentry \
+    python3-privacyidea \
+    python3-fail2ban \
     python3-scapy \
-    ding-libs \
-    keyutils \
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 ", "", " libseccomp",d)} \
-    ${@bb.utils.contains("DISTRO_FEATURES", "pam", "sssd", "",d)} \
-    ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils", "",d)} \
+    ${@bb.utils.contains("DISTRO_FEATURES", "pam", "sssd google-authenticator-libpam", "",d)} \
+    ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils packctl", "",d)} \
     "
 
 SUMMARY_packagegroup-security-scanners = "Security scanners"
 RDEPENDS_packagegroup-security-scanners = "\
+    isic \
     nikto \
     checksecurity \
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 riscv64", "", " clamav clamav-freshclam clamav-cvd",d)} \
-- 
2.17.1

