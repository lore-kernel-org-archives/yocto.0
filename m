Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EDFCC25B67
	for <webhook@archiver.kernel.org>; Thu, 26 Oct 2023 13:54:17 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web11.71167.1698328449693057229
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Oct 2023 06:54:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MhIucEDb;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2c5071165d5so7936821fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 26 Oct 2023 06:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698328448; x=1698933248; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bwSg13eEMfRFpUWBXqerVldWZVlCtK2yK7hV5QTbCfs=;
        b=MhIucEDb5IlIG+UlT6/3SI8w5pm5X25TyqkNuIUDaZRur4ymtktoloaFntaCKXcVL3
         lDKDr52SssTPxGx+yNd0E2EYdGBNd/z2i4V+jtrkppH2UN5zwRga+G8CDygBz5et67CW
         axRiaDJhPKfk1k2BY1XWIhkMauXi3nzlphMiT+9k0xAQO8DRhDwqUnQEXdq3uP+DJMGl
         2NTFAmjWTVfKrCADI6/P9xIOF2tUclPBNtsKQQ+i6zKRF0+hZN+5PMMbzqjU3jsCJi7y
         lgv5emasjyZJ4rMFWtuGUGTDCSae20iMMl+euNUTVm/qErVaTDXXNOt7s5+RX+UuGpT9
         FD/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698328448; x=1698933248;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bwSg13eEMfRFpUWBXqerVldWZVlCtK2yK7hV5QTbCfs=;
        b=LkoAa+ss50UmOiCL2TqWvUaTJAh0Lkotu3E3LCvW1CLBBuk0ExRRwMp17iiuKfWkwC
         jk3N9Rlnw9p6wgEzDKa7D0GT5a5f5eDNMyOmSJ2IM/oUSwrUUhxEtaPUbKprEHvhwy4k
         irCRKeGg2GycUnlGMl6pA7cQg9viBsvVxcnF3KxzZqiwye5qpr1Mwm9KspsKNvJ6yYyx
         /UQPQJDt3XpGNjmqTzX99IYOTZhbRQFmZVRscAQQ2ezrCypv2492U9ixxM7bI3wfwOBs
         ae+QhEsxbv9FmaQQjoB+nOUcFJG4MjdOZP96qQPC4Z7GPWtZttfirqEKJYvhysK4Hg0n
         L8/w==
X-Gm-Message-State: AOJu0YyysHcRStgUYy8/ETd2NoaSQw9I61ZR180pGy/0xO6YXGMhDa4U
	6CoXvMf1Tsvd+R9AHnagchcjt5JH6ftXT0B22Iw=
X-Google-Smtp-Source: AGHT+IHfovrHLEKoQcdX7v5fWwoa0edM4c64EIiin3e7rOPUUMR+xV6DYbRTkfn1L7Jwv+NfsuNmp4Ad3KgsbJ+bwBk=
X-Received: by 2002:a05:651c:1714:b0:2c5:15dc:f179 with SMTP id
 be20-20020a05651c171400b002c515dcf179mr12544114ljb.31.1698328447490; Thu, 26
 Oct 2023 06:54:07 -0700 (PDT)
MIME-Version: 1.0
References: <20231026130340.2070302-1-david.pierret@smile.fr>
In-Reply-To: <20231026130340.2070302-1-david.pierret@smile.fr>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 26 Oct 2023 15:53:56 +0200
Message-ID: <CANNYZj8bZv_VHPsnaGPa_i2e5NT9683a-3szQTJXKWu9cSZeiA@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v3] AUH: Add
 Openembedded auto-update-helper with list of layer to test
To: David Pierret <david.pierret@smile.fr>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Oct 2023 13:54:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61492

This looks basically ok, but how can this be tested if needed changes
to AUH are still in review?

Running auh over meta-oe layers shouldn't be defined as steps that are
run one after the other, but as separate parallelizable jobs, e.g.
"auh-meta-oe" : {
...
"auh-meta-python" : {
...
etc. They could use a job template so you only need to set the varying
parameters (config.json has examples).

Alex

On Thu, 26 Oct 2023 at 15:06, David Pierret <david.pierret@smile.fr> wrote:
>
> - Modify the setup-auh to use repositories cloned by the auto-builder.
>   Manage the case where meta-openembedded is not used.
>
> - Modify the run-auh to manage the optional additional layer.
>   Only 1 layer can be provided.
>
> - Add auh-meta-openembedded job with 1 step per layer.
>
> Signed-off-by: David Pierret <david.pierret@smile.fr>
> ---
>  config.json       | 102 ++++++++++++++++++++++++++++++++++++++++++++--
>  scripts/run-auh   |  39 ++++++++++++------
>  scripts/setup-auh |  34 ++++++++++------
>  3 files changed, 146 insertions(+), 29 deletions(-)
>
> diff --git a/config.json b/config.json
> index 3acb710..a168e48 100644
> --- a/config.json
> +++ b/config.json
> @@ -1416,9 +1416,99 @@
>              "TEMPLATE" : "buildperf"
>          },
>          "auh" : {
> -            "EXTRAPLAINCMDS" : [
> -                "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
> -            ]
> +            "NEEDREPOS" : ["poky", "auto-upgrade-helper"],
> +            "step1" : {
> +                "shortname" : "setup AUH",
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}"
> +                ]
> +            },
> +            "step2" : {
> +                "shortname" : "run AUH poky",
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
> +                ]
> +            }
> +        },
> +        "auh-meta-openembedded" : {
> +            "NEEDREPOS" : ["poky", "meta-openembedded", "auto-upgrade-helper"],
> +            "step1" : {
> +                "shortname" : "setup AUH",
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}"
> +                ]
> +            },
> +            "step2" : {
> +                "shortname" : "run AUH for layer meta-oe",
> +
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-oe"],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-oe"
> +                ]
> +            },
> +            "step3" : {
> +                "shortname" : "run AUH for layer meta-python",
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-python"],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-python"
> +                ]
> +            },
> +            "step4" : {
> +                "shortname" : "run AUH for layer meta-perl",
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-perl"],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-perl"
> +                ]
> +            },
> +            "step5" : {
> +                "shortname" : "run AUH for layer meta-networking",
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-networking"],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-networking"
> +                ]
> +            },
> +            "step6" : {
> +                "shortname" : "run AUH for layer meta-multimedia",
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-multimedia"],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-multimedia"
> +                ]
> +            },
> +            "step7" : {
> +                "shortname" : "run AUH for layer meta-gnome",
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-gnome"],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-gnome"
> +                ]
> +            },
> +            "step8" : {
> +                "shortname" : "run AUH for layer meta-xfce",
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-xfce"],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-xfce"
> +                ]
> +            },
> +            "step9" : {
> +                "shortname" : "run AUH for layer meta-filesystems",
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-filesystems"],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-filesystems"
> +                ]
> +            },
> +            "step10" : {
> +                "shortname" : "run AUH for layer meta-initramfs",
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-initramfs"],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-initramfs"
> +                ]
> +            },
> +            "step11" : {
> +                "shortname" : "run AUH for layer meta-webserver",
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-webserver"],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-webserver"
> +                ]
> +            }
>          },
>          "a-quick" : {
>              "TEMPLATE" : "trigger-build"
> @@ -1531,6 +1621,12 @@
>              "branch" : "master",
>              "revision" : "HEAD",
>              "no-layer-add" : true
> +        },
> +        "auto-upgrade-helper" : {
> +            "url" : "git://git.yoctoproject.org/auto-upgrade-helper",
> +            "branch" : "master",
> +            "revision" : "HEAD",
> +            "no-layer-add" : true
>          }
>      },
>      "buildtools" : {
> diff --git a/scripts/run-auh b/scripts/run-auh
> index 0419dd1..f59c561 100755
> --- a/scripts/run-auh
> +++ b/scripts/run-auh
> @@ -7,28 +7,41 @@
>  # Called with $1 - the directory where the setup was created
>
>  if [ -z $1 ]; then
> -  echo "Use: $0 auh_setup_dir [publish_dir]"
> +  echo "Use: $0 [auh_setup_dir] [publish_dir] [meta_dir] [meta_list]"
>    exit 1
>  fi
>
> -full_dir=$(readlink -e $1)
> +build_dir=$(readlink -e $1)
>
> -auh_dir=$full_dir/auto-upgrade-helper
> -poky_dir=$full_dir/poky
> -build_dir=$full_dir/build
> -sstate_dir=$full_dir/build/sstate-cache
> +auh_dir=$build_dir/../auto-upgrade-helper
> +poky_dir=$build_dir/../poky
> +sstate_dir=$build_dir/sstate-cache
>
>  pushd $poky_dir
> +  # Base the upgrades on poky master
> +  git fetch origin
> +  git checkout -B tmp-auh-upgrades origin/master
> +popd
> +
> +LAYERS_ARGS=''
> +# if layer arguments are provided
> +if [ ! -z $3 ]; then
> +  meta_dir=$3
> +  meta_layer=$4
> +  machine_list="qemux86 qemux86-64 qemuarm qemumips qemuppc qemux86_musl"
> +
> +  pushd $meta_dir || exit 1
> +    # Base the upgrades on master branch
> +    git fetch origin
> +    git checkout -B tmp-auh-upgrades origin/main
> +  popd
>
> -# Base the upgrades on poky master
> -git fetch origin
> -git checkout -B tmp-auh-upgrades origin/master
> +  LAYERS_ARGS="--layer-dir ${meta_dir} --layer-names ${meta_layer} --layer-machines ${machine_list}"
> +fi
>
> -source $poky_dir/oe-init-build-env $build_dir
> -$auh_dir/upgrade-helper.py -e all
> +# execute upgrade-helper script on all recipes
> +$auh_dir/upgrade-helper.py -e ${LAYERS_ARGS} -- all
>
>  if [ -n $2 ]; then
>    cp -rf $build_dir/upgrade-helper/* $2
>  fi
> -
> -popd
> diff --git a/scripts/setup-auh b/scripts/setup-auh
> index d6b83fe..f8bd8fd 100755
> --- a/scripts/setup-auh
> +++ b/scripts/setup-auh
> @@ -4,26 +4,34 @@
>  #
>  # Initialize Auto Upgrade Helper in a directory.
>  #
> -# Called with $1 - the directory to place the setup
> +# Called with $1 - the build directory
>  CONFIG_DIR=`dirname $0`/auh-config
>
>  if [ -z $1 ]; then
> -  echo "Use: $0 target_dir"
> +  echo "Use: $0 build_dir"
>    exit 1
>  fi
>
> -mkdir -p $1
> -pushd $1
> -
> -git clone git://git.yoctoproject.org/poky
> -pushd poky
> +# Setup git repository with name and email to be able to commit
> +# the upgrade patch.
> +# Assume repositories are cloned on ${build_dir}/../
> +pushd $1/../poky
>  git config user.email auh@yoctoproject.org
>  git config user.name "Auto Upgrade Helper"
>  popd
> -git clone git://git.yoctoproject.org/auto-upgrade-helper
> -source poky/oe-init-build-env build
> -mkdir -p upgrade-helper
> -popd
> +# handle the case where meta-openembedded repository is used
> +# todo: detect any layer ?
> +if [ -d $1/../meta-openembedded ]; then
> +  pushd $1/../meta-openembedded
> +  git config user.email auh@yoctoproject.org
> +  git config user.name "Auto Upgrade Helper"
> +  popd
> +fi
> +
> +# auto-upgrade-helper doesn't need to be configured.
>
> -cp $CONFIG_DIR/upgrade-helper.conf $1/build/upgrade-helper
> -cat $CONFIG_DIR/local.conf.append >> $1/build/conf/local.conf
> +# create and copy the upgrade helper configuration file
> +mkdir -p $1/upgrade-helper
> +cp $CONFIG_DIR/upgrade-helper.conf $1/upgrade-helper
> +# amend the local.conf
> +cat $CONFIG_DIR/local.conf.append >> $1/conf/local.conf
> --
> 2.39.2
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61489): https://lists.yoctoproject.org/g/yocto/message/61489
> Mute This Topic: https://lists.yoctoproject.org/mt/102199062/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

