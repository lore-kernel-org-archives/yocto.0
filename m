Return-Path: <david.pierret@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01CDCCDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 13:49:37 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web11.281662.1697636973913136964
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Oct 2023 06:49:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=ofuecEjc;
 spf=pass (domain: smile.fr, ip: 209.85.208.170, mailfrom: david.pierret@smile.fr)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2c4fdf94666so75918851fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 06:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1697636971; x=1698241771; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xIjUd+uQLhOkYnWo+8CUZL9eI2gfHskoTjRq8okXcxc=;
        b=ofuecEjcQGQB8Qm0376nCjdISjIp0PqJSK8yogcUj+8+zx1iuVM3rM5AIvcSE4ep/e
         wwLXvbqD8No/k55+hDwi9zYtY24jnJ+Hn5xRElWrCs7Evu1KutTE5KUHGc2XdticDn5k
         HOFdV8tf8mfuI06kiLdvazcR2cDMfW5CS4IOyFxxIJvUt2HqyVfT0SBRRMqlSZ/I/wP+
         Z5OKEH9f+MV3f7IyhsZDHQxAHY3+NR60UOCJffQxuhMCN9kw6fStrfKVfx06efz2FoWO
         NbMNuJXJaTUYr/55Nmc3fk2zpdJywUgO9DjhSWjD8kQ7W9sYeRXzUnEVrBdo1B7ItqYq
         m3Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697636971; x=1698241771;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xIjUd+uQLhOkYnWo+8CUZL9eI2gfHskoTjRq8okXcxc=;
        b=f4rPin9fy0/xTuZ5BXymIe1TVyjzTN66DA34fjPFjgImcAf1j8UefUq291yXvxodcO
         WzTiumuW5YShs8iT6UHrkCfBOX5fZqsYXmiKRzA6p/4cwc/JhXHhmQ36r8RB2b+HzBFV
         X4sAjIe3UaQlyJrWM69vzUiz1gS5cEfIsudETkS1j0T6dHw39iRnD0xvP/wLG+QyTj+/
         fNnRPRW4jyP4z1klWjgVQOJRrGXAZcYuG9Vet+a91iiB6CqgUo+gv4tjauh26o4Mp5ED
         UFgG9kjrCg76VqcqXR3Ri8dkT4fY1Jot5CDNbBnac6uYFth/T/KxrqEP8C5v2liBdTDj
         hMcw==
X-Gm-Message-State: AOJu0YyHbt4rVBnJ97FcmYg6VIFrYKzGhK89OuzxunHKxTQTdTnoH5RQ
	1PlU8ijlObH6zo963N8w6vyM1Q0QYYQRq2vLFm7Wog==
X-Google-Smtp-Source: AGHT+IEcdHEmlKtbtlaI+9ZVJoGtkAY0vkrXBx4F4GPL3Q/TlNXdyudOnaz5eXuj1OgpTL9HJN4MlY6Ed4W7MBkM3VQ=
X-Received: by 2002:a05:6512:313a:b0:503:364d:b93d with SMTP id
 p26-20020a056512313a00b00503364db93dmr4202214lfd.20.1697636971391; Wed, 18
 Oct 2023 06:49:31 -0700 (PDT)
MIME-Version: 1.0
References: <178F37AA9B1F0484.14388@lists.yoctoproject.org>
In-Reply-To: <178F37AA9B1F0484.14388@lists.yoctoproject.org>
From: David PIERRET <david.pierret@smile.fr>
Date: Wed, 18 Oct 2023 15:49:35 +0200
Message-ID: <CADyEP=SdspFb1wrd=L1XTwo75GUQ1W=uB_S2ACrpYANbAQDQzg@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v2] meta-oe-mirror: Use
 a 2 step job to fetch and verify meta-openembedded mirror.
To: david.pierret@smile.fr
Cc: yocto@lists.yoctoproject.org, Yoann Congal <yoann.congal@smile.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 13:49:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61401

Hi,
This patch is v2 for this one :
https://lists.yoctoproject.org/g/yocto/message/61306

Regards
David

On Wed, Oct 18, 2023 at 3:46=E2=80=AFPM David Pierret via
lists.yoctoproject.org <david.pierret=3Dsmile.fr@lists.yoctoproject.org>
wrote:
>
> Inspired from trigger-build and trigger-build-post-trigger
> The branch must be selected on build configuration.
>
> Signed-off-by: David Pierret <david.pierret@smile.fr>
> Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
> ---
>  config.json | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
>
> diff --git a/config.json b/config.json
> index 3acb710..9e6779f 100644
> --- a/config.json
> +++ b/config.json
> @@ -1420,6 +1420,36 @@
>                  "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSDIR=
}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
>              ]
>          },
> +        "meta-oe-mirror" : {
> +            "SDKMACHINE" : "x86_64",
> +            "MACHINE" : "qemux86-64",
> +            "NEEDREPOS" : ["poky", "meta-openembedded"],
> +            "ADDLAYER" : [
> +                "${BUILDDIR}/../meta-selftest",
> +
> +                "${BUILDDIR}/../meta-openembedded/meta-oe",
> +                "${BUILDDIR}/../meta-openembedded/meta-python",
> +                "${BUILDDIR}/../meta-openembedded/meta-perl",
> +                "${BUILDDIR}/../meta-openembedded/meta-networking",
> +                "${BUILDDIR}/../meta-openembedded/meta-multimedia",
> +                "${BUILDDIR}/../meta-openembedded/meta-gnome",
> +                "${BUILDDIR}/../meta-openembedded/meta-xfce",
> +                "${BUILDDIR}/../meta-openembedded/meta-filesystems",
> +                "${BUILDDIR}/../meta-openembedded/meta-initramfs",
> +                "${BUILDDIR}/../meta-openembedded/meta-webserver"
> +            ],
> +            "step1" : {
> +                "shortname" : "Sources pre-fetching",
> +                "BBTARGETS" : "universe -c fetch -k",
> +                "extravars" : [
> +                    "SOURCE_MIRROR_FETCH =3D '1'"
> +                ]
> +            },
> +            "step2" : {
> +                    "shortname" : "Source Mirror Selftest",
> +                    "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=3D:1=
 oe-selftest -r buildoptions.SourceMirroring.test_yocto_source_mirror"],
> +            }
> +        },
>          "a-quick" : {
>              "TEMPLATE" : "trigger-build"
>          },
> --
> 2.39.2
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61400): https://lists.yoctoproject.org/g/yocto/messag=
e/61400
> Mute This Topic: https://lists.yoctoproject.org/mt/102039136/7911180
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [david.pierret@=
smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

