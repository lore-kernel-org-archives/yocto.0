Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46A22C47422
	for <webhook@archiver.kernel.org>; Wed, 17 Jan 2024 17:50:11 +0000 (UTC)
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
 by mx.groups.io with SMTP id smtpd.web10.9977.1705513804559089887
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jan 2024 09:50:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dBsI75EU;
 spf=pass (domain: gmail.com, ip: 209.85.160.52, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-2109743a111so689522fac.0
        for <yocto@lists.yoctoproject.org>; Wed, 17 Jan 2024 09:50:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705513803; x=1706118603; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Iri6S2C6xCByM+3PwIJSlFWtf1Oosknf3FHOrAsecQ=;
        b=dBsI75EUYChG2xidfxGZKYdAIMc0EsduDXLkSwccck3y4cTnzx0wz50LZ4Td1UC82V
         4TOjYo3cEef4ELBLj3NfrUQ0LGXLefo2z0deUnxjhN/Su7h+eLbtXDPxrkwkB3OCXgCB
         7I8PFuXKJ3y4j5gYVyco6KOkMJZGZ21f9cU6Y4ToxAl0LplncFo7PpEgp9PRcqtRccOj
         SBe+gsqEAcj9GOhU8xpC1rHbJuuorEXbbHvpY/0lbj3dEqzSDikV6gSoMjjdiIfbDOzn
         9Gurefk+3bANKulnD6/UTOtf2GJer8VMuG+rUbqOhWDD/vhKSBNdnUiHC78rnBoX45nl
         YDXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705513803; x=1706118603;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Iri6S2C6xCByM+3PwIJSlFWtf1Oosknf3FHOrAsecQ=;
        b=JgtZOV8DPED/xk7942crJDn3n92fEPwPz1Z7PUAlii1DGuLar+diY6/ty4EWB7oTOM
         ckxCIM5H2MA2RRVQqBHo8C+N1MraKbeT04bE/prxtQWOn4cupNltJ4+F3E157z8dbt2W
         9iT1039WJT4It6jB0kcLrLYFnRwCCAXbEZIcy7b8c2bu8czy8ATxeCoOLaSfQuNG+kBX
         kiSQX8ehdxCXWDuPOcyXhJq5LAqCBhcZdQxmbypG2lvJ3x40q4Ppm/lEgNY+hRjvgk7o
         gBxNkuMlAZT8rvjDHuH7bXy5vE0Aw62copH3SgvP+e+MzSP3oR8ydCPX3gWQOWBoDtG6
         X/wA==
X-Gm-Message-State: AOJu0Yzn/vojBOdepFsXpa0sys/LlDdN0dt3F0lxnGznNSUu0nNIX6Lr
	qMsxhTnNlzOia0lwkOYbx/qJXUx899UDIshK6hwPmMRHQKI=
X-Google-Smtp-Source: AGHT+IF1WELkRi/IdBI39uQLgLrJt+AwKFSMpUEivnFYKNOjyQjNc8bAFPs9+ISy35l4wlVP+tDTArJ4LAtQtNdYZO4=
X-Received: by 2002:a05:6870:e9a0:b0:204:7239:f561 with SMTP id
 r32-20020a056870e9a000b002047239f561mr9522885oao.41.1705513803516; Wed, 17
 Jan 2024 09:50:03 -0800 (PST)
MIME-Version: 1.0
References: <uhKG.1705499030825235144.H40Y@lists.yoctoproject.org>
In-Reply-To: <uhKG.1705499030825235144.H40Y@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 17 Jan 2024 09:49:37 -0800
Message-ID: <CAMKF1sp-5xrok4oopAnOBEdTM95aL4u2fVZmRiPSA3RO4wxZ1A@mail.gmail.com>
Subject: Re: [yocto] initramfs and system logs
To: yocto@lists.yoctoproject.org, jguittet.opensource@witekio.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Jan 2024 17:50:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62179

On Wed, Jan 17, 2024 at 5:43=E2=80=AFAM jguittet.opensource via
lists.yoctoproject.org
<jguittet.opensource=3Dwitekio.com@lists.yoctoproject.org> wrote:
>
> Dear community,
>
> I'm currently building a professional yocto project.
> There are 2 variants of the image I'm building: the first one is using cl=
assical rootfs on SD card (dev and test purpose). The other one is building=
 an initramfs fitImage (production). I'm using INITRAMFS_IMAGE to indicate =
the name of the recipe building the initramfs + INITRAMFS_IMAGE_BUNDLE =3D =
"1".
>
> Problem I get is that the initramfs image produces no logs (except kernel=
 logs) in the console while the dev with the rootfs on the SD card have log=
s printed in the console. I don't understand why and where I should patch t=
o have logs. The wanted logs are logs from init.d scripts for example (crea=
ting ssh keys, setting hwclock etc) + logs from my own applications that ar=
e properly output on the serial console with the "classic" image.

check if /dev/console is created in the initramfs init script which
runs as /sbin/init

>
> Thanks for any feedbacks!
> Joel
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62177): https://lists.yoctoproject.org/g/yocto/messag=
e/62177
> Mute This Topic: https://lists.yoctoproject.org/mt/103785822/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

