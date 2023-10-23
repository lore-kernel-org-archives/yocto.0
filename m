Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BE30C001E0
	for <webhook@archiver.kernel.org>; Mon, 23 Oct 2023 15:44:02 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web11.124404.1698075840541954026
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Oct 2023 08:44:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=IrAefcgN;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.178, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2c5087d19a6so51636271fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 08:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698075838; x=1698680638; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NxDlk3wHQDomCTgubnlM4oCZLUiUpihGFwRS70wBE0Q=;
        b=IrAefcgNvwYEln7G/hi/TP7SrM4cRIuAMJXjA7dCBrwNK6NIOyHuirhebhem5alXHY
         5d2UKNxOv5VT+VtkTounXS0AI46FoKh4VaovL42DSKClCS+7EPbg7GEe+Cjh2tigIVgx
         6MKAmAIaH8Rb31UijOe2TVbVZyvAcoLzYLq8s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698075838; x=1698680638;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NxDlk3wHQDomCTgubnlM4oCZLUiUpihGFwRS70wBE0Q=;
        b=fcGm2ZsUr5aKoL781XrwdbTm64Oy5dUOHErqi2WNxJ418uLmo330F5DsAvBfJKPJbs
         Vve8JvsntmxQsCM6BV0HTflBA90y5P5MIZVlnUSbVzk3IahbD0wwKKU413ekDZjCvdBM
         xixU/orleA2t0F2k1Mf7asj4iZsKEL3/hG66BFgs16IvHZLDd53rJPlhIzH8KhnFAXzr
         TtrxVJyujVHCAtFYZItGixqfCsV9KKxIN0OAorhXPgRJckSb6zukJTwfTSDdnaN5Z9zg
         ZbKmLqxfrvoxieUwh+fVWeCAb7kKhTLIXLx06e9Iw7A4q8yW8CndkEPvU923bgqSqT27
         fTLA==
X-Gm-Message-State: AOJu0YxlnBbsqu0jTsoZNW8F8aPrH73tohpwnNK7nMqn2k3+sOkRBjnI
	HmnC2IhPHbdPJZgDUMJCJo00QF5MEwf3t+kVSOM=
X-Google-Smtp-Source: AGHT+IFP3xoEiFjx/vzXtqfLl/+fh4fonB+C+5d//ANw63zBFrkgdBq2PMwnQny4oP8jVOgz3twdiw==
X-Received: by 2002:a2e:a589:0:b0:2c5:1a8e:e4c9 with SMTP id m9-20020a2ea589000000b002c51a8ee4c9mr6926161ljp.31.1698075838170;
        Mon, 23 Oct 2023 08:43:58 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:3e73:a41c:6787:e5d4])
        by smtp.gmail.com with ESMTPSA id ay20-20020a05600c1e1400b00407460234f9sm9745346wmb.21.2023.10.23.08.43.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 08:43:57 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH 2/5] scripts/run-patchmetrics: Split out CVE checks
Date: Mon, 23 Oct 2023 16:43:53 +0100
Message-Id: <20231023154356.1145934-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231023154356.1145934-1-richard.purdie@linuxfoundation.org>
References: <20231023154356.1145934-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 15:44:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61455

Split the CVE checks from the patch metrics script

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json              |  6 +++++
 scripts/run-cvecheck     | 54 ++++++++++++++++++++++++++++++++++++++++
 scripts/run-patchmetrics | 36 ---------------------------
 3 files changed, 60 insertions(+), 36 deletions(-)
 create mode 100755 scripts/run-cvecheck

diff --git a/config.json b/config.json
index bebd999..f225148 100644
--- a/config.json
+++ b/config.json
@@ -1208,8 +1208,14 @@
                 "BB_SERVER_TIMEOUT = '0'"
             ],
             "step1" : {
+                "shortname" : "Generating patch metrics",
                 "EXTRACMDS" : ["../../yocto-autobuilder-helper/scripts/run-patchmetrics ../ ../meta/ ${HELPERRESULTSDIR}/../../patchmetrics ."]
+            },
+            "step2" : {
+                "shortname" : "Running CVE checks",
+                "EXTRACMDS" : ["../../yocto-autobuilder-helper/scripts/run-cvecheck ../ ../meta/ ${HELPERRESULTSDIR}/../../patchmetrics ."]
             }
