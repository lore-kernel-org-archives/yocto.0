Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
 by mx.groups.io with SMTP id smtpd.web10.239.1613679125327255383
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 12:12:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=H9NwJnAQ;
 spf=pass (domain: gmail.com, ip: 209.85.166.173, mailfrom: maaloulsafouane@gmail.com)
Received: by mail-il1-f173.google.com with SMTP id o7so2617902ils.2
        for <yocto@lists.yoctoproject.org>; Thu, 18 Feb 2021 12:12:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=f45uuysG2hXRaxGvTV93gU8dhmu/85Vy6SVdw+D2Kn8=;
        b=H9NwJnAQDIbs/3rGrFCr6MKjz9ft92edmfB0c6mdkemiNKZEJ62ni++tWX5hACZlFs
         xhDepG40lNrs4sPSc5TsfxieErCyzTrDLkM/Po/tIWw97Whfz05Ur2eo17rRz3O4tXaL
         RTy7LdK8TUL4wV32V3WlkVPD+XlqFZSkdkZ1GE5x6iBlsN7dnNaw78g5AUYSHSx/90Dt
         M7xe78N5+B0eXlUE4XnBlkNvMo2uolojLse+Np91DYA9kWWiKVHhhlkElsg6NTk6xJaL
         nQ7EAAHzFx6b0gOCxt+yTRZmC64Ywnk+Yn4Af7KMV4zwPkq63g7YFR8eQFqV9VQ09git
         zvYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=f45uuysG2hXRaxGvTV93gU8dhmu/85Vy6SVdw+D2Kn8=;
        b=jnbUO5cJd1Vg1oiO1XVcSHngOaLEZzxq1lu4rVRVIjGw0kl41Xjc+Qf4/e48zf6wWK
         rRMPi/9ucyToox/Utcml5+nW7EICMZejM5LCNxb5X5iudKMf8xBljTHZU10OPZIlffob
         u4DuUbrrPACAp0DsUpv2O8aSAxJSxKb83u+XUUYFsKiRHZSlmIdM/iDv0apmYOCTgoKO
         qFYdNB6o473/wIKu/AW8GMy4ArJhd6qOmp4Dk04YnfK0aMTqW3KMrPRaThyQQggAk5h0
         qBGscjCYaRSaJbjsNsabhdslAlqxR2rhjNpw4ODrn2r0t/3DuIK23L4Qz6IzP3mOGR8h
         8X6w==
X-Gm-Message-State: AOAM531RbiIQgHi5FYcAw7df7A2zFjPOaH739fYP/Iu/eD8bfAfP5kzj
	KvwQHe3NJstc60lorpL8JbeyzSJpJUWO6B7TkFs=
X-Google-Smtp-Source: ABdhPJwxfBbwGcz1xqaCQzIhNHyyQp0ujWWRxTjYjnLbFKYzabc7kFS/bRJ96Dp3HQtlPlLHT61XhNmBpcD4Euf3EfI=
X-Received: by 2002:a92:d30d:: with SMTP id x13mr767026ila.217.1613679124535;
 Thu, 18 Feb 2021 12:12:04 -0800 (PST)
MIME-Version: 1.0
References: <OHWd.1613555997180740145.8Ytp@lists.yoctoproject.org>
 <CAGAf8LxoGwaocSUq04jqar4hQH2NiZ2DdumN5dpnQm4dr2wkew@mail.gmail.com>
 <CAEj=YVJ6z6etLaMrFUXREfeyFhaS-UvnnDh19zUor37eAPGnvQ@mail.gmail.com>
 <CAGAf8LyRvfu_iw+BQkiVYUuF6po0d0Pe0xqsVRjG8_bG-u75fA@mail.gmail.com>
 <CAEj=YVLoCXsYPF_ptXLZTDuQi3JLwRZAJNmbrUziUj-Mf8DHfw@mail.gmail.com>
 <CAGAf8Lzfz7qyNLiPWDwvyj5gGs64pUHMK3uo9daHKC6-jB7toA@mail.gmail.com>
 <CAEj=YVJroNCPYDdfw9BfhMzySWkVaLSnkmqNv6JTMhBv7NCMoQ@mail.gmail.com>
 <CAGAf8LwoLjf8cn4+wz5o4HeXKZJFz4Pi0vE2U7-wXs3aZmQc-w@mail.gmail.com>
 <CAEj=YV+8uSPa2J07-eFPwB=fwGEuY728a+81iudXt2fPqLFFMA@mail.gmail.com> <CAMKF1srYCHnDcfCyZR_psvM=_-p9ccgtHOqdba9Ykv4iuv4LbA@mail.gmail.com>
In-Reply-To: <CAMKF1srYCHnDcfCyZR_psvM=_-p9ccgtHOqdba9Ykv4iuv4LbA@mail.gmail.com>
From: "safouane maaloul" <maaloulsafouane@gmail.com>
Date: Thu, 18 Feb 2021 21:11:52 +0100
Message-ID: <CAEj=YVKUCa+P1tpNja3EAp5aVE=TA4kC+uAzQo4ScyzGQbVNJQ@mail.gmail.com>
Subject: Re: [yocto] #av1 #armv6 #raspberrypi #neon
To: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org, 
	Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000ffddbd05bba1f260"

--000000000000ffddbd05bba1f260
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have an erreur:
|
/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp=
-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/common/arm/mem_neon.h:525:24:
note: called from here
|   525 |   const int32x4_t v0 =3D vld1q_s32(buf);
|       |                        ^~~~~~~~~~~~~~
| ninja: build stopped: subcommand failed.
| WARNING:
/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp=
-poky-linux-gnueabi/aom/2.0.0-r0/temp/run.do_compile.24037:155
exit 1 from 'eval ${DESTDIR:+DESTDIR=3D${DESTDIR} }VERBOSE=3D1 cmake --bui=
ld
'/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vf=
p-poky-linux-gnueabi/aom/2.0.0-r0/build'
"$@" -- ${EXTRA_OECMAKE_BUILD}'
| WARNING: Backtrace (BB generated script):
|       #1: cmake_runcmake_build,
/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp=
-poky-linux-gnueabi/aom/2.0.0-r0/temp/run.do_compile.24037,
line 155
|       #2: cmake_do_compile,
/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp=
-poky-linux-gnueabi/aom/2.0.0-r0/temp/run.do_compile.24037,
line 149
|       #3: do_compile,
/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp=
-poky-linux-gnueabi/aom/2.0.0-r0/temp/run.do_compile.24037,
line 144
|       #4: main,
/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp=
-poky-linux-gnueabi/aom/2.0.0-r0/temp/run.do_compile.24037,
line 168
|
| Backtrace (metadata-relative locations):
|       #1: cmake_runcmake_build,
/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/../../poky/meta/classes/cm=
ake.bbclass,
line 205
|       #2: cmake_do_compile,
/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/../../poky/meta/classes/cm=
ake.bbclass,
line 209
|       #3: do_compile, autogenerated, line 2
ERROR: Task
(/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/../../meta-openembedded/m=
eta-multimedia/recipes-multimedia/aom/aom_2.0.0.bb:do_compile)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 3538 tasks of which 3326 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/../../meta-openembedded/me=
ta-multimedia/recipes-multimedia/aom/aom_2.0.0.bb:
do_compile
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

Do you have any idea why it didn't work ?

Best regards,

Safouane

Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 20:54, Khem Raj <raj.khem@gmail.com> a =
=C3=A9crit :

