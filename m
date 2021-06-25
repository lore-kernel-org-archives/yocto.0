Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.4733.1624608902571604738
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Jun 2021 01:15:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hZmRQ4UQ;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: zoran.stojsavljevic@gmail.com)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2637F38C049A
	for <yocto@yoctoproject.org>; Fri, 25 Jun 2021 08:15:02 +0000 (UTC)
Received: by mail-pg1-f182.google.com with SMTP id w15so2411253pgk.13
        for <yocto@yoctoproject.org>; Fri, 25 Jun 2021 01:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VR3e54FtObhliIdh9CDij1ZK2VQec0WxBCey/7YbluU=;
        b=hZmRQ4UQOezKcWH2KFbTSxNmy438772Lonwsu3/IgHAwkOx8njWHRYXyQmvTfjhZ8n
         oUJOtZbFn6Bnl2tZNvz9xo4gnADyQCtLbMnCy82BTahEFK/kl1OxbYPDhecy0dyYnzdN
         JPp6aHccEEftnbGvKDq3MKIpQZdO5K3WbVLQuF/OrthjesLG/QXVu8KGOS6lxtfW1uEd
         aMNNfYa3GlNiDlkM7f4vh6L6NTRiaw9/G9HtLXcHaq3g3Ak5xJL1p8t4F4VfFaUeMoML
         SDHf6NxQrgwzxgrEdLX3RnSat80j8yoLuWdXHg7/KxJ+X6nYEr2cHAMkJAIz+StGR74/
         +fmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VR3e54FtObhliIdh9CDij1ZK2VQec0WxBCey/7YbluU=;
        b=fSe2umQykRCSRLVpTMP5kGiT9eB72pNcyneSnIQCet4vaZ1Gbqn1+37/R48D2jUgPA
         llG5u8o20yxVLJXuj94m9ny8G/wo+WhVNUcH4yXbpbuDXMl/XkX7qTmRsh7iyyDXpN6S
         CatR/5PFgmaQZS2DyKeXZF2Bimv/qVH9qCj9PtRech170KUO/iwCUBC9suBf32F9R8Vq
         2zyefnvXlDigF/HBJSzCN5L10wFcz/4VSWJaqQfVQQMbUA4enNyh/PeT9s50MgUhsJ1N
         322+9daDtJC/4L3nhJj5oiHiDEefrkjcCoVfGmwp/2xhOA+zJkinFYSKptiu/TuX/Mw6
         7IDA==
X-Gm-Message-State: AOAM533zYRzRjf4OUKLNF/5eYHviQ6ti1MN3JhsEJSQSl/r4ImggvNhC
	+8ZXIdgFy7m6BDoAFaj3QzTaWgVFXa+9szJfD/c=
X-Google-Smtp-Source: ABdhPJxgFajB/Tqyq698qv88Bn6q4pAhq2+ev3fPEtaX0NXqeJ+LG4uJ2DnJEPM4MXSuoWoff9k6M+5w2s2QXS0nLPg=
X-Received: by 2002:aa7:93bb:0:b029:307:31a3:ad3d with SMTP id
 x27-20020aa793bb0000b029030731a3ad3dmr9362561pff.65.1624608901528; Fri, 25
 Jun 2021 01:15:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAB=6tBQR1S=2niGMojS_55-JebtQX4LybA2aEh_6YNtXf_3yNA@mail.gmail.com>
 <168BBDBB51FE1C72.20368@lists.yoctoproject.org>
In-Reply-To: <168BBDBB51FE1C72.20368@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 25 Jun 2021 10:14:40 +0200
Message-ID: <CAGAf8LxCf23K+xFP4YbJbhByp_CfLxAnZD9g6GgM8c-Q0QSPSg@mail.gmail.com>
Subject: Re: [yocto] Hardknott (GCC10) Compiler Issues
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Chuck Wolber <chuckwolber@gmail.com>, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000797e4a05c592bc44"

--000000000000797e4a05c592bc44
Content-Type: text/plain; charset="UTF-8"

> I have no idea if this is possible in the current YOCTO development stage:
> GCCVERSION = "11.%"
> To do the FF to GCC 11.>


*WARNING: preferred version 11.% of gcc-runtime not available (for item
libg2c)WARNING: versions of gcc-runtime available: 10.2.0*

For hardknott. Guess, this answers my later question.

Let us see about my very first question!

BR,
Zee
_______

INCLUDED:
WARNING: preferred version 11.% of gcc-runtime not available (for item
libssp-dev)
WARNING: versions of gcc-runtime available: 10.2.0
WARNING: preferred version 11.% of gcc-runtime not available (for item
libg2c-dev)
WARNING: versions of gcc-runtime available: 10.2.0
WARNING: preferred version 11.% of gcc-runtime not available (for item
libssp)
WARNING: versions of gcc-runtime available: 10.2.0

Build Configuration:
BB_VERSION           = "1.50.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "fedora-33"
TARGET_SYS           = "arm-poky-linux-gnueabi"
MACHINE              = "beaglebone"
DISTRO               = "poky"
DISTRO_VERSION       = "3.3.1"
TUNE_FEATURES        = "arm vfp cortexa8 neon callconvention-hard"
TARGET_FPU           = "hard"
meta
meta-poky
meta-yocto-bsp       = "*hardknott:*
74dbb08c3709fec6563ee65a3661f66fdcbb3e2f"
meta-jumpnow         = "*hardknott*
:ac90f018ebb9de8d6ac12f22368e004aa7be69a2"
meta-bbb             = "hardknott:d838aa54e3ed81d08597c08e112fc8966aaa501d"
meta-oe
meta-python
meta-networking      = "hardknott:aca88908fd329f5cef6f19995b072397fb2d8ec6"
meta-qt5             =
"upstream/hardknott:a00af3eae082b772469d9dd21b2371dd4d237684"
meta-socketcan       = "master:cefd86cd1def9ad2e63be527f8ce36a076d7e17c"

NOTE: Fetching uninative binary shim
http://downloads.yoctoproject.org/releases/uninative/3.2/x86_64-nativesdk-libc.tar.xz;sha256sum=3ee8c7d55e2d4c7ae3887cddb97219f97b94efddfeee2e24923c0cb0e8ce84c6
(will check PREMIRRORS first)
Initialising tasks: 100%
|###########################################################################################|
Time: 0:00:11
Sstate summary: Wanted 1709 Local 0 Network 0 Missed 1709 Current 0 (0%
match, 0% complete)
NOTE: Executing Tasks


On Fri, Jun 25, 2021 at 7:58 AM Zoran via lists.yoctoproject.org
<zoran.stojsavljevic=gmail.com@lists.yoctoproject.org> wrote:

> An interesting issue, and I think I hit it as well (my best guess).
>
> Here is my issue:
> https://github.com/mguentner/cannelloni/issues/35
>
> > During the thud-to-hardknott upgrade process, we did nightly
> > builds of the new hardknott based target image from our thud
> > based SDK VM. I assumed that since GCC10 was being built
> > as part of the build sysroot bootstrap process, we were getting
> > a clean and consistent result irrespective of the underlying
> > build server OS.
>
> Maybe you can try the following: in your local.conf to insert the
> following line:
>
> GCCVERSION = "9.%"
>
> for hardknott release.
>
> I need to try this myself, I just used gcc as is (default one which
> comes with the release, I guess 10).
>
> I have no idea if this is possible in the current YOCTO development stage:
>
> GCCVERSION = "11.%"
>
> To do the FF to GCC 11.
>
> Zee
> _______
>
> On Fri, Jun 25, 2021 at 6:48 AM Chuck Wolber <chuckwolber@gmail.com>
> wrote:
> >
> > All,
> >
> > Please accept my apologies in advance for the detailed submission. I
> think it is warranted in this
> > case.
> >
> > There is something... "odd" about the GCC 10 compiler that is delivered
> with Hardknott. I am still
> > chasing it down, so I am not yet ready to declare a root cause or submit
> a bug, but I am posting
> > what I have now in case anyone has some insights to offer.
> >
> > For all I know it is something unusual that I am doing, but we have a
> lot of history with our
> > build/dev/release methods, so I would be surprised if that was actually
> the case. I have also
> > discussed aspects of this on IRC for the last few days, so some of this
> may be familiar to some
> > of you.
> >
> > Background: We maintain a virtual machine SDK for our developers that is
> as close as possible to
> > the actual embedded hardware environment that we target. The SDK image
> is our baseline Linux
> > OS plus lots of the expected dev and debugging tools. The image deployed
> to our target devices is
> > the baseline Linux OS plus the core application suite. It is also
> important to note that we only
> > support the x86_64 machine architecture in our target devices and
> development workstations.
> >
> > We also spin up and spin down the SDK VM for our nightly builds. This
> guarantees strict consistency
> > and eliminates lots of variables when we are trying to troubleshoot
> something hairy.
> >
> > We just upgraded from Thud to Hardknott. This means we built our new
> Hardknott based SDK VM
> > image from our Thud based SDK VM (GCC 8 / glibc 2.28). When we attempted
> to build our target
> > device image in the new Hardknott based SDK VM, we consistently got a
> segfault when any build
> > task involves bison issuing a warning of some sort. I traced this down
> for a very long time and it
> > seemed to have something to do with the libtextstyle library from
> gettext and the way bison used it.
> > But I now believe that this to be a red herring. Bison seems to be very
> fragile, but in this case,
> > that may have actually been a good thing.
> >
> > After some experimentation I found that the issue went away when I
> dropped down to the 3.6.4
> > recipe of bison found at OE-Core:bc95820cd. But this did not sit right
> with me. There is no way I
> > should be the only person seeing this issue.
> >
> > Then I tried an experiment... I assumed I was encountering a compiler
> bootstrap issue with such a
> > big jump (GCC8 -> GCC10), so I rebuilt our hardknott based SDK VM with
> the 3.3.1 version of
> > buildtools-extended. The build worked flawlessly, but when I booted into
> the new SDK VM and
> > kicked off the build I got the same result (bison segfault when any
> build warnings are encountered).
> >
> > This is when I started to mentally put a few more details together with
> other post-upgrade issues that
> > had been discovered in our lab. We attributed them to garden variety API
> and behavioral changes
> > expected during a Yocto upgrade, but now I am not so sure.
> >
> > During the thud-to-hardknott upgrade process, we did nightly builds of
> the new hardknott based
> > target image from our thud based SDK VM. I assumed that since GCC10 was
> being built as part of
> > the build sysroot bootstrap process, we were getting a clean and
> consistent result irrespective of the
> > underlying build server OS.
> >
> > One of the issues we were seeing in the lab was a periodic hang during
> the initramfs phase of the
> > boot process. We run a couple of setup scripts to manage the sysroot
> before the switch_root, so it
> > is not unusual to see some "growing pains" after an upgrade. The hangs
> were random with no
> > obvious cause, but systemd is very weird anyway so we attributed it to a
> new dependency or race
> > condition that we had to address after going from systemd 239 to 247.
> >
> > It is also worth noting that systemd itself was not hung, it responded
> to the 'ole "three finger salute"
> > and dutifully filled the screen with shutdown messages. It was just that
> the boot process randomly
> > stopped cold in initramfs before the switch root. We would also
> occasionally see systemd
> > complaining in the logs, "Starting requested but asserts failed".
> >
> > Historically, when asserts fail, it is a sign of a much larger problem,
> so I did another experiment...
> >
> > Since we could build our SDK VM successfully with buildtools-extended,
> why not build the target
> > images? So I did. After a day of testing in the lab, none of the testers
> have seen the boot hang up in
> > the initramfs stage, whereas before it was happening about 50% of the
> time. I need a good week of
> > successful test activity before I am willing to declare success, but the
> results were convincing
> > enough to make it worth this summary post.
> >
> > I did an extensive amount of trial and error testing, including
> meticulously comparing
> > buildtools-extended with our own versions of the same files. The only
> intersection point was gcc.
> >
> > The gcc delivered with buildtools-extended works great. When I build
> hardknott's gcc10 from the
> > gcc in buildtools-extended, we are not able to build our target images
> with the resulting compiler.
> > When I build our target images from the old thud environment, we get a
> mysterious hang and
> > systemd asserts triggering during boot. Since GCC10 is an intermediate
> piece of the build, it is
> > also implicated despite the native environment running GCC8.
> >
> > I will continue to troubleshoot this but I was hoping for some insight
> (or gentle guidance if I am
> > making a silly mistake). Overall, I am at a loss to think of a reason
> why I should not be able to build
> > a compiler from the buildtools-extended compiler and then use it to
> reliably build our target images.
> >
> > Thank you,
> >
> > ..Ch:W..
> >
> >
> > P.S. For those who are curious, we started out on Pyro hosted on Ubuntu
> 16.04. From there we made
> > the jump to self hosting when we used that environment to build a thud
> based VM SDK. After years of
> > successful build, we are now in the process of upgrading to Hardknott.
> >
> > P.P.S. For the sake of completeness, I had to add the following files to
> the buildtools-extended
> > sysroot to fully complete the build of our images:
> >
> > /usr/include/magic.h -> util-linux "more" command requires this.
> > /usr/include/zstd.h -> I do not recall which recipe required this.
> > /usr/bin/free -> The OpenJDK 8 build scripts need this.
> > /usr/include/sys/* -> openjdk-8-native
> > /lib/libcap.so.2 -> The binutils "dir" command quietly breaks the build
> without this. I am not a fan of the
> >                             lack of error checking in the binutils
> build...
> > /usr/include/sensors/error.h and sensors.h -> mesa-native
> > /usr/include/zstd_errors.h -> qemu-system-native
> >
> > --
> > "Perfection must be reached by degrees; she requires the slow hand of
> time." - Voltaire
> >
> >
> >
>
> 
>
>

--000000000000797e4a05c592bc44
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; I have no idea if this is possible in the current YOC=
TO development stage:<br>&gt; GCCVERSION =3D &quot;11.%&quot;<br>&gt; To do=
 the FF to GCC 11.&gt; <br><br><span style=3D"color:rgb(255,0,0)"><i><b>WAR=
NING: preferred version 11.% of gcc-runtime not available (for item libg2c)=
<br>WARNING: versions of gcc-runtime available: 10.2.0</b></i></span><br><d=
iv><br></div><div>For hardknott. Guess, this answers my later question. <br=
></div><div><br></div><div>Let us see about my very first question!</div><d=
iv><br></div><div>BR,</div><div>Zee</div><div>_______<br></div><div><br></d=
iv><div>INCLUDED:<br></div><div>WARNING: preferred version 11.% of gcc-runt=
ime not available (for item libssp-dev)</div>WARNING: versions of gcc-runti=
me available: 10.2.0<br>WARNING: preferred version 11.% of gcc-runtime not =
available (for item libg2c-dev)<br>WARNING: versions of gcc-runtime availab=
le: 10.2.0<br>WARNING: preferred version 11.% of gcc-runtime not available =
(for item libssp)<br>WARNING: versions of gcc-runtime available: 10.2.0<br>=
<br>Build Configuration:<br>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;1.50.0&quot;<br>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0=3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D=
 &quot;fedora-33&quot;<br>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D=
 &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0=3D &quot;beaglebone&quot;<br>DISTRO =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION =C2=
=
=A0 =C2=A0 =C2=A0 =3D &quot;3.3.1&quot;<br>TUNE_FEATURES =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0=3D &quot;arm vfp cortexa8 neon callconvention-hard&quot;<br>TAR=
GET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;hard&quot;<br>meta =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>meta-poky =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>meta-yocto-bsp =C2=A0 =C2=A0 =C2=A0 =
=
=3D &quot;<span style=3D"color:rgb(255,0,0)"><i><b>hardknott:</b></i></spa=
n>74dbb08c3709fec6563ee65a3661f66fdcbb3e2f&quot;<br>meta-jumpnow =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =3D &quot;<span style=3D"color:rgb(255,0,0)"><u><i><b>ha=
rdknott</b></i></u></span>:ac90f018ebb9de8d6ac12f22368e004aa7be69a2&quot;<b=
r>meta-bbb =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;hardknott:d8=
38aa54e3ed81d08597c08e112fc8966aaa501d&quot;<br>meta-oe =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>meta-python =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0<br>meta-networking =C2=A0 =C2=A0 =C2=A0=3D &quot;hardknott:aca88908=
fd329f5cef6f19995b072397fb2d8ec6&quot;<br>meta-qt5 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =3D &quot;upstream/hardknott:a00af3eae082b772469d9dd21b2=
371dd4d237684&quot;<br>meta-socketcan =C2=A0 =C2=A0 =C2=A0 =3D &quot;master=
:cefd86cd1def9ad2e63be527f8ce36a076d7e17c&quot;<br><br>NOTE: Fetching unina=
tive binary shim <a href=3D"http://downloads.yoctoproject.org/releases/unin=
ative/3.2/x86_64-nativesdk-libc.tar.xz;sha256sum=3D3ee8c7d55e2d4c7ae3887cdd=
b97219f97b94efddfeee2e24923c0cb0e8ce84c6">http://downloads.yoctoproject.org=
/releases/uninative/3.2/x86_64-nativesdk-libc.tar.xz;sha256sum=3D3ee8c7d55e=
2d4c7ae3887cddb97219f97b94efddfeee2e24923c0cb0e8ce84c6</a> (will check PREM=
IRRORS first)<br>Initialising tasks: 100% |################################=
###########################################################| Time: 0:00:11<=
br>Sstate summary: Wanted 1709 Local 0 Network 0 Missed 1709 Current 0 (0% =
match, 0% complete)<br>NOTE: Executing Tasks<br></div><br><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 25, 2021 at=
 7:58 AM Zoran via <a href=3D"http://lists.yoctoproject.org">lists.yoctopro=
ject.org</a> &lt;zoran.stojsavljevic=3D<a href=3D"mailto:gmail.com@lists.yo=
ctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">An interesting issue, and I=
 think I hit it as well (my best guess).<br>
<br>
Here is my issue:<br>
<a href=3D"https://github.com/mguentner/cannelloni/issues/35" rel=3D"noref=
errer" target=3D"_blank">https://github.com/mguentner/cannelloni/issues/35<=
/a><br>
<br>
&gt; During the thud-to-hardknott upgrade process, we did nightly<br>
&gt; builds of the new hardknott based target image from our thud<br>
&gt; based SDK VM. I assumed that since GCC10 was being built<br>
&gt; as part of the build sysroot bootstrap process, we were getting<br>
&gt; a clean and consistent result irrespective of the underlying<br>
&gt; build server OS.<br>
<br>
Maybe you can try the following: in your local.conf to insert the<br>
following line:<br>
<br>
GCCVERSION =3D &quot;9.%&quot;<br>
<br>
for hardknott release.<br>
<br>
I need to try this myself, I just used gcc as is (default one which<br>
comes with the release, I guess 10).<br>
<br>
I have no idea if this is possible in the current YOCTO development stage:=
<br>
<br>
GCCVERSION =3D &quot;11.%&quot;<br>
<br>
To do the FF to GCC 11.<br>
<br>
Zee<br>
_______<br>
<br>
On Fri, Jun 25, 2021 at 6:48 AM Chuck Wolber &lt;<a href=3D"mailto:chuckwo=
lber@gmail.com" target=3D"_blank">chuckwolber@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; All,<br>
&gt;<br>
&gt; Please accept my apologies in advance for the detailed submission. I =
think it is warranted in this<br>
&gt; case.<br>
&gt;<br>
&gt; There is something... &quot;odd&quot; about the GCC 10 compiler that =
is delivered with Hardknott. I am still<br>
&gt; chasing it down, so I am not yet ready to declare a root cause or sub=
mit a bug, but I am posting<br>
&gt; what I have now in case anyone has some insights to offer.<br>
&gt;<br>
&gt; For all I know it is something unusual that I am doing, but we have a=
 lot of history with our<br>
&gt; build/dev/release methods, so I would be surprised if that was actual=
ly the case. I have also<br>
&gt; discussed aspects of this on IRC for the last few days, so some of th=
is may be familiar to some<br>
&gt; of you.<br>
&gt;<br>
&gt; Background: We maintain a virtual machine SDK for our developers that=
 is as close as possible to<br>
&gt; the actual embedded hardware environment that we target. The SDK imag=
e is our baseline Linux<br>
&gt; OS plus lots of the expected dev and debugging tools. The image deplo=
yed to our target devices is<br>
&gt; the baseline Linux OS plus the core application suite. It is also imp=
ortant to note that we only<br>
&gt; support the x86_64 machine architecture in our target devices and dev=
elopment workstations.<br>
&gt;<br>
&gt; We also spin up and spin down the SDK VM for our nightly builds. This=
 guarantees strict consistency<br>
&gt; and eliminates lots of variables when we are trying to troubleshoot s=
omething hairy.<br>
&gt;<br>
&gt; We just upgraded from Thud to Hardknott. This means we built our new =
Hardknott based SDK VM<br>
&gt; image from our Thud based SDK VM (GCC 8 / glibc 2.28). When we attemp=
ted to build our target<br>
&gt; device image in the new Hardknott based SDK VM, we consistently got a=
 segfault when any build<br>
&gt; task involves bison issuing a warning of some sort. I traced this dow=
n for a very long time and it<br>
&gt; seemed to have something to do with the libtextstyle library from get=
text and the way bison used it.<br>
&gt; But I now believe that this to be a red herring. Bison seems to be ve=
ry fragile, but in this case,<br>
&gt; that may have actually been a good thing.<br>
&gt;<br>
&gt; After some experimentation I found that the issue went away when I dr=
opped down to the 3.6.4<br>
&gt; recipe of bison found at OE-Core:bc95820cd. But this did not sit righ=
t with me. There is no way I<br>
&gt; should be the only person seeing this issue.<br>
&gt;<br>
&gt; Then I tried an experiment... I assumed I was encountering a compiler=
 bootstrap issue with such a<br>
&gt; big jump (GCC8 -&gt; GCC10), so I rebuilt our hardknott based SDK VM =
with the 3.3.1 version of<br>
&gt; buildtools-extended. The build worked flawlessly, but when I booted i=
nto the new SDK VM and<br>
&gt; kicked off the build I got the same result (bison segfault when any b=
uild warnings are encountered).<br>
&gt;<br>
&gt; This is when I started to mentally put a few more details together wi=
th other post-upgrade issues that<br>
&gt; had been discovered in our lab. We attributed them to garden variety =
API and behavioral changes<br>
&gt; expected during a Yocto upgrade, but now I am not so sure.<br>
&gt;<br>
&gt; During the thud-to-hardknott upgrade process, we did nightly builds o=
f the new hardknott based<br>
&gt; target image from our thud based SDK VM. I assumed that since GCC10 w=
as being built as part of<br>
&gt; the build sysroot bootstrap process, we were getting a clean and cons=
istent result irrespective of the<br>
&gt; underlying build server OS.<br>
&gt;<br>
&gt; One of the issues we were seeing in the lab was a periodic hang durin=
g the initramfs phase of the<br>
&gt; boot process. We run a couple of setup scripts to manage the sysroot =
before the switch_root, so it<br>
&gt; is not unusual to see some &quot;growing pains&quot; after an upgrade=
. The hangs were random with no<br>
&gt; obvious cause, but systemd is very weird anyway so we attributed it t=
o a new dependency or race<br>
&gt; condition that we had to address after going from systemd 239 to 247.=
<br>
&gt;<br>
&gt; It is also worth noting that systemd itself was not hung, it responde=
d to the &#39;ole &quot;three finger salute&quot;<br>
&gt; and dutifully filled the screen with shutdown messages. It was just t=
hat the boot process randomly<br>
&gt; stopped cold in initramfs before the switch root. We would also occas=
ionally see systemd<br>
&gt; complaining in the logs, &quot;Starting requested but asserts failed&=
quot;.<br>
&gt;<br>
&gt; Historically, when asserts fail, it is a sign of a much larger proble=
m, so I did another experiment...<br>
&gt;<br>
&gt; Since we could build our SDK VM successfully with buildtools-extended=
, why not build the target<br>
&gt; images? So I did. After a day of testing in the lab, none of the test=
ers have seen the boot hang up in<br>
&gt; the initramfs stage, whereas before it was happening about 50% of the=
 time. I need a good week of<br>
&gt; successful test activity before I am willing to declare success, but =
the results were convincing<br>
&gt; enough to make it worth this summary post.<br>
&gt;<br>
&gt; I did an extensive amount of trial and error testing, including metic=
ulously comparing<br>
&gt; buildtools-extended with our own versions of the same files. The only=
 intersection point was gcc.<br>
&gt;<br>
&gt; The gcc delivered with buildtools-extended works great. When I build =
hardknott&#39;s gcc10 from the<br>
&gt; gcc in buildtools-extended, we are not able to build our target image=
s with the resulting compiler.<br>
&gt; When I build our target images from the old thud environment, we get =
a mysterious hang and<br>
&gt; systemd asserts triggering during boot. Since GCC10 is an intermediat=
e piece of the build, it is<br>
&gt; also implicated despite the native environment running GCC8.<br>
&gt;<br>
&gt; I will continue to troubleshoot this but I was hoping for some insigh=
t (or gentle guidance if I am<br>
&gt; making a silly mistake). Overall, I am at a loss to think of a reason=
 why I should not be able to build<br>
&gt; a compiler from the buildtools-extended compiler and then use it to r=
eliably build our target images.<br>
&gt;<br>
&gt; Thank you,<br>
&gt;<br>
&gt; ..Ch:W..<br>
&gt;<br>
&gt;<br>
&gt; P.S. For those who are curious, we started out on Pyro hosted on Ubun=
tu 16.04. From there we made<br>
&gt; the jump to self hosting when we used that environment to build a thu=
d based VM SDK. After years of<br>
&gt; successful build, we are now in the process of upgrading to Hardknott=
.<br>
&gt;<br>
&gt; P.P.S. For the sake of completeness, I had to add the following files=
 to the buildtools-extended<br>
&gt; sysroot to fully complete the build of our images:<br>
&gt;<br>
&gt; /usr/include/magic.h -&gt; util-linux &quot;more&quot; command requir=
es this.<br>
&gt; /usr/include/zstd.h -&gt; I do not recall which recipe required this.=
<br>
&gt; /usr/bin/free -&gt; The OpenJDK 8 build scripts need this.<br>
&gt; /usr/include/sys/* -&gt; openjdk-8-native<br>
&gt; /lib/libcap.so.2 -&gt; The binutils &quot;dir&quot; command quietly b=
reaks the build without this. I am not a fan of the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lack of error checking in the binutils b=
uild...<br>
&gt; /usr/include/sensors/error.h and sensors.h -&gt; mesa-native<br>
&gt; /usr/include/zstd_errors.h -&gt; qemu-system-native<br>
&gt;<br>
&gt; --<br>
&gt; &quot;Perfection must be reached by degrees; she requires the slow ha=
nd of time.&quot; - Voltaire<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000797e4a05c592bc44--
