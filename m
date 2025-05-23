Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE6D3C54ED1
	for <webhook@archiver.kernel.org>; Fri, 23 May 2025 20:27:43 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web11.290.1748032056629838885
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 May 2025 13:27:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=DI6r4+7R;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43ce71582e9so1482075e9.1
        for <yocto@lists.yoctoproject.org>; Fri, 23 May 2025 13:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1748032054; x=1748636854; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nF34l+lnD0sfRe7J8L99Nzi2AoGiVO/LOtzn6SsvZbk=;
        b=DI6r4+7RqRa1DyY05eQ6SZDEAMXPHU1m/0tqF4yzQTlgZwUIdVoEiasb72eltwTvLw
         7v/mZaaak6HEDfulolhSOlygHsieBMicKTc3JwoFH1CJzxMmVYq11O3yyKTa++fPNuXo
         0IoUbM92iZjjlyt9VWEE+tNqWXidWkekibiRw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748032054; x=1748636854;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nF34l+lnD0sfRe7J8L99Nzi2AoGiVO/LOtzn6SsvZbk=;
        b=Bnom7eEimu3rxPkUY1eBKb0krFiLnENTK/8p4SjOcA7KwAGzZLJZPxw9iXin68hlXv
         xPEYB1DcQS89WXgHs6IwZpPFCF5UNB46q1PWlfMrtjcyr76S8k0+rEiybHaRjyqJ9ow1
         /HEr9u/JxI0LBG9NJTGprn9TnehqAwMQ+C3H/ATvsWGEp1mGuxWFbQ0T74MK6+fQ7DcS
         vG0V1a425MCyfWhjjIyCbRtYewpJuWBBRNuFU6V5BrM5tbyGpuNvz9PSTw1gOz9fkOl7
         v6D8nD14Y4YPdMpnyM/jyp9qj34SIM5jUX1lGvzklS1IbTTaCGpy0ZAY1hf3RbyY+AN2
         Kyog==
X-Gm-Message-State: AOJu0YwRESs0fM4OHC3n4tUUfT+olbbpcsNh8e79pxrQbqS2aW3H7kTm
	kFAQ21LnuAnjSIs44nrmVhFHt8Rz2TsELjyPM5NI3r/kh+ddk1365fNQ331oUYVoSTHqGZZ/D2M
	RtywM
X-Gm-Gg: ASbGncuX3KTqly5j5UqmPo0mESU6E2CuMUW+ml2eUywPbtdS3zODTERHaomMGFD6Sr1
	Q2XsmEgIvL+fRSKDd0IuxOrRPTSk4L92AUL1lA4NJh8KrXsx0PhriwCIo0ztev5oUFNN/1suXFS
	b6UP7KNV7O0LUK88G+DlhZLIxVvRe8JkkW5ohSpOS1Vpr/i0fboDt1d0ujezVf6Dvh8VC3BdU62
	xS+TYRorLdrl3OA063pVVwKP6A1y7cWiF+NyT+YCL9GkB4tVPjz/7EHqBcKwRn5UVXqiGCHngFw
	3dU9QMwUK6FDsO8psFntAYTMCjTZm3qOrsk/zDc0om2wj8X+d1R1C3Q90z6ahL6/82nhaLVEGGQ
	L8kkZ3IKTi8jU598y7rGSewydqmn1mSWD50xIiw3n
