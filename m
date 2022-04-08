Return-Path: <mans.zigher@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89482C38A2D
	for <webhook@archiver.kernel.org>; Fri,  8 Apr 2022 17:09:36 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web08.2714.1649397985534613938
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Apr 2022 23:06:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lNMc5TXg;
 spf=pass (domain: gmail.com, ip: 209.85.214.180,
 mailfrom: mans.zigher@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id k13so1808819plk.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 07 Apr 2022 23:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rhZMphZGJRYqxV7OVvcDCzDcSVysChGR6olevezvG9g=;
        b=lNMc5TXgnyhlIPYyStZTh0ajEcazwBsdkgkC0g1XRgFVvupOprcLUv353+xb2kggmT
         Bkq1wZIKlMa5/6GJi8FldIvZsdZALfrtLEGPaB5IRYb9YZS9LX4SOVzeYY12LG07Ggv3
         7kOmfzKSpTmm7LuA4ydRwCXprLS34XIu2xGIL4gYZafYqHXlP3fVp0YsYO4zQNKRvZxa
         o5HNKaG3I8LFWbWUCpnG9doHNl5pSB3ksZynnTSSd8brTRQO8p0Lstwgw99V6hS2tyFE
         nwL1UAxPye6oR15eRtuYFXKAPY0F3l99nE8robN4idI39Lehzk9R/Wgj/ymycO+cWqHn
         VZiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rhZMphZGJRYqxV7OVvcDCzDcSVysChGR6olevezvG9g=;
        b=bDWNNfgNnfWLnkaFlVNCWNEdhjypJkZ/exwIRTR8B6GuPzXXSUjuaaSLgwxD5G8KKu
         Nc5k6qrh1T0R3i89umQvRaqcUXw4ISvFwD786v29yxDxPFj2OJoXgMpkYSwXgbISrb1X
         K9AMxg/qAyudZNewji5Sd3JCXJvqU7hj1FThU7afvWuZ/vKjLduCc3SdfB+shsT+pt8W
         OmBYfPd1sAzMPTsPS3mpC0M40ie1wu3r4vlKN3h6Nx1LbWa0ne7A5MHL7/86LpJvFH6W
         ZiaNdBCWVu/rISekXkHazbc8e3NXKoh1uOYk6h6FdTpWGWK2gqt/l4JJMlQmeD+7VzJ6
         E4dg==
X-Gm-Message-State: AOAM530/SeVAnQuJ/rGaWQZ3RSYIY7yL3B2gPiPS2aX8CFBWCNqHv1Af
	P8z5Rek7npREw4KY4EiTTj2C9oB+azjguWsASB4=
X-Google-Smtp-Source: 
 ABdhPJwlTAGx6Ok7/KbfwzvCY5L5EVOnKp+aqdWZxNCQuIYGETKx7NHBSXBpnqY0AqCmdfDp3YbNlu5XNDQfnY0wgbk=
X-Received: by 2002:a17:902:834a:b0:14f:3337:35de with SMTP id
 z10-20020a170902834a00b0014f333735demr17812628pln.8.1649397984950; Thu, 07
 Apr 2022 23:06:24 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
 <CANNYZj_UvDZWC+hD1pjxzkOKK_sL4wB+mu3a8GiPZVwUnEO4iA@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_UvDZWC+hD1pjxzkOKK_sL4wB+mu3a8GiPZVwUnEO4iA@mail.gmail.com>
From: =?UTF-8?B?TcOlbnM=?= <mans.zigher@gmail.com>
Date: Fri, 8 Apr 2022 08:06:13 +0200
Message-ID: 
 <CAEhQi8mHYXWi12epRd7anMqkVzjDk8yA2An6LFxzgN=6_BNMpw@mail.gmail.com>
Subject: Re: [yocto] [Question] How to handle GPLv3 packages?
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Apr 2022 17:09:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56688

Hi Alex,

Could you maybe clarify what you mean with "setting
INCOMPATIBLE_LICENSE per image"? Do you mean that you have one
specific image that is used when you build an image for release to the
customer and then one image for development?

Thanks

Den ons 6 apr. 2022 kl 11:04 skrev Alexander Kanavin <alex.kanavin@gmail.com>:
>
> I'd suggest you start by setting INCOMPATIBLE_LICENSE per image, e.g.
> enable gpl3 ban only in the images that ship to the customers and not
> across the entire build. Then carefully look at what pulls in bash
> into those images and why, and reconfigure those pieces to not do that
> (e.g. by reconfiguring the PACKAGECONFIGs), or rewrite the scripts in
> posix shell.
>
> Alex
>
> On Wed, 6 Apr 2022 at 10:59, Mans Zigher <mans.zigher@gmail.com> wrote:
> >
> > Hi,
> >
> > I cannot use GPLv3 packages in our image build. I am no legal expert
> > but from what I can understand most companies will not be able to
> > comply with this license without allowing the customer to compile and
> > deploy a new version of any GPLv3 package to the target. I know it is
> > possible to comply with this but we are using secure boot and have not
> > the time and probably no interest in setting up a solution for
> > allowing customers to be able to deploy GPLv3 packages on the target.
> > We are trying to make use of INCOMPATIBLE_LICENSE but that results in
> > several issues. We have made sure that we don't include GPLv3 in the
> > image build using a manual process but would like to use
> > INCOMPATIBLE_LICENSE to alert any developer about the issue. It seems
> > like INCOMPATIBLE_LICENSE is a bit harsh since it will catch any
> > packages even if it is only part of the SDK and also for native
> > packages that are not part of the image build.
> >
> > I cannot be the only one with this problem so how are other companies
> > solving this issue? Are they just not using the INCOMPATIBLE_LICENSE?
> > Are you setting up a parallel process for checking for any
> > incompatible licenses issues?
> >
> > A more specific issue is that there are so many packages with bash
> > dependencies which are pulling in bash which is GPLv3 so how have you
> > solved that? Currently we have done some pretty uggly hacks which I am
> > not that happy with but we needed to keep it out of the image.
> >
> > Thanks
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#56672): https://lists.yoctoproject.org/g/yocto/message/56672
> > Mute This Topic: https://lists.yoctoproject.org/mt/90285507/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >

