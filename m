Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A5A5CA0EF8
	for <webhook@archiver.kernel.org>; Thu, 21 Aug 2025 10:02:31 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web11.5578.1755770548619142999
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Aug 2025 03:02:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XAlNfxbw;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: martin.jansa@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-335360f9b6aso15918401fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 21 Aug 2025 03:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755770547; x=1756375347; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sFKSFPO4VVaZ827S2SicB1kW0mpEJ7bg3RlTH+4ZRiw=;
        b=XAlNfxbwjGykpM0dTrV36rZz7zmhBRjQDe6AjxzKG3XZoNUVHOWg25zL4OL9pWDtla
         mUYZq6jtYyX440Hn2OSFU+cXfGOAMkV/RlswHDgKVTvwOx70n3sr3iP1T7Ng+Sb1b2SD
         AijUX6pbnabyO2FOjS3QaFIVTao31WqJMuuRnXnZg5OiUeCU3URV9yyoJJ9SH4sBBm23
         dz6Osj6IUiWemvMPHo1BriSNtfWnLaA0+jejGdHhwcGloMsVHo+vEhuU2vTS1cdsiA3z
         1tIjzTnhmm2GH/PrWBWwdbAevi4czVWD/63bi0h8LyT+RXdalLXmxCjx/Zo2VBMk+O7D
         JwmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755770547; x=1756375347;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sFKSFPO4VVaZ827S2SicB1kW0mpEJ7bg3RlTH+4ZRiw=;
        b=UKVSynXguSU3tLM417RIYw6rrZ0ZIyTa8UjZ4Fft80wzCi07yh5V34ryye+2UsGYRI
         ZLa0IbibeKd6MACP8a0p1HFbQzXueypzRYGeYxd8InAJSl22WrOQpH5zPG18SjICy4Bf
         diuq/1XeetcCggs6XwGrcJQd4Bp4Q8S6kmhqtF/cmZeww6uN9qzmnhNgItlxrWp4CXCu
         0ryhIRi0rvYSZqEuy6SqIwFoeuTSxg4Gyt+6Z6bnXHyLiPZD0bzpk0ykUcDZThh7fXRq
         f4+vqJtoJAF1q2GArSS3JjhzjWekgpXz5WA5aPQhUm8KhN8P1kvh+DLDxYx+WCVoVj6Q
         w9fA==
X-Gm-Message-State: AOJu0YxnXCIkVayaO913zip+yYAaBZ7igdPESAIay+xQDemZ/VeKY2ch
	qGlOCNT5n1rpTnYeAfcPkNDDKmyIaLmrz+C51nUH/KBj7sdnZt8mOth67ywk+Qut5hdbokYjqpz
	Lq0TaJvqdDqmiKZl8ZiGfzj89F1ZUrWjLsg==
X-Gm-Gg: ASbGnctpfRR+aC/CzjGnhbvENMoTxJpM1G52p18ipKCpebeee9yJENjF9q74TmWy/T3
	Y9EmYbtJjuDZrKNsOyzhWuCN7oziDRCgUkzjIb54T5xUdZh1SbY3BC+v5Y/3DG06Nnxtb2JuKjm
	dQXjq2oFKceUaNXFxhuWAOdjrCTLU0mt/b1i4krTocttarzbZ/1MmFIO7KMBwJG9t/ABYmq8xBM
	h0JAZZg+g==
X-Google-Smtp-Source: AGHT+IHMwWamR/kWQAxcsH5+cj9bsSM6HNq3CV0C/2FMQbFBwvdbdQZpaxPsjkaneDwRlknx2KwFBkwdJnFEMwjKfBc=
X-Received: by 2002:a05:651c:4203:b0:331:e799:978f with SMTP id
 38308e7fff4ca-3354a1b23d3mr4096951fa.8.1755770546360; Thu, 21 Aug 2025
 03:02:26 -0700 (PDT)
MIME-Version: 1.0
References: <7002abdd-c152-47f0-a5cd-f06fa20d4fea@ibeeto.com> <CAMSfU+6pczmddDTG8tsU46Z71Y-rzpfHFFxRqc3qeYX7r3=eig@mail.gmail.com>
In-Reply-To: <CAMSfU+6pczmddDTG8tsU46Z71Y-rzpfHFFxRqc3qeYX7r3=eig@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 21 Aug 2025 12:02:13 +0200
X-Gm-Features: Ac12FXzaiWlm5iZIdcylR62GwjOh9D_S6aWAmst0NhisYLHUQjQNVHXBFm5Gg6Y
Message-ID: <CA+chaQcteEg229Kg1P2UARG_neTi9KMCArVDE5cw1iG6+2aEpw@mail.gmail.com>
Subject: Re: [yocto] Scarthgap native build errors
To: yocto@lists.yoctoproject.org, yoann.congal@smile.fr
Cc: rudolf.streif@ibeeto.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Aug 2025 10:02:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65781

FWIW: ubuntu-25.10 (which I happen to use in docker for some of
scarthgap builds) snapshot switched to gcc-15 last week as well, so
I've sent fixes for these (cmake and git will be sent later today)

On Tue, Jun 24, 2025 at 8:02=E2=80=AFPM Yoann Congal via
lists.yoctoproject.org <yoann.congal=3Dsmile.fr@lists.yoctoproject.org>
wrote:
>
> Hello,
>
> Le mar. 24 juin 2025 =C3=A0 19:06, Rudolf J Streif via lists.yoctoproject=
.org <rudolf.streif=3Dibeeto.com@lists.yoctoproject.org> a =C3=A9crit :
>>
>> I am building on Fedora Core 42 with gcc 15.1. I am currently seeing two
>> strange errors when building native packages for cmake-native and
>> git-native:
>>
>> cmake-native:
>>
>> tcu-firmware/build/tmp/work/x86_64-linux/cmake-native/3.28.3/cmake-3.28.=
3/Utilities/cmcppdap/include/dap/network.h:31:39
>>
>> error: =E2=80=98uint32_t=E2=80=99 has not been declared
>> |    31 |                                       uint32_t timeoutMillis =
=3D 0);
>> |       |                                       ^~~~~~~~
>>
>> This can of course easily be fixed by including <cstdint>. However, it's
>> still strange that this is happening and it's the first time that I am
>> seeing this.
>>
>>
>> git-native:
>>
>> | reflog.c:211:104: error: macro =E2=80=98unreachable=E2=80=99 passed 3 =
arguments, but
>> takes just 0
>> |   211 | static int unreachable(struct expire_reflog_policy_cb *cb,
>> struct commit *commit, struct object_id *oid)
>> | | ^
>> | In file included from git-compat-util.h:225,
>> |                  from reflog.c:1:
>> | /usr/lib/gcc/x86_64-redhat-linux/15/include/stddef.h:468:9: note:
>> macro =E2=80=98unreachable=E2=80=99 defined here
>> |   468 | #define unreachable() (__builtin_unreachable ())
>> |       |         ^~~~~~~~~~~
>>
>> The weird thing with this issue is that line 211 in reflog.c declares
>> the function unreachable() with three parameters. However, the compiler
>> interprets it as the macro unreachable for stddef.h being called.
>> Unfortunately, I don't have a solution for this.
>
>
> Looking at your cmake version, you are on Scarthgap.
> Fedora Core 42 is not a supported distribution for Scarthgap : https://do=
cs.yoctoproject.org/5.0.10/ref-manual/system-requirements.html#supported-li=
nux-distributions
> So, the official solution is to use a supported build OS (as a container =
for example).
>
> FYI, Fedora Core 42 is not even tested on master right now so it is defin=
itely too recent for scarthgap.
>
> Regards,
>
>>
>> Thanks,
>> Rudi
>>
>>
>>
>>
>
>
> --
> Yoann Congal
> Smile ECS
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65543): https://lists.yoctoproject.org/g/yocto/messag=
e/65543
> Mute This Topic: https://lists.yoctoproject.org/mt/113810984/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