X-Google-Smtp-Source: AGHT+IHmilZTo23a0/5zdog9Rux0lptBXTiUeRX5v1b8B5Wc3t8IKXtgu8JN9+ilq1BbbFnG1GtxyA==
X-Received: by 2002:a05:600c:1d20:b0:43c:fd72:f028 with SMTP id 5b1f17b1804b1-44c93016743mr3481115e9.29.1748032054000;
        Fri, 23 May 2025 13:27:34 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:40d0:8370:7cac:75bd? ([2001:8b0:aba:5f3c:40d0:8370:7cac:75bd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f3814262sm152075345e9.25.2025.05.23.13.27.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 13:27:33 -0700 (PDT)
Message-ID: <bfb7b2f78c09c9b6c1556e69d348b1ffe50928a7.camel@linuxfoundation.org>
Subject: Re: [yocto] Rust project development for target (missing std)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, tsoos99@gmail.com
Date: Fri, 23 May 2025 21:27:32 +0100
In-Reply-To: <Dtio.1748031329810429666.lpPd@lists.yoctoproject.org>
References: <Dtio.1748031329810429666.lpPd@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 May 2025 20:27:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65412

On Fri, 2025-05-23 at 13:15 -0700, Tam=C3=A1s So=C3=B3s via lists.yoctoproj=
ect.org wrote:
> Hi!
> =C2=A0
> I=E2=80=99m building a custom image for a controller I=E2=80=99d like to =
use in my
> irrigation system. I managed to create a custom distro and
> successfully built a base image.
> Now I=E2=80=99d like to use the standard SDK to develop a Rust app for th=
e
> controller. I hit a roadblock unfortunately. I can=E2=80=99t figure out h=
ow
> to include the Rust Standard Library for the target device in the
> SDK.=C2=A0
> I saw you were involved in the development of the rust-cross-canadian
> recipe, so that=E2=80=99s why I=E2=80=99m reaching out to you.=C2=A0
> =C2=A0
> Here=E2=80=99s the error I=E2=80=99m getting:
> =C2=A0
>=20
>=20
> cargo build --target armv7-zeus-linux-gnueabihf
> =C2=A0 =C2=A0Compiling hello-rust v0.1.0 (/home/tamas/hello-rust)
> error[E0463]: can't find crate for `std`
> =C2=A0 |
> =C2=A0 =3D note: the `armv7-zeus-linux-gnueabihf` target may not be
> installed
> =C2=A0 =3D help: consider downloading the target with `rustup target add
> armv7-zeus-linux-gnueabihf`
> =C2=A0
> error: cannot find macro `println` in this scope
> =C2=A0--> src/main.rs:2:5
> =C2=A0 |
> 2 | =C2=A0 =C2=A0 println!("Hello, world!");
> =C2=A0 | =C2=A0 =C2=A0 ^^^^^^^
> =C2=A0
> error: requires `sized` lang_item
> =C2=A0
> For more information about this error, try `rustc --explain E0463`.
> error: could not compile `hello-rust` (bin "hello-rust") due to 3
> previous errors
> =C2=A0
> And indeed libstd for the target isn=E2=80=99t found anywhere inside the
> SDK=E2=80=99s sysroot. Building the app for the host target x86_64-pokysd=
k-
> linux-gnu works just fine, since there=E2=80=99s a libstd in the sysroot =
for
> it.=C2=A0
> Here=E2=80=99s the toolchain config from my image=E2=80=99s recipe as wel=
l:
> =C2=A0
>=20
>=20
> RUST =3D "rust-cross-canadian-${TRANSLATED_TARGET_ARCH}"
> TOOLCHAIN_HOST_TASK:append =3D " \
> =C2=A0 =C2=A0 ${@all_multilib_tune_values(d, 'RUST')} \
> =C2=A0 =C2=A0 nativesdk-libstd-rs \
> =C2=A0 =C2=A0 nativesdk-binutils \
> =C2=A0 =C2=A0 nativesdk-gcc \
> =C2=A0 =C2=A0 nativesdk-glibc-dev \
> =C2=A0 =C2=A0 nativesdk-libgcc-dev \
> =C2=A0 =C2=A0 nativesdk-rust \
> =C2=A0 =C2=A0 nativesdk-cargo \
> =C2=A0 =C2=A0 nativesdk-rust-tools-clippy \
> =C2=A0 =C2=A0 nativesdk-rust-tools-rustfmt \
> =E2=80=9C
> =C2=A0
> I=E2=80=99m on the latest version of Yocto Scarthgap.

Did you try adding libstd-rs to TOOLCHAIN_TARGET_TASK?

Cheers,

Richard

