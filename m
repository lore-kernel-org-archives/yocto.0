Return-Path: <aladyshev22@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 874F9C54798
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 11:32:26 +0000 (UTC)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
 by mx.groups.io with SMTP id smtpd.web11.8556.1708687941003351361
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 03:32:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fPZJiMgP;
 spf=pass (domain: gmail.com, ip: 209.85.217.52, mailfrom: aladyshev22@gmail.com)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-4704c073becso92677137.1
        for <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 03:32:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708687940; x=1709292740; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wiwbiAjYLB3qYTPZpDOkpn9Uc+cc8HQfOFshpFF7O1I=;
        b=fPZJiMgPfpYyW2hy1tPoVUqmjjBzFHS7Q13SnD5I+Lz4HVXnRgzSvDj2PmqNInF5HK
         jNcu0ywZ5ejzXaKUvObf7PJHq4hq/sgKRl+HcP2NhWamdShkDQDqBso7r77NFNoHBKBF
         LBSF73ycarMOF3WjZip0Epgh9856u43FzRA3iXIcEsaNoO8KcGNJhjWCeribtPKART6D
         92RoRt/kjPF8KPXCgUh6aqE9u3YnBWuV9XB68VIDx60c5Kq6hm6wmAUNqfeij0ZZLwhy
         6/Rrj+jZjB+Xa86AkzsTlx6PEER1Ehbf8OchN4r9o2sLIED4orYD+M9KXnp5dGjf/wy5
         lKlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708687940; x=1709292740;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wiwbiAjYLB3qYTPZpDOkpn9Uc+cc8HQfOFshpFF7O1I=;
        b=o8HlSnfBtk+cIjNSyeho4S5s3FOnUWqeiNVFQLxUJf2U853ZPjoxM2URynsXsJUIud
         mMlS8WmOu+TmrGAADpejhrPq5uFdb8MVd36Jd8YE1/wmWQPjOxCVXAlYAGo5k24yqBUf
         vpwVG22nXCBlCXn5qbSrUl+/Ao6SV3goHgpMdy21Y/Ibvj/INk9AE7hR/pIsICsNWziP
         yjTCaBDzPwG6JFE7SrC0rJS0ioLnjcCfJWlWeIq/dToHURQPvcs2uYNAKytHQiFxS7qe
         2i5JfEW7miHjcKGcglT7hYT/fIPy3vKeQovUevDAUBwL7GJ+pXUmUQxn2Zumkbe2al0G
         J2Lg==
X-Gm-Message-State: AOJu0YxbPIUWZU8fcFzFaSHzAXXTFjmPCjsOYFcbbUF4s9ZmlQErbQaW
	nGkWVwjCXYF/bX5ufbKdzu9yZnuKFmJsv2jxwdpe0i7KcihXvbWz2VCBCMSBMcuYeAmdw7J8YTt
	1xKsg7zorTqWo38eAAR2/LmTUHVY=
X-Google-Smtp-Source: AGHT+IF1W5Zrr70IsQjDD7bIUSmBwbVbg4V4f3QMyotYIziTAlOTpwgg0FnJesTSjkVd45NltC9CnZyvc8CjGLMq/Cc=
X-Received: by 2002:a05:6102:2159:b0:470:510d:742f with SMTP id
 h25-20020a056102215900b00470510d742fmr1104712vsg.35.1708687939962; Fri, 23
 Feb 2024 03:32:19 -0800 (PST)
MIME-Version: 1.0
References: <CACSj6VW3yitnPuAeg=VOXnhB7D5dN2_UD7KStSaDYug39YL3vg@mail.gmail.com>
 <CANNYZj9VBXUESuy91rfF1xbaN40AfU0trdevtLVgXgq37MLk5w@mail.gmail.com>
In-Reply-To: <CANNYZj9VBXUESuy91rfF1xbaN40AfU0trdevtLVgXgq37MLk5w@mail.gmail.com>
From: Konstantin Aladyshev <aladyshev22@gmail.com>
Date: Fri, 23 Feb 2024 14:32:07 +0300
Message-ID: <CACSj6VW19X4b7qq+prukimrrUhMYn6Xe2yorn2q6OnDjBYAPgw@mail.gmail.com>
Subject: Re: [yocto] 'yocto-kernel-tools' requires git version much greater
 than general Yocto requirement
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 11:32:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62578

Hi, Alex!

Thanks for the response! What would be a proper way to fix this problem the=
n?

Konstantin

On Fri, Feb 23, 2024 at 2:24=E2=80=AFPM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> It's probably just a simple oversight. If the problematic code path is
> not taken in automated tests, no one will see the issue when it's
> introduced by the commit.
>
> Alex
>
> On Thu, 22 Feb 2024 at 16:11, Konstantin Aladyshev
> <aladyshev22@gmail.com> wrote:
> >
> > Hello!
> > I was investigating some problems with the `devtool modify linux`
> > command and have discovered that part of the problems is generated
> > from the commit
> > https://git.yoctoproject.org/yocto-kernel-tools/commit/?id=3D923a9de418=
b3ca8592c3fd0a0d0b1e4b29533891
> > This commit is very simple and just adds the `--no-verify` flag to the
> > `git am` command. The problem is that this flag was added pretty
> > recently  (Jan 5 2023 -
> > https://github.com/git/git/commit/566902f2db3bdad9be7fb083c713f0d21acf1=
11e)
> > and my host git doesn't have it.
> > Is it normal that yocto relies on such modern git? Because the yocto
> > documentation just says `Git 1.8.3.1 or greater`
> > (https://docs.yoctoproject.org/brief-yoctoprojectqs/index.html#compatib=
le-linux-distribution).
> > And `git am --no-verify` works from something like `v2.31.6`
> > apparently.
> >
> > Best regards,
> > Konstantin Aladyshev
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#62567): https://lists.yoctoproject.org/g/yocto/mess=
age/62567
> > Mute This Topic: https://lists.yoctoproject.org/mt/104509876/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin=
@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

