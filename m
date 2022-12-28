Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7915AC3DA7C
	for <webhook@archiver.kernel.org>; Wed, 28 Dec 2022 11:42:24 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web11.179768.1672227736691275486
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Dec 2022 03:42:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=FJWzJNKI;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id m26-20020a05600c3b1a00b003d9811fcaafso4572218wms.5
        for <yocto@lists.yoctoproject.org>; Wed, 28 Dec 2022 03:42:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nsVqNpoz9C3M5szMK75Jqax5fkOX72wtgQ6gXzbO84c=;
        b=FJWzJNKIvFnq487lU1YhQTRQPAIodvEvuRrzSN3bu3WxMZFPYPVHOuWN1YcmdwvFys
         oYe3tuetgeuvaOGVCCyySRkgepWtKcc37Hvz5lPsVM1w8M2UdUCjuZ3Gf4wy+WwJBY1s
         BU7DbbgkxnKL/rs4jywYhuMSDxF0pecamOoFo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nsVqNpoz9C3M5szMK75Jqax5fkOX72wtgQ6gXzbO84c=;
        b=hNwcuYWVx9nUzCFnt6t1sMT18lzNin0Lm+EUvZd9Ynh/+Fye8nyzX9UjBzDTeBKdEN
         gIR0g6MLQ34aSR+gwwHvGbPQiHbSdvjwR54RVfPkkgjspUDQw/t91fRzghEfBxPeQk/0
         o5EqgD2BN4DMx+ocTpJEE38ssD54WFCflNslxWOnIQokMqldG474a3TFdRLeKWiIW8ql
         9ipcRquqXBF2PMGJ9m7k6S8p/EqLRXH1iF3EUFKHatR/dMxOdiLOM+UUYTTYu6yJUMU/
         5p5vZy9gfh3iiSp8+Be/24u/HFsIQEBu/zEIXnQc/PVJmp0JU+amYSxFM/pZjrnxdpmO
         beHQ==
X-Gm-Message-State: AFqh2koOhareseKYOd4JJwisary/E4aKC+oVxIEbqusSwwa26QZRN68w
	JeeuhcFjDtjaHcQjiF7Zyg5Vsw==
X-Google-Smtp-Source: AMrXdXt5Ppo+81tvfeudKgaEhDAslgnNpG2M0LaoE8tvwzT9CRKokUzsGBT9CdigWwlM5FusjDpmvg==
X-Received: by 2002:a05:600c:4312:b0:3d7:9ae7:e4e8 with SMTP id p18-20020a05600c431200b003d79ae7e4e8mr17692900wme.13.1672227735010;
        Wed, 28 Dec 2022 03:42:15 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:9a6e:7039:ab68:1e0d? ([2001:8b0:aba:5f3c:9a6e:7039:ab68:1e0d])
        by smtp.gmail.com with ESMTPSA id m22-20020a05600c4f5600b003d995a704fdsm1771810wmq.33.2022.12.28.03.42.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Dec 2022 03:42:14 -0800 (PST)
Message-ID: <bbecbeeb0710b22a9fcadf09188c948eac538475.camel@linuxfoundation.org>
Subject: Re: [yocto] recipe won't build, missing pseudo
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mistyron <ron.eggler@mistywest.com>, yocto@lists.yoctoproject.org
Date: Wed, 28 Dec 2022 11:42:13 +0000
In-Reply-To: <c8e02a83-0061-d3f2-6c60-1ca836719836@mistywest.com>
References: <c8e02a83-0061-d3f2-6c60-1ca836719836@mistywest.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Dec 2022 11:42:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58879

On Mon, 2022-12-26 at 18:54 -0800, Mistyron wrote:
> Hi,
>=20
> I'm want to write a recipe to compile phytool but I'm getting the below=
=20
> error when building it with:
> $ bitbake -b phytool_2.0
> ERROR: Failed to spawn fakeroot worker to run=20
> /home/yocto/rzg_vlp_v3.0.0/build/../meta-mistysom/recipes-bringup/phytool=
/phytool_2.0.bb:do_install:=20
> [Errno 2] No such file or directory:=20
> '/home/yocto/rzg_vlp_v3.0.0/build/tmp/sysroots-components/x86_64/pseudo-n=
ative/usr/bin/pseudo'
>=20
> my bb file looks like:
>=20
> [phytool_2.0.bb]
> DESCRIPTION =3D "Recipe builds phytool utility"
> # Needs to be changed to GPLv2
> LICENSE =3D "MIT"
> SRC_URI =3D "git://github.com/MistySOM/phytool.git"
> SRCREV =3D "8882328c08ba2efb13c049812098f1d0cb8adf0c"
> LIC_FILES_CHKSUM =3D=20
> "file://../git/LICENSE;md5=3D39bba7d2cf0ba1036f2a6e2be52fe3f0"
> INHERIT +=3D " pseudo"
>=20
> python do_display_banner() {
>  =C2=A0=C2=A0=C2=A0 bb.plain("some message")
> }
>=20
> addtask display_banner before do_build
> [/phytool_2.0.bb]
>=20
> It appears like my INHERIT line does not satsify the requirement.
> How can I resolve this?

There is no class called "pseudo" so the inherit line is wrong. Why do
you think you need to inherit such a class?

Pseudo is usually used by tasks as needed by default.

Cheers,

Richard

