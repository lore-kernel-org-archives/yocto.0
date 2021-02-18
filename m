Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
 by mx.groups.io with SMTP id smtpd.web11.118.1613667639146022656
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 09:00:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GQUDoLTY;
 spf=pass (domain: gmail.com, ip: 209.85.166.177, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-il1-f177.google.com with SMTP id m20so2039629ilj.13
        for <yocto@lists.yoctoproject.org>; Thu, 18 Feb 2021 09:00:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=3ZU2UI4vUU4zKdZqHoU8FXYvyzextr74P5qYfWptzBo=;
        b=GQUDoLTY4CbWy9KxbCrqTEDoVLcxsqPisQ01Aigk8h5nLJ9zZ4dRN8O7b0Swi+wPme
         LQ235Ku0EqlsV+kGfflV9DWEm6J3Zeff4oPSpDFjEjkJGYLi4X89N92JmtDgR1bc09Zh
         tC7y7z0TOEpUCwV2Bl3pKcHUjOYGr+2doVMO90WK3nnXJiEjK3G+4XmdxBVtKOtuSHV1
         o7Ymow9MloKyiVY17VepsavzyCqV+2JJfwBzFrl+tjNC/LSegbQc7ASJVREBotq95M2l
         /vi3o4ZABF3QI9KT7dj2ZuN2mqg1mC8rGL4xDHTGlXrjNUsKYdb8dyUkzCtFVNsxi6XI
         ajEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=3ZU2UI4vUU4zKdZqHoU8FXYvyzextr74P5qYfWptzBo=;
        b=U122ou3Ic5iYa5wYE6EPyGuI7qX/S3F120LWWh3A7YEHfD04+MYavWkhIFYLQtHL/0
         /2cFCNcxbzu59rS9OXz/SR88kxezak19hrjgMbM16mZF4p/w7emZZ382hWjIQLRk40KF
         ooEtm0ICGZV5O86IJCx2yBgpz/Yq+loDBWvMFZOQAzBa0e+cFSaN6+/PtemuMp35B7gp
         /Ffz6ELc9SooT68NJYwdVdYXwrYmWkOuoK30d+PhfGTRPt57ttJ/s/2Sqf0P+OnQRh5m
         DBOnXXw+RzO06vFG2Utaoh5m3uIRRVCo9rE35+R/WO16vsrEhaMVM0CvU/9VocuXNEhO
         nEaw==
X-Gm-Message-State: AOAM533Sfd5ic5d9bed6mULwBQXYDYdQs2IU0Ji0iSWY4t9Id7Km4NKP
	D7d15hBWdXrUs37FyG0k0oX5vuHlO0knn+UuQ/M=
X-Google-Smtp-Source: ABdhPJxmqMUlJhbDpKB6+yy6WrDhdgAHHmJhXMJSg3WUVeoegqXwELLvLMGBgKULLoayBU94kpkw08EF9w1riowA0aA=
X-Received: by 2002:a05:6e02:194a:: with SMTP id x10mr43116ilu.165.1613667638159;
 Thu, 18 Feb 2021 09:00:38 -0800 (PST)
MIME-Version: 1.0
References: <OHWd.1613555997180740145.8Ytp@lists.yoctoproject.org>
 <CAGAf8LxoGwaocSUq04jqar4hQH2NiZ2DdumN5dpnQm4dr2wkew@mail.gmail.com>
 <CAEj=YVJ6z6etLaMrFUXREfeyFhaS-UvnnDh19zUor37eAPGnvQ@mail.gmail.com>
 <CAGAf8LyRvfu_iw+BQkiVYUuF6po0d0Pe0xqsVRjG8_bG-u75fA@mail.gmail.com>
 <CAEj=YVLoCXsYPF_ptXLZTDuQi3JLwRZAJNmbrUziUj-Mf8DHfw@mail.gmail.com>
 <CAGAf8Lzfz7qyNLiPWDwvyj5gGs64pUHMK3uo9daHKC6-jB7toA@mail.gmail.com> <CAEj=YVJroNCPYDdfw9BfhMzySWkVaLSnkmqNv6JTMhBv7NCMoQ@mail.gmail.com>
In-Reply-To: <CAEj=YVJroNCPYDdfw9BfhMzySWkVaLSnkmqNv6JTMhBv7NCMoQ@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 18 Feb 2021 18:00:26 +0100
Message-ID: <CAGAf8LwoLjf8cn4+wz5o4HeXKZJFz4Pi0vE2U7-wXs3aZmQc-w@mail.gmail.com>
Subject: Re: [yocto] #av1 #armv6 #raspberrypi #neon
To: safouane maaloul <maaloulsafouane@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

https://yocto.yoctoproject.narkive.com/Wle40I09/gcc-on-arm

https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-=
TUNE_FEATURES
https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-=
AVAILTUNES

Zee
_______

On Thu, Feb 18, 2021 at 3:28 PM safouane maaloul
<maaloulsafouane@gmail.com> wrote:
>
> Yes I will check it. Do you know how to remove callconvention-hard from T=
UNE_FEATURES ?
>
> Best regards,
>
> Safouane
>
> Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 14:52, Zoran Stojsavljevic <zoran.stojs=
avljevic@gmail.com> a =C3=A9crit :
>>
>> > TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs callconvention-har=
d"
>>
>> Here is an interesting reading for you, for me also:
>> https://www.yoctoproject.org/pipermail/meta-xilinx/2015-July/001060.html
>>
>> What I am getting from this reading is that you need to try with the
>> following line:
>> TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs"
>>
>> I guess, YOCTO people have not too much experience with armv6, nor me,
>> but this should be (I hope) generic.
>>
>> Hope this helps.
>> Zoran
>> _______
>>
>> On Thu, Feb 18, 2021 at 12:44 PM safouane maaloul
>> <maaloulsafouane@gmail.com> wrote:
>> >
>> > This is my build configuration :
>> > Build Configuration:
>> > BB_VERSION           =3D "1.46.0"
>> > BUILD_SYS            =3D "x86_64-linux"
>> > NATIVELSBSTRING      =3D "universal"
>> > TARGET_SYS           =3D "arm-poky-linux-gnueabi"
>> > MACHINE              =3D "raspberrypi0-wifi"
>> > DISTRO               =3D "poky"
>> > DISTRO_VERSION       =3D "3.1.5"
>> > TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs callconvention-har=
d"
>> > TARGET_FPU           =3D "hard"
>> > meta
>> > meta-poky
>> > meta-yocto-bsp       =3D "dunfell:7ea41de13774675828239b7738d3f5d70be8=
b1af"
>> > meta-oe
>> > meta-multimedia
>> > meta-networking
>> > meta-python          =3D "dunfell:5bba79488b7d393d2258d6e917f7bf7b0d7c=
4073"
>> > meta-raspberrypi     =3D "dunfell:987993209716302eb8f314f69a2a3340555f=
94d8"
>> > meta-gstreamer1.0    =3D "dunfell:b489b1ba084544d9c4c08f7c3b3d1c37ffa5=
3c51"
>> >
>> > Best regards,
>> >
>> > Safouane
>> >
>> > Le mer. 17 f=C3=A9vr. 2021 =C3=A0 13:24, Zoran Stojsavljevic <zoran.st=
ojsavljevic@gmail.com> a =C3=A9crit :
>> >>
>> >> So, what is your MACHINE variable set to?
>> >>
>> >> Maybe knowing that, somebody can help.
>> >>
>> >> Zee
>> >
>> >
>> >
>> > --
>> > SAFOUANE MAALOUL
>> > maaloulsafouane@gmail.com
>> >
>
>
>
> --
> SAFOUANE MAALOUL
> maaloulsafouane@gmail.com
>
