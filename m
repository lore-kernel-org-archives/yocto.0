Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12AAFC433FE
	for <webhook@archiver.kernel.org>; Tue, 15 Nov 2022 14:11:47 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web12.5895.1668521505360657013
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Nov 2022 06:11:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=W/ZFyFaQ;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.44, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f44.google.com with SMTP id f18so3301945ejz.5
        for <yocto@lists.yoctoproject.org>; Tue, 15 Nov 2022 06:11:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cFEx2nfMyh7ZdTLBZc/acWRIwVJRGqt59KggsbAeGSM=;
        b=W/ZFyFaQbsFf+byxjYprGhjQWCxXPkq5KakGDobCv2n/UPUbPZQ04fczllRxTRe7oa
         RqU51hptodTY0N5eEj0PkuRZHt7rLWqPqt+YTTTflXrquowXFSPAerid68wUzuZpk4VR
         e2/sMwbiRGyWfmq4ANDAKw/+dglq7dGtNOikIi+61hQysIxkqVUKunkIvJmn8Baag3I3
         kkLHjkYbosoha9yxKvxS6mzz1o7NJpPHfEQW7WBHRq8UWVq2doq0oqguT+iTErAuNpiB
         ktcJN0xbBOPwzuHRLbxyctaNbg6lH/xuBVct245iIcK9KPlrFlEwSZF0KLmETJLvEqIY
         w1kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cFEx2nfMyh7ZdTLBZc/acWRIwVJRGqt59KggsbAeGSM=;
        b=1W8xI0canvqPs3Q9cYaasl9GJcbfdav8HYgZ9ZdnCe0DjZ2OuBiJ/1z/yjs+NREXxC
         dzlmbViDWblujFdrSvShOc4+x8EnRajpTOwKGyn3lgdHAKZT5NKt7S2CXLAw3jMlBuRS
         GTdX51rEFQBJukXjOpKM2r7tjmU0Xj1ZeIOQ/FkVhiKWKbHBXFOOt9ESFbYyisFqsXZP
         ZigWJEC+px0GpFhF0gi87DxqwSFVuih97WOOIspI2P9ULI3DSxLn+tB7z7FASYxn/1Q9
         e7mE8ThkG+0hY3sER1sOfA5trWk3w8+pUTyJV4jnH6a+pgiJ42ect54qG+SekkCPPoiz
         N/tQ==
X-Gm-Message-State: ANoB5pmaE6vFTnNEX5AJVvrpSGycKBHfRyCRfkk7qUzk8e7Q7LKEUguB
	uxCKiZK1YR8BLGCtz1+AvErlipcVHTEGk7d0ynyHog==
X-Google-Smtp-Source: AA0mqf663hXu/a9HOu+ZPgiH3VKj/1VHLjhuP3sWlp40LNpaUuIAg1tovhs1tE05InIcJfLx5Gj6KdbvxrSQNdS5yzU=
X-Received: by 2002:a17:906:960e:b0:781:aff3:c68d with SMTP id
 s14-20020a170906960e00b00781aff3c68dmr14215092ejx.36.1668521503401; Tue, 15
 Nov 2022 06:11:43 -0800 (PST)
MIME-Version: 1.0
References: <qaRy.1668514160925569015.gP6R@lists.yoctoproject.org> <cd8c8bb9eb3ea281350937082791c96aa19921ed.camel@linuxfoundation.org>
In-Reply-To: <cd8c8bb9eb3ea281350937082791c96aa19921ed.camel@linuxfoundation.org>
From: Steve Sakoman <steve@sakoman.com>
Date: Tue, 15 Nov 2022 04:11:31 -1000
Message-ID: <CAOSpxdbHpM95CMRXNTiEXOGxk1b5Qcv4HwbntwA2MMHpy7iV_w@mail.gmail.com>
Subject: Re: [yocto] sstate mirror file name length issue #dunfell
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Markus Held <mjh42@gmx.de>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Nov 2022 14:11:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58570

On Tue, Nov 15, 2022 at 4:01 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Tue, 2022-11-15 at 04:09 -0800, Markus Held wrote:
> > Hello,
> >
> > I try to use yocto SSTATE_MIRROR with a custom distribution (RDK:
> > https://developer.rdkcentral.com/) and enabled yocto multilib
> > support.
> > The sstate directory is created by my build server and published with
> > nginx to the developer machines.
> >
> > Environment:
> > Bitbake 1.46.0 / Yocto Dunfell 3.1
> > TUNE_PKGARCH =3D =E2=80=9Ccortexa53t2hf-neon-fp-armv8=E2=80=9D
> > MULTILIBS =3D "multilib:lib32"
> > TARGET_VENDOR=3D"-rdk"
> > TARGET_OS=3D"linux"
> >
> > When a developer configures the sstate mirror in his local.conf:
> >
> >    SSTATE_MIRRORS ?=3D " file://.* http://<build server>/sstate-
> > cache/PATH;downloadfilename=3DPATH "
> >
> > the build gets stuck on various _setscene tasks and does not
> > continue. I did some debugging and the issue is related the with file
> > name length of the sstate files. When the developer machine tries to
> > download a file from the mirror, bitbake fetch wants to create a
> > local lock file with name "<file name>.lock". Example of a sstate
> > lock file that fails for me:
> >
> >    sstate:lib32-dibbler:cortexa53t2hf-neon-fp-armv8-rdkmllib32-linux-
> > gnueabi:1.0.1+1.0.2RC1+gitc4b0ed52e751da7823dd9a36e91f93a6310e5525:r0
> > :cortexa53t2hf-neon-fp-
> > armv8:3:169be56e277b6922d1cca3f23f6d56033812941a438f09a477cd96999d7d0
> > 801_package_qa.tgz.siginfo.lock
> >
> > This lock file cannot be created on a ext file system due the file
> > name length > 255. This causes the _setscene task to get stuck
> > indefinitely. It seems like most Linux file systems only support file
> > names up to 255 bytes.
> >
> > Is there a way to configure or limit the file name length of the
> > sstate cache files? Or a way to avoid the issue with the .lock file?
> >
>
> There were changes in bitbake:
>
> https://git.yoctoproject.org/poky/commit/bitbake/lib/bb/utils.py?id=3D273=
b124bf6acd77b074fde2421be331721a68c11
> https://git.yoctoproject.org/poky/commit/bitbake/lib/bb/utils.py?id=3D09e=
826cfb021731c1b139046665d2d9fa24baa88
>
> There were also sstate class changes:
>
> https://git.yoctoproject.org/poky/commit/meta/classes/sstate.bbclass?id=
=3Db8025e972081b70960ffcbcbe43a7118041556a1
> https://git.yoctoproject.org/poky/commit/meta/classes/sstate.bbclass?id=
=3Ded4bdd0f9149ba24fac375fd3af8bb2a06423105
> https://git.yoctoproject.org/poky/commit/meta/classes/sstate.bbclass?id=
=3D4c6efbf03530b6f60cde59cdef61aa14538753a3

I'll cherry-pick those changes and test on autobuilder.

Steve

