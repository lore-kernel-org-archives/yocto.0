Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F158CCD6E7B
	for <webhook@archiver.kernel.org>; Wed, 11 Oct 2023 14:26:31 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web11.17906.1697034382454849552
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Oct 2023 07:26:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Urd9znr7;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.160.174, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-4197bb0a0d9so41436511cf.3
        for <yocto@lists.yoctoproject.org>; Wed, 11 Oct 2023 07:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1697034381; x=1697639181; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WSIItMG+EhykUxqBka9bGeqo49RhuwxJ1Kb1lFWuBlo=;
        b=Urd9znr7I81bg9YAXH4sihwyMjfPFoSdt9n7IrQhGR4TjPclTCeFvr7fYylZtoRNm0
         EWDBNT834+l2AvdctBPlZ2n0tz0wPOoMBOUcdXwBJYRl8dqPtiQSJxNAJq2m9EZmiBVv
         VOz5FFUFsWooYQ2k7dIlT+pQBhar7dEZbYk/U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697034381; x=1697639181;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WSIItMG+EhykUxqBka9bGeqo49RhuwxJ1Kb1lFWuBlo=;
        b=Dz/q22l0O05eL3MIvYExP7H7FOhD6KartGSEJtm02/sft1CND40+JlrHcWonLnB2vk
         mjglXBEpwP8b4+6dCLG61QbqsEYv127mdQoDOFrzkPZbduEiNvNp4HeJzwwkyclO8A0w
         XyHOZzdjziT/e8/qvJAM9U9FG12cLylnNp9nRPgqwzSbCQbFwXPTbl0P7XXTnKmbR61a
         nEvAyfYMWQHZxR/94ce0frU8sEmw82ayqXzStOBD1+Y/rYiBYtQ4yzHvls9neQ1kCaHk
         fspFdmvp54TecKLLj56XsehWqneS10FcZmOhs94HbO03Dlw/gX8F0rjHsgZdBBjQgklr
         xGJw==
X-Gm-Message-State: AOJu0YxuUxGs8YuppLEICnQpiXItwp4p4BTKY716FnlsgAinF70yPidD
	LRRxJ0cpvPd75mTbnwZYe+WfWg==
X-Google-Smtp-Source: AGHT+IEbn97xHokZW2OIRClLsyhxmuLV4JEd5J/go0j9Xro9dWhy3INYcv3/JHwEY7oPaZmJhg/OYQ==
X-Received: by 2002:ac8:7d4f:0:b0:412:21f4:6f9c with SMTP id h15-20020ac87d4f000000b0041221f46f9cmr27430698qtb.60.1697034381468;
        Wed, 11 Oct 2023 07:26:21 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:af0b:dd0f:66a6:9b90? ([2001:8b0:aba:5f3c:af0b:dd0f:66a6:9b90])
        by smtp.gmail.com with ESMTPSA id hb11-20020a05622a2b4b00b0041969bc2e4csm5421594qtb.32.2023.10.11.07.26.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 07:26:21 -0700 (PDT)
Message-ID: <9ffe4910e8ae16ade694b94960153f26acb87a4f.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] oe-mirror: Add job to
 mirror openembedded sources
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: David Pierret <david.pierret@smile.fr>, yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Date: Wed, 11 Oct 2023 15:26:18 +0100
In-Reply-To: <20231010144940.3811241-1-david.pierret@smile.fr>
References: <20231010144940.3811241-1-david.pierret@smile.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Oct 2023 14:26:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61323

On Tue, 2023-10-10 at 16:49 +0200, David Pierret wrote:
> - Add a job that call run-fetchuniverse
> - Add script run-fetchuniverse
>    - loop over each LTS branches
>    - Download all the meta-openembedded layers sources.
>    - Call to oe-selftest test_yocto_source_mirror after fetching.
> We are not using a second step to keep checkout consistency with potentia=
l merge.
>=20
> Signed-off-by: David Pierret <david.pierret@smile.fr>
> Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
> ---
>  config.json               | 13 +++++++++++
>  scripts/run-fetchuniverse | 49 +++++++++++++++++++++++++++++++++++++++
>  2 files changed, 62 insertions(+)
>  create mode 100755 scripts/run-fetchuniverse
>=20
> diff --git a/config.json b/config.json
> index 3acb710..8d59be8 100644
> --- a/config.json
> +++ b/config.json
> @@ -1420,6 +1420,19 @@
>                  "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSDIR=
}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
>              ]
>          },
> +        "oe-mirror" : {

This needs to be called something like meta-oe-mirror to differentiate
it from other "OE" things.


> +            "SDKMACHINE" : "x86_64",
> +            "MACHINE" : "qemux86-64",
> +            "NEEDREPOS" : ["poky", "meta-openembedded"],
> +
> +            "step1" : {
> +                "shortname" : "Sources pre-fetching",
> +                "EXTRAPLAINCMDS" : ["${SCRIPTSDIR}/run-fetchuniverse ${B=
UILDDIR} ${SCRIPTSDIR}"],
> +                "extravars" : [
> +                    "SOURCE_MIRROR_FETCH =3D '1'"
> +                ]
> +            }
> +        },
>          "a-quick" : {
>              "TEMPLATE" : "trigger-build"
>          },
> diff --git a/scripts/run-fetchuniverse b/scripts/run-fetchuniverse
> new file mode 100755
> index 0000000..9ef82de
> --- /dev/null
> +++ b/scripts/run-fetchuniverse
> @@ -0,0 +1,49 @@
> +#!/bin/bash
> +#
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +BUILDDIR=3D`realpath $1`
> +SCRIPTSDIR=3D`realpath $2`
> +ROOTDIR=3D$BUILDDIR/..
> +
> +#
> +# Fetch mirror for each LTS branch and test integrity
> +#
> +for branch in master mickledore langdale kirkstone dunfell; do

Rather than iterate here, we should add a configuration to each branch
of -helper where we want to enable this.

> +  # For each layer
> +  for repo in bitbake poky meta-openembedded ; do
> +    pushd $ROOTDIR/$repo || exit 1
> +      # reset branch
> +      git reset origin/$branch --hard
> +    popd || exit 1
> +  done
> +  # remove config to be re-generated by oe-init-build-env
> +  rm conf/local.conf
> +  rm conf/bblayers.conf
> +  rm -f conf/templateconf.cfg
> +  rm tmp/ -rf
> +
> +  # got back to ROOTDIR
> +  pushd $ROOTDIR || exit 1
> +  # generate config for current branch
> +  . ./poky/oe-init-build-env build
> +
> +  # We need to add the meta-openembedded layers before fetch
> +  bitbake-layers add-layer ${BUILDDIR}/../meta-openembedded/meta-filesys=
tems ${BUILDDIR}/../meta-openembedded/meta-gnome \
> +                           ${BUILDDIR}/../meta-openembedded/meta-initram=
fs ${BUILDDIR}/../meta-openembedded/meta-multimedia \
> +                           ${BUILDDIR}/../meta-openembedded/meta-network=
ing ${BUILDDIR}/../meta-openembedded/meta-oe \
> +                           ${BUILDDIR}/../meta-openembedded/meta-perl ${=
BUILDDIR}/../meta-openembedded/meta-python \
> +                           ${BUILDDIR}/../meta-openembedded/meta-webserv=
er ${BUILDDIR}/../meta-openembedded/meta-xfce

Then hopefully we can massively simplify the script!

Cheers,

Richard

> +  # call bitbake to fetch universe
> +  bitbake universe -c fetch -k
> +
> +  # call oe-selftest to execute test_yocto_source_mirror
> +  # We need the selftest layer
> +  bitbake-layers add-layer $BUILDDIR/../meta-selftest
> +  # ensure no previous build-st directory exist
> +  rm -rf ${BUILDDIR}/../build-st
> +  ${SCRIPTSDIR}/checkvnc; DISPLAY=3D:1 oe-selftest -r buildoptions.Sourc=
eMirroring.test_yocto_source_mirror || exit 1
> +  popd || exit 1
> +done
> +
> +
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61306): https://lists.yoctoproject.org/g/yocto/messag=
e/61306
> Mute This Topic: https://lists.yoctoproject.org/mt/101876565/1686473
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [richard.purdie=
@linuxfoundation.org]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


