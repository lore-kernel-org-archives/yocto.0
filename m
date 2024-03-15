Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F7EEC54E68
	for <webhook@archiver.kernel.org>; Fri, 15 Mar 2024 23:25:30 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.7311.1710545128348866863
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Mar 2024 16:25:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=Vih9KhVx;
 spf=pass (domain: smile.fr, ip: 209.85.221.54, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-33edb427c11so88106f8f.3
        for <yocto@lists.yoctoproject.org>; Fri, 15 Mar 2024 16:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1710545126; x=1711149926; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ec5DyxxIw/Qb+3wf/wXrNKKPxefy71+TcgSzE24vsso=;
        b=Vih9KhVxNkPTRtGt9vrbRMKkp7VxnUFwunPyNdzHFHaIpspF4S2FeATRQn+wJjRpKt
         GwVqTFirwzTbvFI8846AG7FymK3kKyKps8lGmuEs2Lj5isQM1pE6MY3pTSiWL+zxuxso
         m7FWef8Fk672NFCyONHnsgU3qRlGOxgsjEHPkmRgm3zrRPdw3jFV99qj5y7TZ1k3N3V2
         ugSFSvNQwG2G1G8XOALOKmBbI2IKKbeduuMqhW3rfztRGVwweIruT2WxSFC7LTEGj4wT
         Ua0IxKR5aTnxEgvDtpaucJSMP14YmMFCS2Bd1o1Z+nZ8jA+1WkhVHsJv0R+AFPVHCWT7
         li/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710545126; x=1711149926;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ec5DyxxIw/Qb+3wf/wXrNKKPxefy71+TcgSzE24vsso=;
        b=S5I5ZDEHayygyBvTen3K7GJwXuppFlDfXV6q4lzDJzMj5voI1qe6k1/uRK1q8RKki7
         SS95nfI/foOygfoMQiKkqtjwheDSreVmqbjd5HhNiwbSTpeiJ/jNkgeA5Oh5lJui/dDi
         xt+EeeRPLnP0W99BLGCYitlXR92cZpL1BNNgo4uoabsE0VBesV80D4gwaCkdVZE0toVH
         KsOnON1kTRi7c2AA04mKmKO+wOxwz3T1Ap7rs458B9/cCt3kWiQrp25Es8vJxrN8lAKW
         gINzXRRtLr/j8D/5fCS/vX2tFwKSasUQ5YJs64uOIowNdA3sMSEBF3rL5piifUu0oXWA
         Acaw==
X-Gm-Message-State: AOJu0Yx99+qUkOq1WyhUbcFPAve54/yGpwV4jqE8wbxlVqzRPEuOJIKP
	SsHYvlPcjyJH5fMecnBxLPztl2Xk27mjLSGWV5ZDVE0AfVZBf9hJbKjw8fIgwLBiNfOjfzRajdv
	r51A=
X-Google-Smtp-Source: AGHT+IERp+l0Jz57tlTaSqZI10TOs3oAzI5vvBzDRyLVpyEiNttStBAgYOZwxteApVf8TTOCiTyFwQ==
X-Received: by 2002:adf:fc0b:0:b0:33c:f9d6:fb20 with SMTP id i11-20020adffc0b000000b0033cf9d6fb20mr4753426wrr.45.1710545125807;
        Fri, 15 Mar 2024 16:25:25 -0700 (PDT)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id z18-20020adfec92000000b0033e7de97214sm4150834wrn.40.2024.03.15.16.25.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Mar 2024 16:25:25 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH 1/2] run-cvecheck: Split out the chart generation code
Date: Sat, 16 Mar 2024 00:25:04 +0100
Message-Id: <20240315232505.2251266-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Mar 2024 23:25:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62769

run-cvecheck had a special case for master were it would generate chart
data after computing CVE metrics. This had to happen last in the list
branches calling run-cvecheck.

