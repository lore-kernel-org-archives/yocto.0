Return-Path: <mattwood2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 419C0C4332F
	for <webhook@archiver.kernel.org>; Fri, 11 Feb 2022 20:06:49 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web09.846.1644610007801006633
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Feb 2022 12:06:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PUTFn5zW;
 spf=pass (domain: gmail.com, ip: 209.85.167.45,
 mailfrom: mattwood2000@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id m18so18637566lfq.4
        for <yocto@lists.yoctoproject.org>;
 Fri, 11 Feb 2022 12:06:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7Cy6pWvwY2nmhk0Noe4BU5leAzLlSpPLjZ8rdmWL1QM=;
        b=PUTFn5zWInaMVQYC1i1fBWePW/JqltZMbIXilJtQbgFtZpKFm123IW55zWcHc3fNNi
         /Deo/Opi9Mddw6U+jKQQPdlSRVOxO+plE6vCXikpbswmK3aHXKnXQ89MidHdPDIEvSvM
         Ch7M/OgMFC3mxlMuCLY8eT5GeT/6ODP3Pt1A5QkVUdcpyyjw3kKMxlcqUAc9/Zp6JUxI
         7HzaNacqttybfCGktOTy42XN9gII2DYNMbBTot83t1F7oH/Kd1ueFaC/ZqdXePmKGbpZ
         4hHypnd9ZGnV6jHQAuuEcm2CWoW5yQ2i9UNA2aJ6s3Z8hUfaNqwc3bAdDFWZj8gJMEUq
         1b6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7Cy6pWvwY2nmhk0Noe4BU5leAzLlSpPLjZ8rdmWL1QM=;
        b=veahUm4J/sxaFjlHO3rGbYnIf7UNLiS1/YV2zZNVvGzEFiGTPIEYbpEo01z/muKm5R
         x/vNygN8W4qbmWAdo26u6BH92rOyLeAKKd62tPn/YA2u4van94im+k13fFa88MSGr1aj
         D8ob7xhEXmgTAygcHJtgo4ohmDpfp5rGPkt+vAyvTR7ZQnZsvuwU5pVjXshmftl/1jT8
         cqM12DucMp9KpWKSJJicXv9S5CRfj7kZfszhhTF/Bg5w5oHIZ+BxQvOd4Yt53evdlFMw
         wQdVG40ZGTnuIey3oWSiyjt5Gu8TLOGzX/+/mLnQrZZAtttpF1ZQakL8/JLtfw5AXZbp
         0+0w==
X-Gm-Message-State: AOAM532vGcSZkpz8Lwfgsrnr/yzlrVDhB9K6rVUzUww8ER9GTDdGtU/p
	vMYy7FNmoPDv4YxGNjXVggOB1w8PX/ZJ60TMR6c=
X-Google-Smtp-Source: 
 ABdhPJy4b5XfGRf/1sIeGdRGSUQ0i3uLOckCeb0Mo7PoJoxCixkf8DyudX1m+8jZxYLs7Yv/sBX9oEH00str4AF6ym4=
X-Received: by 2002:a05:6512:4006:: with SMTP id
 br6mr2410432lfb.26.1644610005848;
 Fri, 11 Feb 2022 12:06:45 -0800 (PST)
MIME-Version: 1.0
References: 
 <CADjezmaWK+MRzqRyHwvegFoNQRwwdaCXCT_KU=70i270z79zOg@mail.gmail.com>
 <CANNYZj-b-41OiiEGmtEd5ZpLCHZWBBPPKpu8o95GD-rpKRnP2w@mail.gmail.com>
 <CAMRMzCAuCLcB=RbmVXRm4uEkUiey9d50w0NFE=w-NM7PNJ0Zkg@mail.gmail.com>
In-Reply-To: 
 <CAMRMzCAuCLcB=RbmVXRm4uEkUiey9d50w0NFE=w-NM7PNJ0Zkg@mail.gmail.com>
From: mattwood2000@gmail.com
Date: Fri, 11 Feb 2022 15:06:34 -0500
Message-ID: 
 <CADjezmZUrNDif7pXePYT=dh3HXsm-OxF-7Hk7pwV2acA8SuNog@mail.gmail.com>
Subject: Re: [yocto] gpsd recipe not installing clients
To: Marc Ferland <marc.ferland@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Feb 2022 20:06:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56162

Thanks everyone.

Looks like this whole thing came down to a typo.  I had originally
tried gpsd-utils and got the nothing RPROVIDES error.  Missed that it
was in fact gps-utils!

Thanks again, have it working now.

On Fri, Feb 11, 2022 at 11:41 AM Marc Ferland <marc.ferland@gmail.com> wrote:
>
> gps-utils is the package you are looking for.
> Marc
>
> On Fri, Feb 11, 2022 at 11:32 AM Alexander Kanavin <alex.kanavin@gmail.com> wrote:
> >
> > Check tmp/work/cortexa53-poky-linux/gpsd/3.23.1-r0/packages-split to
> > see what package the needed binaries go into.
> >
> > Alex
> >
> > On Fri, 11 Feb 2022 at 17:23, <mattwood2000@gmail.com> wrote:
> > >
> > > Hi,
> > >
> > > I am trying to include gpsd in a poky build.  The core components are
> > > included, i.e gpsd gpsctl and gpsdctl, but the clients like gpspipe
> > > and gpsmon do not make it to the final image.
> > >
> > > For context, I'm building for the raspberry pi 3b+ using
> > > core-image-full-cmdline.
> > >
> > > I see all of the clients in
> > > tmp/work/cortexa53-poky-linux/gpsd/3.23.1-r0/image/usr/bin however.
> > >
> > > What am I missing?  I didn't see anything in the recipe that would
> > > indicate a conditional install flag.
> > >
> > > Thanks, Matt.
> > >
> > >
> > >
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#56159): https://lists.yoctoproject.org/g/yocto/message/56159
> > Mute This Topic: https://lists.yoctoproject.org/mt/89075159/3617461
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [marc.ferland@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >

