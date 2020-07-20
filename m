Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
 by mx.groups.io with SMTP id smtpd.web10.30307.1595211710365051666
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jul 2020 19:21:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cSpol+oW;
 spf=pass (domain: gmail.com, ip: 209.85.210.193, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f193.google.com with SMTP id s26so8300743pfm.4
        for <yocto@lists.yoctoproject.org>; Sun, 19 Jul 2020 19:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=L30fMrh0+vKx5yM/CXP8EKemzeZDlqWaLEbuIEKcjU8=;
        b=cSpol+oWPBfAhg/8wPBDS7+aja7UyEzrwN86y9L+32eFuL9VaqbC/7dadj6o5u7omv
         wTE0MZdeCOxG4kdurcIbGi2Gup5bXJyHFIQGDEMN1VxuroBrNtEyannFsbrZf6N8LemX
         WCcEEqCkKM8mzNdWO9cChlgwXhmgR5nrd1VhkeQOMJSWpzzaHD1oHKkSbP9N5SM8NWpL
         VkN9IjXSIgDkyK84fXI/g1dt5zp6Q6u6c0Seo4D/+w5UfZypXSF9/VhJMHGM2KjEOPpv
         bIYL3aTMZXZVfYt+vtwy9MIng0YkxlgsjWpqixwwASBei4Pg43SAYCvpOJKG6uHGIz5p
         3bzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=L30fMrh0+vKx5yM/CXP8EKemzeZDlqWaLEbuIEKcjU8=;
        b=saN+fypi7ypBc1J2GRWybdXZPdPVyBoDUgCQFZegwKg7oF6QTPKsiv9oGai/PSQxDx
         yJcfiKiRnw8Vq9Az/0+MWXuyOv5cPLO06zMgtR77EZ53VG4v/fNUyYLiX4I8wgJVBo5K
         AmoRBllRYSmDB2vvqz11utoSEagbNY5hIH+WLM2zu+lCS0pFI98Pt93Ecu8CsIatDJvK
         8x9Xz8IYQc66gUqzC+7n+o4XmXg74tTUm0K0IOGdG/RluAdL2RZYUR+S6dX2hdXlEWDA
         dQG0sTM/gsNzikaDN/PanORE6/GB+usnyZRYEoZUDLaga3FVpk7afLxcDVpGOnSPNDJS
         LamQ==
X-Gm-Message-State: AOAM5317RDXRKdpEuSAipkFGrQ6BmV7ouaYqCEjSQd5vk1JRh+wxwUzK
	6k/0ydUdCpd95OXWtFpAWlD97sJw25U=
X-Google-Smtp-Source: ABdhPJwcN7+lFjIh8f/Qy5pzBJdDppYJGyNsB1M1/az8GXFmT40Do7bSpI6LTzeNAy5OhRYm3+KCow==
X-Received: by 2002:a63:e057:: with SMTP id n23mr16760684pgj.368.1595211709290;
        Sun, 19 Jul 2020 19:21:49 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:411f:2971:8bd3:d88])
        by smtp.gmail.com with ESMTPSA id y22sm9970424pjp.41.2020.07.19.19.21.47
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jul 2020 19:21:48 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] kas: add ima, tpm and tpm2 build configs
Date: Sun, 19 Jul 2020 19:21:47 -0700
Message-Id: <20200720022147.22884-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

for qemux86, qemux86-64 and qemuarm64

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .gitlab-ci.yml            | 32 ++++++++++++++++++++++++++++++++
 kas/kas-security-base.yml |  4 ++++
 kas/qemuarm64-ima.yml     | 10 ++++++++++
 kas/qemuarm64-tpm2.yml    | 10 ++++++++++
 kas/qemuarm64.yml         |  2 +-
 kas/qemux86-64-ima.yml    | 10 ++++++++++
 kas/qemux86-64-tpm.yml    | 10 ++++++++++
 kas/qemux86-64-tpm2.yml   | 10 ++++++++++
 kas/qemux86-ima.yml       | 10 ++++++++++
 9 files changed, 97 insertions(+), 1 deletion(-)
 create mode 100644 kas/qemuarm64-ima.yml
 create mode 100644 kas/qemuarm64-tpm2.yml
 create mode 100644 kas/qemux86-64-ima.yml
 create mode 100644 kas/qemux86-64-tpm.yml
 create mode 100644 kas/qemux86-64-tpm2.yml
 create mode 100644 kas/qemux86-ima.yml

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index f7517a5..c6fba3e 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -54,3 +54,35 @@ qemuriscv64:
   extends: .build
   script:
   - ./scripts/ci-build.sh  $CI_JOB_NAME security-build-image
