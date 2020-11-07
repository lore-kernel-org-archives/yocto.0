Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web09.9073.1604781002314067697
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Nov 2020 12:30:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oem3MRP2;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id b11so2190515qvr.9
        for <yocto@lists.yoctoproject.org>; Sat, 07 Nov 2020 12:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=u2N4t0wr7u7Q3AGLoCWZNc0yN4R2Il9rwszcEZbhpwk=;
        b=oem3MRP2wXcGadWU6UmjlQJZKoG/tfyydT+hGW+k+7iZTV8SWKdmS0R4n8cHxrH0Xz
         YdkIXTWIKSqym1rkDjfO05W1j5K61FWOHVx6Hv9Di3i/JnyYBEcI6dVSPqwcSOEfdQIj
         4/UsUb0oFRVtnKqGT0iGpSWwBM9ugMQpzJUJNorMHuK09Bb7r1e9ScE1WoCX/K7js6Rn
         h1DztrlSvysynUshfuydVfZyu1tMiNLT153WFXffpOb6uIw/ulYLtfSJL7LOSp/28bNp
         Xl13yDY8QiH8zhl1pL3vcg2w2ooT6bMzmmEO3Z3VlR2SjpftE8aW9tD9d0ov9A3dXrsh
         zCcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=u2N4t0wr7u7Q3AGLoCWZNc0yN4R2Il9rwszcEZbhpwk=;
        b=p5yvv7bT7ZniCylgny28X/MKukYz4BjpP/eAB/HAW38Z6XSv0uN7FWUfz7RcJqr/zN
         FxykfIceDI68A9MOaoirYcu6+qORFrtNKmVR52Me8IgKRiKkx1z6lQrEAidJQBr5wP9C
         0Jpge6lp2WPnlttgzDNrxHX6ZSTIZS9G3n562mE7wnFauaGR2TRz3zj1m+S2B4krHivA
         xRIfa1gvrJzwIxT9c+KZ8ii1EGv4JFXL9dkPlTmM0SA9ha3gCfKx2kw4zoSwaameXx4h
         fye+buOQDUUIUsMbYZqiSvNLhmvTuHAGBHdg8AEZPGB7Kn7X3LFLpgeDzn+jVyj7Up4C
         ehcg==
X-Gm-Message-State: AOAM531+4D42Zf028GB/WxbSUAEC9fjPJcveBgyqTNHvABllUPxOvFRY
	4g1gCQ2bE4jcUeuOvxkAc1VOjjwBYdYAm/kYiH4=
X-Google-Smtp-Source: ABdhPJyEZ6pjYT8h4Ml4EMN8H3B2ZZu7EcCF+A1B7U22zMuIC852CEbfkyYaHe42ObQGGikabTepSVZY7mq9OZq2cH4=
X-Received: by 2002:a0c:b65b:: with SMTP id q27mr7399751qvf.8.1604781001369;
 Sat, 07 Nov 2020 12:30:01 -0800 (PST)
MIME-Version: 1.0
References: <030738f3-1403-4071-8fdd-de7731cca65a@www.fastmail.com>
In-Reply-To: <030738f3-1403-4071-8fdd-de7731cca65a@www.fastmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sat, 7 Nov 2020 12:29:35 -0800
Message-ID: <CAMKF1srSfUfJe7_bD=qWL+L6f8gh_29UBmbCXFQibRqChz2R5A@mail.gmail.com>
Subject: Re: [yocto] Syntax of multiconfig
To: Manuel Wagesreither <ManWag@fastmail.fm>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 7, 2020 at 5:53 AM Manuel Wagesreither <ManWag@fastmail.fm> wro=
te:
>
> Hello all,
>
> I'm trying the become acquainted with the multiconfig feature. I read th=
e relevant chapters in the BitBake User Manual, but some questions I have s=
uggest I did not yet get the whole picture.
>
>
> 1.)
> In [1] the following examples are given:
>
> `$ bitbake mc::target mc:target1:target mc:target2:target`
>
> What does the `mc::target` stand for? If I omit the multiconfigname, is =
the target getting built for all configured multibuildnames?

bitbake  mc:target1:target

mc =3D qualifier keyword used to identify a multiconfig build by bitbake
target1 =3D name of multiconfig ( e.g. first machine )
target =3D Firmware image name to be built for this multiconfig


>
> [1] https://www.yoctoproject.org/docs/latest/bitbake-user-manual/bitbake=
-user-manual.html#executing-a-multiple-configuration-build
>

The sample there seems to be wrong, it should just be bitbake
mc:target1:image1 mc:target2:image2

>
> 2.)
> In [2], the following example is given:
>
> `task_or_package[mcdepends] =3D "mc:from_multiconfig:to_multiconfig:reci=
pe_name:task_on_which_to_depend"`
> `image_task[mcdepends] =3D "mc:target1:target2:image2:rootfs_task"`
>
> I do not understand why the `from_multiconfig` needs to be given at all.=
 Isn't this redundant information? Per my understanding, when I'm having bi=
tbake bake an image `my-image`, and this image includes a recipe which has =
such a multiconfig dependency, `from_multiconfig` must be `my-image` as wel=
l. So why the need for `from_multiconfig` at all?
>
> I think it wouldn't just add any value, but would actively prevent this =
recipe/package to be included in images getting built in other configuratio=
ns.
>

assuming the default to be current mc target for from_multiconfig is
troublesome when say you build same image but for mc:target2 in such a
case there will be circular dependency. So being explicit enables to
specify m to n dependencies.


> So I probably my understanding here is wrong.
>
> [2] https://www.yoctoproject.org/docs/latest/bitbake-user-manual/bitbake=
-user-manual.html#bb-enabling-multiple-configuration-build-dependencies
>
>
> 3.)
> The links above are using `target_1` and `target_2` for as configuration=
 names. I think this is misleading, as target already refers to the recipe/=
package or image bitbake is building. How can I contribute to the BitBake d=
ocumentation?
>

now documentation has moved to sphinx there is separate mailing list
for docs so git format-patch and send them to
docs@lists.yoctoproject.org

here are archives for this month
https://lists.yoctoproject.org/g/docs/messages?start=3D11:2020:480

> I checked [3] but couldn't see anything referencing the documentation.
>
> [3] https://wiki.yoctoproject.org/wiki/Newcomers#How_to_Contribute
>
>
> Best regards
> Manuel
>
>=20
>
