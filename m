Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web11.3030.1602957817838373359
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GkmXL75s;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id h2so2891485pll.11
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=FJ5mBzMsF4DRMYhfcRdtfmObz12Cdp0B+RJ+2rH6slQ=;
        b=GkmXL75s5EWV+dYH2AQVu8GX79XhYwICMOQSAPvZbSnxNLhaycGEW4jodo09IYXWzs
         3ak83Vr46IE+sHSuTwuyp55chDot/uh5xpUeSXnO8XfndtWn83iZE+lP81HZ2yMLewz2
         9yCsX2eQ4OWFoTyAVvEwsLgzTpv2hHpR7prfqgQSylXm/ly3VEwLr3fde6vhFwzSehad
         LAmdyrAg6zsl1bKKlsmc/4ZoOrW/aSd0u3jtFFt58o3D8nzw+lH8FFb8PfEQLf6DV28b
         zOwIJhPcHFjt/bC+M/8baWa/+BICVtg6wq6jRuD4K8UxB2W6M7PB/bvgn1VR38THik7I
         5rhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=FJ5mBzMsF4DRMYhfcRdtfmObz12Cdp0B+RJ+2rH6slQ=;
        b=N+JJvmVA1WhrxcrQo9S3L6imwHHS74kPGJ4eOnflpN1bVhuqeAKTVs+LasYnpE010D
         v9FV/jk7rJpzK9yLrpG6UOMVzJgad4BWk2w77u+WGCjABiZ2PQZmnxO/XopXUTRzY/0Y
         jhxeJD7/itAUTsxu9dHxHQx9mpXkvuSUlMYQ9gpC/7HugueDHwVN2suuqbPHwyW6MfbK
         rnKwKns0yEJrv8nFUGjWm62sxDSH4/g+Hs47PRBh6co8Rl2080s5Ewwf/Kh1pgATYElY
         M0Ha1WY54RwH5bRE1CgIOMZ5U4NgLRMRupPI9UBiatAwZjgyx1nJ4fkaZbkdBTXOes7D
         8B0w==
X-Gm-Message-State: AOAM5322dZ6+rIdGsMRm+eg3PtYgGLiO/F0WGPQcy4EVcXsFLoAkxI/k
	D6hKIlBztklUApb8A184zEWLKL1fA9o=
X-Google-Smtp-Source: ABdhPJxD+YP1eNT3SX8/RbIqa5Ar3AATy8DGWAQOBuqmv1iuJwALPQ2lOaPVV8ohmJV3/SGrwI5/6w==
X-Received: by 2002:a17:902:6bc5:b029:d3:f10c:9449 with SMTP id m5-20020a1709026bc5b02900d3f10c9449mr9381951plt.54.1602957816832;
        Sat, 17 Oct 2020 11:03:36 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:36 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 01/32] gitlab-ci: add support for dunfell
