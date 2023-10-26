Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AE01C25B48
	for <webhook@archiver.kernel.org>; Thu, 26 Oct 2023 20:24:09 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web11.81564.1698351842700781258
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Oct 2023 13:24:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=a6em67pr;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.182, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2b9338e4695so19165171fa.2
        for <yocto@lists.yoctoproject.org>; Thu, 26 Oct 2023 13:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698351841; x=1698956641; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7l/skZTfLY5CaBQ3v6w9em+Q3gkov0vdamSLYEjRKvY=;
        b=a6em67pr4GUvEHHAZzfQdCGU11JLEMI/aaOK5dJetz4KscjsSQH7YILr5luD94B+uf
         z6t3XHESCbiPYhGG1HY2miEWTwDC85DsWonEvzg+6K3GAN5KbxvUzke8n21mcyALhw1H
         PRSSrHyZ38LOIUp9bEGTwJMUhSTDPAuzUmk70=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698351841; x=1698956641;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7l/skZTfLY5CaBQ3v6w9em+Q3gkov0vdamSLYEjRKvY=;
        b=Uwk1VEjlOgBZtuwxHQ4r05dtrAMjxlJBCYbYdDVnxptmRbiepbsN2FCpJpeg1iEuRB
         QZnpGGvnCwCDM/UeIiEGq3l8adxRBbMa7PRguoLL9WaBqsNbpmJI75WWg/St+o7mdmuo
         euuZI8caZtroghjeZxNxSSGBZsC3Fgg8vJ9ukz8ZFibUpbhNXWdxccXNW3ZIsrqmLgLq
         nSt89ItLfEYn6bz2BqjXmXNPtez3Fdzsall7dBbF2ip2aoUBLph/F+czZx1+Ftxt8IZM
         FLPs5llAmfzoIU6nt+asbI1hom5B7ljOgnoF6fnQJ1SGsMkVfVZDlAP3kU6Z3wqd5EJs
         Qe1w==
X-Gm-Message-State: AOJu0YwcXJ4jPy2tj7pEqOmLpoO9neSMkc2lMynNEHXscWXEHn9mf0dR
	QcNvNraGTTTeZDu82+E5beDnOQ==
X-Google-Smtp-Source: AGHT+IFZMR4YYHX5deGBSALfQree6NpmSKONubvuaIF1Ro7jn3se2pfi+EkTGz5DgKWyeds0Lj+yNQ==
X-Received: by 2002:a2e:9852:0:b0:2bf:f6f6:9fd9 with SMTP id e18-20020a2e9852000000b002bff6f69fd9mr585791ljj.0.1698351840412;
        Thu, 26 Oct 2023 13:24:00 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:35e4:65b9:f46b:317d? ([2001:8b0:aba:5f3c:35e4:65b9:f46b:317d])
        by smtp.gmail.com with ESMTPSA id z6-20020a05600c220600b00407b93d8085sm3352961wml.27.2023.10.26.13.23.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 13:24:00 -0700 (PDT)
Message-ID: <612770f9da2cefffc40087a743db2d634904a1c9.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v3] AUH: Add
 Openembedded auto-update-helper with list of layer to test
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: David Pierret <david.pierret@smile.fr>
Cc: yocto@lists.yoctoproject.org
Date: Thu, 26 Oct 2023 21:23:59 +0100
In-Reply-To: <CADyEP=STaokK11erv+Wsf42Fkhy3DwxVx+vfZnJW-eh-rzfwvA@mail.gmail.com>
References: <1791AA00CF01227F.20272@lists.yoctoproject.org>
	 <CADyEP=STaokK11erv+Wsf42Fkhy3DwxVx+vfZnJW-eh-rzfwvA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Oct 2023 20:24:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61497

On Thu, 2023-10-26 at 15:11 +0200, David Pierret wrote:
> Hi,
>=20
> I've made separate steps for setup and run
> I didn't yet modify the python script in upgrade-helper to include
> Kevin reviews.
>=20
> follow some questions I have about the autobuilder.
>=20
> On Thu, Oct 26, 2023 at 3:04=E2=80=AFPM David Pierret via
> lists.yoctoproject.org <david.pierret=3Dsmile.fr@lists.yoctoproject.org>
> wrote:
> >=20
> > - Modify the setup-auh to use repositories cloned by the auto-builder.
> >   Manage the case where meta-openembedded is not used.
> >=20
> > - Modify the run-auh to manage the optional additional layer.
> >   Only 1 layer can be provided.
> >=20
> > - Add auh-meta-openembedded job with 1 step per layer.
> >=20
> > Signed-off-by: David Pierret <david.pierret@smile.fr>
> > ---
> >  config.json       | 102 ++++++++++++++++++++++++++++++++++++++++++++--
> >  scripts/run-auh   |  39 ++++++++++++------
> >  scripts/setup-auh |  34 ++++++++++------
> >  3 files changed, 146 insertions(+), 29 deletions(-)
> >=20
> > diff --git a/config.json b/config.json
> > index 3acb710..a168e48 100644
> > --- a/config.json
> > +++ b/config.json
> > @@ -1416,9 +1416,99 @@
> >              "TEMPLATE" : "buildperf"
> >          },
> >          "auh" : {
> > -            "EXTRAPLAINCMDS" : [
> > -                "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSD=
IR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
> > -            ]
> > +            "NEEDREPOS" : ["poky", "auto-upgrade-helper"],
> > +            "step1" : {
> > +                "shortname" : "setup AUH",
> > +                "EXTRAPLAINCMDS" : [
> > +                    "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}"
> > +                ]
> > +            },
> > +            "step2" : {
> > +                "shortname" : "run AUH poky",
> > +                "EXTRAPLAINCMDS" : [
> > +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBL=
ISH_DIR}/pub/auh/"
> > +                ]
> > +            }
> > +        },
> > +        "auh-meta-openembedded" : {
> > +            "NEEDREPOS" : ["poky", "meta-openembedded", "auto-upgrade-=
helper"],
> > +            "step1" : {
> > +                "shortname" : "setup AUH",
> > +                "EXTRAPLAINCMDS" : [
> > +                    "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}"
> > +                ]
> > +            },
> > +            "step2" : {
> > +                "shortname" : "run AUH for layer meta-oe",
> > +
> > +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-o=
e"],
> > +                "EXTRAPLAINCMDS" : [
> > +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBL=
ISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-oe"
> > +                ]
> > +            },
> > +            "step3" : {
> > +                "shortname" : "run AUH for layer meta-python",
> > +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-p=
ython"],
> > +                "EXTRAPLAINCMDS" : [
> > +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBL=
ISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-python"
> > +                ]
> > +            },
> > +            "step4" : {
> > +                "shortname" : "run AUH for layer meta-perl",
> > +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-p=
erl"],
> > +                "EXTRAPLAINCMDS" : [
> > +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBL=
ISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-perl"
> > +                ]
> > +            },
> > +            "step5" : {
> > +                "shortname" : "run AUH for layer meta-networking",
> > +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-n=
etworking"],
> > +                "EXTRAPLAINCMDS" : [
> > +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBL=
ISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-networking"
> > +                ]
> > +            },
> > +            "step6" : {
> > +                "shortname" : "run AUH for layer meta-multimedia",
> > +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-m=
ultimedia"],
> > +                "EXTRAPLAINCMDS" : [
> > +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBL=
ISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-multimedia"
> > +                ]
> > +            },
> > +            "step7" : {
> > +                "shortname" : "run AUH for layer meta-gnome",
> > +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-g=
nome"],
> > +                "EXTRAPLAINCMDS" : [
> > +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBL=
ISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-gnome"
> > +                ]
> > +            },
> > +            "step8" : {
> > +                "shortname" : "run AUH for layer meta-xfce",
> > +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-x=
fce"],
> > +                "EXTRAPLAINCMDS" : [
> > +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBL=
ISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-xfce"
> > +                ]
> > +            },
> > +            "step9" : {
> > +                "shortname" : "run AUH for layer meta-filesystems",
> > +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-f=
ilesystems"],
> > +                "EXTRAPLAINCMDS" : [
> > +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBL=
ISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-filesystems"
> > +                ]
> > +            },
> > +            "step10" : {
> > +                "shortname" : "run AUH for layer meta-initramfs",
> > +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-i=
nitramfs"],
> > +                "EXTRAPLAINCMDS" : [
> > +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBL=
ISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-initramfs"
> > +                ]
> > +            },
> > +            "step11" : {
> > +                "shortname" : "run AUH for layer meta-webserver",
> > +                "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-w=
ebserver"],
> > +                "EXTRAPLAINCMDS" : [
> > +                    "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBL=
ISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/meta-openembedded meta-webserver"
> > +                ]
> > +            }
> >          },
> >          "a-quick" : {
> >              "TEMPLATE" : "trigger-build"
> > @@ -1531,6 +1621,12 @@
> >              "branch" : "master",
> >              "revision" : "HEAD",
> >              "no-layer-add" : true
> > +        },
> > +        "auto-upgrade-helper" : {
> > +            "url" : "git://git.yoctoproject.org/auto-upgrade-helper",
> > +            "branch" : "master",
> > +            "revision" : "HEAD",
> > +            "no-layer-add" : true
> >          }
> >      },
> >      "buildtools" : {
> > diff --git a/scripts/run-auh b/scripts/run-auh
> > index 0419dd1..f59c561 100755
> > --- a/scripts/run-auh
> > +++ b/scripts/run-auh
> > @@ -7,28 +7,41 @@
> >  # Called with $1 - the directory where the setup was created
> >=20
> >  if [ -z $1 ]; then
> > -  echo "Use: $0 auh_setup_dir [publish_dir]"
> > +  echo "Use: $0 [auh_setup_dir] [publish_dir] [meta_dir] [meta_list]"
> >    exit 1
> >  fi
> >=20
> > -full_dir=3D$(readlink -e $1)
> > +build_dir=3D$(readlink -e $1)
> >=20
> > -auh_dir=3D$full_dir/auto-upgrade-helper
> > -poky_dir=3D$full_dir/poky
> > -build_dir=3D$full_dir/build
> > -sstate_dir=3D$full_dir/build/sstate-cache
> > +auh_dir=3D$build_dir/../auto-upgrade-helper
> > +poky_dir=3D$build_dir/../poky
> > +sstate_dir=3D$build_dir/sstate-cache
> >=20
> >  pushd $poky_dir
> > +  # Base the upgrades on poky master
> > +  git fetch origin
> > +  git checkout -B tmp-auh-upgrades origin/master
> > +popd
> > +
> > +LAYERS_ARGS=3D''
> > +# if layer arguments are provided
> > +if [ ! -z $3 ]; then
> > +  meta_dir=3D$3
> > +  meta_layer=3D$4
> > +  machine_list=3D"qemux86 qemux86-64 qemuarm qemumips qemuppc qemux86_=
musl"
>=20
> Do we have a variable that contains the machine provided in the config.js=
on ?

I think this is different. The MACHINE value set in config.json is used
in the OE build itself. The list above is the set of MACHINE values auh
iterates over during testing. This is quite auh specific.

The easier way to customise this would be to set something in the
upgrade-helper.conf file or through the commandline. This was why I was
thinking of two conf files, one for meta-oe and one for oe-core.

It looks like Alex has changed the defaults in the script so we don't
need to make this piece meta-oe specific though.
>=20

> > +
> > +  pushd $meta_dir || exit 1
> > +    # Base the upgrades on master branch
> > +    git fetch origin
> > +    git checkout -B tmp-auh-upgrades origin/main
> > +  popd
> >=20
> > -# Base the upgrades on poky master
> > -git fetch origin
> > -git checkout -B tmp-auh-upgrades origin/master
> > +  LAYERS_ARGS=3D"--layer-dir ${meta_dir} --layer-names ${meta_layer} -=
-layer-machines ${machine_list}"
> > +fi
> >=20
> > -source $poky_dir/oe-init-build-env $build_dir
> > -$auh_dir/upgrade-helper.py -e all
> > +# execute upgrade-helper script on all recipes
> > +$auh_dir/upgrade-helper.py -e ${LAYERS_ARGS} -- all
> >=20
> >  if [ -n $2 ]; then
> >    cp -rf $build_dir/upgrade-helper/* $2
> >  fi
>=20
> Should this part be put in a step ?

It could be, not sure if it is worth it or not. Was there a particular
reason you think it should be?

Cheers,

Richard



