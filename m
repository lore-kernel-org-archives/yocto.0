Return-Path: <david.pierret@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DA74C25B67
	for <webhook@archiver.kernel.org>; Thu, 26 Oct 2023 13:04:16 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web11.69817.1698325453883380732
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Oct 2023 06:04:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=IRRRCSXS;
 spf=pass (domain: smile.fr, ip: 209.85.208.178, mailfrom: david.pierret@smile.fr)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2c503da4fd6so13173141fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 26 Oct 2023 06:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1698325451; x=1698930251; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3Q8LwBsbGzNAKERJ65BmUGJRkmW7YkrqGTaZJFn9BHk=;
        b=IRRRCSXSN7nUN9CBHW4lzN2HORrGSEbccGZisxSJJFTRC6zIt7e3yBWbs9+zEMlbyn
         Hp5SgP5VGxV28wAZAmI9MjXGFKXsf0Cw3O3omDcXYXj1DBN17mDHwbIuSbYfVDNvTNDk
         OOKsYF4EsVmqvkS70X8KoIKUMOAabYqzNcg3YyBDHOsUExSC6chLRTCR+lVtsEGTXvEL
         pXNOWuqKnb31Nd4a71JuWJzpW1jxSMXOOs7OZeN4Ig0afUJ5WvRE9LVI/Jz1zQL4IsJK
         99pH4JccLLUwBdJbkbD6CSBDNkAGXGwW5vEPmrd6V/If+RwwjAc4gE7fbHhfelAn0fXR
         kF8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698325451; x=1698930251;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Q8LwBsbGzNAKERJ65BmUGJRkmW7YkrqGTaZJFn9BHk=;
        b=ZHAUmN1sV4hL9+RWV6sR6MGF5jmiI9o/ogtCWUZwodfw3yAS76E0zJj/tU/cvAp8Or
         sFimxW3+T/Sgm7browusWFmz5+TYl+ieHB8zlea48T4xy2+8JBi9ZcC3VYsHJB5jRLqF
         oxrqRJjcQEKHiqKThhhBHED70BK/56tAfbr1jEMlzn2Ph5ucwmgc3xCUECNzuUlJiwfi
         I+9Dz1JBF2OAgQu29evnJ79zWGHg0c0FkFaHVXlXB2FIyH94kT3ePBvyV4dFzq3P29JK
         F9kECBlZCkAEQmqgjsVWWR/7FmZRYPY1ZPTA04tSbGMyVPF6hD2T3s/FQWTKocDrQxv9
         P3OQ==
X-Gm-Message-State: AOJu0Yy1t0TLJNhcyhZelgplpmywpM9jBx/urCRIWxqWJkW942PdldHq
	VrCkoFw2A9aae7N5XMdu+a8ynPzWuPUr68xF+Tk=
X-Google-Smtp-Source: AGHT+IEgB9dUcaoH7S9FFWheIuxlzjMlfvL8AB8/F9OCzD2OinaCmLGliCiv17H8kdWFZH72kIhQlQ==
X-Received: by 2002:a2e:b896:0:b0:2c5:103b:b0af with SMTP id r22-20020a2eb896000000b002c5103bb0afmr12740893ljp.24.1698325451044;
        Thu, 26 Oct 2023 06:04:11 -0700 (PDT)
Received: from P-TOU-PARSEC.tailace47.ts.net (static-css-ccs-204145.business.bouyguestelecom.com. [176.157.204.145])
        by smtp.gmail.com with ESMTPSA id g21-20020a05600c311500b0040651505684sm2611746wmo.29.2023.10.26.06.04.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 06:04:10 -0700 (PDT)
From: David Pierret <david.pierret@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: David Pierret <david.pierret@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH v3] AUH: Add Openembedded auto-update-helper with list of layer to test
Date: Thu, 26 Oct 2023 15:03:40 +0200
Message-Id: <20231026130340.2070302-1-david.pierret@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Oct 2023 13:04:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61489

- Modify the setup-auh to use repositories cloned by the auto-builder.
  Manage the case where meta-openembedded is not used.

