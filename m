Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D98C4332F
	for <webhook@archiver.kernel.org>; Wed, 13 Dec 2023 18:52:14 +0000 (UTC)
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
 by mx.groups.io with SMTP id smtpd.web11.44627.1702493530542783212
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Dec 2023 10:52:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WutyPxAA;
 spf=pass (domain: gmail.com, ip: 209.85.160.43, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-1efb9571b13so4755963fac.2
        for <yocto@lists.yoctoproject.org>; Wed, 13 Dec 2023 10:52:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702493530; x=1703098330; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TyiM4E5LC8rEIfBQredEUZrEZ2vlikRo702LayJwo6c=;
        b=WutyPxAAUW0mJPtf7Az/kZOHJUnsuUyDkAdglA20tCZ4ReioGMXINveONnrxX8q/ZO
         V3GOKTc8Kr8lawX2wws/gkubxvb3xRltW4zHKUh6yJQcrqL+fyGvbARAis4GhFYioFFb
         BT9GCEAyXhlsYVlT9DZfuJ+eTkxLivJnofA/xPyR5PmRE0aQcT+F8VgqF9wWEmuN7Vy6
         Hf59qE9RHzHcey7xq35RiDkpMmtB2M496X8JSQlMmfFm2pkd5g5CiTxkiaI9ZYpWzDmY
         uBucWYAWvc1p2Dp8fKeptQwUbJ29cL3knm7zyIxuUdTpYyuIPieO7PAr1Np+KypT6Vrl
         NEAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702493530; x=1703098330;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TyiM4E5LC8rEIfBQredEUZrEZ2vlikRo702LayJwo6c=;
        b=DBBRd42Z3FIyUPMeXNngcRCoJ5pTrCFYT7Q2ax2BFVOj/G2VSEX0/fQaxRL2xfcPlN
         vaezqzxOOYAOBTIQcXaDKGl8xRO9JypCratCr5dnDs37Psl9LkK7Bro7tszlh7ljjpY0
         e/XJzQSDr1GBFw2GnxvD9eulb+zHCbboRNPMgnrG7gmMjc0H0puvxFtcJeXdh+ewsZPf
         JSMbQCakR7T22eXRCDTGhOcLpKBFXDzF0R5ew/7OcEIxF4bpRfzxpNosgD7JYfZO4eGQ
         UsBwfYF3oKXhLRvyXaa9qLq2igtcj++2sHQXjhI5KOGDjrQPFdL/LzMyOodTasg+Fx8/
         5AvQ==
X-Gm-Message-State: AOJu0YzdXBXWNTL2lgw0ZOXLQIIcMJs2sleJbymcNWnglYqA+2LJTVlG
	gMWmlmX1nc9HOy/0PHzo+yuY2rtyzVa7Uyo9mqk03n6HkF4=
X-Google-Smtp-Source: AGHT+IGZlzH5kCt4d8Cd6jjEX2NbVDlT8vjS2TbnSDkFqQzsa2NKdLdb67r2TUGYNY/94WunsNVxTKgAoTcixwQaeQE=
X-Received: by 2002:a05:6871:4592:b0:203:4116:7c6a with SMTP id
 nl18-20020a056871459200b0020341167c6amr61587oab.9.1702493529609; Wed, 13 Dec
 2023 10:52:09 -0800 (PST)
MIME-Version: 1.0
References: <CAO5Uq5Q=-v258vP9Vmm=6A16sJtDoH2UF=-WF=D69Phe=_kFiA@mail.gmail.com>
 <16371.1702492605626772973@lists.yoctoproject.org>
In-Reply-To: <16371.1702492605626772973@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 13 Dec 2023 10:51:43 -0800
Message-ID: <CAMKF1sp1dLp5hzAraBz6FbHFJxKhYCHWQpk+5kb8Xfy_y_h3YA@mail.gmail.com>
Subject: Re: [yocto] do_rootfs failed
To: yocto@lists.yoctoproject.org, daniele.lugli@gmail.com
Cc: Alex Kiernan <alex.kiernan@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Dec 2023 18:52:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61884

I think change below line

https://git.yoctoproject.org/meta-realtime/tree/recipes-extended/images/cor=
e-image-rt-extended.bb#n3
to

DEPENDS:append =3D " linux-yocto"

and see if this helps.

On Wed, Dec 13, 2023 at 10:36=E2=80=AFAM <daniele.lugli@gmail.com> wrote:
>
> Thank you Alex.
> git branch --contains in poky/meta-realtime does not find the SRCREV 17be=
4548c4260b80be623e0e1317e98a770dea7a in any branch
> Anyway I added ;branch=3Dmaster;protocol=3Dhttps to the SRC_URI in rt-app=
.bb and the warnings disappeared. Good!
>
> Khem:
> I added
> DEPENDS:append =3D " qemuwrapper-cross"
> in core-image-rt-extended.bb
> and I have no more failure in the postinstall intercept hook; log.do_root=
fs is now clean. Good!
>
> Unluckily this isn't yet the conclusion. What I get now is:
>
> | ERROR: A native program mkfs.ext4 required to build the image was not f=
ound (see details above).
> | Please make sure wic-tools have e2fsprogs-native in its DEPENDS, build =
it with 'bitbake wic-tools' and try again
> ERROR: Task (/home/vboxuser/Documents/poky/meta-realtime/recipes-extended=
/images/core-image-rt-extended.bb:do_image_wic) failed with exit code '1'
>
> I verified that poky/meta/recipes-core/meta/wic-tools.bb already has e2fs=
progs-native in its dependecncies, issued 'bitbake wic-tools' then again 'b=
itbake core-image-rt-extended' but mkfs.ext4 is still not found.
>
> I will now try a clean bitbake by removing sstate-cache and tmp.
>
> Any suggestion is appreciated.
>
> My best regards
>
> --
> Daniele Lugli
> General Logic srl
> Viale Curreno, 41
> 10133 Torino
> Italy
> tel +39 329 3933041
> www.general-logic.com
> www.linkedin.com/in/daniele-lugli
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61883): https://lists.yoctoproject.org/g/yocto/messag=
e/61883
> Unfollow This Topic: https://lists.yoctoproject.org/unft/103135158/199791=
4
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

