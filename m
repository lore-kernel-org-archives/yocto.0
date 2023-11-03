Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04797C4332F
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 13:45:16 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web11.51400.1699019113643897646
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Nov 2023 06:45:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=YEwMNunb;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-40806e4106dso13006035e9.1
        for <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 06:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1699019112; x=1699623912; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=eYctzp2XiLByvyJb7ASwqEKlg6T83EPuadSR5eRYRsI=;
        b=YEwMNunblrseZWZEPqAVHTnBqlJY+0hoq0LiSO/vDIL7k6R+/yNLQc5zkNPEp9Rlcn
         DNkmP+DHt/WWCVKECUg7zt9cyBC+8UArOdclxhqUkku7ESKSPiJXCpw0R/96AVt24sJc
         5j2BBEkXBG9PnQdB7LlzkvTkUPcpxyc/2AiPE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699019112; x=1699623912;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eYctzp2XiLByvyJb7ASwqEKlg6T83EPuadSR5eRYRsI=;
        b=O2gg4j9pCGJ2bAxoSNvLFbzWW2ldxsYNlEBWDztI4ag9iLTKOMOr9H5TSKSDFiWCnR
         nXDUigXIOkHxdqs6pr5ZXP00eU027qKVtwDgZS3v6xz1MPkz534k1vqSO4o701w6rWF/
         TA07YFyXeOCRZmvoHlCcF45AUpNZbtZlO1bQv+gvSD8d91QTSEjJKV6vtFqlmWf9TrVJ
         20UTUoAXJZlI4Gim0tHKcJqbC/A9+MnQ+1D1A25VrX81506a+1hUqgDzMcOorIiGXtA4
         1MEL4RAufrWLH0bNf9+aHtTdH7PHYinadrGa3UrKxPSSBQyS+JSuuHSb+0GaURBUvjaw
         wEeA==
X-Gm-Message-State: AOJu0Yxzhi3dEhtdeKnzXZxOtCtCw09jWI0caqdRLrzUA6J7zllrgxmY
	+FG6dpz+coZ3GmTYIr1c1/Z4mZg8AWWqkM126Ug=
X-Google-Smtp-Source: AGHT+IH9UtqWbwMhkuoAAWZmrtAYAzaRV/UkWReAQdR1AsTmH/8EQyHNZdjhaO0sCxF7zGzvMQugfw==
X-Received: by 2002:a05:600c:21cf:b0:401:b92f:eec5 with SMTP id x15-20020a05600c21cf00b00401b92feec5mr2873334wmj.9.1699019111360;
        Fri, 03 Nov 2023 06:45:11 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:e0d8:6688:b1fe:2c10])
        by smtp.gmail.com with ESMTPSA id m36-20020a05600c3b2400b004075d5664basm2609918wms.8.2023.11.03.06.45.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 06:45:10 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] [kirkstone] config.json/scripts: Update to handle CVE checks for meta-oe
Date: Fri,  3 Nov 2023 13:45:09 +0000
Message-Id: <20231103134509.2657074-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 13:45:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61596

Backport the recent CVE script changes from the master branch and add in cvelayer.bbclass
as a way to exclude specific paths from the CVE check. Master can use the layer overrides
to do this but these are not present on kirkstone.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json                       |  33 ++++++++--
 scripts/cve-generate-chartdata    |  65 ++++++++++++++++++
 scripts/cve-report.py             |  30 +++++++++
 scripts/cvecheck/cvelayer.bbclass |   9 +++
 scripts/run-cvecheck              | 106 ++++++++++++++++++++++--------
 5 files changed, 212 insertions(+), 31 deletions(-)
 create mode 100755 scripts/cve-generate-chartdata
 create mode 100755 scripts/cve-report.py
 create mode 100644 scripts/cvecheck/cvelayer.bbclass

diff --git a/config.json b/config.json
index 86ba2f4..7828462 100644
--- a/config.json
+++ b/config.json
@@ -910,7 +910,7 @@
             }
         },
         "metrics" : {
-            "NEEDREPOS" : ["poky"],
+            "NEEDREPOS" : ["poky", "meta-openembedded"],
             "extravars" : [
                 "INHERIT += 'cve-check'",
                 "BB_DISKMON_DIRS = ''",
@@ -920,12 +920,35 @@
                 "BB_SERVER_TIMEOUT = '0'"
             ],
             "step1" : {
-                "shortname" : "Generating patch metrics",
-                "EXTRACMDS" : ["../../yocto-autobuilder-helper/scripts/run-patchmetrics ../ ../meta/ ${HELPERRESULTSDIR}/../../patchmetrics . ${HELPERBRANCHNAME}"]
+                "shortname" : "Fetching metrics repositories",
+                "EXTRAPLAINCMDS" : [
+                    "git clone ssh://git@push.yoctoproject.org/yocto-metrics && git clone ssh://git@push.yoctoproject.org/yocto-metrics-meta-oe",
+                    "install -D ${SCRIPTSDIR}/cvecheck/cvelayer.bbclass ./build/classes/cvelayer.bbclass"
+                ]
             },
             "step2" : {
-                "shortname" : "Running CVE checks",
-                "EXTRACMDS" : ["../../yocto-autobuilder-helper/scripts/run-cvecheck ../ ../meta/ ${HELPERRESULTSDIR}/../../patchmetrics . ${HELPERBRANCHNAME}"]
+                "shortname" : "CVE checks for meta",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/run-cvecheck --metrics ../yocto-metrics --branch ${HELPERBRANCHNAME} --results ${HELPERRESULTSDIR}/../../patchmetrics --push"]
+            },
+            "step3" : {
+                "shortname" : "CVE checks for meta-oe",
+                "ADDLAYER" : [
+                    "${BUILDDIR}/../meta-openembedded/meta-oe",
+                    "${BUILDDIR}/../meta-openembedded/meta-python",
+                    "${BUILDDIR}/../meta-openembedded/meta-perl",
+                    "${BUILDDIR}/../meta-openembedded/meta-networking",
+                    "${BUILDDIR}/../meta-openembedded/meta-multimedia",
+                    "${BUILDDIR}/../meta-openembedded/meta-gnome",
+                    "${BUILDDIR}/../meta-openembedded/meta-xfce",
+                    "${BUILDDIR}/../meta-openembedded/meta-filesystems",
+                    "${BUILDDIR}/../meta-openembedded/meta-initramfs",
+                    "${BUILDDIR}/../meta-openembedded/meta-webserver"
+                    ],
+                "extravars" : [
+                    "INHERIT += 'cvelayer'",
+                    "SKIP_PATHS += '${TOPDIR}/../meta'"
+                ],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/run-cvecheck --metrics ../yocto-metrics-meta-oe --branch ${HELPERBRANCHNAME} --results ${HELPERRESULTSDIR}/../../patchmetrics-meta-oe --push"]
             }
         },
         "meta-mingw" : {
diff --git a/scripts/cve-generate-chartdata b/scripts/cve-generate-chartdata
new file mode 100755
index 0000000..dbbbe82
--- /dev/null
+++ b/scripts/cve-generate-chartdata
@@ -0,0 +1,65 @@
+#!/usr/bin/env python3
+import json, os.path, collections
+import sys
+import argparse
+import subprocess
+import tempfile
+from datetime import datetime, date, timedelta
+
+args = argparse.ArgumentParser(description="Generate CVE count data files")
+args.add_argument("-j", "--json", help="JSON data file to use")
+args.add_argument("-r", "--resultsdir", help="results directory to parse")
+args = args.parse_args()
+
+try:
+    with open(args.json) as f:
+        counts = json.load(f)
+except FileNotFoundError:
+    # if the file does not exist, start with an empty database.
+    counts = {}
+
+lastyear = {}
+
+#
+# Write CVE counts by day
+#
+def round_to_day(val):
+    return int((datetime.fromtimestamp(int(val)).date() - date(1970, 1, 1)).total_seconds())
+
+a_year_ago = (datetime.now() - timedelta(days=365) - datetime(1970, 1, 1)).total_seconds()
+
+for branch in os.listdir(args.resultsdir):
+    branchdir = os.path.join(args.resultsdir, branch)
+    for f in os.listdir(branchdir):
+        ts = f.split(".")[0]
+        rounded_ts = str(round_to_day(ts))
+        if rounded_ts not in counts:
+            counts[rounded_ts] = {}
+        if branch not in counts[rounded_ts]:
+            cvereport = os.path.join(branchdir, f)
+            with open(cvereport) as report:
+                reportdata = json.load(report)
+            count = 0
+            seen = []
+            for package in reportdata['package']:
+                if branch in ['dunfell', 'kirkstone', 'langdale'] and package['name'] in ['linux-yocto']:
+                    continue
+                for issue in package['issue']:
+                    if issue['status'] == "Unpatched" and issue['id'] not in seen:
+                        count = count + 1
+                        seen.append(issue['id'])
+            print("Adding count %s for branch %s from file %s (ts %s)" % (count, branch, cvereport, rounded_ts))
+            counts[rounded_ts][branch] = str(count)
+
+for c in counts:
+    if int(c) > a_year_ago:
+        lastyear[c] = counts[c]
+
+with open(args.json, "w") as f:
+    json.dump(counts, f, sort_keys=True, indent="\t")
+
+with open(args.json.replace(".json", "-lastyear.json") , "w") as f:
+    json.dump(lastyear, f, sort_keys=True, indent="\t")
+
+
+
diff --git a/scripts/cve-report.py b/scripts/cve-report.py
new file mode 100755
index 0000000..7a95668
--- /dev/null
+++ b/scripts/cve-report.py
@@ -0,0 +1,30 @@
+#!/usr/bin/env python3
+
+import os, sys
+import json
+
+jsonfile = sys.argv[1]
+
+#ignored_recipes = ("linux-yocto", "db", "db-native")
+ignored_recipes = []
+
+with open(jsonfile) as f:
+    cvedata = json.load(f)
+
+cves = dict()
+
+for recipe in cvedata['package']:
+    if recipe['name'] in ignored_recipes:
+        continue
+    if 'issue' not in recipe:
+        continue
+    for i in recipe['issue']:
+        if i['status'] == "Unpatched":
+            if i["id"] in cves:
+                cves[i["id"]] += ":" + recipe['name']
+            else:
+                 cves[i["id"]] = recipe['name']
+
+print("Found %d unpatched CVEs" % len(cves))
+for cve in sorted(cves.keys()):
+    print("%s: %s https://web.nvd.nist.gov/view/vuln/detail?vulnId=%s *" % (cve, cves[cve], cve))
diff --git a/scripts/cvecheck/cvelayer.bbclass b/scripts/cvecheck/cvelayer.bbclass
new file mode 100644
index 0000000..fc809a4
--- /dev/null
+++ b/scripts/cvecheck/cvelayer.bbclass
@@ -0,0 +1,9 @@
+do_cve_check[prefuncs] += "cvechecklayer"
+
+python cvechecklayer () {
+    file = d.getVar("FILE")
+    skips = [os.path.normpath(s) for s in (d.getVar("SKIP_PATHS") or "").split()]
+    for skip in skips:
+        if file.startswith(skip + "/"):
+            d.setVar("do_cve_check", "")
+}
\ No newline at end of file
diff --git a/scripts/run-cvecheck b/scripts/run-cvecheck
index 6294fe6..711bec2 100755
--- a/scripts/run-cvecheck
+++ b/scripts/run-cvecheck
@@ -2,48 +2,102 @@
 #
 # SPDX-License-Identifier: GPL-2.0-only
 #
-PARENTDIR=`realpath $1`
-TARGETDIR=`realpath $2`
-RESULTSDIR=`realpath -m $3`
-BUILDDIR=`realpath $4`
-BRANCH=$5
-OURDIR=`dirname $0`
+
+set -eu
+
+ARGS=$(getopt -o '' --long 'metrics:,branch:,results:,push' -n 'run-cvecheck' -- "$@")
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
+# The branch we're building
+BRANCH=""
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
+        '--branch')
+            BRANCH=$2
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
 
 TIMESTAMP=`date +"%s"`
 
+if ! test "$METRICSDIR" -a "$BRANCH" -a "$RESULTSDIR"; then
+    echo "Not all required options specified"
+    exit 1
+fi
+
 #
 # CVE Checks
 #
-if [ ! -e $PARENTDIR/yocto-metrics ]; then
-    git clone ssh://git@push.yoctoproject.org/yocto-metrics $PARENTDIR/yocto-metrics
-fi
-
 if [ ! -d $RESULTSDIR ]; then
     mkdir $RESULTSDIR
 fi
 
-mkdir -p $PARENTDIR/yocto-metrics/cve-check/$BRANCH/
 cd ..
+set +u
 . oe-init-build-env build
+set -u
 bitbake world --runall cve_check -R conf/distro/include/cve-extra-exclusions.inc
+
 if [ -e tmp/log/cve/cve-summary.json ]; then
-    git -C $PARENTDIR/yocto-metrics rm cve-check/$BRANCH/*.json
-    mkdir -p $PARENTDIR/yocto-metrics/cve-check/$BRANCH
-    cp tmp/log/cve/cve-summary.json $PARENTDIR/yocto-metrics/cve-check/$BRANCH/$TIMESTAMP.json
-    git -C $PARENTDIR/yocto-metrics add cve-check/$BRANCH/$TIMESTAMP.json
-    git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder adding new CVE data for branch $BRANCH"
-    git -C $PARENTDIR/yocto-metrics push
+    git -C $METRICSDIR rm --ignore-unmatch cve-check/$BRANCH/*.json
+    mkdir -p $METRICSDIR/cve-check/$BRANCH/
+    cp tmp/log/cve/cve-summary.json $METRICSDIR/cve-check/$BRANCH/$TIMESTAMP.json
+    git -C $METRICSDIR add cve-check/$BRANCH/$TIMESTAMP.json
+    git -C $METRICSDIR commit -asm "Autobuilder adding new CVE data for branch $BRANCH" || true
+    if [ "$PUSH" = "1" ]; then
+        git -C $METRICSDIR push
+    fi
     $OURDIR/cve-report.py tmp/log/cve/cve-summary.json > $RESULTSDIR/cve-status-$BRANCH.txt
 fi
 
 if [ "$BRANCH" = "master" ]; then
-    mkdir -p $PARENTDIR/yocto-metrics/cve-check/
-    $OURDIR/cve-generate-chartdata --json $PARENTDIR/yocto-metrics/cve-count-byday.json --resultsdir $PARENTDIR/yocto-metrics/cve-check/
-    git -C $PARENTDIR/yocto-metrics add cve-count-byday.json
-    git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder updating CVE counts"
-    git -C $PARENTDIR/yocto-metrics push
-
-    cp $PARENTDIR/yocto-metrics/cve-count-byday.json $RESULTSDIR
-    cp $PARENTDIR/yocto-metrics/cve-count-byday-lastyear.json $RESULTSDIR
-fi
+    mkdir -p $METRICSDIR/cve-check/$BRANCH/
+    $OURDIR/cve-generate-chartdata --json $METRICSDIR/cve-count-byday.json --resultsdir $METRICSDIR/cve-check/
+    git -C $METRICSDIR add cve-count-byday.json
+    git -C $METRICSDIR commit -asm "Autobuilder updating CVE counts" || true
+    if [ "$PUSH" = "1" ]; then
+        git -C $METRICSDIR push
+    fi
 
+    cp $METRICSDIR/cve-count-byday.json $RESULTSDIR
+    cp $METRICSDIR/cve-count-byday-lastyear.json $RESULTSDIR
+fi
-- 
2.39.2


