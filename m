Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCE78C4167B
	for <webhook@archiver.kernel.org>; Wed, 28 Dec 2022 16:12:05 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web11.184759.1672243917519306657
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Dec 2022 08:11:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ZH9bk1bX;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id bx10so15344884wrb.0
        for <yocto@lists.yoctoproject.org>; Wed, 28 Dec 2022 08:11:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XhNOEolyq83Yj/zDS8iUGWp+AVY4gsDfN3qcu9KYjpY=;
        b=ZH9bk1bX8D55CUbdsZWAjwrwQqVQniu3lbBELU9WM7umi6Ak2Mf7gVU2umgUn3aZW5
         vQOfPQeAtMJrH6SiMdD8f2Z+6neOEItpKuth5mID9spVDvM/P0v95SNb72eoPZqCEzMf
         AHGX9VZD/mC9/A5urKc9DtlVErXbELrre/rNQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XhNOEolyq83Yj/zDS8iUGWp+AVY4gsDfN3qcu9KYjpY=;
        b=UDBJHeDGuunWJ6ZnIms3/9PRyWfGx8jUsALM+H9xKCnA6jUT/hog7RfN2/161XCsQZ
         vaIGfkUurzuNkUyYDSh4FI3GjAkU7uiMVdGGMMmHsxbBsthnWD12f8z9SPXDeatypDJ4
         uZ0+6qwQjOKzZ5t1QrlXMHgGkI7LnUqUNwd/dNlj/Ho2K5dd/r1AADNJwx67ssMalnV3
         tkce+DKgz3jwxt9qoZTFZFCF/G6TjuGBsNzU5KDGYdGVNn98PpaWiJxJZrYyFWUoBvo3
         k/74hlxclR3oEtTfErlxiUv11FCnU3gu9pk8l/txXJsW/ApP+mFd3iXFzfzHiGaVNSZ5
         WO+w==
X-Gm-Message-State: AFqh2kqBFci3ioOf0JxeTFK4s9m63lz5XSR7t/EHk3k+M5l+A7FZfWxR
	UzmSONAZ+3bNdgtOp7gx1gILug==
X-Google-Smtp-Source: AMrXdXttKMpIKYRPY2LkARNYN4xolnQXTLuZybTzFAfJgf6r3F16woDYZm9zVvbGDCRZzLBwkkGnVQ==
X-Received: by 2002:adf:e781:0:b0:27a:2d3a:b525 with SMTP id n1-20020adfe781000000b0027a2d3ab525mr7720716wrm.15.1672243915652;
        Wed, 28 Dec 2022 08:11:55 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:9a6e:7039:ab68:1e0d? ([2001:8b0:aba:5f3c:9a6e:7039:ab68:1e0d])
        by smtp.gmail.com with ESMTPSA id s13-20020adfdb0d000000b002420dba6447sm16102696wri.59.2022.12.28.08.11.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Dec 2022 08:11:55 -0800 (PST)
Message-ID: <19a64f3a03bce344a4a848dbed2c5b7f0059fcf6.camel@linuxfoundation.org>
Subject: Re: [yocto] recipe won't build, missing pseudo
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ron Eggler <ron.eggler@mistywest.com>, yocto@lists.yoctoproject.org
Date: Wed, 28 Dec 2022 16:11:54 +0000
In-Reply-To: <be0f9503-26e3-d7d5-9789-1c3687cb1cfd@mistywest.com>
References: <c8e02a83-0061-d3f2-6c60-1ca836719836@mistywest.com>
	 <bbecbeeb0710b22a9fcadf09188c948eac538475.camel@linuxfoundation.org>
	 <be0f9503-26e3-d7d5-9789-1c3687cb1cfd@mistywest.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Dec 2022 16:12:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58883

On Wed, 2022-12-28 at 07:44 -0800, Ron Eggler wrote:
> On 2022-12-28 03:42, Richard Purdie wrote:
> > On Mon, 2022-12-26 at 18:54 -0800, Mistyron wrote:
> > > Hi,
> > >=20
> > > I'm want to write a recipe to compile phytool but I'm getting the bel=
ow
> > > error when building it with:
> > > $ bitbake -b phytool_2.0
> > > ERROR: Failed to spawn fakeroot worker to run
> > > /home/yocto/rzg_vlp_v3.0.0/build/../meta-mistysom/recipes-bringup/phy=
tool/phytool_2.0.bb:do_install:
> > > [Errno 2] No such file or directory:
> > > '/home/yocto/rzg_vlp_v3.0.0/build/tmp/sysroots-components/x86_64/pseu=
do-native/usr/bin/pseudo'
> > >=20
> > > my bb file looks like:
> > >=20
> > > [phytool_2.0.bb]
> > > DESCRIPTION =3D "Recipe builds phytool utility"
> > > # Needs to be changed to GPLv2
> > > LICENSE =3D "MIT"
> > > SRC_URI =3D "git://github.com/MistySOM/phytool.git"
> > > SRCREV =3D "8882328c08ba2efb13c049812098f1d0cb8adf0c"
> > > LIC_FILES_CHKSUM =3D
> > > "file://../git/LICENSE;md5=3D39bba7d2cf0ba1036f2a6e2be52fe3f0"
> > > INHERIT +=3D " pseudo"
> > >=20
> > > python do_display_banner() {
> > >   =C2=A0=C2=A0=C2=A0 bb.plain("some message")
> > > }
> > >=20
> > > addtask display_banner before do_build
> > > [/phytool_2.0.bb]
> > >=20
> > > It appears like my INHERIT line does not satsify the requirement.
> > > How can I resolve this?
> > There is no class called "pseudo" so the inherit line is wrong. Why do
> > you think you need to inherit such a class?
> Because bitbake gave me an error that it could not find it, hence I=20
> added it as a dependency.

A dependency would be something like:

DEPENDS +=3D "pseudo-native"

however that isn't your problem.

> > Pseudo is usually used by tasks as needed by default.

The problem is your -b option usage. To quote bitbake --help:

  -b BUILDFILE, --buildfile BUILDFILE
                        Execute tasks from a specific .bb recipe directly. =
WARNING: Does not handle any dependencies from other
                        recipes.

As it says, it doesn't handle dependencies from other recipes like pseudo.

Cheers,

Richard


