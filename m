Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26EE4C4332F
	for <webhook@archiver.kernel.org>; Thu, 17 Nov 2022 11:24:33 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web10.13133.1668684265519396173
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Nov 2022 03:24:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=pAT9L3FJ;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id t10so2364332ljj.0
        for <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 03:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ep819yGX8Zhq+57H7WEz7jGBwmqhW3fF7ZA2/QxksEw=;
        b=pAT9L3FJ2xYyuhuofyOJyvxk8iMj90zfnVwqFmqCdcq60Ls9f3pgMB8daYmPyPWz1v
         bIFnTbdqphu6cEALb/7hJn1foi7v4LLH/6tAQLGBY6kwqQfCKvX5W1lRwJpy+Ky4Y2kA
         Sz5exG4wHfxvSS801pSI/JCY5tjIhbtDnvZHlTFqQv6JA76TvY/Z4MlkQ10xpBraGkHy
         VpgpA6VZtLVtOLzld+UFLxgDiXeRJWKJrowyUQpiASPqYyWF2g1cbhcgOE+YD7GtOa3V
         7p09Piz2bQG/G+hyTFBxQnier2z3u3JNANkUypBx2fTShq1mlOeYgblYqKakKKfYAy9e
         rvlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ep819yGX8Zhq+57H7WEz7jGBwmqhW3fF7ZA2/QxksEw=;
        b=lOqfVTDz4t5O8O4QcfdEIzII/ruXcqqjBHTqtWaVALZBttu4DGJcT9Yzif9UB/A8UR
         5nAV/AkAgpfvqMfCMGzl/HY6a0Os4nwdCf0QvDu469D/q4CxsmmX4hRQ4hOQAWoELzuH
         toil+kK8oGbjc7QzdcVk10wMlEpDR6oTgLVWX9iRtG/auTWzx7xkpVJzRqsq2Z3NjqmU
         r3KG/oGzRe0DgyHZdrUuJHaAD9aF3q3Cm5rlPwzLOFbrBUD8o7dPD8y4Yap4WMqJU76v
         43uci3P5Qinp90UOzJTjUG0VbZtymD+5hydTZ+ptUS5OhGGR+Avz0hfREgXjEYkR3/2c
         Lcqg==
X-Gm-Message-State: ANoB5pnqrcy29kI4Px51GEvzOU6v+2EMG3kzDE3XEwQ5DiU4U9H7xl9i
	dBcFxCgmiDBx+xzVZilL/vHU+0beD0JvswbjbGsqqFZEqHE=
X-Google-Smtp-Source: AA0mqf4jej2L/SJI0eZK7Pdxy840GW4Tr3So0DBJ33r66EC0X0lY9MQ0vCbcMa52lOqJ8C2cIdjeXU8Az/hzehVozv0=
X-Received: by 2002:a05:651c:c8f:b0:26d:d196:d04 with SMTP id
 bz15-20020a05651c0c8f00b0026dd1960d04mr891346ljb.403.1668684263590; Thu, 17
 Nov 2022 03:24:23 -0800 (PST)
MIME-Version: 1.0
References: <CAJw49vp4_4BMooNGxrN-YKk+GzotueV9FOj+XYGzRdv2oQOL_A@mail.gmail.com>
 <CAM6O0ZjaXbYkU9r5gtSepmOfQG0gF00mpfA6rhMGYUL7ugXh4w@mail.gmail.com>
 <CANNYZj9pw4LDBjM3xrzU=g2ddU-Cc1jSpiYyWH+FWC9RX_Pk4g@mail.gmail.com> <CAJw49voA19vhm-zKszFYOa6cVy567qy6gaBJb+H2Oy9PkxYdpA@mail.gmail.com>
In-Reply-To: <CAJw49voA19vhm-zKszFYOa6cVy567qy6gaBJb+H2Oy9PkxYdpA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 17 Nov 2022 12:24:12 +0100
Message-ID: <CANNYZj-8A2JD1JSxOEvkuSLtyg+QtaLj5P6DzNKveh5dW6so1A@mail.gmail.com>
Subject: Re: [yocto] source-less python
To: Yishai Jaffe <yishai1999@gmail.com>
Cc: Federico Pellegrin <fede@evolware.org>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 11:24:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58580

I just wonder if this should really be in core. The standards for core
are high: it needs to be both testable and tested, and there's only so
many possible options and tweaks where things can regress that we can
take. On the other hand, there has not been much demand for it.

Alex

On Thu, 17 Nov 2022 at 12:13, Yishai Jaffe <yishai1999@gmail.com> wrote:
>
> Hi Alexander,
>
> After some research, these are the numbers I came up with for compiling c=
ore-image-minimal with python3-core:
>
> Normal compilation:
> tar.bz2 - 6.6MB
> squashfs-xz - 6.1MB
>
> With my pyc-only patch:
> tar.bz2 - 5.8MB
> squashfs-xz - 5.2MB
>
> So that's about a 15% decrease in size.
> Again, this is for an image only with python3-core. Logically that would =
mean that if you had an image with more python packages it would be even a =
bigger percentage.
>
>
> Yishai Jaffe
>
>
> On Sun, Nov 13, 2022 at 5:12 PM Alexander Kanavin <alex.kanavin@gmail.com=
> wrote:
>>
>> Generally we slim down python installations by not installing all of
>> the standard library, and rather having precise dependencies for
>> specific modules. Can you illustrate the kind of space savings that
>> can be gained in actual numbers?
>>
>> Another issue is that this should be supported upstream and in the
>> wider python community. Is it?
>>
>> Alex
>>
>> On Sun, 13 Nov 2022 at 14:25, Federico Pellegrin <fede@evolware.org> wro=
te:
>> >
>> >
>> > Hello,
>> > Just as a small reference since I raised some doubts and questions in =
Buildroot community on this: there has been also some troubles to understan=
d the correctness or not there (as I found some packages with problems due =
to this source-less management) and this then sparked, besides discussions =
in the Buildroot mailing list (roughly end of July / beginning of August if=
 someone interested searching there), also an issue to the Python community=
, which albeit some discussion I think never arrived to a concrete conclusi=
on. This is the issue: https://github.com/python/cpython/issues/95827 (see =
also the linked one maybe)
>> >
>> > These are just my 2 cents to this discussion, then of course the Pytho=
n experts will probably chime in and describe the official/discussed positi=
on of Yocto regarding to this, but just felt like mentioning that although =
Buildroot is somehow offering this right now (and likely mostly works as we=
ll!), it's not really a so clean and/or agreed solution.
>> >
>> > Cheers,
>> > Federico
>> >
>> > Il giorno dom 13 nov 2022 alle ore 13:55 Yishai Jaffe <yishai1999@gmai=
l.com> ha scritto:
>> >>
>> >> Hi,
>> >> I was wondering if there has been talk about support for source-less =
python on an image. Installing py and pyc files doubles the size of python =
on the rootfs. I can imagine this being implemented as an image feature.
>> >> I know that in buildroot it is supported.
>> >> Was this discussed and decided against? Is this an open issue?
>> >> I have a working patch that implements this. I can submit it for revi=
ew.
>> >>
>> >> Thanks,
>> >> Yishai Jaffe
>> >> Yishai Jaffe
>> >>
>> >>
>> >>
>> >
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> > Links: You receive all messages sent to this group.
>> > View/Reply Online (#58549): https://lists.yoctoproject.org/g/yocto/mes=
sage/58549
>> > Mute This Topic: https://lists.yoctoproject.org/mt/94997538/1686489
>> > Group Owner: yocto+owner@lists.yoctoproject.org
>> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavi=
n@gmail.com]
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >

