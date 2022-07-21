Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49609C43334
	for <webhook@archiver.kernel.org>; Thu, 21 Jul 2022 23:28:22 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
 [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web09.2147.1658446081882524589
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 16:28:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MNPRYNZV;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id y18so2389337qvo.11
        for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 16:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lShlEQU3LVLYVhxfhdSX9AqIOSabTd5Xh7/unmPafWg=;
        b=MNPRYNZVXjHGpeipiNUB0MzFyv+F7k3tcVf2zz1FV3wWM2fgWXpI/TEGdz3wJT4iFz
         b2MuPdpE7CAviYRdbHh50nabXXjKQdqDUKcrGQIqQpssZXy9dTFw78RIfL0xk6f1Nu+2
         YPEIYTbqbvzoLg+2ky/AwIhxfNzQKdquS2+EJNAu02ZJ9455omn4US8/9TIhp1y0iQTq
         GJDztHvLEclENPpd0XFHnMqDHtbGMVFPxo+vV8VZufJ4chhIJzI3XFYMPBF9bv4EDcqx
         CwwzG2ukHaVy9OdKZZYUDHqW+IEGXvh3qhXgmZIVrcPeh8XFOYjzMcRGPovLEUZHhdDT
         wQYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lShlEQU3LVLYVhxfhdSX9AqIOSabTd5Xh7/unmPafWg=;
        b=4Ic2vsDkmrKFikziwdv7qB6h3L69u8IOD+Qo9BRrge5kPkffyiVF6odgubtl6V3fc6
         ZgTnl5cNBtxzaCwv7gxazuc8g15fJxHM/MrRMr9TFT92XiYDhgo08H/saR0NynIOG8Gs
         hjJPjukvHi/aAuPtnAKAgc7sFT8uQrVH1uWpZm7MHAtNAyORW5KItpcm2n2JzMHR0Ia6
         4wWFjCHZ3L449PjCreyG3QSdouRm6jvOR69CS/DIOm0MzpluXYx2TuO4xBulyHNz2IJI
         XI3xzR+80YkVHjD+tRSGB2ZFG6cw1BkAKyjARoEVyLHKoyEKAU5eY03W7xjuzKPfWwtG
         prHw==
X-Gm-Message-State: AJIora9UZvwdz6huk3RrLzGYHZ9IqFeVt927W4V+Ux7GGTjkvaQYO5p3
	u3/hulj2Q+ROGVfOecXc//ufzOEGU8ZVQYCzXrI=
X-Google-Smtp-Source: 
 AGRyM1sUedhLnsVQ+esGYpGmRYiuy+ecoOQcsBKDcvmu8rD2VgzGXxS43e7H3Wwz3FBgv5bgSyA2Dof0+Hm2W55qo7U=
X-Received: by 2002:a0c:8c4c:0:b0:473:11d7:6d3d with SMTP id
 o12-20020a0c8c4c000000b0047311d76d3dmr901339qvb.110.1658446080762; Thu, 21
 Jul 2022 16:28:00 -0700 (PDT)
MIME-Version: 1.0
References: <20220721223854.2093685-1-jebr@google.com>
 <CAMKF1so+Mk7=a1-Mj+UmXv=HqqMtqh6wmKUr4axE6DGkm1fJ+g@mail.gmail.com>
 <CAPw1Ef_2dcx=z9PVK5D7xiU8h8FdYwrEKdEA=mtK-T9+KjZTJQ@mail.gmail.com>
In-Reply-To: 
 <CAPw1Ef_2dcx=z9PVK5D7xiU8h8FdYwrEKdEA=mtK-T9+KjZTJQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 21 Jul 2022 19:27:34 -0400
Message-ID: 
 <CAMKF1sraFE9NUivAQeem2zP3z_-9hUWmZ5=MORHmynUxBF_org@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH] meta-security: Add recipe for
 libhoth
To: John Broadbent <jebr@google.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Jul 2022 23:28:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57613

On Thu, Jul 21, 2022 at 7:11 PM John Broadbent <jebr@google.com> wrote:
>
> The examples are not separately buildable, and not installed. So there
> is currently no way to make a sperate ${PN}-examples.
> We don't need the examples now, but we are interested to know what you think.
>

I see, that should be ok. I do see a few issues with the patch see below.

> Thanks for the speedy review.
> Joh Broadbent
>
>
> On Thu, Jul 21, 2022 at 3:46 PM Khem Raj <raj.khem@gmail.com> wrote:
> >
> > On Thu, Jul 21, 2022 at 6:39 PM jebr via lists.yoctoproject.org
> > <jebr=google.com@lists.yoctoproject.org> wrote:
> > >
> > > From: John Edward Broadbent <jebr@google.com>
> > >
> > > Libhoth is usb protocol implementation which is required for hoth class
> > > devices
> > >
> > > Signed-off-by: John Edward Broadbent <jebr@google.com>
> > > ---
> > >  meta-tpm/recipes-tpm/hoth/libhoth_git.bb | 17 +++++++++++++++++
> > >  1 file changed, 17 insertions(+)
> > >  create mode 100644 meta-tpm/recipes-tpm/hoth/libhoth_git.bb
> > >
> > > diff --git a/meta-tpm/recipes-tpm/hoth/libhoth_git.bb b/meta-tpm/recipes-tpm/hoth/libhoth_git.bb
> > > new file mode 100644
> > > index 0000000..59f52ad
> > > --- /dev/null
> > > +++ b/meta-tpm/recipes-tpm/hoth/libhoth_git.bb
> > > @@ -0,0 +1,17 @@
> > > +SUMMARY = "Google Hoth USB library"
> > > +DESCRIPTION = "Libraries and example programs for interacting with a \
> > > +               hoth-class root of trust."
> > > +HOME_PAGE = https://github.com/google/libhoth

This should be

HOMEPAGE = "https://github.com/google/libhoth"

> > > +
> > > +LICENSE = "Apache-2.0"
> > > +LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
> > > +
> > > +SRC_URI = "git://github.com/google/libhoth;protocol=https;branch=main"
> > > +SRCREV = "b31307b7bf525efda0164e461fb1e0a5c302d306"

This revision does not build with musl/clang atleast since there is a
shadowing of a macro going on. You need to avoid that
I cooked a quick patch here

http://sprunge.us/LT8yuB

You might want to take a look.

> > > +
> > > +DEPENDS += "libusb1"
> > > +
> > > +S = "${WORKDIR}/git"
> > > +
> > > +inherit pkgconfig meson
> >
> > Dont we want to package the examples too ? perhaps in a ${PN}-examples
> > or something ?
> >
> > > +
> > > --
> > > 2.37.1.359.gd136c6c3e2-goog
> > >
> > >
> > > -=-=-=-=-=-=-=-=-=-=-=-
> > > Links: You receive all messages sent to this group.
> > > You automatically follow any topics you start or reply to.
> > > View/Reply Online (#57610): https://lists.yoctoproject.org/g/yocto/message/57610
> > > Mute This Topic: https://lists.yoctoproject.org/mt/92537492/1997914
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> > > -=-=-=-=-=-=-=-=-=-=-=-
> > >

