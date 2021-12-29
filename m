Return-Path: <davis.roman84@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6098C433EF
	for <webhook@archiver.kernel.org>; Wed, 29 Dec 2021 07:53:36 +0000 (UTC)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com
 [209.85.219.175])
 by mx.groups.io with SMTP id smtpd.web11.48605.1640764415951539911
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Dec 2021 23:53:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=cKYFCKqd;
 spf=pass (domain: gmail.com, ip: 209.85.219.175,
 mailfrom: davis.roman84@gmail.com)
Received: by mail-yb1-f175.google.com with SMTP id d1so40267765ybh.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Dec 2021 23:53:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QC7n5rkamkU9CBlr680/7X+BlkGBMksZyhj2AX2QG+0=;
        b=cKYFCKqdUMGp8j4+CEJ9sh77io7NpmAO49EL7itWb9G0n09AlSEFOPLyHZI0ZaQhk0
         zNQp0FnNGUV2ZAHidBKDXHVNHSNzkMfbBNHCTR5U8u7NsdgmsoA9sMli6PPRN+77Swjo
         l67GWcDPRO/OOlj8rLpqFTMbrJ7NcdlgIKWfA6GLt+ITrLvo9WfwFYBQJn8ScNyFsnQd
         ndLoZ/S3efT4b//nXXuZ9x5ONdXU3nvWt7Ys0dDQtNDAtk31XWkMY73eOi/qh+BmQJ1k
         jxZU9B0RG5vIXYaWdzsPewNmJHj8fffswepxLl7iRrr0HuB8CMcNU4pXA58nO0WgGoZ4
         ylAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QC7n5rkamkU9CBlr680/7X+BlkGBMksZyhj2AX2QG+0=;
        b=HB5YOMUtY8tao9lTJp8RFfLuCjHGmuiTqhHxHbTqWPhu13UKMnug8RqOy87vlygE1u
         PfnTS70OZuKoCMcw+PkBsVo2QK8GddHfhu505vpEVyTlXOcPzx3qBBWsU2rjEpwESQlK
         /KlFMJ/1GF8OcjbnYkC1Eb+P13n3dDWvwKSoRnWX9LB7eOp1kHKFl09l93X6bzyD6/2q
         47Bnc38ckScHd8VW9WuTLClYBN+7r1lis7TZFgjqIP0OWINUHH/gGQK4DOVXibgsrRMf
         TZ3NICYI4gSH5ZxonOrJ2I80o+SEI4jUdQnDXaMg8i4eEbsF4KLdINWxsCNZm2+9IPgi
         9Kag==
X-Gm-Message-State: AOAM533oPnx2sDn0MYq29FBXrY8cr+G/arb/4lo95LwlOCKK8FZ4/h7W
	RsnJYzg+5GJcsVmALHDq6LEXPw1usKcyyv5C0nA=
X-Google-Smtp-Source: 
 ABdhPJzZR6x+Icj14zm5ctCGl9SKJ8zQjaMwcjFS73lCUbyKXRCJjsSAqALDID3Yb+ONOaI1+9u1dZXr04GY1cT3bmU=
X-Received: by 2002:a25:3890:: with SMTP id
 f138mr23284691yba.703.1640764415053;
 Tue, 28 Dec 2021 23:53:35 -0800 (PST)
MIME-Version: 1.0
References: 
 <CACfi_Z0ct76Dv9o+NU_Wf3Hz0Eb7Gcsbbds3AkMuy_1511jhYw@mail.gmail.com>
 <ba8ff6fe-f017-38e9-e211-b91654de8d4c@gmail.com>
In-Reply-To: <ba8ff6fe-f017-38e9-e211-b91654de8d4c@gmail.com>
From: Davis Roman <davis.roman84@gmail.com>
Date: Wed, 29 Dec 2021 02:53:23 -0500
Message-ID: 
 <CACfi_Z36+pYBU-jUKxa1qAQaVZDPi1NXwiubovv-+XM0onFVLg@mail.gmail.com>
Subject: Re: [yocto] building image for Realtek RTS3916N mips SoC using vendor
 provided prebuilt external uClibc toolchain
To: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
Cc: song li <ghosty.lee.1984@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Dec 2021 07:53:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55686

On Tue, Dec 28, 2021 at 10:09 PM Khem Raj <raj.khem@gmail.com> wrote:
>
>
>
> On 12/28/21 2:53 PM, davis roman wrote:
> > Hi all,
> >
> > I'm working on a project utilizing a Realtek RTS3916N mips SoC and as
> > part of Realtek's bsp offering, they provide their own fork of
> > buildroot packaged with their prebuilt binary toolchain.
> > I would much rather use yocto instead however Realtek made it clear
> > that no yocto support is available from their end and they have no
> > plans to provide it in the future.
> >
> > In theory, I have Realtek's u-boot and kernel source so it should be
> > possible to build an image so long as poky is instructed to use an
> > external toolchain. This is where I hit my first road block because
> > Realtek only supports uClibc and I know the yocto community moved way
> > from uClibc, in favor of musl, since the Morty release. As a result, I
> > decided to use Krogoth-15.0.0 (knowing it's EOL) only because it
> > supports uClibc.
> >
> > Now that I had picked a specific version of poky, I continued forward
> > with the EXTERNAL_TOOLCHAIN feature. The documentation references the
> > meta-sourcery layer as the typical use case. Using a sourcery
> > toolchain tarball ( 2014.05) I was able to build qemuarm/glibc
> > therefore as far as I can tell the EXTERNAL_TOOLCHAIN feature works as
> > documented.
> >
> > Unfortunately, the issue I have now arises when I use the Realtek
> > toolchain.  meta-sourcery informs me that building against uClibc is
> > not allowed as it has been blacklisted. Only glibc appears to be
> > supported.
> >
> > I have looked around to see what other projects are similar and the
> > closest I can find is the creator CI20 however due to the Realtek
> > toolchain being based on uClibc, I haven't been able to find anything
> > suitable for my usecase.
> >
> > I would greatly appreciate any suggestions regarding how to proceed
> > forward with yocto integration, using a mips uClibc based toolchain.
>
> We have dropped uclibc support long time ago so any effort to support
> uClibc based system will be a bit of work and we have also dropped stale
> patches from metadata so even if you are able to get external toolchain
> bolted in, you will unfurl next set of problems for yourself So I don't
> have a better answer for you here, other than drop the idea of using
> uclibc if you want to use modern yocto baseline. We did support it long
> time ago so if you like you can use thise EOLed releases but there wont
> be much support for it here on community mailing lists.
>
Thanks Khem for confirming my suspicions.
> >
> > Is there any other course of action that I can try?
>
> Since you have bootloader and kernel available to you, it might be less
> work to put together a BSP layer and machine definition for this SOC
> easily and it could be forward looking but there could be some
> portability issues w.r.t. toolchain etc. which are manageable
> here you will use internal mips toolchain to build your system and you
> can use musl instead of uclibc to build the system or glibc is other
> supported option.
>
I generated an internal mips toolchain built against musl and I tried
to compile u-boot but unfortunately, I'm getting "opcode not
supported" error messages. https://pastebin.com/QdcLxy69
If instead I use the realtek provided prebuilt toolchain then u-boot
compiles successfully. https://pastebin.com/zcQ5kc20

I'm thinking that Realtek's toolchain has patches specific to their
SoC that have not been pushed upstream. Could this be the reason I'm
unable to compile uboot?

> >
> > Thank you,
> >
> > Davis
> >
> >
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#55680): https://lists.yoctoproject.org/g/yocto/message/55680
> > Mute This Topic: https://lists.yoctoproject.org/mt/88005049/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >

