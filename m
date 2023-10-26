Return-Path: <david.pierret@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FF8C25B67
	for <webhook@archiver.kernel.org>; Thu, 26 Oct 2023 13:11:26 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web11.69984.1698325879308264044
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Oct 2023 06:11:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=1zcztCdp;
 spf=pass (domain: smile.fr, ip: 209.85.167.49, mailfrom: david.pierret@smile.fr)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5079f9675c6so1305575e87.2
        for <yocto@lists.yoctoproject.org>; Thu, 26 Oct 2023 06:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1698325877; x=1698930677; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NQGVrdoLyNwWeM7eMBnZQNCaPAVUeChJCZDZr5kNvv0=;
        b=1zcztCdpDIoHbpxlF5IAxFYKEIx+JLzPL5Ah9sSq1H8/nP3vqv4OSc1hT/f4OQ/y1Y
         a8wIFfU9AkA9HLPbdG4aBdmvn4WIMEETHpEb8YXJbStYZMOehy0nxuMWJIeiIhQmeDq3
         2XVppj/sdMgoCq9eizaJC2YXFKmP/Ts5JcLZkc4QeBijC58rOxdFz1E1NhYhCcqL5QOL
         FkTp0uHQL/eS9/N2TFLbHsZOvOvNqaMF7eL3XxzUGIKiOMaL4ZBhU6ypTqukvI3R0lEk
         nRKgBRy/EUzwFnuW2nqbkozi5UX99uxvVRFrOEGIRLqNKkCgUW+CYmdW7871FYGnmu2V
         GhSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698325877; x=1698930677;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NQGVrdoLyNwWeM7eMBnZQNCaPAVUeChJCZDZr5kNvv0=;
        b=HTeuVFKDOngIB2NkJyIpkr5yIHyplWj68zMvGSmmPCBWey171LDAROiLOtcW+4TEHW
         0akjFaudAgDdp04zzcZwY5kluf1ObyuIUQcu21bW5hwkp+Dg2Hs/sampqLVAdvElwMQ2
         olG5Pe6qwPvf75B/TtOwIHEs1hEaAPQGbTzAAW3zAwkD6JsRgcgb16K1JbIDancZs0wV
         L358xv0L7SGsFT1sonmV+jj8UBDP38I6v/ImTdKHuRhIzRs47/EOhfNoymcKYerm2BlB
         I0j+lCsKsb+G/2JGCU9ENNowm2PGA7sS4f0ovqj1Ar7VwUAaEH+RwVga9Zdzd3gxEeXN
         it4w==
X-Gm-Message-State: AOJu0Yxxx9rj2hEdcJ0FWakESvAcAEUiNDP6vPrPFFoM1bQxvOIjkY5+
	k8NRhF8NIXFF5wOOIY3VA/el06Uy8aTZSIzP+NBXiQ==
X-Google-Smtp-Source: AGHT+IHMc1kh4WQIG26b7V8fcCgSyxZoIFIQeTiySZp7Yl8qkMLCKeYSHYgrhDSuNjgFNfh+XiSTLhlGA5jdv4FOBd4=
X-Received: by 2002:a05:6512:a94:b0:508:1c45:f998 with SMTP id
 m20-20020a0565120a9400b005081c45f998mr2640654lfu.48.1698325877088; Thu, 26
 Oct 2023 06:11:17 -0700 (PDT)
MIME-Version: 1.0
References: <1791AA00CF01227F.20272@lists.yoctoproject.org>
In-Reply-To: <1791AA00CF01227F.20272@lists.yoctoproject.org>
From: David PIERRET <david.pierret@smile.fr>
Date: Thu, 26 Oct 2023 15:11:26 +0200
Message-ID: <CADyEP=STaokK11erv+Wsf42Fkhy3DwxVx+vfZnJW-eh-rzfwvA@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v3] AUH: Add
 Openembedded auto-update-helper with list of layer to test
To: david.pierret@smile.fr
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Oct 2023 13:11:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61490

Hi,

I've made separate steps for setup and run
I didn't yet modify the python script in upgrade-helper to include
Kevin reviews.

