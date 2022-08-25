Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 510D9ECAAA2
	for <webhook@archiver.kernel.org>; Thu, 25 Aug 2022 23:50:02 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com
 [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web11.31218.1661471380355538114
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Aug 2022 16:49:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KsJ0K9O3;
 spf=pass (domain: gmail.com, ip: 209.85.128.181,
 mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id
 00721157ae682-334dc616f86so580500477b3.8
        for <yocto@lists.yoctoproject.org>;
 Thu, 25 Aug 2022 16:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=7XhJV7pQxWxuQoDJodq5dx/HTDGk2CNpsk/6oanAxho=;
        b=KsJ0K9O3g3hlocMu8mq035CXZc60GDlFoQASRefVgsySQ7YdfvESjDrDR4nnUdeB4l
         /W2wTg+X8795a+0UgH4eP56axe6iDpZzESSS5N/42PejAbOE8eShKDITeMVi3rnJX2L+
         ctYMIzVpJX4qcCKiZU+4aHKUeDBnGKwtV6i+W4cNRmlgdtEJbIut+haRYl5X7Wor95Bg
         MjXhwZBc6MXa+jjS0D4rgucJ6Ho3XyqMM4uoMtCKBFlKxkIKFq7jbnX+tb+jdGMUVAL2
         nWIW2ryMQD8Kr26WE+mtQUkA9RfHfnIopLrG+hpCxFDn6dvGqC7FG8vcG/BCsb06pC42
         pRJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=7XhJV7pQxWxuQoDJodq5dx/HTDGk2CNpsk/6oanAxho=;
        b=H+fU+CCOhLNiKLu6ErnqKrqPYYZmBSk0nXJkF1Cus7CXF/mnqqfo7F0Py2JjERfDQC
         UA7KwuAakGNhUSOXfxEsZW61i3shMpaw9ML17nC4MUrW64dZU8I7sG3M54jTwXZKoSJB
         oDjgJEnBvehM6/SFkIFXjUSYz603+2Es3q8Icws5yIbtlUTh9ebbsMVKhOw4dpfrV21H
         /jApsaynfYpDCPUdd4rH9hX8OPYYz+2t4Oqi3PONhVeMmiqOD5mkc9TsbsJXPag+ltqN
         Sg19wgNE38qH2S4NyvdWdAnlfJPI/B+MPbwjfn41iHdVVR10VwNH30ul/DmmouUXbjpm
         LRgA==
X-Gm-Message-State: ACgBeo3JldNl9ItulMRP/z5YY01iYKt30/RP2QPAdICn7Vk477oaJl5Q
	ZY3tuZL2bl6WueFhFWRCyeXq3r4hyHMxP6Tb9Y0=
X-Google-Smtp-Source: 
 AA6agR4UkmepmGymc4I5OEXQr273PLkEFiUoeglIcrSlHJlceD+1A+2yfv0aFjdNNd1lLcUTjcw6bygeYP++48IHXb4=
X-Received: by 2002:a25:b986:0:b0:671:a73:1ea6 with SMTP id
 r6-20020a25b986000000b006710a731ea6mr5129180ybg.405.1661471379441; Thu, 25
 Aug 2022 16:49:39 -0700 (PDT)
MIME-Version: 1.0
References: <0c8260c2-0da1-7566-3f9a-e90d4995b45b@ibeeto.com>
 <CAMKF1spJvxxuPOK+KFEX19MjOwumSZ+tGT_u1icvH5z1U8qiAA@mail.gmail.com>
 <6c426aab-6dff-bcfe-1b95-157da402ba44@ibeeto.com>
In-Reply-To: <6c426aab-6dff-bcfe-1b95-157da402ba44@ibeeto.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 25 Aug 2022 16:49:13 -0700
Message-ID: 
 <CAMKF1sop4ait=pE5CSzbs3Uu7P=6pACdKd=0py_wpbD-4aXCKQ@mail.gmail.com>
Subject: Re: [yocto] Dependency for binary package
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Aug 2022 23:50:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57904

On Thu, Aug 25, 2022 at 4:44 PM Rudolf J Streif
<rudolf.streif@ibeeto.com> wrote:
>
> Thanks, Khem.
>
> On 8/25/22 4:27 PM, Khem Raj wrote:
> > On Thu, Aug 25, 2022 at 7:30 AM Rudolf J Streif
> > <rudolf.streif@ibeeto.com> wrote:
> >> I am packaging a binary package that has been built with the SDK created
> >> with the exact same configuration.
> >>
> >> During do_package I am getting an error that a dependency on
> >> libGLESv2.so()(64bit) cannot be met. Adding mesa to RDEPENDS does not
> >> resolve the issue. I can bypass it in the recipe by adding file-rdeps to
> >> INSANE_SKIP. However, then when the rootfs is created libdnf complains
> >> that the dependency on libGLES is not met and aborts.
> >>
> >> The application works just fine on the target if I copy it manually to
> >> the rootfs but that's not the best thing to do. It should be packaged
> >> and installed.
> >>
> >> Unfortunately I don't understand well enough how these checks work and
> >> why they are complaining about it. Maybe somebody can shed some light on it.
> > some libraries do not set SONAME in them, which can trip the shlibs
> > code. Can you
> > check if libgles in question has SONAME encoded in its ELF header
> >
> >   readelf -d <lib> | grep SONAME
> >
> > might be what you can use to deduce it.
>
> libGLESv2 in question on the target was built with YP:
>
>   0x000000000000000e (SONAME)             Library soname: [libGLESv2.so.2]
>
> The SDK that builds the application was built with the same YP setup.
> That's why I am scratching my head.

interesting, are you adding RDEPENDS on libgles2-mesa ?

>
> >
> >> Thanks,
> >> Rudi
> >>
> >>
> >> -=-=-=-=-=-=-=-=-=-=-=-
> >> Links: You receive all messages sent to this group.
> >> You automatically follow any topics you start or reply to.
> >> View/Reply Online (#57898): https://lists.yoctoproject.org/g/yocto/message/57898
> >> Mute This Topic: https://lists.yoctoproject.org/mt/93249287/1997914
> >> Group Owner: yocto+owner@lists.yoctoproject.org
> >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> >> -=-=-=-=-=-=-=-=-=-=-=-
> >>
> --
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3386 x700
>

