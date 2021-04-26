Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web12.1311.1619480396929696056
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Apr 2021 16:39:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=LnMH87Gq;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.222.173, mailfrom: jdmason@kudzu.us)
Received: by mail-qk1-f173.google.com with SMTP id q136so37403355qka.7
        for <yocto@lists.yoctoproject.org>; Mon, 26 Apr 2021 16:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=j58bROBs7zNXQSsMVF60Ppj8FV95UFkpdWyyY2ekKKQ=;
        b=LnMH87GqfpCewH3WAU+I4Kd6GyN3eOdF41s7JcR9Kv0pNlJCy71VYHZUmbV8Rr9ese
         6Lt6C/sAirb9PqEjt3UC9s8SqWmU69C6HOuyiQiPiz/0JITVFocD07bOYPVKGz1VdC9G
         E4KVMK8EMVxcBUKrZnijLy2KV/SMTmJ1+cNQqmj9754GjC3nN2gnIybtWc9WcnGMHTqR
         8fzAiSfEn3ngmHfJXil3dwYtxhwKFxaOBQAA2BrwXftNhjz3cU7UMkvn9+kBOzezsdZz
         SWNN4x/yOeocjTuRoDkXowLmLsY5vDHYcRVjYjgm+vsh5laqB/unugh29rbph4JEMm5C
         bPsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=j58bROBs7zNXQSsMVF60Ppj8FV95UFkpdWyyY2ekKKQ=;
        b=FyZfLfbzLULUtTT1P54LzPMkkWI6cVy4jRg6h4Vrtt1p2GahCTtbEQ6pb4Pg1Kc1SM
         zACAC/g/2J1wAcAqu5/wWgQHHDIiqyPUIjddIZ6QpCCn7yE1lzllaLbbdhqaODClOeEo
         8d+m/hkcEzrKI3QV4DPRQ2SLONDr/8MUevpb6a9Mx8STgRgVcm4RwkDssmBrfTBhsfBF
         gZVRr9dqBJYVfFv/dI7IVTVCyF5BcQfm8c1TkuStQpKqW5XcLhh2kmb5F4MJeZ0iCDjP
         hS/0bo84nOuVDSJxrV/L3A4BBRh3/rXWOo2OnD37rgkC0L6Uqm1VZBklkRBejmxFIUCl
         tjUQ==
X-Gm-Message-State: AOAM5310dco9VPGHk3skA7tmWXgnOggLAz6C/5ijp/MDhiIVni0fwYT/
	4K7k0yjLSH4jUSlwio+NVWUdASFVMGkAbw==
X-Google-Smtp-Source: ABdhPJyuZgEBJRlKYFkSRZp8y8m+ztqK8WWo2YaPfnd2zKG9QgENS78nLrLCKnpt/5yNNDaMQ0oD4Q==
X-Received: by 2002:a37:a357:: with SMTP id m84mr7905179qke.178.1619480395590;
        Mon, 26 Apr 2021 16:39:55 -0700 (PDT)
Return-Path: <jdmason@kudzu.us>
Received: from localhost ([2605:a601:a601:f800:15bd:5247:a67c:4a90])
        by smtp.gmail.com with ESMTPSA id b1sm1490107qkh.26.2021.04.26.16.39.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 16:39:55 -0700 (PDT)
