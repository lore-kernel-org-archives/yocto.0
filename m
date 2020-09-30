Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
 by mx.groups.io with SMTP id smtpd.web10.512.1601484733518305235
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Sep 2020 09:52:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uztaLXZb;
 spf=pass (domain: gmail.com, ip: 209.85.210.53, mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f53.google.com with SMTP id m12so2519394otr.0
        for <yocto@lists.yoctoproject.org>; Wed, 30 Sep 2020 09:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=gT9J3lJ9Xmxj1nfPuZhdvXdfjsU5V/mqAWKmIPWAne4=;
        b=uztaLXZbpheawxK8JMcU+YNorD1kMR6st/DznzMG1PJcV8QzCDZkA1YgMqVHXit2um
         2SuCZLFHdANhAipzaQh3aB4ySlz/cCJMSCFUIndc5j9oxKjDcFBs9pVJY6FtHo/7FfRq
         Ncr0vgGJk5zgDo3zl0hfcZgzHXpjvZKG49lbuJkAvDUDCO3dETO4wfIahXQWvIVi0kFS
         G5JNJ1zZuwPAmc3OTm+hlfF0KSOPfqB3Eyy8GquYDzjGXtHB5hulr8FUb3NP1SMCBhuc
         MWRVT70IR3TtxTBHp3g6tlQQ0XcyXcdtm2zZ8J0GZ1EjUX7afn4mAEri817gBmq9ul9E
         3Vyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=gT9J3lJ9Xmxj1nfPuZhdvXdfjsU5V/mqAWKmIPWAne4=;
        b=l5y5WZSp/DFPVBZNSzTbIIEub6BsddHBBNT3C5ZWzhqbpaIRx9II4gJUdXaJA3PJLN
         hQ5x5spANJfeT8qwUvB1gqmpqrN2RWdjXNxI4apz+FBChU9d47eKHu4FnPTZ07/zB453
         YSx90sNn3QMcCfNoR+IAy2iCieSWlIs/TIKeDhDZQN1f3evCr1XIvkP9Wxh3xLLqBXei
         PbxkWOv0LnRgqOQG+3jSXrT1P+5jkyxHy7ai0m0IWybxJXBJ54D7uPHIEP3H258o6/FQ
         6IvwTDpXL0KOOJlbpj6jYhyV5ju9JBw28jFOfx9CLmreKar/8cemDjgpI60pEGCIVR6i
         d23Q==
X-Gm-Message-State: AOAM533OVt8qGbGaU/P5aYMDnu7D0QV4oWldIu4EExHco7sbycudeN8g
	SDKfa0T+LE2zjW7LhIQAXGt5KocoEiU=
X-Google-Smtp-Source: ABdhPJyR6LlNbIzoxr4gbpN4S8fX2jnZpmCpkGbuMVRU0JG5ofwq8vqwFF8ViwRYvqBJ15p1OUaAQA==
X-Received: by 2002:a9d:6f06:: with SMTP id n6mr2103961otq.302.1601484732680;
        Wed, 30 Sep 2020 09:52:12 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:e2:552d:b045:4166])
        by smtp.gmail.com with ESMTPSA id p16sm494561otl.17.2020.09.30.09.52.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 09:52:12 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/4] security-test-image: simplify
Date: Wed, 30 Sep 2020 09:52:07 -0700
Message-Id: <20200930165208.31659-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930165208.31659-1-akuster808@gmail.com>
References: <20200930165208.31659-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/images/security-test-image.bb    | 26 ++-----------------
 .../packagegroup-core-security.bb             | 14 ++++++++++
 2 files changed, 16 insertions(+), 24 deletions(-)

diff --git a/recipes-core/images/security-test-image.bb b/recipes-core/images/security-test-image.bb
index c71d726..babe3fd 100644
--- a/recipes-core/images/security-test-image.bb
+++ b/recipes-core/images/security-test-image.bb
@@ -1,33 +1,11 @@
 DESCRIPTION = "A small image for testing meta-security packages"
 
+require security-build-image.bb
+
 IMAGE_FEATURES += "ssh-server-openssh"
 
 TEST_SUITES = "ssh ping ptest apparmor clamav samhain sssd tripwire checksec smack suricata"
 
 INSTALL_CLAMAV_CVD = "1"
 
-IMAGE_INSTALL = "\
-    packagegroup-base \
-    packagegroup-core-boot \
-    packagegroup-core-security-ptest \
-    clamav \
-    tripwire \
-    checksec \
-    suricata \
-    samhain-standalone \
-    ${@bb.utils.contains("DISTRO_FEATURES", "pam", "sssd", "",d)} \
-    ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "apparmor", "",d)} \
-    ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack-test", "",d)} \
-    os-release \
-    " 
-
-
-IMAGE_LINGUAS ?= " "
-
-LICENSE = "MIT"
-
-inherit core-image
-
-export IMAGE_BASENAME = "security-test-image"
-
 IMAGE_ROOTFS_EXTRA_SPACE = "5242880"
diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 789f4ea..9546e0f 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -13,6 +13,7 @@ PACKAGES = "\
     packagegroup-security-hardening \
     packagegroup-security-ids  \
     packagegroup-security-mac  \
+    ${@bb.utils.contains("DISTRO_FEATURES", "ptest", "packagegroup-meta-security-ptest-packages", "", d)} \
     "
 
 RDEPENDS_packagegroup-core-security = "\
@@ -22,6 +23,7 @@ RDEPENDS_packagegroup-core-security = "\
     packagegroup-security-hardening \
     packagegroup-security-ids  \
     packagegroup-security-mac  \
+    ${@bb.utils.contains("DISTRO_FEATURES", "ptest", "packagegroup-meta-security-ptest-packages", "", d)} \
     "
 
 SUMMARY_packagegroup-security-utils = "Security utilities"
@@ -76,3 +78,15 @@ RDEPENDS_packagegroup-security-mac = " \
     ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "apparmor", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack", "",d)} \
     "
+
+RDEPENDS_packagegroup-meta-security-ptest-packages = "\
+    ptest-runner \
+    samhain-standalone-ptest \
+    libseccomp-ptest \
+    python3-scapy-ptest \
+    suricata-ptest \
+    tripwire-ptest \
+    python3-fail2ban-ptest \
+    ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "apparmor-ptest", "",d)} \
+    ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack-ptest", "",d)} \
+"
-- 
2.17.1

