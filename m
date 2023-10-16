Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F4CCDB465
	for <webhook@archiver.kernel.org>; Mon, 16 Oct 2023 19:48:42 +0000 (UTC)
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
 by mx.groups.io with SMTP id smtpd.web10.178315.1697485720842031116
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Oct 2023 12:48:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KBvx5mAd;
 spf=pass (domain: gmail.com, ip: 209.85.160.42, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-1dd1714b9b6so3188902fac.0
        for <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 12:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697485720; x=1698090520; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8UYgHEKEbJioSa+Xvefo0McivDo1M8XVepV/MNAwJjQ=;
        b=KBvx5mAdhMTNiMgAeY+pDPUcvvpnBJNTcIecwuH1Zz7sOl/sXOYfIo7IDLCD6abiMk
         owD50aLq4DMg61aXqiK9iwJJUTbpGhvekOX/CU/StDczxNO/JCptarnx7AhhgURCG83M
         0wLKo3gEIfXUhG2Jzu7Y/D9Y+yqfxIaBndJxJ7XaqaACy2HlQ+BpjaNGY/gCxaOqV3FE
         lV5E+Ov+VUxhZQVaFw6H8qZso7pxde8F0Tc/ng/uf3l3YT9r42TmtmTsQ9t8Zj5WMcOE
         +ZZjNgeQLwSJTbazSr0Kh4l6PCtEo0JKGCIRdc/TlJ+fKGaX4AC4YUUAOYUJzPV6oePN
         kvow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697485720; x=1698090520;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8UYgHEKEbJioSa+Xvefo0McivDo1M8XVepV/MNAwJjQ=;
        b=vi/gKUF/yYgOcPOBznJ7vXzZbymZ/NZSgom7gdgsJ2yiJWL1i6I6gRAT9uKO1ga1DI
         Pkky+rXUQxKV4gZ5qZ0gt0L3gM0lHjfiMRn+NgArCr2b5V+DjJJvfxbgTe7d1vtxjNGw
         +kNiUKi2w2FvzlPE3TM/d1s0H28QUeh5pQwykJFvOCRwG9XTtuvB/nucq1z63O2wKjQb
         Idq96kDGWx2gUyMDoqm5HDXOvoRlUO6LpFzNZM+y2Wt8+uH7Zxpzhr8cWVN/dwLnHhaC
         oofuA3VQusHF6Y8AO8yaXJdflNxlmCvA9L90sC0hxQsJmE4aK8R/RPbwqOly/uu+kAeT
         l+1A==
X-Gm-Message-State: AOJu0YzZgnjcJPonk4+e0q4OKmP4t11qdFiGeZjkVmzr6jvTrtEEgzru
	nIRL8gse7o757tg+ppgCLfYRrN5edOJ3oBtv36yLmUlzzfo=
X-Google-Smtp-Source: AGHT+IHNKnQytylI7Bk1MzRKeITe8i3Fxsv4rhjocklhzzZTL29CGFQeeBQ3QGDhiopqcFe7l+CA33GWgw90iovDeHo=
X-Received: by 2002:a05:6870:8a26:b0:1e9:c86f:4d72 with SMTP id
 p38-20020a0568708a2600b001e9c86f4d72mr138144oaq.45.1697485719895; Mon, 16 Oct
 2023 12:48:39 -0700 (PDT)
MIME-Version: 1.0
References: <20231016112233.221066-1-foss+yocto@0leil.net> <AM9PR03MB7012E6E478F4D2899CBE0F5192D7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
In-Reply-To: <AM9PR03MB7012E6E478F4D2899CBE0F5192D7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 16 Oct 2023 12:48:13 -0700
Message-ID: <CAMKF1srY8USWbBPyb5jpx12VmyL9mpRHRW9bkDAPqWgUWbPjuQ@mail.gmail.com>
Subject: Re: [yocto] Using cmake... how?
To: Dave Hitchman <dave.hitchman@kymati.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 19:48:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61347

On Mon, Oct 16, 2023 at 8:27=E2=80=AFAM Dave Hitchman <dave.hitchman@kymati=
.com> wrote:
>
> So my current recipe for the project works, including building various C,=
 C++ files
> I wanted to now add a library of someone elses creation.
> On my machine this library builds using the tools installed so the code i=
s ok
>
> I added a recipe to my yocto build and it attempts to do the cmake.
>
> Unfortunately whatever I have tried over 2 days cmake insists:
>
> On using the from my machine NOT the cross compiling tool set the rest of=
 the yocto build uses.
> | -- The CXX compiler identification is GNU 9.4.0
> | -- The C compiler identification is GNU 9.4.0
> Getting upset about the flags passed in:
> |     g++: warning: =E2=80=98-mcpu=3D=E2=80=99 is deprecated; use =E2=80=
=98-mtune=3D=E2=80=99 or =E2=80=98-march=3D=E2=80=99 instead
> |     cc1plus: error: bad value (=E2=80=98armv8-a+crc+crypto=E2=80=99) fo=
r =E2=80=98-march=3D=E2=80=99 switch
> I cant even find where these flags are actually set, where I found them a=
nd thought they were set I altered them to be FRED and nothing changed in t=
he errors at all.
>
>
> Any idea? Surely it should be pretty easy?

share your recipe and also any peculiarities in CMake files in this library

>
> thanks
> Dave
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61346): https://lists.yoctoproject.org/g/yocto/messag=
e/61346
> Mute This Topic: https://lists.yoctoproject.org/mt/101998042/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

