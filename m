Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D34E1C43334
	for <webhook@archiver.kernel.org>; Wed,  8 Jun 2022 09:59:47 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.4510.1654682380070571744
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jun 2022 02:59:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=K9AdsSVf;
 spf=pass (domain: gmail.com, ip: 209.85.167.47,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id w20so10764227lfa.11
        for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jun 2022 02:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=D1ZhDiD+IWheA0MgKks9c5tB52IfAAdjZmEJItvQcVU=;
        b=K9AdsSVfpWC1JYVr80soLbVH/na37/SIpBW2AhRXG8ABe+AKGS+lYWvg69/DoshN5i
         j0A09JPd+bbecQXE/qLhBEi4EALIvS2W6CVCN6nSEzSRQfSKCPiAddXaNlZ0rCAR3vwR
         KZVqIFPoJ9gSXI1hYQ9JrVwIOUaSHwuGqRqrIBt0oACbn3xNFfhegyQBW0UVF9ot+U2X
         Cn6Grc9K8j1Xm0R6nJIKnYcXYSDapK3pJ1WgmriVu0598+W0INFwdBMT+dnlvewm7oWa
         FMtOvujLJlpzoGdA0qM4yRWx77GzSw62NY+s8Y4Jau8Wx0pDfw305qjgKAuUWeNRjvEm
         K0qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=D1ZhDiD+IWheA0MgKks9c5tB52IfAAdjZmEJItvQcVU=;
        b=X6c8dVrp7HkXEa63f3iwHxSDGzrBc9oklYzZr8aVynCM/l0PhKT45DwwKCeswX5Rpi
         IoRgHO/O7CS5TzHhv9TqXQ8UDL42s46VX6Pb5MPifUtHyX/q11jk/eHOLUpU4MnV8eKC
         bOtEie4suHMqHjw1ZKioq4/KnjCNPEHmAoPoyu/qma4xr6Q9vuZfrvgd7AZygzvgINJQ
         v90BxARmUy7hPowFXwMav6whM598FgVGkXzDj2HTDM/JyVYmmf0MbC/8ZEaC8j0Qv6zW
         KocHkIW4EpyEoib6Y2k/LUk8fz3FyKZQpRQkupImZ/M6/WG6bJlq9Ka2DM3f7CPuosHH
         N7EA==
X-Gm-Message-State: AOAM531fT2YISmXHouEcoA57cYGbkgEuSaYSt8pipsfehaCMQu/HaLDI
	p6zakXzwPDKORkTDZSuhSrot1xN3dxidQYqa6RY=
X-Google-Smtp-Source: 
 ABdhPJwKdRqKkrQC5ixb5D3azTcAJUmDPlDKcSQHuz8yALQaY9KIJSVrbFtSZantCxkIEPhYx99htVFNTc9jjsG+2jc=
X-Received: by 2002:a05:6512:3f8f:b0:479:64f9:4420 with SMTP id
 x15-20020a0565123f8f00b0047964f94420mr4595908lfa.534.1654682377916; Wed, 08
 Jun 2022 02:59:37 -0700 (PDT)
MIME-Version: 1.0
References: <22848052-7e8c-d0c4-1c42-6d71022956bd@ibeeto.com>
 <CANNYZj-DmzVListvGSW8QMzMcyX0xOPBKCw=1V19hWjpjtcy=g@mail.gmail.com>
 <482f4935-572d-1b6b-162c-b0a208af7236@ibeeto.com>
 <CANNYZj8=dJ2Eiabx6FEykafYgSUzokg08sPiLW6X-=uJAeZnvA@mail.gmail.com>
 <9bd2408c-3309-11e6-2bba-37f69d90e4e2@ibeeto.com>
In-Reply-To: <9bd2408c-3309-11e6-2bba-37f69d90e4e2@ibeeto.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 8 Jun 2022 11:59:26 +0200
Message-ID: 
 <CANNYZj8akO1w1QraVB+952XBQEyz_ZnJ3xijdzNRC=qq5ug5Yw@mail.gmail.com>
Subject: Re: [yocto] Force binary package install
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Jun 2022 09:59:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57305

I think what should help you is
EXCLUDE_FROM_SHLIBS =3D "1"
which disables poking into libraries to auto-generate those
dependencies that otherwise cause both qa and dnf errors.

Alex

On Wed, 8 Jun 2022 at 00:48, Rudolf J Streif <rudolf.streif@ibeeto.com> wro=
te:
>
>
> On 6/7/22 3:12 PM, Alexander Kanavin wrote:
>
> Can you drop insane_skip for a moment and show what errors then happen?
>
>
> Yes, thank you.
>
> ERROR: xxx-single-group-0.1-r0 do_package_qa: QA Issue: /opt/binstuf/linu=
x-allwinneryocto-armle-opengles_2.0-obj/lib/libfbxsdk.so contained in packa=
ge xxx-single-group requires libpthread.so.0(GLIBC_2.2), but no providers f=
ound in RDEPENDS:xxx-single-group? [file-rdeps]
>
> There are many more of these errors.
>
>
> Objdump on libfbxsdk.so:
>
> Version References:
>   required from libgcc_s.so.1:
>     0x0b792650 0x00 12 GCC_3.0
>   required from libpthread.so.0:
>     0x0d696912 0x00 10 GLIBC_2.2
>     0x09691972 0x00 07 GLIBC_2.3.2
>     0x0d696911 0x00 05 GLIBC_2.1
>     0x0d696910 0x00 03 GLIBC_2.0
>   required from libc.so.6:
>     0x0d696912 0x00 11 GLIBC_2.2
>     0x0d696917 0x00 09 GLIBC_2.7
>     0x0d696911 0x00 08 GLIBC_2.1
>     0x0d696913 0x00 06 GLIBC_2.3
>     0x09691f73 0x00 04 GLIBC_2.1.3
>     0x0d696910 0x00 02 GLIBC_2.0
>
> Objdump on libpthread.so.0:
>
> Version definitions:
> 1 0x01 0x0e2f2c50 libpthread.so.0
> 2 0x00 0x06969197 GLIBC_2.17
> 3 0x00 0x06969198 GLIBC_2.18
>         GLIBC_2.17
> 4 0x00 0x06969188 GLIBC_2.28
>         GLIBC_2.18
> 5 0x00 0x069691b0 GLIBC_2.30
>         GLIBC_2.28
> 6 0x00 0x069691b1 GLIBC_2.31
>         GLIBC_2.30
>
>
> The versions don't match hence dnf throws an error. I guess I can defer t=
he error with INSANE_SKIP +=3D "file-rdeps" but then it comes up again when=
 installing.
>
>
>
> Alex
>
> On Tue 7. Jun 2022 at 22.57, Rudolf J Streif <rudolf.streif@ibeeto.com> w=
rote:
>>
>>
>> On 6/7/22 12:44 PM, Alexander Kanavin wrote:
>> > Can you show the recipe that you wrote for the blob?
>>
>> Not exactly as is because of customer names, but below is a sanitized
>> version:
>>
>>
>> SUMMARY =3D "Binary Stuff"
>>
>> LICENSE =3D "CLOSED"
>>
>> SRC_URI =3D "file://binary_installer.tgz \
>>            "
>>
>> do_install() {
>>
>>      install -d -m 0755 ${D}/opt/binstuff
>>
>>      tar cf - -C ${WORKDIR}/opt/binstuff . | tar xf - -C ${D}/binstuff
>>
>> }
>>
>> FILES:${PN} =3D "/opt/binstuff"
>>
>>
>> RDEPENDS:${PN} +=3D "libsystemd libudev libgpiod wayland"
>> INSANE_SKIP:${PN} +=3D "ldflags file-rdeps arch staticdev"
>>
>> The recipe itself builds just fine and creates the RPM package. However,
>> the some of the binaries inside the package have been built against
>> shared libs of older versions. The libs are there of course but with the
>> wrong version. Adding file-rdeps to INSANE_SKIP addresses this at build
>> time. But when installing the package in the rootfs dnf does a
>> dependency check which then fails.
>>
>> I don't know if there is an elegant way of overriding dnf to force
>> installation of the package.
>>
>>
>> >
>> > Alex
>> >
>> > On Tue, 7 Jun 2022 at 20:59, Rudolf J Streif <rudolf.streif@ibeeto.com=
> wrote:
>> >> I have been handed a binary package that I am integrating into a Yoct=
o
>> >> build.
>> >>
>> >> When dnf runs it complains about missing dependencies. These are
>> >> standard libraries of course but the culprit is the incompatible
>> >> version. The software runs fine when I install it on the target using
>> >> the script/tar installation it comes with. Needless to say that YP
>> >> packaging QA complains about this already when assembling the package=
.
>> >> However, there I can silence the complaints with INSANE_SKIP.
>> >>
>> >> Unfortunately I have not found a method doing the same when the packa=
ge
>> >> is installed by the image class.
>> >>
>> >> Is there an elegant way around it?
>> >>
>> >>
>> >> Error:
>> >>    Problem: conflicting requests
>> >>     - nothing provides libdl.so.2 needed by
>> >> xxx-single-group-0.1-r0.cortexa53_crypto
>> >>     - nothing provides libdl.so.2(GLIBC_2.0) needed by
>> >> xxx-single-group-0.1-r0.cortexa53_crypto
>> >>     - nothing provides libdl.so.2(GLIBC_2.1) needed by
>> >> xxx-single-group-0.1-r0.cortexa53_crypto
>> >>     - nothing provides libgcc_s.so.1 needed by
>> >> xxx-single-group-0.1-r0.cortexa53_crypto
>> >>     - nothing provides libgcc_s.so.1(GCC_3.0) needed by
>> >> xxx-single-group-0.1-r0.cortexa53_crypto
>> >>     - nothing provides libm.so.6 needed by
>> >> xxx-single-group-0.1-r0.cortexa53_crypto
>> >>     - nothing provides libm.so.6(GLIBC_2.0) needed by
>> >> xxx-single-group-0.1-r0.cortexa53_crypto
>> >>     - nothing provides libm.so.6(GLIBC_2.1) needed by
>> >> xxx-single-group-0.1-r0.cortexa53_crypto
>> >>     - nothing provides libpthread.so.0 needed by
>> >> xxx-single-group-0.1-r0.cortexa53_crypto
>> >>     - nothing provides libpthread.so.0(GLIBC_2.0) needed by
>> >> xxx-single-group-0.1-r0.cortexa53_crypto
>> >>     - nothing provides libpthread.so.0(GLIBC_2.1) needed by
>> >> xxx-single-group-0.1-r0.cortexa53_crypto
>> >>     - nothing provides libpthread.so.0(GLIBC_2.2) needed by
>> >> xxx-single-group-0.1-r0.cortexa53_crypto
>> >>     - nothing provides libpthread.so.0(GLIBC_2.3.2) needed by
>> >> xxx-single-group-0.1-r0.cortexa53_crypto
>> >>     - nothing provides librt.so.1 needed by
>> >> xxx-single-group-0.1-r0.cortexa53_crypto
>> >>     - nothing provides librt.so.1(GLIBC_2.2) needed by
>> >> xxx-single-group-0.1-r0.cortexa53_crypto
>> >> (try to add '--skip-broken' to skip uninstallable packages)
>> >>
>> >>
>> >> --
>> >> Rudolf J Streif
>> >> CEO/CTO ibeeto
>> >> +1.855.442.3386 x700
>> >>
>> >>
>> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >> Links: You receive all messages sent to this group.
>> >> View/Reply Online (#57296): https://lists.yoctoproject.org/g/yocto/me=
ssage/57296
>> >> Mute This Topic: https://lists.yoctoproject.org/mt/91607892/1686489
>> >> Group Owner: yocto+owner@lists.yoctoproject.org
>> >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanav=
in@gmail.com]
>> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >>
>> --
>> Rudolf J Streif
>> CEO/CTO ibeeto
>> +1.855.442.3386 x700
>>
> --
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3386 x700

