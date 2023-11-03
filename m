Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7410BC4167D
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 09:37:14 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web11.45596.1699004228612913423
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Nov 2023 02:37:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Gi50akBR;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2c504a5e1deso24903551fa.2
        for <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 02:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699004227; x=1699609027; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=li4K9QA4C4uqz4NB+TfHS7C2ac2Goc512ezeLUkhk0w=;
        b=Gi50akBRWDTK8rQxMnU5cgHxAZlfuofPxNRgGE+Wbyny+TuVLyRxes4bkePWNtu3OS
         BU9F1NTSwFhhGIKkMLIuADQtxzx2ezpPM+ZH+WaWAQzHjTe6d4+CeTTzOf54pgTUSsnh
         NsWXXBQ3E4nR+a9bgsoFM+B0e0K+uWu8gawrfYcuUKdbeECb/+cpQlHj8VYVKjv7Pj3I
         pmJjSY3ZM/VwFMWWLy9LMO2xRpXBnK67q/Q6K54QgVVXfNrCDFvAw1wkRFZfnEaYG1TM
         3YvOuh7khZ9hrU05lKeBoOdWFissw4p8suXLPChCubFHMjpCWOBj9xsNMzHL2XBN2Fmr
         JNmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699004227; x=1699609027;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=li4K9QA4C4uqz4NB+TfHS7C2ac2Goc512ezeLUkhk0w=;
        b=oUBXvO2goqKwy7O1y0Pyq93RJUzqqAItZleUFHt+fgY8TKA41HZ2yef4/nwPQKe1em
         xmR4okVJT6dPPeEiVACVjxGuzHjl+2BGZwrQFTdlRHSQ0sEtakUsUQCkVUZZTa3Xd183
         B8riVDOBXlur9+cOUu/MRMxwrY7mpEnj8OxnXZdce54lt+NSe01ziJKU+rFblmmntpwU
         WtbMIu4ch9mnYhqM+R6qkBAXxgfXrgnk6CptoCQWZR0k3T7N1OgmQZxNOWK1mS76Yu1e
         cRDA47e3B7C0XFIPBvlCyR299dyZaOOl6GF0xEBB1qTcPK9keD+CRx6m2PHjqtXCtldI
         cQXg==
X-Gm-Message-State: AOJu0Yz+WzLGaS/YeRm/DKVm//qJA4uQxFTXoGTHkX2N9KpcSa51Wf4w
	ahi705WdghqzhleC1X3sznuvPvEvwpSkeKT5/xo=
X-Google-Smtp-Source: AGHT+IEQlk7Jde3Q5M7NcO1SsLN9FcFsMbG1yLrIrpgmwtfYwmTGJjohEAzQLkALrxBj7Bm9uwv36H9Ra8NUi7VplDM=
X-Received: by 2002:a05:651c:213:b0:2c6:ee51:87aa with SMTP id
 y19-20020a05651c021300b002c6ee5187aamr4286092ljn.39.1699004226327; Fri, 03
 Nov 2023 02:37:06 -0700 (PDT)
MIME-Version: 1.0
References: <20231102152044.3433589-1-yoann.congal@smile.fr> <20231102152044.3433589-2-yoann.congal@smile.fr>
In-Reply-To: <20231102152044.3433589-2-yoann.congal@smile.fr>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 3 Nov 2023 10:36:54 +0100
Message-ID: <CANNYZj9tEg9x22b772gdPOfAHoOGPU4ZhA7Z5zMn=S0SGxtK2g@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v4 1/2] config.json:
 Move AUH from custom scripts to config.json
To: Yoann Congal <yoann.congal@smile.fr>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 09:37:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61588

Ka-boom:
https://autobuilder.yoctoproject.org/typhoon/#/builders/130/builds/59

Alex

On Thu, 2 Nov 2023 at 16:21, Yoann Congal <yoann.congal@smile.fr> wrote:
>
> setup-auh and run-auh were doing what the AB config.json does:
> * creating repo checkouts: Now use NEEDREPOS
> * configuring bitbake env: Now use extravars
>
> This refactoring is needed to prepare adding AUH meta-oe support.
>
> Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
> ---
>  config.json                          | 26 ++++++++++++++++++---
>  scripts/auh-config/local.conf.append |  5 ----
>  scripts/run-auh                      | 34 ----------------------------
>  scripts/setup-auh                    | 29 ------------------------
>  4 files changed, 23 insertions(+), 71 deletions(-)
>  delete mode 100644 scripts/auh-config/local.conf.append
>  delete mode 100755 scripts/run-auh
>  delete mode 100755 scripts/setup-auh
>
> diff --git a/config.json b/config.json
> index 1b3c2b0..2e33c73 100644
> --- a/config.json
> +++ b/config.json
> @@ -1454,9 +1454,29 @@
>              "TEMPLATE" : "buildperf"
>          },
>          "auh" : {
> -            "EXTRAPLAINCMDS" : [
> -                "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
> -            ]
> +            "NEEDREPOS" : ["poky", "auto-upgrade-helper"],
> +            "extravars" :[
> +                "INHERIT += 'buildhistory'",
> +                "LICENSE_FLAGS_ACCEPTED = 'commercial'",
> +                "DISTRO_FEATURES:append:libc-glibc = ' systemd usrmerge'",
> +                "DISTRO_FEATURES:append = ' pam'"
> +            ],
> +            "step1" : {
> +                "shortname" : "setup AUH",
> +                "EXTRAPLAINCMDS" : [
> +                    "git config user.email auh@yoctoproject.org",
> +                    "git config user.name 'Auto Upgrade Helper'",
> +                    "git switch -C tmp-auh-upgrades HEAD",
> +                    "install -D ${SCRIPTSDIR}/auh-config/upgrade-helper.conf ./upgrade-helper/upgrade-helper.conf"
> +                ]
> +            },
> +            "step2" : {
> +                "shortname" : "run AUH",
> +                "EXTRACMDS" : [
> +                    "../auto-upgrade-helper/upgrade-helper.py -e all",
> +                    "cp -rf ./upgrade-helper/* ${WEBPUBLISH_DIR}/pub/auh/"
> +                ]
> +            }
>          },
>          "yocto-mirror" : {
>              "MACHINE" : "qemux86-64",
> diff --git a/scripts/auh-config/local.conf.append b/scripts/auh-config/local.conf.append
> deleted file mode 100644
> index ee7ee2d..0000000
> --- a/scripts/auh-config/local.conf.append
> +++ /dev/null
> @@ -1,5 +0,0 @@
> -
> -INHERIT += "buildhistory"
> -LICENSE_FLAGS_ACCEPTED = "commercial"
> -DISTRO_FEATURES:append:libc-glibc = ' systemd usrmerge'
> -DISTRO_FEATURES:append = ' pam'
> diff --git a/scripts/run-auh b/scripts/run-auh
> deleted file mode 100755
> index 0419dd1..0000000
> --- a/scripts/run-auh
> +++ /dev/null
> @@ -1,34 +0,0 @@
> -#!/bin/bash
> -#
> -# SPDX-License-Identifier: GPL-2.0-only
> -#
> -# Run Auto Upgrade Helper in a directory set up by setup_auh.
> -#
> -# Called with $1 - the directory where the setup was created
> -
> -if [ -z $1 ]; then
> -  echo "Use: $0 auh_setup_dir [publish_dir]"
> -  exit 1
> -fi
> -
> -full_dir=$(readlink -e $1)
> -
> -auh_dir=$full_dir/auto-upgrade-helper
> -poky_dir=$full_dir/poky
> -build_dir=$full_dir/build
> -sstate_dir=$full_dir/build/sstate-cache
> -
> -pushd $poky_dir
> -
> -# Base the upgrades on poky master
> -git fetch origin
> -git checkout -B tmp-auh-upgrades origin/master
> -
> -source $poky_dir/oe-init-build-env $build_dir
> -$auh_dir/upgrade-helper.py -e all
> -
> -if [ -n $2 ]; then
> -  cp -rf $build_dir/upgrade-helper/* $2
> -fi
> -
> -popd
> diff --git a/scripts/setup-auh b/scripts/setup-auh
> deleted file mode 100755
> index d6b83fe..0000000
> --- a/scripts/setup-auh
> +++ /dev/null
> @@ -1,29 +0,0 @@
> -#!/bin/bash
> -#
> -# SPDX-License-Identifier: GPL-2.0-only
> -#
> -# Initialize Auto Upgrade Helper in a directory.
> -#
> -# Called with $1 - the directory to place the setup
> -CONFIG_DIR=`dirname $0`/auh-config
> -
> -if [ -z $1 ]; then
> -  echo "Use: $0 target_dir"
> -  exit 1
> -fi
> -
> -mkdir -p $1
> -pushd $1
> -
> -git clone git://git.yoctoproject.org/poky
> -pushd poky
> -git config user.email auh@yoctoproject.org
> -git config user.name "Auto Upgrade Helper"
> -popd
> -git clone git://git.yoctoproject.org/auto-upgrade-helper
> -source poky/oe-init-build-env build
> -mkdir -p upgrade-helper
> -popd
> -
> -cp $CONFIG_DIR/upgrade-helper.conf $1/build/upgrade-helper
> -cat $CONFIG_DIR/local.conf.append >> $1/build/conf/local.conf
> --
> 2.30.2
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61580): https://lists.yoctoproject.org/g/yocto/message/61580
> Mute This Topic: https://lists.yoctoproject.org/mt/102344544/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

