Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D76C433FE
	for <webhook@archiver.kernel.org>; Thu,  5 May 2022 08:48:15 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web12.8616.1651740491973092439
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 May 2022 01:48:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20210112.gappssmtp.com
 header.s=20210112 header.b=G8g3K9wK;
 spf=none, err=permanent DNS error (domain: theyoctojester.info,
 ip: 209.85.167.52, mailfrom: jester@theyoctojester.info)
Received: by mail-lf1-f52.google.com with SMTP id y32so6342703lfa.6
        for <yocto@lists.yoctoproject.org>;
 Thu, 05 May 2022 01:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HDvnMJKph8N9ak3X+yTl0k/1AaoUT+r0xM/XH63BCyc=;
        b=G8g3K9wKQWldLDc+8TzoWhIwLx+Fy6DPfSwsSOXI36aQjoiH4KyTkdGwSCc0M+EqJ2
         XfK25pkYRzC9nUfa5zKw03Hnl580KhqXHOGu4h/zbO+yb/yKgE3B+FqSvXclu5z3cnVM
         waaMlERGapszXLzp5T1sksg9YQDkSHIzQOH5ckqPjZNweZ8MruO0tgXHuvV6/EPJfb4Y
         UKIZn5ExcpkOb9mGF7Rmmn6LOxtjUL1Wyt4TPPZv2eJzPGu93wNnO9tMF1p+nlh+a+BP
         d66zN4q+x10lKNx5xATtQFwIRWbLNuSxqsOZcx2dr+8sxKgpimIPaLp8EKTa5FHLhd85
         XkuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HDvnMJKph8N9ak3X+yTl0k/1AaoUT+r0xM/XH63BCyc=;
        b=h/jj99DKDJfDtp2HmJiziKEd65PgD2DGky3UQAFHuN3RPL8jsFeeXAjQ4bqkE9OLqm
         LlhTe3QJQdhcwhjltddojxcqMnU6kB865GPSLWtCyYsYavbcE0elD6QuhBwHcMzavrHD
         IJ+7FpElwV7dsY86byOKMM4g5GVq/BWE3FTUOYdYWY3wq7VMfO1g830qA336nAqha8vH
         ID/CdWNyZxYAv8XQixnB6QUlWB9rzIegIy0s6voYNQuO8fQsPWGb2+EdMainY9KOv3Bn
         IHNyvUbcxJTi6KvPFHv5nQZioKNyCpA2OUgjOkvMr5pe1Gyi3ki0bGgvOqVzpFfEvNFP
         vZQA==
X-Gm-Message-State: AOAM530/u4+18bnvtTMa19xJN5j3b5kd7Y/F+6oQHkrepzu8ZW6ADWsw
	KrEpYG9O96/3oY2YagRu3FNWXdj7kGAy0BcMGfLfWA==
X-Google-Smtp-Source: 
 ABdhPJzSHmoLGP8kSc8sm2XVLk9la3upcUKR2NCvB4pJtQxOJhTGC4BXwSup1kp2su7hRw8g14MqmpLtoj2xfo1eCD0=
X-Received: by 2002:a19:2d57:0:b0:472:1867:79f9 with SMTP id
 t23-20020a192d57000000b00472186779f9mr17162711lft.483.1651740489993; Thu, 05
 May 2022 01:48:09 -0700 (PDT)
MIME-Version: 1.0
References: <9d3557790b185eab39f60301c57f7a9d@vivaldi.net>
 <CAGAf8LwAdtJAyoBTtX40s4iyCcuuA4xrYw9VRTU9VYNk0Yh+hQ@mail.gmail.com>
 <7b2fce371a4d490f7691a803823c7c6f@vivaldi.net>
 <0f7fd537-cb79-29ab-d3fe-99bcc0d5811f@bootlin.com>
 <0f4b601e521de98b00927cec77512354@vivaldi.net>
In-Reply-To: <0f4b601e521de98b00927cec77512354@vivaldi.net>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Thu, 5 May 2022 10:47:44 +0200
Message-ID: 
 <CAEt6Nwq8BbS2jTzm0vyghttXB9u0FKvVGto20u-ko8HE2Kx1iw@mail.gmail.com>
Subject: Re: [yocto] OE Linux & board-support-package
To: jchludzinski <jchludzinski@vivaldi.net>
Cc: michael.opdenacker@bootlin.com,
	Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>,
 Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 May 2022 08:48:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57002

Howdy!

Am Do., 5. Mai 2022 um 10:43 Uhr schrieb jchludzinski via
lists.yoctoproject.org
<jchludzinski=vivaldi.net@lists.yoctoproject.org>:
>
> OK, let's go with that.
>
> I've watched the "Live Coding with Yocto Project #1: download and first
> build" youtube video. Where is the BSP built in this procedure?

The BSP that is implicitly used in that video is the generic QEMU one,
which comes included with poky. Technically speaking, it lives in
https://git.yoctoproject.org/poky/tree/meta/conf/machine and
https://git.yoctoproject.org/poky/tree/meta/recipes-kernel/linux/linux-yocto_5.15.bb

A BSP can be many things, and this one is a rather small one, as
booting into and running linux on QEMU doesn't need patching and all
that, so in that case it comes pretty close to the perfect world that
Michael mentioned.

Greetz,
Josef (who did that video, actually)

>
>
>
> On 2022-05-05 03:16, Michael Opdenacker via lists.yoctoproject.org
> wrote:
> > On 5/5/22 08:39, jchludzinski via lists.yoctoproject.org wrote:
> >> A board-support-package (BSP) is software that provides a layer of
> >> abstraction from the physical board specifics for the host embedded OS
> >> (e.g., VXworks).
> >>
> >> I believe the device tree files (*.dts, *dtsi) in OE Linux provide the
> >> same function. It allows to OE kernel code to be independent of device
> >> specifics.
> >
> >
> > The Device Tree files are just descriptions of the hardware. In a
> > perfect world, you could indeed use the same mainline kernel to support
> > all possible devices. However, that kernel would be unnecessarily big
> > for your custom system. You most probably want to customize its
> > configuration, and may also need custom kernel drivers and patches.
> > There's also the need for a bootloader compiled for your platform.
> >
> > That's why we need BSPs :-)
> >
> > Cheers,
> > Michael.
> >
> >
> >
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57001): https://lists.yoctoproject.org/g/yocto/message/57001
> Mute This Topic: https://lists.yoctoproject.org/mt/90904726/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jester@theyoctojester.info]
> -=-=-=-=-=-=-=-=-=-=-=-
>

