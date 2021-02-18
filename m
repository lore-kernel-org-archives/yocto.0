Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
 by mx.groups.io with SMTP id smtpd.web09.6876.1613656356566294968
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 05:52:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=B+Cz+xs3;
 spf=pass (domain: gmail.com, ip: 209.85.166.181, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-il1-f181.google.com with SMTP id d20so1511029ilo.4
        for <yocto@lists.yoctoproject.org>; Thu, 18 Feb 2021 05:52:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=/jZzXs8vxBWoi6sREpl8z+s3TPnoJywwNlY9hX6+WEs=;
        b=B+Cz+xs3KGg7AJEq0JNzdR2UkieOO6KuH/bMHyxs02OQz5IVLIOJEC4HqfvZsVzQXA
         +7k7ccd2wEZ6xOoqbNCr544ULCJNJazrCRG2viqpjtgfN2uyJFwa8TECNx/Wz6IcQ8ym
         zsDTIJozn0/+HDgOEakjNGqdxbxVVs81rbpNRq7prxWpy/cITWRT1bBO7q7HxbkRAi/m
         3U6fdAiyJ7Z9vO+jxKiCGCklompmfb+7WydqS76xVVIkTS9gKhVmTOI59o2EJTZSnsos
         Rj9ZCCMqOn3xJfK4HPfrIFCk6ITuz+ibvh3MCCpC3bwoua5wqmTr1dZWrc75BgXnj8SU
         YkPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=/jZzXs8vxBWoi6sREpl8z+s3TPnoJywwNlY9hX6+WEs=;
        b=DrKXeknAW4XIkBKFn9RA1qnGciaE1Fjtyu529fRzrBZGFwswLQDw7/T1F+fqMa3vaE
         DRZFkauYXsnTsYKrAHI+Azzy4vphZ6dSRuJGUGOmakKw2plC7t5Z0DYecPsve7YsH3s+
         6GG9PAsvqa+XJebEfPaPTmRd/LHzgKZNguc0bUgIBav55EuJy6JVi3aZUwwOyU1Zie8C
         lZNMhua3i5akiEGcFkxkul3dbA3B6+Fi8nRyf6IuNgWFcoU1k3tr99wxAUC4odwYisaW
         Y5OVfNB/0LbBYwa02LCGWc2NbZ0qtyMTGQLL+v0Zr7hE3WMnCcmumMBxcy94/quw611V
         oBiA==
X-Gm-Message-State: AOAM532C/QsvZlNgnKHc/0zJ4AaqGRXvXx0VZXMajV5TJvnmuMX6A4uT
	ocqfqA8pXdg6JitDvaP6okkRVVCFJwIgp4z/RPc=
X-Google-Smtp-Source: ABdhPJyfDNp5/n7lH+j+qEOkBd13zklfsn8gOAi0O3PiAA4dMZcl8Jmdj7gEr7ETQkZx2GK30RvX2VMb+ZWIfHyaBSs=
X-Received: by 2002:a05:6e02:194a:: with SMTP id x10mr3768759ilu.165.1613656355733;
 Thu, 18 Feb 2021 05:52:35 -0800 (PST)
MIME-Version: 1.0
References: <OHWd.1613555997180740145.8Ytp@lists.yoctoproject.org>
 <CAGAf8LxoGwaocSUq04jqar4hQH2NiZ2DdumN5dpnQm4dr2wkew@mail.gmail.com>
 <CAEj=YVJ6z6etLaMrFUXREfeyFhaS-UvnnDh19zUor37eAPGnvQ@mail.gmail.com>
 <CAGAf8LyRvfu_iw+BQkiVYUuF6po0d0Pe0xqsVRjG8_bG-u75fA@mail.gmail.com> <CAEj=YVLoCXsYPF_ptXLZTDuQi3JLwRZAJNmbrUziUj-Mf8DHfw@mail.gmail.com>
In-Reply-To: <CAEj=YVLoCXsYPF_ptXLZTDuQi3JLwRZAJNmbrUziUj-Mf8DHfw@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 18 Feb 2021 14:52:23 +0100
Message-ID: <CAGAf8Lzfz7qyNLiPWDwvyj5gGs64pUHMK3uo9daHKC6-jB7toA@mail.gmail.com>
Subject: Re: [yocto] #av1 #armv6 #raspberrypi #neon
To: safouane maaloul <maaloulsafouane@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs callconvention-hard"

Here is an interesting reading for you, for me also:
https://www.yoctoproject.org/pipermail/meta-xilinx/2015-July/001060.html

What I am getting from this reading is that you need to try with the
following line:
TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs"

I guess, YOCTO people have not too much experience with armv6, nor me,
but this should be (I hope) generic.

Hope this helps.
Zoran
_______

On Thu, Feb 18, 2021 at 12:44 PM safouane maaloul
<maaloulsafouane@gmail.com> wrote:
>
> This is my build configuration :
> Build Configuration:
> BB_VERSION           =3D "1.46.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "arm-poky-linux-gnueabi"
> MACHINE              =3D "raspberrypi0-wifi"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "3.1.5"
> TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs callconvention-hard"
> TARGET_FPU           =3D "hard"
> meta
> meta-poky
> meta-yocto-bsp       =3D "dunfell:7ea41de13774675828239b7738d3f5d70be8b1a=
f"
> meta-oe
> meta-multimedia
> meta-networking
> meta-python          =3D "dunfell:5bba79488b7d393d2258d6e917f7bf7b0d7c407=
3"
> meta-raspberrypi     =3D "dunfell:987993209716302eb8f314f69a2a3340555f94d=
8"
> meta-gstreamer1.0    =3D "dunfell:b489b1ba084544d9c4c08f7c3b3d1c37ffa53c5=
1"
>
> Best regards,
>
> Safouane
>
> Le mer. 17 f=C3=A9vr. 2021 =C3=A0 13:24, Zoran Stojsavljevic <zoran.stojs=
avljevic@gmail.com> a =C3=A9crit :
>>
>> So, what is your MACHINE variable set to?
>>
>> Maybe knowing that, somebody can help.
>>
>> Zee
>
>
>
> --
> SAFOUANE MAALOUL
> maaloulsafouane@gmail.com
>
