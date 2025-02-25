Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75E3CC021B8
	for <webhook@archiver.kernel.org>; Tue, 25 Feb 2025 16:29:43 +0000 (UTC)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
 by mx.groups.io with SMTP id smtpd.web10.12865.1740500982461875118
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2025 08:29:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=Yy0UES8/;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.179, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-e455bf1f4d3so4336501276.2
        for <yocto@lists.yoctoproject.org>; Tue, 25 Feb 2025 08:29:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1740500981; x=1741105781; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JVxxZQ4M4nl9aO5iatWjaZNt9ijgUFLSrWOOFSu6tkk=;
        b=Yy0UES8/4SC7rMQsHlgS/2gxMKirmlg6tWgzbUELsJ7x/kZGwfA/cr0P+09NcI5Nsh
         A9SQfaFMDjBNKLV0dfil2w6CJ1hmdhOulXnZLbeRODqAw1W0BIiN+wuLnzq3l1XgwNVS
         WNiO1QvcLr09T5o8+oO4T05VLUiwKamK/QuWztdWiNtIuiC72M9KOrhriiflV3DAcdGT
         kumVC+xIrmhn3DjBUiT8zIsmUdontp7bbkQM1wbjw+wAM/sm4LiAKQmYO5Oyvm5LLTDv
         Y693Z85lCOEoPkjRjfe6M97Wo01EuGt4yU6kkvUZgBvofc/thCZ0ImlqDlKXXZ/2Em7v
         UPYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740500981; x=1741105781;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JVxxZQ4M4nl9aO5iatWjaZNt9ijgUFLSrWOOFSu6tkk=;
        b=uFncJH7sBTcz3ikI3BSkr/YsmapZd/Ug70KaumwS0HyDigWrGmPQZJtGnRmzHiaGR6
         ubCf8+TxZkOHU17sr0zOo9Ptn4WhnsDYwA2GDMf86IpWSFMwHdlelMaVSb1CFSEsfF+N
         687BygBgvCPTebifUReGDf+qK8K/juc2deEzQsb330kcTAqnyHuTrMlc1b8ya3/f+fiK
         LNCOxP115VlfOxfxWxyYiIw7SBq5gZjZQUWH8VSSCJUatwm9XVGlL4kRnXnc3nBXKH2z
         D2qvioJ9m8Xs1RkwKPfkpxIyQsrBWJZkGWqO2ekKJzh55abE/EAepGiySklXYVdHMZnn
         elOg==
X-Forwarded-Encrypted: i=1; AJvYcCWVVUgipc6noPGJF96dNa2/O5DfJA/6J41pV0ZEhtjAxvumSpjbIhgEPwd0BmJEy4facYaoHQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yzwn2lrp0LdKFkl55nKBf7daPHTHf2ORZMPKfm2ZnoWlAQBoY06
	iqz1JFqy1bvWKLoCRE57JZ/zPcTwm//jZnQLsdLqdjqgg38Bn96VGOj3byvBbCc4NGwqpbjoO5C
	sfeDk/j4KdC1O26tr4BMvSayeAyIgQG+9xK/A4A==
X-Gm-Gg: ASbGnctWgtIFgoz/1NPrixVW5MNogdvlvez6o99CZejUTa6VQB5SsvBqDwze8ebbqWS
	gTYzoul3pqt/btieIcOT5mUA2Dds+VH99tLs55fBgcEukgQhC3lPEo0oOH/CXl0ChL2lJSWFGUq
	jfINO/7Jy4BGow9VorqR3ZaRGLemiz5nkNlwN0kuY=
X-Google-Smtp-Source: AGHT+IGkbl6fxLrA+FnOF2GC5r2VnXmbtXJFmahx51KXsKpxKtCusgm4Eb9BSHwpBo8VtWfg0hiLPSeFcsJtijWOQUU=
X-Received: by 2002:a05:690c:48c1:b0:6f9:7356:4662 with SMTP id
 00721157ae682-6fd21deb66amr1429577b3.16.1740500981447; Tue, 25 Feb 2025
 08:29:41 -0800 (PST)
MIME-Version: 1.0
References: <20241002225451.263086-1-JPEWhacker@gmail.com> <CAOSpxdZSCzmXMJ-R2Xri8OcQw4Q38b6nkbH-F83sUO9vVgkMJw@mail.gmail.com>
 <CAJdd5GZMVzeiuu55cmXXsAHvARvfTs_mOn9iv8UQEe+_kmwbUQ@mail.gmail.com> <344f79e8e7093309dad81c72f4be7dc2d42a6161.camel@linuxfoundation.org>
In-Reply-To: <344f79e8e7093309dad81c72f4be7dc2d42a6161.camel@linuxfoundation.org>
From: Steve Sakoman <steve@sakoman.com>
Date: Tue, 25 Feb 2025 08:29:30 -0800
X-Gm-Features: AWEUYZm2LxZZcyTGRcj0h0BESleHNy7wik1pkKpVPLXPNMYVdg2yuXysLwlasww
Message-ID: <CAOSpxdZT+tuqP0CmKUrZR7W+i6-2PPuHwWcdk33_48R-1c66Pw@mail.gmail.com>
Subject: Re: [yocto][meta-mingw][PATCH] oeqa: Set LANG in wine tests
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Joshua Watt <jpewhacker@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Feb 2025 16:29:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64868

On Wed, Oct 30, 2024 at 9:03=E2=80=AFAM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Wed, 2024-10-30 at 10:02 -0600, Joshua Watt wrote:
> > On Wed, Oct 30, 2024 at 9:18=E2=80=AFAM Steve Sakoman <steve@sakoman.co=
m>
> > wrote:
> > >
> > > Would it be possible to cherry-pick this commit to the styhead
> > > branch?
> > >  I'm seeing the same issue there.
> >
> > Yes, that would be a good idea. It's based on the build host, not
> > wine
> > or Yocto, so I suspect we would see it on any branch using that host.
> >
> > Pretty sure it will cherry-pick cleanly, do you want me to send a
> > patch?
>
> I've sorted it, thanks.

Looks like this was backported to kirkstone and styhead, but not scarthgap.

I'm seeing scarthgap meta-mingw failures when running on Ubuntu 24.04 worke=
rs.

Can we backport to scarthgap too?

Thanks,

Steve

