Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2F4C6370E
	for <webhook@archiver.kernel.org>; Mon, 11 Apr 2022 17:18:01 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web11.31864.1649694007904742665
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 09:20:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=R2Kwtvw8;
 spf=pass (domain: gmail.com, ip: 209.85.160.181,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id r25so3317801qtp.8
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 09:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=76SeLeBloxRAZdmXzE811KbE/XJDo0SmFaJ76Xpva2E=;
        b=R2Kwtvw8CL+BL0Da7ImXFzt5REz5cjohNJKB8Rf0x5BQfQsRbCmZ/vhPMSiJa+HDIw
         1lwPwUWJ9v3PHVTpQnwfF7nOFOQ2E2pBfg35WCrtP6n+8iBZm6ZSSMsuC/tAhor7RFSd
         +hlxHnEp+z5wcz3de+nmIErYUpKSWJR5d8RPfHAclJnaeCpb0o5jrZ88TeV1WKj1W3Ss
         25OFbSII9w+wfHuYAhYznRXCY3AInpmajzSdvLHtU9PIzQ8M4qq0LtmVMy2B78DZvdy7
         uiWuVQpoYG7wuslHYIzlxRUM5lXine7WX2dEYE/dPM4/2aBCf3d9gSfEgPiC2CxLipBJ
         +bQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=76SeLeBloxRAZdmXzE811KbE/XJDo0SmFaJ76Xpva2E=;
        b=4mf+HvPdEwRioXwoZS9M1uOhu+Js4g+evzqcAFpDPVOyzVVtvgFkSAf49wJobByvdz
         DQEc+GX5lB9iEh0bM64fWSiibGdflc1nB9AyThwJlfYCJixMVTZIlsKFXxjm/LqZwdpu
         mdnLg4iw2qO+02zFY10569qR/VC4d3Mx85oVz8dfyr817CAA5cA4MdjdJg4OCTjfYAg4
         2NG2yeXcja4Ijp4Zeopx2A8VN8ohU/ZyBArWcI/UXGoiMYSnk3ehYRzuRC+96ZodvNOW
         drJe+2fxikHkT54DKfg4xwMbILECb8IlpkW7iX7ttmp9uJ1C619zqs67YKBUQ+kxdD/H
         O5Ng==
X-Gm-Message-State: AOAM530tbU6p/5pgN+7H023xkVu+ErelHfVcOQu88fMuizvYXTXY+pV8
	FCvQrYuzrS1+547dIFT14Muq0Tys0XQplqAp4nI=
X-Google-Smtp-Source: 
 ABdhPJxYsV96DSUbkHtNMXMtyGZfb2pQLYSJ6I0G6jpHyZL7BX9YsLAt73HNsfgL8DmAnLhea+ue4GVNU23oW4EGN5Q=
X-Received: by 2002:ac8:6b17:0:b0:2ed:1593:94c8 with SMTP id
 w23-20020ac86b17000000b002ed159394c8mr79177qts.229.1649694006814; Mon, 11 Apr
 2022 09:20:06 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
 <CANNYZj_UvDZWC+hD1pjxzkOKK_sL4wB+mu3a8GiPZVwUnEO4iA@mail.gmail.com>
 <CAEhQi8mHYXWi12epRd7anMqkVzjDk8yA2An6LFxzgN=6_BNMpw@mail.gmail.com>
 <CANNYZj-uMyMwhy2rR=7d_qm4akrB6DzVC05hZkUPDGrTh3voVQ@mail.gmail.com>
 <CAEhQi8n_YgYG-k60pxUCcPziiq4n2RqYcBi8+GePn55_YT5Fzg@mail.gmail.com>
 <CANNYZj8B6EQugEEkdKvWnw1qxvRPUMAMBRj-26SakJt4EpjzbA@mail.gmail.com>
 <CAEhQi8m=_DTez_=NfNan0PEOKxb=Zv81VdKMoU_4sUEd2Twksw@mail.gmail.com>
 <CANNYZj9i0MtLUn8Fc1GHo+3vstFV=5iMoe==N8XN1Mr=-z04+w@mail.gmail.com>
 <CAEhQi8m92ufUsEukhjJcN8usVbz7a5CYNHG4jw8PEVm-Egj1FQ@mail.gmail.com>
In-Reply-To: 
 <CAEhQi8m92ufUsEukhjJcN8usVbz7a5CYNHG4jw8PEVm-Egj1FQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 11 Apr 2022 09:19:40 -0700
Message-ID: 
 <CAMKF1srdg40=F3Zvm2z_KYYWoM1raES-cK2ZHMFxpEXCiWn_WQ@mail.gmail.com>
Subject: Re: [yocto] [Question] How to handle GPLv3 packages?
To: Mans Zigher <mans.zigher@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Apr 2022 17:18:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56719

On Mon, Apr 11, 2022 at 1:29 AM Mans Zigher <mans.zigher@gmail.com> wrote:
>
> This is my first time working with them so I am learning a lot but
> never encountered anything like it. Trying to look into what it would
> require to move to a newer version it appears as if they have set up
> their layers inside the poky dir and then they are using COREBASE when
> one layer depends on the content of another layer. So again something
> that should have been fairly simple will now require some additional
> work. But thanks for all your help I appreciate it. I am getting a bit
> off topic in this thread.

This will be valiant effort but my advice is don't go alone if you
want to undertake this
SOC sdks have lot of nitty gritty issues that will pop up along the
way and unless you
have someone from SOC suppliers actively supporting you on this upgrade you=
 will
burn your time to no end.

>
> For anyone having issues with enabling INCOMPATIBLE_LICENSE make sure
> to set it per image but before that you will have to make sure you are
> not including any packages that have the incompatible license there is
> some tedious work but it needs to be done.

Perhaps a write-up will be beneficial for someone who trips into these
issues in future.

>
> Thanks
>
> Den m=C3=A5n 11 apr. 2022 kl 09:16 skrev Alexander Kanavin <alex.kanavin@=
gmail.com>:
> >
> > It's a contracting issue. You need to specify in writing that the
> > vendor cannot provide ancient Yocto. Otherwise they won't bother.
> >
> > Alex
> >
> > On Mon, 11 Apr 2022 at 09:13, M=C3=A5ns <mans.zigher@gmail.com> wrote:
> > >
> > > Yes I know. Not sure why QC is stuck on Thud. Even newer releases fro=
m
> > > QC for the target that we are working on is stuck at Thud.
> > >
> > > Mans
> > >
> > > Den fre 8 apr. 2022 kl 18:59 skrev Alexander Kanavin <alex.kanavin@gm=
ail.com>:
> > > >
> > > > Thud has been EOL for a long time. You can see when the support bee=
n
> > > > added here (end of 2019 it seems):
> > > > https://git.yoctoproject.org/poky/log/meta/lib/oeqa/selftest/cases/=
incompatible_lic.py?h=3Dmaster-next
> > > >
> > > > Alex
> > > >
> > > > On Fri, 8 Apr 2022 at 18:56, M=C3=A5ns <mans.zigher@gmail.com> wrot=
e:
> > > > >
> > > > > I am currently on Thud so I am missing the support from what I ca=
n
> > > > > tell to set INCOMPATIBLE_LICENSE per image. I have tried to find =
the
> > > > > commit that adds that support but am having some problems finding=
 it.
> > > > > Do you maybe know what I should look for to find the commit that =
adds
> > > > > this support?
> > > > >
> > > > > Thanks
> > > > >
> > > > > Den fre 8 apr. 2022 kl 10:16 skrev Alexander Kanavin <alex.kanavi=
n@gmail.com>:
> > > > > >
> > > > > > Hello Mans,
> > > > > >
> > > > > > please refer to the tests we have for the feature:
> > > > > > https://git.yoctoproject.org/poky/tree/meta/lib/oeqa/selftest/c=
ases/incompatible_lic.py?h=3Dmaster-next#n95
> > > > > > (line 95 and below)
> > > > > >
> > > > > > The key bit is:
> > > > > > INCOMPATIBLE_LICENSE:pn-core-image-minimal =3D "GPL-3.0* LGPL-3=
.0*"
> > > > > > e.g. apply the restriction only to core-image-minimal.
> > > > > >
> > > > > > Alex
> > > > > >
> > > > > > On Fri, 8 Apr 2022 at 08:06, M=C3=A5ns <mans.zigher@gmail.com> =
wrote:
> > > > > > >
> > > > > > > Hi Alex,
> > > > > > >
> > > > > > > Could you maybe clarify what you mean with "setting
> > > > > > > INCOMPATIBLE_LICENSE per image"? Do you mean that you have on=
e
> > > > > > > specific image that is used when you build an image for relea=
se to the
> > > > > > > customer and then one image for development?
> > > > > > >
> > > > > > > Thanks
> > > > > > >
> > > > > > > Den ons 6 apr. 2022 kl 11:04 skrev Alexander Kanavin <alex.ka=
navin@gmail.com>:
> > > > > > > >
> > > > > > > > I'd suggest you start by setting INCOMPATIBLE_LICENSE per i=
mage, e.g.
> > > > > > > > enable gpl3 ban only in the images that ship to the custome=
rs and not
> > > > > > > > across the entire build. Then carefully look at what pulls =
in bash
> > > > > > > > into those images and why, and reconfigure those pieces to =
not do that
> > > > > > > > (e.g. by reconfiguring the PACKAGECONFIGs), or rewrite the =
scripts in
> > > > > > > > posix shell.
> > > > > > > >
> > > > > > > > Alex
> > > > > > > >
> > > > > > > > On Wed, 6 Apr 2022 at 10:59, Mans Zigher <mans.zigher@gmail=
.com> wrote:
> > > > > > > > >
> > > > > > > > > Hi,
> > > > > > > > >
> > > > > > > > > I cannot use GPLv3 packages in our image build. I am no l=
egal expert
> > > > > > > > > but from what I can understand most companies will not be=
 able to
> > > > > > > > > comply with this license without allowing the customer to=
 compile and
> > > > > > > > > deploy a new version of any GPLv3 package to the target. =
I know it is
> > > > > > > > > possible to comply with this but we are using secure boot=
 and have not
> > > > > > > > > the time and probably no interest in setting up a solutio=
n for
> > > > > > > > > allowing customers to be able to deploy GPLv3 packages on=
 the target.
> > > > > > > > > We are trying to make use of INCOMPATIBLE_LICENSE but tha=
t results in
> > > > > > > > > several issues. We have made sure that we don't include G=
PLv3 in the
> > > > > > > > > image build using a manual process but would like to use
> > > > > > > > > INCOMPATIBLE_LICENSE to alert any developer about the iss=
ue. It seems
> > > > > > > > > like INCOMPATIBLE_LICENSE is a bit harsh since it will ca=
tch any
> > > > > > > > > packages even if it is only part of the SDK and also for =
native
> > > > > > > > > packages that are not part of the image build.
> > > > > > > > >
> > > > > > > > > I cannot be the only one with this problem so how are oth=
er companies
> > > > > > > > > solving this issue? Are they just not using the INCOMPATI=
BLE_LICENSE?
> > > > > > > > > Are you setting up a parallel process for checking for an=
y
> > > > > > > > > incompatible licenses issues?
> > > > > > > > >
> > > > > > > > > A more specific issue is that there are so many packages =
with bash
> > > > > > > > > dependencies which are pulling in bash which is GPLv3 so =
how have you
> > > > > > > > > solved that? Currently we have done some pretty uggly hac=
ks which I am
> > > > > > > > > not that happy with but we needed to keep it out of the i=
mage.
> > > > > > > > >
> > > > > > > > > Thanks
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56717): https://lists.yoctoproject.org/g/yocto/messag=
e/56717
> Mute This Topic: https://lists.yoctoproject.org/mt/90285507/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

