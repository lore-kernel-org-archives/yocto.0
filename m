Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1B7CC27C79
	for <webhook@archiver.kernel.org>; Wed, 19 Jun 2024 19:20:05 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web11.29822.1718824795894414209
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jun 2024 12:19:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kpcjFAms;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52cc14815c3so165652e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 19 Jun 2024 12:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718824794; x=1719429594; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Vf4PSfbRTn7FV48O8DyLnnllp4wZdMaKys0Oarps36I=;
        b=kpcjFAmsU90ND2DZ9t7Tcr5l3+vEY94/0iFKlLmVEKMKCwpKCQB/yl0ba2+Zx1X4aw
         e8LATa4WIsELAU30qMH/kYfQfOemR3yZyQNfdmdYzRQjoahp/b4S4FfdpayCBnvxMYjo
         NI8i6vXMI95XZL3BW50pDensjz0cEeGQuzDyM/saZpq2GoAFdKBgIKVl4njJLdWnrCSH
         dYNy6jsyKlLJRrR+irvLrGV9njk0Jcp9Lj5hb8NUFHS3kg/KCNrMQL0w8qWARasM0mf4
         fBNXKIIrCRHhWHNVa0pUoc83ZWir098ed2pD5lT86Khv14ShyXp7a3xX/KSvLZoErxgg
         RrXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718824794; x=1719429594;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vf4PSfbRTn7FV48O8DyLnnllp4wZdMaKys0Oarps36I=;
        b=c5z9K23wi43YoMoQXt5k2Oe+S9P3dzBv2zpekm1bM7ZlryXybju7sXfT8wI6mSmHMV
         AnMMbi5LOoOxjB1YoosxgR4IQUIA/4vzuc8Z4pCiLMauEHRTEaVLkyQ1SQwhGivgclX2
         9Vc4ehtV29+RRjBpsNb3s2Uth45GX3GQIPvPNrSMVfp8aIRMNusS/HMF1ZTJeEwDCZ49
         3rc7MWH/GWMd6mjDoG5MnBfSydtpGNCAZaPjwkZJpnwNDt86FdB9t0P/xucG74oKIBRr
         0TO6MHt+236MO/fo/Bkq6qSK8mOuCPt2hWEPMEFp8BYNjNqwYL6Exwfx8xq41ZK2Qmct
         SMwA==
X-Gm-Message-State: AOJu0Yzeb0yJF/MzC4tJG+4jmGN30D3P4q0Fixml7VJTgrVRlTTe4LOM
	m2LpnqBL7RbG6M40MG36aWnGxVV8iL4nLvVUtzbn14QeoHSgS7sOBQrn5BQ82vKR2KQaz/QJ7lh
	YhdXdioNL84z1aegEaUsvDstSJoE=
X-Google-Smtp-Source: AGHT+IG3xeE7Ban4zf0qGthBvUGBDU/+DwJtfbQDflOIDVH/JCTDOuzw1DNy8G7aQEoYP+Ga29pAPNCIgMXBcy97hoo=
X-Received: by 2002:a05:6512:3b90:b0:52c:cb77:2b8 with SMTP id
 2adb3069b0e04-52ccb7702eamr1992576e87.5.1718824793764; Wed, 19 Jun 2024
 12:19:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAA7J33X=Zydis3=9AMxgA4vWOKYhgySq8tPoYwPhT0vh7WMYDQ@mail.gmail.com>
 <CANNYZj9w8tQSWCLERavC2NXMdS5i=QrimoZ1vGoF=8LNP0wVdw@mail.gmail.com> <000001dac26a$bbe3a070$33aae150$@gmail.com>
In-Reply-To: <000001dac26a$bbe3a070$33aae150$@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 19 Jun 2024 21:19:42 +0200
Message-ID: <CANNYZj8J15TgT=gcFcVWaLGrv4cWop1Xr410o-ToHhPjfDHV=w@mail.gmail.com>
Subject: Re: [yocto] Dropbear and deprecated ssh-rsa issue
To: mehmet.fide@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Jun 2024 19:20:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63367

I don't have a strong opinion. Being consistent with openssh would be
best perhaps.

Alex

On Wed, 19 Jun 2024 at 19:04, <mehmet.fide@gmail.com> wrote:
>
> Yes, I believe I can do that. But there are couple of options, I'm not sure which one to be followed:
> 1. Replace rsa key with ecdsa and continue with ecdsa support only. (this disables rsa mode)
> 2. Keep rsa mode on and also activate ecdsa key next to it therefore they can work side by side simultaneously
> 3. ??
>
> Thanks.
>
>
> -----Original Message-----
> From: Alexander Kanavin <alex.kanavin@gmail.com>
> Sent: Thursday, June 13, 2024 3:28 PM
> To: yocto@lists.yoctoproject.org; mehmet.fide@gmail.com
> Subject: Re: [yocto] Dropbear and deprecated ssh-rsa issue
>
> On Thu, 13 Jun 2024 at 13:20, Mehmet Fide via lists.yoctoproject.org <mehmet.fide=gmail.com@lists.yoctoproject.org> wrote:
> > I was silently following the email list for a while.
> >
> > Today I have a question regarding dropbear and its default recipe provided in poky/meta/recipes-core/dropbear.
> >
> > It has been 4 years since ssh-rsa is deprecated by openssh followed by Linux distros and Visual Studio 2022 as of 17.10.
> >
> > As I checked today, the dropbear recipe with the master poky still uses ssh-rsa instead of ecdsa mode which is widely accepted today.
> >
> > Don't you think that it would be appropriate to change the recipe content to use ecdsa instead of ssh-rsa one?
>
> Yes that would be much welcome. Can you work on that?
>
> Alex
>

