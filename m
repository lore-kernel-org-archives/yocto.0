Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943DDC6FA86
	for <webhook@archiver.kernel.org>; Sat, 17 Sep 2022 08:29:08 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web11.3851.1663403345979618737
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Sep 2022 01:29:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Hklk7sAq;
 spf=pass (domain: gmail.com, ip: 209.85.208.182,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id l9so1833391lji.4
        for <yocto@lists.yoctoproject.org>;
 Sat, 17 Sep 2022 01:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=GygOM7ZBzCenjHQJKxg48bxyHe/P108kDYyG1nFeTJU=;
        b=Hklk7sAqR0mX7/k6wWrfPKXxHymVh/WGJdd5M8AYTv7q2AAe/SLM0/bq3Tpev/zq4x
         TdJltGQ9JkQlXQWEmjw1uEG4P+Y5xaxYiwWttH3EU5KFzrCLHwHLr0XpYs69oZwLATVR
         otCEza6MSX7Hka9o5jLNSsGUrreRzJDqdfHHvNjiQcp1lRw6bUMwKg6heWqQyivQ/ojG
         z5kBKwvXcgfrIZrkL5PAlTQsVRWrEiFZpmUrvBjyz1Q6juCU+27KfGdVdtCSCQX5x9ko
         PRudhYeIHlxMiVYAhLMqYZUmr5rlv9gYmu1P3PXMR8GWN1PZMGlH6Ys86wWZ1snoGkLD
         K8SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=GygOM7ZBzCenjHQJKxg48bxyHe/P108kDYyG1nFeTJU=;
        b=KA+DNUw071mydpnRtLLrr2XXsoazDeM+XSeu0FqB5EQRCJotOz2VaLxhy3riYZfaAX
         s7DgxQFtq2A+GZnJhYimSf0tiCDbBHB+aJco3suimxfaH7AESP3QfQGNdRb3/XsDzaWs
         B72BZCq5U0uS7gpqf3kauX5do8qUW/a2tWMgjcWUHqF14cppSNTd8QqFbGf9pi7Q+Ky7
         lTev9omtAxAQcFGvUbUqW51403/wVvaQ6h6sDVN107V5Ldq8eXfN/VlTdxNsBcrsRfTy
         udPMwiDlIwKqJqAVLzLfIBup9XmbYT7m4K8zMhUg6jNEF2TWSZIEbbnk53AgbWAdUA6h
         VRLA==
X-Gm-Message-State: ACrzQf35HydmMwArsmylkY7JwVLcNhPcQ6YcCPERdehdaRAkQgg3z9iF
	J5lzsHUxYwZrVAnWneQPeoEVNFqB1am43QqulXE=
X-Google-Smtp-Source: 
 AMsMyM5sq9k2/PUiTC1ykLb1djJpnuV/YdLH1zXjLlFgqCDFfQJD46S5HyNGdS1p0xviLzFnRlrPvuwICIkDH0ptZSc=
X-Received: by 2002:a2e:3817:0:b0:26a:d369:ca71 with SMTP id
 f23-20020a2e3817000000b0026ad369ca71mr2550292lja.191.1663403344006; Sat, 17
 Sep 2022 01:29:04 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-tD-v_Cb4F7cOqyQRWpgWOBavxqhgJPhZzQ2gw1dkWxw@mail.gmail.com>
 <SJ0PR84MB1846B369EB668E66A065A4FCC7489@SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <SJ0PR84MB1846B369EB668E66A065A4FCC7489@SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 17 Sep 2022 10:28:52 +0200
Message-ID: 
 <CANNYZj_jSuNdush++p=NWW86M2rs2fpnTzOuRw1xjvDBrAdsZw@mail.gmail.com>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
To: Edgar Mobile <heideggm@hotmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 17 Sep 2022 08:29:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58063

If the samples don't link with libvulkan directly, it won't get pulled
into the images. How are they loading that library, is it via dlopen()
somewhere? Invisible dlopen() dependencies typically need to be listed
explicitly in RDEPENDS.

As a quick fix, you can add vulkan-loader to the same
CORE_IMAGE_EXTRA_INSTALL list.

Alex

On Fri, 16 Sept 2022 at 19:17, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> Ok, so I switched to Kirkstone and added vulkan-samples to CORE_IMAGE_EXTRA_INSTALL.
> But no libvulkan.so in /usr/lib.
>
> Am I missing something?
>
> ________________________________
> From: Alexander Kanavin <alex.kanavin@gmail.com>
> Sent: Friday, September 16, 2022 12:14 PM
> To: Edgar Mobile <heideggm@hotmail.com>
> Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> Subject: Re: [yocto] Adding Vulkan to core-image-weston
>
> You can start by adding vulkan-samples to the image - the recipe is in
> core. We do not test vulkan in qemu, because the software vulkan
> rendering is still under active development, and marked as
> experimental in virglrenderer.
>
> It may help if you use qemux86_64 and kvm for it, because software
> graphical paths are too slow without it generally.
>
> Alex
>
> On Fri, 16 Sept 2022 at 13:43, Edgar Mobile <heideggm@hotmail.com> wrote:
> >
> > Greetings,
> >
> > I'd like to test graphics rendering with Vulkan on an Aarch64 Yocto honister (qemu, host is x64). Can you tell me which parameters I need to add to local.conf to get all libs and headers installed (plus maybe some useful tools and demo if present)?
> >
> > Regards
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#58059): https://lists.yoctoproject.org/g/yocto/message/58059
> > Mute This Topic: https://lists.yoctoproject.org/mt/93720286/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >

