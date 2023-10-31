Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF59BC4167B
	for <webhook@archiver.kernel.org>; Tue, 31 Oct 2023 14:50:07 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.572.1698763801278248405
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Oct 2023 07:50:01 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F12A22F4;
	Tue, 31 Oct 2023 07:50:41 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A7CE73F738;
	Tue, 31 Oct 2023 07:49:59 -0700 (PDT)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder-helper 1/2] Rewrite metrics-gathering scripts
Date: Tue, 31 Oct 2023 14:49:56 +0000
Message-Id: <20231031144957.648173-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 14:50:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61532

From: Ross Burton <ross.burton@arm.com>

Rewrite the scripts that gather the metrics to be more generic.

Extract the metrics repository cloning out so that we don't have to
repeatedly clone it.

Make the scripts parse their arguments using getopt and be more specific
about what they're passed.  In particular, this means that for the patch
review run we pass the _repository_ that we're scanning so we can do git
operations on it, and the base of the _layers_ (either a layer, or a
directory containing layers) so we know what to scan.

Be more clever when identifying what commits we need to analyse for
patch review: instead of iterating through a set randomly, we can keep
the revision list sorted and the checkout operations are a lot faster.

Remove the commit/file count metric addition as patchreview itself does
that now.

Add an explicit --push option so it's easy to test the scripts in
isolation without pushing.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json                    |  14 +++--
 scripts/cve-generate-chartdata |   8 ++-
 scripts/patchmetrics-update    | 109 +++++++++++++++++---------------
 scripts/run-cvecheck           | 106 +++++++++++++++++++++++--------
 scripts/run-patchmetrics       | 110 ++++++++++++++++++++++++++++-----
 5 files changed, 251 insertions(+), 96 deletions(-)

diff --git a/config.json b/config.json
index 918cf08..f3a4ee7 100644
--- a/config.json
+++ b/config.json
@@ -1208,12 +1208,18 @@
                 "BB_SERVER_TIMEOUT =3D '0'"
             ],
             "step1" : {
-                "shortname" : "Generating patch metrics",
-                "EXTRACMDS" : ["../../yocto-autobuilder-helper/scripts/r=
un-patchmetrics ../ ../meta/ ${HELPERRESULTSDIR}/../../patchmetrics . ${H=
ELPERBRANCHNAME}"]
+                "shortname" : "Fetching metrics repositories",
+                "EXTRAPLAINCMDS" : [
+                    "git clone ssh://git@push.yoctoproject.org/yocto-met=
rics"
+                ]
             },
             "step2" : {
-                "shortname" : "Running CVE checks",
-                "EXTRACMDS" : ["../../yocto-autobuilder-helper/scripts/r=
un-cvecheck ../ ../meta/ ${HELPERRESULTSDIR}/../../patchmetrics . ${HELPE=
RBRANCHNAME}"]
+                "shortname" : "Generating patch metrics for Poky",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/run-patchmetrics --poky ..=
/ --metrics ../yocto-metrics --repo ../ --layer ../meta --branch ${HELPER=
BRANCHNAME} --results ${HELPERRESULTSDIR}/../../patchmetrics --push"]
+            },
+            "step3" : {
+                "shortname" : "Running CVE checks for Poky",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/run-cvecheck --metrics ../=
yocto-metrics --branch ${HELPERBRANCHNAME} --results ${HELPERRESULTSDIR}/=
../../patchmetrics --push"]
             }
=20
         },
diff --git a/scripts/cve-generate-chartdata b/scripts/cve-generate-chartd=
ata
index 95d12ff..dbbbe82 100755
--- a/scripts/cve-generate-chartdata
+++ b/scripts/cve-generate-chartdata
@@ -11,8 +11,12 @@ args.add_argument("-j", "--json", help=3D"JSON data fi=
le to use")
 args.add_argument("-r", "--resultsdir", help=3D"results directory to par=
se")
 args =3D args.parse_args()
=20
-with open(args.json) as f:
-    counts =3D json.load(f)
+try:
+    with open(args.json) as f:
+        counts =3D json.load(f)
+except FileNotFoundError:
+    # if the file does not exist, start with an empty database.
+    counts =3D {}
=20
 lastyear =3D {}
=20
diff --git a/scripts/patchmetrics-update b/scripts/patchmetrics-update
index 65d351e..2fa7e4a 100755
--- a/scripts/patchmetrics-update
+++ b/scripts/patchmetrics-update
@@ -1,65 +1,76 @@
 #!/usr/bin/env python3
-import json, os.path, collections
-import sys
+
+import json
+import pathlib
 import argparse
 import subprocess
 import tempfile
+import sys
+
+# Given a git repository and a base to search for layers (either a layer
+# directly, or a directory containing layers), run the patchscript and u=
pdate
+# the specified JSON file.
=20
 args =3D argparse.ArgumentParser(description=3D"Update Patch Metrics")
-args.add_argument("-j", "--json", help=3D"update JSON")
-args.add_argument("-m", "--metadata", help=3D"metadata directry to scan"=
)
-args.add_argument("-s", "--patchscript", help=3D"review script to use")
-args.add_argument("-r", "--repo", help=3D"repository to use")
+args.add_argument("-j", "--json", required=3DTrue, type=3Dpathlib.Path, =
help=3D"update specified JSON file")
+args.add_argument("-s", "--patchscript", required=3DTrue, type=3Dpathlib=
.Path, help=3D"patchreview script to run")
+args.add_argument("-r", "--repo", required=3DTrue, type=3Dpathlib.Path, =
help=3D"repository to use (e.g. path/to/poky)")
+args.add_argument("-l", "--layer", type=3Dpathlib.Path, help=3D"layer/re=
pository to scan")
 args =3D args.parse_args()
=20
-status_values =3D ["accepted", "pending", "inappropriate", "backport", "=
submitted", "denied", "inactive-upstream", "malformed-upstream-status", "=
malformed-sob"]
-
-print("Running patchmetrics-update")
-
-with tempfile.TemporaryDirectory(prefix=3D"patchmetrics-") as tempdir:
-    subprocess.check_call(["git", "clone", args.repo, tempdir])
-    repo_revisions =3D subprocess.check_output(["git", "rev-list", "--si=
nce", "1274625106", "origin/master"], universal_newlines=3DTrue, cwd=3Dte=
mpdir).strip().split()
-
-    with open(args.json) as f:
-        data =3D json.load(f)
+if not args.repo.is_dir():
+    print(f"{args.repo} is not a directory")
+    sys.exit(1)
=20
-    seen =3D set()
-    for i in data:
-        if "commit" in i:
-            seen.add(i["commit"])
+if not args.layer.is_dir():
+    print(f"{args.layer} is not a directory")
+    sys.exit(1)
=20
-    needed_revisions =3D set(repo_revisions) - seen
+if not args.patchscript.is_file():
+    print(f"{args.patchscript} is not a file")
=20
-    print("Need to scan revisions %s" % str(needed_revisions))
=20
-    print("Needed %s revisions (%s and %s in data sets)" % (len(needed_r=
evisions), len(seen), len(repo_revisions)))
+print("Running patchmetrics-update")
=20
-    for rev in needed_revisions:
+if "meta-openembedded" in args.layer.name:
+    # 2023-01-01, arbitarily chosen
+    epoch =3D "1672531200"
+else:
+    # 2011-04-25, Yocto 1.0 release.
+    epoch =3D "1301074853"
+
+with tempfile.TemporaryDirectory(prefix=3D"patchmetrics-") as tempname:
+    tempdir =3D pathlib.Path(tempname)
+    layerdir =3D tempdir / args.layer.relative_to(args.repo)
+
+    # Create a temporary clone of the repository as we'll be checking ou=
t different revisions
+    print(f"Making a temporary clone of {args.repo} to {tempdir}")
+    subprocess.check_call(["git", "clone", "--quiet", args.repo, tempdir=
])
+
+    # Identify what revisions need to be analysed. If we reverse the lis=
t, keep
+    # order, and remove in-place, then iterating through a large number =
of
+    # commits is faster.
+    repo_revisions =3D subprocess.check_output(["git", "rev-list", "--re=
verse", "--since", epoch, "origin/master"], universal_newlines=3DTrue, cw=
d=3Dtempdir).strip().split()
+    revision_count =3D len(repo_revisions)
+
+    if args.json.exists():
+        with open(args.json) as f:
+            data =3D json.load(f)
+
+        seen =3D set()
+        for i in data:
+            try:
+                repo_revisions.remove(i["commit"])
+            except ValueError:
+                pass
+
+    new_count =3D len(repo_revisions)
+    print("Found %s, need to scan %d revisions:\n%s" % (revision_count -=
 new_count, new_count, str(repo_revisions)))
+
+    # Run the patchreview script for every revision
+    for rev in repo_revisions:
         print("Processing %s" % rev)
-        subprocess.check_output(["git", "reset", "--hard", rev], univers=
al_newlines=3DTrue, cwd=3Dtempdir).strip()
-        subprocess.check_call([args.patchscript, os.path.join(tempdir, o=
s.path.relpath(args.metadata, args.repo)), "-j", args.json])
-
-    newdata =3D []
-    with open(args.json) as f:
-        data =3D json.load(f)
-
-    for i in data:
-        if "commit" not in i:
-            print("Ignoring data with no commit %s" % str(i))
-            continue
-
-        if "commit_count" not in i:
-            i['commit_count'] =3D subprocess.check_output(["git", "rev-l=
ist", "--count", i['commit']], universal_newlines=3DTrue, cwd=3Dtempdir).=
strip()
-        if "recipe_count" not in i:
-            subprocess.check_output(["git", "reset", "--hard", i['commit=
']], universal_newlines=3DTrue, cwd=3Dtempdir).strip()
-            i['recipe_count'] =3D subprocess.check_output(["find meta -t=
ype f -name *.bb  | wc -l"], shell=3DTrue, universal_newlines=3DTrue, cwd=
=3Dtempdir).strip()
-
-        #print(i['commit_count'] + " " + i['recipe_count'])
-
-        newdata.append(i)
-
-    with open(args.json, "w") as f:
-        json.dump(newdata, f, sort_keys=3DTrue, indent=3D"\t")
+        subprocess.check_call(["git", "checkout", "--detach", rev], cwd=3D=
tempdir)
+        subprocess.check_call([args.patchscript, "--json", args.json, la=
yerdir])
=20
 print("Finished patchmetrics-update")
-
diff --git a/scripts/run-cvecheck b/scripts/run-cvecheck
index 6294fe6..711bec2 100755
--- a/scripts/run-cvecheck
+++ b/scripts/run-cvecheck
@@ -2,48 +2,102 @@
 #
 # SPDX-License-Identifier: GPL-2.0-only
 #
-PARENTDIR=3D`realpath $1`
-TARGETDIR=3D`realpath $2`
-RESULTSDIR=3D`realpath -m $3`
-BUILDDIR=3D`realpath $4`
-BRANCH=3D$5
-OURDIR=3D`dirname $0`
+
+set -eu
+
+ARGS=3D$(getopt -o '' --long 'metrics:,branch:,results:,push' -n 'run-cv=
echeck' -- "$@")
+if [ $? -ne 0 ]; then
+    echo 'Cannot parse arguments...' >&2
+    exit 1
+fi
+eval set -- "$ARGS"
+unset ARGS
+
+# Location of the yocto-autobuilder-helper scripts
+OURDIR=3D$(dirname $0)
+# The metrics repository to use
+METRICSDIR=3D""
+# Where to copy results to
+RESULTSDIR=3D""
+# The branch we're building
+BRANCH=3D""
+# Whether to push the metrics
+PUSH=3D0
+
+while true; do
+    case "$1" in
+        '--metrics')
+            METRICSDIR=3D$(realpath $2)
+            shift 2
+            continue
+        ;;
+        '--branch')
+            BRANCH=3D$2
+            shift 2
+            continue
+        ;;
+        '--results')
+            RESULTSDIR=3D$(realpath -m $2)
+            shift 2
+            continue
+        ;;
+        '--push')
+            PUSH=3D1
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
=20
 TIMESTAMP=3D`date +"%s"`
=20
+if ! test "$METRICSDIR" -a "$BRANCH" -a "$RESULTSDIR"; then
+    echo "Not all required options specified"
+    exit 1
+fi
+
 #
 # CVE Checks
 #
-if [ ! -e $PARENTDIR/yocto-metrics ]; then
-    git clone ssh://git@push.yoctoproject.org/yocto-metrics $PARENTDIR/y=
octo-metrics
-fi
-
 if [ ! -d $RESULTSDIR ]; then
     mkdir $RESULTSDIR
 fi
=20
-mkdir -p $PARENTDIR/yocto-metrics/cve-check/$BRANCH/
 cd ..
+set +u
 . oe-init-build-env build
+set -u
 bitbake world --runall cve_check -R conf/distro/include/cve-extra-exclus=
ions.inc
+
 if [ -e tmp/log/cve/cve-summary.json ]; then
-    git -C $PARENTDIR/yocto-metrics rm cve-check/$BRANCH/*.json
-    mkdir -p $PARENTDIR/yocto-metrics/cve-check/$BRANCH
-    cp tmp/log/cve/cve-summary.json $PARENTDIR/yocto-metrics/cve-check/$=
BRANCH/$TIMESTAMP.json
-    git -C $PARENTDIR/yocto-metrics add cve-check/$BRANCH/$TIMESTAMP.jso=
n
-    git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder adding new =
CVE data for branch $BRANCH"
-    git -C $PARENTDIR/yocto-metrics push
+    git -C $METRICSDIR rm --ignore-unmatch cve-check/$BRANCH/*.json
+    mkdir -p $METRICSDIR/cve-check/$BRANCH/
+    cp tmp/log/cve/cve-summary.json $METRICSDIR/cve-check/$BRANCH/$TIMES=
TAMP.json
+    git -C $METRICSDIR add cve-check/$BRANCH/$TIMESTAMP.json
+    git -C $METRICSDIR commit -asm "Autobuilder adding new CVE data for =
branch $BRANCH" || true
+    if [ "$PUSH" =3D "1" ]; then
+        git -C $METRICSDIR push
+    fi
     $OURDIR/cve-report.py tmp/log/cve/cve-summary.json > $RESULTSDIR/cve=
-status-$BRANCH.txt
 fi
=20
 if [ "$BRANCH" =3D "master" ]; then
-    mkdir -p $PARENTDIR/yocto-metrics/cve-check/
-    $OURDIR/cve-generate-chartdata --json $PARENTDIR/yocto-metrics/cve-c=
ount-byday.json --resultsdir $PARENTDIR/yocto-metrics/cve-check/
-    git -C $PARENTDIR/yocto-metrics add cve-count-byday.json
-    git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder updating CV=
E counts"
-    git -C $PARENTDIR/yocto-metrics push
-
-    cp $PARENTDIR/yocto-metrics/cve-count-byday.json $RESULTSDIR
-    cp $PARENTDIR/yocto-metrics/cve-count-byday-lastyear.json $RESULTSDI=
R
-fi
+    mkdir -p $METRICSDIR/cve-check/$BRANCH/
+    $OURDIR/cve-generate-chartdata --json $METRICSDIR/cve-count-byday.js=
on --resultsdir $METRICSDIR/cve-check/
+    git -C $METRICSDIR add cve-count-byday.json
+    git -C $METRICSDIR commit -asm "Autobuilder updating CVE counts" || =
true
+    if [ "$PUSH" =3D "1" ]; then
+        git -C $METRICSDIR push
+    fi
=20
+    cp $METRICSDIR/cve-count-byday.json $RESULTSDIR
+    cp $METRICSDIR/cve-count-byday-lastyear.json $RESULTSDIR
+fi
diff --git a/scripts/run-patchmetrics b/scripts/run-patchmetrics
index 391ac45..a75cf52 100755
--- a/scripts/run-patchmetrics
+++ b/scripts/run-patchmetrics
@@ -2,34 +2,114 @@
 #
 # SPDX-License-Identifier: GPL-2.0-only
 #
-PARENTDIR=3D`realpath $1`
-TARGETDIR=3D`realpath $2`
-RESULTSDIR=3D`realpath -m $3`
-BUILDDIR=3D`realpath $4`
-BRANCH=3D$5
-OURDIR=3D`dirname $0`
=20
-TIMESTAMP=3D`date +"%s"`
+set -eu
+
+ARGS=3D$(getopt -o '' --long 'poky:,metrics:,repo:,layer:,branch:,result=
s:,push' -n 'run-patchmetrics' -- "$@")
+if [ $? -ne 0 ]; then
+    echo 'Cannot parse arguments...' >&2
+    exit 1
+fi
+eval set -- "$ARGS"
+unset ARGS
+
+# Location of the yocto-autobuilder-helper scripts
+OURDIR=3D$(dirname $0)
+# Where Poky is (for patchreview.py)
+POKYDIR=3D""
+# The metrics repository to use
+METRICSDIR=3D""
+# Where to copy results to
+RESULTSDIR=3D""
+# The branch we're building
+BRANCH=3D""
+# The layer/repository to scan
+LAYERDIR=3D""
+# Whether to push the metrics
+PUSH=3D0
+
+while true; do
+    case "$1" in
+        '--poky')
+            POKYDIR=3D$(realpath $2)
+            shift 2
+            continue
+        ;;
+        '--metrics')
+            METRICSDIR=3D$(realpath $2)
+            shift 2
+            continue
+        ;;
+        '--layer')
+            LAYERDIR=3D$(realpath $2)
+            shift 2
+            continue
+        ;;
+        '--repo')
+            REPODIR=3D$(realpath $2)
+            shift 2
+            continue
+        ;;
+        '--branch')
+            BRANCH=3D$2
+            shift 2
+            continue
+        ;;
+        '--results')
+            RESULTSDIR=3D$(realpath -m $2)
+            shift 2
+            continue
+        ;;
+        '--push')
+            PUSH=3D1
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
+if ! test "$POKYDIR" -a "$METRICSDIR" -a "$REPODIR" -a "$LAYERDIR" -a "$=
BRANCH" -a "$RESULTSDIR"; then
+    echo "Not all required options specified"
+    exit 1
+fi
=20
 # We only monitor patch metrics on the master branch
 if [ "$BRANCH" !=3D "master" ]; then
+    echo "Skipping, $BRANCH is not master"
     exit 0
 fi
=20
 #
 # Patch Metrics
 #
-if [ ! -e $PARENTDIR/yocto-metrics ]; then
-    git clone ssh://git@push.yoctoproject.org/yocto-metrics $PARENTDIR/y=
octo-metrics
+
+set -x
+$OURDIR/patchmetrics-update --patchscript $POKYDIR/scripts/contrib/patch=
review.py --json $METRICSDIR/patch-status.json --repo $REPODIR --layer $L=
AYERDIR
+set +x
+
+# Allow the commit to fail if there is nothing to commit
+git -C $METRICSDIR commit -asm "Autobuilder adding new patch stats" || t=
rue
+
+if [ "$PUSH" =3D "1" ]; then
+    git -C $METRICSDIR push
 fi
-$OURDIR/patchmetrics-update --repo $PARENTDIR --patchscript $PARENTDIR/s=
cripts/contrib/patchreview.py --metadata $TARGETDIR --json $PARENTDIR/yoc=
to-metrics/patch-status.json
-git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder adding new patc=
h stats"
-git -C $PARENTDIR/yocto-metrics push
+
+#
+# Update the results
+#
=20
 if [ ! -d $RESULTSDIR ]; then
     mkdir $RESULTSDIR
 fi
=20
-$OURDIR/patchmetrics-generate-chartdata --json $PARENTDIR/yocto-metrics/=
patch-status.json --outputdir $RESULTSDIR
-cp $PARENTDIR/yocto-metrics/patch-status.json $RESULTSDIR
-cp $PARENTDIR/yocto-metrics/patch-status/* $RESULTSDIR
+$OURDIR/patchmetrics-generate-chartdata --json $METRICSDIR/patch-status.=
json --outputdir $RESULTSDIR
+cp $METRICSDIR/patch-status.json $RESULTSDIR
+cp $METRICSDIR/patch-status/* $RESULTSDIR
--=20
2.34.1


