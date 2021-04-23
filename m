Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web12.5879.1619157288132076758
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Apr 2021 22:54:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@apide.com header.s=google header.b=elHq9SA8;
 spf=pass (domain: apide.com, ip: 209.85.160.179, mailfrom: morten.bruun@apide.com)
Received: by mail-qt1-f179.google.com with SMTP id 18so22238621qtz.6
        for <yocto@lists.yoctoproject.org>; Thu, 22 Apr 2021 22:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apide.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tVevEbF8zTDGuJBUZl7CIjEpXxaLXOwzqpvvYLVJoac=;
        b=elHq9SA8DBD5jSQ3EkfdAlOa09GqTWvJrI83VTKinn90GdnBYhjYDy/zWwNwcG00/W
         voqYpWl8SZm/XeqL2rc3gCh8DdVi7ByvXNgjgZGRN8wgWPAPCXWh+a69gboxF2KxlN6t
         sWkCEUPKav8/wRAfMoLfD1L8N2yBF1femH3GE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tVevEbF8zTDGuJBUZl7CIjEpXxaLXOwzqpvvYLVJoac=;
        b=mKhS6iatOfSUPjGRWqHhCJ8XJwkIHKzWXou0aQPkJPTGoOee1qC79tXq/OblaIEqNn
         T3q+2M+mp/WhbRy/tuP0ZUGlG/ze7ntVSWXum/9MXCw05CNCIBSyAznhDK8D5bbp1pf/
         c534Upwx3NaA4Ebfk79jeRHbjAYYxp9ZLzqMyPOAX999kdyPN5G758AL7n850T3dONAG
         cTYBJOjtOBvIny9WnDG+LO//+rS5/asfmuKC+HCKXyswu7Txdneo6vvxwHlkoElZmZtt
         7VqlCK90mIoP3ocxMYZKdJ7L0Sda5Lgis72DHNWQJZ1ywX4zdLSWoppMqlomqxrKLSYy
         QH1A==
X-Gm-Message-State: AOAM533uET73K1tog1IpEJtLETeDIdJ0maC5LaQN+OaKr0GyNP05GPWS
	eJ36vkJo48eogriqJRPjd7qFNnjDXh/44OLpE2au7g==
X-Google-Smtp-Source: ABdhPJwUMgXQX3PSKSSR8fReEV35UUyRLHLVrdDR5YEJqje/y4VAwK8iN22TmOy1U+o1VLU6P07s7m8nzL0gIoIMNeQ=
X-Received: by 2002:ac8:5517:: with SMTP id j23mr2185627qtq.148.1619157286863;
 Thu, 22 Apr 2021 22:54:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAMrUZLiOVUDxXUXytS4BRmkb+xK7M03i2fE0hoUOW6SEeP7Y8w@mail.gmail.com>
 <CAMKF1srY4H8r7damyEMnUmNumVD3HEPh8DwRHBsYCnSDT6ij2A@mail.gmail.com>
In-Reply-To: <CAMKF1srY4H8r7damyEMnUmNumVD3HEPh8DwRHBsYCnSDT6ij2A@mail.gmail.com>
From: "Morten Bruun" <morten.bruun@apide.com>
Date: Fri, 23 Apr 2021 07:54:35 +0200
Message-ID: <CAMrUZLjApKadn5CcadKmXhrYk2UENEMMFmxvD2ji3-Xf56mNXA@mail.gmail.com>
Subject: Re: [yocto] Problems building hardknott for raspberri pi
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000eb58b505c09d6e24"

--000000000000eb58b505c09d6e24
Content-Type: text/plain; charset="UTF-8"

On Fri, Apr 23, 2021 at 7:30 AM Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Apr 22, 2021 at 10:22 PM Morten Bruun <morten.bruun@apide.com>
> wrote:
> >
> > I'm upgrading to hardknott. The meta-raspberry layer does not have a
> hardknott branch, so I'm building with the master branch.
> >
>
> I think meta-raspberrypi should branch before mesa-gl restructuring
> initiated changes in meta-raspberrypi can you try with
> meta-raspberrypi master@d1f191ed3018e0b130311e443f014e30d2f5ed97
> and see if it works
>
> Thanks for your quick reply. I tried to build with d1f191ed3018e0b130311e443f014e30d2f5ed97
which gives me this error instead:

ERROR: mesa-gl-2_21.0.1-r0 do_configure: meson failed
ERROR: mesa-gl-2_21.0.1-r0 do_configure: Execution of
'/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_configure.32301'
failed with exit code 1:
The Meson build system
Version: 0.57.1
Source dir:
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/mesa-21.0.1
Build dir:
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/build
Build type: cross build
Program python3 found: YES
(/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot-native/usr/bin/python3-native/python3)

../mesa-21.0.1/meson.build:21:0: ERROR: Options "swrast" are not in allowed
choices: "auto, i915, i965, r100, r200, nouveau"

