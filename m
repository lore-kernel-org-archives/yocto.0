Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F774C07545
	for <webhook@archiver.kernel.org>; Tue, 24 Oct 2023 09:25:38 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.14212.1698139530469568846
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Oct 2023 02:25:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KM5ojUcX;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.175, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2c50cf61f6dso65249561fa.2
        for <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 02:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698139528; x=1698744328; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=T+C7bf9blpM+A9/1RhMDuPPzv2tmnAUjZw69bMVLsVE=;
        b=KM5ojUcXBO94zl0R+XY2BuS9/WNm3CQxqO3/eLor2Z2Qf8ulRFnzBl+46ZndgWsnNV
         Whuhpe3fiLy/HIx04MeCfFsKKtRjrkfk5vTh7uQspQmCCImpRDzET2hyoxofvLHDIHjF
         sjxzQqRsTbhwxAn8qX04WBAwrqHAzkY5pG6so=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698139528; x=1698744328;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T+C7bf9blpM+A9/1RhMDuPPzv2tmnAUjZw69bMVLsVE=;
        b=ut1ZoS3Jzyl6UgbXqwi68MAubOXLmclbM8wneRLzbJB6RlIEsFrBm/vqTJmAPY/NB8
         TQkVUdbMJON6SlWEbqFK5DY66Gge9J+eTkjH/YzwIF32hhEwaZs+oQTyKZ5l+QWA0xdv
         3H0vEJ7NrlvNJ9pa7FOumysLNhX8XgwPx7StXe7qhqLL2E4kbJ0wzQbgIQgs2licA3A9
         cP3O6Ud/KGK8vThmylGUZsLV/p1N5kY/uD/Ul3cxRNBk2Dkjybo8k1Q7pVSpGtWhb6Fi
         BdA5NImZQT2axvcDib4hmqkHLQbA3np1Zo1vXzZZd9xZg8iNrHJDbMpwjojCax2LcbON
         cQqw==
X-Gm-Message-State: AOJu0YwSOylwdEW6M715CHzYUE1BEKk14XpussxT16uKIo431H7zldTS
	bhlwwnXVD3F+CDoit6t2tbgwXA==
X-Google-Smtp-Source: AGHT+IF7cWXIFwakFPIKhF+VysjABSagLrEz3ETK+cuFtDnmPl4m4AjERKdoXuSIk0eK6KDGPDgxcA==
X-Received: by 2002:a2e:b5b7:0:b0:2bf:fae2:f97 with SMTP id f23-20020a2eb5b7000000b002bffae20f97mr7569724ljn.12.1698139528321;
        Tue, 24 Oct 2023 02:25:28 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:18d6:7c14:536c:fd67? ([2001:8b0:aba:5f3c:18d6:7c14:536c:fd67])
        by smtp.gmail.com with ESMTPSA id e7-20020a05600c218700b00407efbc4361sm16133826wme.9.2023.10.24.02.25.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 02:25:27 -0700 (PDT)
Message-ID: <b509da3cbe27e9d84f3fa2feadbafc3e8fdf485f.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v2] AUH: Add
 Openembedded auto-update-helper with list of layer to test
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: David PIERRET <david.pierret@smile.fr>
Cc: yocto@lists.yoctoproject.org, Khem Raj <raj.khem@gmail.com>
Date: Tue, 24 Oct 2023 10:25:27 +0100
In-Reply-To: <CADyEP=SbqzRG_2wFi__qvUfXvbCUdOqUV54EoXBtACJRhn=qTQ@mail.gmail.com>
References: <20231020140528.10787-1-david.pierret@smile.fr>
	 <205e52a83035e8132256a3edff4259e967786bc4.camel@linuxfoundation.org>
	 <CADyEP=SbqzRG_2wFi__qvUfXvbCUdOqUV54EoXBtACJRhn=qTQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 09:25:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61463

Hi David,

Comments below. I did try and sync up with Alex Kanavin so we have a
consistent direction.

On Tue, 2023-10-24 at 10:16 +0200, David PIERRET wrote:
> On Fri, Oct 20, 2023 at 4:57=E2=80=AFPM Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> >=20
> > Hi David,
> >=20
> > Thanks for revising this, it is heading in the right direction.
> >=20
> > On Fri, 2023-10-20 at 16:05 +0200, David Pierret wrote:
> > > - Add setup and run script openembedded specific
> > > - Add job config
> > >=20
> > > Signed-off-by: David Pierret <david.pierret@smile.fr>
> > > ---
> > >  config.json          |  6 ++++++
> > >  scripts/run-auh-oe   | 45 ++++++++++++++++++++++++++++++++++++++++++=
++
> > >  scripts/setup-auh-oe | 34 +++++++++++++++++++++++++++++++++
> > >  3 files changed, 85 insertions(+)
> > >  create mode 100755 scripts/run-auh-oe
> > >  create mode 100755 scripts/setup-auh-oe
> > >=20
> > > diff --git a/config.json b/config.json
> > > index 3acb710..bbd0aaf 100644
> > > --- a/config.json
> > > +++ b/config.json
> > > @@ -1420,6 +1420,12 @@
> > >                  "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPT=
SDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
> > >              ]
> > >          },
> > > +        "auh-openembedded" : {
> >=20
> > This needs to be "auh-meta-oe" since "auh" is for openembedded-core and
> > this is otherwise going to be confusing.
> >=20
> > > +            "NEEDREPOS" : ["poky", "meta-openembedded"],
> > > +            "EXTRAPLAINCMDS" : [
> > > +                "${SCRIPTSDIR}/setup-auh-oe ${HELPERBUILDDIR}; ${SCR=
IPTSDIR}/run-auh-oe ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBU=
ILDDIR}/meta-openembedded ${HELPERBUILDDIR}/meta-openembedded/meta-oe ${HEL=
PERBUILDDIR}/meta-openembedded/meta-python ${HELPERBUILDDIR}/meta-openembed=
ded/meta-perl ${HELPERBUILDDIR}/meta-openembedded/meta-networking ${HELPERB=
UILDDIR}/meta-openembedded/meta-multimedia ${HELPERBUILDDIR}/meta-openembed=
ded/meta-gnome ${HELPERBUILDDIR}/meta-openembedded/meta-xfce ${HELPERBUILDD=
IR}/meta-openembedded/meta-filesystems ${HELPERBUILDDIR}/meta-openembedded/=
meta-initramfs ${HELPERBUILDDIR}/meta-openembedded/meta-webserver "
> > > +            ]
> > > +        },
> > >          "a-quick" : {
> > >              "TEMPLATE" : "trigger-build"
> > >          },
> >=20
> > Would it be better to have one setup-auh/run-auh script and add
> > ${HELPERTARGET}  as a parameter?
> >=20
> > This should translate to "auh" or "auh-meta-oe" and the script can then
> > have conditionals in to handle both cases rather than duplicating the
> > script?
>=20
> The setup-auh script is cloning its own repository instead of using
> the one initialized by CI.
> Any reason to not use them ? We could use the NEEDREPOS instead of the
> setup script,
> and add the auto-upgrade-helper repository in the config.

I think it does it's own clone for historical reasons from when it was
a standalone tool. I'm fine with letting the autobuilder handle this.

> > > diff --git a/scripts/run-auh-oe b/scripts/run-auh-oe
> > > new file mode 100755
> > > index 0000000..588755a
> > > --- /dev/null
> > > +++ b/scripts/run-auh-oe
> >=20
> > Similarly, this should be run-auh-meta-oe.
> >=20
> > > @@ -0,0 +1,45 @@
> > > +#!/bin/bash
> > > +#
> > > +# SPDX-License-Identifier: GPL-2.0-only
> > > +#
> > > +# Run Auto Upgrade Helper in a directory set up by setup_auh.
> > > +#
> > > +# Called with $1 - the directory where the setup was created
> > > +
> > > +if [ -z $1 ]; then
> > > +  echo "Use: $0 [auh_setup_dir] [publish_dir] [meta_dir] [meta_list]=
"
> > > +  exit 1
> > > +fi
> > > +
> > > +full_dir=3D$(readlink -e $1)
> > > +
> > > +auh_dir=3D$full_dir/auto-upgrade-helper
> > > +poky_dir=3D$full_dir/poky
> > > +
> > > +build_dir=3D$full_dir/build
> > > +sstate_dir=3D$full_dir/build/sstate-cache
> > > +meta_dir=3D$3
> > > +meta_list=3D${@:4}
> > > +machine_list=3D"qemux86 qemux86-64 qemuarm qemumips qemuppc qemux86_=
musl"
> >=20
> > Do we need to vary the machine_list per layer? At present it only seems
> > to support one list anyway so I'm not sure this does anything useful?
>=20
> The list is the same as the one used for poky.

It matches the default in the scripts though so I was wondering why
this was specified?

FWIW I agree we should perhaps limit testing to qemux86-64, qemuarm and
qemux86_musl initially just to make things a little easier.

> > > +pushd $meta_dir || exit 1
> > > +
> > > +# Base the upgrades on meta_openembedded master
> > > +git fetch origin
> > > +git checkout -B tmp-auh-upgrades origin/main
> > > +
> > > +source $poky_dir/oe-init-build-env $build_dir
> > > +
> > > +# build the layer_names variable to me used in the command line
> > > +layer_names=3D""
> > > +for d in $meta_list; do
> > > +  layer_names+=3D" $(basename ${d})"
> > > +done
> > > +
> > > +$auh_dir/upgrade-helper.py -e --layer-dir ${meta_dir} --layer-names =
${layer_names} --layer-machines ${machine_list} -- all
> >=20
> > Would it be simpler just to iterate, calling upgrade-helper once per
> > sub-layer or meta-openembedded?
>=20
> Is it prefered to set 1 step per layer ?
> or keep the call to the script but iterate over a list of layers ?

I think a step per layer will make things clearer in the autobuilder
output.

> > You may have considered that in which case I'd just like to understand
> > why you ended up with this as the preferred way of doing things?
> >=20
> > In some ways a separate report/run may be useful for the way meta-oe
> > maintainers might handle this?
>=20
> The iteration over a list was my first approach, but aborted following
> review on patch v1.
> The V1 review asked to allow the AUH to accept dynamic layers as paramete=
rs.
> We maybe misunderstood each other.

I think this is perhaps a misunderstanding. I think we do want AUH to
learn the concept of testing just a layer but we do want to keep the
iteration as autobuilder steps to keep the output and logs separate.

There are also different maintainers for each layer in meta-oe so we
may want to copy different people on different bits of the run, we
certainly need that capability.

> > > +  echo "Use: $0 target_dir"
> > > +  exit 1
> > > +fi
> > > +
> > > +mkdir -p $1
> > > +pushd $1
> > > +
> > > +git clone git://git.yoctoproject.org/poky
> > > +pushd poky
> > > +git config user.email auh@yoctoproject.org
> > > +git config user.name "Auto Upgrade Helper"
> > > +popd
> > > +git clone git://git.openembedded.org/meta-openembedded
> > > +pushd meta-openembedded
> > > +git config user.email auh@yoctoproject.org
> > > +git config user.name "Auto Upgrade Helper"
> > > +popd
> > > +git clone git://git.yoctoproject.org/auto-upgrade-helper
> > > +source poky/oe-init-build-env build
> > > +mkdir -p upgrade-helper
> > > +popd
> > > +
> > > +cp $CONFIG_DIR/upgrade-helper.conf $1/build/upgrade-helper
> > > +cat $CONFIG_DIR/local.conf.append >> $1/build/conf/local.conf
> >=20
> > Would a upgrade-helper.conf per target help and simplfy the script
> > differences?
>=20
> Do you mean 1 upgrade-helper.conf per layer ?

That would allow us to copy different maintainers on different parts of
the run for example so might be useful?

Also, at least initially can we configure this to send the output to
test-list@lists.yoctoproject.org? That way we can test it is working,
then make it "live" without spamming the main list.

Cheers,

Richard





