Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC0FAE0090A; Mon, 14 Dec 2015 23:45:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69A3AE006F3
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 23:45:07 -0800 (PST)
Received: by mail-lf0-f44.google.com with SMTP id p203so471719lfa.0
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 23:45:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-type;
	bh=/xS33/21x7eZ3Bp2P5PLAaxkI7yZUGkd/eIZvvtusAw=;
	b=QyGQkyLg1OUJ5CV/BCmc1DDxRLaKpZ771m31lc6WoKrQtCcJR3SBi0rKnu9GWhyVZG
	732BaHL9+iiCGN0p9+NoPUSMux6d2yNZ+wF7LOSPXgd2LnnENG8RTUV8fnJX8Lh5PkUW
	xTP7YHuvqdmB1mhPOC/TYtJsthgZK2JOt5i7lzH1AZ/UAfCva5VlkcCqlt5ph2sSuD0h
	/KHae4XsxSF/lA/7n0Wf1EYcZ/nXkN68/Asg6Yo16IVUGQJZ8xk96GzhCHqy48Oz4QfR
	aYcU6Jld4VbaUGPLRfSdcFUN8JSabmLpkEgS+WG+Nvy/1a8PbvGAcBHAEspERK7qC9hI
	Jl/g==
X-Received: by 10.25.23.15 with SMTP id n15mr2420899lfi.44.1450165506972; Mon,
	14 Dec 2015 23:45:06 -0800 (PST)
MIME-Version: 1.0
References: <CAP2S6e4+LrBUaDD=d4cwYeq_YfeES_uKKJVd+TMGSn5qa4CnXA@mail.gmail.com>
	<E0224ACE-0C79-482C-9A0B-8B527C470F6D@gmail.com>
In-Reply-To: <E0224ACE-0C79-482C-9A0B-8B527C470F6D@gmail.com>
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Tue, 15 Dec 2015 07:44:57 +0000
Message-ID: <CAP2S6e6ioMCH2q3=WX5Y5xLqghXC6B6bHLHOJQCg7F8my0-euw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-qt5] meta-toolchain-qt5 internal compiler error
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
X-List-Received-Date: Tue, 15 Dec 2015 07:45:11 -0000
Content-Type: multipart/alternative; boundary=001a11406cdce8a0e20526eaf76d

--001a11406cdce8a0e20526eaf76d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

no problem. Though it is not really an issue that needs immediate help :


Build Configuration: BB_VERSION =3D "1.26.0"
BUILD_SYS =3D "x86_64-linux"
NATIVELSBSTRING =3D "Ubuntu-14.04"
TARGET_SYS =3D "arm-sonometre-linux-gnueabi"
 MACHINE =3D "raspberrypi2"
DISTRO =3D "sonometre"
DISTRO_VERSION =3D "1.8.1"
TUNE_FEATURES =3D "arm armv7a vfp thumb neon callconvention-hard vfpv4
cortexa7"
TARGET_FPU =3D "vfp-vfpv4-neon"
meta meta-yocto meta-yocto-bsp =3D
"fido:aff2257e0b1153814aefc96737e00bdb4cf634e0"
meta-raspberrypi =3D "master:f2cff839f52a6e6211337fc45c7c3eabf0fac113"
meta-sonometre =3D "master:5a336d675553acdc11adc2e1b746bbe43cb5e30c"
meta-qt5 =3D "fido:90919b9d86988e7da01fa2c0a07246b5b5600a5d"
meta-cirruslogic =3D "master:24f3d0082b7caa0aa21711bef42b845df946178b"
meta-oe
meta-networking
meta-multimedia
meta-ruby =3D "fido:df2f700d66bace65f5d802225232d01cf511fe81"

the distro is just a copy of poky with the following additions :

DISTRO_FEATURES_append =3D " opengl"
DISTRO_FEATURES_append =3D " systemd"
VIRTUAL-RUNTIME_init_manager =3D "systemd"

and the image :

include recipes-core/images/rpi-hwup-image.bb
IMAGE_FEATURES +=3D "ssh-server-openssh "
IMAGE_INSTALL_append =3D " gdbserver"
IMAGE_INSTALL_append =3D " connman"
IMAGE_INSTALL_append =3D " connman-client"
IMAGE_INSTALL_append =3D " openssh-sftp-server"
IMAGE_INSTALL_append =3D " netcat"
IMAGE_INSTALL_append =3D " ncurses-libncurses"
IMAGE_INSTALL_append =3D " libasound"
IMAGE_INSTALL_append =3D " libicui18n"
IMAGE_INSTALL_append =3D " logrotate"
IMAGE_INSTALL_append =3D " ntp"
IMAGE_INSTALL_append =3D " libusb1"
IMAGE_INSTALL_append =3D " usbutils"
IMAGE_INSTALL_append =3D " udev"
IMAGE_INSTALL_append =3D " usb-modeswitch-data"
IMAGE_INSTALL_append =3D " usbpath"
IMAGE_INSTALL_append =3D " file"
IMAGE_INSTALL_append =3D " pure-ftpd"
IMAGE_INSTALL_append =3D " ppp"
IMAGE_INSTALL_append =3D " qtbase"
IMAGE_INSTALL_append =3D " qtbase-tools"
IMAGE_INSTALL_append =3D " alsa-state"
IMAGE_INSTALL_append =3D " alsa-utils"
IMAGE_INSTALL_append =3D " util-linux"

regards

Le mar. 15 d=C3=A9c. 2015 =C3=A0 01:35, Khem Raj <raj.khem@gmail.com> a =C3=
=A9crit :

>
> > On Dec 14, 2015, at 1:41 PM, Valentin Le bescond <
> valentin.lebescond@gmail.com> wrote:
> >
> > Have you ever had this issue ?
> >
> > I tried to 'bitbake meta-toolchain-qt5' 4 times.
> > The first time it threw me 2 "internal compiler error :segmentation
> faults" :
> > one on qt3d, and the other one on qtwebkit.
> >
>
> you need to provide more info to get folks to help you. What branch of
> meta-qt5 is in play ?
>
> > the 2nd time it built the qt3d ok but threw the qtwebkit error.
> > it threw the same error the third time, and the fourth time ...
> > "all task succeeded"...
> >
> > I didn't modify anything between those bitbake commands... run ran them
> again...
> >
> > Is there any reason why it would fail multiple times before succeeding =
?
> >
> > If you want to know it's a custom distro based on poky 1.8.1 and a
> custom image based on "rpi-hwup-image" for raspberrypi2.
> >
>
> what customizations are done ?
>
> > Cheers !
> >
> > --
> > Valentin LE BESCOND
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
> --
Valentin LE BESCOND

--001a11406cdce8a0e20526eaf76d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi,<br><br></div>no problem. Thou=
gh it is not really an issue that needs immediate help :<br><br><br></div>B=
uild Configuration:
BB_VERSION        =3D &quot;1.26.0&quot;
<br>BUILD_SYS         =3D &quot;x86_64-linux&quot;
<br>NATIVELSBSTRING   =3D &quot;Ubuntu-14.04&quot;
<br>TARGET_SYS        =3D &quot;arm-sonometre-linux-gnueabi&quot;<br>=C2=A0=
MACHINE           =3D &quot;raspberrypi2&quot;
<br>DISTRO            =3D &quot;sonometre&quot;
<br>DISTRO_VERSION    =3D &quot;1.8.1&quot;
<br>TUNE_FEATURES     =3D &quot;arm armv7a vfp thumb neon callconvention-ha=
rd vfpv4 cortexa7&quot;
<br>TARGET_FPU        =3D &quot;vfp-vfpv4-neon&quot;
<br>meta             =20
meta-yocto       =20
meta-yocto-bsp    =3D &quot;fido:aff2257e0b1153814aefc96737e00bdb4cf634e0&q=
uot;
<br>meta-raspberrypi  =3D &quot;master:f2cff839f52a6e6211337fc45c7c3eabf0fa=
c113&quot;
<br>meta-sonometre    =3D &quot;master:5a336d675553acdc11adc2e1b746bbe43cb5=
e30c&quot;
<br>meta-qt5          =3D &quot;fido:90919b9d86988e7da01fa2c0a07246b5b5600a=
5d&quot;
<br>meta-cirruslogic  =3D &quot;master:24f3d0082b7caa0aa21711bef42b845df946=
178b&quot;
<br>meta-oe          =20
<br>meta-networking  =20
<br>meta-multimedia  =20
<br>meta-ruby         =3D &quot;fido:df2f700d66bace65f5d802225232d01cf511fe=
81&quot;
<br><br></div>the distro is just a copy of poky with the following addition=
s :<br><br>
DISTRO_FEATURES_append =3D &quot; opengl&quot;
<br>DISTRO_FEATURES_append =3D &quot; systemd&quot;
<br>VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;
<br><br></div>and the image :<br><br>include recipes-core/images/<a href=3D=
"http://rpi-hwup-image.bb">rpi-hwup-image.bb</a>

<br>IMAGE_FEATURES +=3D &quot;ssh-server-openssh &quot;

<br>IMAGE_INSTALL_append =3D &quot; gdbserver&quot;
<br>IMAGE_INSTALL_append =3D &quot; connman&quot;
<br>IMAGE_INSTALL_append =3D &quot; connman-client&quot;
<br>IMAGE_INSTALL_append =3D &quot; openssh-sftp-server&quot;<br>IMAGE_INST=
ALL_append =3D &quot; netcat&quot;
<br>IMAGE_INSTALL_append =3D &quot; ncurses-libncurses&quot;
<br>IMAGE_INSTALL_append =3D &quot; libasound&quot;
<br>IMAGE_INSTALL_append =3D &quot; libicui18n&quot;
<br>IMAGE_INSTALL_append =3D &quot; logrotate&quot;
<br>IMAGE_INSTALL_append =3D &quot; ntp&quot;
<br>IMAGE_INSTALL_append =3D &quot; libusb1&quot;
<br>IMAGE_INSTALL_append =3D &quot; usbutils&quot;
<br>IMAGE_INSTALL_append =3D &quot; udev&quot;
<br>IMAGE_INSTALL_append =3D &quot; usb-modeswitch-data&quot;
<br>IMAGE_INSTALL_append =3D &quot; usbpath&quot;
<br>IMAGE_INSTALL_append =3D &quot; file&quot;
<br>IMAGE_INSTALL_append =3D &quot; pure-ftpd&quot;
<br>IMAGE_INSTALL_append =3D &quot; ppp&quot;
<br>IMAGE_INSTALL_append =3D &quot; qtbase&quot;
<br>IMAGE_INSTALL_append =3D &quot; qtbase-tools&quot;
<br>IMAGE_INSTALL_append =3D &quot; alsa-state&quot;
<br>IMAGE_INSTALL_append =3D &quot; alsa-utils&quot;
<br>IMAGE_INSTALL_append =3D &quot; util-linux&quot;
<br><br></div>regards<br></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr">Le=C2=A0mar. 15 d=C3=A9c. 2015 =C3=A0=C2=A001:35, Khem Raj &lt;<a href=
=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; a =C3=A9crit=C2=
=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><br>
&gt; On Dec 14, 2015, at 1:41 PM, Valentin Le bescond &lt;<a href=3D"mailto=
:valentin.lebescond@gmail.com" target=3D"_blank">valentin.lebescond@gmail.c=
om</a>&gt; wrote:<br>
&gt;<br>
&gt; Have you ever had this issue ?<br>
&gt;<br>
&gt; I tried to &#39;bitbake meta-toolchain-qt5&#39; 4 times.<br>
&gt; The first time it threw me 2 &quot;internal compiler error :segmentati=
on faults&quot; :<br>
&gt; one on qt3d, and the other one on qtwebkit.<br>
&gt;<br>
<br>
you need to provide more info to get folks to help you. What branch of meta=
-qt5 is in play ?<br>
<br>
&gt; the 2nd time it built the qt3d ok but threw the qtwebkit error.<br>
&gt; it threw the same error the third time, and the fourth time ...<br>
&gt; &quot;all task succeeded&quot;...<br>
&gt;<br>
&gt; I didn&#39;t modify anything between those bitbake commands... run ran=
 them again...<br>
&gt;<br>
&gt; Is there any reason why it would fail multiple times before succeeding=
 ?<br>
&gt;<br>
&gt; If you want to know it&#39;s a custom distro based on poky 1.8.1 and a=
 custom image based on &quot;rpi-hwup-image&quot; for raspberrypi2.<br>
&gt;<br>
<br>
what customizations are done ?<br>
<br>
&gt; Cheers !<br>
&gt;<br>
&gt; --<br>
&gt; Valentin LE BESCOND<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
<br>
</blockquote></div><div dir=3D"ltr">-- <br></div><div dir=3D"ltr"><div>Vale=
ntin LE BESCOND<br></div></div>

--001a11406cdce8a0e20526eaf76d--
