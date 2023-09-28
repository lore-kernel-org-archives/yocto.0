Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB2BFE732EA
	for <webhook@archiver.kernel.org>; Thu, 28 Sep 2023 16:33:48 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web11.18044.1695918823865222147
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Sep 2023 09:33:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=fQPH+i3H;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-405505b07dfso68803885e9.0
        for <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 09:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1695918822; x=1696523622; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fkWu6wF+Dl1v7nHMxf1Dw2E8LBo8o/roF5d8nX3kmjc=;
        b=fQPH+i3H4HQ5OmUh8a4b9EVGvR4cNNu/wE78ozD7sehtYy6OxsYLSeyjKxZzOC1zYu
         R/hI7Og0xgxoVn/2KGpcqtT6m7hUfYvLA7YHlq/GlQe5tRZ1ka46x0acdbn+3A9uc97y
         IeAGqD0ay1EP24Lxt5fxlW8M4JE4aBLAS+zok=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695918822; x=1696523622;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fkWu6wF+Dl1v7nHMxf1Dw2E8LBo8o/roF5d8nX3kmjc=;
        b=YljcA3kdwkN8p+z9c82uYTAL5QsbNSG0TP2skBveEIosJdaZh/0AFYsiHVB5jvzDZh
         9/WEhERC6AaqPlle42YPB48fKJadNT45G3988AJHV6UKoHKp5/DGL0ZDjt9Z7UzLu4tb
         TYLUsz/pKQpJcq2g9Z86LnDk4dANI35Lf6aEm7/Snrd3Jld7OOtHWgPLcdWMcWfSTS3p
         vMJZ27oYrGsbNWQv3LKK/oruqx1u2zwPKlm4BISj8tl8OT/irZAuhdnSugpPfbpx6IWh
         fWFblmY7svqND63v5evsSXJun0aTSOBPwU1oNCV8kYX60rYNz3u7Jbo/Pot2wZx1NWMY
         2ZmQ==
X-Gm-Message-State: AOJu0YzytJ+xZg1ovZ33nig4x8Qfx6fOXQfZ4p1s7t4JexubB+oM9hv2
	upJhlus9enfSNfaOGaF1TcO2NA==
X-Google-Smtp-Source: AGHT+IENcNMXH2edo7LKp01ncMwjcl4CDokhSMs5JCwc2m6XTZ8ySL1IoGLbraDVXiPsTS7Jf+tOJg==
X-Received: by 2002:a5d:470b:0:b0:318:416:a56a with SMTP id y11-20020a5d470b000000b003180416a56amr1904775wrq.13.1695918822091;
        Thu, 28 Sep 2023 09:33:42 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:259f:7d13:e5a1:bb93? ([2001:8b0:aba:5f3c:259f:7d13:e5a1:bb93])
        by smtp.gmail.com with ESMTPSA id y5-20020adfee05000000b003250aec5e97sm272875wrn.4.2023.09.28.09.33.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 09:33:41 -0700 (PDT)
Message-ID: <02730bd34292b49a537e1982751790d4a7a0c7a7.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH][yocto-autobuilder-helper] config.json: add
 reproducible-openembedded build
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Fabien Thomas <fabien.thomas@smile.fr>, yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Date: Thu, 28 Sep 2023 17:33:40 +0100
In-Reply-To: <20230928131836.137286-1-fabien.thomas@smile.fr>
References: <20230928131836.137286-1-fabien.thomas@smile.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 16:33:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61155

On Thu, 2023-09-28 at 15:18 +0200, Fabien Thomas wrote:
> The purpose of this new build is to report the reproducibility status of
> all meta-openembedded recipes. It use the same reproducible selftest than
> OE-Core but setting only world as target, and excluding all oecore recipe=
s
> from it. Also, the report output directory for meta-openembedded is
> separate from oecore's one.
>=20
> Signed-off-by: Fabien Thomas <fabien.thomas@smile.fr>
> Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
> ---
>  config.json | 31 +++++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)

This is a good start, thanks!

> diff --git a/config.json b/config.json
> index 05c6794..fde1b1f 100644
> --- a/config.json
> +++ b/config.json
> @@ -264,6 +264,34 @@
> =20
>              }
>          },
> +        "reproducible-openembedded" : {

We should call this something like reproducible-meta-oe since we need
to be clear this is meta-oe related.

> +            "MACHINE" : "qemux86-64",
> +            "SDKMACHINE" : "x86_64",
> +            "DISTRO" : "None",
> +            "NEEDREPOS" : ["oecore", "bitbake", "meta-openembedded"],
> +            "extravars" : [
> +                "EXCLUDE_FROM_WORLD:layer-core =3D '1'",
> +                "EXCLUDE_FROM_WORLD:layer-selftest =3D '1'",
> +                "OEQA_REPRODUCIBLE_TEST_TARGET =3D 'world'"

I like the use of the layer override :)

> +            ],
> +            "step1" : {
> +                "shortname" : "Reproducible Selftest for openembedded la=
yers",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/ DISPLAY=3D:1 o=
e-selftest -r reproducible"],
> +                "ADDLAYER" : [
> +                    "${BUILDDIR}/../meta-selftest",
> +                    "${BUILDDIR}/../meta-openembedded/meta-filesystems",
> +                    "${BUILDDIR}/../meta-openembedded/meta-gnome",
> +                    "${BUILDDIR}/../meta-openembedded/meta-initramfs",
> +                    "${BUILDDIR}/../meta-openembedded/meta-multimedia",
> +                    "${BUILDDIR}/../meta-openembedded/meta-networking",
> +                    "${BUILDDIR}/../meta-openembedded/meta-oe",
> +                    "${BUILDDIR}/../meta-openembedded/meta-perl",
> +                    "${BUILDDIR}/../meta-openembedded/meta-python",
> +                    "${BUILDDIR}/../meta-openembedded/meta-webserver",
> +                    "${BUILDDIR}/../meta-openembedded/meta-xfce"
> +                ]
> +            }
> +        },

Would it make sense to split this into steps for each sublayer? I guess
the downside is we'd have to code the dependencies but those shouldn't
change very often at this point. It would split the build and results
into more manageable chunks?

>          "trigger-build" : {
>              "SDKMACHINE" : "x86_64",
>              "MACHINE" : "qemux86-64",
> @@ -955,6 +983,9 @@
>          "reproducible" : {
>              "TEMPLATE" : "reproducible"
>          },
> +        "reproducible-openembedded" : {
> +            "TEMPLATE" : "reproducible-openembedded"
> +        },
>          "reproducible-ubuntu" : {
>              "TEMPLATE" : "reproducible"
>          },

Otherwise looks good and definitely the right direction.

Cheers,

Richard


