Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C140C7EE23
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 20:21:07 +0000 (UTC)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
 by mx.groups.io with SMTP id smtpd.web10.8754.1686169264623121025
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 13:21:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=HcZ8Ifuo;
 spf=pass (domain: gmail.com, ip: 209.85.160.44, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-19f31d6b661so8507436fac.0
        for <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 13:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686169264; x=1688761264;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m40VHznQ0J8TFXt/oKR/3hP4pdHW9xBwS43ifqW8ZUY=;
        b=HcZ8IfuoQ011OvcO0vXCys7CWoJd57+RB52kRZz8/MlE7agLKKqatZaMb2zjklF3kX
         bEX92GLf+IvWf8qpmexrTOTX4SW7FJ5NjwI5Ujp3JKC2imlxj1ET6s++gMTyqJ9tc1vX
         K/Vvly2YxlJ0G6KshYGldpEh6J5W4VHv954d9hbWZcssdW/MbVSnWu8jcvAMg2YwQ2XJ
         ILeHa6lIuookRzZNYs4bo5bNkDjp/Rnk3ULGyOsawXniayFLVw9kY1oKDJc5wRp3jf6u
         k7Tn+aL/WB+HW5eNQI/HfncgeQPFc1eQromY1o4KSpRbaj+KfwbSlu1gpPenn18pmDG7
         jhdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686169264; x=1688761264;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m40VHznQ0J8TFXt/oKR/3hP4pdHW9xBwS43ifqW8ZUY=;
        b=RJVzbQZeVRAADBpVWpUsEIICkplyiUk9OOd1pOTdPE58YItY5k0ROLlRpoHiOcOeG5
         WQFayh2MvuIllKg1pwpOs9BDgxYULPG29R7Wl39RkddibD60czGavHwYtiTjVsb+JYJ2
         h5tZbF15VLNRlX+XWBex8c4PHHGTqrxRLfU8iZbH+H74VFQPRjBwHByZitg2PUfSKe6P
         YNv/OpkoLiEFQQYm/NgBEldZLLye+p9rvTzufjaodKeJphci5gCRHmVlbikdUUcc3gRe
         oM9PttHv7kFC7XXfsyQECUSnK97zqBHxz+Zzp43yGcOyZ7wY3vZxAn9lU92lYPXTH84G
         X9eQ==
X-Gm-Message-State: AC+VfDwwjGTvxwYX+FzeQheJ8viCqXlajllfpCbx3dBZWF0oqmEWUdEf
	1BYNHZ5ANC07Iw9dqHZ/eSRhImdtY9NQu6rO81m4RmF0
X-Google-Smtp-Source: ACHHUZ4xmHKMG4pNqRHaQZAO5c5LBDX3D1Ui1osth3jPOyQLhzKkJM9HAYgfwLO8erpftxTkbjpF0P3faVcp9ML4+oY=
X-Received: by 2002:a05:6870:90c5:b0:196:2c06:2062 with SMTP id
 s5-20020a05687090c500b001962c062062mr5475128oab.50.1686169263666; Wed, 07 Jun
 2023 13:21:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230607192811.601343-1-ross.burton@arm.com> <20230607192811.601343-3-ross.burton@arm.com>
In-Reply-To: <20230607192811.601343-3-ross.burton@arm.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 7 Jun 2023 13:20:37 -0700
Message-ID: <CAMKF1soU3bOTpStctVq=nMk-No0ay0MK1KqxuiDO1sfOrUMdgA@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 3/3] Add meta-clang builders
To: Ross Burton <ross.burton@arm.com>
Cc: yocto@lists.yoctoproject.org, nd@arm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 20:21:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60217

yay thanks for doing it.

On Wed, Jun 7, 2023 at 12:28=E2=80=AFPM Ross Burton <ross.burton@arm.com> w=
rote:
>
> From: Ross Burton <ross.burton@arm.com>
>
> Add a meta-clang builder that runs testimage on core-image-sato-sdk for
> both qemux86-64 and qemuarm64, and add meta-clang to the nightly
> check-layer builder.
>
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
>  config.json | 29 ++++++++++++++++++++++++++++-
>  1 file changed, 28 insertions(+), 1 deletion(-)
>
> diff --git a/config.json b/config.json
> index 92c9443..eb492ee 100644
> --- a/config.json
> +++ b/config.json
> @@ -444,6 +444,24 @@
>                  "BBTARGETS": "aws-iot-device-sdk-cpp-v2"
>              }
>          },
> +        "meta-clang" : {
> +            "NEEDREPOS" : ["poky", "meta-clang"],
> +            "extravars" : [
> +                "TOOLCHAIN =3D 'clang'"
> +            ],
> +            "step1": {
> +                "shortname": "Build for qemux86-64",
> +                "MACHINE": "qemux86-64",
> +                "BBTARGETS": "core-image-sato-sdk",
> +                "SANITYTARGETS" : "core-image-sato-sdk:do_testimage"
> +            },
> +            "step2": {
> +                "shortname": "Build for qemuarm64",
> +                "MACHINE": "qemuarm64",
> +                "BBTARGETS": "core-image-sato-sdk",
> +                "SANITYTARGETS" : "core-image-sato-sdk:do_testimage"
> +            }
> +        },
>         "bringup" : {
>              "SSTATEDIR" : ["SSTATE_DIR ?=3D '${HELPERBUILDDIR}/sstate'"]=
,
>              "TEMPLATE" : "bringup"
> @@ -911,7 +929,7 @@
>              }
>          },
>          "check-layer-nightly" : {
> -            "NEEDREPOS" : ["poky", "meta-agl", "meta-arm", "meta-aws", "=
meta-intel", "meta-ti", "meta-openembedded", "meta-virtualization"],
> +            "NEEDREPOS" : ["poky", "meta-agl", "meta-arm", "meta-aws", "=
meta-intel", "meta-ti", "meta-openembedded", "meta-virtualization", "meta-c=
lang"],
>              "step1" : {
>                  "shortname" : "Test meta-agl YP Compatibility",
>                  "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-agl/me=
ta-agl-core ../meta-agl/meta-netboot ../meta-agl/meta-pipewire --dependency=
 ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-=
openembedded/meta-python --no-auto-dependency"]
> @@ -940,6 +958,10 @@
>              "step7" : {
>                  "shortname" : "Test meta-virtualization YP Compatibility=
",
>                  "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-virtua=
lization --dependency ../meta-openembedded/meta-oe ../meta-openembedded/met=
a-networking ../meta-openembedded/meta-python ../meta-openembedded/meta-fil=
esystems --no-auto-dependency"]
> +            },
> +            "step8" : {
> +                "shortname" : "Test meta-clang YP Compatibility",
> +                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-clang =
--no-auto-dependency"]
>              }
>          },
>          "metrics" : {
> @@ -1272,6 +1294,11 @@
>              "revision" : "HEAD",
>              "no-layer-add" : true
>          },
> +        "meta-clang": {
> +            "url" : "https://github.com/kraj/meta-clang.git",
> +            "branch" : "master",
> +            "revision" : "HEAD"
> +        },
>          "meta-ti" : {
>              "url" : "git://git.yoctoproject.org/meta-ti",
>              "branch" : "master",
> --
> 2.34.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60215): https://lists.yoctoproject.org/g/yocto/messag=
e/60215
> Mute This Topic: https://lists.yoctoproject.org/mt/99392195/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/leave/6692173/1997914=
/1837948400/xyzzy [raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