Date: Sat, 17 Oct 2020 11:02:58 -0700
Message-Id: <6d6f7151f24470aabd83d2a08151f883c52a64ed.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .gitlab-ci.yml               | 144 +++++++++++++++++++++++++++++++++++
 kas/kas-security-alt.yml     |   8 ++
 kas/kas-security-base.yml    |  64 ++++++++++++++++
 kas/kas-security-dm.yml      |  13 ++++
 kas/qemuarm.yml              |   6 ++
 kas/qemuarm64-alt.yml        |   6 ++
 kas/qemuarm64-ima.yml        |  10 +++
 kas/qemuarm64-multi.yml      |  12 +++
 kas/qemuarm64-musl.yml       |  10 +++
 kas/qemuarm64-tpm2.yml       |  10 +++
 kas/qemuarm64.yml            |   6 ++
 kas/qemumips64-alt.yml       |  10 +++
 kas/qemumips64-multi.yml     |  14 ++++
 kas/qemumips64.yml           |   6 ++
 kas/qemuppc.yml              |   6 ++
 kas/qemuriscv64.yml          |   6 ++
 kas/qemux86-64-alt.yml       |   6 ++
 kas/qemux86-64-dm-verify.yml |   6 ++
 kas/qemux86-64-ima.yml       |  10 +++
 kas/qemux86-64-multi.yml     |  12 +++
 kas/qemux86-64-tpm.yml       |  10 +++
 kas/qemux86-64-tpm2.yml      |  10 +++
 kas/qemux86-64.yml           |   6 ++
 kas/qemux86-ima.yml          |  10 +++
 kas/qemux86-musl.yml         |  10 +++
 kas/qemux86-test.yml         |  11 +++
 kas/qemux86.yml              |   6 ++
 27 files changed, 428 insertions(+)
 create mode 100644 .gitlab-ci.yml
 create mode 100644 kas/kas-security-alt.yml
 create mode 100644 kas/kas-security-base.yml
 create mode 100644 kas/kas-security-dm.yml
 create mode 100644 kas/qemuarm.yml
 create mode 100644 kas/qemuarm64-alt.yml
 create mode 100644 kas/qemuarm64-ima.yml
 create mode 100644 kas/qemuarm64-multi.yml
 create mode 100644 kas/qemuarm64-musl.yml
 create mode 100644 kas/qemuarm64-tpm2.yml
 create mode 100644 kas/qemuarm64.yml
 create mode 100644 kas/qemumips64-alt.yml
 create mode 100644 kas/qemumips64-multi.yml
 create mode 100644 kas/qemumips64.yml
 create mode 100644 kas/qemuppc.yml
 create mode 100644 kas/qemuriscv64.yml
 create mode 100644 kas/qemux86-64-alt.yml
 create mode 100644 kas/qemux86-64-dm-verify.yml
 create mode 100644 kas/qemux86-64-ima.yml
 create mode 100644 kas/qemux86-64-multi.yml
 create mode 100644 kas/qemux86-64-tpm.yml
 create mode 100644 kas/qemux86-64-tpm2.yml
 create mode 100644 kas/qemux86-64.yml
 create mode 100644 kas/qemux86-ima.yml
 create mode 100644 kas/qemux86-musl.yml
 create mode 100644 kas/qemux86-test.yml
 create mode 100644 kas/qemux86.yml

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
new file mode 100644
index 0000000..50bfe4f
--- /dev/null
+++ b/.gitlab-ci.yml
@@ -0,0 +1,144 @@
+stages:
+  - build
+
+.build:
+  stage: build
+  image: crops/poky
+  before_script:
+    - echo "$ERR_REPORT_USERNAME" > ~/.oe-send-error
+    - echo "$ERR_REPORT_EMAIL" >> ~/.oe-send-error
+    - export PATH=~/.local/bin:$PATH
+    - wget https://bootstrap.pypa.io/get-pip.py
+    - python3 get-pip.py
+    - python3 -m pip install kas
+  after_script:
+    - cd $CI_PROJECT_DIR/poky
+    - . ./oe-init-build-env $CI_PROJECT_DIR/build
+    - for x in `ls $CI_PROJECT_DIR/build/tmp/log/error-report/ | grep error_report_`; do
+    - send-error-report -y tmp/log/error-report/$x
+    - done
+    - cd $CI_PROJECT_DIR
+    - rm -rf build
+    - $CI_PROJECT_DIR/scripts/ci-cleanup.sh
+  cache:
+    paths:
+      - layers
+
+qemux86:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemux86-64:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemuarm:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemuarm64:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemuppc:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemumips64:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemuriscv64:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemux86-64-tpm:
+  extends: .build
+  script:
+  - kas build --target security-tpm-image kas/$CI_JOB_NAME.yml 
+
+qemux86-64-tpm2:
+  extends: .build
+  script:
+  - kas build --target security-tpm2-image kas/$CI_JOB_NAME.yml 
+
+qemuarm64-tpm2:
+  extends: .build
+  script:
+  - kas build --target security-tpm2-image kas/$CI_JOB_NAME.yml 
+
+qemux86-ima:
+  extends: .build
+  script:
+  - kas build --target integrity-image-minimal kas/$CI_JOB_NAME.yml 
+
+qemux86-64-ima:
+  extends: .build
+  script:
+  - kas build --target integrity-image-minimal kas/$CI_JOB_NAME.yml 
+
+qemuarm64-ima:
+  extends: .build
+  script:
+  - kas build --target integrity-image-minimal kas/$CI_JOB_NAME.yml 
+
+qemux86-64-dm-verify:
+  extends: .build
+  script:
+  - kas build --target core-image-minimal kas/qemux86-64.yml 
+  - kas build --target dm-verity-image-initramfs kas/$CI_JOB_NAME.yml 
+
+
+qemuarm64-alt:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemuarm64-multi:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemumips64-alt:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemumips64-multi:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemux86-64-alt:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemux86-64-multi:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemux86-musl:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemuarm64-musl:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemux86-test:
+  extends: .build
+  allow_failure: true
+  script:
+  - kas build --target security-test-image kas/$CI_JOB_NAME.yml 
+  - kas build -c testimage --target security-test-image kas/$CI_JOB_NAME.yml 
diff --git a/kas/kas-security-alt.yml b/kas/kas-security-alt.yml
new file mode 100644
index 0000000..309acaa
--- /dev/null
+++ b/kas/kas-security-alt.yml
@@ -0,0 +1,8 @@
+header:
+    version: 9
+    includes: 
+        - kas-security-base.yml
+
+local_conf_header:
+  alt: |
+      DISTRO_FEATURES_append = " apparmor pam smack systemd"
diff --git a/kas/kas-security-base.yml b/kas/kas-security-base.yml
new file mode 100644
index 0000000..c9ca76f
--- /dev/null
+++ b/kas/kas-security-base.yml
@@ -0,0 +1,64 @@
+header:
+  version: 8
+
+distro: poky
+
+repos:
+  meta-security:
+    layers:
+      ../meta-security:
+      meta-tpm:
+      meta-integrity:
+      meta-security-compliance:
+
+  poky:
+    url: https://git.yoctoproject.org/git/poky
+    refspec: dunfell 
+    layers:
+      meta:
+      meta-poky:
+      meta-yocto-bsp:
+
+  meta-openembedded:
+    url: http://git.openembedded.org/meta-openembedded
+    refspec: dunfell
+    layers:
+      meta-oe:
+      meta-perl:
+      meta-python:
+      meta-networking:
+
+local_conf_header:
+  base: |
+    CONF_VERSION = "1"
+    SOURCE_MIRROR_URL = "http://downloads.yoctoproject.org/mirror/sources/"
+    SSTATE_MIRRORS = "file://.* http://sstate.yoctoproject.org/dev/PATH;downloadfilename=PATH \n"
+    SSTATE_DIR = "/home/srv/sstate/dunfell"
+    DL_DIR = "/home/srv/downloads/dunfell"
+    BB_HASHSERVE = "auto"
+    BB_SIGNATURE_HANDLER = "OEEquivHash"
+    INHERIT += "buildstats buildstats-summary buildhistory"
+    INHERIT += "report-error"
+    INHERIT += "testimage"
+    TEST_QEMUBOOT_TIMEOUT = "1500"
+    EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
+    PACKAGE_CLASSES = "package_ipk"
+
+
+  diskmon: |
+    BB_DISKMON_DIRS = "\
+    STOPTASKS,${TMPDIR},1G,100K \
+    STOPTASKS,${DL_DIR},1G,100K \
+    STOPTASKS,${SSTATE_DIR},1G,100K \
+    STOPTASKS,/tmp,100M,100K \
+    ABORT,${TMPDIR},100M,1K \
+    ABORT,${DL_DIR},100M,1K \
+    ABORT,${SSTATE_DIR},100M,1K \
+    ABORT,/tmp,10M,1K"
+
+bblayers_conf_header:
+  base: |
+    POKY_BBLAYERS_CONF_VERSION = "2"
+    BBPATH = "${TOPDIR}"
+    BBFILES ?= ""
+
diff --git a/kas/kas-security-dm.yml b/kas/kas-security-dm.yml
new file mode 100644
index 0000000..7ce0e9d
--- /dev/null
+++ b/kas/kas-security-dm.yml
@@ -0,0 +1,13 @@
+header:
+    version: 9
+    includes: 
+        - kas-security-base.yml
+
+local_conf_header:
+    dm-verify: |
+        DM_VERITY_IMAGE = "core-image-minimal"
+        DM_VERITY_IMAGE_TYPE = "ext4"
+        IMAGE_CLASSES += "dm-verity-img"
+        INITRAMFS_IMAGE_BUNDLE = "1"
+        INITRAMFS_IMAGE = "dm-verity-image-initramfs"
+
diff --git a/kas/qemuarm.yml b/kas/qemuarm.yml
new file mode 100644
index 0000000..f51abac
--- /dev/null
+++ b/kas/qemuarm.yml
@@ -0,0 +1,6 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+machine: qemuarm
diff --git a/kas/qemuarm64-alt.yml b/kas/qemuarm64-alt.yml
new file mode 100644
index 0000000..48e688c
--- /dev/null
+++ b/kas/qemuarm64-alt.yml
@@ -0,0 +1,6 @@
+header:
+  version: 8
+  includes:
+    - kas-security-alt.yml
+
+machine: qemuarm64
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
diff --git a/kas/qemuarm64-multi.yml b/kas/qemuarm64-multi.yml
new file mode 100644
index 0000000..d79142c
--- /dev/null
+++ b/kas/qemuarm64-multi.yml
@@ -0,0 +1,12 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+local_conf_header:
+  multi: |
+    require conf/multilib.conf
+    MULTILIBS = "multilib:lib32"
+    DEFAULTTUNE_virtclass-multilib-lib32 = "armv7athf-neon"
+
+machine: qemuarm64
diff --git a/kas/qemuarm64-musl.yml b/kas/qemuarm64-musl.yml
new file mode 100644
index 0000000..b353eb4
--- /dev/null
+++ b/kas/qemuarm64-musl.yml
@@ -0,0 +1,10 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+local_conf_header:
+    musl: |
+        TCLIBC = "musl"
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
new file mode 100644
index 0000000..a0c2d1a
--- /dev/null
+++ b/kas/qemuarm64.yml
@@ -0,0 +1,6 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+machine: qemuarm64
diff --git a/kas/qemumips64-alt.yml b/kas/qemumips64-alt.yml
new file mode 100644
index 0000000..923c213
--- /dev/null
+++ b/kas/qemumips64-alt.yml
@@ -0,0 +1,10 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+local_conf_header:
+  alt: |
+     DISTRO_FEATURES_append = " pam systmed"
+
+machine: qemumips64
diff --git a/kas/qemumips64-multi.yml b/kas/qemumips64-multi.yml
new file mode 100644
index 0000000..c8cf94b
--- /dev/null
+++ b/kas/qemumips64-multi.yml
@@ -0,0 +1,14 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+local_conf_header:
+  multi: |
+    require conf/multilib.conf
+    MULTILIBS = "multilib:lib64 multilib:lib32"
+    DEFAULTTUNE = "mips64-n32"
+    DEFAULTTUNE_virtclass-multilib-lib64 = "mips64"
+    DEFAULTTUNE_virtclass-multilib-lib32 = "mips32r2"
+
+machine: qemumips64
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
diff --git a/kas/qemuppc.yml b/kas/qemuppc.yml
new file mode 100644
index 0000000..3dad81c
--- /dev/null
+++ b/kas/qemuppc.yml
@@ -0,0 +1,6 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+machine: qemuppc
diff --git a/kas/qemuriscv64.yml b/kas/qemuriscv64.yml
new file mode 100644
index 0000000..e1b1e49
--- /dev/null
+++ b/kas/qemuriscv64.yml
@@ -0,0 +1,6 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+machine: qemuriscv64
diff --git a/kas/qemux86-64-alt.yml b/kas/qemux86-64-alt.yml
new file mode 100644
index 0000000..f0d6b27
--- /dev/null
+++ b/kas/qemux86-64-alt.yml
@@ -0,0 +1,6 @@
+header:
+  version: 8
+  includes:
+    - kas-security-alt.yml
+
+machine: qemux86-64
diff --git a/kas/qemux86-64-dm-verify.yml b/kas/qemux86-64-dm-verify.yml
new file mode 100644
index 0000000..1f26008
--- /dev/null
+++ b/kas/qemux86-64-dm-verify.yml
@@ -0,0 +1,6 @@
+header:
+  version: 8
+  includes:
+    - kas-security-dm.yml
+
+machine: qemux86-64
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
diff --git a/kas/qemux86-64-multi.yml b/kas/qemux86-64-multi.yml
new file mode 100644
index 0000000..711ce28
--- /dev/null
+++ b/kas/qemux86-64-multi.yml
@@ -0,0 +1,12 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+local_conf_header:
+  multi: |
+    require conf/multilib.conf
+    MULTILIBS = "multilib:lib32"
+    DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
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
diff --git a/kas/qemux86-64.yml b/kas/qemux86-64.yml
new file mode 100644
index 0000000..4ba2b66
--- /dev/null
+++ b/kas/qemux86-64.yml
@@ -0,0 +1,6 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
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
diff --git a/kas/qemux86-musl.yml b/kas/qemux86-musl.yml
new file mode 100644
index 0000000..61d9572
--- /dev/null
+++ b/kas/qemux86-musl.yml
@@ -0,0 +1,10 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+local_conf_header:
+    musl: |
+        TCLIBC = "musl"
+
+machine: qemux86
diff --git a/kas/qemux86-test.yml b/kas/qemux86-test.yml
new file mode 100644
index 0000000..7b5f451
--- /dev/null
+++ b/kas/qemux86-test.yml
@@ -0,0 +1,11 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+
+local_conf_header:
+  meta-security: |
+      DISTRO_FEATURES_append = " apparmor smack pam"
+
+machine: qemux86
diff --git a/kas/qemux86.yml b/kas/qemux86.yml
new file mode 100644
index 0000000..83a5353
--- /dev/null
+++ b/kas/qemux86.yml
@@ -0,0 +1,6 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+machine: qemux86
-- 
2.17.1

