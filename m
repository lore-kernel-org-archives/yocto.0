Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F7F8C001DF
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 14:57:49 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web10.56396.1697813860767673475
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Oct 2023 07:57:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=QuUTloGb;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5079fa1bbf8so1337189e87.0
        for <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 07:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1697813858; x=1698418658; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5cA1RLOuCBhFLV+mIbWYjIj4Abq/1nZ0B2UKq6YBLe4=;
        b=QuUTloGbk5AXKnkHQHb8Uc7gj5EG3NP29BKdHG4FDeyCKxipAaojPqNh0mZlemtj7f
         v80wBQ7C6QUzcw7SRNaUw8lggOsqFoVVt9+vQEoBV4Qhkl1MrJp41AzrwLxs82aXbqaV
         NtJynFqp/OGooWG4mFqbev1DDQUZOM0TbX1Tk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697813858; x=1698418658;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5cA1RLOuCBhFLV+mIbWYjIj4Abq/1nZ0B2UKq6YBLe4=;
        b=MhUxTE9itWXbawEAZoZBQPTjWRt6kLR3vAMidUk9cF5icnaf3nwfvf1RqkKKjVXpmr
         6jBHfTj9d2SXRhSjhToeTfyDFARWguRVjrSwm2F8AK0ei/mJXhY2F7+/IJ7P35vDZJzv
         0nEqrMBycKxWbuSVjcLdqkR8XQMxlbmOSlBZrQJ4x48miLDDo+axswbuyYwkIyiJqM8k
         EzadRIK8VWNfSOXy3LgReYPx/1YRmEjch2dz8n9Ni+tE4pwEcOS4Yz4hsSJXWEuscAgO
         YPiEdKsnXSf32H4nuYDNTJyD4o2n67FUEGHpe9IDg3ESlTW4L9qdKIE08bskoIsJan7c
         THbA==
X-Gm-Message-State: AOJu0Yy+e6ffsPET15zTajThd993U6ctiZx6YH6Eu/JfIFO/sR2D8Nei
	FRsIbbE+DLjfBK08xQ6Br/sD0w==
X-Google-Smtp-Source: AGHT+IH3VpXoOe8lP0hC0dOMCDNj2Cimmqflixg6FNstb8C49Gw/G0oDLdS/goxy719vrngaB6MCug==
X-Received: by 2002:a05:651c:1988:b0:2c5:924:e8b1 with SMTP id bx8-20020a05651c198800b002c50924e8b1mr1792500ljb.19.1697813858229;
        Fri, 20 Oct 2023 07:57:38 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:e461:a77:598a:10d6? ([2001:8b0:aba:5f3c:e461:a77:598a:10d6])
        by smtp.gmail.com with ESMTPSA id t6-20020a05600c450600b0040535648639sm2349437wmo.36.2023.10.20.07.57.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 07:57:37 -0700 (PDT)
Message-ID: <205e52a83035e8132256a3edff4259e967786bc4.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v2] AUH: Add
 Openembedded auto-update-helper with list of layer to test
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: David Pierret <david.pierret@smile.fr>, yocto@lists.yoctoproject.org
Cc: Khem Raj <raj.khem@gmail.com>
Date: Fri, 20 Oct 2023 15:57:37 +0100
In-Reply-To: <20231020140528.10787-1-david.pierret@smile.fr>
References: <20231020140528.10787-1-david.pierret@smile.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 14:57:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61438

Hi David,

Thanks for revising this, it is heading in the right direction.

On Fri, 2023-10-20 at 16:05 +0200, David Pierret wrote:
> - Add setup and run script openembedded specific
> - Add job config
>=20
> Signed-off-by: David Pierret <david.pierret@smile.fr>
> ---
>  config.json          |  6 ++++++
>  scripts/run-auh-oe   | 45 ++++++++++++++++++++++++++++++++++++++++++++
>  scripts/setup-auh-oe | 34 +++++++++++++++++++++++++++++++++
>  3 files changed, 85 insertions(+)
>  create mode 100755 scripts/run-auh-oe
>  create mode 100755 scripts/setup-auh-oe
>=20
> diff --git a/config.json b/config.json
> index 3acb710..bbd0aaf 100644
> --- a/config.json
> +++ b/config.json
> @@ -1420,6 +1420,12 @@
>                  "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSDIR=
}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
>              ]
>          },
> +        "auh-openembedded" : {

This needs to be "auh-meta-oe" since "auh" is for openembedded-core and
this is otherwise going to be confusing.

> +            "NEEDREPOS" : ["poky", "meta-openembedded"],
> +            "EXTRAPLAINCMDS" : [
> +                "${SCRIPTSDIR}/setup-auh-oe ${HELPERBUILDDIR}; ${SCRIPTS=
DIR}/run-auh-oe ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDD=
IR}/meta-openembedded ${HELPERBUILDDIR}/meta-openembedded/meta-oe ${HELPERB=
UILDDIR}/meta-openembedded/meta-python ${HELPERBUILDDIR}/meta-openembedded/=
meta-perl ${HELPERBUILDDIR}/meta-openembedded/meta-networking ${HELPERBUILD=
DIR}/meta-openembedded/meta-multimedia ${HELPERBUILDDIR}/meta-openembedded/=
meta-gnome ${HELPERBUILDDIR}/meta-openembedded/meta-xfce ${HELPERBUILDDIR}/=
meta-openembedded/meta-filesystems ${HELPERBUILDDIR}/meta-openembedded/meta=
-initramfs ${HELPERBUILDDIR}/meta-openembedded/meta-webserver "
> +            ]
> +        },
>          "a-quick" : {
>              "TEMPLATE" : "trigger-build"
>          },

