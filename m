Return-Path: <vidal.develone@gmail.com>
Received: from mail-qc0-f175.google.com (mail-qc0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18A10E016A9
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 08:49:59 -0800 (PST)
Received: by mail-qc0-f175.google.com with SMTP id x12so1329498qcv.34
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 08:49:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=aFkEmH05broU01SraQ5ynJDpfCF7ZizSb1g8444hUG8=;
	b=j8+aixYjkRc6hTiu7b1EJ/86hyFWnH9aymffET26i2ltC8ZBf2m+FerlJ080+nVdFZ
	wvnz3Da0ZVtgOF1oc/vjDzzKVzDlQuP4kxNxtzK+/wUqP/Df1F/bYBhvlCHiR368cXXk
	DL+KKU5wCHJOTMXGQW0pdc1w+ySVmMb62aH/s7uqoPfxyMMdTT8hyh6OjG+AADHgMF1J
	w7L23NqoJmDHcelwbr9WF+m2LKzxgbSuS3Yz2s9u6YbaxnSd9OuHRMhrHbCIvz52zL2F
	jnwbbRLs7l1bDRUtE3ikZ/+uF4/d5kwto08QEU0HxGGS6Gek6ivXSQ5qw3ZOp65hiTfE
	Dznw==
MIME-Version: 1.0
X-Received: by 10.224.36.201 with SMTP id u9mr3863219qad.76.1384447798824;
	Thu, 14 Nov 2013 08:49:58 -0800 (PST)
Received: by 10.140.37.81 with HTTP; Thu, 14 Nov 2013 08:49:58 -0800 (PST)
Date: Thu, 14 Nov 2013 09:49:58 -0700
Message-ID: <CANwz6nysiA1h_YCzftptcPOWmpWcXP4wCCrY9VE_YKP6v8tzjw@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, Martin.Turgeon@nutaq.com,
	Benjamin McGee <ben.c.mcgee@gmail.com>
Subject: meta data sources
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
X-List-Received-Date: Thu, 14 Nov 2013 16:50:03 -0000
Content-Type: multipart/alternative; boundary=001a11c1bd5e42545e04eb25dfa6

--001a11c1bd5e42545e04eb25dfa6
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I am trying to determine  which meta data to use.
I am currently using meta-oe/meta-oe and meta-oe/meta-multimedia see below
git log at meta-oe
commit ed84e64d22400595b68da4e75b48ab7ecc342aa9
Author: Martin Jansa <Martin.Jansa@gmail.com>
Date:   Tue Jun 11 18:44:22 2013 +0200

    openssh: Rename bbappend to match new version from oe-core

    Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
The beagleboard build is used to generate the RPMs for my zedboard this add
159 RPMs to provide v4l-utils boost qt-mobility-x11 gsl gnuplot gnuradio
jasper lua5.1 fluidsynth liba52 x264 libmad vlc
Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4.1"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "wkg_dylan:64273e53f2789d2ea8393fc80909ac7086f168a7"
meta-oe
meta-multimedia   = "wkg_dylan:ed84e64d22400595b68da4e75b48ab7ecc342aa9"
meta-java         = "wkg_dylan:59696d89fd33df6953dcb2dd54ccd3b362513f28"
meta-yocto-bsp    = "wkg_dylan:64273e53f2789d2ea8393fc80909ac7086f168a7"
 I am adding to custom core-image-sato-sdk the following items.

v4l-utils boost qt-mobility-x11 gsl gnuplot gnuradio jasper lua5.1
fluidsynth liba52 x264 libmad vlc
this required in local.conf
LICENSE_FLAGS_WHITELIST = "commercial_libmad commercial_mpeg2dec"
to get the packages to build.
I noticed that angstrom uses
meta-openembedded/meta-oe and meta-openembedded/meta-multimedia
Any and all help is appreciated.
Thanks

--001a11c1bd5e42545e04eb25dfa6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello,<br></div>I am trying to de=
termine=A0 which meta data to use.<br></div>I am currently using meta-oe/me=
ta-oe and meta-oe/meta-multimedia see below<br>git log at meta-oe<br>commit=
 ed84e64d22400595b68da4e75b48ab7ecc342aa9<br>
Author: Martin Jansa &lt;<a href=3D"mailto:Martin.Jansa@gmail.com">Martin.J=
ansa@gmail.com</a>&gt;<br>Date:=A0=A0 Tue Jun 11 18:44:22 2013 +0200<br><br=
>=A0=A0=A0 openssh: Rename bbappend to match new version from oe-core<br>=
=A0=A0=A0 <br>=A0=A0=A0 Signed-off-by: Martin Jansa &lt;<a href=3D"mailto:M=
artin.Jansa@gmail.com">Martin.Jansa@gmail.com</a>&gt;<br>
The beagleboard build is used to generate the RPMs for my zedboard this add=
 159 RPMs to provide v4l-utils boost qt-mobility-x11 gsl gnuplot gnuradio j=
asper lua5.1 fluidsynth liba52 x264 libmad vlc<br>Build Configuration:<br>
BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.18.0&quot;<br>BUILD_SYS=A0=A0=
=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=A0=A0 =
=3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;arm-=
poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot=
;beagleboard&quot;<br>
DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERS=
ION=A0=A0=A0 =3D &quot;1.4.1&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;a=
rmv7a vfp neon&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&=
quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=
=A0=A0=A0=A0=A0 =3D &quot;wkg_dylan:64273e53f2789d2ea8393fc80909ac7086f168a=
7&quot;<br>
meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-multimedia=A0=A0 =3D &quot;w=
kg_dylan:ed84e64d22400595b68da4e75b48ab7ecc342aa9&quot;<br>meta-java=A0=A0=
=A0=A0=A0=A0=A0=A0 =3D &quot;wkg_dylan:59696d89fd33df6953dcb2dd54ccd3b36251=
3f28&quot;<br>meta-yocto-bsp=A0=A0=A0 =3D &quot;wkg_dylan:64273e53f2789d2ea=
8393fc80909ac7086f168a7&quot;<br>
=A0I am adding to custom core-image-sato-sdk the following items.<br><br>v4=
l-utils boost qt-mobility-x11 gsl gnuplot gnuradio jasper lua5.1 fluidsynth=
 liba52 x264 libmad vlc<br></div>this required in local.conf<br>LICENSE_FLA=
GS_WHITELIST =3D &quot;commercial_libmad commercial_mpeg2dec&quot; <br>
</div>to get the packages to build.=A0 <br></div>I noticed that angstrom us=
es <br><div><div>meta-openembedded/meta-oe and meta-openembedded/meta-multi=
media<br></div><div>Any and all help is appreciated.<br></div><div>Thanks<b=
r>
</div><div><br></div></div></div>

--001a11c1bd5e42545e04eb25dfa6--
