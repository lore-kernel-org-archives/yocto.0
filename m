Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web08.912.1613689204425898715
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 15:00:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rhTGwCeD;
 spf=pass (domain: gmail.com, ip: 209.85.222.179, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id b14so3937463qkk.0
        for <yocto@lists.yoctoproject.org>; Thu, 18 Feb 2021 15:00:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=6dORG3CiGeJm4a/5nTkpRJ+3RYwrmxXrIvtDWzy2ddw=;
        b=rhTGwCeDDmrLOFCF6D+z6XeWmN01ySQl6k2VXwyR16II/vK2jEtYlRsvzqohcz5Hn5
         4uDEV9KyOHqGcIjPEZeuBGrT3WBQMkJ/VNXrKKjY0q/u7VIvblCBmxHUEXDjeKilvtTi
         ATkjvfjxKx6OK5K0dokCgC/hZkzzVX4I+DxGMj4q8Ya1oLkZ7mEtjLF96+Qs2Blrm2/P
         v/BuZeSotGVvMUxZy+ffp9hKB9bJJzHQB3ZOYMqezpxSxtw3/IbZQz0nFpDCkR5DTiP0
         UIA8nGN5B8cLyYjUZY5Eikn3TvsRZc3A09c6f0mwshnmtyXNk1uBp78F6O+L9VwcdKQS
         pJCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=6dORG3CiGeJm4a/5nTkpRJ+3RYwrmxXrIvtDWzy2ddw=;
        b=EmKZg4mnciF6GmyS//xmF4qx7ayGIDjk2I/djElywQZOHfuEkmkY4sdP60waXMk75l
         SWtEe/o32SB0lLuga7r0KWqYNYszhtd4wG2MbobwNxErH0WcDprLZzLVTOsWaPcpFOsr
         cFdEtnNYbrV7ufb62Bt9gtuWNd+A452MBRxTua57JkLFLMsb0T35nAaIZ/j7YmEoclIv
         aQrKjdEfaakrfv+6BMGf6ljyPqZT8rCb34TAEwDlksdlVWNzfpu61e6c9IwQ3D4fxx6i
         24TphShQbjfLqFABHmGpau0rx75yrTK9Ot80T8BxXE2WGum9K3Nu1iI8butR1A0RUgbh
         5XAg==
X-Gm-Message-State: AOAM532iFh8yi+pIjxNNQ+c4ngX7ho+e3xCx3jWOqOHXsGnXKA10qTwP
	xupO9kb8get+OWN3heM8ujd1q+CyJG6tLCKHr+E=
X-Google-Smtp-Source: ABdhPJwcgosPo7I0yKdLPwVQo8nqLqGHT2xtPq/6yUaK+wrfku7k60nN5E2h0MpRTuhcCopwg5NJRCjXOwSPkEpnuaA=
X-Received: by 2002:a05:620a:b95:: with SMTP id k21mr6703453qkh.125.1613689203394;
 Thu, 18 Feb 2021 15:00:03 -0800 (PST)
MIME-Version: 1.0
References: <OHWd.1613555997180740145.8Ytp@lists.yoctoproject.org>
 <CAGAf8LxoGwaocSUq04jqar4hQH2NiZ2DdumN5dpnQm4dr2wkew@mail.gmail.com>
 <CAEj=YVJ6z6etLaMrFUXREfeyFhaS-UvnnDh19zUor37eAPGnvQ@mail.gmail.com>
 <CAGAf8LyRvfu_iw+BQkiVYUuF6po0d0Pe0xqsVRjG8_bG-u75fA@mail.gmail.com>
 <CAEj=YVLoCXsYPF_ptXLZTDuQi3JLwRZAJNmbrUziUj-Mf8DHfw@mail.gmail.com>
 <CAGAf8Lzfz7qyNLiPWDwvyj5gGs64pUHMK3uo9daHKC6-jB7toA@mail.gmail.com>
 <CAEj=YVJroNCPYDdfw9BfhMzySWkVaLSnkmqNv6JTMhBv7NCMoQ@mail.gmail.com>
 <CAGAf8LwoLjf8cn4+wz5o4HeXKZJFz4Pi0vE2U7-wXs3aZmQc-w@mail.gmail.com>
 <CAEj=YV+8uSPa2J07-eFPwB=fwGEuY728a+81iudXt2fPqLFFMA@mail.gmail.com>
 <CAMKF1srYCHnDcfCyZR_psvM=_-p9ccgtHOqdba9Ykv4iuv4LbA@mail.gmail.com>
 <CAEj=YVKUCa+P1tpNja3EAp5aVE=TA4kC+uAzQo4ScyzGQbVNJQ@mail.gmail.com>
 <CAMKF1sqjo4nbLzGZcfMMy6vSrNNOBW3eWG9JeyrNbNGYc==K8A@mail.gmail.com> <CAEj=YV+dXhT=iiD3eSHLsm9FqJK_BUQ3M6RwsOBZwfj09N1Uig@mail.gmail.com>
In-Reply-To: <CAEj=YV+dXhT=iiD3eSHLsm9FqJK_BUQ3M6RwsOBZwfj09N1Uig@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 18 Feb 2021 14:59:37 -0800
Message-ID: <CAMKF1so+8tNx_--8LBwmMtv-2J_pUFsQnQFb0UOfKstk_F4H6g@mail.gmail.com>
Subject: Re: [yocto] #av1 #armv6 #raspberrypi #neon
To: safouane maaloul <maaloulsafouane@gmail.com>
Cc: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Please try applying below patch to aom recipe in meta-openembedded repo

https://lists.openembedded.org/g/openembedded-devel/topic/meta_multimedia_=
patch_aom/80743335?p=3D,,,20,0,0,0::recentpostdate%2Fsticky,,,20,2,0,807433=
35

let me know how it goes.

On Thu, Feb 18, 2021 at 12:22 PM safouane maaloul
<maaloulsafouane@gmail.com> wrote:
>
> Sorry to annoying you with my question but how do i find where HAVE_NEON=
 is set ?
>
> Best regards,
>
> Safouane
>
> Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 21:16, Khem Raj <raj.khem@gmail.com> a=
 =C3=A9crit :
>>
>> Well we do not enable neon for this tune but aom still seems to want it=
 so I would suggest to look at the build and see if it=E2=80=99s disabling =
neon and have HAVE_NEON is not set properly
>>
>> On Thu, Feb 18, 2021 at 12:12 PM safouane maaloul <maaloulsafouane@gmai=
l.com> wrote:
>>>
>>> I have an erreur:
>>> | /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfs=
hf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/common/arm/mem_neon.h:525:24=
: note: called from here
>>> |   525 |   const int32x4_t v0 =3D vld1q_s32(buf);
>>> |       |                        ^~~~~~~~~~~~~~
>>> | ninja: build stopped: subcommand failed.
>>> | WARNING: /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/ar=
m1176jzfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/temp/run.do_compile.24037:1=
55 exit 1 from 'eval ${DESTDIR:+DESTDIR=3D${DESTDIR} }VERBOSE=3D1 cmake --b=
uild '/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfsh=
f-vfp-poky-linux-gnueabi/aom/2.0.0-r0/build' "$@" -- ${EXTRA_OECMAKE_BUILD}=
'
>>> | WARNING: Backtrace (BB generated script):
>>> |       #1: cmake_runcmake_build, /workdir/tep-cam-rpi-yocto/rpi-build=
-gatesgarth/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/temp=
/run.do_compile.24037, line 155
>>> |       #2: cmake_do_compile, /workdir/tep-cam-rpi-yocto/rpi-build-gat=
esgarth/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/temp/run=
.do_compile.24037, line 149
>>> |       #3: do_compile, /workdir/tep-cam-rpi-yocto/rpi-build-gatesgart=
h/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/temp/run.do_co=
mpile.24037, line 144
>>> |       #4: main, /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/=
work/arm1176jzfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/temp/run.do_compile.=
24037, line 168
>>> |
>>> | Backtrace (metadata-relative locations):
>>> |       #1: cmake_runcmake_build, /workdir/tep-cam-rpi-yocto/rpi-build=
-gatesgarth/../../poky/meta/classes/cmake.bbclass, line 205
>>> |       #2: cmake_do_compile, /workdir/tep-cam-rpi-yocto/rpi-build-gat=
esgarth/../../poky/meta/classes/cmake.bbclass, line 209
>>> |       #3: do_compile, autogenerated, line 2
>>> ERROR: Task (/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/../../met=
a-openembedded/meta-multimedia/recipes-multimedia/aom/aom_2.0.0.bb:do_compi=
le) failed with exit code '1'
>>> NOTE: Tasks Summary: Attempted 3538 tasks of which 3326 didn't need to=
 be rerun and 1 failed.
>>>
>>> Summary: 1 task failed:
>>>   /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/../../meta-openembed=
ded/meta-multimedia/recipes-multimedia/aom/aom_2.0.0.bb:do_compile
>>> Summary: There was 1 WARNING message shown.
>>> Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.
>>>
>>> Do you have any idea why it didn't work ?
>>>
>>> Best regards,
>>>
>>> Safouane
>>>
>>> Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 20:54, Khem Raj <raj.khem@gmail.com>=
 a =C3=A9crit :
>>>>
>>>> can you try adding
>>>>
>>>> EXTRA_OECMAKE +=3D "-DHAVE_NEON=3D0"
>>>>
>>>> and see if that helps ? for whatever reason set_aom_detect_var is
>>>> enabling it where as default should be 0
>>>>
>>>> On Thu, Feb 18, 2021 at 10:42 AM safouane maaloul
>>>> <maaloulsafouane@gmail.com> wrote:
>>>> >
>>>> > I succed in removing callconvention-hard from TUNE_FEATURES ? But i=
 have the same problem. I am pretty sure that i get get it working if i add=
 neon to the TUNE_FEATURES. Something like this     TUNE_FEATURES=3D "arm a=
rmv6 vfp arm1176jzfs callconvention-hard neon". But I can't do it with armv=
6. I have to use raspberrypi zero w so i have to make it work with armv6. I=
 know that i can make it work with armv7 and armv8. I have error like this =
: | In file included from /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/t=
mp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/encoder/a=
rm/neon/quantize_neon.c:20:
>>>> > | /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176j=
zfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/common/arm/mem_neon.h:528=
:24: note: called from here
>>>> > |   528 |   const int16x4_t s1 =3D vmovn_s32(v1);
>>>> > |       |                        ^~~~~~~~~~~~~
>>>> > | In file included from /workdir/tep-cam-rpi-yocto/rpi-build-gatesg=
arth/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/enc=
oder/arm/neon/quantize_neon.c:12:
>>>> > | /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176j=
zfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/recipe-sysroot-native/usr/lib/arm=
-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/10.2.0/include/arm_neon.h:75=
56:1: error: inlining failed in call to 'always_inline' 'vmovn_s32': target=
 specific option mismatch
>>>> > |  7556 | vmovn_s32 (int32x4_t __a)
>>>> > |       | ^~~~~~~~~
>>>> >
>>>> > So i am sure i have to add the neon feature so i appreciate it if s=
omeone can help me. I didn't find a workaround this problem on the internet=
.
>>>> >
>>>> > Best regards,
>>>> >
>>>> > Safouane
>>>> >
>>>> > Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 18:00, Zoran Stojsavljevic <zoran=
.stojsavljevic@gmail.com> a =C3=A9crit :
>>>> >>
>>>> >> https://yocto.yoctoproject.narkive.com/Wle40I09/gcc-on-arm
>>>> >>
>>>> >> https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.=
html#var-TUNE_FEATURES
>>>> >> https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.=
html#var-AVAILTUNES
>>>> >>
>>>> >> Zee
>>>> >> _______
>>>> >>
>>>> >> On Thu, Feb 18, 2021 at 3:28 PM safouane maaloul
>>>> >> <maaloulsafouane@gmail.com> wrote:
>>>> >> >
>>>> >> > Yes I will check it. Do you know how to remove callconvention-ha=
rd from TUNE_FEATURES ?
>>>> >> >
>>>> >> > Best regards,
>>>> >> >
>>>> >> > Safouane
>>>> >> >
>>>> >> > Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 14:52, Zoran Stojsavljevic <zo=
ran.stojsavljevic@gmail.com> a =C3=A9crit :
>>>> >> >>
>>>> >> >> > TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs callconve=
ntion-hard"
>>>> >> >>
>>>> >> >> Here is an interesting reading for you, for me also:
>>>> >> >> https://www.yoctoproject.org/pipermail/meta-xilinx/2015-July/00=
1060.html
>>>> >> >>
>>>> >> >> What I am getting from this reading is that you need to try wit=
h the
>>>> >> >> following line:
>>>> >> >> TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs"
>>>> >> >>
>>>> >> >> I guess, YOCTO people have not too much experience with armv6, =
nor me,
>>>> >> >> but this should be (I hope) generic.
>>>> >> >>
>>>> >> >> Hope this helps.
>>>> >> >> Zoran
>>>> >> >> _______
>>>> >> >>
>>>> >> >> On Thu, Feb 18, 2021 at 12:44 PM safouane maaloul
>>>> >> >> <maaloulsafouane@gmail.com> wrote:
>>>> >> >> >
>>>> >> >> > This is my build configuration :
>>>> >> >> > Build Configuration:
>>>> >> >> > BB_VERSION           =3D "1.46.0"
>>>> >> >> > BUILD_SYS            =3D "x86_64-linux"
>>>> >> >> > NATIVELSBSTRING      =3D "universal"
>>>> >> >> > TARGET_SYS           =3D "arm-poky-linux-gnueabi"
>>>> >> >> > MACHINE              =3D "raspberrypi0-wifi"
>>>> >> >> > DISTRO               =3D "poky"
>>>> >> >> > DISTRO_VERSION       =3D "3.1.5"
>>>> >> >> > TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs callconve=
ntion-hard"
>>>> >> >> > TARGET_FPU           =3D "hard"
>>>> >> >> > meta
>>>> >> >> > meta-poky
>>>> >> >> > meta-yocto-bsp       =3D "dunfell:7ea41de13774675828239b7738d=
3f5d70be8b1af"
>>>> >> >> > meta-oe
>>>> >> >> > meta-multimedia
>>>> >> >> > meta-networking
>>>> >> >> > meta-python          =3D "dunfell:5bba79488b7d393d2258d6e917f=
7bf7b0d7c4073"
>>>> >> >> > meta-raspberrypi     =3D "dunfell:987993209716302eb8f314f69a2=
a3340555f94d8"
>>>> >> >> > meta-gstreamer1.0    =3D "dunfell:b489b1ba084544d9c4c08f7c3b3=
d1c37ffa53c51"
>>>> >> >> >
>>>> >> >> > Best regards,
>>>> >> >> >
>>>> >> >> > Safouane
>>>> >> >> >
>>>> >> >> > Le mer. 17 f=C3=A9vr. 2021 =C3=A0 13:24, Zoran Stojsavljevic =
<zoran.stojsavljevic@gmail.com> a =C3=A9crit :
>>>> >> >> >>
>>>> >> >> >> So, what is your MACHINE variable set to?
>>>> >> >> >>
>>>> >> >> >> Maybe knowing that, somebody can help.
>>>> >> >> >>
>>>> >> >> >> Zee
>>>> >> >> >
>>>> >> >> >
>>>> >> >> >
>>>> >> >> > --
>>>> >> >> > SAFOUANE MAALOUL
>>>> >> >> > maaloulsafouane@gmail.com
>>>> >> >> >
>>>> >> >
>>>> >> >
>>>> >> >
>>>> >> > --
>>>> >> > SAFOUANE MAALOUL
>>>> >> > maaloulsafouane@gmail.com
>>>> >> >
>>>> >
>>>> >
>>>> >
>>>> > --
>>>> > SAFOUANE MAALOUL
>>>> > maaloulsafouane@gmail.com
>>>> >
>>>> >
>>>> >=20
>>>> >
>>>
>>>
>>>
>>> --
>>> SAFOUANE MAALOUL
>>> maaloulsafouane@gmail.com
>>>
> --
> SAFOUANE MAALOUL
> maaloulsafouane@gmail.com
>
