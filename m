Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA21CC3527D
	for <webhook@archiver.kernel.org>; Fri,  8 Apr 2022 17:09:35 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.3352.1649405765201719680
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Apr 2022 01:16:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=h7o6v65Z;
 spf=pass (domain: gmail.com, ip: 209.85.167.41,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id x17so4624654lfa.10
        for <yocto@lists.yoctoproject.org>;
 Fri, 08 Apr 2022 01:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=iUpLIE/9B+TebIqPgixWo75gQWpOwroEBsSrpLbZPO0=;
        b=h7o6v65Zo3x52tbKy//WRbCk7OD54KuauSccv671s96eUy5o0Uxp9SXU/AmqDLXyNQ
         k77ZhO9n5NNqVcaPFgA0ZRnpmQDtDRSKtkITbKknI69EuXxtyxnBdayDbxGqvaRURXRy
         EdiqLNtnY+AyCESeeA1RX7kz/Yfzb0G3w6Wg++x+LRe8l+wzBw11yJkK33621zoTJIWP
         nxodcIAJGh/HA5XnXingKQtt1vg19PqkstEixajR6RgZd0lK3DzoJB1ztoZcFwExE8AL
         EyKDC803LansdjgivchlRSYK5Q3rsy1kYiwEeGKWfHRZZu0rH/LaMBYtNZ0KxVbex99/
         pCTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=iUpLIE/9B+TebIqPgixWo75gQWpOwroEBsSrpLbZPO0=;
        b=W3V0cmcz5URMXJNzhsSr/dA1Us+Gwu1w+TkGuqqABl//vPSoqNv8dKjyp8TvpfMn8P
         WW9i/edplre1kPR29wKcwHN5FILpZl3SuOiTIo8/tvPYjghRmYNvcEGeiy98cKQCDc08
         El24B4TloxqUozhUKZzfKVi1BtByOF6t0AByW7MLDrWjifgQ82tOB675sedKc+zqxIM1
         kWiaudPFTM/e2k0XHuu5FE9/wA2X4zrlc71m4/rDnsz79IdN5bPUe+6nZ5Wd3n+UZnVz
         16VX0/+ScLauaDJ/HVM9CXlSyTjPNho0gDHJiK6pncsb4sP+hZNSlfkT2knk0O/G0ckb
         +9LQ==
X-Gm-Message-State: AOAM5323GQEJ+0tIbJxFA2+islPpHd3erjRFP8HM6C3LZ/IJsbrEwPMf
	1zbpurz632nclQr3DBn/ddQI68N/CaZAmuKVWSI=
X-Google-Smtp-Source: 
 ABdhPJwE5iK3mAUIxK7bt06x6jTofm+jeSfQLo0MHHaj/e1hReIrc6q8w3xRkNgb/vx3HMrPjBrDb/2x7uyBlKiUWKg=
X-Received: by 2002:a05:6512:b19:b0:44a:b7c4:3d94 with SMTP id
 w25-20020a0565120b1900b0044ab7c43d94mr11787558lfu.358.1649405763179; Fri, 08
 Apr 2022 01:16:03 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
 <CANNYZj_UvDZWC+hD1pjxzkOKK_sL4wB+mu3a8GiPZVwUnEO4iA@mail.gmail.com>
 <CAEhQi8mHYXWi12epRd7anMqkVzjDk8yA2An6LFxzgN=6_BNMpw@mail.gmail.com>
In-Reply-To: 
 <CAEhQi8mHYXWi12epRd7anMqkVzjDk8yA2An6LFxzgN=6_BNMpw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 8 Apr 2022 10:15:51 +0200
Message-ID: 
 <CANNYZj-uMyMwhy2rR=7d_qm4akrB6DzVC05hZkUPDGrTh3voVQ@mail.gmail.com>
Subject: Re: [yocto] [Question] How to handle GPLv3 packages?
To: =?UTF-8?B?TcOlbnM=?= <mans.zigher@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Apr 2022 17:09:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56689

Hello Mans,

please refer to the tests we have for the feature:
https://git.yoctoproject.org/poky/tree/meta/lib/oeqa/selftest/cases/incompa=
tible_lic.py?h=3Dmaster-next#n95
(line 95 and below)

The key bit is:
INCOMPATIBLE_LICENSE:pn-core-image-minimal =3D "GPL-3.0* LGPL-3.0*"
e.g. apply the restriction only to core-image-minimal.

Alex

On Fri, 8 Apr 2022 at 08:06, M=C3=A5ns <mans.zigher@gmail.com> wrote:
>
> Hi Alex,
>
> Could you maybe clarify what you mean with "setting
> INCOMPATIBLE_LICENSE per image"? Do you mean that you have one
> specific image that is used when you build an image for release to the
> customer and then one image for development?
>
> Thanks
>
> Den ons 6 apr. 2022 kl 11:04 skrev Alexander Kanavin <alex.kanavin@gmail.=
com>:
> >
> > I'd suggest you start by setting INCOMPATIBLE_LICENSE per image, e.g.
> > enable gpl3 ban only in the images that ship to the customers and not
> > across the entire build. Then carefully look at what pulls in bash
> > into those images and why, and reconfigure those pieces to not do that
> > (e.g. by reconfiguring the PACKAGECONFIGs), or rewrite the scripts in
> > posix shell.
> >
> > Alex
> >
> > On Wed, 6 Apr 2022 at 10:59, Mans Zigher <mans.zigher@gmail.com> wrote:
> > >
> > > Hi,
> > >
> > > I cannot use GPLv3 packages in our image build. I am no legal expert
> > > but from what I can understand most companies will not be able to
> > > comply with this license without allowing the customer to compile and
> > > deploy a new version of any GPLv3 package to the target. I know it is
> > > possible to comply with this but we are using secure boot and have no=
t
> > > the time and probably no interest in setting up a solution for
> > > allowing customers to be able to deploy GPLv3 packages on the target.
> > > We are trying to make use of INCOMPATIBLE_LICENSE but that results in
> > > several issues. We have made sure that we don't include GPLv3 in the
> > > image build using a manual process but would like to use
> > > INCOMPATIBLE_LICENSE to alert any developer about the issue. It seems
> > > like INCOMPATIBLE_LICENSE is a bit harsh since it will catch any
> > > packages even if it is only part of the SDK and also for native
> > > packages that are not part of the image build.
> > >
> > > I cannot be the only one with this problem so how are other companies
> > > solving this issue? Are they just not using the INCOMPATIBLE_LICENSE?
> > > Are you setting up a parallel process for checking for any
> > > incompatible licenses issues?
> > >
> > > A more specific issue is that there are so many packages with bash
> > > dependencies which are pulling in bash which is GPLv3 so how have you
> > > solved that? Currently we have done some pretty uggly hacks which I a=
m
> > > not that happy with but we needed to keep it out of the image.
> > >
> > > Thanks
> > >
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#56672): https://lists.yoctoproject.org/g/yocto/me=
ssage/56672
> > > Mute This Topic: https://lists.yoctoproject.org/mt/90285507/1686489
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanav=
in@gmail.com]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >

