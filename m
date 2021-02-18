Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
 by mx.groups.io with SMTP id smtpd.web11.1021.1613673764897437735
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 10:42:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=anadh1Oi;
 spf=pass (domain: gmail.com, ip: 209.85.166.172, mailfrom: maaloulsafouane@gmail.com)
Received: by mail-il1-f172.google.com with SMTP id y15so2346816ilj.11
        for <yocto@lists.yoctoproject.org>; Thu, 18 Feb 2021 10:42:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=mFn+cTQKU3OdFCEBpvjCmz3kCcKFs1VU6uMy0LkxQyU=;
        b=anadh1Oiip/hj6tS6VE8beUpQTB9JPazKz1YUogeqqX7SlEo9NL16Ai0j3mrEmZovO
         dRLr1dyBwNmmDTOXySeZ8zSBCsm677BmC5Gl2D3Ig6nhYE3cXmQbNoEVT6XuEHJTKV1y
         H/Dn5CgBHsC7WNVm/zkfY3mSTI4nM/SjDzMJLHjvcSMb9zICx1r+JkPtvKVQhjBELjcF
         xJnoAzoCkls4AmIkDQWgTshpYUzWH6jf5Eucn0LeBcGWNt8qJqspCv0ovaaPqZ7elwea
         SKyMJoM/CA6ru+r4NXF2oK4n3UkxsGtlqETEsWm4+aqQId0PieDLxycFtvi4KKyRDEBf
         iZoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=mFn+cTQKU3OdFCEBpvjCmz3kCcKFs1VU6uMy0LkxQyU=;
        b=d8ZIjU+t4qOCon9e1y8hyCttMqpOekXuneUDRBRZzVCGAC/7JuQWPk2/tt+nlLC339
         6SzvPg8puHZkyZeuvfEPbhGAshbvjIA3+reITO9gHWnlkNd3RS1AXDYljKi1/zAgREUD
         vIpeHpmk8C4U3TRFa+RxheVu32KTIYWXHBZkX31wQ3NkYKBU+y7yEn1cGK1RMA3Qv6/3
         EOdxSt/GE94qNco306KogRYG2IEoaDADFYrVTK/VPCuqfndKZvMy1AQy20/bInLG+J8p
         Vw4l+dFHdWZ+xVkv3JFKnRYDh8aVYP/nc+kQ8KabPI/zyHvRfzsRzawKlq8R9P/sW2nr
         4x/g==
X-Gm-Message-State: AOAM533MpG8TkA/FVxPKNfyyNUvFtF5EIvQsnoaUlVwfKRZYtUAKYQ0V
	RWoQxtoRd84kDP5d3ZwwcHEyXVQORj2/esgak14=
X-Google-Smtp-Source: ABdhPJwpOzVkLPzLf0hCAUeH02oy1g06mVtpnlMbb5wU9IInpvQemauEDjS6lm4PECYftpvmG/JZCbc64Sqt6ovF8ko=
X-Received: by 2002:a92:d11:: with SMTP id 17mr493830iln.57.1613673764083;
 Thu, 18 Feb 2021 10:42:44 -0800 (PST)
MIME-Version: 1.0
References: <OHWd.1613555997180740145.8Ytp@lists.yoctoproject.org>
 <CAGAf8LxoGwaocSUq04jqar4hQH2NiZ2DdumN5dpnQm4dr2wkew@mail.gmail.com>
 <CAEj=YVJ6z6etLaMrFUXREfeyFhaS-UvnnDh19zUor37eAPGnvQ@mail.gmail.com>
 <CAGAf8LyRvfu_iw+BQkiVYUuF6po0d0Pe0xqsVRjG8_bG-u75fA@mail.gmail.com>
 <CAEj=YVLoCXsYPF_ptXLZTDuQi3JLwRZAJNmbrUziUj-Mf8DHfw@mail.gmail.com>
 <CAGAf8Lzfz7qyNLiPWDwvyj5gGs64pUHMK3uo9daHKC6-jB7toA@mail.gmail.com>
 <CAEj=YVJroNCPYDdfw9BfhMzySWkVaLSnkmqNv6JTMhBv7NCMoQ@mail.gmail.com> <CAGAf8LwoLjf8cn4+wz5o4HeXKZJFz4Pi0vE2U7-wXs3aZmQc-w@mail.gmail.com>
In-Reply-To: <CAGAf8LwoLjf8cn4+wz5o4HeXKZJFz4Pi0vE2U7-wXs3aZmQc-w@mail.gmail.com>
From: "safouane maaloul" <maaloulsafouane@gmail.com>
Date: Thu, 18 Feb 2021 19:42:32 +0100
Message-ID: <CAEj=YV+8uSPa2J07-eFPwB=fwGEuY728a+81iudXt2fPqLFFMA@mail.gmail.com>
Subject: Re: [yocto] #av1 #armv6 #raspberrypi #neon
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007ddbda05bba0b31f"

--0000000000007ddbda05bba0b31f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I succed in removing callconvention-hard from TUNE_FEATURES ? But i have
the same problem. I am pretty sure that i get get it working if i add neon
to the TUNE_FEATURES. Something like this     TUNE_FEATURES=3D "arm armv6 v=
fp
arm1176jzfs callconvention-hard neon". But I can't do it with armv6. I have
to use raspberrypi zero w so i have to make it work with armv6. I know that
i can make it work with armv7 and armv8. I have error like this : | In file
included from
/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp-=
poky-linux-gnueabi/aom/2.0.0-r0/git/av1/encoder/arm/neon/quantize_neon.c:20=
:
|
/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp-=
poky-linux-gnueabi/aom/2.0.0-r0/git/av1/common/arm/mem_neon.h:528:24:
note: called from here
|   528 |   const int16x4_t s1 =3D vmovn_s32(v1);
|       |                        ^~~~~~~~~~~~~
| In file included from
/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp-=
poky-linux-gnueabi/aom/2.0.0-r0/git/av1/encoder/arm/neon/quantize_neon.c:12=
:
|
/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp-=
poky-linux-gnueabi/aom/2.0.0-r0/recipe-sysroot-native/usr/lib/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/10.2.0/include/arm_neon.h:7556:1:
error: inlining failed in call to 'always_inline' 'vmovn_s32': target
specific option mismatch
|  7556 | vmovn_s32 (int32x4_t __a)
|       | ^~~~~~~~~

So i am sure i have to add the neon feature so i appreciate it if someone
can help me. I didn't find a workaround this problem on the internet.

Best regards,

Safouane

Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 18:00, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> a =C3=A9crit :

> https://yocto.yoctoproject.narkive.com/Wle40I09/gcc-on-arm
>
>
> https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#va=
r-TUNE_FEATURES
>
> https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#va=
r-AVAILTUNES
>
> Zee
> _______
>
> On Thu, Feb 18, 2021 at 3:28 PM safouane maaloul
> <maaloulsafouane@gmail.com> wrote:
> >
> > Yes I will check it. Do you know how to remove callconvention-hard from
> TUNE_FEATURES ?
> >
> > Best regards,
> >
> > Safouane
> >
> > Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 14:52, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> a =C3=A9crit :
> >>
> >> > TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs callconvention-h=
ard"
> >>
> >> Here is an interesting reading for you, for me also:
> >>
> https://www.yoctoproject.org/pipermail/meta-xilinx/2015-July/001060.html
> >>
> >> What I am getting from this reading is that you need to try with the
> >> following line:
> >> TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs"
> >>
> >> I guess, YOCTO people have not too much experience with armv6, nor me,
> >> but this should be (I hope) generic.
> >>
> >> Hope this helps.
> >> Zoran
> >> _______
> >>
> >> On Thu, Feb 18, 2021 at 12:44 PM safouane maaloul
> >> <maaloulsafouane@gmail.com> wrote:
> >> >
> >> > This is my build configuration :
> >> > Build Configuration:
> >> > BB_VERSION           =3D "1.46.0"
> >> > BUILD_SYS            =3D "x86_64-linux"
> >> > NATIVELSBSTRING      =3D "universal"
> >> > TARGET_SYS           =3D "arm-poky-linux-gnueabi"
> >> > MACHINE              =3D "raspberrypi0-wifi"
> >> > DISTRO               =3D "poky"
> >> > DISTRO_VERSION       =3D "3.1.5"
> >> > TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs callconvention-h=
ard"
> >> > TARGET_FPU           =3D "hard"
> >> > meta
> >> > meta-poky
> >> > meta-yocto-bsp       =3D
> "dunfell:7ea41de13774675828239b7738d3f5d70be8b1af"
> >> > meta-oe
> >> > meta-multimedia
> >> > meta-networking
> >> > meta-python          =3D
> "dunfell:5bba79488b7d393d2258d6e917f7bf7b0d7c4073"
> >> > meta-raspberrypi     =3D
> "dunfell:987993209716302eb8f314f69a2a3340555f94d8"
> >> > meta-gstreamer1.0    =3D
> "dunfell:b489b1ba084544d9c4c08f7c3b3d1c37ffa53c51"
> >> >
> >> > Best regards,
> >> >
> >> > Safouane
> >> >
> >> > Le mer. 17 f=C3=A9vr. 2021 =C3=A0 13:24, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> a =C3=A9crit :
> >> >>
> >> >> So, what is your MACHINE variable set to?
> >> >>
> >> >> Maybe knowing that, somebody can help.
> >> >>
> >> >> Zee
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
>


