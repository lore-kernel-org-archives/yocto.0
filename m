Return-Path: <david.pierret@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41103CD8C9B
	for <webhook@archiver.kernel.org>; Tue, 10 Oct 2023 14:42:50 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.93569.1696948967884715223
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Oct 2023 07:42:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=b42sq1dR;
 spf=pass (domain: smile.fr, ip: 209.85.128.41, mailfrom: david.pierret@smile.fr)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4066692ad35so53651575e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 07:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1696948966; x=1697553766; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Qji0XsjKiKalSEVwDph+d765h/yhAyv9vlcsoi9BwK0=;
        b=b42sq1dRxzx19T5M4lUdJ4VNAsw6RgoB1ivB7wmNtC8Ynqv5EMvunwADLJX9fv3q9V
         3cb57ug5a6LKm4uA7ZFEf5QviBBC4Ca9pKsrFoyg6vst+n+f8WSW0D4Ic8Xm3HAZq+xg
         5bYkaz2v1i66z8Zw07gO6eMouguksyAYuqwVHwnDlv639bgu0hx01oS+9PgZj4XmFhhO
         WEVZshAVkQZnjPP/F2vFDvldx7opSMxokllByI9Ma4A0hJ6EaKHqVjxJ7Xi5/68or3II
         arIjj4mbO8jLDQ23iiCkWnUCe3IPXN5bTHHDdWGFuA2iSE8tD2G0rSCY1pMMiF5eqaub
         ufRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696948966; x=1697553766;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qji0XsjKiKalSEVwDph+d765h/yhAyv9vlcsoi9BwK0=;
        b=kNq+JLlfRkN0Cw+/bMKAAo/RVECNevCd8zP13GB1rWbVcL/ivNBNVC6hOuLjrqtLxu
         Wn7X8STAnTRGn8uvr251Z4QSeWPU17WVrYhjiAhEPkZAbtY4vnXdox9pK0arofp6kwyq
         KMj5/rT+TWAz4KMcFGd0hsD0FRaC830IGV2uRl2Xzp4RxWgkmV9ET6V48AA85e1ZWtY/
         L8eNne3vBkw7yblnwLf3IlSJdJI/zS5JZYDQnXN5knL0StF5WpxGJNC6bEdIQ6c2skBh
         IZL8n9198tMTKv4VXPJi5Rcby24Lts1vbj6Ip5XtCGGRw2B7Db/SoVEtQLUdGQXfR1QN
         iVdQ==
X-Gm-Message-State: AOJu0YwuRP6bpm+tVIevcQ59jC9vFRKve9wf+K45QYO1WSCgni7Q47wa
	2vauAmuROWmlt8xbSiUJ8n96E2IsvSU/n/XiW+c=
X-Google-Smtp-Source: AGHT+IFYaSR4qaLa4s4t632UG1rhCWrE+ubHxOQ0onsvFKzozyUL2S2n/7U+yAEk8/VNvQIETJJtWw==
X-Received: by 2002:a1c:f718:0:b0:405:3a63:6d12 with SMTP id v24-20020a1cf718000000b004053a636d12mr16765192wmh.17.1696948965785;
        Tue, 10 Oct 2023 07:42:45 -0700 (PDT)
Received: from P-TOU-PARSEC.home ([2a01:cb19:8e26:3000:47b1:e79:5a4d:f0c3])
        by smtp.gmail.com with ESMTPSA id f23-20020a7bc8d7000000b003fe1c332810sm16573326wml.33.2023.10.10.07.42.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 07:42:45 -0700 (PDT)
From: David Pierret <david.pierret@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: David Pierret <david.pierret@smile.fr>,
	Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH] AUH: Add Openembedded auto-update-helper conf and run
Date: Tue, 10 Oct 2023 16:42:44 +0200
Message-Id: <20231010144244.3810965-1-david.pierret@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 14:42:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61305

- Add setup and run script openembedded specific
- Add upgrade-helper.in config template

auto-upgrade-helper script accept configurations to specify the layer
to be analysed. The .in file is modified by sed command to generate
the .conf file that match the meta to analyze.

Signed-off-by: David Pierret <david.pierret@smile.fr>
Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
---
 scripts/auh-config/upgrade-helper-oe.in | 40 +++++++++++++++++++++
 scripts/run-auh-oe                      | 46 +++++++++++++++++++++++++
 scripts/setup-auh-oe                    | 34 ++++++++++++++++++
 3 files changed, 120 insertions(+)
 create mode 100644 scripts/auh-config/upgrade-helper-oe.in
 create mode 100755 scripts/run-auh-oe
 create mode 100755 scripts/setup-auh-oe

diff --git a/scripts/auh-config/upgrade-helper-oe.in b/scripts/auh-config/upgrade-helper-oe.in
new file mode 100644
index 0000000..79467e5
--- /dev/null
+++ b/scripts/auh-config/upgrade-helper-oe.in
@@ -0,0 +1,40 @@
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
+smtp=localhost:25
+# from whom should the mails arrive
+from=auh@yoctoproject.org
+# who should get the status mail with statistics, at the end
+status_recipients=openembedded-core@lists.openembedded.org
+# who should be CCd with upgrade emails
+cc_recipients=openembedded-core@lists.openembedded.org
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
+publish_work_url=https://autobuilder.yocto.io/pub/auh
+
+commit_revert_policy=all
+
+layer_mode=yes
+layer_name={meta}
+layer_dir={layerdir}
+layer_machines={machine}
+
diff --git a/scripts/run-auh-oe b/scripts/run-auh-oe
new file mode 100755
index 0000000..24d3a51
--- /dev/null
+++ b/scripts/run-auh-oe
@@ -0,0 +1,46 @@
+#!/bin/bash
+#
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Run Auto Upgrade Helper in a directory set up by setup_auh.
+#
+# Called with $1 - the directory where the setup was created
+
+if [ -z $1 ]; then
+  echo "Use: $0 auh_setup_dir [publish_dir]"
+  exit 1
+fi
+
+full_dir=$(readlink -e $1)
+
+auh_dir=$full_dir/auto-upgrade-helper
+poky_dir=$full_dir/poky
+openembedded_dir=$full_dir/meta-openembedded
+build_dir=$full_dir/build
+sstate_dir=$full_dir/build/sstate-cache
+
+meta_list="${openembedded_dir}/meta-*"
+machine_list="qemux86 qemux86-64 qemuarm qemumips qemuppc qemux86_musl"
+
+pushd $openembedded_dir || exit 1
+
+# Base the upgrades on meta_openembedded master
+git fetch origin
+git checkout -B tmp-auh-upgrades origin/main
+
+source $poky_dir/oe-init-build-env $build_dir
+for d in $meta_list; do
+  meta=$(basename "$d")
+  sed -E "s|\{meta\}|$meta| ; \
+          s|\{layerdir\}|$openembedded_dir/$meta| ; \
+          s|\{machine\}|$machine_list|" \
+          $build_dir/upgrade-helper/upgrade-helper-oe.in \
+          > $build_dir/upgrade-helper/upgrade-helper.conf
+  $auh_dir/upgrade-helper.py -e all
+done
+
+if [ -n $2 ]; then
+  cp -rf $build_dir/upgrade-helper/* $2
+fi
+
+popd
diff --git a/scripts/setup-auh-oe b/scripts/setup-auh-oe
new file mode 100755
index 0000000..e5cdf9d
--- /dev/null
+++ b/scripts/setup-auh-oe
@@ -0,0 +1,34 @@
+#!/bin/bash
+#
+# SPDX-License-Identifier: GPL-2.0-only
+#
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
+git config user.email auh@yoctoproject.org
+git config user.name "Auto Upgrade Helper"
+popd
+git clone git://git.openembedded.org/meta-openembedded
+pushd meta-openembedded
+git config user.email auh@yoctoproject.org
+git config user.name "Auto Upgrade Helper"
+popd
+git clone git://git.yoctoproject.org/auto-upgrade-helper
+source poky/oe-init-build-env build
+mkdir -p upgrade-helper
+popd
+
+cp $CONFIG_DIR/upgrade-helper-oe.in $1/build/upgrade-helper
+cat $CONFIG_DIR/local.conf.append >> $1/build/conf/local.conf
-- 
2.39.2


