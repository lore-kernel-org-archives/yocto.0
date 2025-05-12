Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78D66C3ABCC
	for <webhook@archiver.kernel.org>; Mon, 12 May 2025 20:04:07 +0000 (UTC)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
 by mx.groups.io with SMTP id smtpd.web10.59835.1747080242582723738
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 May 2025 13:04:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IhyNWNp6;
 spf=pass (domain: gmail.com, ip: 209.85.167.181, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3fcfc85f1f5so1237068b6e.2
        for <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 13:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747080241; x=1747685041; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tympW4Yv2vBMEIptMeGoYIyLADI6LFGy4K24f6N9Lhw=;
        b=IhyNWNp6RJk9euNrZftROL57IdZHiS9P2q5PgwB0ozAfwVSWy9Lz6HIIXyTliVkUuS
         bsnQ7Wz0E+bG+R8d6omA0Up8khGn5p/6zbjLQ1OjWg2qeA1tm9AdNdzUCe8PDiaKHJ3N
         0Qgpv/qX+HeFAQFChq7Pcxtqnyam6cbKhnpcwtYuZAAN23Qo7l5xRND2IMFCYEOQQMWe
         3veY4scfTf9D3tDqDyT84d1ENXUgG31jRyNfPsgpiMlR4eYcrN40fuRlYmvx44PnQSbW
         8F3F99+x6P0LILvSm6OHAkulGGtiQJZpRKcx+Lf3yjHr49bHVgovkHwGh+Kj7pqwFiRQ
         zDtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747080241; x=1747685041;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tympW4Yv2vBMEIptMeGoYIyLADI6LFGy4K24f6N9Lhw=;
        b=mCBcNflZ8uP0aGI9/H8Yy/3BFSFvKVbk2QczMp+/bWUMt9nxY5TEgxmm+42gKFvEuc
         w3dpPm3XCnLbtF5CNm6SYJWL+WJ6jCUPIuzdaFDAKipHMU6aTm3xkcEg+ZlwmGdn5dEA
         vWxoc878PdHC9fKp6e3aG6BaDoaTEzJnvIO0s8tz0ss+Maa2NRHM4mp6QLVI3ghOH7JM
         vGQrklZJ4hEJH9G5nfp/5i/YIs0r/mrvrE0XI1Rnq6R5qHW06dZ3WcFfVLy/Jgwqoe0g
         zLLfFbzPyCHfZ27rSQEtIAB5miIpBpXMOvFJfYfEmIUSG4jrtjlWQtyfR8bsR+EhsmX8
         kuSA==
X-Gm-Message-State: AOJu0YyBJhkFEUvPIj4SQecMuKil/EOLQ1jpOcZo3QstTqbLJTIA5oHh
	8b63hJ0YV9q64bez5VWT3xMxvG5g/HUczAObacXgO4sA2FoAfNGseX8mfbKIsNnw9PFFV+UEnEP
	XV+SGxq7u+Xm3RvpFweZxNzC0TPdbbLclKbQ=
X-Gm-Gg: ASbGnctU/fhv24LvtOTybfgypNajlx289GTN2fswtt0BXsONkEYcve6RCYB+4aDT0jP
	cYUzCsNFmws+uY7Sl4Cec1jdhP1c3vvgUTkmjGMK+PBCDAgHRlOnJDHE53wSJ0cisIpktbxAgbT
	SNy7/ETOrpIuBlj5Q8C7gM9VpqhHZIrkd4KmV1u5o1N/WCTECsz+7yVpbBgSEv
X-Google-Smtp-Source: AGHT+IHBSmn3BoC9nb8Iw85w34vkjU23ar9NWfVlnyVGDQTsbNSytSgom4ROXuQQqaFqv7kRZ+C1FLxS6GGEbR7pVIs=
X-Received: by 2002:a05:6808:2382:b0:402:bb56:85ca with SMTP id
 5614622812f47-403800fce6fmr7990491b6e.38.1747080241269; Mon, 12 May 2025
 13:04:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnjKUfZ4EYtWNq0AxhrEADs3Eb9NXBvEfW7pRdzYcw_cHw@mail.gmail.com>
 <CANNYZj_9p6jcHsmcEaVC4fVNxkqzutf6LNVVZ1unCOww9PmXig@mail.gmail.com> <CAPJWBngyka7VtCjaSHbeag0Yno9yTO9Tfk3v=KZyhiAUnT+9nQ@mail.gmail.com>
In-Reply-To: <CAPJWBngyka7VtCjaSHbeag0Yno9yTO9Tfk3v=KZyhiAUnT+9nQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 12 May 2025 13:03:35 -0700
X-Gm-Features: AX0GCFtrdWVkNzdsU5zhfxe60HCfw0u5mGdHZjbfCoJCxUGMckGq1-dKH5_brwA
Message-ID: <CAMKF1spSwimAcq0cj8+O4Bt2s_83qpzJKbZouninfhp+euGwBA@mail.gmail.com>
Subject: Re: [yocto] Size of production os image
To: yocto@lists.yoctoproject.org, hassanchattarki@gmail.com
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 20:04:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65317

I took a quick look, it seems your image have -dbg and -src package
being pulled in those are good for a development to have them in but
perhaps not in production
There is rich set of tools that you can use to get detailed view of
what is contributing to your image size when using yocto. Enable
buildhistory, that generates the information for images and packages
that you can refer to.

https://docs.yoctoproject.org/dev-manual/build-quality.html#maintaining-bui=
ld-output-quality

The key files to start with are
https://docs.yoctoproject.org/dev-manual/build-quality.html#build-history-i=
mage-information

start with looking into installed-package-sizes.txt

For image sizes, it is contextual, there is poky-tiny Distro policy
template, that can build images (core-image-minimal ) < 8MB, with some
effort you can
reduce it more depending upon what you expect the device to do.


On Mon, May 12, 2025 at 2:24=E2=80=AFAM MOHAMMED HASSAN via
lists.yoctoproject.org
<hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi Alexander,
> I have attached my os image log.do_rootfs. I have also attached a manifes=
t file that looks like there are a lot of packages installed, though I am y=
et to add java to my image that would increase the file size a lot more.
>
>
> Regards,
> Hassan
>
>
> On Mon, 12 May 2025 at 2:28=E2=80=AFPM, Alexander Kanavin <alex.kanavin@g=
mail.com> wrote:
>>
>> You need to show what goes into your image (e.g. attach
>> log.do_rootfs), otherwise the only help we can give is really generic
>> and not likely to be useful.
>>
>> Alex
>>
>> On Mon, 12 May 2025 at 10:06, MOHAMMED HASSAN via
>> lists.yoctoproject.org
>> <hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
>> >
>> > Hi guys,
>> > My os image size is generally around 1 gb. I am working on  IOT gatewa=
y product. The funny thing is my actual bodies application is around 100MB =
including node modules. I know that yocto is mostly used for smaller footpr=
int images but seems like I am doing something wrong. I have tried removing=
 other irrelevant packages related to hdmi, audio, video and so on.
>> > Can you guys attest to this?
>> >
>> > On a side note can you guys let me know the os image size for your dev=
ices.
>> >
>> > I use yocto dunfell and kirkstone.
>> >
>> > Thanks,
>> > Hassan
>> >
>> >
>> >
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65309): https://lists.yoctoproject.org/g/yocto/messag=
e/65309
> Mute This Topic: https://lists.yoctoproject.org/mt/113066816/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

