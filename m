Return-Path: <mans.zigher@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7319DC47088
	for <webhook@archiver.kernel.org>; Fri,  8 Apr 2022 17:09:36 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web08.8505.1649436990467403925
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Apr 2022 09:56:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jfjL2B+p;
 spf=pass (domain: gmail.com, ip: 209.85.214.174,
 mailfrom: mans.zigher@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id d15so8379163pll.10
        for <yocto@lists.yoctoproject.org>;
 Fri, 08 Apr 2022 09:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=0IgFZ3+8n4HVb37OjH4DSGZ35z0sxMWBVcD4k3nCTR4=;
        b=jfjL2B+p1Sr7HkAk7N2aJzAHQ7tVQvG+1qckhNDcO3gF4jDLw+CL0ZYvsoOsP6C9cl
         VFHSHQQH6rz30U7l7eIvxBTRwo9+tV9PgHzNBs4OjLCwxHD4dqPXfjmQ7dCy1M5KomGY
         HCr3LfXPp8a5jT2ExwyBROI00vsN7utdc82ARNYJv1mzB31CnE0keATMaaH3VJW4+eX8
         dBZYG0eozzwNEWiBFRnZH1LzWzzpHvebq1eDIcU6J3HL4tYzR1Ac+fskjgaynAzyjhI3
         iy8tbE6IOzkWC9J/wLTNXskQAmbNTVwz9TwnNaw0hQOtNa7JsLduYBdNwCV7qTk9FYmV
         09hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=0IgFZ3+8n4HVb37OjH4DSGZ35z0sxMWBVcD4k3nCTR4=;
        b=Z4vdoP3q+t7tly+ZAqHIkPgIjszcAxW54GFzH+D5V3Grd2HqHjPZlHc92IlY1jtEG6
         mauRHD8AqH35cMoG3fDTefY7rOOvwG1GWwo46Nfy0iL+ieJWsEqwsa4nSRekKopuUZG5
         2N1xaw2lj14yROCHGAivvxKsHaZvZ3kdw6OpGo5z78i1JJNt4Q3xf6U0E9jPvEvv0H/c
         nLQ+EZBJi+UqRGMWN3R2p7WInHEDzj9u0qGXMdfI/T5bK3pRLSwFrnYi8YOuW8HbIXns
         PeUOn0pGXuFEOAqAaO2JtNDy/A9A3IxXAd9HnpyoYRBJLfW7eVb5z+C4AIsIIYo5quV9
         prWA==
X-Gm-Message-State: AOAM532TNGYVUWmg+AmWJNb8y1EzvNb+k/QVsBq5g/1TMDR5pNOSH3YU
	rUvmC0go2JqRfNxb2NcPuCdoNFfNgdMCoaXc1Ss=
X-Google-Smtp-Source: 
 ABdhPJyxg42ZjXAshKjPu4kqlSggwiZzKSyka18gNLRMM3bjloM0g+AksKkyh3Cm1rm1v54Qd/ZnLRcEmA9Cor27aXs=
X-Received: by 2002:a17:902:834a:b0:14f:3337:35de with SMTP id
 z10-20020a170902834a00b0014f333735demr20398669pln.8.1649436989815; Fri, 08
 Apr 2022 09:56:29 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
 <CANNYZj_UvDZWC+hD1pjxzkOKK_sL4wB+mu3a8GiPZVwUnEO4iA@mail.gmail.com>
 <CAEhQi8mHYXWi12epRd7anMqkVzjDk8yA2An6LFxzgN=6_BNMpw@mail.gmail.com>
 <CANNYZj-uMyMwhy2rR=7d_qm4akrB6DzVC05hZkUPDGrTh3voVQ@mail.gmail.com>
In-Reply-To: 
 <CANNYZj-uMyMwhy2rR=7d_qm4akrB6DzVC05hZkUPDGrTh3voVQ@mail.gmail.com>
From: =?UTF-8?B?TcOlbnM=?= <mans.zigher@gmail.com>
Date: Fri, 8 Apr 2022 18:56:18 +0200
Message-ID: 
 <CAEhQi8n_YgYG-k60pxUCcPziiq4n2RqYcBi8+GePn55_YT5Fzg@mail.gmail.com>
Subject: Re: [yocto] [Question] How to handle GPLv3 packages?
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Apr 2022 17:09:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56698

I am currently on Thud so I am missing the support from what I can
tell to set INCOMPATIBLE_LICENSE per image. I have tried to find the
commit that adds that support but am having some problems finding it.
Do you maybe know what I should look for to find the commit that adds
this support?

Thanks

Den fre 8 apr. 2022 kl 10:16 skrev Alexander Kanavin <alex.kanavin@gmail.co=
m>:
>
> Hello Mans,
>
> please refer to the tests we have for the feature:
> https://git.yoctoproject.org/poky/tree/meta/lib/oeqa/selftest/cases/incom=
patible_lic.py?h=3Dmaster-next#n95
> (line 95 and below)
>
> The key bit is:
> INCOMPATIBLE_LICENSE:pn-core-image-minimal =3D "GPL-3.0* LGPL-3.0*"
> e.g. apply the restriction only to core-image-minimal.
>
> Alex
>
> On Fri, 8 Apr 2022 at 08:06, M=C3=A5ns <mans.zigher@gmail.com> wrote:
> >
> > Hi Alex,
> >
> > Could you maybe clarify what you mean with "setting
> > INCOMPATIBLE_LICENSE per image"? Do you mean that you have one
> > specific image that is used when you build an image for release to the
> > customer and then one image for development?
> >
> > Thanks
> >
> > Den ons 6 apr. 2022 kl 11:04 skrev Alexander Kanavin <alex.kanavin@gmai=
l.com>:
> > >
> > > I'd suggest you start by setting INCOMPATIBLE_LICENSE per image, e.g.
> > > enable gpl3 ban only in the images that ship to the customers and not
> > > across the entire build. Then carefully look at what pulls in bash
> > > into those images and why, and reconfigure those pieces to not do tha=
t
> > > (e.g. by reconfiguring the PACKAGECONFIGs), or rewrite the scripts in
> > > posix shell.
> > >
> > > Alex
> > >
> > > On Wed, 6 Apr 2022 at 10:59, Mans Zigher <mans.zigher@gmail.com> wrot=
e:
> > > >
> > > > Hi,
> > > >
> > > > I cannot use GPLv3 packages in our image build. I am no legal exper=
t
> > > > but from what I can understand most companies will not be able to
> > > > comply with this license without allowing the customer to compile a=
nd
> > > > deploy a new version of any GPLv3 package to the target. I know it =
is
> > > > possible to comply with this but we are using secure boot and have =
not
> > > > the time and probably no interest in setting up a solution for
> > > > allowing customers to be able to deploy GPLv3 packages on the targe=
t.
> > > > We are trying to make use of INCOMPATIBLE_LICENSE but that results =
in
> > > > several issues. We have made sure that we don't include GPLv3 in th=
e
> > > > image build using a manual process but would like to use
> > > > INCOMPATIBLE_LICENSE to alert any developer about the issue. It see=
ms
> > > > like INCOMPATIBLE_LICENSE is a bit harsh since it will catch any
> > > > packages even if it is only part of the SDK and also for native
> > > > packages that are not part of the image build.
> > > >
> > > > I cannot be the only one with this problem so how are other compani=
es
> > > > solving this issue? Are they just not using the INCOMPATIBLE_LICENS=
E?
> > > > Are you setting up a parallel process for checking for any
> > > > incompatible licenses issues?
> > > >
> > > > A more specific issue is that there are so many packages with bash
> > > > dependencies which are pulling in bash which is GPLv3 so how have y=
ou
> > > > solved that? Currently we have done some pretty uggly hacks which I=
 am
> > > > not that happy with but we needed to keep it out of the image.
> > > >
> > > > Thanks
> > > >
> > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > > Links: You receive all messages sent to this group.
> > > > View/Reply Online (#56672): https://lists.yoctoproject.org/g/yocto/=
message/56672
> > > > Mute This Topic: https://lists.yoctoproject.org/mt/90285507/1686489
> > > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kan=
avin@gmail.com]
> > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > >

