Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B678CCD183
	for <webhook@archiver.kernel.org>; Fri, 17 Oct 2025 01:30:36 +0000 (UTC)
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
 by mx.groups.io with SMTP id smtpd.web10.6105.1760664630021846601
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Oct 2025 18:30:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HM+u7aSZ;
 spf=pass (domain: gmail.com, ip: 74.125.224.53, mailfrom: raj.khem@gmail.com)
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-635380a4a67so1405429d50.0
        for <yocto@lists.yoctoproject.org>; Thu, 16 Oct 2025 18:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760664629; x=1761269429; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8DtsrxqctTBdp5fijP8veNEkkA5jNEVw3MsZxXF0y/w=;
        b=HM+u7aSZ3g6rtY7d9yj7Sug+elRfqcrQWiiWJIekbJ6DXCT7S91Am3j3Zc2Gk7sm1H
         sE7OVhEBVHUTNpCU7seSzYgDEXBCZnZ13uLjy0MbcZTKu804s+cnzXygEuDkdpMcrQvJ
         ik/tWWg6cx+Sus2KM4NIY6QaJ/3osf2cnjVsiSC/jj+gwkreA3bd8Qfvln1rRDd/6oR1
         BsVYks544Lv/gigzK6GUwSYsN9wACR5Bom98e3BO88RbgQ0tC54j0ZMfTljF/Cr4Au+S
         Z+wb1TU/hu0DVOokuFgnhgH11+T1KGRxBnFzqyWhAkb6BYgmQ4HaUp775chPDoDwoRWq
         fm4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760664629; x=1761269429;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8DtsrxqctTBdp5fijP8veNEkkA5jNEVw3MsZxXF0y/w=;
        b=PSDA8F5AxF77sZZ5wamnnzCAOevXbNytttYWjsBHvY275KMsqa4N0I8O1p/yB8/XLA
         DNq5mnf3/nkxs9xBA4SNeKzYN+++go1vVTBL7N4mA/dbmsQl90hGYUNeVLLUMG9syKye
         YKd8meLA1V0/J0ILeGRDGgPxBOlgfOFvpztKsDtSXjBl2YfztpD2vVfPncP711WQerUK
         C84GaW+lD1IlFT3Adlk2jidJf4uZ/AxKgVGN6lr9VvOGC4TSbZ5yVKffyGg8JA8dVF84
         r2maT3VOUIEEguQiVpDdVY2TFqMLOYHNGmLT6L3fgV0HrxBpMBl6a855zRwZiOiy7Uac
         +SdA==
X-Gm-Message-State: AOJu0YzPsFkf+oG5AOcIEBAyuWQtjuCyi0Pq0A4NslBf0mdixnlHS8aA
	SczrJnqPQIWuByN7OQDCF131dO8WhFALZ3KwgdMc8R0UeF8zrMfENknL+gdBWWyEO0NSRVlwSqG
	2t+EImwGqAcSho0PBRGxNRghZNryXKxU=
X-Gm-Gg: ASbGncvwyyFyuBOrkvZ72kGHvQmMdO/D60ozqjludu1kwW0/byRsQAVU02ICvqm7fI5
	JJ+FyzikNdJk1bDmm/YEG2lLiRkJlz6ZHBiETMidTApG+yh12kNOQogiz3/RZ57Blpe1H0I3Mnd
	saBKnZme0vtn0Z7hkQ/G9FVohR11zMTiLp37DjHnvCISQi3EeXXc7GKmepURPknLLW/YTFwxcRF
	B0vTWE8iJznL70aK/Jh4ep2+20398WKaggSygyZfnUZrSmmtveGizQpPHi+n+6BPSgfV/644ZoS
	7C1UtRuKHtnj0TcC3MxCcNfMB2gLFhloLmDg6wiFm2CVdaRLFgyoE5IWZuSFowM6dzEz252wC7l
	knlo=
X-Google-Smtp-Source: AGHT+IH0BafK1L7kEarSqNhBxrij8jvUB5yQyNQh356OPDzsIvTcPJ2wWF8nNwbQ5tumdGX/aYQ8Ue36iBEtl+uOpOk=
X-Received: by 2002:a05:690e:1487:b0:628:8c17:79bc with SMTP id
 956f58d0204a3-63e160ffbaemr2016666d50.4.1760664628978; Thu, 16 Oct 2025
 18:30:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1srraguxbAXrVbfJDfv69=TShjSgjKmzpvDw7-3zi0wQpg@mail.gmail.com>
 <6098.1760662315745193739@lists.yoctoproject.org>
In-Reply-To: <6098.1760662315745193739@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 16 Oct 2025 18:30:02 -0700
X-Gm-Features: AS18NWBNCblOlHO3hySk0ZRdCRFur4L4MQ1HaikpCE2Epx_rNa_XBxU-y0Y1J-g
Message-ID: <CAMKF1spph3_i8074mkFHz7GGn9gR7qprxexRCCxvzigvBz9Ncw@mail.gmail.com>
Subject: Re: [yocto] Building u-boot with clang
To: anirudh@astranis.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Oct 2025 01:30:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65942

On Thu, Oct 16, 2025 at 5:51=E2=80=AFPM Anirudh Mathukumilli via
Lists.Yoctoproject.Org <anirudh=3Dastranis.com@lists.yoctoproject.org>
wrote:
>
> Thanks for the quick response!
>
> My issue actually is that the GCC compiler removed support for the chipse=
t I'm targeting in GCC 9. So, I either have to somehow pin yocto to using G=
CC 8, or use clang to build everything. Utilizing clang seemed like the mor=
e resilient option moving forward, especially if we want to use newer C++ v=
ersions, but if we need gcc-cross-powerpc to compile glibc and compiler-rt =
then that's not a viable option. Are there any plans to support for these c=
omponents moving forward?
>

There are no plans if the support is gone in gcc 9 that's a red flag
for OE to support, these days minimum version is gcc 10 for OE/Yocto
if you are using master branch.

> If not, then I think I'll just have to try and use an older GCC version -=
 is there a way to tell yocto to use GCC version 8.5.2 (or just any version=
 before GCC 9) when compiling the u-boot recipe?

you can do some hacks, if its just needed for u-boot -
https://github.com/YoeDistro/meta-odroid/blob/master/recipes-bsp/u-boot/u-b=
oot-hardkernel_2015.01.bb#L26-L31

>
>

