Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFE70C433EF
	for <webhook@archiver.kernel.org>; Mon,  1 Nov 2021 20:50:30 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web10.224.1635799829751626920
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Nov 2021 13:50:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20210112.gappssmtp.com
 header.s=20210112 header.b=8QKhbzI5;
 spf=none, err=permanent DNS error (domain: theyoctojester.info,
 ip: 209.85.208.175, mailfrom: jester@theyoctojester.info)
Received: by mail-lj1-f175.google.com with SMTP id 17so28263365ljq.0
        for <yocto@lists.yoctoproject.org>;
 Mon, 01 Nov 2021 13:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TU7lAORUQqk+R/oHzJqvbLaRKdSJxQo9U5mr3wtNeqg=;
        b=8QKhbzI5TUemGJaxCkZZN9BM0zS9kivDj+pz+qHS3Z0SX5zgsYg5C4ydXO3nQUcqc8
         35fOhSE9d3/TogFLBhxBvG2kQZifFWHM/UZeUhns11aFWcRdflLU2WCxPIkZOQWL02YS
         Sb3oLTd4tSYqYa60q70229LWATIZQN15g1BfMSu1YHO8phaWZA+vsZlaaA+uHDvO+bz5
         lMIP08fDzdx1FyLOxvyisYASbdq6o6pHKfRLCRmlcmQDPTd0AzodieFVJr0ilYx+zu74
         cL4qk9PeTLmV7cpJb206ZNl7rCDoiLr3qNNG7Z3UsV0v0MS3308FVgcAML+IUYiMHzFI
         zpGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TU7lAORUQqk+R/oHzJqvbLaRKdSJxQo9U5mr3wtNeqg=;
        b=pkmDwVKaFlD0cT9gBSZtI48CGSgyCyrffXiqwb8knczo4pm7vLzQvzIfQuiWD6Ytqt
         x1l+xADRN9S7ZF0ZMuqSJYEBqyEZWGWn0QyaGJO9xJsvhx/bj/ZoOSOKKyY7K+f2JtDB
         LrvdB+7pifx6b4lHH7tzeARpUe588KUklxOoQYyrFy/+1qe2KsXZxPOiNhq9fHEvTUfE
         UlwMoZI2ONLUGs33GhBoUrJ44NzI9I5WIFx7xyiHGLnzp4gju4ExiC51DJxpxgM7sXBq
         IyX/NdDM62UJMt6hzmXpZJww459mTHCsSAoY3zZcvLpLk0qYzCyhSmUYoSNsfoUHZfNa
         mpfg==
X-Gm-Message-State: AOAM530D08v+NhkEJNQU9WzrkG7cswpQSwR8NtJqMI/E6VOTnxK/RMO5
	oJRMytlY++kp8qGy6kDgeRXo2siZoA9ojqJCgf3v/g==
X-Google-Smtp-Source: 
 ABdhPJwvDumRzqNNAIYx2LzZLqrRwOhpZi2l/KHvUoo6XuiGxudjxJW1vj6UgElxyGo2aKcMbdvS2sB7kR554es9zEI=
X-Received: by 2002:a05:651c:1693:: with SMTP id
 bd19mr468407ljb.410.1635799827378;
 Mon, 01 Nov 2021 13:50:27 -0700 (PDT)
MIME-Version: 1.0
References: <e26334762f4d4b2e7f0f12a0f429da14@vivaldi.net>
 <CAEt6NwrQjy1fwr-7p+LeXn+rR_TmWS8Zz_EzTi80nvLE_x_xBQ@mail.gmail.com>
 <7f8785ff1f11dbefb2082e739f20b515@vivaldi.net>
In-Reply-To: <7f8785ff1f11dbefb2082e739f20b515@vivaldi.net>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Mon, 1 Nov 2021 21:50:01 +0100
Message-ID: 
 <CAEt6NwqSiEd3wX_6+-1p0V=y5aDGJ8JMv7RVJW3z7KSwU5H90w@mail.gmail.com>
Subject: Re: [yocto] Specified SDKMACHINE value is not valid
To: jchludzinski <jchludzinski@vivaldi.net>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Nov 2021 20:50:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55205

(re-adding list as I messed up)

Am Mo., 1. Nov. 2021 um 21:45 Uhr schrieb jchludzinski
<jchludzinski@vivaldi.net>:
>
> I want to build this image for a Raspberry Pi, which means ARM.

MACHINE = "raspberrypi3"
(for example, pick your specific one like
http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/conf/machine
)

> Is that not possible?
>
> That can't be true!

Building the SDK for an architecture other than x86 is not supported
at the moment. But again, this is about the SDK. And you probably just
want to build the image, where the standard procedures apply. Add the
BSP layer, set MACHINE.

> ---John
>
>
> On 2021-11-01 05:55, Josef Holzmayr wrote:
> > jchludzinski via lists.yoctoproject.org [1]
> > <jchludzinski=vivaldi.net@lists.yoctoproject.org> schrieb am Mo., 1.
> > Nov. 2021, 07:27:
> >
> >> NEWBIE question!
> >>
> >> I tried building and I get: "_Specified SDKMACHINE value is not
> >> valid_"
> >>
> >> pi@raspberrypi ~/p/build> bitbake core-image-minimal
> >> /usr/lib/python3/dist-packages/html5lib/_trie/_base.py:3:
> >> DeprecationWarning: Using or importing the ABCs from 'collections'
> >> instead of from 'collections.abc' is deprecated, and in 3.8 it will
> >> stop working
> >> from collections import Mapping
> >> WARNING: Host distribution "raspbian-10" has not been validated with
> >> this version of the build system; you may possibly experience
> >> unexpected failures. It is recommended that you use a tested
> >> distribution.
> >> ERROR:  OE-core's config sanity checker detected a potential
> >> misconfiguration.
> >> Either fix the cause of this error or at your own risk disable
> >> the checker (see sanity.conf).
> >> Following is the list of potential problems / advisories:
> >>
> >> Specified SDKMACHINE value is not valid
> >>
> >> Summary: There was 1 WARNING message shown.
> >> Summary: There was 1 ERROR message shown, returning a non-zero exit
> >> code.
> >> I've tried setting SDKMACHINE to 'arm' and 'qemuarm' but get the
> >> same message?
> >
> > SDKMACHINE only accepts x86, in either 32 or 64 bit variants, see
> > https://docs.yoctoproject.org/ref-manual/variables.html#term-SDKMACHINE
> >
> >> Obviously I failed to do something (properly)?
> >>
> >> Ideas?
> >> -=-=-=-=-=-=-=-=-=-=-=-
> >> Links: You receive all messages sent to this group.
> >> You automatically follow any topics you start or reply to.
> >> View/Reply Online (#55199):
> >> https://lists.yoctoproject.org/g/yocto/message/55199
> >> Mute This Topic: https://lists.yoctoproject.org/mt/86733811/4689568
> >> Group Owner: yocto+owner@lists.yoctoproject.org
> >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> >> [jester@theyoctojester.info]
> >> -=-=-=-=-=-=-=-=-=-=-=-
> >
> >
> > Links:
> > ------
> > [1] http://lists.yoctoproject.org