By spliting run-cvecheck into 2:
* run-cvecheck (only does the cve-check),
* run-cvecharts (only does the chart generation),
... we can run-cvecheck on master first while keeping run-cvecharts
last.

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 scripts/run-cvecharts | 79 +++++++++++++++++++++++++++++++++++++++++++
 scripts/run-cvecheck  | 13 -------
 2 files changed, 79 insertions(+), 13 deletions(-)
 create mode 100755 scripts/run-cvecharts

diff --git a/scripts/run-cvecharts b/scripts/run-cvecharts
new file mode 100755
index 0000000..d5dddd5
--- /dev/null
+++ b/scripts/run-cvecharts
@@ -0,0 +1,79 @@
+#!/bin/bash
+#
+# SPDX-License-Identifier: GPL-2.0-only
+#
+
+set -eu
+
+ARGS=$(getopt -o '' --long 'metrics:,results:,push' -n 'run-cvecharts' -- "$@")
+if [ $? -ne 0 ]; then
+    echo 'Cannot parse arguments...' >&2
+    exit 1
+fi
+eval set -- "$ARGS"
+unset ARGS
+
+# Location of the yocto-autobuilder-helper scripts
+OURDIR=$(dirname $0)
+# The metrics repository to use
+METRICSDIR=""
+# Where to copy results to
+RESULTSDIR=""
+# Whether to push the metrics
+PUSH=0
+
+while true; do
+    case "$1" in
+        '--metrics')
+            METRICSDIR=$(realpath $2)
+            shift 2
+            continue
+        ;;
+        '--results')
+            RESULTSDIR=$(realpath -m $2)
+            shift 2
+            continue
+        ;;
+        '--push')
+            PUSH=1
+            shift
+            continue
+        ;;
+        '--')
+            shift
+            break
+        ;;
+        *)
+            echo "Unexpected value $1" >&2
+            exit 1
+        ;;
+    esac
+done
+
+if ! test "$METRICSDIR" -a "$RESULTSDIR"; then
+    echo "Not all required options specified"
+    exit 1
+fi
+
+#
+# CVE Chart data generation
+#
+if [ ! -d $RESULTSDIR ]; then
+    mkdir $RESULTSDIR
+fi
+
+# Do another pull to make sure we're as up to date as possible.  This is
+# preferable to committing and rebasing before pushing as it would be better to
+# waste some time repeating work than commit potentially corrupted files from a
+# git merge gone wrong.
+git -C $METRICSDIR pull
+
+$OURDIR/cve-generate-chartdata --json $METRICSDIR/cve-count-byday.json --resultsdir $METRICSDIR/cve-check/
+git -C $METRICSDIR add cve-count-byday.json
+git -C $METRICSDIR commit -asm "Autobuilder updating CVE counts" || true
+if [ "$PUSH" = "1" ]; then
+	git -C $METRICSDIR push
+fi
+
+cp $METRICSDIR/cve-count-byday.json $RESULTSDIR
+cp $METRICSDIR/cve-count-byday-lastyear.json $RESULTSDIR
diff --git a/scripts/run-cvecheck b/scripts/run-cvecheck
index 373f57c..13ba6e3 100755
--- a/scripts/run-cvecheck
+++ b/scripts/run-cvecheck
@@ -94,16 +94,3 @@ if [ -e tmp/log/cve/cve-summary.json ]; then
     fi
     $OURDIR/cve-report.py tmp/log/cve/cve-summary.json > $RESULTSDIR/cve-status-$BRANCH.txt
 fi
-
-if [ "$BRANCH" = "master" ]; then
-    mkdir -p $METRICSDIR/cve-check/$BRANCH/
-    $OURDIR/cve-generate-chartdata --json $METRICSDIR/cve-count-byday.json --resultsdir $METRICSDIR/cve-check/
-    git -C $METRICSDIR add cve-count-byday.json
-    git -C $METRICSDIR commit -asm "Autobuilder updating CVE counts" || true
-    if [ "$PUSH" = "1" ]; then
-        git -C $METRICSDIR push
-    fi
-
-    cp $METRICSDIR/cve-count-byday.json $RESULTSDIR
-    cp $METRICSDIR/cve-count-byday-lastyear.json $RESULTSDIR
-fi
-- 
2.39.2


