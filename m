Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4348BC61DA3
	for <webhook@archiver.kernel.org>; Tue, 21 Feb 2023 10:01:36 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web11.39094.1676973693440261813
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Feb 2023 02:01:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Hwsv48ON;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id i9so4802964lfc.6
        for <yocto@lists.yoctoproject.org>; Tue, 21 Feb 2023 02:01:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j6RqWG8m4p4colL9V/GZ0Qt+r+mt3+ZyQxPFFOB1V7I=;
        b=Hwsv48ONqRf4wH43XbRON7GF/bd+IGpQYQ2+rbw+3CHG5FpRZuavMnH0hoNkGu4Zv4
         SIXzuwQHxZEZj4p852QzbI3mWgkguUcHisIde0M6RlehvnJwS0b2wQwMeOLdxnMMcuI7
         0TSzZwIE2IZzL5Uthte72mC7KEEn09Kbe6nbH+pyPtImNl43UtLNAndmgKAl+jhX3PVW
         BBI+DOqwYzVaH+/L2nhL38QZqBq571/07YhdHYhtDy8cjjyaj7KaLUqaD1EsIcXswA5B
         EPHh488dHZHcSb+BIeATK0z95fE4TQ2G+G84Hid3ggt8Mj+yEoZmSRDaT+hgYrSWE6ZO
         EaIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j6RqWG8m4p4colL9V/GZ0Qt+r+mt3+ZyQxPFFOB1V7I=;
        b=2Vk1TMJbgeMYpyGwAI1e1PbdE6IklL+158THNaTgqqjkxuxV8MXAmGKPDle3wmMx3Y
         m9ydb1KR+nxEvl9dPIAZRF+gAwSN50HjV4lZtaFhTRVDErHS+TVV9jSHgwDqNLUwkZTZ
         HLBLGugHUtR76/pR/riRYcFdNSjLyeh4gXdVdZkSGIxBSGaqnkV9NrZjFNP7AmmjEIwq
         /2hM6CG++hFz2fiuMt5ySIzQQY3LrD7sfV9eZGp5JhZ4flyx0DFNNdM8GydNXHMJdnoT
         gCulKgRTTdbygXiCj8RjH8SBCuGuIjm4kMxnG8QBbZtC6KiMUxrxlWD474u/vpFKBeZc
         Gl+A==
X-Gm-Message-State: AO0yUKV0I70cqi30Cp9KW8M98YkhlUQZMbAoqskYohscgrplu9IjoEAG
	gDa3sM99gryq7O5eKXx9z3xyvTjTou94AXsyTJY=
X-Google-Smtp-Source: AK7set/ldpP7e8UUbC90VT8OaEpOHIkZQusQ3u9/arLQ7hTAteSKdWzxtkAJMgZWzu9EZuEbrXJ4jgNxrcwbSLlufEA=
X-Received: by 2002:a05:6512:208:b0:4d5:ca32:9bdf with SMTP id
 a8-20020a056512020800b004d5ca329bdfmr1587348lfo.11.1676973691412; Tue, 21 Feb
 2023 02:01:31 -0800 (PST)
MIME-Version: 1.0
References: <CAOYqR5ZAmLrvWZLXHouTkX-OnJeBG_O9a5HfGndwkfMKxUzppg@mail.gmail.com>
In-Reply-To: <CAOYqR5ZAmLrvWZLXHouTkX-OnJeBG_O9a5HfGndwkfMKxUzppg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 21 Feb 2023 11:01:20 +0100
Message-ID: <CANNYZj-j-TpSvrR5iLBVVz0vvOBdVEwBRhcbjoKvR5=-mSwuZg@mail.gmail.com>
Subject: Re: [yocto] ERROR: Nothing RPROVIDES 'python-compiler'
To: Murali Krishna <mkn20679@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Feb 2023 10:01:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59266

python-compiler is an obsolete module from python 2.x era and isn't
available with 3.x. You can probably remove it from the image
altogether:
https://python.readthedocs.io/en/v2.7.2/library/compiler.html

Alex

On Tue, 21 Feb 2023 at 10:52, Murali Krishna <mkn20679@gmail.com> wrote:
>
> Hi Team Yocto,
>
> Greetings Of the Day.
>
>
> i would like to build YOCTO Image for My Target Machine i.e.,Kontron Smar=
c-Samx6i. The following link will provide complete information about my Tar=
get Machine.
> https://www.kontron.com/en/products/smarc-samx6i/p89810.
>
> So here I have,
> --> BSP for My Target Machine
> (successfully built yocto image in ubuntu14 and yocto-release is yocto-py=
ro).
>
> Now I want to migrate this BSP into the Dunfell Version.
> 1.Created layer using bitbake
> 2.copied recipes from pyro layer
> 3. start with bitbake build Engine as bitbake-layers show-layers.(my bsp =
layer added)
> 4.started to build yocto Image as bitbake kontron-eval-image then an erro=
r arose.
> .........................................................................=
...........................................................................=
.......................
> murali@ubuntu:~/test/track_build$ bitbake kontron-eval-image
> Loading cache: 100% |####################################################=
###########################################################################=
########################################| Time: 0:00:00
> Loaded 3775 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'python-compiler' (but /home/murali/test/sources=
/meta-boundary/recipes-sato/images/kontron-eval-image.bb RDEPENDS on or oth=
erwise requires it)
> NOTE: Runtime target 'python-compiler' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['python-compiler']
> ERROR: Required build target 'kontron-eval-image' has no buildable provid=
ers.
> Missing or unbuildable dependency chain was: ['kontron-eval-image', 'pyth=
on-compiler']
>
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
> .........................................................................=
...........................................................................=
...........................................................................=
..................................................................
> i attached image recipe.
>
> How to solve the above error?
>
> Thanks and Regards
> Murali
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59265): https://lists.yoctoproject.org/g/yocto/messag=
e/59265
> Mute This Topic: https://lists.yoctoproject.org/mt/97105685/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