A full log can be found at
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/build/meson-logs/meson-log.txt
WARNING:
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_configure.32301:181
exit 1 from 'exit 1'
WARNING: Backtrace (BB generated script):
        #1: bbfatal_log,
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_configure.32301,
line 181
        #2: meson_do_configure,
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_configure.32301,
line 170
        #3: do_configure,
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_configure.32301,
line 156
        #4: main,
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_configure.32301,
line 194

Backtrace (metadata-relative locations):
        #1: bbfatal_log,
/home/morten/vetscan-spe-instrument/poky/meta/classes/logging.bbclass, line
72
        #2: meson_do_configure,
/home/morten/vetscan-spe-instrument/poky/meta/classes/meson.bbclass, line
160
        #3: do_configure, autogenerated, line 2
ERROR: Logfile of failure stored in:
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/log.do_configure.32301

-- Morten

--000000000000eb58b505c09d6e24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:arial,helvetica,sans-serif"><span style=3D"font-family:Arial,Helve=
tica,sans-serif">On Fri, Apr 23, 2021 at 7:30 AM Khem Raj &lt;<a href=3D"ma=
ilto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:</span><br></div>=
</div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">On Thu, Apr 22, 2021 at 10:22 PM Morten Bruun &lt;<a href=3D"mailto=
:morten.bruun@apide.com" target=3D"_blank">morten.bruun@apide.com</a>&gt; w=
rote:<br>&gt;<br>
&gt; I&#39;m upgrading to hardknott. The meta-raspberry layer does not have=
 a hardknott branch, so I&#39;m building with the master branch.<br>
&gt;<br>
<br>
I think meta-raspberrypi should branch before mesa-gl restructuring<br>
initiated changes in meta-raspberrypi can you try with<br>
meta-raspberrypi master@<span class=3D"gmail_default" style=3D"font-family:=
arial,helvetica,sans-serif"></span>d1f191ed3018e0b130311e443f014e30d2f5ed97=
<br>
and see if it works<br><br></blockquote></div><div class=3D"gmail_default" =
style=3D"font-family:arial,helvetica,sans-serif"></div><div class=3D"gmail_=
default" style=3D"font-family:arial,helvetica,sans-serif">Thanks for your q=
uick reply. I tried to build with <span class=3D"gmail_default"></span><spa=
n style=3D"font-family:Arial,Helvetica,sans-serif">d1f191ed3018e0b130311e4<=
/span><span style=3D"font-family:Arial,Helvetica,sans-serif">43f014e30d2f5e=
d97 which gives me this error instead:</span></div><br clear=3D"all"><div><=
div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif=
"><span style=3D"font-family:Arial,Helvetica,sans-serif">ERROR: mesa-gl-2_2=
1.0.1-r0 do_configure: meson failed</span></div>ERROR: mesa-gl-2_21.0.1-r0 =
do_configure: Execution of &#39;/home/morten/yocto/spe/tmp/work/cortexa7t2h=
f-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_configure.3=
2301&#39; failed with exit code 1:<br>The Meson build system<br>Version: 0.=
57.1<br>Source dir: /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4=
-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/mesa-21.0.1<br>Build dir: /home/mor=
ten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2=
_21.0.1-r0/build<br>Build type: cross build<br>Program python3 found: YES (=
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/=
mesa-gl/2_21.0.1-r0/recipe-sysroot-native/usr/bin/python3-native/python3)<b=
r><br>../mesa-21.0.1/meson.build:21:0: ERROR: Options &quot;swrast&quot; ar=
e not in allowed choices: &quot;auto, i915, i965, r100, r200, nouveau&quot;=
<br><br>A full log can be found at /home/morten/yocto/spe/tmp/work/cortexa7=
t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/build/meson-logs/mes=
on-log.txt<br>WARNING: /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vf=
pv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_configure.32301:181 =
exit 1 from &#39;exit 1&#39;<br>WARNING: Backtrace (BB generated script): <=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 #1: bbfatal_log, /home/morten/yocto/spe/tmp/=
work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/ru=
n.do_configure.32301, line 181<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 #2: meson_do_=
configure, /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-lin=
ux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_configure.32301, line 170<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 #3: do_configure, /home/morten/yocto/spe/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_=
configure.32301, line 156<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 #4: main, /home/mo=
rten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/=
2_21.0.1-r0/temp/run.do_configure.32301, line 194<br><br>Backtrace (metadat=
a-relative locations):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 #1: bbfatal_log, /hom=
e/morten/vetscan-spe-instrument/poky/meta/classes/logging.bbclass, line 72<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 #2: meson_do_configure, /home/morten/vetscan=
-spe-instrument/poky/meta/classes/meson.bbclass, line 160<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 #3: do_configure, autogenerated, line 2<br>ERROR: Logfile of =
failure stored in: /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-=
poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/log.do_configure.32301<br><div =
class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><b=
r></div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,s=
ans-serif"></div></div>--<span class=3D"gmail_default" style=3D"font-family=
:arial,helvetica,sans-serif"> Morten<br></span><div dir=3D"ltr" class=3D"gm=
ail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span></span></div></=
div></div></div></div>

--000000000000eb58b505c09d6e24--
