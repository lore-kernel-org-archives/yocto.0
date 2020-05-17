Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web10.24101.1589728899534548186
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 May 2020 08:21:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OEWplihl;
 spf=pass (domain: gmail.com, ip: 209.85.128.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f42.google.com with SMTP id n5so7583905wmd.0
        for <yocto@lists.yoctoproject.org>; Sun, 17 May 2020 08:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3kFaBNwkSFVMhlAwJFYfJjoNSzs5ORzBWYubvgBMikE=;
        b=OEWplihlM6bSzMpVAyoptSQ2+C4UYowSJ8ugHh2zgpV1FYNP76HOu/7bKvBVq5mwKD
         eGlBYb5W+1C8ixTV+R3vs/xcbsFJsHX51Zggu9+FkJT1UmJzxy0Ug3GJiOwZA7680tCh
         Nlxlo/NTGlL9BeeegB7gYCAkoJtZCBUziwOpvY+DSNClZzb7Tp9FHf2660NG6Y4pObmo
         h1XXnY3v24n5OljXL0zroEkErzw4zGl080G3P28AqNBIL7Scnd6boZX38ZUvjO8LiBnE
         x3Zn4+jpfYZvKg6MdLwl5PRvgHeLmJRHOgWoPL540EVsmtMoQYjP/mOVm/RNosznU/yk
         WG5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3kFaBNwkSFVMhlAwJFYfJjoNSzs5ORzBWYubvgBMikE=;
        b=WstoBdQLyP/895bkhZ5yZbFgBlqCAzMtd7rO2BTh+5UOUN9OpIBG/qySfamWZ6rjPa
         lvT6C9gB3oMOgnG9gy0JDNTsQdBd/vy/ncLqwlaO9EqHpLMvW7lUonm7j3xRYvhXn9cR
         qZuFhabUYfFgoJUjqkm+LYfBZ424lrPyXsNuoRrJSGXfZv362utOaI4RtA0qz2Ly/P/f
         ZdCB11f1283DjSEaYJmA4U2cODdw+Ppix1gbZX48NLyNah4Xrv1m5VouR8aM1VxCQFBc
         xcqa4QouZDTrOmX2lfnO9yZmhAFeND96eEUMSoyLGCCtRqZYo4rkWrIBv+6n8eDZC39Q
         vYRw==
X-Gm-Message-State: AOAM533BiCNarnaBvWiumvjOPTNCD9hfNbTQ4sjkAOoLJMUf07KBhly8
	RbXy4ncxpaLWH7U/O0Fo9RvQhf0Z
X-Google-Smtp-Source: ABdhPJxNJvbiDQGQIU9cF2GM+8nnMsrmJQscgN+4F9j2nK3p6UEfBfv+oU4JPOBAhXJnDIS1yBIw+Q==
X-Received: by 2002:a7b:c41a:: with SMTP id k26mr14760352wmi.85.1589728897706;
        Sun, 17 May 2020 08:21:37 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from linux-f9zs.site ([2a02:2450:1011:56f:238d:84be:b349:9184])
        by smtp.gmail.com with ESMTPSA id c19sm12983563wrb.89.2020.05.17.08.21.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 May 2020 08:21:37 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] scripts: add a pair of scripts to set up and run Auto Upgrade Helper
Date: Sun, 17 May 2020 17:21:09 +0200
Message-Id: <20200517152109.23350-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This allows automating its setup and execution on all autobuilder worker machines;
previously there was a static setup on a dedicated machine, which wasn't
great from maintenance perspective.

To use:

scripts/setup-auh target_dir
scripts/run-auh target_dir

(run-auh can be run several times in a directory that
was previously set up)

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 scripts/auh-config/local.conf.append   |  3 +++
 scripts/auh-config/upgrade-helper.conf | 33 ++++++++++++++++++++++++++
 scripts/run-auh                        | 32 +++++++++++++++++++++++++
 scripts/setup-auh                      | 26 ++++++++++++++++++++
 4 files changed, 94 insertions(+)
 create mode 100644 scripts/auh-config/local.conf.append
 create mode 100644 scripts/auh-config/upgrade-helper.conf
 create mode 100755 scripts/run-auh
 create mode 100755 scripts/setup-auh

diff --git a/scripts/auh-config/local.conf.append b/scripts/auh-config/local.conf.append
new file mode 100644
index 0000000..9628737
--- /dev/null
+++ b/scripts/auh-config/local.conf.append
@@ -0,0 +1,3 @@
+
+INHERIT += "buildhistory"
+LICENSE_FLAGS_WHITELIST = "commercial"
diff --git a/scripts/auh-config/upgrade-helper.conf b/scripts/auh-config/upgrade-helper.conf
new file mode 100644
index 0000000..fbf5d8a
--- /dev/null
+++ b/scripts/auh-config/upgrade-helper.conf
@@ -0,0 +1,33 @@
+[maintainer_override]
+# mails for recipe upgrades will go to john.doe instead of jane.doe, etc
+#ross.burton@intel.com=anibal.limon@linux.intel.com
+
+[settings]
+# recipes in blacklist will be skipped
+blacklist=linux-libc-headers linux-yocto alsa-utils-scripts build-appliance-image
+#blacklist=python python3 glibc gcc linux-libc-headers linux-yocto-rt linux-yocto linux-yocto-dev linux-yocto-tiny qt4-x11-free qt4-embedded qt4-x11-free qt4e-demo-image gnome-common gnome-desktop3 gnome-desktop-testing adt-installer build-appliance-image
+# only recipes belonging to maintainers in whitelist will be attempted
+#maintainers_whitelist=anibal.limon@linux.intel.com
+# SMTP server
+smtp=smtp1.yoctoproject.org:25
+# from whom should the mails arrive
+from=auh@auh.yoctoproject.org
+# who should get the status mail with statistics, at the end
+status_recipients=openembedded-core@lists.openembedded.org
+# clean sstate directory before upgrading
+#clean_sstate=yes
+# clean tmp directory before upgrading
+#clean_tmp=yes
+# machines to test build with
+#machines=qemux86 qemux86-64 qemuarm qemumips qemuppc
+#machines=qemux86
+
+buildhistory=yes
+#testimage=yes
+#testimage_name=core-image-minimal
+
+#workdir=/home/auh/work/
+#publish_work_url=https://logs.yoctoproject.org/auh/
+
+commit_revert_policy=all
+
diff --git a/scripts/run-auh b/scripts/run-auh
new file mode 100755
index 0000000..29a8044
--- /dev/null
+++ b/scripts/run-auh
@@ -0,0 +1,32 @@
+#!/bin/bash
+# Run Auto Upgrade Helper in a directory set up by setup_auh.
+#
+# Called with $1 - the directory where the setup was created
+
+if [ -z $1 ]; then
+  echo "Use: $0 auh_setup_dir"
+  exit 1
+fi
+
+full_dir=$(readlink -e $1)
+
+auh_dir=$full_dir/auto-upgrade-helper
+poky_dir=$full_dir/poky
+build_dir=$full_dir/build
+sstate_dir=$full_dir/build/sstate-cache
+
+pushd $poky_dir
+
+# Base the upgrades on poky master
+git fetch origin
+git checkout -B tmp-auh-upgrades origin/master
+
+source $poky_dir/oe-init-build-env $build_dir
+$auh_dir/upgradehelper.py -e all
+
+# clean up to avoid the disk filling up
+rm -rf $build_dir/tmp/
+rm -rf $build_dir/workspace/sources/*
+find $sstate_dir -atime +10 -delete
+
+popd
diff --git a/scripts/setup-auh b/scripts/setup-auh
new file mode 100755
index 0000000..23f3d44
--- /dev/null
+++ b/scripts/setup-auh
@@ -0,0 +1,26 @@
+#!/bin/bash
+# Initialize Auto Upgrade Helper in a directory.
+#
+# Called with $1 - the directory to place the setup
+CONFIG_DIR=`dirname $0`/auh-config
+
+if [ -z $1 ]; then
+  echo "Use: $0 target_dir"
+  exit 1
+fi
+
+mkdir -p $1
+pushd $1
+
+git clone git://git.yoctoproject.org/poky
+pushd poky
+git config user.email auh@auh.yoctoproject.org
+git config user.name "Auto Upgrade Helper"
+popd
+git clone git://git.yoctoproject.org/auto-upgrade-helper
+source poky/oe-init-build-env build
+mkdir -p upgrade-helper
+popd
+
+cp $CONFIG_DIR/upgrade-helper.conf $1/build/upgrade-helper
+cat $CONFIG_DIR/local.conf.append >> $1/build/conf/local.conf
-- 
2.26.2

