Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
 by mx.groups.io with SMTP id smtpd.web12.50028.1612260697905766600
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Feb 2021 02:11:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mtqC9cu1;
 spf=pass (domain: gmail.com, ip: 209.85.166.182, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-il1-f182.google.com with SMTP id y15so61932ilj.11
        for <yocto@lists.yoctoproject.org>; Tue, 02 Feb 2021 02:11:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jXRbWTlGoVDrVE8mLo4gpKkv5KadAIpzc9BVxDxACUs=;
        b=mtqC9cu1sockttmu/mphNCd2YOrkVEs84j7CiKpoeP/zHV5M3TxkDolfk/baZrWuqy
         i25yRhKSPSMYb2PgP3/YDx5Wway/rtfkGWUZ/dCFn90cHsOzjniWG5jCqahu3LakneM1
         2bS3dkClk6zaYvfU9TKHeIRTPKwCzUMbPZkUBUdwsMAf2aic0EIOwSwSkfmiyk0nKztV
         UTJqv1zJ2uUIEt/D9JLde95W2ITDWuDrNIxyV8gXbvnIQ/X+nRP3dIGWNJQ3c6iceh5q
         sWKQK1COLa9W4obYCdYaKix6IsJDatOKw6eh0w2QFyjkDiw1y5s7BPhLxwObAIl2jbkj
         gycA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jXRbWTlGoVDrVE8mLo4gpKkv5KadAIpzc9BVxDxACUs=;
        b=twCuHSljS7uOAPbINhq2OBV/SSqkwUEB4zDx6fErxOTKTSqYzLD66IqHl5PlnKNYDj
         NwKSna9q64AZSXRI90hxQHLcTKI2KItweDnhKp7/KWcRTxf1syQmiec2VPt4iYQO8Tvt
         zi5jwtvhIcxzoq7wgMnj0UDlO/452sFSMFFj6K9le/IVUxPj0holkF0DfuGHeBZdfZ8X
         7zj2uUZmDYGJ6sD+ArIBoCZaKlDK585SE6kT9mPRVKIOK6hoziGEkv6uKicG5qUCyqAm
         Nl0kle+evLOJ/R5i/l2pZoBW1LyXGapxO5hG1NEbeJjdf00z7OCdRiXeVcsE041b2eaF
         OCzQ==
X-Gm-Message-State: AOAM532L6HAl/jEjIwEP9bl3RC7GYjzLG3psowepzcAKfVM86nAqBcqe
	gaHCoSNFNAaYXYnS0RmWnUflYHxRQwkO0TaQ8P0=
X-Google-Smtp-Source: ABdhPJwQTNRpi0kA8TD2Ux0CMeSHg/1aYJgMszWA+NqGkDuwIBkBYqKP73O3N/grE2oBEQ1fJGbgvnRGH2wm582T2ro=
X-Received: by 2002:a92:6511:: with SMTP id z17mr14492030ilb.232.1612260697220;
 Tue, 02 Feb 2021 02:11:37 -0800 (PST)
MIME-Version: 1.0
References: <CANx9H-DFtcdnZwDqHEPg4t5ySyJe++KS8hO9QDFX5r31KLz3Ww@mail.gmail.com>
 <16406E32EA0586FD.712@lists.yoctoproject.org> <CA+chaQeJnDzgusQvqEWkkNwkoDxR1fMhrb0kM3932D71yWTMRw@mail.gmail.com>
 <456f2eb44ad30da1e4422d06267c07e7c57595aa.camel@linuxfoundation.org>
In-Reply-To: <456f2eb44ad30da1e4422d06267c07e7c57595aa.camel@linuxfoundation.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 2 Feb 2021 11:11:25 +0100
Message-ID: <CAGAf8LwN7QfaE70-yuQYLA3ffJVuwoKeyfoBgPUB26X5B3dMfA@mail.gmail.com>
Subject: Re: [yocto] [OE-core] Let me tell you how I really feel. Zero filter. If you need meta-python2, you need to become a maintainer. Immediately. Period.
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Martin Jansa <Martin.Jansa@gmail.com>, Tim Orling <ticotimo@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	"openembedded-devel@lists.openembedded.org" <Openembedded-devel@lists.openembedded.org>, 
	Anibal Limon <anibal.limon@linaro.org>
Content-Type: text/plain; charset="UTF-8"

> This sounds like a good idea to me and I have admin
> right so I've given you access :)

+1

Zee
_______

On Tue, Feb 2, 2021 at 10:33 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Mon, 2021-02-01 at 15:40 +0100, Martin Jansa wrote:
> > can I get the write access to meta-python2 as mentioned above?
> >
> > I have 2 fixes to make it parse able with latest oe-core:
> > https://lists.openembedded.org/g/openembedded-devel/message/89201
> > https://lists.openembedded.org/g/openembedded-devel/message/89200
> >
> > to fix issues discussed in:
> > https://github.com/openembedded/openembedded-core/commit/fd6a007efa7cb45101a66f294af81d9d33bb3fab#commitcomment-46565284
> > https://lists.openembedded.org/g/openembedded-core/message/147477
> > https://lists.openembedded.org/g/openembedded-core/message/147514
>
> This sounds like a good idea to me and I have admin right so I've given
> you access :)
>
> Cheers,
>
> Richard
>
>
> 
>
