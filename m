Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web08.299.1615828898647052343
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Mar 2021 10:21:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=zGx+vrcM;
 spf=pass (domain: linaro.org, ip: 209.85.208.48, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-ed1-f48.google.com with SMTP id dm8so18282058edb.2
        for <yocto@lists.yoctoproject.org>; Mon, 15 Mar 2021 10:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=YKKCobqcIRhn1u8u7BV+Ka0u0xTC0/ogvVRY2KTUpFs=;
        b=zGx+vrcMtM5+/Bt5ofD5uKzBgei4ma0B1R2DKOxn3aO5adEdG0o60ptEgRh1PUGmG3
         KO1RNNf6mPd2vKn48bbZ0vRJQmQPxqrKiYNrxaLbntNxgOSspcZ8zLaweSjWj6Knvm7h
         IoW7+Iq9wdWb33n8r9arvU3y0on9rPX2QbH+ZkRwS5zdwN9jqzEuA2fBctNGnrlSAwet
         AL1yvZFgvM5rTc7rj8/8eGUvKpQ2BL4XhU1048rzZpuAutXc52VGSIDVdmWRrsuJIXEt
         UijoHHDlqEgaTW888Vo6ouayFFepdlVa5XIje2BL14eWIwCCJu0H28/j2x9WZmTzJV+w
         DQHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=YKKCobqcIRhn1u8u7BV+Ka0u0xTC0/ogvVRY2KTUpFs=;
        b=NPq6WxkFU3lijqUavcvM5Y0XxHq5Qd2FdAuGzTNW3VmjvbNjmjoos/mycJfGgQgP56
         p30wtj+PbxLNtZaJd5DUjDWF4VIxc2Oe4lHuHqhCDpQv1GouGKNjGPE7olOQXXI3cxL+
         ZWwW8hgzs1gNYdcFu2kRUe4PwJEaPIoGgJkPrKFtJ2nJwCcXQBcfgu93Aq2mUPKcXfb7
         C0IcNfu6ENBhAz/DXpI2ge6e8C2D70eAEXmg+OJQmifR5XAnh3hLEhhygThJhCmCRSIe
         W1PlJyLfE2OFZ4uJK3rCnOJGZqShUVLe0twicAfwVbOBAQXHm37DgfG1Rt8u5t0ui9LR
         RZfQ==
X-Gm-Message-State: AOAM531mamzkD9G5kGgthk3XqslsMhHS2pdYVZS83e9QuGsgNhrN8aSM
	rsDRPZnT/TmMQOQ2C+PpbfqW1LuFgn/yp1Ucgt1zbg==
X-Google-Smtp-Source: ABdhPJxial5jBAqGKPKCwkxYArd++i7ki9kaYjksC9pJ7WxcwN6LfHwq850yZgxER4BSBTFsxuSrmGvVL0zy+R91Pxk=
X-Received: by 2002:a05:6402:5203:: with SMTP id s3mr31534820edd.79.1615828897000;
 Mon, 15 Mar 2021 10:21:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LyKF9dAcPc9VVBTNcurVzNp3wgmgfVgDhMdK35fHtn_hw@mail.gmail.com>
 <29235.1615763811371292564@lists.yoctoproject.org> <CAGAf8LzJxFDXnf0T99oCEo7iN37p0K0_CZWH=2r1NHW=ypZNvg@mail.gmail.com>
In-Reply-To: <CAGAf8LzJxFDXnf0T99oCEo7iN37p0K0_CZWH=2r1NHW=ypZNvg@mail.gmail.com>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Mon, 15 Mar 2021 18:21:25 +0100
Message-ID: <CAP71WjwEzqU+E8hbWVZ8eWkrZJ2seaAJCudkEiqyP3zjFLCMdw@mail.gmail.com>
Subject: Re: [yocto] How can I create a truly minimal distribution that runs entirely from RAM?
To: Zoran <zoran.stojsavljevic@gmail.com>
Cc: p32@tuta.io, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hey Zoran,


On Mon, Mar 15, 2021 at 5:01 PM Zoran <zoran.stojsavljevic@gmail.com> wrot=
e:
>
> > How can I instruct Yocto to execute do_image_cpio first?
>
> YOCTO people are entitled to answer that question. Aren't ya, INTEL folk=
s???
>
> Actually, iNTEL (IOTG) is responsible for that (since YOCTO support is
> 90% from INTEL), and I assume INTEL YOCTO people are entitled
> answering that///

Please be aware that this is a community mailing list for the Yocto
Project, and we expect everyone to be as pleasant as possible. I don't
think the tone of your last email is appropriate for our mailing
lists. Please refrain yourself from such claims, or we will need to
use moderation. Let's make sure our discussions are about technical
content and in case of any doubt, please refer to our CoC, at
https://www.yoctoproject.org/community/code-of-conduct/.

>
>
> Thank you,
> Zee (Zoran)
> _______
>
> On Mon, Mar 15, 2021 at 12:17 AM p32 via lists.yoctoproject.org
> <p32=3Dtuta.io@lists.yoctoproject.org> wrote:
> >
> > Thank you very much. I figured out that you can have Yocto create a su=
itable U-Boot wrapper as follows (from the image recipe):
> > IMAGE_FSTYPES =3D "cpio.xz.u-boot"
> >
> > Now there is only one last issue that I wasn't able to solve yet: I wo=
uld like Yocto to not only generate this U-Boot file but also add it to the=
 boot partition of a wic.gz image. I tried to extend the image recipe as fo=
llows:
> > IMAGE_FSTYPES =3D "cpio.xz.u-boot wic.gz"
> > IMAGE_BOOT_FILES_append +=3D "${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.cpio.x=
z.u-boot"
> >
> > Unfortunately, there is a dependency issue here. BitBake schedules the=
 do_image_wic task before the do_image_cpio task, which creates the u-boot =
file. I tried to fix it as follows (from the image recipe):
> > do_image_wic[depends] =3D "my-image-recipe:do_image_cpio"
> >
> > While the dependency graph acknowledges this dependency, BitBake does =
not seem to care about it. Whatever I try, do_image_wic is always executed =
first and, obviously, does not succeed. I think the problem is comparable t=
o the unsolved one outlined here:
> > https://stackoverflow.com/questions/58954170/yocto-creating-a-dependen=
cy-for-wic-to-cpio-gz-image
> >
> > How can I instruct Yocto to execute do_image_cpio first?
> >
> >
> >
>
>=20
>
