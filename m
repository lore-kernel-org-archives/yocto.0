Return-Path: <david.pierret@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6E98C001DF
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 14:05:28 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.55349.1697810722764371184
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Oct 2023 07:05:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=X0r3CPYd;
 spf=pass (domain: smile.fr, ip: 209.85.221.54, mailfrom: david.pierret@smile.fr)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-32db8f8441eso699662f8f.0
        for <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 07:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1697810721; x=1698415521; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JIgjEyGh6h0jjLKS6y0aT5onAeQuviO9Hf0oo9Hpkhk=;
        b=X0r3CPYdMfL0zZrc/MH4rHgjMd+xaMB9dfYzXcAM+nldSZwzesbIywNZhemGFk93cx
         FeMNkn5XpwlY07LdWncuzZimQ5gf9WnNb6927T0w84Ri4d5ylSk+X3pinuB6/PC8nNab
         aBMZryKKOQhKoBoewYiWYNP7b64rD4mYr9VC+Gr8bsjJ6ImF4rxmtk/e2a6uLnUhG8Q2
         xSYySCLtNXFLbtzmQH7T7QzEimCA0kUx73OF+i+qs/D++63rKrDzgfiwPWG6l7uHEl48
         vC0lCl4zdSHfNiFT8D+Dl70k36TDQdKTmdxeuxNLjWOgB9KjjZV/mPKb8+TCYwVXhwzI
         zB1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697810721; x=1698415521;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JIgjEyGh6h0jjLKS6y0aT5onAeQuviO9Hf0oo9Hpkhk=;
        b=mQwgRHoxJYFPgP2FisYlAPWbIDcJDkRT6KDLRC6iRtjnXx9xlea24aclKaCummrFDQ
         WcEdz1dJJh1rqyvy/XbvnE8+LPkklBKNYfRjxBRB7eCOrfNGdnkO9/TzNWEd09gBYelB
         7f+Iq2AwGIZxbrZRWuCIs9oRadfqGWG2LvH31NPFjJzUZciOdX2Z3nuJdzCrYonNRTBG
         QDk0NKw/zxEvMZWPhmA5noE7xbkBEFUXSZPy7/JO3vc97IjHDorTEKkJPWPYsu3v8oG7
         u4EgpY8CeFrOW+qT1We27UWKyG24dJBI9mA29s1tQ+Sb6Y58hal4mZtynU2sCezKxdZ5
         0v8g==
X-Gm-Message-State: AOJu0YxjX4HqhkFJZwDAI1il0yC7yK5fYDGf8fjsldYeAgqrpLFAFTQl
	uO54EB/BmMVCM3SGw3WsfmjBmjmpX9tbrKHzHZA=
X-Google-Smtp-Source: AGHT+IE4IBuk3NmsRCqxi1w/2yHuOueYJBv2HcEGUD3qTGbK+uK+Z11OzD+rirLkKyDoZcpwynf1pw==
X-Received: by 2002:adf:f982:0:b0:321:6936:c217 with SMTP id f2-20020adff982000000b003216936c217mr1639825wrr.14.1697810720752;
        Fri, 20 Oct 2023 07:05:20 -0700 (PDT)
Received: from P-TOU-PARSEC.tailace47.ts.net ([2a01:cb19:9313:2700:7490:fa4a:1f26:167f])
        by smtp.gmail.com with ESMTPSA id r6-20020a5d6946000000b00318147fd2d3sm1754231wrw.41.2023.10.20.07.05.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 07:05:20 -0700 (PDT)
From: David Pierret <david.pierret@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: David Pierret <david.pierret@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH v2] AUH: Add Openembedded auto-update-helper with list of layer to test
Date: Fri, 20 Oct 2023 16:05:28 +0200
Message-Id: <20231020140528.10787-1-david.pierret@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 14:05:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61436

- Add setup and run script openembedded specific
- Add job config

Signed-off-by: David Pierret <david.pierret@smile.fr>
---
 config.json          |  6 ++++++
 scripts/run-auh-oe   | 45 ++++++++++++++++++++++++++++++++++++++++++++
 scripts/setup-auh-oe | 34 +++++++++++++++++++++++++++++++++
 3 files changed, 85 insertions(+)
 create mode 100755 scripts/run-auh-oe
 create mode 100755 scripts/setup-auh-oe

diff --git a/config.json b/config.json
index 3acb710..bbd0aaf 100644
--- a/config.json
+++ b/config.json
@@ -1420,6 +1420,12 @@
                 "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
             ]
         },
+        "auh-openembedded" : {
+            "NEEDREPOS" : ["poky", "meta-openembedded"],
+            "EXTRAPLAINCMDS" : [
+                "${SCRIPTSDIR}/setup-auh-oe ${HELPERBUILDDIR}; ${SCRIPTSDIR}/run-auh-oe ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded ${HELPERBUILDDIR}/meta-openembedded/meta-oe ${HELPERBUILDDIR}/meta-openembedded/meta-python ${HELPERBUILDDIR}/meta-openembedded/meta-perl ${HELPERBUILDDIR}/meta-openembedded/meta-networking ${HELPERBUILDDIR}/meta-openembedded/meta-multimedia ${HELPERBUILDDIR}/meta-openembedded/meta-gnome ${HELPERBUILDDIR}/meta-openembedded/meta-xfce ${HELPERBUILDDIR}/meta-openembedded/meta-filesystems ${HELPERBUILDDIR}/meta-openembedded/meta-initramfs ${HELPERBUILDDIR}/meta-openembedded/meta-webserver "
+            ]
+        },
         "a-quick" : {
             "TEMPLATE" : "trigger-build"
         },
diff --git a/scripts/run-auh-oe b/scripts/run-auh-oe
new file mode 100755
index 0000000..588755a
--- /dev/null
+++ b/scripts/run-auh-oe
@@ -0,0 +1,45 @@
+#!/bin/bash
+#
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Run Auto Upgrade Helper in a directory set up by setup_auh.
+#
+# Called with $1 - the directory where the setup was created
+
+if [ -z $1 ]; then
+  echo "Use: $0 [auh_setup_dir] [publish_dir] [meta_dir] [meta_list]"
+  exit 1
+fi
+
+full_dir=$(readlink -e $1)
+
+auh_dir=$full_dir/auto-upgrade-helper
+poky_dir=$full_dir/poky
+
+build_dir=$full_dir/build
+sstate_dir=$full_dir/build/sstate-cache
+meta_dir=$3
+meta_list=${@:4}
+machine_list="qemux86 qemux86-64 qemuarm qemumips qemuppc qemux86_musl"
+
+pushd $meta_dir || exit 1
+
+# Base the upgrades on meta_openembedded master
+git fetch origin
+git checkout -B tmp-auh-upgrades origin/main
+
+source $poky_dir/oe-init-build-env $build_dir
+
+# build the layer_names variable to me used in the command line
+layer_names=""
+for d in $meta_list; do
+  layer_names+=" $(basename ${d})"
+done
+
+$auh_dir/upgrade-helper.py -e --layer-dir ${meta_dir} --layer-names ${layer_names} --layer-machines ${machine_list} -- all
+
+if [ -n $2 ]; then
+  cp -rf $build_dir/upgrade-helper/* $2
+fi
+
+popd
diff --git a/scripts/setup-auh-oe b/scripts/setup-auh-oe
new file mode 100755
index 0000000..ba1a7fb
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
+cp $CONFIG_DIR/upgrade-helper.conf $1/build/upgrade-helper
+cat $CONFIG_DIR/local.conf.append >> $1/build/conf/local.conf
-- 
2.39.2