--=20
*SAFOUANE MAALOUL*

*maaloulsafouane@gmail.com <maaloulsafouane@gmail.com>*

--0000000000007ddbda05bba0b31f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><span style=3D"color:rgb(0,0,0);white-space:pre-wrap">I succed in=
 removing callconvention-hard from TUNE_FEATURES ? But i have the same prob=
lem. I am pretty sure that i get get it working if i add neon to the </span=
><span style=3D"color:rgb(80,0,80)">TUNE_FEATURES. Something like this=C2=
=A0 =C2=A0 =C2=A0</span>TUNE_FEATURES<span style=3D"color:rgb(80,0,80)">=3D=
 &quot;arm armv6 vfp arm1176jzfs callconvention-hard neon&quot;. But I can&=
#39;t do it with armv6. I have to use raspberrypi zero w so i have to make =
it work with armv6. I know that i can make it work with armv7 and armv8. I =
have error like this :=C2=A0</span>| In file included from /workdir/tep-cam=
-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp-poky-linux-gnuea=
bi/aom/2.0.0-r0/git/av1/encoder/arm/neon/quantize_neon.c:20:</div><div dir=
=3D"ltr">| /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176=
jzfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/common/arm/mem_neon.h:52=
8:24: note: called from here</div><div dir=3D"ltr">|=C2=A0 =C2=A0528 |=C2=
=A0 =C2=A0const int16x4_t s1 =3D vmovn_s32(v1);=C2=A0</div><div dir=3D"ltr"=
>|=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~~</div><div dir=3D"ltr">=
| In file included from /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp=
/work/arm1176jzfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/encoder/arm=
/neon/quantize_neon.c:12:</div><div dir=3D"ltr">| /workdir/tep-cam-rpi-yoct=
o/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/aom/2.=
0.0-r0/recipe-sysroot-native/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-li=
nux-gnueabi/10.2.0/include/arm_neon.h:7556:1: error: inlining failed in cal=
l to &#39;always_inline&#39; &#39;vmovn_s32&#39;: target specific option mi=
smatch</div><div dir=3D"ltr">|=C2=A0 7556 | vmovn_s32 (int32x4_t __a)</div>=
<div dir=3D"ltr">|=C2=A0 =C2=A0 =C2=A0 =C2=A0| ^~~~~~~~~</div><div dir=3D"l=
tr"><br></div><div>So i am sure i have to add the neon feature so i appreci=
ate it if someone can help me. I didn&#39;t find a workaround this problem =
on the internet.</div><div><br></div><div>Best regards,</div><div><br></div=
><div>Safouane</div></div></div></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0jeu. 18 f=C3=A9vr. 2021 =C3=
=A0=C2=A018:00, Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljev=
ic@gmail.com">zoran.stojsavljevic@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><a href=3D"https://=
yocto.yoctoproject.narkive.com/Wle40I09/gcc-on-arm" rel=3D"noreferrer" targ=
et=3D"_blank">https://yocto.yoctoproject.narkive.com/Wle40I09/gcc-on-arm</a=
><br>
<br>
<a href=3D"https://www.yoctoproject.org/docs/current/mega-manual/mega-manua=
l.html#var-TUNE_FEATURES" rel=3D"noreferrer" target=3D"_blank">https://www.=
yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-TUNE_FEATURE=
S</a><br>
<a href=3D"https://www.yoctoproject.org/docs/current/mega-manual/mega-manua=
l.html#var-AVAILTUNES" rel=3D"noreferrer" target=3D"_blank">https://www.yoc=
toproject.org/docs/current/mega-manual/mega-manual.html#var-AVAILTUNES</a><=
br>
<br>
Zee<br>
_______<br>
<br>
On Thu, Feb 18, 2021 at 3:28 PM safouane maaloul<br>
&lt;<a href=3D"mailto:maaloulsafouane@gmail.com" target=3D"_blank">maalouls=
afouane@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Yes I will check it. Do you know how to remove callconvention-hard fro=
m TUNE_FEATURES ?<br>
&gt;<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Safouane<br>
&gt;<br>
&gt; Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 14:52, Zoran Stojsavljevic &lt;<a hr=
ef=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsav=
ljevic@gmail.com</a>&gt; a =C3=A9crit :<br>
&gt;&gt;<br>
&gt;&gt; &gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv6 =
vfp arm1176jzfs callconvention-hard&quot;<br>
&gt;&gt;<br>
&gt;&gt; Here is an interesting reading for you, for me also:<br>
&gt;&gt; <a href=3D"https://www.yoctoproject.org/pipermail/meta-xilinx/2015=
-July/001060.html" rel=3D"noreferrer" target=3D"_blank">https://www.yoctopr=
oject.org/pipermail/meta-xilinx/2015-July/001060.html</a><br>
&gt;&gt;<br>
&gt;&gt; What I am getting from this reading is that you need to try with t=
he<br>
&gt;&gt; following line:<br>
&gt;&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv6 vfp a=
rm1176jzfs&quot;<br>
&gt;&gt;<br>
&gt;&gt; I guess, YOCTO people have not too much experience with armv6, nor=
 me,<br>
&gt;&gt; but this should be (I hope) generic.<br>
&gt;&gt;<br>
&gt;&gt; Hope this helps.<br>
&gt;&gt; Zoran<br>
&gt;&gt; _______<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Feb 18, 2021 at 12:44 PM safouane maaloul<br>
&gt;&gt; &lt;<a href=3D"mailto:maaloulsafouane@gmail.com" target=3D"_blank"=
>maaloulsafouane@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; This is my build configuration :<br>
&gt;&gt; &gt; Build Configuration:<br>
&gt;&gt; &gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;=
1.46.0&quot;<br>
&gt;&gt; &gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;=
x86_64-linux&quot;<br>
&gt;&gt; &gt; NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal&quot;=
<br>
&gt;&gt; &gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;=
arm-poky-linux-gnueabi&quot;<br>
&gt;&gt; &gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &=
quot;raspberrypi0-wifi&quot;<br>
&gt;&gt; &gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;poky&quot;<br>
&gt;&gt; &gt; DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;3.1.5&quot=
;<br>
&gt;&gt; &gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv6 =
vfp arm1176jzfs callconvention-hard&quot;<br>
&gt;&gt; &gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;=
hard&quot;<br>
&gt;&gt; &gt; meta<br>
&gt;&gt; &gt; meta-poky<br>
&gt;&gt; &gt; meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;dunfell:7e=
a41de13774675828239b7738d3f5d70be8b1af&quot;<br>
&gt;&gt; &gt; meta-oe<br>
&gt;&gt; &gt; meta-multimedia<br>
&gt;&gt; &gt; meta-networking<br>
&gt;&gt; &gt; meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;dunfe=
ll:5bba79488b7d393d2258d6e917f7bf7b0d7c4073&quot;<br>
&gt;&gt; &gt; meta-raspberrypi=C2=A0 =C2=A0 =C2=A0=3D &quot;dunfell:9879932=
09716302eb8f314f69a2a3340555f94d8&quot;<br>
&gt;&gt; &gt; meta-gstreamer1.0=C2=A0 =C2=A0 =3D &quot;dunfell:b489b1ba0845=
44d9c4c08f7c3b3d1c37ffa53c51&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Best regards,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Safouane<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Le mer. 17 f=C3=A9vr. 2021 =C3=A0 13:24, Zoran Stojsavljevic =
&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zora=
n.stojsavljevic@gmail.com</a>&gt; a =C3=A9crit :<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; So, what is your MACHINE variable set to?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Maybe knowing that, somebody can help.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Zee<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; SAFOUANE MAALOUL<br>
&gt;&gt; &gt; <a href=3D"mailto:maaloulsafouane@gmail.com" target=3D"_blank=
">maaloulsafouane@gmail.com</a><br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; SAFOUANE MAALOUL<br>
&gt; <a href=3D"mailto:maaloulsafouane@gmail.com" target=3D"_blank">maaloul=
safouane@gmail.com</a><br>
&gt;<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><font color=3D"#000000"><span><=
b>SAFOUANE MAALOUL</b></span></font><div><span><b><u style=3D"background-co=
lor:rgb(255,255,255)"><font color=3D"#0b5394"><a href=3D"mailto:maaloulsafo=
uane@gmail.com" target=3D"_blank">maaloulsafouane@gmail.com</a></font></u><=
span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"><br></spa=
n></b></span><div><span style=3D"background-color:rgb(255,255,255)"><font c=
olor=3D"#000000"><b><br></b></font></span></div></div></div></div>

--0000000000007ddbda05bba0b31f--
