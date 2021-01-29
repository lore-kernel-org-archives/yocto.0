Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
 by mx.groups.io with SMTP id smtpd.web09.1179.1611949687083427632
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jan 2021 11:48:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tzVUd1p0;
 spf=pass (domain: gmail.com, ip: 209.85.167.182, mailfrom: geissonator@gmail.com)
Received: by mail-oi1-f182.google.com with SMTP id d18so11164358oic.3
        for <yocto@lists.yoctoproject.org>; Fri, 29 Jan 2021 11:48:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=B3UHV7GPDqpp3KzbmVLooMq0N+FyIItV0Fcuj5AJvvs=;
        b=tzVUd1p0ovyV+7v8pmxbcXgr3yfKubv3rjpY0sTMKwOWJYIretHQy+FnsHMR+5SHBK
         YzdNnF+8lZUHt4ULQx/4XyJwFPv4jfLrW/7CzdLKeGmrDJewd4py3uR6i3/iKmBZT1D6
         /qkeZauKF14l33kRVxhhU//Qk1YYYfq5hQNGXxk4p6rFoAgVegiO+fnb+wOx5CZsyIrp
         wsXjfbI6AJ5mQnKtdfWIib9uFPMUgFwuFODScHZK41Qghm8p0m9GXALG2E1hx2rUFPgo
         Yw+XiG+w5yogrASQen45t4Laoz8Vk5olDypHhSFlux95OWVMJA29Ej11QFCOG1qHSp/o
         PutA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=B3UHV7GPDqpp3KzbmVLooMq0N+FyIItV0Fcuj5AJvvs=;
        b=PDY9pWVaH9t1TMtBRh4RfnBLsMIIutuQQgoLvsH7t419IanJyqJfIWAQ9nlJwaujdd
         74cQNw16gjDi2NPPn1fInML1fLV61x4kqGXhtKT6paOtQukD2XcEJQny9VZ8gCbGhJ2m
         jGn8nS5pY3KtyfpcCCaEn9VurWtvVB5pMlO7eT9G5EbBFcMf6KQXKHsupkd1nucbhagd
         m5Gl7PLydo6EUEQrJeXluU+GZXRkPTQKq+hWS+dK6/khwVszRh/6Yx7mYWBO8MdfzwAl
         +pyhkzo6sLMkxTZpTci6+wql8a/48Z5ZulD8x48LSz8DG+CSjYkzZGZfmVc9LzFg9kL8
         U8pw==
X-Gm-Message-State: AOAM530AJG6h16RkKtyTOcPXy11m2sk7MFaqv+U/HmEPk1FIleN69ntg
	e8/eu/O7D0vhqd3iGfARc4k=
X-Google-Smtp-Source: ABdhPJzXSyELOsoo5q4tpGVU5vjZBMyOEzbMFn6H1OxrSy8hnBOC6JGrXW5nm2gWw7C5XPpUq3dpCQ==
X-Received: by 2002:aca:3ac4:: with SMTP id h187mr3529902oia.65.1611949686401;
        Fri, 29 Jan 2021 11:48:06 -0800 (PST)
Return-Path: <geissonator@gmail.com>
Received: from andrews-mbp-2.attlocal.net ([2600:1700:19e0:3310:80b2:2800:f09f:9197])
        by smtp.gmail.com with ESMTPSA id d17sm2319169otk.3.2021.01.29.11.48.05
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 11:48:05 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.40.0.2.32\))
Subject: Re: [yocto] SDKMACHINE and ppc64le issue with latest head?
From: "Andrew Geissler" <geissonator@gmail.com>
In-Reply-To: <5d089dd1170dd222ce863914cb8ac95b4b4461e2.camel@linuxfoundation.org>
Date: Fri, 29 Jan 2021 13:48:04 -0600
Cc: yocto@lists.yoctoproject.org
Message-Id: <0332E332-9E9F-43A8-8022-59586B240F01@gmail.com>
References: <a5d20604428c2581ee69977d9c0221e2e5b2d01f.camel@linuxfoundation.org>
 <25512.1611938435690182276@lists.yoctoproject.org>
 <5d089dd1170dd222ce863914cb8ac95b4b4461e2.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.3654.40.0.2.32)
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable



> On Jan 29, 2021, at 10:54 AM, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:
>=20
> On Fri, 2021-01-29 at 08:40 -0800, Andrew Geissler wrote:
>>> What was SDKMACHINE set to before?
>>=20
>> Hey Richard, thanks for the quick response.=20
>>=20
>> We did not have it set. It looks like this recent commit is what
>> changed things on us:
>>=20
>> commit c74ec1dd7393b9dc7bec1a3ca2ed0a56fb18d8fb
>> Author: Ross Burton <ross@burtonini.com>
>> Date:   Tue Dec 22 17:23:14 2020 +0000
>>=20
>>     bitbake.conf: default SDKMACHINE to the build host architecture
>>=20
>>=20
>> Looks like I need to submit a patch to y'all to add a ppc64le.conf to
>> conf/machine-sdk/?
>=20
> That would likely avoid the failures you're seeing, yes.
>=20
> I really wish we had better support for ppc64le both for hosts and
> targets and had people actively involved/maintaining the ppc support,
> its in need of massive modernisation particularly on the target side.

Darn, I tried just adding this:

cat meta/conf/machine-sdk/ppc64le.conf

SDK_ARCH =3D "ppc64le"
ABIEXTENSION_class-nativesdk =3D ""

I get further but then hit a bunch of fails like this:

ERROR: =
/home/andrewg/Code/openbmc/meta/recipes-devtools/meson/nativesdk-meson_0.5=
6.0.bb: Unable to determine endianness for architecture '${SDK_ARCH}'
ERROR: =
/home/andrewg/Code/openbmc/meta/recipes-devtools/meson/nativesdk-meson_0.5=
6.0.bb: Please add your architecture to siteinfo.bbclass
ERROR: Failed to parse recipe: =
/home/andrewg/Code/openbmc/meta/recipes-devtools/meson/nativesdk-meson_0.5=
6.0.bb
ERROR: =
/home/andrewg/Code/openbmc/meta/recipes-graphics/xorg-lib/libxext_1.3.4.bb=
: Unable to determine endianness for architecture '${SDK_ARCH}'
ERROR: =
/home/andrewg/Code/openbmc/meta/recipes-graphics/xorg-lib/libxext_1.3.4.bb=
: Please add your architecture to siteinfo.bbclass
=E2=80=A6

I=E2=80=99m did some grepping around but don=E2=80=99t see anything =
obvious. Why is it not
finding the SDK_ARCH I=E2=80=99ve set in the new conf file?

Wondering if I should just go with my first workaround and set =
SDKMACHINE=3Dx86_64.=20
Apparently using that default in the past hasn=E2=80=99t affected our =
use cases.


> Cheers,
>=20
> Richard
>=20
>=20

