Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F625EB64D7
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 11:21:46 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.8448.1687346498953140356
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 04:21:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=FgdeHB9p;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-4f76a0a19d4so7916562e87.2
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 04:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687346497; x=1689938497;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v8wF1bnLXnATd8wd6wNZIL4Cp6QQUaNGha4XrL5LX1k=;
        b=FgdeHB9pPTdfMJ6UzFGD0LlCmvmkLLlhZnwK9iPYbLugHlZtxLcnvuxDeMgCQDMA9T
         vBgZVi/Sr0FnUrM8UVA5xE0bushDhrlGSAGPt8HrdEC40LJzIctpFwrauZU1Aq/GZMBZ
         3Lsh+CAIpLm9F3B+Y//UJ2Df35wBpF7nW9XHBxAGX9MEaOT4KAguEqu2MfGDh9fMmOfd
         neAUgmt6M145N5uPwOwvUuGK4WdBcr5obuqEKtuo2Gze1aTg+JG/EpLqYy9UNujeIFV3
         jNcorjAZvo0WELwQ7G8sqsF47YRwD9dnrX/dCo1pDFYiTGQSKaQ+l1o+oJHvhrI5+q3F
         wnQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687346497; x=1689938497;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v8wF1bnLXnATd8wd6wNZIL4Cp6QQUaNGha4XrL5LX1k=;
        b=IcahW/frL7wS2I+WWQOpHglRTcF3uuBATzzS54N36g96buV6DMgh6TkzFwENkc2/CD
         0wIndMbURMYcgIDybXSmQHhilrkvMySsGmDtCnLKRA8OOv+2wFy/Ih63+6tZtOjRFouM
         k0nHZ8HqTDetXyQFflOUnk4+Opk5wadqluUPYv0CdLB3AS5qZhleqDIpLff6y4/XiGMC
         mmNVsyQCp8q55FdLIc7LF1Ny/P7ep4Z8ffPdw2lerpTcIG3LH8jCbGkqd1AY8W9fj53J
         QVtZJP1tz7JvztVgKaTTM0yTFkFlS1Pmo/bb4dCBivRTAOqWw9ELgzPYz4w9WHd2ZIhm
         SAtQ==
X-Gm-Message-State: AC+VfDxYNOfFFrr6eSEzVVaYqXb5k9vf4cxilT2z1xLeaZolSn+x1d0v
	JzhwW2HWnzw2w7ryIyq6waJ3mzCLg4ZLESsZuHs=
X-Google-Smtp-Source: ACHHUZ5s/X5Lu78qXSLbpxrIprvghpYD0ZabEPiXhQrALmCuWyFEqL0ZmASO9irDw08w8tqCh9ZChz1RHddwC7FxbK0=
X-Received: by 2002:a19:4f0a:0:b0:4f4:aea9:2a2f with SMTP id
 d10-20020a194f0a000000b004f4aea92a2fmr8994152lfb.57.1687346496680; Wed, 21
 Jun 2023 04:21:36 -0700 (PDT)
MIME-Version: 1.0
References: <rvOk.1687345847828201897.bXBi@lists.yoctoproject.org>
In-Reply-To: <rvOk.1687345847828201897.bXBi@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 21 Jun 2023 13:21:25 +0200
Message-ID: <CANNYZj_fBt2Ye_cZ=pQvRHxV-T7mmusKh_RquaFoqO=bJP+r_Q@mail.gmail.com>
Subject: Re: [yocto] python3-speechrecognition building using yocto recipe #yocto
To: lavkhush2208@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 11:21:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60373

That's not how it works. You need to write a recipe that cross-builds
the needed package from source. Taking prebuilt binaries from
elsewhere is asking for trouble, and not recommended even for
experienced developers.

Alex

On Wed, 21 Jun 2023 at 13:10, <lavkhush2208@gmail.com> wrote:
>
> Hi all,
>
> I want to create .deb file of package python3-speechrecognition  , I  suc=
cessfully builded natively on target board riscv platform and i copied bina=
ry from target board and with using  recipe i am copying binary in path: /u=
sr/lib/python3.8/site-packages and trying  to create .deb file from using y=
octo environment.
>
> speechrecognition recipe is-
>
> DESCRIPTION =3D "speechrecognition Packages with dependencies library's "
>
> LICENSE =3D "CLOSED"
>
> SRC_URI +=3D "file://speechrecognition"
>
> S =3D "${WORKDIR}/speechrecognition"
>
> do_install() {
>         install -d  ${D}${libdir}/
>         cp -r ${S}/lib/* ${D}${libdir}/
> }
>
> FILES_${PN} +=3D "${libdir}/*"
>
>
> I am facing one issue here:-
>
> ERROR: speechrecognition-3.9.0-r0 do_populate_sysroot: Fatal errors occur=
red in subprocesses:
> Command '['riscv64-oe-linux-strip', '--remove-section=3D.comment', '--rem=
ove-section=3D.note', '/home/kush/khu/sources/khu-build/tmp-glibc/work/risc=
v64-oe-linux/speechrecognition/3.9.0-r0/sysroot-destdir/usr/lib/python3.8/s=
ite-packages/flac-linux-x86']' returned non-zero exit status 1.
>
> Subprocess output:riscv64-oe-linux-strip: Unable to recognise the format =
of the input file `/home/integration-team/kush/khu/sources/khu-build/tmp-gl=
ibc/work/riscv64-oe-linux/speechrecognition/3.9.0-r0/sysroot-destdir/usr/li=
b/python3.8/site-packages/flac-linux-x86'
>
> Can anyone help me in this, where i am wrong.
>
> T&R
> luvkhush
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60372): https://lists.yoctoproject.org/g/yocto/messag=
e/60372
> Mute This Topic: https://lists.yoctoproject.org/mt/99674007/1686489
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