+
+qemux86-64-tpm:
+  extends: .build
+  script:
+  - ./scripts/ci-build.sh  $CI_JOB_NAME security-tpm-image
+
+qemux86-64-tpm2:
+  extends: .build
+  script:
+  - ./scripts/ci-build.sh  $CI_JOB_NAME security-tpm2-image
+
+qemuarm64-tpm2:
+  extends: .build
+  script:
+  - ./scripts/ci-build.sh  $CI_JOB_NAME security-tpm2-image
+
+
+qemux86-ima:
+  extends: .build
+  script:
+  - ./scripts/ci-build.sh  $CI_JOB_NAME integrity-image-minimal
+
+qemux86-64-ima:
+  extends: .build
+  script:
+  - ./scripts/ci-build.sh  $CI_JOB_NAME integrity-image-minimal
+
+qemuarm64-iam:
+  extends: .build
+  script:
+  - ./scripts/ci-build.sh  $CI_JOB_NAME integrity-image-minimal
+
diff --git a/kas/kas-security-base.yml b/kas/kas-security-base.yml
index 7f807d1..82072ef 100644
--- a/kas/kas-security-base.yml
+++ b/kas/kas-security-base.yml
@@ -5,6 +5,10 @@ distro: poky
 
 repos:
   meta-security:
+    layers:
+      meta-tpm:
+      meta-integrity:
+      meta-security-compliance:
 
   poky:
     url: https://git.yoctoproject.org/git/poky
diff --git a/kas/qemuarm64-ima.yml b/kas/qemuarm64-ima.yml
new file mode 100644
index 0000000..b478472
--- /dev/null
+++ b/kas/qemuarm64-ima.yml
@@ -0,0 +1,10 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+local_conf_header:
+  meta-security: |
+    DISTRO_FEATURES_append = " ima"
+
+machine: qemuarm64
diff --git a/kas/qemuarm64-tpm2.yml b/kas/qemuarm64-tpm2.yml
new file mode 100644
index 0000000..3a8d8fc
--- /dev/null
+++ b/kas/qemuarm64-tpm2.yml
@@ -0,0 +1,10 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+local_conf_header:
+  meta-security: |
+    DISTRO_FEATURES_append = " tpm2"
+
+machine: qemuarm64 
diff --git a/kas/qemuarm64.yml b/kas/qemuarm64.yml
index d55adff..a0c2d1a 100644
--- a/kas/qemuarm64.yml
+++ b/kas/qemuarm64.yml
@@ -3,4 +3,4 @@ header:
   includes:
     - kas-security-base.yml
 
-machine: qemuarmu64
+machine: qemuarm64
diff --git a/kas/qemux86-64-ima.yml b/kas/qemux86-64-ima.yml
new file mode 100644
index 0000000..e64931c
--- /dev/null
+++ b/kas/qemux86-64-ima.yml
@@ -0,0 +1,10 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+local_conf_header:
+  meta-security: |
+    DISTRO_FEATURES_append = " ima"
+
+machine: qemux86-64
diff --git a/kas/qemux86-64-tpm.yml b/kas/qemux86-64-tpm.yml
new file mode 100644
index 0000000..565b423
--- /dev/null
+++ b/kas/qemux86-64-tpm.yml
@@ -0,0 +1,10 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+local_conf_header:
+  meta-security: |
+    DISTRO_FEATURES_append = " tpm"
+
+machine: qemux86-64
diff --git a/kas/qemux86-64-tpm2.yml b/kas/qemux86-64-tpm2.yml
new file mode 100644
index 0000000..a43693e
--- /dev/null
+++ b/kas/qemux86-64-tpm2.yml
@@ -0,0 +1,10 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+local_conf_header:
+  meta-security: |
+    DISTRO_FEATURES_append = " tpm2"
+
+machine: qemux86-64
diff --git a/kas/qemux86-ima.yml b/kas/qemux86-ima.yml
new file mode 100644
index 0000000..6528ba6
--- /dev/null
+++ b/kas/qemux86-ima.yml
@@ -0,0 +1,10 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+local_conf_header:
+  meta-security: |
+    DISTRO_FEATURES_append = " ima"
+
+machine: qemux86
-- 
2.17.1

