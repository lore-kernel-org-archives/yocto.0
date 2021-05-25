Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web11.7660.1621937523063839306
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 May 2021 03:12:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=R7OndOTc;
 spf=pass (domain: gmail.com, ip: 209.85.128.53, mailfrom: aymericdumaz@gmail.com)
Received: by mail-wm1-f53.google.com with SMTP id f75-20020a1c1f4e0000b0290171001e7329so12479634wmf.1
        for <yocto@lists.yoctoproject.org>; Tue, 25 May 2021 03:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc
         :content-transfer-encoding;
        bh=SyygbM5eFtolSUOO/2kh8G+JsIqxfGlM5SBqerQjofQ=;
        b=R7OndOTcof9Ig6c5e7VhtwRttZ5ggeT4nsCu42POzFmeRucXNAJn/3S1V6FNK7DaFj
         XNzW4xSjgsdICjJUtBlr9BOX9paZXYn37C/I5QGM+KlDjFdnmZg87rDRAseb1CEaKGHH
         BZeRbHSgxzZFGnAKB9JVNvRamqaqRIM411LRcqkcRzIRIXtt9fa2hWgP1x6ev0AMP0iw
         GDbObLRpcr26VlY0n1EPN3tUQN+xHy7Rc+M3eNlFPNsE9cvPUxDnSdPhjmUW8hTSPGco
         PVDE/oPcM2DJ0CmTc8fig/gLk9BELwax+TgL/dlqH9euXtF1x1+1P/OuAo6SoRax042l
         yTow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc:content-transfer-encoding;
        bh=SyygbM5eFtolSUOO/2kh8G+JsIqxfGlM5SBqerQjofQ=;
        b=Gj6xwOkjLJrUl3AwLl8BHQYEPk/KcuGWxSd8ZVNgHAELkXtr3+LPweUFAo7pYR/NnS
         dXexYcCEDU/Uxcftyi8J4zEE3qoB6e4b9xHYsncxGpZcBLB+46gXKbjoLNtxgXkdWpbO
         xNV1ScTMRlGOSMe9glPtT2q4z5E+mKvgFk53uHFNxQK/rBg9oDTfbolRE7xtxrEJMCxm
         s5zZo1kLh33ypBJW+Bq7q5Ke4BDAVT5qB5gnsfNHBj3oFUbgfxiqalm1/JteYXsrrOvI
         7GKI3/KkMfPuT3nwA1E7v1GK0uu7BBm6WGVFh8Dp+dNVPoCLoDnwnRMIQvJBMPCKmPJR
         ACeA==
X-Gm-Message-State: AOAM533QaVQzg6YLj0pK6CPieabgisJm3NPUcchmVyR4XMnUa/s2wnkU
	AZB0D6ZTYhBRm7QDZatZ1Jrr1Bl9EB6PZHhF+pi05ErIhko=
X-Google-Smtp-Source: ABdhPJwcmRMSCXpogqOAIyBQo+GKQkaFYSXv7Gb2MA/L2Q3Nn1yvy9BAWaGGi8DXPH0wsWM1lWXkHS21zDL8DuMDNeA=
X-Received: by 2002:a05:600c:8a9:: with SMTP id l41mr3089728wmp.73.1621937521343;
 Tue, 25 May 2021 03:12:01 -0700 (PDT)
MIME-Version: 1.0
References: <168044519D3A211A.5504@lists.yoctoproject.org>
In-Reply-To: <168044519D3A211A.5504@lists.yoctoproject.org>
From: "Aymeric Dumaz" <aymericdumaz@gmail.com>
Date: Tue, 25 May 2021 12:11:50 +0200
Message-ID: <CAESSzZxHEu6bVZYkn=2QOc06p7m5tQg--HPweq7f=YdGs5Mx8Q@mail.gmail.com>
Subject: Re: [yocto] Makefile environment variables do not work on some host
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I just tried with other versions of Ubuntu: with 18.04.5 and 20.10,
they have the same issue as 20.04.2.
With 21.04, it can't compile pseudo_git.bb, I believe it's because of
the new version of GCC.

How can it work perfectly with Debian but not Ubuntu?

Le mar. 18 mai 2021 =C3=A0 22:49, Aymeric Dumaz via lists.yoctoproject.org
<aymericdumaz=3Dgmail.com@lists.yoctoproject.org> a =C3=A9crit :
>
> Hello,
>
> I have created a recipe to call multiple makefile and set a variable
> if it's not defined inside them, meaning I set it before "oe_runmake".
> It works as expected on a Debian testing, but with a Ubuntu base
> chroot it does not.
>
> I have written a simple recipe and the steps I used to configure the
> Ubuntu chroot; on Debian I can see "var -bar-" inside log.do_compile,
> but on Ubuntu it will only be "var --".
> I'm not sure where the bug is located; I'm using Dunfell but I always
> thought the host running Yocto was not relevant during the
> compilation.
> Thanks.
>
> ### Ubuntu chroot: download the image [0], extract it and start the
> chroot, update it [1], add the en_US.UTF-8 locale [2], install Yocto
> dependencies [3], then add an user.
>
> ### testvar.bb
> SRC_URI =3D "file://Makefile"
> LICENSE =3D "CLOSED"
> S =3D "${WORKDIR}"
>
> do_compile() {
>     FOO=3Dbar oe_runmake
> }
>
> ### Makefile
> all:
>     @echo "var -$(FOO)-"
>
> clean:
>
>
> [0] http://cdimage.ubuntu.com/ubuntu-base/releases/20.04/release/ubuntu-=
base-20.04.2-base-amd64.tar.gz
> [1] apt update && apt upgrade
> [2] apt install locales && dpkg-reconfigure locales - select "159" then =
"3"
> [3] apt install python3 python3-distutils binutils chrpath cpio cpp
> diffstat g++ gawk gcc git make patch wget xxd
>
>=20
>
