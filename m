Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16278C2BBCA
	for <webhook@archiver.kernel.org>; Fri, 28 Jun 2024 08:57:25 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web10.12903.1719565025634692340
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Jun 2024 01:57:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=T60Y48JT;
 spf=pass (domain: gmail.com, ip: 209.85.208.174, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ec52fbb50aso4030791fa.3
        for <yocto@lists.yoctoproject.org>; Fri, 28 Jun 2024 01:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719565024; x=1720169824; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zXMNE2jqFLdt4U63A8OKAUd2TAH4EbPM5f+uoZV8xnY=;
        b=T60Y48JTim5kkTYTrzV2c0OferR+2N9GwX0sSTIxqx0pUmg3tooUllbSvvWMbcT9ej
         kGAkj5gDkWpfgwQtStN5Jfvgz3mr+YjETRLNX4JE3Ry+CgqkFvfR+q1AnTrTnZB6/eOv
         i1Rnw1WYWW2p6RICTkqowsTsERbMi9jnbSwVzkvii8d/NPX19XKtfV04/e6F4Bn74PXG
         73ldAbpuBa6IfI1okW1E+qOHyO/AkpYb9FK1O4q+wGQOAS/ZSg/8I8GrLT9aBr3MzwCK
         m9gxK6ey5gMyh4Prk+GZaDDDiSoo4R1eAumfeQDM/Upw2QfkVv3Q4tk8Kjs8DuIvp/h3
         2LKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719565024; x=1720169824;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zXMNE2jqFLdt4U63A8OKAUd2TAH4EbPM5f+uoZV8xnY=;
        b=CJTMixpB/tXJps13Ue449JYrwA5y5qpzMc91RZuvRcedzJvWhXfdgS/qy+pdZ2BN2/
         yVGrHnj4nQTBx0sVS6iMZpZFw+Axj5/z/E5j0eAxYguBjJkl+GMtpza3OVrhftzrhMOY
         VTMeEMjaRLJ3eg0YpzcZ4hnW4PDV1MrbVSWYa4bBZNIfkb8qo1Fr1RCyCjMTVO/IPhGX
         JU2fZgVP8dznlZ4D+zWu/SzvvL86Qe2WKCs+fmrwqh/IUl/BRW7wjYEBMf5PQeGK8eVe
         LOD1B1pOOLo2tvdgtq0Y+KLsJp2RNCc23HdQgg9ABq3mJcPDCmi/Ltsz0QpZua5JkMqh
         n5JA==
X-Gm-Message-State: AOJu0YzGUeWB4R2kaLSCjd+TTIdudwKjURHZMiAsZ+MyCmdFc9reCzf8
	nAFD7tCxmzoYURLLk9/YoZHV5QiCzQy+4EsmefdjvtTzTN7s3RzesgQ3vvWhfqF2m3/T/Uqpkbz
	ibMiNDWjM+tlwVJDvyf3IgPgVzsH4mg==
X-Google-Smtp-Source: AGHT+IFUSkCkGeIq8JlG1/rYRc7Rj/rXr6PpNcU5tPpdv0pWXcBOcJTtrKD6cZ7N4LiTdzelr0tq+UxNI03umWjSO/0=
X-Received: by 2002:a2e:b0f5:0:b0:2ec:53fb:39c8 with SMTP id
 38308e7fff4ca-2ec5b2fc2a4mr125286121fa.10.1719565023459; Fri, 28 Jun 2024
 01:57:03 -0700 (PDT)
MIME-Version: 1.0
References: <1803101719522699@mail.yandex.ru>
In-Reply-To: <1803101719522699@mail.yandex.ru>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 28 Jun 2024 10:56:51 +0200
Message-ID: <CANNYZj_XMFggi56v_ex6KKM09dcT2fOfWnuX27pSqO+ooXkkZg@mail.gmail.com>
Subject: Re: [yocto] Files are not saved to recipe-sysroot-native
To: yocto@lists.yoctoproject.org, sagatov@ya.ru
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jun 2024 08:57:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63407

It helps if you show the commands and their output as well.

Files in image/ do not go to sysroots directly, first a subset of
image/ goes to sysroot-destdir/ (in populate_sysroot task), and that
is used for staging into dependent recipes' sysroots with
prepare_recipe_sysroot().

Did they appear in sysroot-destdir/?

Alex

On Thu, 27 Jun 2024 at 23:31, Evgeny Sagatov via
lists.yoctoproject.org <sagatov=3Dya.ru@lists.yoctoproject.org> wrote:
>
> Hello.
>
> I created the recipe (first). I added this recipe to the DEPEND of anothe=
r recipe(second).
> =D0=92uring build the created files of first recipe were placed in recipe=
-sysroot to second recipe.
> I changed to "first-native" in DEPENDS of second recipe.
> The files did not appear in recipe-sysroot-native. They also disappear fr=
om recipe-sysroot.
> The necessary files are exactly created in the image directory of the fir=
st-native recipe.
>
> What am I doing wrong?
>
> These files must be used on the build machine for the second recipe.
>
> ----
> Sincerely, Evgeny Sagatov
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63405): https://lists.yoctoproject.org/g/yocto/messag=
e/63405
> Mute This Topic: https://lists.yoctoproject.org/mt/106917644/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

