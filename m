Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61765EB64DA
	for <webhook@archiver.kernel.org>; Wed, 12 Jul 2023 17:56:15 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web11.2730.1689184564810803405
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jul 2023 10:56:05 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=eE3PvTbP;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2b703a0453fso116999121fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 12 Jul 2023 10:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689184563; x=1691776563;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fQuRESJbY+RxQmGx32+CG+XNGQIQpv1JIfq7oNwRPuo=;
        b=eE3PvTbPjBbOtrKTkeZg5i4gaRv3+Y6hm4HRqv68xPP/2TQFkfHMUYokSNKarahHZ7
         84Mt5IP30SRBxB4AHwHNlZp1+FkmJ89n8xn8ViwIxYtGBgxraIFgFHbYY/34qxx8n6b7
         NZ2Q/+XhGnXLUdush4i0al/nN+B4o8sPSpqp6LHw78rAFWlQFH2Uyb/0uIlPnaw6NU6b
         gYralLI5D2Eza5Jc0R/9ruoX8jAnxTvsofhercAmBrKyT8gMEakDZ20r2neZqQ6amFYB
         ZedLXSce80lhKtmcYUnWaonzmSxb+TDCSB4DO200R+0RHiuwPyzzBxK2T9+kgQyWUvxu
         vWxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689184563; x=1691776563;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fQuRESJbY+RxQmGx32+CG+XNGQIQpv1JIfq7oNwRPuo=;
        b=HChnv2AGOFS82h6hW4Ap90cbTPGP2TavM3c16qKiG/ss66aRijWF8th6iFTSxG/0dc
         WjXGRTHlcgcmOBH6eR2VjDyaHso8Z41mvHJAE70wLzFkC4gqEdWJ87lzLRWj9fzjYf9m
         hrP5tW+oqON3Nk2uj9GKzIhaJfB568c/hGUsDCPRoI3dfp8GLlMSB9/CG8xc3HrHmFFa
         q03+pOnuXhmY60QbMxIOGiojUyxTMM0ZwQ1xe2DIzwcApqohqro5XmZM4KN1Rtu5KMNh
         Ld/BPPbSGwQ+eWM7QD2MfYbanBLSjMtDHtYHqdlIm/nVPNrD1icKXOYq3BczNjVu1AmA
         P7bg==
X-Gm-Message-State: ABy/qLZe91leFm8twgKuWNj6iIgx7OvNbN4n9DfbMcKhfsNij2709lK1
	W6w/rEX1ZYJegxD7hzCkMuxZj/XNMBAFMO3lzcI=
X-Google-Smtp-Source: APBJJlE0Zps+dwEMLz5aguppum5ydJDqanlQvE+FMr+imaJg5SgSrQeuq6Bi0Kze5kHHYIDH6ixYLsqu1fWXFaZ9e/Q=
X-Received: by 2002:a2e:9dd0:0:b0:2b4:6f17:31f7 with SMTP id
 x16-20020a2e9dd0000000b002b46f1731f7mr17275697ljj.27.1689184562686; Wed, 12
 Jul 2023 10:56:02 -0700 (PDT)
MIME-Version: 1.0
References: <3684.1661546302833449840@lists.yoctoproject.org>
 <23208.1689112487284330296@lists.yoctoproject.org> <CANNYZj-Lp4rkFT1fBsPhEETtLcB5htumQRqgOPz5kMuuJoabnQ@mail.gmail.com>
 <CA+EiEZJtQQj3KWq_jboo3Eh0mNQW_xNf=FLwpJ0WxNBXiDeOxw@mail.gmail.com>
In-Reply-To: <CA+EiEZJtQQj3KWq_jboo3Eh0mNQW_xNf=FLwpJ0WxNBXiDeOxw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 12 Jul 2023 19:55:51 +0200
Message-ID: <CANNYZj-sTnUxqyHM2W9TXPJK8-eTwo-5o3V6D3D5wXPNi7Lo=A@mail.gmail.com>
Subject: Re: [yocto] Devtool fails if SRCREV is set to ${AUTOREV} #kirkstone
 #devtool #yocto
To: Tom Isaacson <tom.isaacson@teknique.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jul 2023 17:56:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60557

You need to try if it's still broken on current master and then bisect
this, to identify where the issue was introduced, and where it was
fixed, if it was.

Alex

On Wed, 12 Jul 2023 at 19:43, Tom Isaacson <tom.isaacson@teknique.com> wrot=
e:
>
> It worked fine on Dunfell, it's only a problem now we've migrated. The
> workaround is to add "SRCREV =3D <your hash>" to
> poky/build/workspace/appends/<package>.bbappend
>
> What changes were there around AUTOREV between Dunfell and Kirkstone?
> Is this still an issue on Mickledore?
>
> On Thu, Jul 13, 2023 at 5:03=E2=80=AFAM Alexander Kanavin
> <alex.kanavin@gmail.com> wrote:
> >
> > Devtool does not have a maintainer. If you can look into the issue, it
> > would be appreciated.
> >
> > Alex
> >
> > On Tue, 11 Jul 2023 at 23:54, Tom Isaacson <tom.isaacson@teknique.com> =
wrote:
> > >
> > > Is there a fix for this yet? We just upgraded to Kirkstone and are ru=
nning into the same problem.
> > >
> > > Thanks.
> > >
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#60550): https://lists.yoctoproject.org/g/yocto/me=
ssage/60550
> > > Mute This Topic: https://lists.yoctoproject.org/mt/93100438/1686489
> > > Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/ki=
rkstone
> > > Mute #devtool:https://lists.yoctoproject.org/g/yocto/mutehashtag/devt=
ool
> > > Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanav=
in@gmail.com]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >
>
>
>
> --
> Tom Isaacson

