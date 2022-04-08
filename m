Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D5A3C38A2C
	for <webhook@archiver.kernel.org>; Fri,  8 Apr 2022 17:09:36 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web09.8583.1649437155200611248
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Apr 2022 09:59:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZAAmTdtn;
 spf=pass (domain: gmail.com, ip: 209.85.167.51,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id k21so16127725lfe.4
        for <yocto@lists.yoctoproject.org>;
 Fri, 08 Apr 2022 09:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=cR7nGSw5abf6gKbXbAb03rapfbiGeu0q13RTuXgkMnE=;
        b=ZAAmTdtnvm+fE7eq1XT9i0ZWsnB1QACdEFIjOpA6s1OWBUj9Lf3itqCXR2M6laliz2
         ZOlxQ+PpZrljd7IvIBKH1iwdnlzIErKfVzf7DDrl3Nfg2qDFvIEHZ/12BM80LymXQ5Jq
         ph41P6uTHJVMXZYcphqnw9R5i72VSG7itEFzsEbolt+tCzV7zHonS7TWeTxoQqBImCvJ
         GE1n3Sd47Rw3rozpTA0fDLAN09BRNX2X6rmR2eaSvPMLEh7Tfof2LyCLZUyNMRSadqqa
         BhLCSX5/UGGbTZlnADiWEPOVnc9OUaqoZH531zVtgSj17yCcWfJZQjuhybAQFslyKnGG
         QyYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=cR7nGSw5abf6gKbXbAb03rapfbiGeu0q13RTuXgkMnE=;
        b=56g/rF0cJ2gO1TAPVKP/3h+FzyrwAhvGNx6esmEZ6aZiG2zf/AuFT0TpE81/PRFA/B
         E+NVs8LS+jTMbH/X83XS9lRlET9E8R83sl/7/C6BCu8DAy6/e5wZxB+j7jxjf0C/p2+p
         TjEpo5AH79qqsFvJPxGBeSUvq2QbVXkO7/eHlmWVaNULIJE1GgxML1Ie9VupEvbPlMmZ
         fuok4tJwbDsJTorVvKgAVoKVneQdjpgz0ZrDpd72aq3rsP6aD78NctIOBhuJ9bq/A2Sw
         Bkbqg4uwhEV043Rpugb7Drmo+Rk0pDNBZ0AuHbAd2cUgbZxcQIm3kujfJktNvt9KJI+I
         nP4w==
X-Gm-Message-State: AOAM532atRC2+WImmRNm4P/o2pX0lbdBlr7mPCWbfu7xKvr/RDCh0Woz
	L5u9eIoUDnckDExXXX75tIGEFD1jOMJdxImgqH8=
X-Google-Smtp-Source: 
 ABdhPJzQ5zwkNLvIN/OTrVdjemPMocq0A1X9AxzBzhCVfH6miatziJe7Xr+ovhls6SGAmhS+up7c+f0vAWnq7F8jYUk=
X-Received: by 2002:a05:6512:31cb:b0:44a:1311:60e4 with SMTP id
 j11-20020a05651231cb00b0044a131160e4mr13370581lfe.521.1649437153257; Fri, 08
 Apr 2022 09:59:13 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
 <CANNYZj_UvDZWC+hD1pjxzkOKK_sL4wB+mu3a8GiPZVwUnEO4iA@mail.gmail.com>
 <CAEhQi8mHYXWi12epRd7anMqkVzjDk8yA2An6LFxzgN=6_BNMpw@mail.gmail.com>
 <CANNYZj-uMyMwhy2rR=7d_qm4akrB6DzVC05hZkUPDGrTh3voVQ@mail.gmail.com>
 <CAEhQi8n_YgYG-k60pxUCcPziiq4n2RqYcBi8+GePn55_YT5Fzg@mail.gmail.com>
In-Reply-To: 
 <CAEhQi8n_YgYG-k60pxUCcPziiq4n2RqYcBi8+GePn55_YT5Fzg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 8 Apr 2022 18:59:01 +0200
Message-ID: 
 <CANNYZj8B6EQugEEkdKvWnw1qxvRPUMAMBRj-26SakJt4EpjzbA@mail.gmail.com>
Subject: Re: [yocto] [Question] How to handle GPLv3 packages?
To: =?UTF-8?B?TcOlbnM=?= <mans.zigher@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Apr 2022 17:09:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56699

Thud has been EOL for a long time. You can see when the support been
added here (end of 2019 it seems):
https://git.yoctoproject.org/poky/log/meta/lib/oeqa/selftest/cases/incompat=
ible_lic.py?h=3Dmaster-next

Alex

On Fri, 8 Apr 2022 at 18:56, M=C3=A5ns <mans.zigher@gmail.com> wrote:
>
> I am currently on Thud so I am missing the support from what I can
> tell to set INCOMPATIBLE_LICENSE per image. I have tried to find the
> commit that adds that support but am having some problems finding it.
> Do you maybe know what I should look for to find the commit that adds
> this support?
>
> Thanks
>
> Den fre 8 apr. 2022 kl 10:16 skrev Alexander Kanavin <alex.kanavin@gmail.=
com>:
> >
> > Hello Mans,
> >
> > please refer to the tests we have for the feature:
> > https://git.yoctoproject.org/poky/tree/meta/lib/oeqa/selftest/cases/inc=
ompatible_lic.py?h=3Dmaster-next#n95
> > (line 95 and below)
> >
> > The key bit is:
> > INCOMPATIBLE_LICENSE:pn-core-image-minimal =3D "GPL-3.0* LGPL-3.0*"
> > e.g. apply the restriction only to core-image-minimal.
> >
> > Alex
> >
> > On Fri, 8 Apr 2022 at 08:06, M=C3=A5ns <mans.zigher@gmail.com> wrote:
> > >
> > > Hi Alex,
> > >
> > > Could you maybe clarify what you mean with "setting
> > > INCOMPATIBLE_LICENSE per image"? Do you mean that you have one
> > > specific image that is used when you build an image for release to th=
e
> > > customer and then one image for development?
> > >
> > > Thanks
> > >
> > > Den ons 6 apr. 2022 kl 11:04 skrev Alexander Kanavin <alex.kanavin@gm=
ail.com>:
> > > >
> > > > I'd suggest you start by setting INCOMPATIBLE_LICENSE per image, e.=
g.
> > > > enable gpl3 ban only in the images that ship to the customers and n=
ot
> > > > across the entire build. Then carefully look at what pulls in bash
> > > > into those images and why, and reconfigure those pieces to not do t=
hat
> > > > (e.g. by reconfiguring the PACKAGECONFIGs), or rewrite the scripts =
in
> > > > posix shell.
> > > >
> > > > Alex
> > > >
> > > > On Wed, 6 Apr 2022 at 10:59, Mans Zigher <mans.zigher@gmail.com> wr=
ote:
> > > > >
> > > > > Hi,
> > > > >
> > > > > I cannot use GPLv3 packages in our image build. I am no legal exp=
ert
> > > > > but from what I can understand most companies will not be able to
> > > > > comply with this license without allowing the customer to compile=
 and
> > > > > deploy a new version of any GPLv3 package to the target. I know i=
t is
> > > > > possible to comply with this but we are using secure boot and hav=
e not
> > > > > the time and probably no interest in setting up a solution for
> > > > > allowing customers to be able to deploy GPLv3 packages on the tar=
get.
> > > > > We are trying to make use of INCOMPATIBLE_LICENSE but that result=
s in
> > > > > several issues. We have made sure that we don't include GPLv3 in =
the
> > > > > image build using a manual process but would like to use
> > > > > INCOMPATIBLE_LICENSE to alert any developer about the issue. It s=
eems
> > > > > like INCOMPATIBLE_LICENSE is a bit harsh since it will catch any
> > > > > packages even if it is only part of the SDK and also for native
> > > > > packages that are not part of the image build.
> > > > >
> > > > > I cannot be the only one with this problem so how are other compa=
nies
> > > > > solving this issue? Are they just not using the INCOMPATIBLE_LICE=
NSE?
> > > > > Are you setting up a parallel process for checking for any
> > > > > incompatible licenses issues?
> > > > >
> > > > > A more specific issue is that there are so many packages with bas=
h
> > > > > dependencies which are pulling in bash which is GPLv3 so how have=
 you
> > > > > solved that? Currently we have done some pretty uggly hacks which=
 I am
> > > > > not that happy with but we needed to keep it out of the image.
> > > > >
> > > > > Thanks
> > > > >
> > > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > > > Links: You receive all messages sent to this group.
> > > > > View/Reply Online (#56672): https://lists.yoctoproject.org/g/yoct=
o/message/56672
> > > > > Mute This Topic: https://lists.yoctoproject.org/mt/90285507/16864=
89
> > > > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.k=
anavin@gmail.com]
> > > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > > >

