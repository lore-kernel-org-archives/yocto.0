Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9E86C49EA2
	for <webhook@archiver.kernel.org>; Mon, 11 Apr 2022 17:17:59 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web08.26297.1649661412212503065
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 00:16:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=je60Uz3M;
 spf=pass (domain: gmail.com, ip: 209.85.208.174,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f174.google.com with SMTP id 15so4109976ljw.8
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 00:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=+t7hJEPm68pOD7c5iBHDpLvUdIWkI5vR824EgTAmt6w=;
        b=je60Uz3M/7AdCawwOgxvpj2WvDKF1eKU86k94Els+wMt7WMcBtOtVQ0LCoo0JNQPLz
         agkzwoa5jxvgOPxb7zeddAve3oqJSrR4S9i+rJnqX49z5g7WvyGaGJwHJ/ih1inJnXJB
         QNJFpgpbNXIF13uV4TxV1jK+I5GV0Y/brWHVM3E35CvLMcAJA3GGCDK21qywdxES/ofa
         UO/REXEOFHQupbJ3V8ru/jaf61lekro1/byc3ohjUEAM/glxm5RpQXfBSpCh7swv2QK3
         qAiRLNt+t7QsTsPQRN1gs7RMUaIZbGCxnqVAvNS8qxb75Dn9kkupLfSGaqKi78jUL9NG
         beIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=+t7hJEPm68pOD7c5iBHDpLvUdIWkI5vR824EgTAmt6w=;
        b=xLgxyZ7W/3I6vLFUCZy1Cq1K9DwctFahUkN2H3bBmidZgEYQs+hFmq3Rs6YbUmDy82
         rR657impE+quyG4WmO/WTEzz9BGpbXEoGH/0ppr3zM2jQVJcL+Su5KurBf6txtfO2qaR
         E13KpMsSLN+j/7DVx0yBR03egcfABgpEq4wxE0wBL8SNVntmET3yyWKdl1ubRGnVFuI6
         AY+wiun7bFo/Cu9mnX33Uk8fv5EwHn8jH3e5bDrA11MVRP9QBLbiwkHV/AuSpha5h1O9
         z1tVq8qjYj8gWM2rwmLqUf2y7cBWyOAcLg24ChEUf1C1wM+HXorw/ROVq8ADtY3fI7AB
         5wJA==
X-Gm-Message-State: AOAM533nUzuUhdbt83gC5EQ8Km8wPRYU/nbPCUYS/Az6wueWPDfMwHxy
	RMbLVGWqWkzKTrdUcjVx9DP/URA7o5ot5gQgdxU=
X-Google-Smtp-Source: 
 ABdhPJx+jZP8FfAG+n+vqhrgXauM/4pSxBJaGkt6ELCSEQiGeAELmdLDOyLwUaSwfx3Ziwi0GJsw0WwJYQhk2ODXrK0=
X-Received: by 2002:a2e:9e8d:0:b0:24b:5af4:3feb with SMTP id
 f13-20020a2e9e8d000000b0024b5af43febmr5690700ljk.257.1649661410206; Mon, 11
 Apr 2022 00:16:50 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
 <CANNYZj_UvDZWC+hD1pjxzkOKK_sL4wB+mu3a8GiPZVwUnEO4iA@mail.gmail.com>
 <CAEhQi8mHYXWi12epRd7anMqkVzjDk8yA2An6LFxzgN=6_BNMpw@mail.gmail.com>
 <CANNYZj-uMyMwhy2rR=7d_qm4akrB6DzVC05hZkUPDGrTh3voVQ@mail.gmail.com>
 <CAEhQi8n_YgYG-k60pxUCcPziiq4n2RqYcBi8+GePn55_YT5Fzg@mail.gmail.com>
 <CANNYZj8B6EQugEEkdKvWnw1qxvRPUMAMBRj-26SakJt4EpjzbA@mail.gmail.com>
 <CAEhQi8m=_DTez_=NfNan0PEOKxb=Zv81VdKMoU_4sUEd2Twksw@mail.gmail.com>
In-Reply-To: 
 <CAEhQi8m=_DTez_=NfNan0PEOKxb=Zv81VdKMoU_4sUEd2Twksw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 11 Apr 2022 09:16:38 +0200
Message-ID: 
 <CANNYZj9i0MtLUn8Fc1GHo+3vstFV=5iMoe==N8XN1Mr=-z04+w@mail.gmail.com>
Subject: Re: [yocto] [Question] How to handle GPLv3 packages?
To: =?UTF-8?B?TcOlbnM=?= <mans.zigher@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Apr 2022 17:17:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56716

It's a contracting issue. You need to specify in writing that the
vendor cannot provide ancient Yocto. Otherwise they won't bother.

Alex

On Mon, 11 Apr 2022 at 09:13, M=C3=A5ns <mans.zigher@gmail.com> wrote:
>
> Yes I know. Not sure why QC is stuck on Thud. Even newer releases from
> QC for the target that we are working on is stuck at Thud.
>
> Mans
>
> Den fre 8 apr. 2022 kl 18:59 skrev Alexander Kanavin <alex.kanavin@gmail.=
com>:
> >
> > Thud has been EOL for a long time. You can see when the support been
> > added here (end of 2019 it seems):
> > https://git.yoctoproject.org/poky/log/meta/lib/oeqa/selftest/cases/inco=
mpatible_lic.py?h=3Dmaster-next
> >
> > Alex
> >
> > On Fri, 8 Apr 2022 at 18:56, M=C3=A5ns <mans.zigher@gmail.com> wrote:
> > >
> > > I am currently on Thud so I am missing the support from what I can
> > > tell to set INCOMPATIBLE_LICENSE per image. I have tried to find the
> > > commit that adds that support but am having some problems finding it.
> > > Do you maybe know what I should look for to find the commit that adds
> > > this support?
> > >
> > > Thanks
> > >
> > > Den fre 8 apr. 2022 kl 10:16 skrev Alexander Kanavin <alex.kanavin@gm=
ail.com>:
> > > >
> > > > Hello Mans,
> > > >
> > > > please refer to the tests we have for the feature:
> > > > https://git.yoctoproject.org/poky/tree/meta/lib/oeqa/selftest/cases=
/incompatible_lic.py?h=3Dmaster-next#n95
> > > > (line 95 and below)
> > > >
> > > > The key bit is:
> > > > INCOMPATIBLE_LICENSE:pn-core-image-minimal =3D "GPL-3.0* LGPL-3.0*"
> > > > e.g. apply the restriction only to core-image-minimal.
> > > >
> > > > Alex
> > > >
> > > > On Fri, 8 Apr 2022 at 08:06, M=C3=A5ns <mans.zigher@gmail.com> wrot=
e:
> > > > >
> > > > > Hi Alex,
> > > > >
> > > > > Could you maybe clarify what you mean with "setting
> > > > > INCOMPATIBLE_LICENSE per image"? Do you mean that you have one
> > > > > specific image that is used when you build an image for release t=
o the
> > > > > customer and then one image for development?
> > > > >
> > > > > Thanks
> > > > >
> > > > > Den ons 6 apr. 2022 kl 11:04 skrev Alexander Kanavin <alex.kanavi=
n@gmail.com>:
> > > > > >
> > > > > > I'd suggest you start by setting INCOMPATIBLE_LICENSE per image=
, e.g.
> > > > > > enable gpl3 ban only in the images that ship to the customers a=
nd not
> > > > > > across the entire build. Then carefully look at what pulls in b=
ash
> > > > > > into those images and why, and reconfigure those pieces to not =
do that
> > > > > > (e.g. by reconfiguring the PACKAGECONFIGs), or rewrite the scri=
pts in
> > > > > > posix shell.
> > > > > >
> > > > > > Alex
> > > > > >
> > > > > > On Wed, 6 Apr 2022 at 10:59, Mans Zigher <mans.zigher@gmail.com=
> wrote:
> > > > > > >
> > > > > > > Hi,
> > > > > > >
> > > > > > > I cannot use GPLv3 packages in our image build. I am no legal=
 expert
> > > > > > > but from what I can understand most companies will not be abl=
e to
> > > > > > > comply with this license without allowing the customer to com=
pile and
> > > > > > > deploy a new version of any GPLv3 package to the target. I kn=
ow it is
> > > > > > > possible to comply with this but we are using secure boot and=
 have not
> > > > > > > the time and probably no interest in setting up a solution fo=
r
> > > > > > > allowing customers to be able to deploy GPLv3 packages on the=
 target.
> > > > > > > We are trying to make use of INCOMPATIBLE_LICENSE but that re=
sults in
> > > > > > > several issues. We have made sure that we don't include GPLv3=
 in the
> > > > > > > image build using a manual process but would like to use
> > > > > > > INCOMPATIBLE_LICENSE to alert any developer about the issue. =
It seems
> > > > > > > like INCOMPATIBLE_LICENSE is a bit harsh since it will catch =
any
> > > > > > > packages even if it is only part of the SDK and also for nati=
ve
> > > > > > > packages that are not part of the image build.
> > > > > > >
> > > > > > > I cannot be the only one with this problem so how are other c=
ompanies
> > > > > > > solving this issue? Are they just not using the INCOMPATIBLE_=
LICENSE?
> > > > > > > Are you setting up a parallel process for checking for any
> > > > > > > incompatible licenses issues?
> > > > > > >
> > > > > > > A more specific issue is that there are so many packages with=
 bash
> > > > > > > dependencies which are pulling in bash which is GPLv3 so how =
have you
> > > > > > > solved that? Currently we have done some pretty uggly hacks w=
hich I am
> > > > > > > not that happy with but we needed to keep it out of the image=
.
> > > > > > >
> > > > > > > Thanks
> > > > > > >
> > > > > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > > > > > Links: You receive all messages sent to this group.
> > > > > > > View/Reply Online (#56672): https://lists.yoctoproject.org/g/=
yocto/message/56672
> > > > > > > Mute This Topic: https://lists.yoctoproject.org/mt/90285507/1=
686489
> > > > > > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > > > > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [al=
ex.kanavin@gmail.com]
> > > > > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > > > > >

