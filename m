Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84BC0C001DB
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 01:42:26 +0000 (UTC)
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
 by mx.groups.io with SMTP id smtpd.web10.52482.1691458940159995654
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Aug 2023 18:42:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=UBwPXiU7;
 spf=pass (domain: gmail.com, ip: 209.85.161.54, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-56ce1bd7fc4so3578643eaf.2
        for <yocto@lists.yoctoproject.org>; Mon, 07 Aug 2023 18:42:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691458939; x=1692063739;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k+UpTpGzrQhJC2XeeciN5hsXvgpoQBPIzp0Vjh9qMdE=;
        b=UBwPXiU7lHv7KdSCeV4f/OX7S9MW+d4gTMSPHfisgPr2moHkVJkUKSU5vP4Oiobd0y
         dhXHeE4RQYGuivyauGtUW9n0FH50Zt/6U4iAC7PT6aQ97dtWAiJ4yg/bijFipV8MRJ7y
         NEGIdrdQbCj2AjPP1pIHoiTNBUik7qqPqZ9Ls73wkLq0yOynEo2IIYEQEmhxMUv8u9T4
         M6ka7N6FbF+VF0P3BO/57FJ2B3DaW2A8s2/jPm91AD0p5HF/c++2FtxZ2Y52lf6vh6VI
         gKdAn+GZdm1CwTmHWVsrNFn5RjFpXirKSR2rwMSe1qGn8hqHRqsSWFInRuhDiJm9v1ya
         PtWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691458939; x=1692063739;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k+UpTpGzrQhJC2XeeciN5hsXvgpoQBPIzp0Vjh9qMdE=;
        b=HisjX5G6eivtnMAt3ntaI2LUu6HnoTdAn+ecJ6BxgBXqFwKu0+eXPMWqSnQMQY2Z7j
         P7Q9VbcRRnlDcukOGm6fzdN15BTVeTP6nLZvKF8uhnd9XpTadfpx/wjEkqXCiIEFdPDR
         A7GH1iwLdI6QWP23lbr/2jr9q3OaeZzoL/Z8EXLE4wSbuHtae+T1Y1P0qP1uc68GUAFu
         htRjDWi3bXIK8a5PII+0W+Kiku+pnx+vknr0Ro1JtrF6dQJf96vr+91z4s5hTPflzUZG
         tE9iEg+C5iqHuXeoFXA4JX+XFcoWB67vDtCM519vgGHzhx7vXtBdLN0hO8keYubuRTcZ
         Orlw==
X-Gm-Message-State: AOJu0Yy6J4+eIKXLlNLyBGdOEr54GWd5gVQ24h0ZKJtHlTn/NrpsEKss
	0qEuJjWCQNuu6XWS36HFJ42h7MTZc0X7YYkfPOE=
X-Google-Smtp-Source: AGHT+IHYqDMAQegSxJt/NsW1aFA5nojUxI1GZWD77zTsBBE9gukccn0jgY69ONpI5OOo6TT4iOWlCskv2oIPNLE0IEQ=
X-Received: by 2002:a4a:2a05:0:b0:56c:ea3f:42fd with SMTP id
 k5-20020a4a2a05000000b0056cea3f42fdmr9284767oof.6.1691458939237; Mon, 07 Aug
 2023 18:42:19 -0700 (PDT)
MIME-Version: 1.0
References: <70z1.1691458150868170043.0Y3X@lists.yoctoproject.org>
In-Reply-To: <70z1.1691458150868170043.0Y3X@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 7 Aug 2023 18:41:53 -0700
Message-ID: <CAMKF1soa1LBpQqXB6W2QCnA=h+MD_Ju9hYvg3vmEe+2ofa23eQ@mail.gmail.com>
Subject: Re: [yocto] How to add a few lines in config.txt in Yocto project for
 Raspberry Pi
To: Crane <crane2018@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 01:42:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60728

On Mon, Aug 7, 2023 at 6:29=E2=80=AFPM Crane <crane2018@gmail.com> wrote:
>
> Hello,
>
> I would like to write a .bbappend for config.txt, cmdline.txt and /etc/in=
ittab in my custom layer to make some changes.
>
> The recipe append for config.txt is created like this:
> FILESEXTRAPATHS:prepend :=3D "$(THISDIR)/files:"
> SRC_URI +=3D "file://rpi-config.patch"
>
> The paths of the recipe and patch are in the custom layer's bblayer.conf.
> But Bitbake doesn't search the custom layer for the recipe append.
>
> Is it a proper way to do that? If yes, what might be missing in the confi=
guration?
>

yes, however, which recipe are you referring to?

> Thanks!
> Crane
>
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60727): https://lists.yoctoproject.org/g/yocto/messag=
e/60727
> Mute This Topic: https://lists.yoctoproject.org/mt/100614184/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

