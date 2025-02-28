Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FAEEC282C5
	for <webhook@archiver.kernel.org>; Fri, 28 Feb 2025 04:07:06 +0000 (UTC)
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
 by mx.groups.io with SMTP id smtpd.web11.8533.1740715624798628282
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Feb 2025 20:07:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kejwuYsc;
 spf=pass (domain: gmail.com, ip: 209.85.160.42, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-2c11ddc865eso493931fac.3
        for <yocto@lists.yoctoproject.org>; Thu, 27 Feb 2025 20:07:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740715624; x=1741320424; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lgmALKliOGHFwWwQOsmG+hL+WMqHe6vxJjO4wbch0gY=;
        b=kejwuYscrFBId8sYK7HDLVWtP4XOhESe2MUmSB/Noo/GUopRQWo1tsU1KE4LjN26zb
         flcER3xK43bzON1JMUTYkcunfIQb2UHuNOI3DMfWZTxuI8xZv3AOicGnr/J4ZROUWG++
         uzhZziq4C25b+hvV/ZUL2gUQYoXC9lDGId9y7I688Pw9zUq6ao2FBVAetNqD3HooUVI5
         oKTj2ZPftkTL/Le/hcvqRtkCd/37sV89DIP8UCabUTtrM9r2Iq213ng9k6d6Q3kz3vjG
         /TPxc0JlxJmIsAw3svkwaK90vUvp5fTbFvw+njszBALoDpJwFWXGsEyOgCtHiRceT6eo
         +wsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740715624; x=1741320424;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lgmALKliOGHFwWwQOsmG+hL+WMqHe6vxJjO4wbch0gY=;
        b=ErY4tf15Kg99y5BuuSE/V4JELuGoPLAPratC9u+o9TBcwRmpx9XcGwHETvx2C1Ph3P
         46Z/PJZEUfxM/6hP9tZelrwLLTDZ18BsO0FU2jsTzc2D5iGY77JXhoElArTw9+ygMrIJ
         KO76pJA0QQPZ2LUa9nm02TTZUb3KDvtG7fBZUSNsShVih5FQJ1WDLxRxJGTmWOJMBSI9
         9HkdORwrizEM08PHko1Oe472fLELgJDe7EgHwX5M8XgPsuvJhq/3RChpCdjOFumfJ0xT
         MaBl2pcKAh3wx4ixKWmQc3RsLvYe/d+4dodqtsvxfx2B2fTRY5SzMLYhMK2I3jc04dVm
         5ynw==
X-Gm-Message-State: AOJu0YwJCyQmqullrD1PG5cF9rol108r9BqiWrsRLZvI+6GH+6KGDCX/
	FnoDxC0nNe8y5DKCCpjnkOmeMHn0GMpRZz1818GQ0CA34+rIsPPWeaEq84yZAGZCnrxRY0nCdXY
	2yD0mrCvkae77icZ4bDQG+VV4goga6xTGo2k=
X-Gm-Gg: ASbGncuhV/mt2dhdkPMtwOPre4TZf5iUJwcaJK5a3V2lQZDn/nWqAAuEYJQKh/EG6UT
	UexFAE9iypLwuk4VWTktma/RYNgJh+GUgezSTw1/1ZpPJS6UcYQFUa7rl6Vh69vKfajpkO0Zyy9
	/xjgTO+A==
X-Google-Smtp-Source: AGHT+IErWObcHixY1lCdr1GAvIf9Io9htW8FaTek5C9w5EAkt46slEiOL6u0gTqXA7vLfxUlttJffdKpUQUVuE3NOvo=
X-Received: by 2002:a05:6870:7025:b0:29e:290f:7aea with SMTP id
 586e51a60fabf-2c1787baa29mr994017fac.34.1740715623761; Thu, 27 Feb 2025
 20:07:03 -0800 (PST)
MIME-Version: 1.0
References: <ULf5.1740714416323187991.vYPQ@lists.yoctoproject.org>
In-Reply-To: <ULf5.1740714416323187991.vYPQ@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 27 Feb 2025 20:06:37 -0800
X-Gm-Features: AQ5f1JpPQEDxr0tkYXffaii-kcxyy4QH9B2jxCY07XBZydAO3NYUFRMRJ40lXuo
Message-ID: <CAMKF1sp1QeYA_ZzzmtJNM17Vv2W4DAxXDUghh0YLe-BGyKFx+g@mail.gmail.com>
Subject: Re: [yocto] devtool error on "modify" with patches
To: yocto@lists.yoctoproject.org, ccasciato@21sw.us
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Feb 2025 04:07:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64891

On Thu, Feb 27, 2025 at 7:46=E2=80=AFPM Clayton Casciato via
lists.yoctoproject.org <ccasciato=3D21sw.us@lists.yoctoproject.org>
wrote:
>
> I have not had success using devtool against recipes with existing patche=
s.
> I do not have any modifications to these recipes and they patch and build=
 fine using bitbake.
>
> --
>
> poky$ devtool modify iproute2
> [...]
> ERROR: Execution of 'git -c user.name=3D\"OpenEmbedded\" -c user.email=3D=
\"oe.patch@oe\" commit -q -m "Initial commit from upstream at version 6.13.=
0"' failed with exit code 128:
> error: cannot run ssh-keygen: No such file or directory
> error:
> fatal: failed to write commit object
>
> ERROR: Logfile of failure stored in: [...]/poky/build/tmp/work/cortexa8hf=
-neon-poky-linux-gnueabi/iproute2/6.13.0/devtooltmp-jshbjja1/temp/log.do_un=
pack.1777032
>
> --
>
> The logfile does not exist:
>
> poky$ ls [...]/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/ipr=
oute2/6.13.0/
> configure.sstate  debugsources.list  deploy-rpms  deploy-source-date-epoc=
h  image  iproute2-6.13.0  iproute2.spec  license-destdir  package  package=
s-split  pkgdata  pkgdata-pdata-input  pkgdata-sysroot  pseudo  recipe-sysr=
oot  recipe-sysroot-native  source-date-epoch  sources-unpack  spdx  sysroo=
t-destdir  temp
>
> --
>
> When using --debug, I see this:
>
> [...]
> | DEBUG: Python function devtool_post_unpack finished
> ERROR: Extracting source for iproute2 failed
>
> --
>
> Any suggestions?

It seems your git is. configured to use ssh, maybe use HTTPS instead
of SSH in git or set
or maybe install openssh-client package in your machine which should
provide ssh-keygen, make sure the path
it resides in is in PATH

>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64890): https://lists.yoctoproject.org/g/yocto/messag=
e/64890
> Mute This Topic: https://lists.yoctoproject.org/mt/111429046/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

