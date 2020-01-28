Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.8030.1580210382363054736
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2020 03:19:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gvNyIAkZ;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: gabbla.malist@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAB62E0158F; Tue, 28 Jan 2020 03:19:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64911E014B5
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2020 03:19:40 -0800 (PST)
Received: by mail-lj1-f175.google.com with SMTP id f25so1390003ljg.12
        for <yocto@yoctoproject.org>; Tue, 28 Jan 2020 03:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=P1wEOlLaO2aVcZ59UDhP/M22MhalsT5pBgqL1+dEttM=;
        b=gvNyIAkZn41MkwVz8iiTG3J9X3ANtNiVKj2ZT5hGLadRI/OOqtcz85kEO7QOTxgo0R
         Wei1ruBGmj11nlVga342EIWPB+IVB+zwXK6qYAmhkr/vFDcKuxiJWndrZo1e4cV0GjNr
         N1bv4hUA6zyy8+WuX8IgwukC2SkLXnMxG/p7lopAdoR3oM+Fp5qpg5jXVMYu441xvd3C
         7//uIs24Kkg+uBrldcotD9DXceZ1wyClF4QF77Z9P8ZiV/GrSoyNeVaz670S7flUBjyU
         PuEjDolRTTZW/X6yoW8FEBKP7NHREQ+ectCu4LbQbhYO+Xn/KDz5NcgD6T3bziXIWZqM
         NiPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=P1wEOlLaO2aVcZ59UDhP/M22MhalsT5pBgqL1+dEttM=;
        b=M5n7arVV4TiWzeAahIHrgSQWJxoeolrhuldVMg+0Dd8YPxXMlFcXt9JCBQ4Zt3Oh5Q
         UmVGlv/QujnGkAGDC2B4YZdM7z/86pntPghRD9/kqDDyRA5NNyBfeobPl764zmJtOzP0
         45UMWmeZux0Ljcfb2T4yLp9GYOhHvCPymJ6skaOyKo4mgvffeUFiJM8sIb8mvUjSpl7v
         wCdgvTwzFtOrgF64dzYAkxqQtXZ/SbtmR7o9vkp880bfZso/1IdnwzMqqwH+Av1LtUGt
         xN/qaRgBd7QssQKZ6AgVwWGfUvmjX23phQKk3zLKSg12HMfl0be+yqW3uSTtYfH2DwAw
         3OUQ==
X-Gm-Message-State: APjAAAXtEJI/Devinm7fKiUcCKahump9zyJEXAVHnruRYE5fTu2so9wx
	TLwKpQ4O0xBVzUDarT+YlL8VEEs9caC/3WA5u3A=
X-Google-Smtp-Source: APXvYqz6QfdkSYz1izX+OsqhIzPUDJpGZ06j54zuxIaLjmZ5i+VQpAz7J6UdNsy6BckLpDHsZA9iZ+47LeD2qsVAcdY=
X-Received: by 2002:a2e:888b:: with SMTP id k11mr1329299lji.197.1580210379391;
 Tue, 28 Jan 2020 03:19:39 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWRQmXa4_hh3KzKmqeaEkGsbdTEimsPjh=tZWribMkM0dA@mail.gmail.com>
 <CAA=hcWRwi_EsMD2OBzVWtyX_SPJf05vqc09zhQzFdguKi0k=FA@mail.gmail.com>
 <emb3e01e23-7511-48c8-9229-85a767ab359c@andys-imac.leeshillfarm.local>
 <CAA=hcWS2ncU4+RkeLydXOnGvswshK-0iDV3cRTdFgoQ4+Oe57w@mail.gmail.com>
 <20200127120638.2jpgvedxecwgwz6u@qschulz> <CAA=hcWSXrBKX=EbF5KHkWxmWQ+6Tcqvv4exxbWUOniDR6EDiRQ@mail.gmail.com>
 <CAAx3WaA2uoCki+1AV9QFZybbszfS5wecWKf1PfDvgV5u9EVL=g@mail.gmail.com> <CAA=hcWTxX5GrnEJzKCJFhbe9mFvy8A7hG+EXbmczZSafyspfpw@mail.gmail.com>