From: "Jon Mason" <jdmason@kudzu.us>
X-Google-Original-From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 1/1] CI: add Gitlab CI support
Date: Mon, 26 Apr 2021 19:39:53 -0400
Message-Id: <20210426233953.11927-2-jon.mason@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210426233953.11927-1-jon.mason@arm.com>
References: <20210426233953.11927-1-jon.mason@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 .gitlab-ci.yml            | 172 ++++++++++++++++++++++++++++++++++++++
 ci/96b-avenger96.yml      |   9 ++
 ci/96b-nitrogen.yml       |   6 ++
 ci/acrn.yml               |   6 ++
 ci/base.yml               |  35 ++++++++
 ci/check-machine-coverage |  26 ++++++
 ci/check-warnings         |  18 ++++
 ci/jobs-to-kas            |  19 +++++
 ci/logging.yml            |  13 +++
 ci/meta-oe.yml            |   8 ++
 ci/meta-python.yml        |  10 +++
 ci/qemu-cortex-m3.yml     |   6 ++
 ci/qemu-nios2.yml         |   6 ++
 ci/qemu-x86.yml           |   6 ++
 ci/testimage.yml          |   5 ++
 ci/update-repos           |  40 +++++++++
 16 files changed, 385 insertions(+)
 create mode 100644 .gitlab-ci.yml
 create mode 100644 ci/96b-avenger96.yml
 create mode 100644 ci/96b-nitrogen.yml
 create mode 100644 ci/acrn.yml
 create mode 100644 ci/base.yml
 create mode 100755 ci/check-machine-coverage
 create mode 100755 ci/check-warnings
 create mode 100755 ci/jobs-to-kas
 create mode 100644 ci/logging.yml
 create mode 100644 ci/meta-oe.yml
 create mode 100644 ci/meta-python.yml
 create mode 100644 ci/qemu-cortex-m3.yml
 create mode 100644 ci/qemu-nios2.yml
 create mode 100644 ci/qemu-x86.yml
 create mode 100644 ci/testimage.yml
 create mode 100755 ci/update-repos

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
new file mode 100644
index 000000000000..06cdf535e53b
--- /dev/null
+++ b/.gitlab-ci.yml
@@ -0,0 +1,172 @@
+image: ghcr.io/siemens/kas/kas
+
+  # First do a common bootstrap, and then build all the targets
+stages:
+  - prep
+  - bootstrap
+  - build
+  - test
+
+# Common job fragment to get a worker ready
+.setup:
+  stage: build
+  variables:
+    KAS_WORK_DIR: $CI_PROJECT_DIR/work
+    KAS_REPO_REF_DIR: $CI_BUILDS_DIR/persist/repos
+    SSTATE_DIR: $CI_BUILDS_DIR/persist/sstate
+    DL_DIR: $CI_BUILDS_DIR/persist/downloads
+    BB_LOGCONFIG: $CI_PROJECT_DIR/ci/logging.yml
+  before_script:
+    - echo KAS_WORK_DIR = $KAS_WORK_DIR
+    - echo SSTATE_DIR = $SSTATE_DIR
+    - echo DL_DIR = $DL_DIR
+    - mkdir --verbose --parents $KAS_WORK_DIR $KAS_REPO_REF_DIR $SSTATE_DIR $DL_DIR
+
+# Generalised fragment to do a Kas build
+.build:
+  extends: .setup
+  script:
+  - KASFILES=$(./ci/jobs-to-kas $CI_JOB_NAME)
+  - kas shell --update --force-checkout $KASFILES -c 'cat conf/*.conf'
+  - kas build $KASFILES
+  - ./ci/check-warnings $KAS_WORK_DIR/build/warnings.log
+
+# KAS testing
+.test:
+  extends: .setup
+  stage: test
+  script:
+    - KASFILES=$(./ci/jobs-to-kas $CI_JOB_NAME)
+    - kas build $KASFILES -c testimage
+
+
+#
+# Prep stage, update repositories once
+#
+update-repos:
+  extends: .setup
+  stage: prep
+  script:
+  - flock --verbose --timeout 60 $KAS_REPO_REF_DIR ./ci/update-repos
+
+
+#
+# Bootstrap stage, machine coverage
+#
+
+# What percentage of machines in the layer do we build
+machine-coverage:
+  stage: bootstrap
+  script:
+  - ./ci/check-machine-coverage
+  coverage: '/Coverage: \d+/'
+
+
+#
+# Build stage, the actual build jobs
+#
+
+96b-avenger96:
+  extends: .build
+
+96b-nitrogen:
+  extends: .build
+
+acrn:
+  extends: .build
+
+qemu-cortex-m3:
+  extends: .build
+  artifacts:
+    paths:
+      - work/build/tmp-newlib/deploy/images/qemu-cortex-m3/*
+    expire_in: 1 day
+
+qemu-nios2:
+  extends: .build
+  artifacts:
+    paths:
+      - work/build/tmp-newlib/deploy/images/qemu-nios2/*
+    expire_in: 1 day
+  allow_failure: true
+
+qemu-x86:
+  extends: .build
+  artifacts:
+    paths:
+      - work/build/tmp-newlib/deploy/images/qemu-x86/*
+    expire_in: 1 day
+
+
+#
+# Third phase, the test jobs
+#
+
+# QEMU based machines can use testimage, others will need something else (i.e., LAVA)
+
+qemu-cortex-m3/testimage:
+  extends: .test
+  needs:
+    - job: qemu-cortex-m3
+
+qemu-nios2/testimage:
+  extends: .test
+  needs:
+    - job: qemu-nios2
+  allow_failure: true
+
+qemu-x86/testimage:
+  extends: .test
+  needs:
+    - job: qemu-x86
+
+
+#
+# Utility tasks, not executed automatically
+#
+
+# Make the persistant files modifiable by all runners
+chmod-presistent:
+  extends: .setup
+  stage: prep
+  when: manual
+  script:
+  - chmod -R 755 $CI_BUILDS_DIR/persist/*
+
+delete-dl-dir:
+  extends: .setup
+  stage: prep
+  when: manual
+  script:
+  - rm -rf $DL_DIR/*
+
+delete-repo-dir:
+  extends: .setup
+  stage: prep
+  when: manual
+  script:
+  - rm -rf $KAS_REPO_REF_DIR/*
+
+# Delete all sstate
+delete-sstate:
+  extends: .setup
+  stage: prep
+  when: manual
+  script:
+  - rm -rf $SSTATE_DIR/*
+
+# Wipe out old sstate
+prune-sstate:
+  extends: .setup
+  stage: prep
+  when: manual
+  script:
+  - find $SSTATE_DIR -type f -atime +30 -delete
+
+# Report on disk usage
+usage:
+  extends: .setup
+  stage: prep
+  when: manual
+  script:
+  - du -h -s $DL_DIR $SSTATE_DIR $KAS_REPO_REF_DIR
diff --git a/ci/96b-avenger96.yml b/ci/96b-avenger96.yml
new file mode 100644
index 000000000000..9ab58aa83ffa
--- /dev/null
+++ b/ci/96b-avenger96.yml
@@ -0,0 +1,9 @@
+header:
+  version: 9
+  includes:
+    - base.yml
+
+machine: 96b-avenger96
+
+target:
+  - zephyr-philosophers
diff --git a/ci/96b-nitrogen.yml b/ci/96b-nitrogen.yml
new file mode 100644
index 000000000000..ecd96fb67136
--- /dev/null
+++ b/ci/96b-nitrogen.yml
@@ -0,0 +1,6 @@
+header:
+  version: 9
+  includes:
+    - base.yml
+
+machine: 96b-nitrogen
diff --git a/ci/acrn.yml b/ci/acrn.yml
new file mode 100644
index 000000000000..53748defebec
--- /dev/null
+++ b/ci/acrn.yml
@@ -0,0 +1,6 @@
+header:
+  version: 9
+  includes:
+    - base.yml
+
+machine: acrn
diff --git a/ci/base.yml b/ci/base.yml
new file mode 100644
index 000000000000..8e6cf0caf525
--- /dev/null
+++ b/ci/base.yml
@@ -0,0 +1,35 @@
+header:
+  version: 9
+  includes:
+    - meta-python.yml
+
+distro: zephyr
+
+defaults:
+  repos:
+    refspec: hardknott
+
+repos:
+  meta-zephyr:
+
+  poky:
+    url: https://git.yoctoproject.org/git/poky
+    layers:
+      meta:
+      meta-poky:
+
+env:
+  BB_LOGCONFIG: ""
+
+local_conf_header:
+  base: |
+    CONF_VERSION = "1"
+    INHERIT += "rm_work"
+    ERROR_QA = "${WARN_QA}"
+  testimage: |
+    IMAGE_CLASSES += "testimage"
+
+machine: unset
+
+target:
+  - zephyr-kernel-test-device
diff --git a/ci/check-machine-coverage b/ci/check-machine-coverage
new file mode 100755
index 000000000000..726714d8b0fe
--- /dev/null
+++ b/ci/check-machine-coverage
@@ -0,0 +1,26 @@
+#! /usr/bin/env python3
+
+from pathlib import Path
+import sys
+
+metazephyr = Path.cwd()
+
+if metazephyr.name != "meta-zephyr":
+    print("Not running inside meta-zephyr")
+    sys.exit(1)
+
+# All machine configurations
+machines = metazephyr.glob("conf/machine/*.conf")
+machines = set(p.stem for p in machines)
+
+# All kas files
+kas = metazephyr.glob("ci/*.yml")
+kas = set(p.stem for p in kas)
+
+missing = machines - kas
+print(f"The following machines are missing: {', '.join(sorted(missing))}.")
+
+covered = len(machines) - len(missing)
+total = len(machines)
+percent = int(covered / total * 100)
+print(f"Coverage: {percent}%")
diff --git a/ci/check-warnings b/ci/check-warnings
new file mode 100755
index 000000000000..cc396423d8bf
--- /dev/null
+++ b/ci/check-warnings
@@ -0,0 +1,18 @@
+#! /bin/bash
+
+# Expects the path to a log file as $1, and if this file has any content
+# then display the contents and exit with an error code.
+
+set -e -u
+
+LOGFILE=$1
+
+if test -s $LOGFILE; then
+    echo ==============================
+    echo The build had warnings/errors:
+    echo ==============================
+    cat $LOGFILE
+    exit 1
+fi
+
+exit 0
diff --git a/ci/jobs-to-kas b/ci/jobs-to-kas
new file mode 100755
index 000000000000..70579703bc07
--- /dev/null
+++ b/ci/jobs-to-kas
@@ -0,0 +1,19 @@
+#! /bin/bash
+
+# Read a GitLab CI job name on $1 and transform it to a
+# list of Kas yaml files
+
+set -e -u
+
+# Read Job namne from $1 and split on /
+IFS=/ read -r -a PARTS<<<$1
+
+# Prefix each part with ci/
+PARTS=("${PARTS[@]/#/ci/}")
+
+# Suffix each part with .yml
+PARTS=("${PARTS[@]/%/.yml}")
+
+# Print colon-separated
+IFS=":"
+echo "${PARTS[*]}"
diff --git a/ci/logging.yml b/ci/logging.yml
new file mode 100644
index 000000000000..3af10295f8f3
--- /dev/null
+++ b/ci/logging.yml
@@ -0,0 +1,13 @@
+# Python logging configuration to write all warnings to a separate file
+version: 1
+
+handlers:
+  warnings:
+    class: logging.FileHandler
+    level: WARNING
+    filename: warnings.log
+    formatter: BitBake.logfileFormatter
+
+loggers:
+  BitBake:
+    handlers: [warnings]
diff --git a/ci/meta-oe.yml b/ci/meta-oe.yml
new file mode 100644
index 000000000000..ccd34f3a3ffa
--- /dev/null
+++ b/ci/meta-oe.yml
@@ -0,0 +1,8 @@
+header:
+  version: 9
+
+repos:
+  meta-openembedded:
+    url: https://git.openembedded.org/meta-openembedded
+    layers:
+      meta-oe:
diff --git a/ci/meta-python.yml b/ci/meta-python.yml
new file mode 100644
index 000000000000..3f76118ccd09
--- /dev/null
+++ b/ci/meta-python.yml
@@ -0,0 +1,10 @@
+header:
+  version: 9
+  includes:
+    - meta-oe.yml
+
+repos:
+  meta-openembedded:
+    url: https://git.openembedded.org/meta-openembedded
+    layers:
+      meta-python:
diff --git a/ci/qemu-cortex-m3.yml b/ci/qemu-cortex-m3.yml
new file mode 100644
index 000000000000..73b46039abed
--- /dev/null
+++ b/ci/qemu-cortex-m3.yml
@@ -0,0 +1,6 @@
+header:
+  version: 9
+  includes:
+    - base.yml
+
+machine: qemu-cortex-m3
diff --git a/ci/qemu-nios2.yml b/ci/qemu-nios2.yml
new file mode 100644
index 000000000000..75166054c265
--- /dev/null
+++ b/ci/qemu-nios2.yml
@@ -0,0 +1,6 @@
+header:
+  version: 9
+  includes:
+    - base.yml
+
+machine: qemu-nios2
diff --git a/ci/qemu-x86.yml b/ci/qemu-x86.yml
new file mode 100644
index 000000000000..c5d23f471bf8
--- /dev/null
+++ b/ci/qemu-x86.yml
@@ -0,0 +1,6 @@
+header:
+  version: 9
+  includes:
+    - base.yml
+
+machine: qemu-x86
diff --git a/ci/testimage.yml b/ci/testimage.yml
new file mode 100644
index 000000000000..19ea66773b94
--- /dev/null
+++ b/ci/testimage.yml
@@ -0,0 +1,5 @@
+header:
+  version: 9
+
+target:
+  - zephyr-kernel-test-device
diff --git a/ci/update-repos b/ci/update-repos
new file mode 100755
index 000000000000..fa638aad2efb
--- /dev/null
+++ b/ci/update-repos
@@ -0,0 +1,40 @@
+#! /usr/bin/env python3
+
+# Update clones of the repositories we need in KAS_REPO_REF_DIR to speed up fetches
+
+import sys
+import os
+import subprocess
+import pathlib
+
+def repo_shortname(url):
+    # Taken from Kas (Repo.__getattr__) to ensure the logic is right
+    from urllib.parse import urlparse
+    url = urlparse(url)
+    return ('{url.netloc}{url.path}'
+            .format(url=url)
+            .replace('@', '.')
+            .replace(':', '.')
+            .replace('/', '.')
+            .replace('*', '.'))
+
+repositories = (
+    "https://git.yoctoproject.org/git/poky",
+    "https://git.openembedded.org/meta-openembedded",
+)
+
+if __name__ == "__main__":
+    if "KAS_REPO_REF_DIR" not in os.environ:
+        print("KAS_REPO_REF_DIR needs to be set")
+        sys.exit(1)
+
+    base_repodir = pathlib.Path(os.environ["KAS_REPO_REF_DIR"])
+
+    for repo in repositories:
+        repodir = base_repodir / repo_shortname(repo)
+        if repodir.exists():
+            print("Updating %s..." % repo)
+            subprocess.run(["git", "-C", repodir, "fetch"], check=True)
+        else:
+            print("Cloning %s..." % repo)
+            subprocess.run(["git", "clone", "--bare", repo, repodir], check=True)
-- 
2.20.1

