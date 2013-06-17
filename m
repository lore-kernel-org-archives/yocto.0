Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f180.google.com (mail-ea0-f180.google.com
	[209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 900B7E01547
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2013 05:29:45 -0700 (PDT)
Received: by mail-ea0-f180.google.com with SMTP id k10so1789728eaj.39
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2013 05:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=/KdTzbD8qcTrs41M+G+YaQrqstuNfm0ogb/V0K+tPdI=;
	b=v/dO+aWH9MaVx+7Lq3GyMdJ9X6rNPiCGP7hrRjcg0KOfh8k3kdeisrY/E3hLEdh84Z
	m4HLArdMKy1Uaj/JDvObveEgcUXd88qBR8goefX8QLTYmYtr2sxI0pEEXb0cWvnGprrF
	Q088VE6GMUZhUsC5ZeWOzR2mh+RWAlKzR23xwzA6I/sWnNaTH+YOpvniK9K9F2z87avV
	nyOXOIHdJ+4DpmXG1DoQM1PcAMyMivPk4bmJTTf/PHBXlTrnLaXB98mftOqrTt21bvlc
	HSbYnbaMj06vZJ3YltgKp46q5efnlj06TBsdjD1FABngGywS/aiVBVr2dS2Ba2qJa1Pd
	aA6w==
MIME-Version: 1.0
X-Received: by 10.14.100.2 with SMTP id y2mr11725903eef.75.1371472184508; Mon,
	17 Jun 2013 05:29:44 -0700 (PDT)
Received: by 10.223.159.195 with HTTP; Mon, 17 Jun 2013 05:29:44 -0700 (PDT)
In-Reply-To: <CAMKF1sr474Z7GXRueV7S2Op=jL3ap7zmjynrifNmaXn62X7mUg@mail.gmail.com>
References: <CANwz6ny8-LnE7-weEJnp5BAyR=j4Gbs4HXb29EPM0e4uNx1X4A@mail.gmail.com>
	<CAMKF1sr474Z7GXRueV7S2Op=jL3ap7zmjynrifNmaXn62X7mUg@mail.gmail.com>
Date: Mon, 17 Jun 2013 06:29:44 -0600
Message-ID: <CANwz6nyV4RUX--k==-MuNQxzxMPqXTCoD5mH_kQpUvy+T6OqLw@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libstdc++-static impacts yocto builds fedora18
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Jun 2013 12:29:48 -0000
Content-Type: multipart/alternative; boundary=001a11c2b85060a63604df58c089

--001a11c2b85060a63604df58c089
Content-Type: text/plain; charset=ISO-8859-1

Khem,
Are you building the compiler or just the jre?  I believe you need
libstdc++-static-4.7.2-8.fc18.x86_64 for
openjdk-7-jdk-03b21+2.1.8-r5.0.armv7a_vfp_neon.rpm
core-image-sato-sdk-ex.bb
IMAGE_INSTALL += "kernel-dev boost qt-mobility-x11 gsl gnuplot gnuradio \
openjdk-7-jdk openjdk-7-jre openjdk-7-vm-jamvm openjdk-7-vm-cacao "
I also thought this would fix the gfortran problem but when I tried the
earlier chgs to gcc-configure-common.inc and gcc-configure-runtime.inc I
still get errors.
Thanks for all the help


On Sun, Jun 16, 2013 at 11:22 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Sun, Jun 2, 2013 at 2:35 PM, Edward Vidal <vidal.develone@gmail.com>
> wrote:
> > Please note that libstdc++ static is needed on your host to compile
> > icedtea6/7-native
> > (install libstdc++-static on a Fedora).
>
> is that still valid ? I dont have it installed and it builds without
> issues. may be meta-java/readme should be updated.
>

--001a11c2b85060a63604df58c089
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Khem,<br>Are you building the compiler or just t=
he jre?=A0 I believe you need libstdc++-static-4.7.2-8.fc18.x86_64 for<br>o=
penjdk-7-jdk-03b21+2.1.8-r5.0.armv7a_vfp_neon.rpm<br><a href=3D"http://core=
-image-sato-sdk-ex.bb">core-image-sato-sdk-ex.bb</a><br>
IMAGE_INSTALL +=3D &quot;kernel-dev boost qt-mobility-x11 gsl gnuplot gnura=
dio \<br>openjdk-7-jdk openjdk-7-jre openjdk-7-vm-jamvm openjdk-7-vm-cacao =
&quot;<br></div>I also thought this would fix the gfortran problem but when=
 I tried the earlier chgs to gcc-configure-common.inc and gcc-configure-run=
time.inc I still get errors.<br>
</div>Thanks for all the help<br></div><div class=3D"gmail_extra"><br><br><=
div class=3D"gmail_quote">On Sun, Jun 16, 2013 at 11:22 PM, Khem Raj <span =
dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj=
.khem@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Sun, Jun 2, 2013 at 2:3=
5 PM, Edward Vidal &lt;<a href=3D"mailto:vidal.develone@gmail.com">vidal.de=
velone@gmail.com</a>&gt; wrote:<br>

</div><div class=3D"im">&gt; Please note that libstdc++ static is needed on=
 your host to compile<br>
&gt; icedtea6/7-native<br>
&gt; (install libstdc++-static on a Fedora).<br>
<br>
</div>is that still valid ? I dont have it installed and it builds without<=
br>
issues. may be meta-java/readme should be updated.<br>
</blockquote></div><br></div>

--001a11c2b85060a63604df58c089--
