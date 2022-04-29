Return-Path: <zoran.stojsavljevic@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6103C433F5
	for <webhook@archiver.kernel.org>; Fri, 29 Apr 2022 14:09:48 +0000 (UTC)
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com
 [209.85.166.170])
 by mx.groups.io with SMTP id smtpd.web12.10616.1651241388396050758
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Apr 2022 07:09:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=JEc+lcr/;
 spf=pass (domain: gmail.com, ip: 209.85.166.170,
 mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-il1-f170.google.com with SMTP id f5so4049561ilj.13
        for <yocto@lists.yoctoproject.org>;
 Fri, 29 Apr 2022 07:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=4in15U42V8XbsOk4Z3+bE4FH4HLXqKE6tJ3eEH8fNb0=;
        b=JEc+lcr/bHJr0ozypkDt6O3uwC3G0AIuOfLtBvP3VhTnhQLWxaKILJ0lP8AcmjJo2J
         RV1Mn3Up9kcbTb6f7HFqOgNfQMl9+WzzNrBUf8C0K0nHeYMQpdaHdm/OCpPg+G5sJ8Ym
         kXQ3sb2ccT9X7q2lvEO+AtzwmR4rNvWEJwNXdi70Tg7RBFumHJ81MntifRMa9iqQkWYm
         bzOgmiSQzWjZ7yrAqPCBEc1Uj79Ys88e7LshNkq9J36+Cv6AHrnJVwjlwYEIQvgCdjRc
         42GRC3JXqmacarjFuzNn1wfQlQ07SuaaISY9m3CKPo6qMuPc/az/jlT7I6UfFvhgE028
         hIQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=4in15U42V8XbsOk4Z3+bE4FH4HLXqKE6tJ3eEH8fNb0=;
        b=rt2ytA0oAT6wXydHl7rCrB1BDDr2R/UaMp7QUf60IQ7DTy6Ux7hHE9Cy5A9Gw5yRB0
         7dagaiUhN8Nfkv7vajEFo15g0B5PaPev2uQshKiMEr0hfAOjXIAq6uhYrTgqLu8XGlxN
         dUp1kSHXvR/a0u+Q3VnN7C5hRiSvRjtkRq7z7EfPbrtqoSdGQU7ocQWjJre2Rt5sDmhZ
         UxhbDXQ4l/YSK++yFD5sh1l6XsruHeUPXFiJUEI2U7tmLfqEOr0X2VUJbCrJKsJrVJh0
         Rrt+HNvYBGJyTwyHWJWMNa/KPdwsqxFdo3tYSzCnVxpki3jv57ouVID+SdueCzu60o5L
         +Efg==
X-Gm-Message-State: AOAM532cu29tq8IYX7U00KLMbcbr4vKFOnaJXlXv94Z9oPjO9yh2JdJ+
	MZ2/4QnAKf3n4DDY/fRnt8NvDl4YxkB5ZAKn5Cs=
X-Google-Smtp-Source: 
 ABdhPJyrozUAJ1N+16GqRXVSvcfUIfWDfZRHJpiP8CvwlVCqlYBrhcps75YqZjtOtek3a7/EB3uLA7ao7vArO2NRcVw=
X-Received: by 2002:a05:6e02:1a09:b0:2cd:9859:2aa6 with SMTP id
 s9-20020a056e021a0900b002cd98592aa6mr9695157ild.160.1651241387632; Fri, 29
 Apr 2022 07:09:47 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAMLPRYc-f79DsMGcr_kLuUrce81Eiybi5fW7-rr4qYgXTfoe7A@mail.gmail.com>
In-Reply-To: 
 <CAMLPRYc-f79DsMGcr_kLuUrce81Eiybi5fW7-rr4qYgXTfoe7A@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 29 Apr 2022 16:09:36 +0200
Message-ID: 
 <CAGAf8Lx_tiYX=sgS4L-Fw7ja2eMqLKes6n-dpgsaKEXQRRiwxg@mail.gmail.com>
Subject: Re: [yocto] Question about initramfs and fitImage
To: Khoi Dinh Trinh <khoidinhtrinh@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Apr 2022 14:09:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56962

Hello Khoi,

This might be is your starting point:
https://www.yoctoproject.org/pipermail/yocto/2018-July/041680.html

Zee
_______

On Thu, Apr 28, 2022 at 11:13 PM Khoi Dinh Trinh
<khoidinhtrinh@gmail.com> wrote:
>
> Hi All,
>
> I'm trying to build an image that uses the currently built image as the i=
nitramfs instead of having to specify it in "INITRAMFS_IMAGE". For example,=
 when I run "bibake image-something", I'm hoping to use the recipe "image-s=
omething" as the initramfs with the end goal that it's used in creating a f=
it image. AFAIK, INITRAMFS_IMAGE has to be hardcoded instead of being dynam=
ically set to the name of the currently built recipe(which I completely und=
erstand since the recipe being built might not necessarily be an image) and=
 this makes it easy to boot the wrong thing since the recipe specified with=
 bitbake isn't the thing being used for booting.
>
> My workaround so far is to create my own image recipe and set it to depen=
d on the image being built(specifically depend on the .cpio.gz one), howeve=
r, a lot of it is duplicate of the current fit image code.
>
> Our use case is that we use initramfs as our only rootfs storage to make =
checksum at boot easier(since the final rootfs is a .cpio.gz blob) and also=
 to avoid any writes to rootfs to persist across reboot.
>
> --
> Best,
> Khoi Trinh
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56948): https://lists.yoctoproject.org/g/yocto/messag=
e/56948
> Mute This Topic: https://lists.yoctoproject.org/mt/90763430/3618681
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [zoran.stojsavl=
jevic@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

