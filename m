Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 807B4C2BD09
	for <webhook@archiver.kernel.org>; Wed,  3 Jul 2024 07:39:44 +0000 (UTC)
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
 by mx.groups.io with SMTP id smtpd.web11.45969.1719992383390035459
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jul 2024 00:39:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XZUkH5Tj;
 spf=pass (domain: gmail.com, ip: 209.85.160.52, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-25caf76158cso3004873fac.0
        for <yocto@lists.yoctoproject.org>; Wed, 03 Jul 2024 00:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719992382; x=1720597182; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rFWtFmr7OhikxxnjUbUOC49fB1p5smZlezBx309mCAY=;
        b=XZUkH5TjzOfeNbiTtZsUosbDDM8jiOTMAD/p8KXCoXz2HsMdkosTmPlPE2HK4vK+TR
         i+x9SRoufQOEjNLX9lvaINzRhh+ff6hKdVEwheYiefYnRw/yw4DJBRMbtudSKdY5bwiB
         RDZmZ10krm0wL+nVBUQjkY7gVpIA3JX+7aslkp7MStAUr/uyPaxrixqEZtoP9A1slKBg
         ku9s2VruYGJXiqlHHR7ncUbyq3ftf6jwS0IpRAAcT8jQYltFFA2GYpQIjvGs+q7rgWGK
         aIWAnWFJf+cAX785msTBIB5K8UQnRI5wMUO7qaou2x3zkNrEBTJMkeS4sO+z+I/VM5tT
         CXiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719992382; x=1720597182;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rFWtFmr7OhikxxnjUbUOC49fB1p5smZlezBx309mCAY=;
        b=gIG0TpDoCBtOCyYiGYCxVMSMtRGof/L7LRAWVlhElF84bAqUbMPivfhSfCKDLNloQG
         YoUHoO8ZlGH5qG83BC5CoWXUhzM40LSpWUS9C49+7Mdy9cH0F0V1RC9ynsEx/Y7ZHScx
         UCOg0HZN1NxhUJX4ckkGX2CNlkW62173rCtvQt2/QIdyZg+30SEfHJ8NjksFw5MGveuy
         LbCXlQ8Zgi/4agUBwTzcHwQq1OybfIH3C/LxYx2tY+2BJLDWcQaZpKV0E84z15xFVJKX
         9nVzcmK0ZHBXsS8Yq4CYjBdpXtzNJhZGAB/dMtZx9Q+ohmoRMKuYuEoCcgYm2dv5AFHY
         kSWA==
X-Gm-Message-State: AOJu0Yzs4JsdoDIzJiRAaB69GjF4GtZYa/wByOydff1uuUQDOT8ylvfY
	lR1GtCPsQRkxwZqbUVGksn6Z1L2tYvloVhXgKatawuiXZSfOvJPHximZGRpmKwpPHRqE0imAo8R
	PBY0zcVhNlu3jb5kSmQReAlFMSR2Qpo2k
X-Google-Smtp-Source: AGHT+IF2AXCnFNZM1wJ+0rTf+tHrBrxz+lB7pVL1hpGXn1gBVGrZ1ey1DJ269GXipqnMjng18o6p31q6P+R1q8SywLA=
X-Received: by 2002:a05:6870:8454:b0:24f:d873:9f32 with SMTP id
 586e51a60fabf-25db346f55dmr9903942fac.26.1719992382198; Wed, 03 Jul 2024
 00:39:42 -0700 (PDT)
MIME-Version: 1.0
References: <xhZK8E4f1CnnMzyvih8DWjZYUqf7fpE_8KolmZp0UKSabooljodh4TxTDefDuDZ09uBEhbx_4mlIEyr3y_c6zYZqL39W5d9w_vhIb5aGrQs=@protonmail.com>
 <mQZDRmo5uaTC98_QPOomYfc7OvVAENC3YX9gFT4h4LPL3wuQMwrQ6533-hYbjM77iHRuQpZLgbI8w4bNNRu33O7nqlSQ0AnMLEnCjnEnjIs=@protonmail.com>
In-Reply-To: <mQZDRmo5uaTC98_QPOomYfc7OvVAENC3YX9gFT4h4LPL3wuQMwrQ6533-hYbjM77iHRuQpZLgbI8w4bNNRu33O7nqlSQ0AnMLEnCjnEnjIs=@protonmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 3 Jul 2024 00:39:15 -0700
Message-ID: <CAMKF1spqJBWBqAZpFVY9e8u0oBRJKJ0Jmy_4KobMfCpstOriXw@mail.gmail.com>
Subject: Re: [yocto] Fw: Inquiry and Proposal: Method to Identify Package
 Containing a Specific Binary
To: yocto@lists.yoctoproject.org, christopher.weronski@protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Jul 2024 07:39:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63432

on build system

oe-pkgdata-util find-path "*/sfdisk"

or something like that might be worth exploring

On Tue, Jul 2, 2024 at 11:03=E2=80=AFPM Chris via lists.yoctoproject.org
<christopher.weronski=3Dprotonmail.com@lists.yoctoproject.org> wrote:
>
>
>
> Sent from Proton Mail Android
>
>
> -------- Original Message --------
> On 7/3/24 07:57, Chris <christopher.weronski@protonmail.com> wrote:
>
> >  Dear Yocto Community,
> >
> >  I am reaching out to inquire whether there currently exists a method w=
ithin the Yocto Project to identify which package contains a specific binar=
y. Recently, I encountered a situation where I needed the sfdisk utility. I=
nitially, I installed the util-linux package, assuming it included sfdisk. =
However, I later discovered that I needed to install util-linux-sfdisk to o=
btain the utility, after searching the mailing list archives. A similar sit=
uation occurred when searching for the package that contained the mkfs.ext4=
 utility. Eventually I discovered it was the e2fsprogs package, however I f=
eel searching could be improved.
> >
> >  If there is no existing method to easily determine which package provi=
des a specific binary, I would like to propose the development of such a to=
ol. This tool would greatly assist in adding dependencies to recipes, makin=
g the process less cumbersome and reducing the likelihood of similar issues=
.
> >
> >  Additionally, if creating such a tool is not feasible, I suggest addin=
g a "Provides" section to the recipe pages on the OpenEmbedded Layer Index =
(e.g., https://layers.openembedded.org/layerindex/recipe/XYZ). This section=
 would list the binaries that each package installs, helping users quickly =
ascertain whether a given binary is included in a package.
> >
> >  I believe these enhancements would significantly improve the efficienc=
y of the Yocto Project for all users. I welcome any feedback or discussion =
on this matter and look forward to your thoughts.
> >
> >  Thank you for your time and consideration.
> >
> >  Best regards,
> >  Chris
> >  Sent from Proton Mail Android
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63431): https://lists.yoctoproject.org/g/yocto/messag=
e/63431
> Mute This Topic: https://lists.yoctoproject.org/mt/107015160/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