Would it be better to have one setup-auh/run-auh script and add
${HELPERTARGET}  as a parameter?

This should translate to "auh" or "auh-meta-oe" and the script can then
have conditionals in to handle both cases rather than duplicating the
script?

> diff --git a/scripts/run-auh-oe b/scripts/run-auh-oe
> new file mode 100755
> index 0000000..588755a
> --- /dev/null
> +++ b/scripts/run-auh-oe

Similarly, this should be run-auh-meta-oe.

> @@ -0,0 +1,45 @@
> +#!/bin/bash
> +#
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Run Auto Upgrade Helper in a directory set up by setup_auh.
> +#
> +# Called with $1 - the directory where the setup was created
> +
> +if [ -z $1 ]; then
> +  echo "Use: $0 [auh_setup_dir] [publish_dir] [meta_dir] [meta_list]"
> +  exit 1
> +fi
> +
> +full_dir=3D$(readlink -e $1)
> +
> +auh_dir=3D$full_dir/auto-upgrade-helper
> +poky_dir=3D$full_dir/poky
> +
> +build_dir=3D$full_dir/build
> +sstate_dir=3D$full_dir/build/sstate-cache
> +meta_dir=3D$3
> +meta_list=3D${@:4}
> +machine_list=3D"qemux86 qemux86-64 qemuarm qemumips qemuppc qemux86_musl=
"

Do we need to vary the machine_list per layer? At present it only seems
to support one list anyway so I'm not sure this does anything useful?

> +pushd $meta_dir || exit 1
> +
> +# Base the upgrades on meta_openembedded master
> +git fetch origin
> +git checkout -B tmp-auh-upgrades origin/main
> +
> +source $poky_dir/oe-init-build-env $build_dir
> +
> +# build the layer_names variable to me used in the command line
> +layer_names=3D""
> +for d in $meta_list; do
> +  layer_names+=3D" $(basename ${d})"
> +done
> +
> +$auh_dir/upgrade-helper.py -e --layer-dir ${meta_dir} --layer-names ${la=
yer_names} --layer-machines ${machine_list} -- all

Would it be simpler just to iterate, calling upgrade-helper once per
sub-layer or meta-openembedded?

You may have considered that in which case I'd just like to understand
why you ended up with this as the preferred way of doing things?

In some ways a separate report/run may be useful for the way meta-oe
maintainers might handle this?

> +
> +if [ -n $2 ]; then
> +  cp -rf $build_dir/upgrade-helper/* $2
> +fi
> +
> +popd
> diff --git a/scripts/setup-auh-oe b/scripts/setup-auh-oe
> new file mode 100755
> index 0000000..ba1a7fb
> --- /dev/null
> +++ b/scripts/setup-auh-oe

This naming also needs tweaking.

> @@ -0,0 +1,34 @@
> +#!/bin/bash
> +#
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Initialize Auto Upgrade Helper in a directory.
> +#
> +# Called with $1 - the directory to place the setup
> +CONFIG_DIR=3D`dirname $0`/auh-config
> +
> +if [ -z $1 ]; then
> +  echo "Use: $0 target_dir"
> +  exit 1
> +fi
> +
> +mkdir -p $1
> +pushd $1
> +
> +git clone git://git.yoctoproject.org/poky
> +pushd poky
> +git config user.email auh@yoctoproject.org
> +git config user.name "Auto Upgrade Helper"
> +popd
> +git clone git://git.openembedded.org/meta-openembedded
> +pushd meta-openembedded
> +git config user.email auh@yoctoproject.org
> +git config user.name "Auto Upgrade Helper"
> +popd
> +git clone git://git.yoctoproject.org/auto-upgrade-helper
> +source poky/oe-init-build-env build
> +mkdir -p upgrade-helper
> +popd
> +
> +cp $CONFIG_DIR/upgrade-helper.conf $1/build/upgrade-helper
> +cat $CONFIG_DIR/local.conf.append >> $1/build/conf/local.conf

Would a upgrade-helper.conf per target help and simplfy the script
differences?

Cheers,

Richard



