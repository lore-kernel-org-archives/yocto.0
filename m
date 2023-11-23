Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03B4EC61D97
	for <webhook@archiver.kernel.org>; Thu, 23 Nov 2023 16:42:59 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
 by mx.groups.io with SMTP id smtpd.web11.95396.1700757776005574492
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Nov 2023 08:42:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VAnqDQ91;
 spf=pass (domain: gmail.com, ip: 209.85.167.173, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3b83c4c5aefso650701b6e.1
        for <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 08:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700757775; x=1701362575; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c5hOR2/UPwL9Jam0TFe4j32VV7YkRS9zLvXhnBNa5TA=;
        b=VAnqDQ91JwdBVOroWCwr1KS8WMV6QeSXwUt2ABoSpyvn3wXLSegB64PkxEdFkENMIF
         x8GoNxeqoBaMT46bvWCiG+0XR8jUAKOB+Imzj6MlTIGfNdVKWsJlHIi0bVKivz++g4Yj
         34X9/xgH9vtL3oPsHgFL7mdTENPgEEGFeuR73NahxxRSRz7XHKf5UPBCJ580CnemNWNk
         SfStiqg1EEzyD8uQhYx4x2Pv2UWbvr3zyyG9VI6ocsqG410SyfN+l+8mqOJhE5sXdCnK
         WXGXw/VdMKgYoQO3kIi8f2gBS88t4JigYDJm/YdNHIVxKv03KDhBzsDFgUsPiKtmCu03
         ppaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700757775; x=1701362575;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c5hOR2/UPwL9Jam0TFe4j32VV7YkRS9zLvXhnBNa5TA=;
        b=r3oYjvh2qVV6aVvrsJlIbK/+EPDvwOsDRBiEGRYL6C2WF2j2nQKKgBCAVUe3jtP9OV
         +0ccCoQ16XdOgnIueUx3+djAAxutQc2Dl7n3QcytGFk6gb+njfBYE6KHQudXhYfzIBvb
         F2cU+1zUFUg6q/AXMArkBvRXbGebzwGdVJi6xrGu7+o0Ul46/bsJ6RwFcUDY+Ek1ZSFT
         hdGfS43UQlwpfY2MTewT7pvnMD8UMBJwnByZMKTi5SDeWjNgDBeKvxRtrbw5dRMNlegU
         EBfwTWdYlkzbfWpJsm3Rd/gtgqwhlGAeVGVbBj1IqMVNbhGD5SCHSg7YJH6qaLjnkhLL
         xD9g==
X-Gm-Message-State: AOJu0Yw9TFn4mijx6YSRovW5DUD4mbX7BUukIfLlrXT6juQJjT/Pzigl
	qs60hndylcb0iG8tAhE02vYcqtGwRTaxdsKyfY8=
X-Google-Smtp-Source: AGHT+IFRsRP/ccQbHWwwUazygd/8Z6++F/b8fuiO7U/LTqdsC0kE1JTE1AQbkzltL89wZU+ApU+sb1xjWCc8Fy9m3M8=
X-Received: by 2002:a05:6870:9f89:b0:1ea:809c:3eb with SMTP id
 xm9-20020a0568709f8900b001ea809c03ebmr8113809oab.44.1700757774990; Thu, 23
 Nov 2023 08:42:54 -0800 (PST)
MIME-Version: 1.0
References: <20231122014822.3871458-1-raj.khem@gmail.com> <25CE6021-2333-43D8-B3E4-3207FEB8ED4A@arm.com>
 <CANNYZj_9_yY5H8fX6=Vy3FFgiVu1V8uOJxHNdtMkfMb37JXCSg@mail.gmail.com> <74FBAD99-E844-4DF2-AD18-B02D2613228C@arm.com>
In-Reply-To: <74FBAD99-E844-4DF2-AD18-B02D2613228C@arm.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 23 Nov 2023 08:42:28 -0800
Message-ID: <CAMKF1sqkSLHKpnW4Q_aLUFhtX-9aDKYVyZ2HWJ2UFg9QssHe9g@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: Add
 lib32-matchbox-terminal to multilib images
To: Ross Burton <Ross.Burton@arm.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 16:42:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61746

On Thu, Nov 23, 2023 at 4:14=E2=80=AFAM Ross Burton <Ross.Burton@arm.com> w=
rote:
>
> On 23 Nov 2023, at 12:00, Alexander Kanavin <alex.kanavin@gmail.com> wrot=
e:
> >
> > matchbox-terminal depends on vte, and latest vte enables gtk4 support.
>
> Are you sure?
>
> https://git.yoctoproject.org/poky/tree/meta/recipes-support/vte/vte_0.72.=
2.bb#n14
>
> > Also, I do not understand how the fix works. How does installing
> > additional packages into an image resolve a conflict between two
> > packages installing different files into the same location?
>
> The problem is that the ipkg rootfs generation works =E2=80=9Cinteresting=
ly=E2=80=9D and appears to create two parallel rootfs (one for normal one f=
or multilib) and then splats them together.
>
> The schemas are installed in /usr/share but if you have different sets of=
 libraries in /usr/lib and /usr/lib32 then the compiled schemas are differe=
nt.

Does not depend on content of /usr/lib or /usr/lib32, depending upon
whats getting into given rootfs, the schemas pulled are different and
hence the compiled gschema is
different which is them being overlayed into combined rootfs finally.
A good solution would be to create. common /usr/share directory
between two rootfs'es and let it be
populated with given dependencies, that way it will generate correct supers=
et.

>
> This feels like an issue which has existed for a long time, so how has it=
 only just been noticed?  Did something change?
>
> Ross

