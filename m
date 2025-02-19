Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52035C021B0
	for <webhook@archiver.kernel.org>; Wed, 19 Feb 2025 08:26:12 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web11.17631.1739953562369831868
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2025 00:26:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=d9L4+QNo;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: martin.jansa@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-307bc125e2eso61770541fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 19 Feb 2025 00:26:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739953560; x=1740558360; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uYefGZIEbRlm3KoB5UmHLcmYfYxgJJbLv3Z9aD74SBE=;
        b=d9L4+QNoDhPUXSLpXpNQhkUHYaFqhLk7OK7lfFJoOzFPS0A9DfegKlD72rMa+cpaKy
         GhEIO9w2HXZNNKvwefN1/1F3e1tCQATJb/7CsbUDZK5bOkbfJMSzRCHBGd9Y2fZaD4Wv
         dzO7TQ8BfYr8tLbAqLFwCWr85NX0rujXAeN8kjMtenuH++2/6+RMHuYuqoQ5Xs3UAipL
         CM2NiZHyIT6iJAA0wP5oshnvTi1adW1yC3hMDOW0J+scFb00N7zaIUCagUp/Te2qjXAs
         DWahSskRdrRhioz7DQpjbdJ/tjLhpHh+dTO5rrYAI5SpVAGuRua/4gRM8ruBlnu/mJnd
         pnZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739953560; x=1740558360;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uYefGZIEbRlm3KoB5UmHLcmYfYxgJJbLv3Z9aD74SBE=;
        b=DbQTHxifAnz5UqvfSmDvUhqW6Jem5Q9BO+nmF6gpFujf9oU66R7iZTfnXtc7OTfagH
         ev5mS1F5hzPI+qrjUQ0Kq7xhKSFLErpUWAZlGUnUKCkq/0NOFleCHPDXRgrxGtuUL/Tu
         0T7FVGwxz7JZys/IZ/anWWEv24L99Eobl05yEvnMRQ2Ea8ZGUwPDCLphkDkCrMx2Jhvj
         vK4gUQyAaMNiKVKcY76xkbysERBE41QqsWP7GRarMe3OaeYCgOV7HXa+3jA1GjYmhAG5
         apJZuG6HeSRW2LLN+nU/4XgHGRWGrLXkYasfu+mjghOkPv0KSEmtX44jGy0Bh83ctviz
         bu3g==
X-Gm-Message-State: AOJu0YzVnbH3mF1l7KqNoglDtTnGjuRWwMYoG43yQw9G2rsIOmR5iUqN
	BVrc1ac2sRUFtDT6/FKZAeXiJQTLN+cqo+VcJ4convDJalArK3Acu/rwoPAqY+G7uGWASSI2LB5
	vMyK8+rlTyDoplsPtYKKSPKByJ1IXOw==
X-Gm-Gg: ASbGncst7+rABfCZTVWTqhu/QCqrj2BIQLMbWqDp2xbnlCCH9uF+byuXii5dRBRu3vB
	vavBt6H5eE0hZBWmF7cqOZ2k0wFsNkoKcSIZ1zCqrUUJ0VEJyd6Ra5TTj024GLHG7v5qHMTAF/o
	yYCQy/RkBYCdbw0fUmhn+qNtrxa2pr3A==
X-Google-Smtp-Source: AGHT+IGWSldFFQG/Cwalt8zDOvg1cVe+TI6euxm/8bPQLkA9L5tEbuEjcLHyXbM5S+/kL1qSUuEipc9rZiyQVD3wcos=
X-Received: by 2002:a2e:2c13:0:b0:308:e956:676 with SMTP id
 38308e7fff4ca-30927a5793fmr43823721fa.7.1739953559919; Wed, 19 Feb 2025
 00:25:59 -0800 (PST)
MIME-Version: 1.0
References: <twnZ.1739945080599771676.Mi1K@lists.yoctoproject.org>
In-Reply-To: <twnZ.1739945080599771676.Mi1K@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 19 Feb 2025 09:25:47 +0100
X-Gm-Features: AWEUYZlMQKhUDDEiMD2Z-6NOh8no-qyosCU8Vt2VGhW9IZT0lSSDZ0EkXcCikvU
Message-ID: <CA+chaQe=vXFZFiJAx=9Yu2Yb=KKvTF=UoxjB9npEeVfS9WAqUg@mail.gmail.com>
Subject: Re: [yocto] rdepends upon non-existent task do_package_write_deb
To: yocto@lists.yoctoproject.org, rajesh.d@mindteck.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Feb 2025 08:26:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64839

-native suffix indicates that it inherits native which builds native
tools used on your host OS, not packages installed to target images,
so it cannot be used in IMAGE_INSTALL. If you really need bazel to be
installed in your target images, then you need to create a recipe for
target bazel first.

On Wed, Feb 19, 2025 at 9:19=E2=80=AFAM rajesh.d via lists.yoctoproject.org
<rajesh.d=3Dmindteck.com@lists.yoctoproject.org> wrote:
>
> Hi ,
>
> I am trying to include bazel-native 5.1.1 package into my yocto (kirkston=
e)
>
> when i build this bazel-native using command (bitbake basel-native) it co=
mpiled successfully, but when i tried to include the same bazel-native in m=
y local.conf as IMAGE_INSTALL:append =3D " bazel-native"  and tried to buil=
d bitbake core-image-sato it throwing an error as mentioned below.
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> ERROR: Task do_populate_sdk in /home/user/Mindteck_Projects/Irilic/kirkst=
one_yocto_AIMB288E/sources/openembedded-core/meta/recipes-sato/images/core-=
image-sato.bb rdepends upon non-existent task do_package_write_deb in /home=
/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-tensor=
flow/recipes-devtools/bazel/bazel-native_5.1.1.bb
> ERROR: Command execution failed: 1
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Requesting you to help me out to solve this issue .
>
> Thanks in advance .
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64838): https://lists.yoctoproject.org/g/yocto/messag=
e/64838
> Mute This Topic: https://lists.yoctoproject.org/mt/111266413/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

