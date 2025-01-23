Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8A4BC02182
	for <webhook@archiver.kernel.org>; Thu, 23 Jan 2025 06:16:58 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web10.5469.1737613016978762443
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jan 2025 22:16:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VAl2IEcu;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6dd420f82e2so8187726d6.1
        for <yocto@lists.yoctoproject.org>; Wed, 22 Jan 2025 22:16:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737613016; x=1738217816; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=72ELVhmDwjuPdUcSlsmJ5yGDU04fmYp3sShlC2WIG4w=;
        b=VAl2IEcu/59FuVv73Fhla5AyndkFFIV0Xa3DCpTZ2t6gLb/2NQ+nUkXHJJCFrdDHNC
         NLuCH5m1mJ9l3vFHfeHyrVSGv0obOScvP0ysrw6U9YoKQjd+I+M+Hczg4tXIOTnhKQw5
         pxjM42Ce18ksAlJKHTaYaHaX/NfS5W9LLJrSSD7JVpoM2ZNcbR+NQwL4vU2hxLLn/KKw
         I+IopV6Cv56QG/qZn8nWKDZvKjSBFYmJPj582NoefLR/YxtC91PZ2uS6WmrPLye4DFbI
         tYsxJw9ho6Gf+73YVTZaotKCAghJwlAtWVguxwbzAdenUHTvrQEPFs1lQkhwdH/8PvhH
         WQpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737613016; x=1738217816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=72ELVhmDwjuPdUcSlsmJ5yGDU04fmYp3sShlC2WIG4w=;
        b=C+F8tuP2/5v0EEyOV2oro6jScv2VpwuZZ+t9PdwZOeuMl8r/eWKrqPHCRpjdH4FuD3
         WIGBVQFyFobBc3oUgmlrdT/Kqb7ARPz1qyouB0l9J/zNKa+NuC5GhpPjB1RBMx0Szibu
         uLnsnrdj2pkSZBVoK5mtDPJjbt+K+dRJeo37+sp+62skWLe3ieWmy1yAraW3pMKOxLr9
         ypcKh40pyfY7lmaNKsFZa+VuEuulT9ZM5BjD3LhGVHU/4YdF61dbP6JJ3614a9zFGATQ
         Z1V0yeVDeSKlRzkXhGEH3zCP6gfGzPprsdhr2b0VMGy3iyR2DoHEkQQQqlX22HCCitsy
         +CXw==
X-Gm-Message-State: AOJu0YwLbCd20F2ItX3PJ2JWmuXDXEzHz3pltcCfYR0jLmDDgPax60P+
	tddDoJlnl4ev5JY2aw6y7v93E4q0OUWSfWSKOC+uXc/eYU3Tw3qbI+lqAZGgMRbZ1D4W2fBjUaA
	oNLQTBCVbCFjah7m9zdwwd3+biLk=
X-Gm-Gg: ASbGncusxiPaMyXqB+3bUUBWzxxFCQYsNZDfhGu9z1uQ5dB34pXeefvEvJPSIyvxiPR
	unl3N4A3xG3b63Ky9wCny85lcvh/Rr4dSbITqVYquHYaJNHYUdWvvoUw3qEKmFo9BKXV/h5B0K5
	m4VmsDnY/xg3ckhDbIrpjQ
X-Google-Smtp-Source: AGHT+IGvFyl+of7ZRCbRuE4mX1iLlx/PEM8W6+xVspTx2ryEqd+ALEFUPCWcY7vTop3SU+iVu4YZCOTgV1Lyo+FPgeU=
X-Received: by 2002:a05:6214:5b8a:b0:6d4:c6d:17fe with SMTP id
 6a1803df08f44-6e1b21bd627mr411207866d6.25.1737613016056; Wed, 22 Jan 2025
 22:16:56 -0800 (PST)
MIME-Version: 1.0
References: <181CEC047B932C4D.27121@lists.yoctoproject.org>
 <CAPJWBniB2fmcPsjLYNjq5LCJ3wBqPeZoUAsPHwG-rQgdD_vM_g@mail.gmail.com>
 <CANNYZj-8EUWeTgSTHtaMhKFc386FMZY4vdF6ua2Lpt3tZs+goA@mail.gmail.com> <CAPJWBnj++FkR+qG5vUcWb88bO4oCK2fsMvg-3+HJ07VbpBix2g@mail.gmail.com>
In-Reply-To: <CAPJWBnj++FkR+qG5vUcWb88bO4oCK2fsMvg-3+HJ07VbpBix2g@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 23 Jan 2025 07:16:44 +0100
X-Gm-Features: AWEUYZnz3u0h0em3DLtKnp2ZXZFlRcp5sGSh29pb9o3OJ3dAzzTlPcE7pQnRpO8
Message-ID: <CANNYZj-tiwdN9X8K=2+JiLtOgTONFy9oLHgAkcFeOyzDPdBgGA@mail.gmail.com>
Subject: Re: [yocto] glib-2.0 addition to yocto kirkstone image
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2025 06:16:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64613

Generally, you need to modify your image recipe to declare what
packages need to be in the target image.

Note that ${WORKDIR}/image is a slightly confusing name: it shows what
a particular recipe installs and packages, but it has no influence
what goes into actual target images.

Alex

On Thu, 23 Jan 2025 at 06:01, MOHAMMED HASSAN <hassanchattarki@gmail.com> w=
rote:
>
> Well, I believe bluez5 should add it but it isn't happening for now. So I=
 wanted to add it manually to my build.
> So i needed suggestions on how to do it.
>
>
>
> On Wed, Jan 22, 2025 at 2:10=E2=80=AFPM Alexander Kanavin <alex.kanavin@g=
mail.com> wrote:
>>
>> It helps to step back and consider what your actual goal is. A library
>> without applications is not useful on the target image. And if you
>> install applications into target images, you do not need to worry
>> about libraries, they will be pulled into the target image through
>> package dependencies.
>>
>> So what is the task you have?
>>
>> Alex
>>
>> On Wed, 22 Jan 2025 at 06:25, MOHAMMED HASSAN via
>> lists.yoctoproject.org
>> <hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
>> >
>> > An update,
>> > I notice the files are not being added in my image recipe. I have call=
ed it correctly but can't see it. Do I need to set any packageconfig variab=
les?
>> >
>> >
>> >
>> >
>> > On Wed, Jan 22, 2025 at 10:47=E2=80=AFAM MOHAMMED HASSAN via lists.yoc=
toproject.org <hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
>> >>
>> >> Hi guys,
>> >> I am facing an issue with the glib-2.0 library. I have added the pack=
age to my image baserootfs as glib-2.0 . On manually verifying the image fo=
lder under work directory I can see the /usr/lib and other system library f=
ile present. But they are not getting added in my final image. i.e I can se=
e them on my target device. What should I do?
>> >>
>> >> The build is successful and I don't see any errors so dont know what =
to share with you guys.
>> >>
>> >> Regards,
>> >> Hassan
>> >>
>> >>
>> >>
>> >>
>> >>
>> >
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> > Links: You receive all messages sent to this group.
>> > View/Reply Online (#64608): https://lists.yoctoproject.org/g/yocto/mes=
sage/64608
>> > Mute This Topic: https://lists.yoctoproject.org/mt/110748308/1686489
>> > Group Owner: yocto+owner@lists.yoctoproject.org
>> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavi=
n@gmail.com]
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >

