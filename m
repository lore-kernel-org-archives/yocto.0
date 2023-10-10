Return-Path: <david.pierret@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500A8CD8C9C
	for <webhook@archiver.kernel.org>; Tue, 10 Oct 2023 14:49:50 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web10.93747.1696949384588687835
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Oct 2023 07:49:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=vv/IhJVO;
 spf=pass (domain: smile.fr, ip: 209.85.128.54, mailfrom: david.pierret@smile.fr)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-40684f53bfcso53494095e9.0
        for <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 07:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1696949383; x=1697554183; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oTtSkDcZ4IZ1SmNSMGgNzZXGM+3B9IrA4EQFHuBQrvU=;
        b=vv/IhJVO3UoYcyUZIOCu2GY1lATqszRj85y5q1OYsBDUfX8uy5Klt4gLPfRynIP5QF
         9hrtx18H857gSZcZ3MARNSHQFtErhFxZxtVLmfE02hCR4Ch2acuMo9/69rSIesSXKgTA
         JVysdfYpm9QRAa9DxbKEwv6A6QCLo2yQUVvWqvLA8RUhrWc3Y2tRXXhEBf9ZhtfHZfbn
         ZatInmlfwXVuUJ1y0vTCxXmTxMWYc0Lm6CnNRYf1MOsd+uLHpDQSJyvJZ5L5KIr0bwkn
         mPFvA4WChSvjkPbphhfUZ4uFe8G+TUhlcMMiWJIHDCidn3ohbAMAcwLdXpnKXuUGQD9D
         djDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696949383; x=1697554183;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oTtSkDcZ4IZ1SmNSMGgNzZXGM+3B9IrA4EQFHuBQrvU=;
        b=T0eg8To2zfBOIdo9bt1uD8YRuJC/U48pCn1VYZLsSLkI/i/hvVf3+iuu8YTo4KNec2
         Vd+CsZEpwYns/0J+k8qQKa4IM2pgOtkE0SAm9nxicZzUbp1mePsVP44SOfHTfX3utQtH
         UQVT+zRWE2Rm8ZQRnfFWUTntxTHniZiUHO8DLycK+MNmfRwR43n1I0QSPvqSch7XUpH2
         W6G3l5xzZ76PrtsKv3HTzF3NKMmjsiRXvkkU4ryORK8DHL2hOjom+vWieIsWpuIpKM+q
         jcnQj7bRGQf5ML0wRVq1m7c6YmsbcQCQWY7Nb+k0Ke1X1NrRJ2wypNuRcACgMG2zISUu
         PlZg==
X-Gm-Message-State: AOJu0YxRGQq+T0fOTncPZge+W3BR2M23IfJB/9ttnwzReltyTMbnQ7WR
	qU0U18eahjpZgLzGSMbrl1is/WhoxL8zZnvHhak=
X-Google-Smtp-Source: AGHT+IFaXoiRJmmDVtERhfBlog/MzpUfMyL7JHZV5c3lSvq7FjZ1jy+Afjj49W5Q/q5yBuNWXIjHCw==
X-Received: by 2002:a7b:cc07:0:b0:401:73b2:f039 with SMTP id f7-20020a7bcc07000000b0040173b2f039mr16710071wmh.7.1696949382679;
        Tue, 10 Oct 2023 07:49:42 -0700 (PDT)
Received: from P-TOU-PARSEC.home ([2a01:cb19:8e26:3000:47b1:e79:5a4d:f0c3])
        by smtp.gmail.com with ESMTPSA id h9-20020a5d6889000000b0031c52e81490sm13078009wru.72.2023.10.10.07.49.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 07:49:42 -0700 (PDT)
From: David Pierret <david.pierret@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: David Pierret <david.pierret@smile.fr>,
	Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH] oe-mirror: Add job to mirror openembedded sources
Date: Tue, 10 Oct 2023 16:49:40 +0200
Message-Id: <20231010144940.3811241-1-david.pierret@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 14:49:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61306

- Add a job that call run-fetchuniverse
- Add script run-fetchuniverse
   - loop over each LTS branches
   - Download all the meta-openembedded layers sources.
   - Call to oe-selftest test_yocto_source_mirror after fetching.
We are not using a second step to keep checkout consistency with potential merge.

Signed-off-by: David Pierret <david.pierret@smile.fr>
Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
---
 config.json               | 13 +++++++++++
 scripts/run-fetchuniverse | 49 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 62 insertions(+)
 create mode 100755 scripts/run-fetchuniverse

diff --git a/config.json b/config.json
index 3acb710..8d59be8 100644
--- a/config.json
+++ b/config.json
@@ -1420,6 +1420,19 @@
                 "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
             ]
         },
+        "oe-mirror" : {
+            "SDKMACHINE" : "x86_64",
+            "MACHINE" : "qemux86-64",
+            "NEEDREPOS" : ["poky", "meta-openembedded"],
+
+            "step1" : {
+                "shortname" : "Sources pre-fetching",
+                "EXTRAPLAINCMDS" : ["${SCRIPTSDIR}/run-fetchuniverse ${BUILDDIR} ${SCRIPTSDIR}"],
+                "extravars" : [
+                    "SOURCE_MIRROR_FETCH = '1'"
+                ]
+            }
+        },
         "a-quick" : {
             "TEMPLATE" : "trigger-build"
         },
diff --git a/scripts/run-fetchuniverse b/scripts/run-fetchuniverse
new file mode 100755
index 0000000..9ef82de
--- /dev/null
+++ b/scripts/run-fetchuniverse
@@ -0,0 +1,49 @@
+#!/bin/bash
+#
+# SPDX-License-Identifier: GPL-2.0-only
+#
+BUILDDIR=`realpath $1`
+SCRIPTSDIR=`realpath $2`
+ROOTDIR=$BUILDDIR/..
+
+#
+# Fetch mirror for each LTS branch and test integrity
+#
+for branch in master mickledore langdale kirkstone dunfell; do
+  # For each layer
+  for repo in bitbake poky meta-openembedded ; do
+    pushd $ROOTDIR/$repo || exit 1
+      # reset branch
+      git reset origin/$branch --hard
+    popd || exit 1
+  done
+  # remove config to be re-generated by oe-init-build-env
+  rm conf/local.conf
+  rm conf/bblayers.conf
+  rm -f conf/templateconf.cfg
+  rm tmp/ -rf
+
+  # got back to ROOTDIR
+  pushd $ROOTDIR || exit 1
+  # generate config for current branch
+  . ./poky/oe-init-build-env build
+
+  # We need to add the meta-openembedded layers before fetch
+  bitbake-layers add-layer ${BUILDDIR}/../meta-openembedded/meta-filesystems ${BUILDDIR}/../meta-openembedded/meta-gnome \
+                           ${BUILDDIR}/../meta-openembedded/meta-initramfs ${BUILDDIR}/../meta-openembedded/meta-multimedia \
+                           ${BUILDDIR}/../meta-openembedded/meta-networking ${BUILDDIR}/../meta-openembedded/meta-oe \
+                           ${BUILDDIR}/../meta-openembedded/meta-perl ${BUILDDIR}/../meta-openembedded/meta-python \
+                           ${BUILDDIR}/../meta-openembedded/meta-webserver ${BUILDDIR}/../meta-openembedded/meta-xfce
+  # call bitbake to fetch universe
+  bitbake universe -c fetch -k
+
+  # call oe-selftest to execute test_yocto_source_mirror
+  # We need the selftest layer
+  bitbake-layers add-layer $BUILDDIR/../meta-selftest
+  # ensure no previous build-st directory exist
+  rm -rf ${BUILDDIR}/../build-st
+  ${SCRIPTSDIR}/checkvnc; DISPLAY=:1 oe-selftest -r buildoptions.SourceMirroring.test_yocto_source_mirror || exit 1
+  popd || exit 1
+done
+
+
-- 
2.39.2


