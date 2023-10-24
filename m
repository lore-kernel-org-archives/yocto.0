Return-Path: <david.pierret@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF524C00A8F
	for <webhook@archiver.kernel.org>; Tue, 24 Oct 2023 08:17:17 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.143039.1698135428249034539
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Oct 2023 01:17:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=GGPN7rmL;
 spf=pass (domain: smile.fr, ip: 209.85.208.173, mailfrom: david.pierret@smile.fr)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2c50fbc218bso60168681fa.3
        for <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 01:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1698135426; x=1698740226; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Dy+Kj0u3dk0aCyRpqCeR+55yw1yOSvq5c4wEU/7ITA=;
        b=GGPN7rmL/0BdRlPOiL/nODBfcke1ROuTLhpq3/uDAEahsHP3eD1Qk+6jB8/eP+BB99
         nH2O3FFcnf/aDUFa+qTJZJiTEfvdgu8vWSQBE3T3MhwPtJMW+CwwtM7rPnDb5Ca8sSnR
         nzGGJnh9zIbCvtfVkMCXX4VL4BIQsUC3ugGWKkw2dwvxWfNKhrIV8juv3Ew4p0Fp+WO9
         Iv5jSRJALEirX7icaMAKIFBMwORejXwjtQMtA9+yaQIh3ZoniLY+ZaJiP2FKS6hFLlhM
         jE5q0qhdqfzIRADVllZya4HFS1I7ypgzxq5n+fpH9VpzqluD5b4eGD7CkgxEPerf2ZhP
         C36w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698135426; x=1698740226;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Dy+Kj0u3dk0aCyRpqCeR+55yw1yOSvq5c4wEU/7ITA=;
        b=RGBYGbvx2vzYomwX1p0WMk2B+FKC+Oya7+/0I15pqrIdsx7MwEaYpJ00cmH15coQ4J
         T/xRWNE9jhxRIXyVRYG+id5XTz3+o1norUiO3b7dwbEIabaehft+ELV2/WmzwDSexrEj
         mYJxUq+IZ8Tm+OK1iAkDKbqJbI6S/30gS9ULAzhlq+EnI+Qj22MjhsVK4CwnSiFN6HCM
         hT0kOtqJIlPlLtQTa2tlSbIDXGTYqn4XP6tsTwRo4HLl2xEv2MrqzIv/QX79oV1LndPL
         usDBYhpc4qPSVcJbyjM9MdYsgAxlexp5YUlY7ssWyFHm4ew0FIgqnPJz3Cd46uP3tx6e
         +YHg==
X-Gm-Message-State: AOJu0YyYbmXRQzYJc8+cZrSqVlocc0b8wQT+WktsLRpxX7IYB8zXFwpP
	RdErmbNQk3mKDn7klTcwW9xZZbTonUfduIOxJsbl0CoGhgUvjJbxLP4=
X-Google-Smtp-Source: AGHT+IGSX5YDv+fYK/JETN8bivqeLMRdNCESADTPuG0cZQbSXsXZRCD09Fq9Tlk5ULevCHe9ZKbfkh5nrgjepg3kUXs=
X-Received: by 2002:a2e:8e96:0:b0:2c2:c450:c2d0 with SMTP id
 z22-20020a2e8e96000000b002c2c450c2d0mr7244756ljk.24.1698135425693; Tue, 24
 Oct 2023 01:17:05 -0700 (PDT)
MIME-Version: 1.0
References: <20231020140528.10787-1-david.pierret@smile.fr> <205e52a83035e8132256a3edff4259e967786bc4.camel@linuxfoundation.org>
In-Reply-To: <205e52a83035e8132256a3edff4259e967786bc4.camel@linuxfoundation.org>
From: David PIERRET <david.pierret@smile.fr>
Date: Tue, 24 Oct 2023 10:16:54 +0200
Message-ID: <CADyEP=SbqzRG_2wFi__qvUfXvbCUdOqUV54EoXBtACJRhn=qTQ@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v2] AUH: Add
 Openembedded auto-update-helper with list of layer to test
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org, Khem Raj <raj.khem@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 08:17:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61461

Hi Richard,

Thanks for the review, please find my feedback in follow.

On Fri, Oct 20, 2023 at 4:57=E2=80=AFPM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> Hi David,
>
> Thanks for revising this, it is heading in the right direction.
>
> On Fri, 2023-10-20 at 16:05 +0200, David Pierret wrote:
> > - Add setup and run script openembedded specific
> > - Add job config
> >
> > Signed-off-by: David Pierret <david.pierret@smile.fr>
> > ---
> >  config.json          |  6 ++++++
> >  scripts/run-auh-oe   | 45 ++++++++++++++++++++++++++++++++++++++++++++
> >  scripts/setup-auh-oe | 34 +++++++++++++++++++++++++++++++++
> >  3 files changed, 85 insertions(+)
> >  create mode 100755 scripts/run-auh-oe
> >  create mode 100755 scripts/setup-auh-oe
> >
> > diff --git a/config.json b/config.json
> > index 3acb710..bbd0aaf 100644
> > --- a/config.json
> > +++ b/config.json
> > @@ -1420,6 +1420,12 @@
> >                  "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSD=
IR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
> >              ]
> >          },
> > +        "auh-openembedded" : {
>
> This needs to be "auh-meta-oe" since "auh" is for openembedded-core and
> this is otherwise going to be confusing.
>
> > +            "NEEDREPOS" : ["poky", "meta-openembedded"],
> > +            "EXTRAPLAINCMDS" : [
> > +                "${SCRIPTSDIR}/setup-auh-oe ${HELPERBUILDDIR}; ${SCRIP=
TSDIR}/run-auh-oe ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUIL=
DDIR}/meta-openembedded ${HELPERBUILDDIR}/meta-openembedded/meta-oe ${HELPE=
RBUILDDIR}/meta-openembedded/meta-python ${HELPERBUILDDIR}/meta-openembedde=
d/meta-perl ${HELPERBUILDDIR}/meta-openembedded/meta-networking ${HELPERBUI=
LDDIR}/meta-openembedded/meta-multimedia ${HELPERBUILDDIR}/meta-openembedde=
d/meta-gnome ${HELPERBUILDDIR}/meta-openembedded/meta-xfce ${HELPERBUILDDIR=
}/meta-openembedded/meta-filesystems ${HELPERBUILDDIR}/meta-openembedded/me=
ta-initramfs ${HELPERBUILDDIR}/meta-openembedded/meta-webserver "
> > +            ]
> > +        },
> >          "a-quick" : {
> >              "TEMPLATE" : "trigger-build"
> >          },
>
> Would it be better to have one setup-auh/run-auh script and add
> ${HELPERTARGET}  as a parameter?
>
> This should translate to "auh" or "auh-meta-oe" and the script can then
> have conditionals in to handle both cases rather than duplicating the
> script?

The setup-auh script is cloning its own repository instead of using
the one initialized by CI.
Any reason to not use them ? We could use the NEEDREPOS instead of the
setup script,
and add the auto-upgrade-helper repository in the config.

>
> > diff --git a/scripts/run-auh-oe b/scripts/run-auh-oe
> > new file mode 100755
> > index 0000000..588755a
> > --- /dev/null
> > +++ b/scripts/run-auh-oe
>
> Similarly, this should be run-auh-meta-oe.
>
> > @@ -0,0 +1,45 @@
> > +#!/bin/bash
> > +#
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +#
> > +# Run Auto Upgrade Helper in a directory set up by setup_auh.
> > +#
> > +# Called with $1 - the directory where the setup was created
> > +
> > +if [ -z $1 ]; then
> > +  echo "Use: $0 [auh_setup_dir] [publish_dir] [meta_dir] [meta_list]"
> > +  exit 1
> > +fi
> > +
> > +full_dir=3D$(readlink -e $1)
> > +
> > +auh_dir=3D$full_dir/auto-upgrade-helper
> > +poky_dir=3D$full_dir/poky
> > +
> > +build_dir=3D$full_dir/build
> > +sstate_dir=3D$full_dir/build/sstate-cache
> > +meta_dir=3D$3
> > +meta_list=3D${@:4}
> > +machine_list=3D"qemux86 qemux86-64 qemuarm qemumips qemuppc qemux86_mu=
sl"
>
> Do we need to vary the machine_list per layer? At present it only seems
> to support one list anyway so I'm not sure this does anything useful?

The list is the same as the one used for poky.

>
> > +pushd $meta_dir || exit 1
> > +
> > +# Base the upgrades on meta_openembedded master
> > +git fetch origin
> > +git checkout -B tmp-auh-upgrades origin/main
> > +
> > +source $poky_dir/oe-init-build-env $build_dir
> > +
> > +# build the layer_names variable to me used in the command line
> > +layer_names=3D""
> > +for d in $meta_list; do
> > +  layer_names+=3D" $(basename ${d})"
> > +done
> > +
> > +$auh_dir/upgrade-helper.py -e --layer-dir ${meta_dir} --layer-names ${=
layer_names} --layer-machines ${machine_list} -- all
>
> Would it be simpler just to iterate, calling upgrade-helper once per
> sub-layer or meta-openembedded?

Is it prefered to set 1 step per layer ?
or keep the call to the script but iterate over a list of layers ?

>
> You may have considered that in which case I'd just like to understand
> why you ended up with this as the preferred way of doing things?
>
> In some ways a separate report/run may be useful for the way meta-oe
> maintainers might handle this?

The iteration over a list was my first approach, but aborted following
review on patch v1.
The V1 review asked to allow the AUH to accept dynamic layers as parameters=
.
We maybe misunderstood each other.

>
> > +
> > +if [ -n $2 ]; then
> > +  cp -rf $build_dir/upgrade-helper/* $2
> > +fi
> > +
> > +popd
> > diff --git a/scripts/setup-auh-oe b/scripts/setup-auh-oe
> > new file mode 100755
> > index 0000000..ba1a7fb
> > --- /dev/null
> > +++ b/scripts/setup-auh-oe
>
> This naming also needs tweaking.
>
> > @@ -0,0 +1,34 @@
> > +#!/bin/bash
> > +#
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +#
> > +# Initialize Auto Upgrade Helper in a directory.
> > +#
> > +# Called with $1 - the directory to place the setup
> > +CONFIG_DIR=3D`dirname $0`/auh-config
> > +
> > +if [ -z $1 ]; then
> > +  echo "Use: $0 target_dir"
> > +  exit 1
> > +fi
> > +
> > +mkdir -p $1
> > +pushd $1
> > +
> > +git clone git://git.yoctoproject.org/poky
> > +pushd poky
> > +git config user.email auh@yoctoproject.org
> > +git config user.name "Auto Upgrade Helper"
> > +popd
> > +git clone git://git.openembedded.org/meta-openembedded
> > +pushd meta-openembedded
> > +git config user.email auh@yoctoproject.org
> > +git config user.name "Auto Upgrade Helper"
> > +popd
> > +git clone git://git.yoctoproject.org/auto-upgrade-helper
> > +source poky/oe-init-build-env build
> > +mkdir -p upgrade-helper
> > +popd
> > +
> > +cp $CONFIG_DIR/upgrade-helper.conf $1/build/upgrade-helper
> > +cat $CONFIG_DIR/local.conf.append >> $1/build/conf/local.conf
>
> Would a upgrade-helper.conf per target help and simplfy the script
> differences?

Do you mean 1 upgrade-helper.conf per layer ?

>
> Cheers,
>
> Richard
>
>

regards
David

