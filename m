Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9F7C433F5
	for <webhook@archiver.kernel.org>; Tue,  1 Mar 2022 08:58:15 +0000 (UTC)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com
 [209.85.217.54])
 by mx.groups.io with SMTP id smtpd.web11.6159.1646125095103268688
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Mar 2022 00:58:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IvdgW5mN;
 spf=pass (domain: gmail.com, ip: 209.85.217.54,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f54.google.com with SMTP id q9so15823573vsg.2
        for <yocto@lists.yoctoproject.org>;
 Tue, 01 Mar 2022 00:58:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=DKhYmCVMfjCkrPH10jY5oCl6zIxQYlHaWU3T0sZVzCI=;
        b=IvdgW5mNXXLaWFg1DHJ66bdIPlIltvLqoTlH0q1CyB8vJQPyC3+5LVn2Na4o7GSD+F
         ByW0AYBRjWsIQ62ngAoAnBLqeNDl/X4MUmHlTjrrMpnt+tnL8EYOUbIXxhPYw+zxNXHq
         bt9h/1oxYKoZA70pRA1IjqlFnizGXCh/g5YqcXNXoJoCh/8CxqfVFe2qGTzjRdpNsBa8
         ajhFenEYtwMMqbXDmypprjn0jblV/a1ZzjxO9Li+OqJ5L1AtAoVyAbgtmH4KURjaLnDB
         74DOiTxN6Bs/Yno+caj1La4mefAifQkhVJQ7SD9010Umid3wpEcrTiZdOeYr4fKa59lb
         BOyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=DKhYmCVMfjCkrPH10jY5oCl6zIxQYlHaWU3T0sZVzCI=;
        b=cPqgyIlVrFdg+bAkqmYwkwQjlMRmlKXM+W3ZYP3hDJ7Z7iRdE6AnRNS2WCVR2LpSkf
         1sOlhIo5c2F1J66JZsmCzloIdM3+Nd5iXl6Umegq5pIiLbxqbn/FcUHjmXCdcOUTgT2f
         lwX+G1kD7fFRp5jm8Nblw9cHC83C+u2mhLUtj9A64Ldv3HLpz7AEMb9mTQcU1BOqqJH0
         pfGoT0dE0v274mwxDeUkSi13B4ykmzzY1xjJ/GyZc30GrIC6wPp4cUVqpfB7hmUyVFZc
         Bdhubz+28dCBvefjj8GGwmGScxi/Z1ZOkD2ETM/SW02DD1b4aqv+8fnbAya4yc6TcMgd
         MZug==
X-Gm-Message-State: AOAM530RQFC21fYC9mHQCfdYSwxFVZQ+f05vu5v4EZSvk01JTUlyeV9R
	c+flZi5ZGEFo148Pl1GygUibdHnKqjJD1aDOkHI=
X-Google-Smtp-Source: 
 ABdhPJzJYQqAgwFN1kayO9xKBV1b0Ou0g2z9h03MGAuXArVR8X1ds+UIKqQi1WqYOXBmtU8IlmbMVO8TYAA5TGWVMPw=
X-Received: by 2002:a05:6102:cd0:b0:310:4636:78c5 with SMTP id
 g16-20020a0561020cd000b00310463678c5mr9463310vst.45.1646125094223; Tue, 01
 Mar 2022 00:58:14 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAH9dsRiArf_9GgQS4hCg5=J_Jk6cd3eiGaOiQd788+iSLTuU+g@mail.gmail.com>
 <19024.1646118271331133648@lists.yoctoproject.org>
 <CAH9dsRjncTUY9gwRHr_=-+ShHAxiRS-YqSz8W7_eNyWypWKCkw@mail.gmail.com>
In-Reply-To: 
 <CAH9dsRjncTUY9gwRHr_=-+ShHAxiRS-YqSz8W7_eNyWypWKCkw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 1 Mar 2022 09:58:02 +0100
Message-ID: 
 <CANNYZj_g0CTeoXOrSSXEXLuenL-UhSFQ=GVCbnX8XMbFvWdDBA@mail.gmail.com>
Subject: Re: [yocto] On managing debug and production builds
To: Vinayak Menon <menon.vinayak@gmail.com>
Cc: tomzy <tomasz.zyjewski@3mdeb.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Mar 2022 08:58:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56334

If you can't do what you need with only image recipes, then the only
option is to create an additional DISTRO config I'm afraid. Putting
these tweaks into machine config or local.conf is not correct.

Alex

On Tue, 1 Mar 2022 at 09:52, Vinayak Menon <menon.vinayak@gmail.com> wrote:
>
> On Tue, Mar 1, 2022 at 12:34 PM tomzy <tomasz.zyjewski@3mdeb.com> wrote:
> >
> > Hi Vinayak
> >
> > I believe that the best way to prepare debug and prod images is to crea=
te
> > include file (.inc) with base set of packages and features and then add=
 two
> > .bb recipes, one for prod and one for debug - every of this recipes wil=
l need
> > to include the `.inc` file. You could name them `base-image-prod.bb` an=
d
> > `base-image-debug.bb`. This way you could run either prod or debug buil=
ds
> > by running `bitbake base-image-debug` or `bitbake base-image-prod`.
> >
> > As for the machine, this would need to be set in local.conf every time =
you want
> > to switch the machine.To simplify this process, for the management of t=
he
> > configuration of the entire build (including the selection of debug / p=
rod image
> > or machine configuration), I recommend the kas[1] project with the very=
 helpful
> > kas-container tool.
>
>
> Thanks Tomasz. I will check kas.
> Yes, for selecting some of the packages I have created prod and debug
> image recipes.
> But this did not work for the kernel as the kernel recipe is picked as
> part of PROVIDER
> in machine conf. SoI had to use 2 conf to have the IMAGE_FEATURES (or
> any other var)
> set differently for prod and debug. This is for building the kernel
> recipie differently for prod
> and debug. Setting the IMAGE_FEATURES in the image recipe (and not in
> conf) causes
> 2 problems. One is that kernel and other bootloaders recipes are
> picked early via PROVIDER
>  in conf and not as packages included in image recipe. Secondly,
> setting the var in the image
> recipe breaks this command for e.g. "bitbake base-image-prod.bb
> base-image-debug.bb".
> Since the command parses the recipes only once for both image creation.
>
>
>
> >
> > [1] https://github.com/siemens/kas
> >
> > Regards,
> > Tomasz =C5=BByjewski
> > Embedded Systems Engineer
> > GPG: 5C495EA3EBEECA59
> > https://3mdeb.com | @3mdeb_com
> >
> >
> >
> >
>
>
> --
> vinayak
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56333): https://lists.yoctoproject.org/g/yocto/messag=
e/56333
> Mute This Topic: https://lists.yoctoproject.org/mt/89469781/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