- Modify the run-auh to manage the optional additional layer.
  Only 1 layer can be provided.

- Add auh-meta-openembedded job with 1 step per layer.

Signed-off-by: David Pierret <david.pierret@smile.fr>
---
 config.json       | 102 ++++++++++++++++++++++++++++++++++++++++++++--
 scripts/run-auh   |  39 ++++++++++++------
 scripts/setup-auh |  34 ++++++++++------
 3 files changed, 146 insertions(+), 29 deletions(-)

diff --git a/config.json b/config.json
index 3acb710..a168e48 100644
--- a/config.json
+++ b/config.json
@@ -1416,9 +1416,99 @@
             "TEMPLATE" : "buildperf"
         },
         "auh" : {
-            "EXTRAPLAINCMDS" : [
-                "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
-            ]
+            "NEEDREPOS" : ["poky", "auto-upgrade-helper"],
+            "step1" : {
+                "shortname" : "setup AUH",
+                "EXTRAPLAINCMDS" : [
+                    "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}"
+                ]
+            },
+            "step2" : {
+                "shortname" : "run AUH poky",
+                "EXTRAPLAINCMDS" : [
+                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
+                ]
+            }
+        },
+        "auh-meta-openembedded" : {
+            "NEEDREPOS" : ["poky", "meta-openembedded", "auto-upgrade-helper"],
+            "step1" : {
+                "shortname" : "setup AUH",
+                "EXTRAPLAINCMDS" : [
+                    "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}"
+                ]
+            },
+            "step2" : {
+                "shortname" : "run AUH for layer meta-oe",
+
+                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-oe"],
+                "EXTRAPLAINCMDS" : [
+                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-oe"
+                ]
+            },
+            "step3" : {
+                "shortname" : "run AUH for layer meta-python",
+                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-python"],
+                "EXTRAPLAINCMDS" : [
+                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-python"
+                ]
+            },
+            "step4" : {
+                "shortname" : "run AUH for layer meta-perl",
+                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-perl"],
+                "EXTRAPLAINCMDS" : [
+                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-perl"
+                ]
+            },
+            "step5" : {
+                "shortname" : "run AUH for layer meta-networking",
+                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-networking"],
+                "EXTRAPLAINCMDS" : [
+                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-networking"
+                ]
+            },
+            "step6" : {
+                "shortname" : "run AUH for layer meta-multimedia",
+                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-multimedia"],
+                "EXTRAPLAINCMDS" : [
+                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-multimedia"
+                ]
+            },
+            "step7" : {
+                "shortname" : "run AUH for layer meta-gnome",
+                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-gnome"],
+                "EXTRAPLAINCMDS" : [
+                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-gnome"
+                ]
+            },
+            "step8" : {
+                "shortname" : "run AUH for layer meta-xfce",
+                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-xfce"],
+                "EXTRAPLAINCMDS" : [
+                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-xfce"
+                ]
+            },
+            "step9" : {
+                "shortname" : "run AUH for layer meta-filesystems",
+                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-filesystems"],
+                "EXTRAPLAINCMDS" : [
+                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-filesystems"
+                ]
+            },
+            "step10" : {
+                "shortname" : "run AUH for layer meta-initramfs",
+                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-initramfs"],
+                "EXTRAPLAINCMDS" : [
+                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-initramfs"
+                ]
+            },
+            "step11" : {
+                "shortname" : "run AUH for layer meta-webserver",
+                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-webserver"],
+                "EXTRAPLAINCMDS" : [
+                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-webserver"
+                ]
+            }
         },
         "a-quick" : {
             "TEMPLATE" : "trigger-build"
@@ -1531,6 +1621,12 @@
             "branch" : "master",
             "revision" : "HEAD",
             "no-layer-add" : true
+        },
+        "auto-upgrade-helper" : {
+            "url" : "git://git.yoctoproject.org/auto-upgrade-helper",
+            "branch" : "master",
+            "revision" : "HEAD",
+            "no-layer-add" : true
         }
     },
     "buildtools" : {
diff --git a/scripts/run-auh b/scripts/run-auh
index 0419dd1..f59c561 100755
--- a/scripts/run-auh
+++ b/scripts/run-auh
@@ -7,28 +7,41 @@
 # Called with $1 - the directory where the setup was created
 
 if [ -z $1 ]; then
-  echo "Use: $0 auh_setup_dir [publish_dir]"
+  echo "Use: $0 [auh_setup_dir] [publish_dir] [meta_dir] [meta_list]"
   exit 1
 fi
 
-full_dir=$(readlink -e $1)
+build_dir=$(readlink -e $1)
 
-auh_dir=$full_dir/auto-upgrade-helper
-poky_dir=$full_dir/poky
-build_dir=$full_dir/build
-sstate_dir=$full_dir/build/sstate-cache
+auh_dir=$build_dir/../auto-upgrade-helper
+poky_dir=$build_dir/../poky
+sstate_dir=$build_dir/sstate-cache
 
 pushd $poky_dir
+  # Base the upgrades on poky master
+  git fetch origin
+  git checkout -B tmp-auh-upgrades origin/master
+popd
+
+LAYERS_ARGS=''
+# if layer arguments are provided
+if [ ! -z $3 ]; then
+  meta_dir=$3
+  meta_layer=$4
+  machine_list="qemux86 qemux86-64 qemuarm qemumips qemuppc qemux86_musl"
+
+  pushd $meta_dir || exit 1
+    # Base the upgrades on master branch
+    git fetch origin
+    git checkout -B tmp-auh-upgrades origin/main
+  popd
 
-# Base the upgrades on poky master
-git fetch origin
-git checkout -B tmp-auh-upgrades origin/master
+  LAYERS_ARGS="--layer-dir ${meta_dir} --layer-names ${meta_layer} --layer-machines ${machine_list}"
+fi
 
-source $poky_dir/oe-init-build-env $build_dir
-$auh_dir/upgrade-helper.py -e all
+# execute upgrade-helper script on all recipes
+$auh_dir/upgrade-helper.py -e ${LAYERS_ARGS} -- all
 
 if [ -n $2 ]; then
   cp -rf $build_dir/upgrade-helper/* $2
 fi
-
-popd
diff --git a/scripts/setup-auh b/scripts/setup-auh
index d6b83fe..f8bd8fd 100755
--- a/scripts/setup-auh
+++ b/scripts/setup-auh
@@ -4,26 +4,34 @@
 #
 # Initialize Auto Upgrade Helper in a directory.
 #
-# Called with $1 - the directory to place the setup
+# Called with $1 - the build directory
 CONFIG_DIR=`dirname $0`/auh-config
 
 if [ -z $1 ]; then
-  echo "Use: $0 target_dir"
+  echo "Use: $0 build_dir"
   exit 1
 fi
 
-mkdir -p $1
-pushd $1
-
-git clone git://git.yoctoproject.org/poky
-pushd poky
+# Setup git repository with name and email to be able to commit
+# the upgrade patch.
+# Assume repositories are cloned on ${build_dir}/../
+pushd $1/../poky
 git config user.email auh@yoctoproject.org
 git config user.name "Auto Upgrade Helper"
 popd
-git clone git://git.yoctoproject.org/auto-upgrade-helper
-source poky/oe-init-build-env build
-mkdir -p upgrade-helper
-popd
+# handle the case where meta-openembedded repository is used
+# todo: detect any layer ?
+if [ -d $1/../meta-openembedded ]; then
+  pushd $1/../meta-openembedded
+  git config user.email auh@yoctoproject.org
+  git config user.name "Auto Upgrade Helper"
+  popd
+fi
+
+# auto-upgrade-helper doesn't need to be configured.
 
-cp $CONFIG_DIR/upgrade-helper.conf $1/build/upgrade-helper
-cat $CONFIG_DIR/local.conf.append >> $1/build/conf/local.conf
+# create and copy the upgrade helper configuration file
+mkdir -p $1/upgrade-helper
+cp $CONFIG_DIR/upgrade-helper.conf $1/upgrade-helper
+# amend the local.conf
+cat $CONFIG_DIR/local.conf.append >> $1/conf/local.conf
-- 
2.39.2


