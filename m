Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f169.google.com (mail-ea0-f169.google.com
	[209.85.215.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E427E01440
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 08:48:23 -0700 (PDT)
Received: by mail-ea0-f169.google.com with SMTP id h15so3020604eak.14
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2013 08:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=vMaeiVS2uERiktam+Emi7tT209E1H5Ebz9MwYUVmV1k=;
	b=UvTi+5wrp+O26vyFAQV9kNUPiT/JowbXXlw5JFGAbJI8Lye+VDlJ7bquWF7ZuyGKJA
	2z8W9VAMujZ6tFWo/lqa7QfJkgjyAlB/sEdoQbF3OtnYhPY/9gI70VZ3nBIWCSGN+b5P
	z8zGY1X88CKIUgdvd7UA5CazEz5EVKLE/3CYPFd6WC+Nz+u47U4PZyIuQFfaR53vENAo
	AkCS2BUIJfnuQ1jxLiHZO9yEEyeIgdRAD7YTOy7BFWzj6jyiYX2z+p/BMYgrbybmLOF4
	2VpzYEo+Rc+E6EqaEjfpq8Y8utdmLXInZx3k9QZLdgBQOszp39rxxuy5rAf37GKcfTon
	d65Q==
MIME-Version: 1.0
X-Received: by 10.14.173.130 with SMTP id v2mr25969423eel.29.1373298502880;
	Mon, 08 Jul 2013 08:48:22 -0700 (PDT)
Received: by 10.223.74.139 with HTTP; Mon, 8 Jul 2013 08:48:22 -0700 (PDT)
In-Reply-To: <1373294550.11384.3.camel@firebird.rb.intel.com>
References: <CANwz6nxcLia6Sp1r-pOE7Qf4BCtJyXsUzXKcE=tguMtn402k3A@mail.gmail.com>
	<1373294550.11384.3.camel@firebird.rb.intel.com>
Date: Mon, 8 Jul 2013 09:48:22 -0600
Message-ID: <CANwz6nwzu9bs6tt2r_1uAhEqZMtgJD0QFRbRpp=2k5gKsfqcqg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "Stanacar, StefanX" <stefanx.stanacar@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fedora 18 x86_64 and make 3.82 & make 3.81
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
X-List-Received-Date: Mon, 08 Jul 2013 15:48:24 -0000
Content-Type: multipart/alternative; boundary=047d7b621a5e6f751404e101f9d4

--047d7b621a5e6f751404e101f9d4
Content-Type: text/plain; charset=ISO-8859-1

I updated the make on fedora 18 x86_64 to make-3.82-14.fc18.x86_64.rpm and
problem appears to be corrected.  Currently running a build using
Build Configuration:
BB_VERSION        = "1.19.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4+snapshot-20130708"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:8a186a6b3853fc1a7dcf342d421c8926c38949c9"
meta-oe           = "master:46354a697c18a64c5836159adf8dbd92e6547e85"
meta-java         = "master:59696d89fd33df6953dcb2dd54ccd3b362513f28"
meta-yocto-bsp    = "master:8a186a6b3853fc1a7dcf342d421c8926c38949c9"
This did not shown the error with make-3.82-13.fc18.x86_64.rpm
Thanks


On Mon, Jul 8, 2013 at 8:41 AM, Stanacar, StefanX <
stefanx.stanacar@intel.com> wrote:

> The original make 3.82 in Fedora 18 is known to be broken, hence the
> sanity test. Also I don't think that's a nice way of downgrading to make
> 3.81 (that's a Fedora 13 make...)
>
> Anyway, all that doesn't matter because a few days ago Fedora pushed an
> update to make which fixes the problem:
> make-3.82-14.fc18.x86_64
>
> You should just yum update and you're set.
>
> Cheers,
> Stefan
>
> On Mon, 2013-07-08 at 08:31 -0600, Edward Vidal wrote:
> > Hello,
> > Is this a bitbake or poky error?  My poky was pulled pull on
> > 07/03/13.
> >
> > Fedora 18 x86_64 which has been used to build with branch dylan for
> > the past couple of months or longer.
> > The build below used make-3.82-13.fc18.x86_64.rpm
> > MACHINE=beagleboard bitbake core-image-sato-sdk-ex
> > Build Configuration:
> > BB_VERSION        = "1.18.0"
> > BUILD_SYS         = "x86_64-linux"
> > NATIVELSBSTRING   = "Fedora-18"
> > TARGET_SYS        = "arm-poky-linux-gnueabi"
> > MACHINE           = "beagleboard"
> > DISTRO            = "poky"
> > DISTRO_VERSION    = "1.4.1"
> > TUNE_FEATURES     = "armv7a vfp neon"
> > TARGET_FPU        = "vfp-neon"
> > meta
> > meta-yocto        = "dylan:e4a0a4c5e419154a34710a1b6c28d4180c6304c3"
> > meta-oe           = "master:46354a697c18a64c5836159adf8dbd92e6547e85"
> > meta-java         =
> > "(nobranch):59696d89fd33df6953dcb2dd54ccd3b362513f28"
> > meta-yocto-bsp    = "dylan:e4a0a4c5e419154a34710a1b6c28d4180c6304c3"
> >
> > MACHINE=beagleboard bitbake core-image-sato-sdk-ex
> > ERROR:  OE-core's config sanity checker detected a potential
> > misconfiguration.
> >     Either fix the cause of this error or at your own risk disable the
> > checker (see sanity.conf).
> >     Following is the list of potential problems / advisories:
> >
> >     Your version of make 3.82 is broken. Please revert to 3.81 or
> > install a patched version.
> > make-3.81-19.fc13.x86_64.rpm was installed with rpm -Uh --force
> > make-3.81-19.fc13.x86_64.rpm
> > MACHINE=beagleboard bitbake core-image-sato-sdk-ex is currently
> > working.
> >
> > Build Configuration:
> > BB_VERSION        = "1.19.1"
> > BUILD_SYS         = "x86_64-linux"
> > NATIVELSBSTRING   = "Fedora-18"
> > TARGET_SYS        = "arm-poky-linux-gnueabi"
> > MACHINE           = "beagleboard"
> > DISTRO            = "poky"
> > DISTRO_VERSION    = "1.4+snapshot-20130708"
> > TUNE_FEATURES     = "armv7a vfp neon"
> > TARGET_FPU        = "vfp-neon"
> > meta
> > meta-yocto        = "master:8a186a6b3853fc1a7dcf342d421c8926c38949c9"
> > meta-oe           = "master:46354a697c18a64c5836159adf8dbd92e6547e85"
> > meta-java         = "master:59696d89fd33df6953dcb2dd54ccd3b362513f28"
> > meta-yocto-bsp    = "master:8a186a6b3853fc1a7dcf342d421c8926c38949c9"
> > Any and all help will be appricated.
> > Thanks
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7b621a5e6f751404e101f9d4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I updated the make on fedora 18 x86_64 to make-3=
.82-14.fc18.x86_64.rpm and problem appears to be corrected.=A0 Currently ru=
nning a build using <br>Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;1.19.1&quot;<br>
BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSB=
STRING=A0=A0 =3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =
=3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;beagleboard&quot;<br>DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =3D &quot;poky&quot;<br>
DISTRO_VERSION=A0=A0=A0 =3D &quot;1.4+snapshot-20130708&quot;<br>TUNE_FEATU=
RES=A0=A0=A0=A0 =3D &quot;armv7a vfp neon&quot;<br>TARGET_FPU=A0=A0=A0=A0=
=A0=A0=A0 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:8a186a6b3853fc1=
a7dcf342d421c8926c38949c9&quot;<br>
meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:46354a697c18a64c5836=
159adf8dbd92e6547e85&quot;<br>meta-java=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;m=
aster:59696d89fd33df6953dcb2dd54ccd3b362513f28&quot;<br>meta-yocto-bsp=A0=
=A0=A0 =3D &quot;master:8a186a6b3853fc1a7dcf342d421c8926c38949c9&quot;<br>
</div>This did not shown the error with make-3.82-13.fc18.x86_64.rpm<br></d=
iv>Thanks <br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_=
quote">On Mon, Jul 8, 2013 at 8:41 AM, Stanacar, StefanX <span dir=3D"ltr">=
&lt;<a href=3D"mailto:stefanx.stanacar@intel.com" target=3D"_blank">stefanx=
.stanacar@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">The original make 3.82 in Fedora 18 is known=
 to be broken, hence the<br>
sanity test. Also I don&#39;t think that&#39;s a nice way of downgrading to=
 make<br>
3.81 (that&#39;s a Fedora 13 make...)<br>
<br>
Anyway, all that doesn&#39;t matter because a few days ago Fedora pushed an=
<br>
update to make which fixes the problem:<br>
make-3.82-14.fc18.x86_64<br>
<br>
You should just yum update and you&#39;re set.<br>
<br>
Cheers,<br>
Stefan<br>
<div><div class=3D"h5"><br>
On Mon, 2013-07-08 at 08:31 -0600, Edward Vidal wrote:<br>
&gt; Hello,<br>
&gt; Is this a bitbake or poky error? =A0My poky was pulled pull on<br>
&gt; 07/03/13.<br>
&gt;<br>
&gt; Fedora 18 x86_64 which has been used to build with branch dylan for<br=
>
&gt; the past couple of months or longer.<br>
&gt; The build below used make-3.82-13.fc18.x86_64.rpm<br>
&gt; MACHINE=3Dbeagleboard bitbake core-image-sato-sdk-ex<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.18.0&quot;<br>
&gt; BUILD_SYS =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;<br>
&gt; NATIVELSBSTRING =A0 =3D &quot;Fedora-18&quot;<br>
&gt; TARGET_SYS =A0 =A0 =A0 =A0=3D &quot;arm-poky-linux-gnueabi&quot;<br>
&gt; MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;beagleboard&quot;<br>
&gt; DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
&gt; DISTRO_VERSION =A0 =A0=3D &quot;1.4.1&quot;<br>
&gt; TUNE_FEATURES =A0 =A0 =3D &quot;armv7a vfp neon&quot;<br>
&gt; TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-neon&quot;<br>
&gt; meta<br>
&gt; meta-yocto =A0 =A0 =A0 =A0=3D &quot;dylan:e4a0a4c5e419154a34710a1b6c28=
d4180c6304c3&quot;<br>
&gt; meta-oe =A0 =A0 =A0 =A0 =A0 =3D &quot;master:46354a697c18a64c5836159ad=
f8dbd92e6547e85&quot;<br>
&gt; meta-java =A0 =A0 =A0 =A0 =3D<br>
&gt; &quot;(nobranch):59696d89fd33df6953dcb2dd54ccd3b362513f28&quot;<br>
&gt; meta-yocto-bsp =A0 =A0=3D &quot;dylan:e4a0a4c5e419154a34710a1b6c28d418=
0c6304c3&quot;<br>
&gt;<br>
&gt; MACHINE=3Dbeagleboard bitbake core-image-sato-sdk-ex<br>
&gt; ERROR: =A0OE-core&#39;s config sanity checker detected a potential<br>
&gt; misconfiguration.<br>
&gt; =A0 =A0 Either fix the cause of this error or at your own risk disable=
 the<br>
&gt; checker (see sanity.conf).<br>
&gt; =A0 =A0 Following is the list of potential problems / advisories:<br>
&gt;<br>
&gt; =A0 =A0 Your version of make 3.82 is broken. Please revert to 3.81 or<=
br>
&gt; install a patched version.<br>
&gt; make-3.81-19.fc13.x86_64.rpm was installed with rpm -Uh --force<br>
&gt; make-3.81-19.fc13.x86_64.rpm<br>
&gt; MACHINE=3Dbeagleboard bitbake core-image-sato-sdk-ex is currently<br>
&gt; working.<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.19.1&quot;<br>
&gt; BUILD_SYS =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;<br>
&gt; NATIVELSBSTRING =A0 =3D &quot;Fedora-18&quot;<br>
&gt; TARGET_SYS =A0 =A0 =A0 =A0=3D &quot;arm-poky-linux-gnueabi&quot;<br>
&gt; MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;beagleboard&quot;<br>
&gt; DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
&gt; DISTRO_VERSION =A0 =A0=3D &quot;1.4+snapshot-20130708&quot;<br>
&gt; TUNE_FEATURES =A0 =A0 =3D &quot;armv7a vfp neon&quot;<br>
&gt; TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-neon&quot;<br>
&gt; meta<br>
&gt; meta-yocto =A0 =A0 =A0 =A0=3D &quot;master:8a186a6b3853fc1a7dcf342d421=
c8926c38949c9&quot;<br>
&gt; meta-oe =A0 =A0 =A0 =A0 =A0 =3D &quot;master:46354a697c18a64c5836159ad=
f8dbd92e6547e85&quot;<br>
&gt; meta-java =A0 =A0 =A0 =A0 =3D &quot;master:59696d89fd33df6953dcb2dd54c=
cd3b362513f28&quot;<br>
&gt; meta-yocto-bsp =A0 =A0=3D &quot;master:8a186a6b3853fc1a7dcf342d421c892=
6c38949c9&quot;<br>
&gt; Any and all help will be appricated.<br>
&gt; Thanks<br>
&gt;<br>
</div></div>&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
</blockquote></div><br></div>

--047d7b621a5e6f751404e101f9d4--
