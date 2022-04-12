Return-Path: <mans.zigher@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A54C48BD2
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:42 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
 [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web12.8832.1649756738070931775
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 02:45:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Fi6ftSav;
 spf=pass (domain: gmail.com, ip: 209.85.216.49,
 mailfrom: mans.zigher@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id md4so9656445pjb.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 02:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=vsd/2QLKea1I3aXHZOYtiKggZ37JvHgySC+i6Hp5KIU=;
        b=Fi6ftSavtDTfJ5kEG0Yz88kBY3iMT1Zb3iF3KwFaEfrpwtLN3iK/8ZF05D9Onzlyl5
         feJGIBHqIus4xArz09BC9FKm+SySsVnQdjfo3+eFY1EIEuE7W1LSr4aQdec7lqN6T74m
         QewANDMOzewuDteV0KWi/R9HKmHBihw2jcm9RooathiiikqMkmgpNydWJxqvgFXFI7ok
         Uu8MNVbGqZMHVcIfuKeZNWGvQbCUfQNW9Bf3cs3Cxlbzt5OF9KEqGlTq4g/UO/EcYLcF
         meG61TuivvB/3G5yKVTHHvtx2CQ2ziMwvfjkunjaX3lt4mklfXI1oO2dXSRCKGZCDMqC
         51eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=vsd/2QLKea1I3aXHZOYtiKggZ37JvHgySC+i6Hp5KIU=;
        b=EtpxK00zcMOO1ikDRT1HgtjLRdcAwExB6bWH+NpBmlwXRG4UuYmBkqPoiMfp8ZFs1D
         QW7jfZPALmxeHQX0hNx3hkSLY6z4l1wWnApiBZI0l8Do3+Wvo+z3Za04ZgKIDXSYPDI+
         mI+UsUA1kU4THWNFV6/k8ZtE4BxBCSIlyzX+XxJf1v72BQlXJCHmLs81MycDXUV9bvT7
         UMnLD5L/ILHedRKT8GHIICxwt2QKbNa22c468FwYQ0ngPxS3cbsHc4AjmYLgWz3IX2H/
         cJS28vFLY1XMeEamFiXtGvnq8Z8Rp+3LBf46Zdiz3KXIJkvqQTpbN8zj3YAb3ril22oR
         d/eA==
X-Gm-Message-State: AOAM531MifQIjanmQX4zpbwDWgwizbrmIp3NCTlR9DKvt354+l57js6o
	JGRZm0d4pK7O7wEQU0sWCtoARUnOuhLnT3fUy1M=
X-Google-Smtp-Source: 
 ABdhPJxdR+j6xwQ2PBuW3VuiUJfOzsNfQQ1dhq5iyxQ1zBEcyRREY4lqklBF4XSjJMwU5FvuMbd4HM0gFxdnNhj0oIo=
X-Received: by 2002:a17:902:d714:b0:153:2e9:3bcc with SMTP id
 w20-20020a170902d71400b0015302e93bccmr36841740ply.83.1649756737315; Tue, 12
 Apr 2022 02:45:37 -0700 (PDT)
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
 <CAMKF1srdg40=F3Zvm2z_KYYWoM1raES-cK2ZHMFxpEXCiWn_WQ@mail.gmail.com>
In-Reply-To: 
 <CAMKF1srdg40=F3Zvm2z_KYYWoM1raES-cK2ZHMFxpEXCiWn_WQ@mail.gmail.com>
From: =?UTF-8?B?TcOlbnM=?= <mans.zigher@gmail.com>
Date: Tue, 12 Apr 2022 11:45:26 +0200
Message-ID: 
 <CAEhQi8k-3D6yrH5NE8w5g+Avkp=_fa2Forq-oOvjqkvwdsb_kw@mail.gmail.com>
Subject: Re: [yocto] [Question] How to handle GPLv3 packages?
To: Khem Raj <raj.khem@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56741

Hi,

Thanks for the advice. I am right now unsure how to solve it since I
am on thud but I will continue to work on this so once I get this done
and I have a solution that works I will try and remember to come back
and try to write something together for anyone else encountering this
issue.

/M=C3=A5ns

Den m=C3=A5n 11 apr. 2022 kl 18:20 skrev Khem Raj <raj.khem@gmail.com>:
>
> On Mon, Apr 11, 2022 at 1:29 AM Mans Zigher <mans.zigher@gmail.com> wrote=
:
> >
> > This is my first time working with them so I am learning a lot but
> > never encountered anything like it. Trying to look into what it would
> > require to move to a newer version it appears as if they have set up
> > their layers inside the poky dir and then they are using COREBASE when
> > one layer depends on the content of another layer. So again something
> > that should have been fairly simple will now require some additional
> > work. But thanks for all your help I appreciate it. I am getting a bit
> > off topic in this thread.
>
> This will be valiant effort but my advice is don't go alone if you
> want to undertake this
> SOC sdks have lot of nitty gritty issues that will pop up along the
> way and unless you
> have someone from SOC suppliers actively supporting you on this upgrade y=
ou will
> burn your time to no end.
>
> >
> > For anyone having issues with enabling INCOMPATIBLE_LICENSE make sure
> > to set it per image but before that you will have to make sure you are
> > not including any packages that have the incompatible license there is
> > some tedious work but it needs to be done.
>
> Perhaps a write-up will be beneficial for someone who trips into these
> issues in future.
>
> >
> > Thanks
> >
> > Den m=C3=A5n 11 apr. 2022 kl 09:16 skrev Alexander Kanavin <alex.kanavi=
n@gmail.com>:
> > >
> > > It's a contracting issue. You need to specify in writing that the
> > > vendor cannot provide ancient Yocto. Otherwise they won't bother.
> > >
> > > Alex
> > >
> > > On Mon, 11 Apr 2022 at 09:13, M=C3=A5ns <mans.zigher@gmail.com> wrote=
:
> > > >
> > > > Yes I know. Not sure why QC is stuck on Thud. Even newer releases f=
rom
> > > > QC for the target that we are working on is stuck at Thud.
> > > >
> > > > Mans
> > > >
> > > > Den fre 8 apr. 2022 kl 18:59 skrev Alexander Kanavin <alex.kanavin@=
gmail.com>:
> > > > >
> > > > > Thud has been EOL for a long time. You can see when the support b=
een
> > > > > added here (end of 2019 it seems):
> > > > > https://git.yoctoproject.org/poky/log/meta/lib/oeqa/selftest/case=
s/incompatible_lic.py?h=3Dmaster-next
> > > > >
> > > > > Alex
> > > > >
> > > > > On Fri, 8 Apr 2022 at 18:56, M=C3=A5ns <mans.zigher@gmail.com> wr=
ote:
> > > > > >
> > > > > > I am currently on Thud so I am missing the support from what I =
can
> > > > > > tell to set INCOMPATIBLE_LICENSE per image. I have tried to fin=
d the
> > > > > > commit that adds that support but am having some problems findi=
ng it.
> > > > > > Do you maybe know what I should look for to find the commit tha=
t adds
> > > > > > this support?
> > > > > >
> > > > > > Thanks
> > > > > >
> > > > > > Den fre 8 apr. 2022 kl 10:16 skrev Alexander Kanavin <alex.kana=
vin@gmail.com>:
> > > > > > >
> > > > > > > Hello Mans,
> > > > > > >
> > > > > > > please refer to the tests we have for the feature:
> > > > > > > https://git.yoctoproject.org/poky/tree/meta/lib/oeqa/selftest=
/cases/incompatible_lic.py?h=3Dmaster-next#n95
> > > > > > > (line 95 and below)
> > > > > > >
> > > > > > > The key bit is:
> > > > > > > INCOMPATIBLE_LICENSE:pn-core-image-minimal =3D "GPL-3.0* LGPL=
-3.0*"
> > > > > > > e.g. apply the restriction only to core-image-minimal.
> > > > > > >
> > > > > > > Alex
> > > > > > >
> > > > > > > On Fri, 8 Apr 2022 at 08:06, M=C3=A5ns <mans.zigher@gmail.com=
> wrote:
> > > > > > > >
> > > > > > > > Hi Alex,
> > > > > > > >
> > > > > > > > Could you maybe clarify what you mean with "setting
> > > > > > > > INCOMPATIBLE_LICENSE per image"? Do you mean that you have =
one
> > > > > > > > specific image that is used when you build an image for rel=
ease to the
> > > > > > > > customer and then one image for development?
> > > > > > > >
> > > > > > > > Thanks
> > > > > > > >
> > > > > > > > Den ons 6 apr. 2022 kl 11:04 skrev Alexander Kanavin <alex.=
kanavin@gmail.com>:
> > > > > > > > >
> > > > > > > > > I'd suggest you start by setting INCOMPATIBLE_LICENSE per=
 image, e.g.
> > > > > > > > > enable gpl3 ban only in the images that ship to the custo=
mers and not
> > > > > > > > > across the entire build. Then carefully look at what pull=
s in bash
> > > > > > > > > into those images and why, and reconfigure those pieces t=
o not do that
> > > > > > > > > (e.g. by reconfiguring the PACKAGECONFIGs), or rewrite th=
e scripts in
> > > > > > > > > posix shell.
> > > > > > > > >
> > > > > > > > > Alex
> > > > > > > > >
> > > > > > > > > On Wed, 6 Apr 2022 at 10:59, Mans Zigher <mans.zigher@gma=
il.com> wrote:
> > > > > > > > > >
> > > > > > > > > > Hi,
> > > > > > > > > >
> > > > > > > > > > I cannot use GPLv3 packages in our image build. I am no=
 legal expert
> > > > > > > > > > but from what I can understand most companies will not =
be able to
> > > > > > > > > > comply with this license without allowing the customer =
to compile and
> > > > > > > > > > deploy a new version of any GPLv3 package to the target=
. I know it is
> > > > > > > > > > possible to comply with this but we are using secure bo=
ot and have not
> > > > > > > > > > the time and probably no interest in setting up a solut=
ion for
> > > > > > > > > > allowing customers to be able to deploy GPLv3 packages =
on the target.
> > > > > > > > > > We are trying to make use of INCOMPATIBLE_LICENSE but t=
hat results in
> > > > > > > > > > several issues. We have made sure that we don't include=
 GPLv3 in the
> > > > > > > > > > image build using a manual process but would like to us=
e
> > > > > > > > > > INCOMPATIBLE_LICENSE to alert any developer about the i=
ssue. It seems
> > > > > > > > > > like INCOMPATIBLE_LICENSE is a bit harsh since it will =
catch any
> > > > > > > > > > packages even if it is only part of the SDK and also fo=
r native
> > > > > > > > > > packages that are not part of the image build.
> > > > > > > > > >
> > > > > > > > > > I cannot be the only one with this problem so how are o=
ther companies
> > > > > > > > > > solving this issue? Are they just not using the INCOMPA=
TIBLE_LICENSE?
> > > > > > > > > > Are you setting up a parallel process for checking for =
any
> > > > > > > > > > incompatible licenses issues?
> > > > > > > > > >
> > > > > > > > > > A more specific issue is that there are so many package=
s with bash
> > > > > > > > > > dependencies which are pulling in bash which is GPLv3 s=
o how have you
> > > > > > > > > > solved that? Currently we have done some pretty uggly h=
acks which I am
> > > > > > > > > > not that happy with but we needed to keep it out of the=
 image.
> > > > > > > > > >
> > > > > > > > > > Thanks
> > > > > > > > > >
> > > > > > > > > >
> > > > > > > > > >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#56717): https://lists.yoctoproject.org/g/yocto/mess=
age/56717
> > Mute This Topic: https://lists.yoctoproject.org/mt/90285507/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gma=
il.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

