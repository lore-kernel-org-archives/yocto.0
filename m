Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C6BD609D1
	for <webhook@archiver.kernel.org>; Wed, 27 Nov 2024 10:46:09 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web11.69197.1732704362557027334
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Nov 2024 02:46:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TZkd++CG;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-434a7ee3d60so3717075e9.1
        for <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 02:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1732704360; x=1733309160; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GXZDHIMcuaHQXaFeEIJ4M1Y1d0XabH/01EJEvKgaEts=;
        b=TZkd++CGyI5EzLrzxXQNJi4QbirK6GHVQfkTNplavT31s/hXG8zRHSIy86fE7/ZQAL
         UXoQgmNk/kFz/mBlL+zv8ilp5Nj8gceof3WbZBzu3yHG+SAvBn/u8Zbam8y69/8hIY9b
         eEWGT9JuHTna6tvo5l3ErnV5oNcSeJrXI8RHU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732704360; x=1733309160;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GXZDHIMcuaHQXaFeEIJ4M1Y1d0XabH/01EJEvKgaEts=;
        b=K2ik/87gOWcVzQ/4qE08oR5izvL2UCXhViufY59vHgWEv6FOhaSvyV2omwiP9Dx8o2
         6qpQ/o/+Pb00y0vOtpGhomA4ueWoKD7N310FULoY7Fym6xSdquTQZnrxXFWAiJEyYMu3
         KD5e3mi5oYljGpEFZaRStoaWyJAA8BUrelrAZatc67R7VW30wTAUmhJCt2+/L7i7jlSd
         7AvqdI3HPtTlwQifCWcf+g2T1elPLRpne+JTgWPISZiM3VSYCxENYoWuk9RHmI3GG24d
         LOrpGyrx3kgHfDZuN2YrNbM8HqSCPQ7GGs322DLWy0s9EgMeBh7D8siNQfpJWb/Q+H0p
         RqVQ==
X-Gm-Message-State: AOJu0Yyj2NuqEr1UgjpiRjTOoFUNHfdOlCdRC8ugn5hIfpaHhK/0Wb2q
	yxe5/TnRkUY6pjJNq2ywHQkelZNZrNiHix7i1HamWM2jMy+KuOCt1Og14sBwW9kdSlrRE4M3Q0B
	v
X-Gm-Gg: ASbGncvngVQ26GWo/BFl1x8i2PaxRhg+oRP2WaIJO8N0FU5FnB72zcb5bCMSbKs+cRP
	xL+LPapoGVxTKQupphza+F/ACdyT70T5949MbIK5tXyvdJF7IZaKhAd3FFp43RyA5SFyEOdLl36
	D9ocHkVjC0VtrY9itY+2uZo/xNQxGiAp9GrVPRNH5jSZX4f5kr0KD2h8LMenTcViiFNB1BXhAPd
	8IvJ1M1FanZt0vDQhP3g674MgDefCtAPgGzhJTYykSTua7WKlUlG82nk6B5Pvh/HlTN+1a+8QOs
	yyjds79fxLonEj/+1V1jsMu597srXVlWfNyT
X-Google-Smtp-Source: AGHT+IGlagn1eCpi8xgROXbzQ6/xQfmGP0M4O8t9Wz00BKDtkT9xdf1GvXex3VWor2N0uYY2sx6Rtw==
X-Received: by 2002:a05:600c:4f50:b0:434:92f8:54a8 with SMTP id 5b1f17b1804b1-434a4dde2c8mr50372065e9.0.1732704360635;
        Wed, 27 Nov 2024 02:46:00 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:d8f2:574:7ade:5a68? ([2001:8b0:aba:5f3c:d8f2:574:7ade:5a68])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa6e929csm17933445e9.0.2024.11.27.02.45.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 02:45:59 -0800 (PST)
Message-ID: <ae9140093ed616292002522752109636a9ad0be9.camel@linuxfoundation.org>
Subject: Re: [yocto-status] Rust on MIPS for Yocto
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, Lukas Woodtli <lw@hqv.ch>
Cc: Randy MacLeod <randy.macleod@windriver.com>, Khem Raj
 <raj.khem@gmail.com>
Date: Wed, 27 Nov 2024 10:45:58 +0000
In-Reply-To: <8757f1f3-d680-49b1-907b-9b96c6a482be@hqv.ch>
References: <8757f1f3-d680-49b1-907b-9b96c6a482be@hqv.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 10:46:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64362

Hi,

I've redirected this reply to the main yocto@ list since the status
list is meant for the status reports only.

On Tue, 2024-11-26 at 17:49 +0100, Lukas Woodtli via lists.yoctoproject.org=
 wrote:
> It came to our (arguably a bit late) attention that the 'selftests'
> for Rust on MIPS were disabled.
>=20
> We are in the unfortunate position to have a MIPS device in one of
> our products. We develop several applications in Rust that run on
> that device. Therefore we would really like to have a well maintained
> Rust toolchain for Yocto on MIPS devices.
>=20
> To bring back Rust on MIPS support to Yocto, we could invest some=20
> resources. And we would also be able maintain it.
>=20
> Where should we start our journey? Wold it be beneficial to join one
> of the regular meetings to discuss that topic?

Joining the weekly call would be a good way to discuss, yes. For info,
next week's call is cancelled due to the project summit happening at
the same time.

To explain a bit about the challenges here, rust is now a "3rd tier"
platform in rust itself, so the issue goes beyond Yocto Project. At
that level they'll take patches to fix it but they don't test it. That
will make it hard for us to support if the upstream is not doing
testing themselves, which is why we made the decision to stop testing
ourselves.

Out of interest, are you using 32 or 64 bit MIPS platforms?

MIPS is proving challenging to support in general as when we upgrade
toolchains/qemu/kernels/other components, we end up having to fix
regressions before we can merge things. Our developers are getting a
bit tired/frustrated with carrying it along.

The project is keen to embrace architectures but equally, we can't hold
back development for things which aren't actively maintained. I'm open
to ideas on how we could make things work. Sadly the situation does
feel to be deteriorating.

Cheers,

Richard