> can you try adding
>
> EXTRA_OECMAKE +=3D "-DHAVE_NEON=3D0"
>
> and see if that helps ? for whatever reason set_aom_detect_var is
> enabling it where as default should be 0
>
> On Thu, Feb 18, 2021 at 10:42 AM safouane maaloul
> <maaloulsafouane@gmail.com> wrote:
> >
> > I succed in removing callconvention-hard from TUNE_FEATURES ? But i ha=
ve
> the same problem. I am pretty sure that i get get it working if i add ne=
on
> to the TUNE_FEATURES. Something like this     TUNE_FEATURES=3D "arm armv=
6 vfp
> arm1176jzfs callconvention-hard neon". But I can't do it with armv6. I h=
ave
> to use raspberrypi zero w so i have to make it work with armv6. I know t=
hat
> i can make it work with armv7 and armv8. I have error like this : | In f=
ile
> included from
> /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-v=
fp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/encoder/arm/neon/quantize_neon.c=
:20:
> > |
> /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-v=
fp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/common/arm/mem_neon.h:528:24:
> note: called from here
> > |   528 |   const int16x4_t s1 =3D vmovn_s32(v1);
> > |       |                        ^~~~~~~~~~~~~
> > | In file included from
> /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-v=
fp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/encoder/arm/neon/quantize_neon.c=
:12:
> > |
> /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-v=
fp-poky-linux-gnueabi/aom/2.0.0-r0/recipe-sysroot-native/usr/lib/arm-poky-l=
inux-gnueabi/gcc/arm-poky-linux-gnueabi/10.2.0/include/arm_neon.h:7556:1:
> error: inlining failed in call to 'always_inline' 'vmovn_s32': target
> specific option mismatch
> > |  7556 | vmovn_s32 (int32x4_t __a)
> > |       | ^~~~~~~~~
> >
> > So i am sure i have to add the neon feature so i appreciate it if
> someone can help me. I didn't find a workaround this problem on the
> internet.
> >
> > Best regards,
> >
> > Safouane
> >
> > Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 18:00, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> a =C3=A9crit :
> >>
> >> https://yocto.yoctoproject.narkive.com/Wle40I09/gcc-on-arm
> >>
> >>
> https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#v=
ar-TUNE_FEATURES
> >>
> https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#v=
ar-AVAILTUNES
> >>
> >> Zee
> >> _______
> >>
> >> On Thu, Feb 18, 2021 at 3:28 PM safouane maaloul
> >> <maaloulsafouane@gmail.com> wrote:
> >> >
> >> > Yes I will check it. Do you know how to remove callconvention-hard
> from TUNE_FEATURES ?
> >> >
> >> > Best regards,
> >> >
> >> > Safouane
> >> >
> >> > Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 14:52, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> a =C3=A9crit :
> >> >>
> >> >> > TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs
> callconvention-hard"
> >> >>
> >> >> Here is an interesting reading for you, for me also:
> >> >>
> https://www.yoctoproject.org/pipermail/meta-xilinx/2015-July/001060.html
> >> >>
> >> >> What I am getting from this reading is that you need to try with t=
he
> >> >> following line:
> >> >> TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs"
> >> >>
> >> >> I guess, YOCTO people have not too much experience with armv6, nor
> me,
> >> >> but this should be (I hope) generic.
> >> >>
> >> >> Hope this helps.
> >> >> Zoran
> >> >> _______
> >> >>
> >> >> On Thu, Feb 18, 2021 at 12:44 PM safouane maaloul
> >> >> <maaloulsafouane@gmail.com> wrote:
> >> >> >
> >> >> > This is my build configuration :
> >> >> > Build Configuration:
> >> >> > BB_VERSION           =3D "1.46.0"
> >> >> > BUILD_SYS            =3D "x86_64-linux"
> >> >> > NATIVELSBSTRING      =3D "universal"
> >> >> > TARGET_SYS           =3D "arm-poky-linux-gnueabi"
> >> >> > MACHINE              =3D "raspberrypi0-wifi"
> >> >> > DISTRO               =3D "poky"
> >> >> > DISTRO_VERSION       =3D "3.1.5"
> >> >> > TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs
> callconvention-hard"
> >> >> > TARGET_FPU           =3D "hard"
> >> >> > meta
> >> >> > meta-poky
> >> >> > meta-yocto-bsp       =3D
> "dunfell:7ea41de13774675828239b7738d3f5d70be8b1af"
> >> >> > meta-oe
> >> >> > meta-multimedia
> >> >> > meta-networking
> >> >> > meta-python          =3D
> "dunfell:5bba79488b7d393d2258d6e917f7bf7b0d7c4073"
> >> >> > meta-raspberrypi     =3D
> "dunfell:987993209716302eb8f314f69a2a3340555f94d8"
> >> >> > meta-gstreamer1.0    =3D
> "dunfell:b489b1ba084544d9c4c08f7c3b3d1c37ffa53c51"
> >> >> >
> >> >> > Best regards,
> >> >> >
> >> >> > Safouane
> >> >> >
> >> >> > Le mer. 17 f=C3=A9vr. 2021 =C3=A0 13:24, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> a =C3=A9crit :
> >> >> >>
> >> >> >> So, what is your MACHINE variable set to?
> >> >> >>
> >> >> >> Maybe knowing that, somebody can help.
> >> >> >>
> >> >> >> Zee
> >> >> >
> >> >> >
> >> >> >
> >> >> > --
> >> >> > SAFOUANE MAALOUL
> >> >> > maaloulsafouane@gmail.com
> >> >> >
> >> >
> >> >
> >> >
> >> > --
> >> > SAFOUANE MAALOUL
> >> > maaloulsafouane@gmail.com
> >> >
> >
> >
> >
> > --
> > SAFOUANE MAALOUL
> > maaloulsafouane@gmail.com
> >
> >
> >=20
> >
>


--=20
*SAFOUANE MAALOUL*

*maaloulsafouane@gmail.com <maaloulsafouane@gmail.com>*

--000000000000ffddbd05bba1f260
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I have an erreur:<div><div>| /workdir/tep=
-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp-poky-linux-g=
nueabi/aom/2.0.0-r0/git/av1/common/arm/mem_neon.h:525:24: note: called from=
 here</div><div>|=C2=A0 =C2=A0525 |=C2=A0 =C2=A0const int32x4_t v0 =3D vld1=
q_s32(buf);</div><div>|=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~~~=
</div><div>| ninja: build stopped: subcommand failed.</div><div>| WARNING: =
/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp-=
poky-linux-gnueabi/aom/2.0.0-r0/temp/run.do_compile.24037:155 exit 1 from &=
#39;eval ${DESTDIR:+DESTDIR=3D${DESTDIR} }VERBOSE=3D1 cmake --build &#39;/w=
orkdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp-po=
ky-linux-gnueabi/aom/2.0.0-r0/build&#39; &quot;$@&quot; -- ${EXTRA_OECMAKE_=
BUILD}&#39;</div><div>| WARNING: Backtrace (BB generated script):</div><div=
>|=C2=A0 =C2=A0 =C2=A0 =C2=A0#1: cmake_runcmake_build, /workdir/tep-cam-rpi=
-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/a=
om/2.0.0-r0/temp/run.do_compile.24037, line 155</div><div>|=C2=A0 =C2=A0 =
=C2=A0 =C2=A0#2: cmake_do_compile, /workdir/tep-cam-rpi-yocto/rpi-build-ga=
tesgarth/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/temp/ru=
n.do_compile.24037, line 149</div><div>|=C2=A0 =C2=A0 =C2=A0 =C2=A0#3: do_c=
ompile, /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzf=
shf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/temp/run.do_compile.24037, line 144=
</div><div>|=C2=A0 =C2=A0 =C2=A0 =C2=A0#4: main, /workdir/tep-cam-rpi-yocto=
/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/aom/2.0=
.0-r0/temp/run.do_compile.24037, line 168</div><div>|</div><div>| Backtrace=
 (metadata-relative locations):</div><div>|=C2=A0 =C2=A0 =C2=A0 =C2=A0#1: c=
make_runcmake_build, /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/../../=
poky/meta/classes/cmake.bbclass, line 205</div><div>|=C2=A0 =C2=A0 =C2=A0 =
=C2=A0#2: cmake_do_compile, /workdir/tep-cam-rpi-yocto/rpi-build-gatesgart=
h/../../poky/meta/classes/cmake.bbclass, line 209</div><div>|=C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0#3: do_compile, autogenerated, line 2</div><div>ERROR: Task (=
/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/../../meta-openembedded/met=
a-multimedia/recipes-multimedia/aom/aom_2.0.0.bb:do_compile) failed with ex=
it code &#39;1&#39;</div><div>NOTE: Tasks Summary: Attempted 3538 tasks of =
which 3326 didn&#39;t need to be rerun and 1 failed.</div><div><br></div><d=
iv>Summary: 1 task failed:</div><div>=C2=A0 /workdir/tep-cam-rpi-yocto/rpi-=
build-gatesgarth/../../meta-openembedded/meta-multimedia/recipes-multimedia=
/aom/aom_2.0.0.bb:do_compile</div><div>Summary: There was 1 WARNING message=
 shown.</div><div>Summary: There was 1 ERROR message shown, returning a non=
-zero exit code.</div></div><div><br></div><div>Do you have any idea why it=
 didn&#39;t work ?</div><div><br></div><div>Best regards,</div><div><br></d=
iv><div>Safouane</div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Le=C2=A0jeu. 18 f=C3=A9vr. 2021 =C3=A0=C2=A0=
20:54, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.co=
m</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">can you try adding<br>
<br>
EXTRA_OECMAKE +=3D &quot;-DHAVE_NEON=3D0&quot;<br>
<br>
and see if that helps ? for whatever reason set_aom_detect_var is<br>
enabling it where as default should be 0<br>
<br>
On Thu, Feb 18, 2021 at 10:42 AM safouane maaloul<br>
&lt;<a href=3D"mailto:maaloulsafouane@gmail.com" target=3D"_blank">maaloul=
safouane@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I succed in removing callconvention-hard from TUNE_FEATURES ? But i h=
ave the same problem. I am pretty sure that i get get it working if i add n=
eon to the TUNE_FEATURES. Something like this=C2=A0 =C2=A0 =C2=A0TUNE_FEATU=
RES=3D &quot;arm armv6 vfp arm1176jzfs callconvention-hard neon&quot;. But =
I can&#39;t do it with armv6. I have to use raspberrypi zero w so i have to=
 make it work with armv6. I know that i can make it work with armv7 and arm=
v8. I have error like this : | In file included from /workdir/tep-cam-rpi-y=
octo/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/aom=
/2.0.0-r0/git/av1/encoder/arm/neon/quantize_neon.c:20:<br>
&gt; | /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzf=
shf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/common/arm/mem_neon.h:528:2=
4: note: called from here<br>
&gt; |=C2=A0 =C2=A0528 |=C2=A0 =C2=A0const int16x4_t s1 =3D vmovn_s32(v1);=
<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~~<br>
&gt; | In file included from /workdir/tep-cam-rpi-yocto/rpi-build-gatesgar=
th/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/encod=
er/arm/neon/quantize_neon.c:12:<br>
&gt; | /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzf=
shf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/recipe-sysroot-native/usr/lib/arm-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/10.2.0/include/arm_neon.h:7556=
:1: error: inlining failed in call to &#39;always_inline&#39; &#39;vmovn_s3=
2&#39;: target specific option mismatch<br>
&gt; |=C2=A0 7556 | vmovn_s32 (int32x4_t __a)<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0| ^~~~~~~~~<br>
&gt;<br>
&gt; So i am sure i have to add the neon feature so i appreciate it if som=
eone can help me. I didn&#39;t find a workaround this problem on the intern=
et.<br>
&gt;<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Safouane<br>
&gt;<br>
&gt; Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 18:00, Zoran Stojsavljevic &lt;<a h=
ref=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsa=
vljevic@gmail.com</a>&gt; a =C3=A9crit :<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://yocto.yoctoproject.narkive.com/Wle40I09/gcc-on=
-arm" rel=3D"noreferrer" target=3D"_blank">https://yocto.yoctoproject.narki=
ve.com/Wle40I09/gcc-on-arm</a><br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://www.yoctoproject.org/docs/current/mega-manual/=
mega-manual.html#var-TUNE_FEATURES" rel=3D"noreferrer" target=3D"_blank">ht=
tps://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-TU=
NE_FEATURES</a><br>
&gt;&gt; <a href=3D"https://www.yoctoproject.org/docs/current/mega-manual/=
mega-manual.html#var-AVAILTUNES" rel=3D"noreferrer" target=3D"_blank">https=
://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-AVAIL=
TUNES</a><br>
&gt;&gt;<br>
&gt;&gt; Zee<br>
&gt;&gt; _______<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Feb 18, 2021 at 3:28 PM safouane maaloul<br>
&gt;&gt; &lt;<a href=3D"mailto:maaloulsafouane@gmail.com" target=3D"_blank=
">maaloulsafouane@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Yes I will check it. Do you know how to remove callconventio=
n-hard from TUNE_FEATURES ?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Best regards,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Safouane<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 14:52, Zoran Stojsavljevic=
 &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zor=
an.stojsavljevic@gmail.com</a>&gt; a =C3=A9crit :<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;=
arm armv6 vfp arm1176jzfs callconvention-hard&quot;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Here is an interesting reading for you, for me also:<br>
&gt;&gt; &gt;&gt; <a href=3D"https://www.yoctoproject.org/pipermail/meta-x=
ilinx/2015-July/001060.html" rel=3D"noreferrer" target=3D"_blank">https://w=
ww.yoctoproject.org/pipermail/meta-xilinx/2015-July/001060.html</a><br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; What I am getting from this reading is that you need to =
try with the<br>
&gt;&gt; &gt;&gt; following line:<br>
&gt;&gt; &gt;&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm a=
rmv6 vfp arm1176jzfs&quot;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; I guess, YOCTO people have not too much experience with =
armv6, nor me,<br>
&gt;&gt; &gt;&gt; but this should be (I hope) generic.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Hope this helps.<br>
&gt;&gt; &gt;&gt; Zoran<br>
&gt;&gt; &gt;&gt; _______<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Thu, Feb 18, 2021 at 12:44 PM safouane maaloul<br>
&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:maaloulsafouane@gmail.com" target=
=3D"_blank">maaloulsafouane@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; This is my build configuration :<br>
&gt;&gt; &gt;&gt; &gt; Build Configuration:<br>
&gt;&gt; &gt;&gt; &gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=
=3D &quot;1.46.0&quot;<br>
&gt;&gt; &gt;&gt; &gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=3D &quot;x86_64-linux&quot;<br>
&gt;&gt; &gt;&gt; &gt; NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;unive=
rsal&quot;<br>
&gt;&gt; &gt;&gt; &gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=
=3D &quot;arm-poky-linux-gnueabi&quot;<br>
&gt;&gt; &gt;&gt; &gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =3D &quot;raspberrypi0-wifi&quot;<br>
&gt;&gt; &gt;&gt; &gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0=3D &quot;poky&quot;<br>
&gt;&gt; &gt;&gt; &gt; DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;=
3.1.5&quot;<br>
&gt;&gt; &gt;&gt; &gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;=
arm armv6 vfp arm1176jzfs callconvention-hard&quot;<br>
&gt;&gt; &gt;&gt; &gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=
=3D &quot;hard&quot;<br>
&gt;&gt; &gt;&gt; &gt; meta<br>
&gt;&gt; &gt;&gt; &gt; meta-poky<br>
&gt;&gt; &gt;&gt; &gt; meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;=
dunfell:7ea41de13774675828239b7738d3f5d70be8b1af&quot;<br>
&gt;&gt; &gt;&gt; &gt; meta-oe<br>
&gt;&gt; &gt;&gt; &gt; meta-multimedia<br>
&gt;&gt; &gt;&gt; &gt; meta-networking<br>
&gt;&gt; &gt;&gt; &gt; meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &=
quot;dunfell:5bba79488b7d393d2258d6e917f7bf7b0d7c4073&quot;<br>
&gt;&gt; &gt;&gt; &gt; meta-raspberrypi=C2=A0 =C2=A0 =C2=A0=3D &quot;dunfe=
ll:987993209716302eb8f314f69a2a3340555f94d8&quot;<br>
&gt;&gt; &gt;&gt; &gt; meta-gstreamer1.0=C2=A0 =C2=A0 =3D &quot;dunfell:b4=
89b1ba084544d9c4c08f7c3b3d1c37ffa53c51&quot;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Best regards,<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Safouane<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Le mer. 17 f=C3=A9vr. 2021 =C3=A0 13:24, Zoran Stoj=
savljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_b=
lank">zoran.stojsavljevic@gmail.com</a>&gt; a =C3=A9crit :<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; So, what is your MACHINE variable set to?<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; Maybe knowing that, somebody can help.<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; Zee<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; --<br>
&gt;&gt; &gt;&gt; &gt; SAFOUANE MAALOUL<br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"mailto:maaloulsafouane@gmail.com" target=
=
=3D"_blank">maaloulsafouane@gmail.com</a><br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; SAFOUANE MAALOUL<br>
&gt;&gt; &gt; <a href=3D"mailto:maaloulsafouane@gmail.com" target=3D"_blan=
k">maaloulsafouane@gmail.com</a><br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; SAFOUANE MAALOUL<br>
&gt; <a href=3D"mailto:maaloulsafouane@gmail.com" target=3D"_blank">maalou=
lsafouane@gmail.com</a><br>
&gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature"><div dir=3D"ltr"><font color=3D"#000000"><span>=
<b>SAFOUANE MAALOUL</b></span></font><div><span><b><u style=3D"background-c=
olor:rgb(255,255,255)"><font color=3D"#0b5394"><a href=3D"mailto:maaloulsaf=
ouane@gmail.com" target=3D"_blank">maaloulsafouane@gmail.com</a></font></u>=
<span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"><br></sp=
an></b></span><div><span style=3D"background-color:rgb(255,255,255)"><font =
color=3D"#000000"><b><br></b></font></span></div></div></div></div>

--000000000000ffddbd05bba1f260--