+
         },
         "meta-mingw" : {
             "NEEDREPOS" : ["poky", "meta-mingw"],
diff --git a/scripts/run-cvecheck b/scripts/run-cvecheck
new file mode 100755
index 0000000..35c796b
--- /dev/null
+++ b/scripts/run-cvecheck
@@ -0,0 +1,54 @@
+#!/bin/bash
+#
+# SPDX-License-Identifier: GPL-2.0-only
+#
+PARENTDIR=`realpath $1`
+TARGETDIR=`realpath $2`
+RESULTSDIR=`realpath -m $3`
+BUILDDIR=`realpath $4`
+OURDIR=`dirname $0`
+
+TIMESTAMP=`date +"%s"`
+
+#
+# CVE Checks
+#
+if [ ! -e $PARENTDIR/yocto-metrics ]; then
+    git clone ssh://git@push.yoctoproject.org/yocto-metrics $PARENTDIR/yocto-metrics
+fi
+
+if [ ! -d $RESULTSDIR ]; then
+    mkdir $RESULTSDIR
+fi
+
+for branch in master mickledore langdale kirkstone dunfell; do
+    mkdir -p $PARENTDIR/yocto-metrics/cve-check/$branch/
+    git -C $PARENTDIR reset origin/$branch --hard
+    rm conf/local.conf
+    rm conf/bblayers.conf
+    rm -f conf/templateconf.cfg
+    rm tmp/ -rf
+    unset BB_ENV_PASSTHROUGH_ADDITIONS
+    unset BB_ENV_EXTRAWHITE
+    cd ..
+    . oe-init-build-env build
+    bitbake world --runall cve_check -R conf/distro/include/cve-extra-exclusions.inc
+    if [ -e tmp/log/cve/cve-summary.json ]; then
+        git -C $PARENTDIR/yocto-metrics rm cve-check/$branch/*.json
+        mkdir -p $PARENTDIR/yocto-metrics/cve-check/$branch
+        cp tmp/log/cve/cve-summary.json $PARENTDIR/yocto-metrics/cve-check/$branch/$TIMESTAMP.json
+        git -C $PARENTDIR/yocto-metrics add cve-check/$branch/$TIMESTAMP.json
+        git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder adding new CVE data for branch $branch"
+        git -C $PARENTDIR/yocto-metrics push
+        $OURDIR/cve-report.py tmp/log/cve/cve-summary.json > $RESULTSDIR/cve-status-$branch.txt
+    fi
+done
+
+mkdir -p $PARENTDIR/yocto-metrics/cve-check/
+$OURDIR/cve-generate-chartdata --json $PARENTDIR/yocto-metrics/cve-count-byday.json --resultsdir $PARENTDIR/yocto-metrics/cve-check/
+git -C $PARENTDIR/yocto-metrics add cve-count-byday.json
+git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder updating CVE counts"
+git -C $PARENTDIR/yocto-metrics push
+
+cp $PARENTDIR/yocto-metrics/cve-count-byday.json $RESULTSDIR
+cp $PARENTDIR/yocto-metrics/cve-count-byday-lastyear.json $RESULTSDIR
diff --git a/scripts/run-patchmetrics b/scripts/run-patchmetrics
index abe58c7..e45d463 100755
--- a/scripts/run-patchmetrics
+++ b/scripts/run-patchmetrics
@@ -27,39 +27,3 @@ fi
 $OURDIR/patchmetrics-generate-chartdata --json $PARENTDIR/yocto-metrics/patch-status.json --outputdir $RESULTSDIR
 cp $PARENTDIR/yocto-metrics/patch-status.json $RESULTSDIR
 cp $PARENTDIR/yocto-metrics/patch-status/* $RESULTSDIR
-
-#
-# CVE Checks
-#
-for branch in master mickledore langdale kirkstone dunfell; do
-    mkdir -p $PARENTDIR/yocto-metrics/cve-check/$branch/
-    git -C $PARENTDIR reset origin/$branch --hard
-    rm conf/local.conf
-    rm conf/bblayers.conf
-    rm -f conf/templateconf.cfg
-    rm tmp/ -rf
-    unset BB_ENV_PASSTHROUGH_ADDITIONS
-    unset BB_ENV_EXTRAWHITE
-    cd ..
-    . oe-init-build-env build
-    bitbake world --runall cve_check -R conf/distro/include/cve-extra-exclusions.inc
-    if [ -e tmp/log/cve/cve-summary.json ]; then
-        git -C $PARENTDIR/yocto-metrics rm cve-check/$branch/*.json
-        mkdir -p $PARENTDIR/yocto-metrics/cve-check/$branch
-        cp tmp/log/cve/cve-summary.json $PARENTDIR/yocto-metrics/cve-check/$branch/$TIMESTAMP.json
-        git -C $PARENTDIR/yocto-metrics add cve-check/$branch/$TIMESTAMP.json
-        git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder adding new CVE data for branch $branch"
-        git -C $PARENTDIR/yocto-metrics push
-        $OURDIR/cve-report.py tmp/log/cve/cve-summary.json > $RESULTSDIR/cve-status-$branch.txt
-    fi
-done
-
-mkdir -p $PARENTDIR/yocto-metrics/cve-check/
-$OURDIR/cve-generate-chartdata --json $PARENTDIR/yocto-metrics/cve-count-byday.json --resultsdir $PARENTDIR/yocto-metrics/cve-check/
-git -C $PARENTDIR/yocto-metrics add cve-count-byday.json
-git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder updating CVE counts"
-git -C $PARENTDIR/yocto-metrics push
-
-cp $PARENTDIR/yocto-metrics/cve-count-byday.json $RESULTSDIR
-cp $PARENTDIR/yocto-metrics/cve-count-byday-lastyear.json $RESULTSDIR
-
-- 
2.39.2


