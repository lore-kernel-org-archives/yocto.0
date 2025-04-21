Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7898CC369AB
	for <webhook@archiver.kernel.org>; Mon, 21 Apr 2025 16:54:38 +0000 (UTC)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
 by mx.groups.io with SMTP id smtpd.web10.19801.1745254469738041171
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Apr 2025 09:54:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hPFwbbdc;
 spf=pass (domain: gmail.com, ip: 209.85.167.171, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3feb3f54339so3717116b6e.1
        for <yocto@lists.yoctoproject.org>; Mon, 21 Apr 2025 09:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745254469; x=1745859269; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0IEiAtEg3Ya4t9adZLmS1kFzbzfTH1CHMAKZtqBMzgg=;
        b=hPFwbbdcJvLObV2J3XAgDV1woGMGt1UDGcYoB5dVP4M3Ki8NPqEtpyBsbcBFpRlXbz
         g2zLUHlbHKLzoWA5zJjz4T5LlMYVEUMxoU7N7kJaf781EKS5n0sprgKUEd8JuWg0+HQr
         otouBp/M3MITgi4vZecIpS5VC5ZL6Cr0OnRmyRGHfg+srA/za81lzZy2JnC0QVxmUjKl
         6pS7IMbH4tjf0LOSCCv8BLrMe4lXN5xkz0bUzriw84LsEHzY/mRyMF69IeTH4NT4utRh
         lwilIzpScRYiOlCsud4P63/kQJeBKqXbCzyxlZK/DP9IA8XMTk/ptAfjYnIUnBfI9AbA
         0HTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745254469; x=1745859269;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0IEiAtEg3Ya4t9adZLmS1kFzbzfTH1CHMAKZtqBMzgg=;
        b=gv7xT7XDExuAc1A0BX1p8mIkVgn4l6Sr8mmGzsZzleTKtkmAC3soj8WYsb0YUjwazv
         D5TArHT9KqLKMl7WvvSPmDbwUgcxSAS5qpVnMwMKzo9Tg3UnP47CoplsohcEq888/ROq
         ItNK52WX4hR0GS2dLYBPTlsL9JBnswyyTHpdVbJS3zYlrLck00w0L1ijuLQttdh8eemT
         FhKkDK70H9+BGX8zS7R8tpwCSS7uWN7V30SKgSOeCYsaDgAIqg+9iyA/zWlnY4rnqrZe
         1gzGlKkX7BY1fF5GHxPjqjlnK49XYTmBuFmMJEHw4cGSZzcjmOHhrEgN7gtbaF8TXo0l
         IrjQ==
X-Forwarded-Encrypted: i=1; AJvYcCUvBysFpUg5qdfXKv76ZUTE3CskgpqG0U4VCbB2npDdrKLyx9QGGp0EvwmG8AysDhfSPVniuQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yw1CccbVcAQWLQKiD+rAoKN6TbwzBXnfIkECefjcHhU53aWQj1o
	axQSzyWObtCdKFUaLh89rCK49MsVhMFCKT3TROzE8e4BwJ9wnWxVAtvsOaHGBIQyOq3uQynkIvj
	GsfZLUdKYly7aY14TcgCxUWxBTb8=
X-Gm-Gg: ASbGncsfWuT0ReowP8zx7FKyprYjQNFS2leLUTeMC3skDYVSpYsteNEmIcn7M8kLYRY
	lG2n7MaGDo+4tYCUbHK3273+p2Ob9LddQdAOphMd+uXw3yW6qpjYa3M0UOIgaB35xPJx/usckE3
	pcEjoFpz9Kqrw1NPZH5h5L
X-Google-Smtp-Source: AGHT+IFB3ttngohwpffKWuRyz9O/ccfxV1KHXH+AbCBv5FzTBUJz9ptMIa1qV/QGZbgOgcgViWBjes6mV3HKa/v6HyU=
X-Received: by 2002:a05:6808:4494:b0:3fa:7909:2719 with SMTP id
 5614622812f47-401c0aa800bmr8678875b6e.19.1745254468946; Mon, 21 Apr 2025
 09:54:28 -0700 (PDT)
MIME-Version: 1.0
References: <OSRPR01MB115970EE7D0A20965CA8763EA9BB82@OSRPR01MB11597.jpnprd01.prod.outlook.com>
In-Reply-To: <OSRPR01MB115970EE7D0A20965CA8763EA9BB82@OSRPR01MB11597.jpnprd01.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 21 Apr 2025 09:54:02 -0700
X-Gm-Features: ATxdqUHgOQNZYSqrFCJ9lZlmOnr0QtT5M2ZhnB0eCDk1gXSISa_yTP9RaidkMn4
Message-ID: <CAMKF1so63hJAmMzZ7U5FC4DY+naMbth3-eyfR3nGkXjtikR+Pg@mail.gmail.com>
Subject: Re: QA Issue: /usr/lib/libmozjs-128.so uses 32-bit api 'stat64' [32bit-time]
To: "Yiding Liu (Fujitsu)" <liuyd.fnst@fujitsu.com>
Cc: "Maohui Lei (Fujitsu)" <leimaohui@fujitsu.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Apr 2025 16:54:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65211

On Mon, Apr 21, 2025 at 1:51=E2=80=AFAM Yiding Liu (Fujitsu)
<liuyd.fnst@fujitsu.com> wrote:
>
> Hi Khem Raj
>
> cc all
>
>
>
> When I build lib32-mozjs-128 which is 32bit of meta-openembedded/meta-oe/=
recipes-extended/mozjs/mozjs-128_128.5.2.bb, met following issue:
>
> WARNING: lib32-mozjs-128-128.5.2-r0 do_package_qa: QA Issue: /usr/lib/lib=
mozjs-128.so uses 32-bit api 'stat64' [32bit-time]
>
> WARNING: lib32-mozjs-128-128.5.2-r0 do_package_qa: QA Issue: /usr/lib/lib=
mozjs-128.so uses 32-bit api 'fstat64' [32bit-time]
>
> WARNING: lib32-mozjs-128-128.5.2-r0 do_package_qa: QA Issue: Suppress wit=
h INSANE_SKIP =3D "32bit-time" [32bit-time]
>
> WARNING: lib32-mozjs-128-128.5.2-r0 do_package_qa: QA Issue: /usr/bin/js1=
28 uses 32-bit api 'stat64' [32bit-time]
>
> WARNING: lib32-mozjs-128-128.5.2-r0 do_package_qa: QA Issue: /usr/bin/js1=
28 uses 32-bit api 'fstat64' [32bit-time]
>
> WARNING: lib32-mozjs-128-128.5.2-r0 do_package_qa: QA Issue: Suppress wit=
h INSANE_SKIP =3D "32bit-time" [32bit-time]
>
>
>
> I am pretty much sure that "-D_TIME_BITS=3D64 -D_FILE_OFFSET_BITS=3D64" h=
as been enabled by checking log.do_compile
>
>
>
> I can only find some too much old patches to solve this kind of issues by=
 manually replacing off64_t-stat64 with off_t-stat:
>
> meta-openembedded/meta-filesystems/recipes-utils/xfsprogs/files/0005-Repl=
ace-off64_t-stat64-with-off_t-stat.patch
>
> meta-filesystems/recipes-utils/xfsprogs/files/0005-Replace-off64_t-stat64=
-with-off_t-stat.patch
>
>
>
>
>
> But there are dozens of stat64() or fstat64 in firefox-128.5.2 source cod=
e.
>
> Can you give me some suggestions to solve this issue?
>
>

Can you check the final compiler cmdline to ensure these options are
really being passed to compiler and post the cmdline
here if possible.

>
>
>
> Ps: Below are reproduce steps:
>
> Add in local.conf the following lines:
>
>  MACHINE ?=3D "qemux86-64"
>
>  require conf/multilib.conf
>
>  MULTILIBS ?=3D "multilib:lib32"
>
>  DEFAULTTUNE:virtclass-multilib-lib32 ?=3D "core2-32"
>
>
>
> bitbake lib32-mozjs-128
>
>
>
>
>
> Thank you
>
> Liu Yiding

