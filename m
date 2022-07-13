Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EB4AC43334
	for <webhook@archiver.kernel.org>; Wed, 13 Jul 2022 15:15:47 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
 [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web08.23198.1657725346589503479
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 08:15:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lD/V9pZL;
 spf=pass (domain: gmail.com, ip: 209.85.160.172,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id ck6so12056535qtb.7
        for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 08:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=amtmMknc9p4qxl26jAxGrdPBd43r/ni+cUv9Kjgxxvg=;
        b=lD/V9pZLhw3/+AWSffQGH7NxYdPxcGwkCEEWWRdC0LfE7uWuP2tgRi8ee0J7rp8HEc
         U573NIAmOC8/XuRr/W9/9riHfZzYQMaqFW8xyB1ryPPnNOXM/dNO2u76jDAz+ODKDtAh
         f4IhcF263SaIfoz8HQQiMiG5XbS80JqBjRlf0S3RQ2KKdHsU92I/RmuSgKQArR27cXp7
         jo8d+aCz8KWgMYxI+u6Cwej5S/O9FV24OJILqEPmx+LiCG9s8gG8ij8ysvxMpeXBmdAr
         CuEIVOY3/mOi+9R2XjOGyC2/zMmEdzPkd8T2TBquV1jpUZxg/w004BJpfmLC7s6jO3Bh
         /sHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=amtmMknc9p4qxl26jAxGrdPBd43r/ni+cUv9Kjgxxvg=;
        b=Gf38H/M+aHkCmefkqquBr7kqsjrEXsjePgWq2GOljLx+H4/tc/uNu0anTqgnnCjBE1
         PZoGY1KfdXVe5eQcu3CKcncxNCf/TjHh6DfrfvWNw0EnBzk9ioGbUBfXSJ7PL99NPpSo
         nhDucxpsLWK2UlkcG6nAfcEMhae55F/fv9U9PbmqTFqHFoMK8ypL6X5Bd6tviQZpIpaJ
         VkfFusTN/q2w+lAZko9XXTHXQmZ+3/ARCdy1DGNedE0d0nn5QeBw6jCjSC/W2KwxEvCm
         jmTRK3Y02vMvSCZ9eAmU9ZlQqEbo0eUYC2yEr4Py5B72VFtbbsxfU6U2L2lm7T0XiEp2
         QhGg==
X-Gm-Message-State: AJIora/e+qbYPkjgszMM6qQ6EPGONSm7NIFpBB0V+uVH5Ze2JzEytK7v
	mdFgO8ajSe9GKJngPyTLYG0SSyeF1hloxv/kxgY=
X-Google-Smtp-Source: 
 AGRyM1vhBdQmawYPosflO9V1V5fieMtLsOockAm4528HuuZMLWewOqfRLcMcAZwvTE2hKM0l+zCDZhq+vvPFmuC5Y8M=
X-Received: by 2002:a05:622a:1005:b0:31d:3a51:ead7 with SMTP id
 d5-20020a05622a100500b0031d3a51ead7mr3483159qte.634.1657725345486; Wed, 13
 Jul 2022 08:15:45 -0700 (PDT)
MIME-Version: 1.0
References: <WNRU.1657719600812851842.KCIA@lists.yoctoproject.org>
 <1BA9E2F3-5FFA-40FD-B887-FF99DDF80108@arm.com>
In-Reply-To: <1BA9E2F3-5FFA-40FD-B887-FF99DDF80108@arm.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 13 Jul 2022 16:15:19 +0100
Message-ID: 
 <CAMKF1spTx5XeoRokej-0NPW4_f_HpdMagj=PFUsUeFgRv98Q5g@mail.gmail.com>
Subject: Re: [yocto] How to get name of output packages during build #yocto
 #bitbake
To: Ross Burton <ross.burton@arm.com>
Cc: "simonblack.it@yahoo.com" <simonblack.it@yahoo.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Jul 2022 15:15:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57526

On Wed, Jul 13, 2022 at 4:12 PM Ross Burton <ross.burton@arm.com> wrote:
>
> On 13 Jul 2022, at 14:40, simonblack.it via lists.yoctoproject.org <simon=
black.it=3Dyahoo.com@lists.yoctoproject.org> wrote:
> > Does yocto store all packages name that will be built from a recipe in =
a variable?
>
> That *will* be built, no.
>
> PACKAGES contains the packages which *can* be built, but also the do_pack=
age can create more.  For example, it=E2=80=99s possible for a package whic=
h builds 20 plugins to dynamically create a package-per-plugin instead of t=
he list being hardcoded.
>
> If you want to know what packages a recipe created then you can use pkgda=
ta.  There is a tool to examine it:
>
> $ oe-pkgdata-util list-pkgs =E2=80=94recipe glibc
> glibc
> glibc-dbg
> glibc-dev
> glibc-doc
> glibc-extra-nss
> glibc-pcprofile
> glibc-src
> glibc-staticdev
> glibc-thread-db
> glibc-utils
> ldconfig
> ldd
> ldso
> libmemusage
> libnss-db
> libsotruss
> malloc-debug
> nscd
> sln
> tzcode

this is nice. I mistook it for the dependencies

