Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D06B2C4332F
	for <webhook@archiver.kernel.org>; Tue, 31 Oct 2023 15:01:27 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web11.863.1698764485179666567
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Oct 2023 08:01:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=BmcknhNs;
 spf=pass (domain: smile.fr, ip: 209.85.218.49, mailfrom: yoann.congal@smile.fr)
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-9d216597f64so461834766b.3
        for <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 08:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1698764483; x=1699369283; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1oHKZAvxGRoyPWpIo2pjnXF+BWIQYnTzdOp5JninyYc=;
        b=BmcknhNs6dd8OK/xQptw0ueLdlnOlQOCrYVyas/kOgiaqiYyvlVarsdivTdnZWM1g8
         LsXmHL1pRQW/sKX/479qWYJITMIWRig0Vd4/wJYzXbZTs+TTcOYLz68RDCwlQVyOKRsX
         /LTO3LV3pUzgKG2i0/3GDrib0+tXTnlBjwwmr9+YDcyFmXg5dGihHd0nJ24QWp5uGiHE
         mM9MkOGort0OlqypEpFUCeNhqHA7Ie/DeqLZfAKsLDRGM6L4/FH4A1xtcmYarnY6k2Nd
         2OiBMJb9XVajK91ccohVa9OZssq+3UpWqSSEkyzIFWq5F+3s6ouwZxPnu8kGdnoBZgw5
         CE+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698764483; x=1699369283;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1oHKZAvxGRoyPWpIo2pjnXF+BWIQYnTzdOp5JninyYc=;
        b=T35kJUcZt+b93nsP8fu4SWGM0aenDTPSJZBprEZ4xRfuE9e/HFRcotSGaTtHy4SHem
         FDlXY0DSxxXDypANlvqz1z6a4KisTzD225UfGEITB4WTaKbENgsbKgZpJJRAYwxTe1ut
         Fkn8m8JD7uZmqmfJhyjNqIJdMltvp7v3CCqRgzTpuW8bhWXDK63tOIKHUlgEPqqouJVU
         FNCbHMyyQuaVCgElsehKizotc40A36jj8nYG2B8EckTaNS3H+u+n18VLjj1C7KwrUJ1E
         m7gQL8dSAC8tdXkPRKIlwUl1fr7ClhAdg598SjQACr0W7jhHM1rz0vrxkLA41sLiBpFs
         Ldfg==
X-Gm-Message-State: AOJu0YxKIIpAr2rtDNsZvDOO74SLlYRomXI20lkO+8efkgqf1BN6tVOs
	hX1I0nGatPmi72PxAX5Na9OGpQ==
X-Google-Smtp-Source: AGHT+IFrkvQC2+F9eG8JiLpOzY+gFngxuQAwXxuoPgQUxf7UoEEDJCMj2GAN1TyBLnpe2C3b6XwGSA==
X-Received: by 2002:a17:907:1381:b0:9d0:e4a1:2826 with SMTP id vs1-20020a170907138100b009d0e4a12826mr7092626ejb.67.1698764483090;
        Tue, 31 Oct 2023 08:01:23 -0700 (PDT)
Received: from [192.168.0.27] ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id ov8-20020a170906fc0800b009b947f81c4asm1101624ejb.155.2023.10.31.08.01.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 08:01:22 -0700 (PDT)
Message-ID: <1554c8d8-3147-46aa-83ef-357a3085ffdb@smile.fr>
Date: Tue, 31 Oct 2023 16:01:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 1/2] Rewrite
 metrics-gathering scripts
To: Ross Burton <ross.burton@arm.com>, yocto@lists.yoctoproject.org
Cc: nd@arm.com
References: <20231031144957.648173-1-ross.burton@arm.com>
Content-Language: en-US
From: Yoann Congal <yoann.congal@smile.fr>
Organization: Smile ECS
In-Reply-To: <20231031144957.648173-1-ross.burton@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 15:01:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61535


Le 31/10/2023 à 15:49, Ross Burton a écrit :
> From: Ross Burton <ross.burton@arm.com>
> 
> Rewrite the scripts that gather the metrics to be more generic.
> 
> Extract the metrics repository cloning out so that we don't have to
> repeatedly clone it.
> 
> Make the scripts parse their arguments using getopt and be more specific
> about what they're passed.  In particular, this means that for the patch
> review run we pass the _repository_ that we're scanning so we can do git
> operations on it, and the base of the _layers_ (either a layer, or a
> directory containing layers) so we know what to scan.
> 
> Be more clever when identifying what commits we need to analyse for
> patch review: instead of iterating through a set randomly, we can keep
> the revision list sorted and the checkout operations are a lot faster.
> 
> Remove the commit/file count metric addition as patchreview itself does
> that now.
> 
> Add an explicit --push option so it's easy to test the scripts in
> isolation without pushing.
> 
> Signed-off-by: Ross Burton <ross.burton@arm.com>

Thanks Ross!
Reviewed-by: Yoann Congal <yoann.congal@smile.fr>

> ---
>  config.json                    |  14 +++--
>  scripts/cve-generate-chartdata |   8 ++-
>  scripts/patchmetrics-update    | 109 +++++++++++++++++---------------
>  scripts/run-cvecheck           | 106 +++++++++++++++++++++++--------
>  scripts/run-patchmetrics       | 110 ++++++++++++++++++++++++++++-----
>  5 files changed, 251 insertions(+), 96 deletions(-)
> 
> diff --git a/config.json b/config.json
> index 918cf08..f3a4ee7 100644
> --- a/config.json
> +++ b/config.json
> @@ -1208,12 +1208,18 @@
>                  "BB_SERVER_TIMEOUT = '0'"
>              ],
>              "step1" : {
> -                "shortname" : "Generating patch metrics",
> -                "EXTRACMDS" : ["../../yocto-autobuilder-helper/scripts/run-patchmetrics ../ ../meta/ ${HELPERRESULTSDIR}/../../patchmetrics . ${HELPERBRANCHNAME}"]
> +                "shortname" : "Fetching metrics repositories",
> +                "EXTRAPLAINCMDS" : [
> +                    "git clone ssh://git@push.yoctoproject.org/yocto-metrics"
> +                ]
>              },
>              "step2" : {
> -                "shortname" : "Running CVE checks",
> -                "EXTRACMDS" : ["../../yocto-autobuilder-helper/scripts/run-cvecheck ../ ../meta/ ${HELPERRESULTSDIR}/../../patchmetrics . ${HELPERBRANCHNAME}"]
> +                "shortname" : "Generating patch metrics for Poky",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/run-patchmetrics --poky ../ --metrics ../yocto-metrics --repo ../ --layer ../meta --branch ${HELPERBRANCHNAME} --results ${HELPERRESULTSDIR}/../../patchmetrics --push"]
> +            },
> +            "step3" : {
> +                "shortname" : "Running CVE checks for Poky",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/run-cvecheck --metrics ../yocto-metrics --branch ${HELPERBRANCHNAME} --results ${HELPERRESULTSDIR}/../../patchmetrics --push"]
>              }
>  
>          },
> diff --git a/scripts/cve-generate-chartdata b/scripts/cve-generate-chartdata
> index 95d12ff..dbbbe82 100755
> --- a/scripts/cve-generate-chartdata
> +++ b/scripts/cve-generate-chartdata
> @@ -11,8 +11,12 @@ args.add_argument("-j", "--json", help="JSON data file to use")
>  args.add_argument("-r", "--resultsdir", help="results directory to parse")
>  args = args.parse_args()
>  
> -with open(args.json) as f:
> -    counts = json.load(f)
> +try:
> +    with open(args.json) as f:
> +        counts = json.load(f)
> +except FileNotFoundError:
> +    # if the file does not exist, start with an empty database.
> +    counts = {}
>  
>  lastyear = {}
>  
> diff --git a/scripts/patchmetrics-update b/scripts/patchmetrics-update
> index 65d351e..2fa7e4a 100755
> --- a/scripts/patchmetrics-update
> +++ b/scripts/patchmetrics-update
> @@ -1,65 +1,76 @@
>  #!/usr/bin/env python3
> -import json, os.path, collections
> -import sys
> +
> +import json
> +import pathlib
>  import argparse
>  import subprocess
>  import tempfile
> +import sys
> +
> +# Given a git repository and a base to search for layers (either a layer
> +# directly, or a directory containing layers), run the patchscript and update
> +# the specified JSON file.
>  
>  args = argparse.ArgumentParser(description="Update Patch Metrics")
> -args.add_argument("-j", "--json", help="update JSON")
> -args.add_argument("-m", "--metadata", help="metadata directry to scan")
> -args.add_argument("-s", "--patchscript", help="review script to use")
> -args.add_argument("-r", "--repo", help="repository to use")
> +args.add_argument("-j", "--json", required=True, type=pathlib.Path, help="update specified JSON file")
> +args.add_argument("-s", "--patchscript", required=True, type=pathlib.Path, help="patchreview script to run")
> +args.add_argument("-r", "--repo", required=True, type=pathlib.Path, help="repository to use (e.g. path/to/poky)")
> +args.add_argument("-l", "--layer", type=pathlib.Path, help="layer/repository to scan")
>  args = args.parse_args()
>  
> -status_values = ["accepted", "pending", "inappropriate", "backport", "submitted", "denied", "inactive-upstream", "malformed-upstream-status", "malformed-sob"]
> -
> -print("Running patchmetrics-update")
> -
> -with tempfile.TemporaryDirectory(prefix="patchmetrics-") as tempdir:
> -    subprocess.check_call(["git", "clone", args.repo, tempdir])
> -    repo_revisions = subprocess.check_output(["git", "rev-list", "--since", "1274625106", "origin/master"], universal_newlines=True, cwd=tempdir).strip().split()
> -
> -    with open(args.json) as f:
> -        data = json.load(f)
> +if not args.repo.is_dir():
> +    print(f"{args.repo} is not a directory")
> +    sys.exit(1)
>  
> -    seen = set()
> -    for i in data:
> -        if "commit" in i:
> -            seen.add(i["commit"])
> +if not args.layer.is_dir():
> +    print(f"{args.layer} is not a directory")
> +    sys.exit(1)
>  
> -    needed_revisions = set(repo_revisions) - seen
> +if not args.patchscript.is_file():
> +    print(f"{args.patchscript} is not a file")
>  
> -    print("Need to scan revisions %s" % str(needed_revisions))
>  
> -    print("Needed %s revisions (%s and %s in data sets)" % (len(needed_revisions), len(seen), len(repo_revisions)))
> +print("Running patchmetrics-update")
>  
> -    for rev in needed_revisions:
> +if "meta-openembedded" in args.layer.name:
> +    # 2023-01-01, arbitarily chosen
> +    epoch = "1672531200"
> +else:
> +    # 2011-04-25, Yocto 1.0 release.
> +    epoch = "1301074853"
> +
> +with tempfile.TemporaryDirectory(prefix="patchmetrics-") as tempname:
> +    tempdir = pathlib.Path(tempname)
> +    layerdir = tempdir / args.layer.relative_to(args.repo)
> +
> +    # Create a temporary clone of the repository as we'll be checking out different revisions
> +    print(f"Making a temporary clone of {args.repo} to {tempdir}")
> +    subprocess.check_call(["git", "clone", "--quiet", args.repo, tempdir])
> +
> +    # Identify what revisions need to be analysed. If we reverse the list, keep
> +    # order, and remove in-place, then iterating through a large number of
> +    # commits is faster.
> +    repo_revisions = subprocess.check_output(["git", "rev-list", "--reverse", "--since", epoch, "origin/master"], universal_newlines=True, cwd=tempdir).strip().split()
> +    revision_count = len(repo_revisions)
> +
> +    if args.json.exists():
> +        with open(args.json) as f:
> +            data = json.load(f)
> +
> +        seen = set()
> +        for i in data:
> +            try:
> +                repo_revisions.remove(i["commit"])
> +            except ValueError:
> +                pass
> +
> +    new_count = len(repo_revisions)
> +    print("Found %s, need to scan %d revisions:\n%s" % (revision_count - new_count, new_count, str(repo_revisions)))
> +
> +    # Run the patchreview script for every revision
> +    for rev in repo_revisions:
>          print("Processing %s" % rev)
> -        subprocess.check_output(["git", "reset", "--hard", rev], universal_newlines=True, cwd=tempdir).strip()
> -        subprocess.check_call([args.patchscript, os.path.join(tempdir, os.path.relpath(args.metadata, args.repo)), "-j", args.json])
> -
> -    newdata = []
> -    with open(args.json) as f:
> -        data = json.load(f)
> -
> -    for i in data:
> -        if "commit" not in i:
> -            print("Ignoring data with no commit %s" % str(i))
> -            continue
> -
> -        if "commit_count" not in i:
> -            i['commit_count'] = subprocess.check_output(["git", "rev-list", "--count", i['commit']], universal_newlines=True, cwd=tempdir).strip()
> -        if "recipe_count" not in i:
> -            subprocess.check_output(["git", "reset", "--hard", i['commit']], universal_newlines=True, cwd=tempdir).strip()
> -            i['recipe_count'] = subprocess.check_output(["find meta -type f -name *.bb  | wc -l"], shell=True, universal_newlines=True, cwd=tempdir).strip()
> -
> -        #print(i['commit_count'] + " " + i['recipe_count'])
> -
> -        newdata.append(i)
> -
> -    with open(args.json, "w") as f:
> -        json.dump(newdata, f, sort_keys=True, indent="\t")
> +        subprocess.check_call(["git", "checkout", "--detach", rev], cwd=tempdir)
> +        subprocess.check_call([args.patchscript, "--json", args.json, layerdir])
>  
>  print("Finished patchmetrics-update")
> -
> diff --git a/scripts/run-cvecheck b/scripts/run-cvecheck
> index 6294fe6..711bec2 100755
> --- a/scripts/run-cvecheck
> +++ b/scripts/run-cvecheck
> @@ -2,48 +2,102 @@
>  #
>  # SPDX-License-Identifier: GPL-2.0-only
>  #
> -PARENTDIR=`realpath $1`
> -TARGETDIR=`realpath $2`
> -RESULTSDIR=`realpath -m $3`
> -BUILDDIR=`realpath $4`
> -BRANCH=$5
> -OURDIR=`dirname $0`
> +
> +set -eu
> +
> +ARGS=$(getopt -o '' --long 'metrics:,branch:,results:,push' -n 'run-cvecheck' -- "$@")
> +if [ $? -ne 0 ]; then
> +    echo 'Cannot parse arguments...' >&2
> +    exit 1
> +fi
> +eval set -- "$ARGS"
> +unset ARGS
> +
> +# Location of the yocto-autobuilder-helper scripts
> +OURDIR=$(dirname $0)
> +# The metrics repository to use
> +METRICSDIR=""
> +# Where to copy results to
> +RESULTSDIR=""
> +# The branch we're building
> +BRANCH=""
> +# Whether to push the metrics
> +PUSH=0
> +
> +while true; do
> +    case "$1" in
> +        '--metrics')
> +            METRICSDIR=$(realpath $2)
> +            shift 2
> +            continue
> +        ;;
> +        '--branch')
> +            BRANCH=$2
> +            shift 2
> +            continue
> +        ;;
> +        '--results')
> +            RESULTSDIR=$(realpath -m $2)
> +            shift 2
> +            continue
> +        ;;
> +        '--push')
> +            PUSH=1
> +            shift
> +            continue
> +        ;;
> +        '--')
> +            shift
> +            break
> +        ;;
> +        *)
> +            echo "Unexpected value $1" >&2
> +            exit 1
> +        ;;
> +    esac
> +done
>  
>  TIMESTAMP=`date +"%s"`
>  
> +if ! test "$METRICSDIR" -a "$BRANCH" -a "$RESULTSDIR"; then
> +    echo "Not all required options specified"
> +    exit 1
> +fi
> +
>  #
>  # CVE Checks
>  #
> -if [ ! -e $PARENTDIR/yocto-metrics ]; then
> -    git clone ssh://git@push.yoctoproject.org/yocto-metrics $PARENTDIR/yocto-metrics
> -fi
> -
>  if [ ! -d $RESULTSDIR ]; then
>      mkdir $RESULTSDIR
>  fi
>  
> -mkdir -p $PARENTDIR/yocto-metrics/cve-check/$BRANCH/
>  cd ..
> +set +u
>  . oe-init-build-env build
> +set -u
>  bitbake world --runall cve_check -R conf/distro/include/cve-extra-exclusions.inc
> +
>  if [ -e tmp/log/cve/cve-summary.json ]; then
> -    git -C $PARENTDIR/yocto-metrics rm cve-check/$BRANCH/*.json
> -    mkdir -p $PARENTDIR/yocto-metrics/cve-check/$BRANCH
> -    cp tmp/log/cve/cve-summary.json $PARENTDIR/yocto-metrics/cve-check/$BRANCH/$TIMESTAMP.json
> -    git -C $PARENTDIR/yocto-metrics add cve-check/$BRANCH/$TIMESTAMP.json
> -    git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder adding new CVE data for branch $BRANCH"
> -    git -C $PARENTDIR/yocto-metrics push
> +    git -C $METRICSDIR rm --ignore-unmatch cve-check/$BRANCH/*.json
> +    mkdir -p $METRICSDIR/cve-check/$BRANCH/
> +    cp tmp/log/cve/cve-summary.json $METRICSDIR/cve-check/$BRANCH/$TIMESTAMP.json
> +    git -C $METRICSDIR add cve-check/$BRANCH/$TIMESTAMP.json
> +    git -C $METRICSDIR commit -asm "Autobuilder adding new CVE data for branch $BRANCH" || true
> +    if [ "$PUSH" = "1" ]; then
> +        git -C $METRICSDIR push
> +    fi
>      $OURDIR/cve-report.py tmp/log/cve/cve-summary.json > $RESULTSDIR/cve-status-$BRANCH.txt
>  fi
>  
>  if [ "$BRANCH" = "master" ]; then
> -    mkdir -p $PARENTDIR/yocto-metrics/cve-check/
> -    $OURDIR/cve-generate-chartdata --json $PARENTDIR/yocto-metrics/cve-count-byday.json --resultsdir $PARENTDIR/yocto-metrics/cve-check/
> -    git -C $PARENTDIR/yocto-metrics add cve-count-byday.json
> -    git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder updating CVE counts"
> -    git -C $PARENTDIR/yocto-metrics push
> -
> -    cp $PARENTDIR/yocto-metrics/cve-count-byday.json $RESULTSDIR
> -    cp $PARENTDIR/yocto-metrics/cve-count-byday-lastyear.json $RESULTSDIR
> -fi
> +    mkdir -p $METRICSDIR/cve-check/$BRANCH/
> +    $OURDIR/cve-generate-chartdata --json $METRICSDIR/cve-count-byday.json --resultsdir $METRICSDIR/cve-check/
> +    git -C $METRICSDIR add cve-count-byday.json
> +    git -C $METRICSDIR commit -asm "Autobuilder updating CVE counts" || true
> +    if [ "$PUSH" = "1" ]; then
> +        git -C $METRICSDIR push
> +    fi
>  
> +    cp $METRICSDIR/cve-count-byday.json $RESULTSDIR
> +    cp $METRICSDIR/cve-count-byday-lastyear.json $RESULTSDIR
> +fi
> diff --git a/scripts/run-patchmetrics b/scripts/run-patchmetrics
> index 391ac45..a75cf52 100755
> --- a/scripts/run-patchmetrics
> +++ b/scripts/run-patchmetrics
> @@ -2,34 +2,114 @@
>  #
>  # SPDX-License-Identifier: GPL-2.0-only
>  #
> -PARENTDIR=`realpath $1`
> -TARGETDIR=`realpath $2`
> -RESULTSDIR=`realpath -m $3`
> -BUILDDIR=`realpath $4`
> -BRANCH=$5
> -OURDIR=`dirname $0`
>  
> -TIMESTAMP=`date +"%s"`
> +set -eu
> +
> +ARGS=$(getopt -o '' --long 'poky:,metrics:,repo:,layer:,branch:,results:,push' -n 'run-patchmetrics' -- "$@")
> +if [ $? -ne 0 ]; then
> +    echo 'Cannot parse arguments...' >&2
> +    exit 1
> +fi
> +eval set -- "$ARGS"
> +unset ARGS
> +
> +# Location of the yocto-autobuilder-helper scripts
> +OURDIR=$(dirname $0)
> +# Where Poky is (for patchreview.py)
> +POKYDIR=""
> +# The metrics repository to use
> +METRICSDIR=""
> +# Where to copy results to
> +RESULTSDIR=""
> +# The branch we're building
> +BRANCH=""
> +# The layer/repository to scan
> +LAYERDIR=""
> +# Whether to push the metrics
> +PUSH=0
> +
> +while true; do
> +    case "$1" in
> +        '--poky')
> +            POKYDIR=$(realpath $2)
> +            shift 2
> +            continue
> +        ;;
> +        '--metrics')
> +            METRICSDIR=$(realpath $2)
> +            shift 2
> +            continue
> +        ;;
> +        '--layer')
> +            LAYERDIR=$(realpath $2)
> +            shift 2
> +            continue
> +        ;;
> +        '--repo')
> +            REPODIR=$(realpath $2)
> +            shift 2
> +            continue
> +        ;;
> +        '--branch')
> +            BRANCH=$2
> +            shift 2
> +            continue
> +        ;;
> +        '--results')
> +            RESULTSDIR=$(realpath -m $2)
> +            shift 2
> +            continue
> +        ;;
> +        '--push')
> +            PUSH=1
> +            shift
> +            continue
> +        ;;
> +        '--')
> +            shift
> +            break
> +        ;;
> +        *)
> +            echo "Unexpected value $1" >&2
> +            exit 1
> +        ;;
> +    esac
> +done
> +
> +if ! test "$POKYDIR" -a "$METRICSDIR" -a "$REPODIR" -a "$LAYERDIR" -a "$BRANCH" -a "$RESULTSDIR"; then
> +    echo "Not all required options specified"
> +    exit 1
> +fi
>  
>  # We only monitor patch metrics on the master branch
>  if [ "$BRANCH" != "master" ]; then
> +    echo "Skipping, $BRANCH is not master"
>      exit 0
>  fi
>  
>  #
>  # Patch Metrics
>  #
> -if [ ! -e $PARENTDIR/yocto-metrics ]; then
> -    git clone ssh://git@push.yoctoproject.org/yocto-metrics $PARENTDIR/yocto-metrics
> +
> +set -x
> +$OURDIR/patchmetrics-update --patchscript $POKYDIR/scripts/contrib/patchreview.py --json $METRICSDIR/patch-status.json --repo $REPODIR --layer $LAYERDIR
> +set +x
> +
> +# Allow the commit to fail if there is nothing to commit
> +git -C $METRICSDIR commit -asm "Autobuilder adding new patch stats" || true
> +
> +if [ "$PUSH" = "1" ]; then
> +    git -C $METRICSDIR push
>  fi
> -$OURDIR/patchmetrics-update --repo $PARENTDIR --patchscript $PARENTDIR/scripts/contrib/patchreview.py --metadata $TARGETDIR --json $PARENTDIR/yocto-metrics/patch-status.json
> -git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder adding new patch stats"
> -git -C $PARENTDIR/yocto-metrics push
> +
> +#
> +# Update the results
> +#
>  
>  if [ ! -d $RESULTSDIR ]; then
>      mkdir $RESULTSDIR
>  fi
>  
> -$OURDIR/patchmetrics-generate-chartdata --json $PARENTDIR/yocto-metrics/patch-status.json --outputdir $RESULTSDIR
> -cp $PARENTDIR/yocto-metrics/patch-status.json $RESULTSDIR
> -cp $PARENTDIR/yocto-metrics/patch-status/* $RESULTSDIR
> +$OURDIR/patchmetrics-generate-chartdata --json $METRICSDIR/patch-status.json --outputdir $RESULTSDIR
> +cp $METRICSDIR/patch-status.json $RESULTSDIR
> +cp $METRICSDIR/patch-status/* $RESULTSDIR
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61532): https://lists.yoctoproject.org/g/yocto/message/61532
> Mute This Topic: https://lists.yoctoproject.org/mt/102298518/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/leave/7785375/4316185/289819188/xyzzy [yoann.congal@smile.fr]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

-- 
Yoann Congal
Smile ECS - Tech Expert

