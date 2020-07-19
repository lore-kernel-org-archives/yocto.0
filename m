Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web11.9240.1595122204465349271
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jul 2020 18:30:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IjA97/NW;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id n5so8585018pgf.7
        for <yocto@lists.yoctoproject.org>; Sat, 18 Jul 2020 18:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=TGFhXTCknBULeJKt1SvDLmbHbz+nG0nDKiSlp4cCRJk=;
        b=IjA97/NWa5gPrN02PgIR14Y6M2nAU8lLS3k8hMzGnOn3RDSpx1v/jUThgng9i6kT3/
         mtCEIwUP7Ol3iUCMams5nNmqtR+JlweSfgQXO4+rQsg3D+JsIHQgG09LkXE5YusF65ju
         tD24oskjtI9qHbjPVX6pQ6+i7i7YyzNmfIKqpqLKrZ6QSz5BmryDhfFZXDA+ezupUL1C
         GGcpmhyKq44uMOu1OE/zLBQs6MMgHMXKtOCDGDTJAwWcLSe6qfm9YuGkcFDHlXFe/L+4
         28gBu6zMZIXFArfHiOlaR+3NHZ27AConutaezK7GCcFPcuxKkBMCax57qfsgvStDbb9u
         j7Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=TGFhXTCknBULeJKt1SvDLmbHbz+nG0nDKiSlp4cCRJk=;
        b=ho0Auhlb8Z0VLvbrJe2a2DEmie9evbozZtyBAa99dJVkBQ5j7r2FMo9+qyNc+C3+hQ
         jfxyDoZYKhN0daShrU393n5zah9R4YWKnkoTUGLGncOi1dqZZqPu4fXAWRmMJRwwbWGr
         FHFnJHbWEHyDbkvImghNoJksqNiD+3sfsSVeTT08cxJt5eMM5wONc4lh+JVzykGEYg/a
         SI/1zVcIX+yY+wlVQVwCjaJwhLrxFiICvMrVUkwjP1ZbHRoRr3Et2JtHW5aMs6KVq5Fe
         2NVY/IsFsuoSBB48ogU8jTsWSfzyTdLIqK63tBs70YJEF97TgfOYlhOrpMQXiLtUViqx
         Up2A==
X-Gm-Message-State: AOAM533x/wg+HDwuez5NBPtztoigBTYnLggP+NeKRCucCNPPKhy8gG9I
	MJoFUWH0Xy8JnjwTJ/nx8En7dCMRccU=
X-Google-Smtp-Source: ABdhPJzS4l1KgeMM7P+LP6pOjMwjSU4KmK8tpYwZBNHBe6ukHNxVAZMxz61r5QtAzKKNY/KtoyvPsw==
X-Received: by 2002:a62:8782:: with SMTP id i124mr13717630pfe.267.1595122203392;
        Sat, 18 Jul 2020 18:30:03 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:8d90:30de:6ec9:116a])
        by smtp.gmail.com with ESMTPSA id v15sm11276790pgo.15.2020.07.18.18.30.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jul 2020 18:30:02 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] add gitlab framework and qemu machine
Date: Sat, 18 Jul 2020 18:30:01 -0700
Message-Id: <20200719013001.4080-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Machines:
qemux86
qemux86-64
qemuarm
qemuarm64
qemuppc
qemumips84
qemuriscv64

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .gitlab-ci.yml            | 56 +++++++++++++++++++++++++++++++++++++++
 kas/kas-security-base.yml | 52 ++++++++++++++++++++++++++++++++++++
 kas/qemuarm.yml           |  6 +++++
 kas/qemuarm64.yml         |  6 +++++
 kas/qemuppc.yml           |  6 +++++
 kas/qemuriscv64.yml       |  6 +++++
 kas/qemux86-64.yml        |  6 +++++
 kas/qemux86.yml           |  6 +++++
 scripts/ci-build.sh       | 10 +++++++
 scripts/ci-cleanup.sh     |  7 +++++
 10 files changed, 161 insertions(+)
 create mode 100644 .gitlab-ci.yml
 create mode 100644 kas/kas-security-base.yml
 create mode 100644 kas/qemuarm.yml
 create mode 100644 kas/qemuarm64.yml
 create mode 100644 kas/qemuppc.yml
 create mode 100644 kas/qemuriscv64.yml
 create mode 100644 kas/qemux86-64.yml
 create mode 100644 kas/qemux86.yml
 create mode 100755 scripts/ci-build.sh
 create mode 100755 scripts/ci-cleanup.sh

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
new file mode 100644
index 0000000..f7517a5
--- /dev/null
+++ b/.gitlab-ci.yml
@@ -0,0 +1,56 @@
+stages:
+  - build
+
+.build:
+  stage: build
+  image: crops/poky
+  before_script:
+    - export PATH=~/.local/bin:$PATH
+    - wget https://bootstrap.pypa.io/get-pip.py
+    - python3 get-pip.py
+    - python3 -m pip install kas
+    - wget -q 'https://downloads.rclone.org/rclone-current-linux-amd64.zip'
+    - unzip -q rclone-current-linux-amd64.zip
+    - mv rclone-*-linux-amd64/rclone ~/.local/bin/
+    - rm -rf rclone-*-linux-amd64*
+  after_script:
+    - rm -rf build
+    - ./scripts/ci-cleanup.sh
+  cache:
+    paths:
+      - layers
+
+qemux86:
+  extends: .build
+  script:
+  - ./scripts/ci-build.sh  $CI_JOB_NAME security-build-image
+
+qemux86-64:
+  extends: .build
+  script:
+  - ./scripts/ci-build.sh  $CI_JOB_NAME security-build-image
+
+qemuarm:
+  extends: .build
+  script:
+  - ./scripts/ci-build.sh  $CI_JOB_NAME security-build-image
+
+qemuarm64:
+  extends: .build
+  script:
+  - ./scripts/ci-build.sh  $CI_JOB_NAME security-build-image
+
+qemumppc:
+  extends: .build
+  script:
+  - ./scripts/ci-build.sh  $CI_JOB_NAME security-build-image
+
+qemumips64:
+  extends: .build
+  script:
+  - ./scripts/ci-build.sh  $CI_JOB_NAME security-build-image
+
+qemuriscv64:
+  extends: .build
+  script:
+  - ./scripts/ci-build.sh  $CI_JOB_NAME security-build-image
diff --git a/kas/kas-security-base.yml b/kas/kas-security-base.yml
new file mode 100644
index 0000000..7f807d1
--- /dev/null
+++ b/kas/kas-security-base.yml
@@ -0,0 +1,52 @@
+header:
+  version: 8
+
+distro: poky
+
+repos:
+  meta-security:
+
+  poky:
+    url: https://git.yoctoproject.org/git/poky
+    refspec: master
+    layers:
+      meta:
+      meta-poky:
+      meta-yocto-bsp:
+
+  meta-openembedded:
+    url: http://git.openembedded.org/meta-openembedded
+    refspec: master
+    layers:
+      meta-oe:
+      meta-perl:
+      meta-python:
+      meta-networking:
+
+local_conf_header:
+  meta-security: |
+    CONF_VERSION = "1"
+    SOURCE_MIRROR_URL = "http://downloads.yoctoproject.org/mirror/sources/"
+    SSTATE_MIRRORS = "file://.* http://sstate.yoctoproject.org/dev/PATH;downloadfilename=PATH \n"
+    SSTATE_DIR = "/home/srv/sstate/master"
+    DL_DIR = "/home/srv/downloads/master"
+    BB_HASHSERVE = "auto"
+    BB_SIGNATURE_HANDLER = "OEEquivHash"
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
+  meta-security: |
+    POKY_BBLAYERS_CONF_VERSION = "2"
+    BBPATH = "${TOPDIR}"
+    BBFILES ?= ""
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
diff --git a/kas/qemuarm64.yml b/kas/qemuarm64.yml
new file mode 100644
index 0000000..d55adff
--- /dev/null
+++ b/kas/qemuarm64.yml
@@ -0,0 +1,6 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+machine: qemuarmu64
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
diff --git a/scripts/ci-build.sh b/scripts/ci-build.sh
new file mode 100755
index 0000000..b6f1dda
--- /dev/null
+++ b/scripts/ci-build.sh
@@ -0,0 +1,10 @@
+#! /bin/bash
+
+set -e
+
+CONF=$1
+shift 1
+IMAGES=$@
+
+( kas shell kas/${CONF}.yml -c "bitbake --setscene-only ${IMAGES}" || true ) | sed -e '/^NOTE: .*Started$/d' -e '/^NOTE: Running /d'
+kas shell kas/${CONF}.yml -c "bitbake --skip-setscene ${IMAGES}" | sed -e '/^NOTE: .*Started$/d' -e '/^NOTE: Running /d'
diff --git a/scripts/ci-cleanup.sh b/scripts/ci-cleanup.sh
new file mode 100755
index 0000000..df3b68f
--- /dev/null
+++ b/scripts/ci-cleanup.sh
@@ -0,0 +1,7 @@
+#! /bin/bash
+
+set -e
+
+export SSTATE_CACHE_DIR=/home/srv/sstate/master
+
+./poky/scripts/sstate-cache-management.sh -d -y
-- 
2.17.1

