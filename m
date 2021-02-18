Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web10.2182.1613678080521918250
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 11:54:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lRG0w8dw;
 spf=pass (domain: gmail.com, ip: 209.85.222.181, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f181.google.com with SMTP id v206so3377450qkb.3
        for <yocto@lists.yoctoproject.org>; Thu, 18 Feb 2021 11:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Pq6V3NNQZRvTGSpUkLBWAhaU2G3LfGE2NKEobTZbBb8=;
        b=lRG0w8dw9L+tYSkNAYbRwmnaDDQeYZCS8XOjI0gqnwtgGCZAx7l4E6S2f3qWo28KXE
         sJWUqiRpM6KkADRlI76oo/ndxANNkj9g50Y72zdh/pcijCGDZdH9z13wZx3Q8GcnRAXc
         ksec6taKoPsNYUaMWlOee/JdBbWHruK2P+O06IY7RnAYoDrGV2l1mM2zR4P5Tnk8uQ3z
         tvmSjU0PYIKaftpvl5DVAUJ5yjrhIDoekkTAbP4RhpSelTLATiSl63Svjl/sT/tnEjtw
         JibnHqhGxoruqm96DXLyAV1Wffkuxxqg7dBXHA3/udKDasQ67L2kr0TgIP6EUvqUZnUs
         /IxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Pq6V3NNQZRvTGSpUkLBWAhaU2G3LfGE2NKEobTZbBb8=;
        b=FqsgqYiJBvieBLfezHwC6ojKyIT5TyIny6SYAI/QfLXvjsSetbi984xhMe3447gOUX
         o5uv7GIa7gHT9qD5zTE0bVjeBaK/GW6eUV8y0IcsyaWddDd972EKzUDh36NaSXs0rKru
         2d2ibs9q9ZvaDyhseYYMdhE3NOKp/+lEnBZmdA50Wpvhc0JP1HpmMcDOPerqGWkX8PaI
         oRqOHEr2IfztUt3lIPjiffk8ufJQdYgM7T7TQpVUVOnKDxtn4UQp25pradWwAf9Av8AI
         hWJKIVcNaQb318mFejF6L8Ox7YIbxyIT3uXwMrfl30Km+bBmX+CquoNAPNBSSbEB8ZT7
         i9OQ==
X-Gm-Message-State: AOAM5300VcCqAlLh56FK0Y5aSnqSAN91MiYx0oiGtBwS64Z5N4eLc9qn
	9MikKOiVSV80Gze7x8ZySN8HzUigbP3uq8X/ifo=
X-Google-Smtp-Source: ABdhPJxTW8S3SEK8NoWLHKN1h+VNaBLZLwquvi3a+BXnW9qqXZMyJVjYmn9YgSpG0SM7t4gi4+rZAbs9cAcc32pYHxw=
X-Received: by 2002:a37:66cd:: with SMTP id a196mr5932503qkc.381.1613678079578;
 Thu, 18 Feb 2021 11:54:39 -0800 (PST)
MIME-Version: 1.0
References: <OHWd.1613555997180740145.8Ytp@lists.yoctoproject.org>
 <CAGAf8LxoGwaocSUq04jqar4hQH2NiZ2DdumN5dpnQm4dr2wkew@mail.gmail.com>
 <CAEj=YVJ6z6etLaMrFUXREfeyFhaS-UvnnDh19zUor37eAPGnvQ@mail.gmail.com>
 <CAGAf8LyRvfu_iw+BQkiVYUuF6po0d0Pe0xqsVRjG8_bG-u75fA@mail.gmail.com>
 <CAEj=YVLoCXsYPF_ptXLZTDuQi3JLwRZAJNmbrUziUj-Mf8DHfw@mail.gmail.com>
 <CAGAf8Lzfz7qyNLiPWDwvyj5gGs64pUHMK3uo9daHKC6-jB7toA@mail.gmail.com>
 <CAEj=YVJroNCPYDdfw9BfhMzySWkVaLSnkmqNv6JTMhBv7NCMoQ@mail.gmail.com>
 <CAGAf8LwoLjf8cn4+wz5o4HeXKZJFz4Pi0vE2U7-wXs3aZmQc-w@mail.gmail.com> <CAEj=YV+8uSPa2J07-eFPwB=fwGEuY728a+81iudXt2fPqLFFMA@mail.gmail.com>
In-Reply-To: <CAEj=YV+8uSPa2J07-eFPwB=fwGEuY728a+81iudXt2fPqLFFMA@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 18 Feb 2021 11:54:13 -0800
Message-ID: <CAMKF1srYCHnDcfCyZR_psvM=_-p9ccgtHOqdba9Ykv4iuv4LbA@mail.gmail.com>
Subject: Re: [yocto] #av1 #armv6 #raspberrypi #neon
To: safouane maaloul <maaloulsafouane@gmail.com>
Cc: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

can you try adding

EXTRA_OECMAKE +=3D "-DHAVE_NEON=3D0"

and see if that helps ? for whatever reason set_aom_detect_var is
enabling it where as default should be 0

On Thu, Feb 18, 2021 at 10:42 AM safouane maaloul
<maaloulsafouane@gmail.com> wrote:
>
> I succed in removing callconvention-hard from TUNE_FEATURES ? But i have=
 the same problem. I am pretty sure that i get get it working if i add neon=
 to the TUNE_FEATURES. Something like this     TUNE_FEATURES=3D "arm armv6 =
vfp arm1176jzfs callconvention-hard neon". But I can't do it with armv6. I =
have to use raspberrypi zero w so i have to make it work with armv6. I know=
 that i can make it work with armv7 and armv8. I have error like this : | I=
n file included from /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/wo=
rk/arm1176jzfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/encoder/arm/ne=
on/quantize_neon.c:20:
> | /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf=
-vfp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/common/arm/mem_neon.h:528:24: =
note: called from here
> |   528 |   const int16x4_t s1 =3D vmovn_s32(v1);
> |       |                        ^~~~~~~~~~~~~
> | In file included from /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/=
tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/encoder/=
arm/neon/quantize_neon.c:12:
> | /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf=
-vfp-poky-linux-gnueabi/aom/2.0.0-r0/recipe-sysroot-native/usr/lib/arm-poky=
-linux-gnueabi/gcc/arm-poky-linux-gnueabi/10.2.0/include/arm_neon.h:7556:1:=
 error: inlining failed in call to 'always_inline' 'vmovn_s32': target spec=
ific option mismatch
> |  7556 | vmovn_s32 (int32x4_t __a)
> |       | ^~~~~~~~~
>
> So i am sure i have to add the neon feature so i appreciate it if someon=
e can help me. I didn't find a workaround this problem on the internet.
>
> Best regards,
>
> Safouane
>
> Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 18:00, Zoran Stojsavljevic <zoran.stoj=
savljevic@gmail.com> a =C3=A9crit :
>>
>> https://yocto.yoctoproject.narkive.com/Wle40I09/gcc-on-arm
>>
>> https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#=
var-TUNE_FEATURES
>> https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#=
var-AVAILTUNES
>>
>> Zee
>> _______
>>
>> On Thu, Feb 18, 2021 at 3:28 PM safouane maaloul
>> <maaloulsafouane@gmail.com> wrote:
>> >
>> > Yes I will check it. Do you know how to remove callconvention-hard fr=
om TUNE_FEATURES ?
>> >
>> > Best regards,
>> >
>> > Safouane
>> >
>> > Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 14:52, Zoran Stojsavljevic <zoran.s=
tojsavljevic@gmail.com> a =C3=A9crit :
>> >>
>> >> > TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs callconvention=
-hard"
>> >>
>> >> Here is an interesting reading for you, for me also:
>> >> https://www.yoctoproject.org/pipermail/meta-xilinx/2015-July/001060.=
html
>> >>
>> >> What I am getting from this reading is that you need to try with the
>> >> following line:
>> >> TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs"
>> >>
>> >> I guess, YOCTO people have not too much experience with armv6, nor m=
e,
>> >> but this should be (I hope) generic.
>> >>
>> >> Hope this helps.
>> >> Zoran
>> >> _______
>> >>
>> >> On Thu, Feb 18, 2021 at 12:44 PM safouane maaloul
>> >> <maaloulsafouane@gmail.com> wrote:
>> >> >
>> >> > This is my build configuration :
>> >> > Build Configuration:
>> >> > BB_VERSION           =3D "1.46.0"
>> >> > BUILD_SYS            =3D "x86_64-linux"
>> >> > NATIVELSBSTRING      =3D "universal"
>> >> > TARGET_SYS           =3D "arm-poky-linux-gnueabi"
>> >> > MACHINE              =3D "raspberrypi0-wifi"
>> >> > DISTRO               =3D "poky"
>> >> > DISTRO_VERSION       =3D "3.1.5"
>> >> > TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs callconvention=
-hard"
>> >> > TARGET_FPU           =3D "hard"
>> >> > meta
>> >> > meta-poky
>> >> > meta-yocto-bsp       =3D "dunfell:7ea41de13774675828239b7738d3f5d7=
0be8b1af"
>> >> > meta-oe
>> >> > meta-multimedia
>> >> > meta-networking
>> >> > meta-python          =3D "dunfell:5bba79488b7d393d2258d6e917f7bf7b=
0d7c4073"
>> >> > meta-raspberrypi     =3D "dunfell:987993209716302eb8f314f69a2a3340=
555f94d8"
>> >> > meta-gstreamer1.0    =3D "dunfell:b489b1ba084544d9c4c08f7c3b3d1c37=
ffa53c51"
>> >> >
>> >> > Best regards,
>> >> >
>> >> > Safouane
>> >> >
>> >> > Le mer. 17 f=C3=A9vr. 2021 =C3=A0 13:24, Zoran Stojsavljevic <zora=
n.stojsavljevic@gmail.com> a =C3=A9crit :
>> >> >>
>> >> >> So, what is your MACHINE variable set to?
>> >> >>
>> >> >> Maybe knowing that, somebody can help.
>> >> >>
>> >> >> Zee
>> >> >
>> >> >
>> >> >
>> >> > --
>> >> > SAFOUANE MAALOUL
>> >> > maaloulsafouane@gmail.com
>> >> >
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
>
>=20
>
