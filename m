Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BBA6C4332F
	for <webhook@archiver.kernel.org>; Tue, 15 Nov 2022 14:01:57 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web09.5740.1668520914025305775
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Nov 2022 06:01:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Q7XaibkV;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id bs21so24431960wrb.4
        for <yocto@lists.yoctoproject.org>; Tue, 15 Nov 2022 06:01:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Y1jeYeG8rK2LHBZdR/Q/HiQsUUIJtkVM5Dtpdax7Kgw=;
        b=Q7XaibkV+rMYwpmJeZTJU1L/tQLLVcrgXu8+1DFCCo2rxHy9QTWYDDjoktVllK6PHn
         j59fQQsycodhrkLIekrZvYOl17Z/+w8X8zj6XWeQJAphGiLc0KbWo0KBRMoBDuTkzmih
         xYIsrzIGi/7Sb37WzytF86WpDL4TMDb+Rb2Pc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y1jeYeG8rK2LHBZdR/Q/HiQsUUIJtkVM5Dtpdax7Kgw=;
        b=DvkxX+T9SxeAabOJnzoMhJYOYGBWN6cpmP3YFmzZSEmnxnNfJe934OyYNSqavD32AJ
         z33trgi9ArvIyakHqki5MyMzYWjva8FDfEEY8xFkPwkOCTM+48umI86PtKc1BceqxLk5
         cjyye8eKYcTTPqjqQGAdXtIN49K9Yv4VpA++UbkZRNZgydNUfhrTxhXiZL6MDdoBROeW
         DWkQAAVN9xdV4xPkKBibstNDrH+zpxHDHL0806RSBs/j3qwgK//Df90SEMckYaEVe9j0
         VSe+Xk6j6hmk3MyCvtbeFmAxPH8xkAsA3fj7vtJWtCPq4OpGfCtJDSypUTqFUlG8q15I
         gPdw==
X-Gm-Message-State: ANoB5pkmaCshaDq6/R11uIXygScxshMivqNRj2coJOMwICj47IAGqOAf
	ZuqnjPTlwn816ZCygIt1IccglA==
X-Google-Smtp-Source: AA0mqf4eISp3HXCTz0W4eUxwRgflF92Bqu4d0aCbYmCw11KH5PaNDtLTDyQ35H1nOPWl9HaIzMi79Q==
X-Received: by 2002:a05:6000:c8:b0:236:55fd:600a with SMTP id q8-20020a05600000c800b0023655fd600amr10353300wrx.109.1668520912067;
        Tue, 15 Nov 2022 06:01:52 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:2366:5270:892b:cbd3? ([2001:8b0:aba:5f3c:2366:5270:892b:cbd3])
        by smtp.gmail.com with ESMTPSA id h5-20020a1ccc05000000b003cf7292c553sm15281482wmb.13.2022.11.15.06.01.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Nov 2022 06:01:51 -0800 (PST)
Message-ID: <cd8c8bb9eb3ea281350937082791c96aa19921ed.camel@linuxfoundation.org>
Subject: Re: [yocto] sstate mirror file name length issue #dunfell
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Markus Held <mjh42@gmx.de>, yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Date: Tue, 15 Nov 2022 14:01:49 +0000
In-Reply-To: <qaRy.1668514160925569015.gP6R@lists.yoctoproject.org>
References: <qaRy.1668514160925569015.gP6R@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Nov 2022 14:01:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58569

On Tue, 2022-11-15 at 04:09 -0800, Markus Held wrote:
> Hello,
>=20
> I try to use yocto SSTATE_MIRROR with a custom distribution (RDK:
> https://developer.rdkcentral.com/) and enabled yocto multilib
> support.=20
> The sstate directory is created by my build server and published with
> nginx to the developer machines.
> =C2=A0
> Environment:
> Bitbake 1.46.0 / Yocto Dunfell 3.1
> TUNE_PKGARCH =3D =E2=80=9Ccortexa53t2hf-neon-fp-armv8=E2=80=9D
> MULTILIBS =3D "multilib:lib32"
> TARGET_VENDOR=3D"-rdk"
> TARGET_OS=3D"linux"
> =C2=A0
> When a developer configures the sstate mirror in his local.conf:
>=20
> =C2=A0=C2=A0 SSTATE_MIRRORS ?=3D " file://.* http://<build server>/sstate=
-
> cache/PATH;downloadfilename=3DPATH "
>=20
> the build gets stuck on various _setscene tasks and does not
> continue. I did some debugging and the issue is related the with file
> name length of the sstate files. When the developer machine tries to
> download a file from the mirror, bitbake fetch wants to create a
> local lock file with name "<file name>.lock". Example of a sstate
> lock file that fails for me:
>=20
> =C2=A0=C2=A0 sstate:lib32-dibbler:cortexa53t2hf-neon-fp-armv8-rdkmllib32-=
linux-
> gnueabi:1.0.1+1.0.2RC1+gitc4b0ed52e751da7823dd9a36e91f93a6310e5525:r0
> :cortexa53t2hf-neon-fp-
> armv8:3:169be56e277b6922d1cca3f23f6d56033812941a438f09a477cd96999d7d0
> 801_package_qa.tgz.siginfo.lock
>=20
> This lock file cannot be created on a ext file system due the file
> name length > 255. This causes the _setscene task to get stuck
> indefinitely. It seems like most Linux file systems only support file
> names up to 255 bytes.
>=20
> Is there a way to configure or limit the file name length of the
> sstate cache files? Or a way to avoid the issue with the .lock file?=20
>=20

There were changes in bitbake:

https://git.yoctoproject.org/poky/commit/bitbake/lib/bb/utils.py?id=3D273b1=
24bf6acd77b074fde2421be331721a68c11
https://git.yoctoproject.org/poky/commit/bitbake/lib/bb/utils.py?id=3D09e82=
6cfb021731c1b139046665d2d9fa24baa88

There were also sstate class changes:

https://git.yoctoproject.org/poky/commit/meta/classes/sstate.bbclass?id=3Db=
8025e972081b70960ffcbcbe43a7118041556a1
https://git.yoctoproject.org/poky/commit/meta/classes/sstate.bbclass?id=3De=
d4bdd0f9149ba24fac375fd3af8bb2a06423105
https://git.yoctoproject.org/poky/commit/meta/classes/sstate.bbclass?id=3D4=
c6efbf03530b6f60cde59cdef61aa14538753a3

Cheers,

Richard



