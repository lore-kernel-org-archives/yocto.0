Return-Path: <david.pierret@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42DE0CD8CA2
	for <webhook@archiver.kernel.org>; Tue, 10 Oct 2023 14:59:50 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.94013.1696949985675564229
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Oct 2023 07:59:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=VqySiZPx;
 spf=pass (domain: smile.fr, ip: 209.85.128.41, mailfrom: david.pierret@smile.fr)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-40566f8a093so53274005e9.3
        for <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 07:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1696949984; x=1697554784; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wAsKjdbkyt40VRrg/Bfia9WeNCP+ANvoYcnQTidDTYk=;
        b=VqySiZPxD3k69aN9rIdN07VUQsL57vo4cEoS38N89gGj8Ui9uJUuxk/qh5BPJ4cEue
         MzSndfVCwR08lT22vI38c5M5PlRPgJC9EqcQOllqZ5cn5dgXTE27VS/+Tu6uwwm3d8HX
         8kC+OYd2UduPYmstApsC2+jXJvzmjDPZDXXCm+JIc2Zwv5aZJTz2w7nrKwCZGDyb+iX3
         Cic39Ot1R7Nimf6YC1XREiuDCac6Yy+R/syD8cLEzQtQl3H15ycUmbFPL388nHlo4pdV
         LUkG/g4vEQv9MI9zCAeWZZNAbYwetM2DJz30vrh7puUU5ikDiuQGbdPs99hWT0ZLGDya
         QLWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696949984; x=1697554784;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wAsKjdbkyt40VRrg/Bfia9WeNCP+ANvoYcnQTidDTYk=;
        b=R0GDujL00Q1Zn9p63wBIiC0sxjH6wLk5LZMlwhDN3I7BJ5uhRH8RoB8TBSnW3sgZjH
         mCOmbgrBfvkcLpGSgSP50ITArcnpRRpmOR0tNY6sOhHa5VaG4likGhWetHxDxxC06bo5
         fNl1k/6E3VZyw6csOSw8pfDEJf9saSlNEfE8oT+NCHrR2wXx72Jh/ZK3Gc9t9f6kGOwd
         fN7Uyn/Qx6+EQpgcc8fPmIRYc6581YxxkKlUZYNrBQTAMom9b+7F4zceTe3PFCCxR29k
         vrcGTZr5EheOGKIhcDs9qbrE7/kaQBREwZx9BYrCPwFzTFF8Ly3RriTnIxwbXouZ+/UL
         JJeQ==
X-Gm-Message-State: AOJu0YyTQ07I+WC4+UAZWV0GpeUabxlQRGoNk5MfKZBK5a5h+cceGdzg
	YD42EsVrxmFGfetkatZDggPgyfLP753DgLuc+9w=
X-Google-Smtp-Source: AGHT+IE5lY99HyorAeMyh/N3yzWB2Xv0rfgzB0IV1ZiTuqrlbFhggckVE01ay5CiB+Dp6Oujt2sjFg==
X-Received: by 2002:a1c:7c0a:0:b0:401:be5a:989 with SMTP id x10-20020a1c7c0a000000b00401be5a0989mr16509439wmc.23.1696949983598;
        Tue, 10 Oct 2023 07:59:43 -0700 (PDT)
Received: from P-TOU-PARSEC.home ([2a01:cb19:8e26:3000:47b1:e79:5a4d:f0c3])
        by smtp.gmail.com with ESMTPSA id z23-20020a1c4c17000000b00405935b417asm16644811wmf.2.2023.10.10.07.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 07:59:43 -0700 (PDT)
From: David Pierret <david.pierret@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Alex Kanavin <alex.kanavin@gmail.com>,
	David Pierret <david.pierret@smile.fr>,
	Yoann Congal <yoann.congal@smile.fr>
Subject: [auh][PATCH] weeklyjob: Add Openembedded update-helper conf
Date: Tue, 10 Oct 2023 16:59:42 +0200
Message-Id: <20231010145942.3811411-1-david.pierret@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 14:59:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61307

- Add weeklyjob for openembedded meta
- Add upgrade-helper.in config template

auto-upgrade-helper script accept configurations to specify the layer
to be analyzed.
The .in file is modified by sed command to generate the .conf file
that match the meta to analyze.

We've chosen to use a template configuration file rather than multiple
configuration files (1 per meta). The template file contains tags
between braces that is replaced in the script using simple `sed` calls.
The meta list to be analyzed is defined via the `meta_list` variable.
This variable matches all `meta-*` directories

Signed-off-by: David Pierret <david.pierret@smile.fr>
Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
---
 upgrade-helper.in | 124 ++++++++++++++++++++++++++++++++++++++++++++++
 weeklyjob-oe.sh   |  48 ++++++++++++++++++
 2 files changed, 172 insertions(+)
 create mode 100644 upgrade-helper.in
 create mode 100644 weeklyjob-oe.sh

diff --git a/upgrade-helper.in b/upgrade-helper.in
new file mode 100644
index 0000000..4eedef1
--- /dev/null
+++ b/upgrade-helper.in
@@ -0,0 +1,124 @@
+#
+# This file is your upgrade-helper configuration files and is where all local user
+# settings specifically for AUH are placed. The comments in this file provide some
+# guidelines to the options a new user to AUH tool might want to change.
+#
+# This file should be placed inside your BUILDDIR/upgrade-helper after initializing
+# the OE build environment (this location can be overriden with -c command line option).
+#
+# Lines starting with the '#' character are commented out and in some cases the
+# default values are provided as comments to show people example syntax. Enabling
+# the option is a question of removing the # character and making any change to the
+# variable as required. For boolean settings, anything not 'yes' is treated as 'no'.
+
+[maintainer_override]
+# e-mail message for recipe upgrades will go to john.doe instead of jane.doe, etc
+# see also the global_maintainer_override option
+#jane.doe@doe.com=john.doe@doe.com
+#johhny.bravo@bravo.com=john.doe@doe.com
+
+[settings]
+# SMTP server that is used to send e-mails with patches and other information.
+# If you are running AUH locally, you do not need to set this up, as AUH
+# saves everything to BUILDDIR/upgrade-helper/<timestamp>, and does not attempt
+# to send email messages (unless explicitly asked with -e command line option).
+# If no port is specified, port 25 is assumed.
+#smtp=smtp.my-server.com:25
+
+# from whom should the e-mails be sent (mandatory if --send-emails is passed).
+# Also sets the email address of the author of automated commits.
+#from=uh@not.set
+
+# If enabled, emails for all recipe upgrades will go to john.doe,
+# except when recipes are owned by specific maintainer_override entries above.
+#global_maintainer_override=john.doe@doe.com
+
+# who should be CCd with all upgrade emails (optional)
+#cc_recipients=john.doe@doe.com
+
+# who should get the status mail with statistics, at the end (mandatory if
+# --send-emails is passed)
+#status_recipients=john.doe@doe.com
+
+# Only recipes belonging to maintainers in whitelist will be attempted
+# Insert your own e-mail address here together with any other maintainers' addresses
+# whose recipes you wish to take care of. This restricts the set of recipes that AUH
+# will attempt when it is run with 'all' option.
+#maintainers_whitelist=jane.doe@doe.com john.doe@doe.com johhny.bravo@bravo.com
+
+# recipes in blacklist will be skipped (applies only when 'all' or no recipe is
+# passed; does not apply when layer_mode is enabled).
+#blacklist=python glibc gcc
+
+# specify the directory where work (patches) will be saved
+# (optional; default is BUILDDIR/upgrade-helper/)
+#workdir=
+
+# public url with AUH results to include in statistics summary (optional)
+#publish_work_url=http://auh.somehost.com/work
+
+# whether to attach a tarball with AUH artefacts (patches, log, buildhistory, etc.)
+# to the summary email
+#summary_includes_tarball=True
+
+# clean sstate directory before upgrading
+# Generally not necessary, as bitbake can handle this automatically.
+#clean_sstate=no
+
+# clean tmp directory before upgrading
+# Generally not necessary as bitbake can handle this automatically.
+#clean_tmp=no
+
+# Machines to test build with.
+# Append _libc-name to test with alternative C library implementations
+# e.g. qemux86_musl.
+#
+# Buildhistory and testimages will be created only for the first
+# machine in the list, as otherwise it adds enormously to AUH run time.
+#
+# AUH has a reasonable default for this, so you do not need to set your own,
+# at least initially.
+#
+# Does not apply when layer_mode is enabled.
+#machines=qemux86 qemux86-64 qemuarm qemumips qemuppc qemux86_musl
+
+# Enables buildhistory feature; this is useful as it produces information
+# about what has changed in the resulting packages, compared to previous version
+#
+# Requires 'buildhistory' to be present in INHERIT and BUILDHISTORY_COMMIT to be set
+# in your conf/local.conf.
+#buildhistory=no
+
+# When AUH has built an upgraded recipe it then creates a commit with the upgrade.
+# This setting specifies whether to also revert the commit. Possible values are:
+# 'failed_to_build' (default) - revert if the recipe failed to build. This is useful
+# to prevent further upgrades in the batch from failing, if they're dependent on the
+# recipe.
+# 'all' - always revert. This is useful when running automatic, unattended upgrades,
+#  as it will effectively test each upgrade against the baseline, and will avoid the
+# situation where one successful upgrade thwarts others due to newly introduced
+# incompatibilities.
+# 'never' - never revert. Use in interactive upgrade sessions, where any issues can be
+# manually fixed.
+#commit_revert_policy=failed_to_build
+
+# If enabled, build and boots a test image, and runs integration tests on it
+# If upgraded packages have ptest support those are run as well
+#
+# Requires 'testimage' in INHERIT in your conf/local.conf and 'ptest' in your
+# distro's DISTRO_FEATURES.
+#testimage=no
+
+# This can be used to change the name of the test image.
+#
+#testimage_name=core-image-sato
+
+# This can be used to upgrade recipes in a specific layer,
+# for example meta-intel, instead of upgrading oe-core recipes.
+#
+# When layer_mode is enabled, layer_name, layer_dir and layer_machines are
+# mandatory. 'blacklist' setting does not apply when in layer_mode.
+layer_mode=yes
+layer_name={meta}
+layer_dir={layerdir}
+layer_machines={machine}
diff --git a/weeklyjob-oe.sh b/weeklyjob-oe.sh
new file mode 100644
index 0000000..1bad6da
--- /dev/null
+++ b/weeklyjob-oe.sh
@@ -0,0 +1,48 @@
+#!/bin/bash
+
+# Cronjob which can be run weekly to run the upgrade helper script.
+# Add the job in /etc/crontab like below.
+#
+# It will execute weekly at the same hour (8 AM).
+#
+# 00 8   * * 6   auh  /home/auh/bin/weeklyjob-oe.sh
+
+# Re-assign these to match your setup!
+auh_dir=~/auto-upgrade-helper
+poky_dir=~/poky
+openembedded_dir=~/meta-openembedded
+build_dir=~/build-tmp-auh-upgrades
+sstate_dir=~/sstate-cache
+
+meta_list="${openembedded_dir}/meta-*"
+machine_list="qemux86 qemux86-64 qemuarm qemumips qemuppc qemux86_musl"
+
+pushd $openembedded_dir || exit 1
+
+source $poky_dir/oe-init-build-env $build_dir
+
+# Base the upgrades on meta_openembedded master
+git fetch origin
+git checkout -B tmp-auh-upgrades origin/main
+# upgrade helper need to use ?= for MACHINE
+sed -i.bak -E 's|^(MACHINE[[:space:]]*)[?+=]+([[:space:]]*.*)$|\1?=\2|' $build_dir/conf/local.conf
+
+mkdir $build_dir/upgrade-helper/
+
+for d in $meta_list; do
+  meta=$(basename "$d")
+  sed -E "s|\{meta\}|$meta| ; \
+          s|\{layerdir\}|$openembedded_dir/$meta| ; \
+          s|\{machine\}|$machine_list|" \
+          $auh_dir/upgrade-helper.in \
+          > $build_dir/upgrade-helper/upgrade-helper.conf
+  python3 $auh_dir/upgrade-helper.py -e all
+done
+
+# clean up to avoid the disk filling up
+rm -rf $build_dir/tmp/
+rm -rf $build_dir/workspace/sources/*
+find $sstate_dir -atime +10 -delete
+
+popd || exit 1
+
-- 
2.39.2


