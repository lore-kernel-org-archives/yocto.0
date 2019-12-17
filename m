Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web12.527.1576598416753821539
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 08:00:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Szpxt4fD;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id a203so7646975qkc.3
        for <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2019 08:00:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MbmmhUukvU3x3dmJpSB1Ve+UXFHwSYikDfSd0b2+9ps=;
        b=Szpxt4fDY1+y2lXUutaX+b4QuoqtqGUs/XdON9nCMxkxf+KdXkdOmprwDItnDgd+3B
         KN5utVKKtwECeCy+k2udjOK9ALVEAO7pO9vUTMMeEhpv/skCmkzwIvcMcGVeWFj8qTfI
         krnDhh6DloyfEaDO8dh9CcpzpLgJidcsuiGJuykSKJdtb/ZkBwa1Fk4p3hTHqY98kmGA
         clPX0P3BuVTc/kVqe6ixF6YNcQWTe4/P1nMIAytwDJ4Gg8KqPQEjeBkEz5nQNKbf0Cfi
         ZN2QyHXJvDsHfL7PXcXdZK/zRt9SynVkqMhHxd3JqcvDl9mC9FaabVrogVDrbgpsgXo8
         qRKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MbmmhUukvU3x3dmJpSB1Ve+UXFHwSYikDfSd0b2+9ps=;
        b=aY0VRxvWrfbLKq15KYu2hrrrRhd3kmRv0OA9SxBwLMt63wKGewLlZ7jWZOAoTNcllT
         TrEfSSwcALJO+fsOPWxPr3WwBPFjGfFOSDWjUxL1lSMN21nO2AKAryr2G5SjMjRwj2Le
         wJ5rxnuhrtgMgfErsdyJvuuxhqBHghvmX6QnY9+J3bQb+xlyn3AFziJj1BJYJjxVuFbU
         Vkr9Hw14SbZ3yXxI74Bl/8THlG0MKEZ3ZWHRuQmHSiy+oiXrZNg5WRpxP2Q3ewFp3Evx
         yYAL5mZQOQuI/Mv0nmyWcqXd/PLPviFCYnrSe/ttbIyQ/0iTUHmA1z+I7RXw7pVINuVb
         kZ/w==
X-Gm-Message-State: APjAAAVe25RddE6x5muqgNTjxgC6pp4LHie3NF63su0H+HsSCiK3ae4u
	xRgtjsd/KtOqFScLsw/n+2QrSHKm76Hb8yRV5GkMeykj
X-Google-Smtp-Source: APXvYqyi9z80/Lz+kY048bUZNn68uxv00guh5t9TCXlZcYnDNZwELCUGd4EQcAKU7yPDMHiJeYwiTsd3ZjXU2x2RTxA=
X-Received: by 2002:a37:a3c7:: with SMTP id m190mr5757242qke.212.1576598415419;
 Tue, 17 Dec 2019 08:00:15 -0800 (PST)
MIME-Version: 1.0
References: <W5UD.1576533409237003637.6umO@lists.yoctoproject.org>
 <CAMKF1sqYnuJ_QY6uyw1jTrVwni=oeOECrtx7LJVvVFnEq3xsFA@mail.gmail.com> <9676c51d-3efa-f465-8505-9bf1280b8829@denx.de>
In-Reply-To: <9676c51d-3efa-f465-8505-9bf1280b8829@denx.de>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 17 Dec 2019 08:00:04 -0800
Message-ID: <CAMKF1sqUBTL-4WoiPaFNvMrytiGdrMuD=4CTpXTHJbfgkMY24Q@mail.gmail.com>
Subject: Re: [yocto] #raspberrypi
To: Stefano Babic <sbabic@denx.de>
Cc: wojciech.st@tutanota.com, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000812db50599e86c6a"

--000000000000812db50599e86c6a
Content-Type: text/plain; charset="UTF-8"

On Tue, Dec 17, 2019 at 1:15 AM Stefano Babic <sbabic@denx.de> wrote:

> Hi Khem, Wojciech,
>
> On 17/12/19 05:48, Khem Raj wrote:
> > On Mon, Dec 16, 2019 at 1:56 PM <wojciech.st@tutanota.com> wrote:
> >>
> >> Problem with rootfs boot on my raspberrypi.
> >>
> >> Hi
> >> I am building simple image for my raspbery pi 3 A+ and connect to the
> pi via USB-UART converter and see the following in the console
> >> ...
> >> [ 2.071459] Run /bin/init as init process
> >> [ 2.076507] Run /bin/sh as init process
> >> sh: cannot set terminal process group (-1): Inappropriate ioctl for
> device
> >> sh: no job control in this shell
> >> sh-4.4#
> >>
> >>
> >>
> >> I build with the "bitbake core-image-base" and tried to run it on rpi
> 3A+, 3B, 3B+ and the problem is always the same it cannot switch to the
> rootfs on the sd card it seem like it stack at initramfs or some middle
> ground.
> >>
> >> I burn the *.rpi-sdimg image to SD card with dd from my Ubuntu16.04
> host machine.
> >> I tried with two branches thud and warrior and the problem is exactly
> the same.
> >> The strange thing is that in this initramfs there are no tools like
> find grep modprobe etc. but I see my extra tools "i2c-tools vim"
> >>
> >> Here is my local.conf adjustments:
> >> MACHINE ?= "raspberrypi3"
> >> ENABLE_I2C = "1"
> >> ENABLE_UART = "1"
> >> IMAGE_INSTALL += "i2c-tools vim"
> >
> > Can you turn this into
> > IMAGE_INSTALL_append = " i2c-tools vim"
> >
> >>
> >> and the bblayer.conf
> >> BBLAYERS ?= " \
> >>   /media/dave/Develop/yoctopi/warrior/sources/poky/meta \
> >>   /media/dave/Develop/yoctopi/warrior/sources/poky/meta-poky \
> >>   /media/dave/Develop/yoctopi/warrior/sources/poky/meta-yocto-bsp \
> >>   /media/dave/Develop/yoctopi/warrior/sources/meta-openembedded/meta-oe
> \
> >>   /media/dave/Develop/yoctopi/warrior/sources/meta-raspberrypi \
> >>   "
> >>
> >> I tried also to build with the deprecated image "bitbake
> rpi-basic-image" but then I did not get my extra tools "i2c-tools vim".
> >>
> >> Anyone have any idea what can be wrong with my approach ?
> >>
>
> Strange enough, I had the same behaviour a couple of days ago but I
> thought it was something on my setup. I built core-iage-full-cmdline on
> TOT, and systemd as init manager. The issue was due because adding
> "userland", bash was added due RDEPENDS to the image and busybox with
> all related tools was dropped. After removing bash from image, it works
> again - but I have not git-bisect to check which is the cause.


This would be a serious problem can you dive into it and see if we missed
some Symlink

>
>
> Regards,
> Stefano
>
> >> Regards,
> >>
> >> Wojciech
> >>
> >>
> >> -=-=-=-=-=-=-=-=-=-=-=-
> >> Links: You receive all messages sent to this group.
> >>
> >> View/Reply Online (#47702):
> https://lists.yoctoproject.org/g/yocto/message/47702
> >> Mute This Topic: https://lists.yoctoproject.org/mt/68744766/1997914
> >> Mute #raspberrypi:
> https://lists.yoctoproject.org/mk?hashtag=raspberrypi&subid=6692173
> >> Group Owner: yocto+owner@lists.yoctoproject.org
> >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
> raj.khem@gmail.com]
> >> -=-=-=-=-=-=-=-=-=-=-=-
> >>
> >> -=-=-=-=-=-=-=-=-=-=-=-
> >> Links: You receive all messages sent to this group.
> >>
> >> View/Reply Online (#47712):
> https://lists.yoctoproject.org/g/yocto/message/47712
> >> Mute This Topic: https://lists.yoctoproject.org/mt/68752649/3618551
> >> Mute #raspberrypi:
> https://lists.yoctoproject.org/mk?hashtag=raspberrypi&subid=6692235
> >> Group Owner: yocto+owner@lists.yoctoproject.org
> >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
> sbabic@denx.de]
> >> -=-=-=-=-=-=-=-=-=-=-=-
>
>
> --
> =====================================================================
> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
> =====================================================================
>

--000000000000812db50599e86c6a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Dec 17, 2019 at 1:15 AM Stefano Babic &lt;<a href=
=3D"mailto:sbabic@denx.de">sbabic@denx.de</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">Hi Khem, Wojciech,<br>
<br>
On 17/12/19 05:48, Khem Raj wrote:<br>
&gt; On Mon, Dec 16, 2019 at 1:56 PM &lt;<a href=3D"mailto:wojciech.st@tuta=
nota.com" target=3D"_blank">wojciech.st@tutanota.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Problem with rootfs boot on my raspberrypi.<br>
&gt;&gt;<br>
&gt;&gt; Hi<br>
&gt;&gt; I am building simple image for my raspbery pi 3 A+ and connect to =
the pi via USB-UART converter and see the following in the console<br>
&gt;&gt; ...<br>
&gt;&gt; [ 2.071459] Run /bin/init as init process<br>
&gt;&gt; [ 2.076507] Run /bin/sh as init process<br>
&gt;&gt; sh: cannot set terminal process group (-1): Inappropriate ioctl fo=
r device<br>
&gt;&gt; sh: no job control in this shell<br>
&gt;&gt; sh-4.4#<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I build with the &quot;bitbake core-image-base&quot; and tried to =
run it on rpi 3A+, 3B, 3B+ and the problem is always the same it cannot swi=
tch to the rootfs on the sd card it seem like it stack at initramfs or some=
 middle ground.<br>
&gt;&gt;<br>
&gt;&gt; I burn the *.rpi-sdimg image to SD card with dd from my Ubuntu16.0=
4 host machine.<br>
&gt;&gt; I tried with two branches thud and warrior and the problem is exac=
tly the same.<br>
&gt;&gt; The strange thing is that in this initramfs there are no tools lik=
e find grep modprobe etc. but I see my extra tools &quot;i2c-tools vim&quot=
;<br>
&gt;&gt;<br>
&gt;&gt; Here is my local.conf adjustments:<br>
&gt;&gt; MACHINE ?=3D &quot;raspberrypi3&quot;<br>
&gt;&gt; ENABLE_I2C =3D &quot;1&quot;<br>
&gt;&gt; ENABLE_UART =3D &quot;1&quot;<br>
&gt;&gt; IMAGE_INSTALL +=3D &quot;i2c-tools vim&quot;<br>
&gt; <br>
&gt; Can you turn this into<br>
&gt; IMAGE_INSTALL_append =3D &quot; i2c-tools vim&quot;<br>
&gt; <br>
&gt;&gt;<br>
&gt;&gt; and the bblayer.conf<br>
&gt;&gt; BBLAYERS ?=3D &quot; \<br>
&gt;&gt;=C2=A0 =C2=A0/media/dave/Develop/yoctopi/warrior/sources/poky/meta =
\<br>
&gt;&gt;=C2=A0 =C2=A0/media/dave/Develop/yoctopi/warrior/sources/poky/meta-=
poky \<br>
&gt;&gt;=C2=A0 =C2=A0/media/dave/Develop/yoctopi/warrior/sources/poky/meta-=
yocto-bsp \<br>
&gt;&gt;=C2=A0 =C2=A0/media/dave/Develop/yoctopi/warrior/sources/meta-opene=
mbedded/meta-oe \<br>
&gt;&gt;=C2=A0 =C2=A0/media/dave/Develop/yoctopi/warrior/sources/meta-raspb=
errypi \<br>
&gt;&gt;=C2=A0 =C2=A0&quot;<br>
&gt;&gt;<br>
&gt;&gt; I tried also to build with the deprecated image &quot;bitbake rpi-=
basic-image&quot; but then I did not get my extra tools &quot;i2c-tools vim=
&quot;.<br>
&gt;&gt;<br>
&gt;&gt; Anyone have any idea what can be wrong with my approach ?<br>
&gt;&gt;<br>
<br>
Strange enough, I had the same behaviour a couple of days ago but I<br>
thought it was something on my setup. I built core-iage-full-cmdline on<br>
TOT, and systemd as init manager. The issue was due because adding<br>
&quot;userland&quot;, bash was added due RDEPENDS to the image and busybox =
with<br>
all related tools was dropped. After removing bash from image, it works<br>
again - but I have not git-bisect to check which is the cause.</blockquote>=
<div dir=3D"auto"><br></div><div dir=3D"auto">This would be a serious probl=
em can you dive into it and see if we missed some Symlink=C2=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><br>
<br>
Regards,<br>
Stefano<br>
<br>
&gt;&gt; Regards,<br>
&gt;&gt;<br>
&gt;&gt; Wojciech<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; Links: You receive all messages sent to this group.<br>
&gt;&gt;<br>
&gt;&gt; View/Reply Online (#47702): <a href=3D"https://lists.yoctoproject.=
org/g/yocto/message/47702" rel=3D"noreferrer" target=3D"_blank">https://lis=
ts.yoctoproject.org/g/yocto/message/47702</a><br>
&gt;&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/6874=
4766/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/mt/68744766/1997914</a><br>
&gt;&gt; Mute #raspberrypi: <a href=3D"https://lists.yoctoproject.org/mk?ha=
shtag=3Draspberrypi&amp;subid=3D6692173" rel=3D"noreferrer" target=3D"_blan=
k">https://lists.yoctoproject.org/mk?hashtag=3Draspberrypi&amp;subid=3D6692=
173</a><br>
&gt;&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.or=
g" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt;&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/uns=
ub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/y=
octo/unsub</a>=C2=A0 [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blan=
k">raj.khem@gmail.com</a>]<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt;<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; Links: You receive all messages sent to this group.<br>
&gt;&gt;<br>
&gt;&gt; View/Reply Online (#47712): <a href=3D"https://lists.yoctoproject.=
org/g/yocto/message/47712" rel=3D"noreferrer" target=3D"_blank">https://lis=
ts.yoctoproject.org/g/yocto/message/47712</a><br>
&gt;&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/6875=
2649/3618551" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/mt/68752649/3618551</a><br>
&gt;&gt; Mute #raspberrypi: <a href=3D"https://lists.yoctoproject.org/mk?ha=
shtag=3Draspberrypi&amp;subid=3D6692235" rel=3D"noreferrer" target=3D"_blan=
k">https://lists.yoctoproject.org/mk?hashtag=3Draspberrypi&amp;subid=3D6692=
235</a><br>
&gt;&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.or=
g" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt;&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/uns=
ub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/y=
octo/unsub</a>=C2=A0 [<a href=3D"mailto:sbabic@denx.de" target=3D"_blank">s=
babic@denx.de</a>]<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
<br>
-- <br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
DENX Software Engineering GmbH,=C2=A0 =C2=A0 =C2=A0 Managing Director: Wolf=
gang Denk<br>
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany<br>
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: <a href=3D"mailto:sb=
abic@denx.de" target=3D"_blank">sbabic@denx.de</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</blockquote></div></div>

--000000000000812db50599e86c6a--
