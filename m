Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web11.142.1595609944059802388
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jul 2020 09:59:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=i2BFyxeI;
 spf=pass (domain: gmail.com, ip: 209.85.214.174, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id x8so4782387plm.10
        for <yocto@lists.yoctoproject.org>; Fri, 24 Jul 2020 09:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=nce5ANeaDIe/8wDOXs5QWV7qc021S50XQG/lZ+ZjWjI=;
        b=i2BFyxeIlTbAaODXm2mRgCEPvTPoqRJ04+8VxPF9Dc0sMm/cz+vbZbO4MQViGPDXaz
         v6brzUj/eQY+Y+hR+S4U51JyKAGN+e3PhTFmnNY/KZikbo4nLIoz3E7bUTvZOBIg01fM
         BqXyvMqo5TET2UKGRFwF+S2HA9LX21z36T4vl+/AFpsZtGw4rJnTk5Zy/RnsNbnAgjaa
         HhY3P8H6Ql0U8fy704qd47YQw3eYW0ccF7tK2Diws4iROHkOQW2Ob3dlG6UBlmcdGgTR
         w120pvoPUB/bnEIlJMRyg5hq7zYLCxaIy2I9tRvGRNch69zonKSMox1CYEq1PDfCJxxo
         P3Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=nce5ANeaDIe/8wDOXs5QWV7qc021S50XQG/lZ+ZjWjI=;
        b=rwfqEDgJ7sy0OHnhwBAwXHkCdg1kE8ixQWWt+Y3+z6PzxepZ0O6A17dVNBu7420MSG
         VhvvhLqdVHRCMDBNzBW8QeJJ5pq9tvrF1PXc6ghwv5guaTa9VsuxyeZLzHD/B10QoRDA
         HdVNUClueXIEos5WzBAR5RpnaMq4fB0bWgBhDF2zLbKLHfH5HdYdYvxb0+oepcHh0mka
         ktqxTazV9DKrtRMYAjpDaq1R5AqA+tYdx6eDg+/RtmdKMbwvZIGEVCQEVOM6X/QvpEek
         7v59w4kbZusgMNS5heuS7pKGx+qLQRo+ANSOw4zOKVqyH6dxhVFfBbQYFBofzkZ2IIkG
         u52Q==
X-Gm-Message-State: AOAM531izxxo4msDIg1lPjQaI4/lT1YZ/gKmynANqxKTxxjoH7slUE7Q
	e+d8XJWtVH2J3v49u/Ionr4wXhvknGE=
X-Google-Smtp-Source: ABdhPJzqRV8OWSn3m0oR+OKoT5Eoq1xBCxCYCmPd2cOLOOt7Jp9whq4UiLC88g3e1nph3/IYHMQ6Xw==
X-Received: by 2002:a17:90a:3d49:: with SMTP id o9mr6799553pjf.156.1595609943256;
        Fri, 24 Jul 2020 09:59:03 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:c16f:613f:b5e6:25b7])
        by smtp.gmail.com with ESMTPSA id nk22sm6517641pjb.51.2020.07.24.09.59.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2020 09:59:02 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] drop ci-build: it is hiding errors
Date: Fri, 24 Jul 2020 09:59:01 -0700
Message-Id: <20200724165901.16648-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

call kas from .gitlab-ci
fix typos
add missing mips64 file
add main layer workaround

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .gitlab-ci.yml            | 32 +++++++++++++++-----------------
 kas/kas-security-base.yml |  1 +
 kas/qemumips64.yml        |  6 ++++++
 scripts/ci-build.sh       | 10 ----------
 4 files changed, 22 insertions(+), 27 deletions(-)
 create mode 100644 kas/qemumips64.yml
 delete mode 100755 scripts/ci-build.sh

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index c6fba3e..132eb78 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -23,66 +23,64 @@ stages:
 qemux86:
   extends: .build
   script:
-  - ./scripts/ci-build.sh  $CI_JOB_NAME security-build-image
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
 
 qemux86-64:
   extends: .build
   script:
-  - ./scripts/ci-build.sh  $CI_JOB_NAME security-build-image
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
 
 qemuarm:
   extends: .build
   script:
-  - ./scripts/ci-build.sh  $CI_JOB_NAME security-build-image
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
 
 qemuarm64:
   extends: .build
   script:
-  - ./scripts/ci-build.sh  $CI_JOB_NAME security-build-image
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
 
-qemumppc:
+qemuppc:
   extends: .build
   script:
-  - ./scripts/ci-build.sh  $CI_JOB_NAME security-build-image
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
 
 qemumips64:
   extends: .build
   script:
-  - ./scripts/ci-build.sh  $CI_JOB_NAME security-build-image
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
 
 qemuriscv64:
   extends: .build
   script:
-  - ./scripts/ci-build.sh  $CI_JOB_NAME security-build-image
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
 
 qemux86-64-tpm:
   extends: .build
   script:
-  - ./scripts/ci-build.sh  $CI_JOB_NAME security-tpm-image
+  - kas build --target security-tpm-image kas/$CI_JOB_NAME.yml 
 
 qemux86-64-tpm2:
   extends: .build
   script:
-  - ./scripts/ci-build.sh  $CI_JOB_NAME security-tpm2-image
+  - kas build --target security-tpm2-image kas/$CI_JOB_NAME.yml 
 
 qemuarm64-tpm2:
   extends: .build
   script:
-  - ./scripts/ci-build.sh  $CI_JOB_NAME security-tpm2-image
-
+  - kas build --target security-tpm2-image kas/$CI_JOB_NAME.yml 
 
 qemux86-ima:
   extends: .build
   script:
-  - ./scripts/ci-build.sh  $CI_JOB_NAME integrity-image-minimal
+  - kas build --target integrity-image-minimal kas/$CI_JOB_NAME.yml 
 
 qemux86-64-ima:
   extends: .build
   script:
-  - ./scripts/ci-build.sh  $CI_JOB_NAME integrity-image-minimal
+  - kas build --target integrity-image-minimal kas/$CI_JOB_NAME.yml 
 
-qemuarm64-iam:
+qemuarm64-ima:
   extends: .build
   script:
-  - ./scripts/ci-build.sh  $CI_JOB_NAME integrity-image-minimal
-
+  - kas build --target integrity-image-minimal kas/$CI_JOB_NAME.yml 
diff --git a/kas/kas-security-base.yml b/kas/kas-security-base.yml
index 82072ef..768390e 100644
--- a/kas/kas-security-base.yml
+++ b/kas/kas-security-base.yml
@@ -6,6 +6,7 @@ distro: poky
 repos:
   meta-security:
     layers:
+      ../meta-security:
       meta-tpm:
       meta-integrity:
       meta-security-compliance:
diff --git a/kas/qemumips64.yml b/kas/qemumips64.yml
new file mode 100644
index 0000000..64e52f7
--- /dev/null
+++ b/kas/qemumips64.yml
@@ -0,0 +1,6 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+machine: qemumips64
diff --git a/scripts/ci-build.sh b/scripts/ci-build.sh
deleted file mode 100755
index b6f1dda..0000000
--- a/scripts/ci-build.sh
+++ /dev/null
@@ -1,10 +0,0 @@
-#! /bin/bash
-
-set -e
-
-CONF=$1
-shift 1
-IMAGES=$@
-
-( kas shell kas/${CONF}.yml -c "bitbake --setscene-only ${IMAGES}" || true ) | sed -e '/^NOTE: .*Started$/d' -e '/^NOTE: Running /d'
-kas shell kas/${CONF}.yml -c "bitbake --skip-setscene ${IMAGES}" | sed -e '/^NOTE: .*Started$/d' -e '/^NOTE: Running /d'
-- 
2.17.1

