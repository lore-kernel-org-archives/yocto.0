Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34558C77B7F
	for <webhook@archiver.kernel.org>; Thu, 11 May 2023 16:19:17 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
 by mx.groups.io with SMTP id smtpd.web10.881.1683821956314328575
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 May 2023 09:19:16 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=ldpx3QgJ;
 spf=pass (domain: gmail.com, ip: 209.85.167.173, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-39420384cc4so1704248b6e.0
        for <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 09:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683821955; x=1686413955;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iNz95N14yJwmlf9qYmJRhamWkEHPwk/kBkLZsEdD8ZE=;
        b=ldpx3QgJ8kaVO1w9nFli4pEnnyyBlc0P49PecV4KRQiBMjZZhVQ37VsbYf/Ye4RqEW
         O3z2cJ5NMw505dY4cedf9f9bJu24ajAgGBtj56DSLEBVNfEExoURHHwyFSEIcPyoTyNt
         cpQYi/hU158fIENz2MZhBAbM18B8AJEP1j4uI5hEyR9pCIy8rsungXbnVDHWB7W6UinA
         jEdO66c2F1tqySt+pnf+ijoIT/7X7xlVCFB+zzAfq5ryQRnmo2K0qElqIkavl1RMAstB
         I1IP9RJ+gu8guWKWk1Yzex9psz7C1vHbhwKu1A+vXr56IrZYIJ17aT0veuSLsv/jBUza
         pvGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683821955; x=1686413955;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iNz95N14yJwmlf9qYmJRhamWkEHPwk/kBkLZsEdD8ZE=;
        b=QptQc7J5FPYdk3xGOtUkx82+V02xj/3kxMgki0zX0jE1YuYa8byBqy17MOKzNPvR3+
         qykvm4Sxujk0PNAnZEQJba/lyhgRK28uTS3gOYJBZwfrOAmlbodBU/aOgs6AMPFZSlU9
         qnao9Xj8S2sddrHPE3Vp3IyO7LcGKoJVg4A7lEJuwLIvPUEQmFGcctdERKoO3kw4u+no
         PaDa6jXN6pRf8CUZ10d4Igbu64msu4ppzhYcHuyMhbkmjKZdut4hq1wFw2f986dJ6O2u
         KJrjvrAyuJPPeJBFXr8YoSkhwwK2Zg4f0LY7o1+7wmcBiJN1NQTm1rwjqNnxvXcnEZ7S
         8Zpg==
X-Gm-Message-State: AC+VfDyZ8EW8yindBQyR0NA+ZqYGhszML/5QRE5Lm90bV+wr7nF/a0Eq
	3see3h8d6DFc9Zuya9il9TlH3p2ezTZvg7UHOI8=
X-Google-Smtp-Source: ACHHUZ7Xo6KaFYb6d3bCp6dt6WIgTpGd2s6EhZrD54pT8gHRW0xftu6DJm6pMF9/q8yBDEmNkLPXF0EQk+Mo/gWz/t4=
X-Received: by 2002:a4a:9297:0:b0:54f:5e31:31c5 with SMTP id
 i23-20020a4a9297000000b0054f5e3131c5mr5060614ooh.2.1683821955337; Thu, 11 May
 2023 09:19:15 -0700 (PDT)
MIME-Version: 1.0
References: <CA+-BmJaCpaKURf0zrWRwY2gUfNkJFSY2mwiBJMhWbqb8W4_Vxw@mail.gmail.com>
 <C00CFD2F-FCE6-4E73-AF4C-D856176267A6@arm.com>
In-Reply-To: <C00CFD2F-FCE6-4E73-AF4C-D856176267A6@arm.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 11 May 2023 09:18:49 -0700
Message-ID: <CAMKF1soReGst1zJRN6_5CVicCK2BW4F_39Fth=yePQT2Y9NejA@mail.gmail.com>
Subject: Re: [yocto] openssl/libffi build broken for musl/cortex-m7
To: Ross Burton <ross.burton@arm.com>
Cc: "ayoub.zaki@googlemail.com" <ayoub.zaki@googlemail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 16:19:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59992

this is known - see https://github.com/libffi/libffi/issues/267
someone needs to fix it for thumb-only mode.

On Thu, May 11, 2023 at 6:04=E2=80=AFAM Ross Burton <ross.burton@arm.com> w=
rote:
>
> On 11 May 2023, at 10:37, Ayoub Zaki via lists.yoctoproject.org <ayoub.za=
ki=3Dgooglemail.com@lists.yoctoproject.org> wrote:
> > I'm trying to build a simple yocto (Kirkstone) initramfs image containi=
ng only busybox for a STM32Fx cortex M7 based MCU:
> >
> > https://www.st.com/en/microcontrollers-microprocessors/stm32f7-series.h=
tml
> >
> > U-boot and Kernel are building and running fine so far.
> >
> > The initramfs image Build breaks at openssl/libffi package which I DIDN=
'T enable and not required in my  image. Probably Build dependencies for so=
me other packages:
>
> It is required, as it=E2=80=99s being built.  This may not be intentional=
 so you should definitely have a look at what you=E2=80=99re putting into y=
our initramfs, and if there are any optional dependencies you can remove.
>
> > Is this problem known ? Any suggestions on how to fix this?
> > 2023-05-11 11:25:31 - INFO     - MACHINE              =3D "stm32f769-di=
sco"
>
> Is this a custom machine?  Can you share it?
>
> > 2023-05-11 11:25:34 - INFO     - | ../libffi-3.4.4/src/arm/sysv.S:104: =
Error: selected processor does not support ARM opcodes
>
> The M7 doesn=E2=80=99t support ARM opcodes, so if you need libffi then yo=
u=E2=80=99ll need to port it.  Hopefully you don=E2=80=99t actually need li=
bffi if you build less into your initramfs.
>
> > 2023-05-11 11:25:36 - INFO     - | /workspace/meta-stm32f7x/build/tmp/w=
ork/cortexm7-poky-linux-musleabi/openssl/3.0.8-r0/recipe-sysroot-native/usr=
/bin/arm-poky-linux-musleabi/../../libexec/arm-poky-linux-musleabi/gcc/arm-=
poky-linux-musleabi/11.3.0/ld/workspace/meta-stm32f7x/build/tmp/work/cortex=
m7-poky-linux-musleabi/openssl/3.0.8-r0/recipe-sysroot-native/usr/bin/arm-p=
oky-linux-musleabi/../../libexec/arm-poky-linux-musleabi/gcc/arm-poky-linux=
-musleabi/11.3.0/ld: error: libcrypto.a(libcrypto-lib-armv4-gf2m.o): confli=
cting architecture profiles A/M
>
> For some reason openssl is trying to link A and M code together, which is=
n=E2=80=99t right. Hopefully you can also remove OpenSSL from your image.
>
>
> Ross
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59987): https://lists.yoctoproject.org/g/yocto/messag=
e/59987
> Mute This Topic: https://lists.yoctoproject.org/mt/98824124/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/leave/6692173/1997914=
/1837948400/xyzzy [raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

