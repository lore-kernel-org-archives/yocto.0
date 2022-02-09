Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0815CC433EF
	for <webhook@archiver.kernel.org>; Wed,  9 Feb 2022 17:54:45 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web12.30152.1644429284506247831
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 09:54:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fi4vOSdS;
 spf=pass (domain: gmail.com, ip: 209.85.160.179,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f179.google.com with SMTP id s1so2472498qtw.9
        for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 09:54:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uB+J3pHP63mPlo9l6bwoRi8WAImueSVBpPwgnXjvWNI=;
        b=fi4vOSdSZBrPBWhK6TCE967bW6SX9GSsr2J4Ci3uWo78zqxCsWWdtRHB6ujJfr0RQN
         nMQYIAaSzrltOLmUbvzvvcmFCja6jOKcR3s5Qg9ZleN0uKOTZgkgqDktcR+ilOQj7Pqo
         mK1Vss+asBaAHRA8N+/gh5YgnUaQGF6iHrRmhwTqK/niUoFNXcb46JRG2znSl11DbCb6
         asGPc5CTjnM2AZF5udaTr1n4WCiCaG56IDJfKnUo6qBWyTHlO5hGLbLpETYH9Wb0DGM8
         NsxO17bSAzMbtgBjblTejhu672GZMyHJGXQK68ljwkztKRlLbM+geVBl8irEWdIWrkIb
         Cbaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uB+J3pHP63mPlo9l6bwoRi8WAImueSVBpPwgnXjvWNI=;
        b=cG35VAziIzU4AICwl3j9QKL4gMFm2s8KJChd0wSB2T9qooVK5qjE6KPbjCFeNSI+gc
         KizeFdNqADwOTtLmQtlT+aSffT2GHq8xPYZOIJq3sr4VU/PaXvuR3ZIih2+O0B0BPXyr
         JPIAtbuf860Wj4xUrBRvcL36h/pCG5uv7CgDIGVZVU8r1wvt2HhCbrIe2hc6s3wmDx1+
         BPeZz4g2b4QOZhZIGeXPxjugdn21ilxo2GU2w3W8jX7Di8p7FeFWC2cVB/R29vd0g/hR
         8vHVMcS+F67ODr1RPjMKJKxJZM3W7oCNwGeZ6EmIWTFoN7SFQzazwLgpG76LiQ03+nYk
         SUpQ==
X-Gm-Message-State: AOAM532qjWY/OEAchwVqn2O6Ec8iQKOjkwM7TTes+QIS2J9jhl3d9Jcc
	HRqk8sOwFnPltMFA4Wgipe54BLepS53FjVuJcak=
X-Google-Smtp-Source: 
 ABdhPJzhXJg25o4gs/qFyfa+oTJPvZlJY/4rxtPJ7qg7wuKRH1XRQIwNZxLpW1H61+yJbskwFDJ6FhbkX8NS/GXZPSU=
X-Received: by 2002:a05:622a:1111:: with SMTP id
 e17mr2168452qty.229.1644429283568;
 Wed, 09 Feb 2022 09:54:43 -0800 (PST)
MIME-Version: 1.0
References: <90135b4d-6a37-f5d7-dbba-7d0ef47aa778@kernel.org>
 <f0fe3b45abdc3f073d3efc53d4f12fd6dd9b8951.camel@linuxfoundation.org>
 <CAOSpxdb2_Nfk=eadm-+o17Ec4R1qS-s5KKSYQQ61vY0K3GjuXg@mail.gmail.com>
In-Reply-To: 
 <CAOSpxdb2_Nfk=eadm-+o17Ec4R1qS-s5KKSYQQ61vY0K3GjuXg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 9 Feb 2022 09:54:17 -0800
Message-ID: 
 <CAMKF1sqOGdSkj2mZLfC+UXjjnbQ0GmWPCNqakh64w_m4r-fPKA@mail.gmail.com>
Subject: Re: [yocto] Maintaining ABI Compatibility for LTS branch
To: Steve Sakoman <steve@sakoman.com>
Cc: Sinan Kaya <okaya@kernel.org>,
	"<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>,
	Paul Eggleton <bluelightning@bluelightning.org>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Feb 2022 17:54:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56127

On Wed, Feb 9, 2022 at 8:37 AM Steve Sakoman <steve@sakoman.com> wrote:
>
> On Tue, Feb 8, 2022 at 1:07 PM Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> >
> > Forwarding to the correct list address and cc the LTS maintainer.
> >
> > Cheers,
> >
> > Richard
> >
> >
> >
> > ---------- Forwarded message ----------
> > From: Sinan Kaya <okaya@kernel.org>
> > To: Richard Purdie <richard.purdie@linuxfoundation.org>, Paul Eggleton <bluelightning@bluelightning.org>, Yocto list discussion <yocto@yoctoproject.org>
> > Cc:
> > Bcc:
> > Date: Sun, 6 Feb 2022 20:14:37 -0500
> > Subject: Maintaining ABI Compatibility for LTS branch
> > Hi Everyone,
> >
> > One of the limitations of Yocto LTS branch is that there is no
> > guaranteed backwards compatibility. Therefore, any time we move a branch
> > forward to move to latest dunfell release, we are taking a risk of
> > breaking our customers.
>
> I'd be interested in hearing about any cases where we've broken things!
>
> In general I don't take version upgrades (other than bug fix/cve fix
> only dot releases)
>
> > Yocto reserves the right to move a package version forward if a
> > security fix cannot be applied properly as an example.
>
> These cases should be extremely rare, and the community/technical
> steering committee is given an opportunity to review this before it
> happens.
>
> I'm certainly open to suggestions on how we can do better.
>
> I'd love to see some tooling to do ABI checking!

I think its not that LTS itself but also upgrade from LTS to LTS or other
newer versions, it wouuld be good to have this tool and prerhaps a list
of API/ABI changes to help migration/upgrade to newer LTS releases.

>
> Steve
>
> > This promise is being held true on the kernel by running kernel API
> > tests etc. and running test benches across different CI environments.
> >
> > I was curious about how everyone is approaching this problem.
> > There was some attempt to bring ABI checking functionality in the past
> > but this has never been merged.
> >
> > Is everyone rolling their own solution? or never moving forward?
> >
> > Sinan
> >
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56121): https://lists.yoctoproject.org/g/yocto/message/56121
> Mute This Topic: https://lists.yoctoproject.org/mt/89009568/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

