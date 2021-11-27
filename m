Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3036AC433F5
	for <webhook@archiver.kernel.org>; Sat, 27 Nov 2021 20:25:09 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com
 [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web12.40032.1638044708303113828
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Nov 2021 12:25:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=M2EPe2j4;
 spf=pass (domain: gmail.com, ip: 209.85.219.171,
 mailfrom: marek.belisko@gmail.com)
Received: by mail-yb1-f171.google.com with SMTP id g17so29616221ybe.13
        for <yocto@lists.yoctoproject.org>;
 Sat, 27 Nov 2021 12:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aRFjH3Oca1rsonrdCXvJa3pW3YM3ASc8olBa3jVclgQ=;
        b=M2EPe2j4vbCxY2YEGwDiSVS393q6jQiOKjH2iBWyxvzFprSC3erduGV9LxTWbmjwiU
         6UMDD6O30llfbSCeXpkRQX4m5hwMqBbCQeic+57VaojIi3XwP0q6I3Yo5mTuUMPALYN1
         Xm4W77FvzBlRtldKrinjGVdFnOkVkqcrVKff0o+uY7U9LJAf4yrKXnGojteh73rnm+Ki
         RvJ+i9aXonYc+/VxVNf+ZKI9LnDIA5g+ry/5Nfyiti5nx7TXpR5olhzrKiAJI11esp9I
         sToToR+Z5yjxb9X4OV8Y8uMonIyyQWEZSRpcB9JiDJmcgh4LusuaXMXzbURLnLlRx4FW
         H8BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aRFjH3Oca1rsonrdCXvJa3pW3YM3ASc8olBa3jVclgQ=;
        b=Fv+U+EOoiFGyHdCP/7nXhS4JzM/d15Jr/nn3inAK4lTiu/VdgJsr8lUEuL9VNCWygN
         DZL+FFlig0/rj9ZNgFihO93Eqd14GLEDc7OcmEyxosozPy/C7gEYwRy4yKwGlCbxVwmQ
         GDe+enLdn6VsWuFezdF2uOAkmd9nkIM41REgZ1AaHJCNCZu0VT8YNKNHmn9y4yFqkvrZ
         Xx8pSv9Auh5S5BkNIbYQmuVkc9rxhCaQDKrEjy4kXSqRHIaKNF5R4N/O79o0uzj3R/t/
         0apBQjp5deq/E6izPeQb8iuvYtCZhHW+SwrRGj91FYfjdQZttZXe9x/G/0V5uF1RiIoM
         dJeg==
X-Gm-Message-State: AOAM533tgEtzpCGu97YJSPx63mJ4du/6gVFeQis61FiCcywVMKBYfczK
	yXFC2+miWLXqz0j2vtdHaTV77DArVaO61KEAKgU=
X-Google-Smtp-Source: 
 ABdhPJzUk8wC+80E6zFo3bkJN4H2Tp2huMmF8Si9tBJ6tm/mwMfwL4GHGpbSQDeM06QG6+adJPNHcLwj68eioxddh/4=
X-Received: by 2002:a25:cf46:: with SMTP id
 f67mr26803486ybg.362.1638044707451;
 Sat, 27 Nov 2021 12:25:07 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAAfyv36OOxr2XHq6bk=XrA829X+kEdx3pdv2WoQytW5A3SuxCg@mail.gmail.com>
 <CAAfyv34cx7i5HHiHEOYTK1-2eBywBTRv6jB8RcD86Q5mRQJvRQ@mail.gmail.com>
 <20211126225554.GA9691@localhost>
In-Reply-To: <20211126225554.GA9691@localhost>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Sat, 27 Nov 2021 21:24:56 +0100
Message-ID: 
 <CAAfyv368M8EExa_6tMYc7A4P9U0Hq+_QQAfmaN4-S4fzTMpJkQ@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip] dunfell: u-boot build issue when added
 patch to u-boot
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 27 Nov 2021 20:25:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55433

Hi,

On Fri, Nov 26, 2021 at 11:55 PM Trevor Woerner <twoerner@gmail.com> wrote:
>
> On Thu 2021-11-11 @ 08:44:48 AM, Marek Belisko wrote:
> > Hello,
> >
> > I'm trying to integrate mender for tinker-board-s using meta-rockchip
> > dunfell branch. When added meta-mender which add few patches to
> > u-boot I'm seeing u-boot compilation issues like:
> >
> > Error: SPL image is too large (size 0x11000 than 0x8000)
> > | Error: Bad parameters for image type
> >
> > Error is clear to me but patches which mender adds are related mostly
> > to the environment so I'm not sure how SPL can increase size. Any
> > ideas on how to resolve this issue?
>
> Does the following help?
I'm adding dunfell support for mender :). In this link mender rockchip
integration is for older u-boot not 2020.01
> https://github.com/mendersoftware/meta-mender-community/tree/dunfell/meta-mender-rockchip

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