follow some questions I have about the autobuilder.

On Thu, Oct 26, 2023 at 3:04=E2=80=AFPM David Pierret via
lists.yoctoproject.org <david.pierret=3Dsmile.fr@lists.yoctoproject.org>
wrote:
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
> -                "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSDIR=
}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
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
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLIS=
H_DIR}/pub/auh/"
> +                ]
> +            }
> +        },
> +        "auh-meta-openembedded" : {
> +            "NEEDREPOS" : ["poky", "meta-openembedded", "auto-upgrade-he=
lper"],
> +            "step1" : {
> +                "shortname" : "setup AUH",
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}"
> +                ]
> +            },
> +            "step2" : {
> +                "shortname" : "run AUH for layer meta-oe",
> +
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-oe"=
],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLIS=
H_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-oe"
> +                ]
> +            },
> +            "step3" : {
> +                "shortname" : "run AUH for layer meta-python",
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-pyt=
hon"],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLIS=
H_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-python"
> +                ]
> +            },
> +            "step4" : {
> +                "shortname" : "run AUH for layer meta-perl",
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-per=
l"],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLIS=
H_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-perl"
> +                ]
> +            },
> +            "step5" : {
> +                "shortname" : "run AUH for layer meta-networking",
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-net=
working"],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLIS=
H_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-networking"
> +                ]
> +            },
> +            "step6" : {
> +                "shortname" : "run AUH for layer meta-multimedia",
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-mul=
timedia"],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLIS=
H_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-multimedia"
> +                ]
> +            },
> +            "step7" : {
> +                "shortname" : "run AUH for layer meta-gnome",
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-gno=
me"],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLIS=
H_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-gnome"
> +                ]
> +            },
> +            "step8" : {
> +                "shortname" : "run AUH for layer meta-xfce",
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-xfc=
e"],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLIS=
H_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-xfce"
> +                ]
> +            },
> +            "step9" : {
> +                "shortname" : "run AUH for layer meta-filesystems",
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-fil=
esystems"],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLIS=
H_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-filesystems"
> +                ]
> +            },
> +            "step10" : {
> +                "shortname" : "run AUH for layer meta-initramfs",
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-ini=
tramfs"],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLIS=
H_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-initramfs"
> +                ]
> +            },
> +            "step11" : {
> +                "shortname" : "run AUH for layer meta-webserver",
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-web=
server"],
> +                "EXTRAPLAINCMDS" : [
> +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLIS=
H_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-webserver"
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
> -full_dir=3D$(readlink -e $1)
> +build_dir=3D$(readlink -e $1)
>
> -auh_dir=3D$full_dir/auto-upgrade-helper
> -poky_dir=3D$full_dir/poky
> -build_dir=3D$full_dir/build
> -sstate_dir=3D$full_dir/build/sstate-cache
> +auh_dir=3D$build_dir/../auto-upgrade-helper
> +poky_dir=3D$build_dir/../poky
> +sstate_dir=3D$build_dir/sstate-cache
>
>  pushd $poky_dir
> +  # Base the upgrades on poky master
> +  git fetch origin
> +  git checkout -B tmp-auh-upgrades origin/master
> +popd
> +
> +LAYERS_ARGS=3D''
> +# if layer arguments are provided
> +if [ ! -z $3 ]; then
> +  meta_dir=3D$3
> +  meta_layer=3D$4
> +  machine_list=3D"qemux86 qemux86-64 qemuarm qemumips qemuppc qemux86_mu=
sl"

Do we have a variable that contains the machine provided in the config.json=
 ?

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
> +  LAYERS_ARGS=3D"--layer-dir ${meta_dir} --layer-names ${meta_layer} --l=
ayer-machines ${machine_list}"
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

Should this part be put in a step ?

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
>  CONFIG_DIR=3D`dirname $0`/auh-config
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
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61489): https://lists.yoctoproject.org/g/yocto/messag=
e/61489
> Mute This Topic: https://lists.yoctoproject.org/mt/102199062/7911180
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [david.pierret@=
smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