In-Reply-To: <CAA=hcWTxX5GrnEJzKCJFhbe9mFvy8A7hG+EXbmczZSafyspfpw@mail.gmail.com>
From: "Gabriele" <gabbla.malist@gmail.com>
Date: Tue, 28 Jan 2020 12:19:28 +0100
Message-ID: <CAAx3WaDrfyQH5627yAvc--YLGYZnkNr3UsouhbjKSauFLHn4TA@mail.gmail.com>
Subject: Re: [yocto] lost busybox mysteriously
To: JH <jupiter.hce@gmail.com>
Cc: Quentin Schulz <quentin.schulz@streamunlimited.com>, 
	Andy Pont <andy.pont@sdcsystems.com>, Yocto discussion list <yocto@yoctoproject.org>, 
	linux-mtd <linux-mtd@lists.infradead.org>, connman <connman@lists.01.org>
Content-Type: multipart/alternative; boundary="000000000000558810059d31664b"

--000000000000558810059d31664b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 28, 2020 at 11:40 AM JH <jupiter.hce@gmail.com> wrote:

> Hi Gabriele,
>
> On 1/28/20, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
> > HI JH,
> >
> > - Can you stop on uboot and try "nand bad"? This will list the bad blo=
cks
> > on your device.
> =3D> nand bad
>
> Device 0 bad blocks:
>
>
> > - How do you flash your ubi partition(s)?
>
> I boot zImage-initramfs kernel to Linux user space, then run:
> ubidetach -p /dev/mtd5
> ubiformat /dev/mtd5 -y
> ubiattach -m 5
> ubimkvol /dev/ubi0 -s 160MiB -N rootfs_data
> mount -t ubifs ubi0:rootfs_data /mnt
> cp -adr /yocto_rootfs/* /mnt
>
> Ok this sounds good.

> > - During boot, does ubifs layer complain about the partition is it try=
ing
> > to mount? It will in case of corrupted metadata and may result in a re=
ad
> > only mount.
>
> There is no partition involved during the boot, all partitions start
> in user space after booting.
>
>
Actually the kernel needs a series of module (both built in or loadable)
when mounting the partitions (read from fstab for example), so, in case of
ubifs:
- Mtd partitions are recognized (usually from dtb)
- The ubi layer is attached to the corresponding mtd partition (ubiattach)
- ubifs is mounted on top of ubi partition (mount)
If ubifs layer detects malformed nodes/corrupted data, it will complain.
You may want to check dmesg | grep -i ubi

> - It's pretty weird that busybox has gone and the partition is intact.
> > Didn't you messed with any script? Can you replicate on another board?
>
> I don't think it was bad block problem, because it is a new version
> hardware, which has some problem in power supply, could unstable or
> insufficient power supply cause MTD / NAND crash?
>
No bad block here, as reported by  uboot.
Sure, unstable power may result in power cuts and data loss. If power rail=
s
are unstable the nand may not work properly.
Be sure to match your silicon vendor design.

> Thank you Gabriele,
>
> Kind regards,
>
> - jh
>
> >
> > On Tue, Jan 28, 2020 at 7:25 AM JH <jupiter.hce@gmail.com> wrote:
> >
> >> On 1/27/20, Quentin Schulz <quentin.schulz@streamunlimited.com> wrote=
:
> >> > Hi JH,
> >> >
> >> > On Mon, Jan 27, 2020 at 10:13:37PM +1100, JH wrote:
> >> >> Hi Andy,
> >> >>
> >> >> Thanks for the response.
> >> >>
> >> >> On 1/27/20, Andy Pont <andy.pont@sdcsystems.com> wrote:
> >> >> > JH wrote...
> >> >> >
> >> >> >>That the same problem of missing busybox was not just occurred
> >> >> >> during
> >> >> >>the device running in the middle of operation, it was also occur=
red
> >> >> >>during booting image from NAND, I saw several times that the fir=
st
> >> >> >> and
> >> >> >>second cycles of booting image from NAND were working well, then
> >> >> >> some
> >> >> >>following booting process would be crashed by missing busybox, t=
hen
> >> >> >>could not run whole shell commands. I have been pondering if it
> >> >> >> could
> >> >> >>be caused by NAND issue or network virus / fishy? Appreciate any
> >> >> >>clues.
> >> >> > The first step is for us to understand what =E2=80=9Cmissing=E2=
=80=9D means?  Have
> >> >> > you
> >> >> > got any mechanism (U-Boot, SD card boot, etc.) that will allow y=
ou
> >> >> > to
> >> >> > mount and look at the contents of the NAND file system?
> >> >>
> >> >> Means that busybox was not there anymore, it mysteriously lost, al=
l
> >> >> shell commands would no longer available. It cannot to run mount o=
r
> >> >> any shell commands. There was two scenarios when that happened:
> >> >>
> >> >> - In the middle of running, the device all of certain could not ru=
n
> >> >> shell commands and failed mysteriously
> >> >>
> >> >> - During the u-boot booting kernel process, there were full errors=
 of
> >> >> failing shell commands. Let me make it clear,  that booting error =
did
> >> >> not occur in the first or second kernel booting after the new imag=
e
> >> >> installation, it happened in the following kernel booting, but the=
re
> >> >> was nothing to delete busybox accidentally, busybox was just
> >> >> mysteriously disappeared. Because I could not run ls, I did not kn=
ow
> >> >> if there are other things missing. If you ask how I could know the
> >> >> busybox was missing, I ran the zImage-initramfs to boot the linux =
in
> >> >> RAM, then mount the ubi0 to find  out busybox was gone.
> >> >>
> >> >>
> >> >> > If you look at the /bin directory (ls -la /bin/busy*) what do yo=
u
> >> >> > see?
> >> >> > Have the files been deleted? Truncated? Zero length?
> >> >>
> >> >> Could not run ls or any shell commands when the busybox was missin=
g.
> >> >>
> >> >
> >> > /bin/ls -la /bin/busy* ?
> >> >
> >> > Maybe something is messing with the PATH environment variable. Or
> >> > something is removing the symlinks from some binaries to busybox.
> >>
> >> No, could not run /bin/ls as it was  linked to  /bin/busybox.nosuid,
> >> the /bin/busybox.nosuid was damaged for some reason.
> >>
> >> >> > What file system are you using on the NAND flash?  How are the
> >> >> > devices
> >> >> > being reset during the various boot cycles?  If it is a hardware
> >> >> > reset
> >> >> > then some file systems are less resilient to it than others but =
I
> >> would
> >> >> > expect in that case more fundamental boot issues.
> >> >>
> >> >> UBIFS, most device reset or boot cycles were calling halt or reboo=
t,
> >> >> but it sometime it could just use power cycle.
> >> >>
> >> >
> >> > IIRC, UBIFS is safe from power cycles.
> >>
> >> Good to know. Thank you.
> >>
> >> > Quentin
> >> >
> >>=20
> >>
> >
>

--000000000000558810059d31664b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 28, 2020 at 11:40 AM JH &=
lt;<a href=3D"mailto:jupiter.hce@gmail.com">jupiter.hce@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Gabriel=
e,<br>
<br>
On 1/28/20, Gabriele Zampieri &lt;<a href=3D"mailto:gabbla.malist@gmail.co=
m" target=3D"_blank">gabbla.malist@gmail.com</a>&gt; wrote:<br>
&gt; HI JH,<br>
&gt;<br>
&gt; - Can you stop on uboot and try &quot;nand bad&quot;? This will list =
the bad blocks<br>
&gt; on your device.<br>
=3D&gt; nand bad<br>
<br>
Device 0 bad blocks:<br>
<br>
<br>
&gt; - How do you flash your ubi partition(s)?<br>
<br>
I boot zImage-initramfs kernel to Linux user space, then run:<br>
ubidetach -p /dev/mtd5<br>
ubiformat /dev/mtd5 -y<br>
ubiattach -m 5<br>
ubimkvol /dev/ubi0 -s 160MiB -N rootfs_data<br>
mount -t ubifs ubi0:rootfs_data /mnt<br>
cp -adr /yocto_rootfs/* /mnt<br>
<br></blockquote><div>Ok this sounds good. <br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
&gt; - During boot, does ubifs layer complain about the partition is it tr=
ying<br>
&gt; to mount? It will in case of corrupted metadata and may result in a r=
ead<br>
&gt; only mount.<br>
<br>
There is no partition involved during the boot, all partitions start<br>
in user space after booting.<br>
<br></blockquote><div>=C2=A0</div><div>Actually the kernel needs a series =
of module (both built in or loadable) when mounting the partitions (read fr=
om fstab for example), so, in case of ubifs:</div><div>- Mtd partitions are=
 recognized (usually from dtb)<br></div><div>- The ubi layer is attached to=
 the corresponding mtd partition (ubiattach)</div><div>- ubifs is mounted o=
n top of ubi partition (mount)</div><div>If ubifs layer detects malformed n=
odes/corrupted data, it will complain. You may want to check dmesg | grep -=
i ubi</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
&gt; - It&#39;s pretty weird that busybox has gone and the partition is in=
tact.<br>
&gt; Didn&#39;t you messed with any script? Can you replicate on another b=
oard?<br>
<br>
I don&#39;t think it was bad block problem, because it is a new version<br=
>
hardware, which has some problem in power supply, could unstable or<br>
insufficient power supply cause MTD / NAND crash?<br>
</blockquote><div>No bad block here, as reported by=C2=A0 uboot. <br></div=
><div>Sure, unstable power may result in power cuts and data loss. If power=
 rails are unstable the nand may not work properly.</div><div>Be sure to ma=
tch your silicon vendor design. <br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
Thank you Gabriele,<br>
<br>
Kind regards,<br>
<br>
- jh<br>
<br>
&gt;<br>
&gt; On Tue, Jan 28, 2020 at 7:25 AM JH &lt;<a href=3D"mailto:jupiter.hce@=
gmail.com" target=3D"_blank">jupiter.hce@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; On 1/27/20, Quentin Schulz &lt;<a href=3D"mailto:quentin.schulz@s=
treamunlimited.com" target=3D"_blank">quentin.schulz@streamunlimited.com</a=
>&gt; wrote:<br>
&gt;&gt; &gt; Hi JH,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Mon, Jan 27, 2020 at 10:13:37PM +1100, JH wrote:<br>
&gt;&gt; &gt;&gt; Hi Andy,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Thanks for the response.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On 1/27/20, Andy Pont &lt;<a href=3D"mailto:andy.pont@sd=
csystems.com" target=3D"_blank">andy.pont@sdcsystems.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt; JH wrote...<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;That the same problem of missing busybox was not=
 just occurred<br>
&gt;&gt; &gt;&gt; &gt;&gt; during<br>
&gt;&gt; &gt;&gt; &gt;&gt;the device running in the middle of operation, i=
t was also occurred<br>
&gt;&gt; &gt;&gt; &gt;&gt;during booting image from NAND, I saw several ti=
mes that the first<br>
&gt;&gt; &gt;&gt; &gt;&gt; and<br>
&gt;&gt; &gt;&gt; &gt;&gt;second cycles of booting image from NAND were wo=
rking well, then<br>
&gt;&gt; &gt;&gt; &gt;&gt; some<br>
&gt;&gt; &gt;&gt; &gt;&gt;following booting process would be crashed by mi=
ssing busybox, then<br>
&gt;&gt; &gt;&gt; &gt;&gt;could not run whole shell commands. I have been =
pondering if it<br>
&gt;&gt; &gt;&gt; &gt;&gt; could<br>
&gt;&gt; &gt;&gt; &gt;&gt;be caused by NAND issue or network virus / fishy=
? Appreciate any<br>
&gt;&gt; &gt;&gt; &gt;&gt;clues.<br>
&gt;&gt; &gt;&gt; &gt; The first step is for us to understand what =E2=80=
=9Cmissing=E2=80=9D means?=C2=A0 Have<br>
&gt;&gt; &gt;&gt; &gt; you<br>
&gt;&gt; &gt;&gt; &gt; got any mechanism (U-Boot, SD card boot, etc.) that=
 will allow you<br>
&gt;&gt; &gt;&gt; &gt; to<br>
&gt;&gt; &gt;&gt; &gt; mount and look at the contents of the NAND file sys=
tem?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Means that busybox was not there anymore, it mysteriousl=
y lost, all<br>
&gt;&gt; &gt;&gt; shell commands would no longer available. It cannot to r=
un mount or<br>
&gt;&gt; &gt;&gt; any shell commands. There was two scenarios when that ha=
ppened:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; - In the middle of running, the device all of certain co=
uld not run<br>
&gt;&gt; &gt;&gt; shell commands and failed mysteriously<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; - During the u-boot booting kernel process, there were f=
ull errors of<br>
&gt;&gt; &gt;&gt; failing shell commands. Let me make it clear,=C2=A0 that=
 booting error did<br>
&gt;&gt; &gt;&gt; not occur in the first or second kernel booting after th=
e new image<br>
&gt;&gt; &gt;&gt; installation, it happened in the following kernel bootin=
g, but there<br>
&gt;&gt; &gt;&gt; was nothing to delete busybox accidentally, busybox was =
just<br>
&gt;&gt; &gt;&gt; mysteriously disappeared. Because I could not run ls, I =
did not know<br>
&gt;&gt; &gt;&gt; if there are other things missing. If you ask how I coul=
d know the<br>
&gt;&gt; &gt;&gt; busybox was missing, I ran the zImage-initramfs to boot =
the linux in<br>
&gt;&gt; &gt;&gt; RAM, then mount the ubi0 to find=C2=A0 out busybox was g=
one.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt; If you look at the /bin directory (ls -la /bin/busy=
*) what do you<br>
&gt;&gt; &gt;&gt; &gt; see?<br>
&gt;&gt; &gt;&gt; &gt; Have the files been deleted? Truncated? Zero length=
?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Could not run ls or any shell commands when the busybox =
was missing.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; /bin/ls -la /bin/busy* ?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Maybe something is messing with the PATH environment variabl=
e. Or<br>
&gt;&gt; &gt; something is removing the symlinks from some binaries to bus=
ybox.<br>
&gt;&gt;<br>
&gt;&gt; No, could not run /bin/ls as it was=C2=A0 linked to=C2=A0 /bin/bu=
sybox.nosuid,<br>
&gt;&gt; the /bin/busybox.nosuid was damaged for some reason.<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt; What file system are you using on the NAND flash?=
=C2=A0 How are the<br>
&gt;&gt; &gt;&gt; &gt; devices<br>
&gt;&gt; &gt;&gt; &gt; being reset during the various boot cycles?=C2=A0 I=
f it is a hardware<br>
&gt;&gt; &gt;&gt; &gt; reset<br>
&gt;&gt; &gt;&gt; &gt; then some file systems are less resilient to it tha=
n others but I<br>
&gt;&gt; would<br>
&gt;&gt; &gt;&gt; &gt; expect in that case more fundamental boot issues.<b=
r>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; UBIFS, most device reset or boot cycles were calling hal=
t or reboot,<br>
&gt;&gt; &gt;&gt; but it sometime it could just use power cycle.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; IIRC, UBIFS is safe from power cycles.<br>
&gt;&gt;<br>
&gt;&gt; Good to know. Thank you.<br>
&gt;&gt;<br>
&gt;&gt; &gt; Quentin<br>
&gt;&gt; &gt;<br>
&gt;&gt; <br>
&gt;&gt;<br>
&gt;<br>
</blockquote></div></div>

--000000000000558810059d31664b--
