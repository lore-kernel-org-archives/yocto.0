Return-Path: <mans.zigher@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E27AC49ED8
	for <webhook@archiver.kernel.org>; Mon, 11 Apr 2022 17:18:00 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web12.27069.1649665791667239623
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 01:29:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Fmv7SzrM;
 spf=pass (domain: gmail.com, ip: 209.85.216.42,
 mailfrom: mans.zigher@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id
 nt14-20020a17090b248e00b001ca601046a4so17747549pjb.0
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 01:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=eX2xz5LWYXOeQDZHBM+0HtqdAtg2kgaC6F8WOLiAink=;
        b=Fmv7SzrM3yobhlxEl5nPTmeNvOMzsqp73Hdln7Aqz90yRRz53RiRHUbjMyN/v7v9rr
         wUOlACDezC08k2blagWNg/347cRMTJCgiiOE7AdJhfalDmlLQy9K1Kg/IUqp6ui1smbB
         76DfLDPEIRAm8jRvmWuVgFsE4L76++TtuxVUr1ta5aMD06Mr4zr12bB/Luwvs4ysJwr4
         cnxAUYovxpuPkdKVD9obTzac+yDwXudEXGT9qHFKuViOT4UzmBpBgHXgJFw/jdtwk4BP
         35s3tk2h+FCaR2Vn1xwsIMccUTFWvqv0VHDRiUGQhOf07RFeTqAWqHU4Lexl3ckmYGmE
         ZrXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=eX2xz5LWYXOeQDZHBM+0HtqdAtg2kgaC6F8WOLiAink=;
        b=op0VHdhzGgLMphWaJZlxF4nEizuEr0KYC5QIsF6rKhhSmZKfyGtQR78vEfyiiLiWyF
         bgf7UvKeInw2sJhLp3MXa/FIQ6e7xyHF21wKl7s/f8c0IwmAC7Clz2QUwBlk8o11EQ+i
         437a24YItHG4NEdz1i8NRiW6RY0cXn5fAuwo47g1RrRd7C40Ur5+NUzapieSA1Wy1I5n
         X5dvzo9vxvukLRAPu6XBD/GBAo4YFQsL+rPRLZIo0s3dwi1ILovC6OrWdM/PI8lpUG7C
         +5x4NFzmIQ6WVuNYyx3EFXQQ+rUuOey2u3reY4agxGcKj3i2l2V5Ll7sLxI6GM+HzbVX
         BRkQ==
X-Gm-Message-State: AOAM532DRkDcnXdqPpK2gK1loE7+6WPrl8xpcYPMKK2/lsaFQUp+J0C3
	+97t3T0sBoRAl67Bezqyg99+zYoE1F/Qn7aiWbE=
X-Google-Smtp-Source: 
 ABdhPJyE5/MzomwQsKxHjuC0T70YjdthtiEPCw3C4vkNrN86lAdtPKQKttYpilcwxyxct0c5mPjoL7eGIcVHBGVeXl0=
X-Received: by 2002:a17:90a:db08:b0:1c9:7cf3:6363 with SMTP id
 g8-20020a17090adb0800b001c97cf36363mr35803207pjv.35.1649665790959; Mon, 11
 Apr 2022 01:29:50 -0700 (PDT)
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
In-Reply-To: 
 <CANNYZj9i0MtLUn8Fc1GHo+3vstFV=5iMoe==N8XN1Mr=-z04+w@mail.gmail.com>
From: =?UTF-8?B?TcOlbnM=?= <mans.zigher@gmail.com>
Date: Mon, 11 Apr 2022 10:29:39 +0200
Message-ID: 
 <CAEhQi8m92ufUsEukhjJcN8usVbz7a5CYNHG4jw8PEVm-Egj1FQ@mail.gmail.com>
Subject: Re: [yocto] [Question] How to handle GPLv3 packages?
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Apr 2022 17:18:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56717

This is my first time working with them so I am learning a lot but
never encountered anything like it. Trying to look into what it would
require to move to a newer version it appears as if they have set up
their layers inside the poky dir and then they are using COREBASE when
one layer depends on the content of another layer. So again something
that should have been fairly simple will now require some additional
work. But thanks for all your help I appreciate it. I am getting a bit
off topic in this thread.

For anyone having issues with enabling INCOMPATIBLE_LICENSE make sure
to set it per image but before that you will have to make sure you are
not including any packages that have the incompatible license there is
some tedious work but it needs to be done.

Thanks

Den m=C3=A5n 11 apr. 2022 kl 09:16 skrev Alexander Kanavin <alex.kanavin@gm=
ail.com>:
>
> It's a contracting issue. You need to specify in writing that the
> vendor cannot provide ancient Yocto. Otherwise they won't bother.
>
> Alex
>
> On Mon, 11 Apr 2022 at 09:13, M=C3=A5ns <mans.zigher@gmail.com> wrote:
> >
> > Yes I know. Not sure why QC is stuck on Thud. Even newer releases from
> > QC for the target that we are working on is stuck at Thud.
> >
> > Mans
> >
> > Den fre 8 apr. 2022 kl 18:59 skrev Alexander Kanavin <alex.kanavin@gmai=
l.com>:
> > >
> > > Thud has been EOL for a long time. You can see when the support been
> > > added here (end of 2019 it seems):
> > > https://git.yoctoproject.org/poky/log/meta/lib/oeqa/selftest/cases/in=
compatible_lic.py?h=3Dmaster-next
> > >
> > > Alex
> > >
> > > On Fri, 8 Apr 2022 at 18:56, M=C3=A5ns <mans.zigher@gmail.com> wrote:
> > > >
> > > > I am currently on Thud so I am missing the support from what I can
> > > > tell to set INCOMPATIBLE_LICENSE per image. I have tried to find th=
e
> > > > commit that adds that support but am having some problems finding i=
t.
> > > > Do you maybe know what I should look for to find the commit that ad=
ds
> > > > this support?
> > > >
> > > > Thanks
> > > >
> > > > Den fre 8 apr. 2022 kl 10:16 skrev Alexander Kanavin <alex.kanavin@=
gmail.com>:
> > > > >
> > > > > Hello Mans,
> > > > >
> > > > > please refer to the tests we have for the feature:
> > > > > https://git.yoctoproject.org/poky/tree/meta/lib/oeqa/selftest/cas=
es/incompatible_lic.py?h=3Dmaster-next#n95
> > > > > (line 95 and below)
> > > > >
> > > > > The key bit is:
> > > > > INCOMPATIBLE_LICENSE:pn-core-image-minimal =3D "GPL-3.0* LGPL-3.0=
*"
> > > > > e.g. apply the restriction only to core-image-minimal.
> > > > >
> > > > > Alex
> > > > >
> > > > > On Fri, 8 Apr 2022 at 08:06, M=C3=A5ns <mans.zigher@gmail.com> wr=
ote:
> > > > > >
> > > > > > Hi Alex,
> > > > > >
> > > > > > Could you maybe clarify what you mean with "setting
> > > > > > INCOMPATIBLE_LICENSE per image"? Do you mean that you have one
> > > > > > specific image that is used when you build an image for release=
 to the
> > > > > > customer and then one image for development?
> > > > > >
> > > > > > Thanks
> > > > > >
> > > > > > Den ons 6 apr. 2022 kl 11:04 skrev Alexander Kanavin <alex.kana=
vin@gmail.com>:
> > > > > > >
> > > > > > > I'd suggest you start by setting INCOMPATIBLE_LICENSE per ima=
ge, e.g.
> > > > > > > enable gpl3 ban only in the images that ship to the customers=
 and not
> > > > > > > across the entire build. Then carefully look at what pulls in=
 bash
> > > > > > > into those images and why, and reconfigure those pieces to no=
t do that
> > > > > > > (e.g. by reconfiguring the PACKAGECONFIGs), or rewrite the sc=
ripts in
> > > > > > > posix shell.
> > > > > > >
> > > > > > > Alex
> > > > > > >
> > > > > > > On Wed, 6 Apr 2022 at 10:59, Mans Zigher <mans.zigher@gmail.c=
om> wrote:
> > > > > > > >
> > > > > > > > Hi,
> > > > > > > >
> > > > > > > > I cannot use GPLv3 packages in our image build. I am no leg=
al expert
> > > > > > > > but from what I can understand most companies will not be a=
ble to
> > > > > > > > comply with this license without allowing the customer to c=
ompile and
> > > > > > > > deploy a new version of any GPLv3 package to the target. I =
know it is
> > > > > > > > possible to comply with this but we are using secure boot a=
nd have not
> > > > > > > > the time and probably no interest in setting up a solution =
for
> > > > > > > > allowing customers to be able to deploy GPLv3 packages on t=
he target.
> > > > > > > > We are trying to make use of INCOMPATIBLE_LICENSE but that =
results in
> > > > > > > > several issues. We have made sure that we don't include GPL=
v3 in the
> > > > > > > > image build using a manual process but would like to use
> > > > > > > > INCOMPATIBLE_LICENSE to alert any developer about the issue=
. It seems
> > > > > > > > like INCOMPATIBLE_LICENSE is a bit harsh since it will catc=
h any
> > > > > > > > packages even if it is only part of the SDK and also for na=
tive
> > > > > > > > packages that are not part of the image build.
> > > > > > > >
> > > > > > > > I cannot be the only one with this problem so how are other=
 companies
> > > > > > > > solving this issue? Are they just not using the INCOMPATIBL=
E_LICENSE?
> > > > > > > > Are you setting up a parallel process for checking for any
> > > > > > > > incompatible licenses issues?
> > > > > > > >
> > > > > > > > A more specific issue is that there are so many packages wi=
th bash
> > > > > > > > dependencies which are pulling in bash which is GPLv3 so ho=
w have you
> > > > > > > > solved that? Currently we have done some pretty uggly hacks=
 which I am
> > > > > > > > not that happy with but we needed to keep it out of the ima=
ge.
> > > > > > > >
> > > > > > > > Thanks
> > > > > > > >
> > > > > > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > > > > > > Links: You receive all messages sent to this group.
> > > > > > > > View/Reply Online (#56672): https://lists.yoctoproject.org/=
g/yocto/message/56672
> > > > > > > > Mute This Topic: https://lists.yoctoproject.org/mt/90285507=
/1686489
> > > > > > > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > > > > > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [=
alex.kanavin@gmail.com]
> > > > > > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > > > > > >

