Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f172.google.com (mail-ea0-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF10BE013B8
	for <yocto@yoctoproject.org>; Sun, 16 Jun 2013 16:49:51 -0700 (PDT)
Received: by mail-ea0-f172.google.com with SMTP id q10so1424026eaj.17
	for <yocto@yoctoproject.org>; Sun, 16 Jun 2013 16:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=pbLi4uISFaANUaFEnbt+zyYU0OpopN3MCF3UbX4RKRM=;
	b=GdSE4wwDMDxFgS+9Zwinv3DHW1b+aCBD/eJ4hexqX6XPfVkM5I9ZH4a74RpKNqpkxz
	IBKa1QshFyM6NNnje0/JxbrZxQTZkMQRc8AElBSsLZFQlwGkDtCRyZnIunmxwFzHBuxO
	fGe62XXWnefKvdqGF5WK2AI20RhATNDo5MZjKtBD+HypcQ34MyH9P3DzY9nq8o7boDQe
	EjEEDRQGPMnaZgmWGgeUpu24utXXiXFkkeZQ0/3mwTSy450IkomzuIpUpTSRF1sbeKxk
	l3J6m9M5Ds4f8Ceu1othK/vN26rPlR43v24YO9M8YTQSCErk795TbJkgg2wt+ZuHRpBz
	q8yA==
MIME-Version: 1.0
X-Received: by 10.15.31.198 with SMTP id y46mr13895670eeu.135.1371426589848;
	Sun, 16 Jun 2013 16:49:49 -0700 (PDT)
Received: by 10.223.159.195 with HTTP; Sun, 16 Jun 2013 16:49:49 -0700 (PDT)
In-Reply-To: <CANwz6ny8-LnE7-weEJnp5BAyR=j4Gbs4HXb29EPM0e4uNx1X4A@mail.gmail.com>
References: <CANwz6ny8-LnE7-weEJnp5BAyR=j4Gbs4HXb29EPM0e4uNx1X4A@mail.gmail.com>
Date: Sun, 16 Jun 2013 17:49:49 -0600
Message-ID: <CANwz6nz2qtP3ts78Gt1a0wDq-TRHGJW=BEkpYK13Tt3tte2yHQ@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Sun, 16 Jun 2013 23:49:52 -0000
Content-Type: multipart/alternative; boundary=089e0160c5ceb9626e04df4e22b0

--089e0160c5ceb9626e04df4e22b0
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I re-installed  Jun 16 06:36:35 Installed:
libstdc++-static-4.7.2-8.fc18.x86_64.
Added the following to my local.conf
PREFERRED_PROVIDER_virtual/java-native = "jamvm-native"
PREFERRED_PROVIDER_virtual/javac-native = "ecj-bootstrap-native"
PREFERRED_VERSION_openjdk-7-jre = "03b21-2.1.7"
PREFERRED_VERSION_icedtea7-native = "2.1.3
Added the following to my bblayers.conf
  /home/vidal/POKY/build061613_dylan/poky/meta-oe/meta-oe \
  /home/vidal/POKY/build061613_dylan/poky/meta-java \
This is the build information for my build
I added the following to core-image-sato-sdk-ex.bb
IMAGE_INSTALL += "kernel-dev boost qt-mobility-x11 gsl gnuplot gnuradio \
openjdk-7-jre openjdk-7-vm-jamvm openjdk-7-vm-cacao "
This did not install the java compiler.
I installed manually openjdk-7-jdk-03b21+2.1.8-r5.0.armv7a_vfp_neon.rpm
which provided javac
Currently building with
IMAGE_INSTALL += "kernel-dev boost qt-mobility-x11 gsl gnuplot gnuradio \
openjdk-7-jdk openjdk-7-jre openjdk-7-vm-jamvm openjdk-7-vm-cacao "

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
meta-yocto        = "dylan:73f103bf9b2cdf985464dc53bf4f1cfd71d4531f"
meta-oe           = "master:ed84e64d22400595b68da4e75b48ab7ecc342aa9"
meta-java         = "master:59696d89fd33df6953dcb2dd54ccd3b362513f28"
meta-yocto-bsp    = "dylan:73f103bf9b2cdf985464dc53bf4f1cfd71d4531f"

Any and all help will be appreciatd.
Thanks Ed Vidal



On Sun, Jun 2, 2013 at 3:35 PM, Edward Vidal <vidal.develone@gmail.com>wrote:

> Hello,
> I recently installed libstdc++-static-4.7.2-8.fc18.x86_64.rpm on a Fedora
> 18 system which appears to cause problems in Yocto builds.
> This package was installed when trying to add meta-java to Yocto builds
> In the meta-java README
> Please note that libstdc++ static is needed on your host to compile
> icedtea6/7-native
> (install libstdc++-static on a Fedora).
> Build Configuration:
> BB_VERSION        = "1.18.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Fedora-18"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "beaglebone"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.4"
> TUNE_FEATURES     = "armv7a vfp neon"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "(nobranch):c3cb65041834159a318df9c1a5a05f1ef36a2ebc"
> meta-ti           = "(nobranch):d61bfa88ed3df9190ac9fd5643c27f77b34c5f01"
> meta-oe           = "master:bea2397361da080df1256046b927b454e2e5fc9a"
> meta-yocto-bsp    = "(nobranch):c3cb65041834159a318df9c1a5a05f1ef36a2ebc"
> I got serveral ERRORS
> ERROR: Package version for package libgcc went backwards which would break
> package feeds from (0:4.7.2-r20 to 0:4.7.2-r19)
> This build would not boot.
> Removed  libstdc++-static-4.7.2-8.fc18.x86_64.rpm and new build.
>
> Build Configuration:
> BB_VERSION        = "1.18.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Fedora-18"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "beaglebone"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.4"
> TUNE_FEATURES     = "armv7a vfp neon"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "(nobranch):c3cb65041834159a318df9c1a5a05f1ef36a2ebc"
> meta-ti           = "(nobranch):d61bfa88ed3df9190ac9fd5643c27f77b34c5f01"
> meta-oe           = "(nobranch):22100f5b136e1be268055f4da14c39d7a32e9023"
> meta-yocto-bsp    = "(nobranch):c3cb65041834159a318df9c1a5a05f1ef36a2ebc"
> This build boots okay.
> Any and all help will be appreciated.
> Thanks
>

--089e0160c5ceb9626e04df4e22b0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello, <br></div>I re-installed=A0 Jun 16 06:36:=
35 Installed: libstdc++-static-4.7.2-8.fc18.x86_64.<br>Added the following =
to my local.conf<br>PREFERRED_PROVIDER_virtual/java-native =3D &quot;jamvm-=
native&quot;<br>
PREFERRED_PROVIDER_virtual/javac-native =3D &quot;ecj-bootstrap-native&quot=
;<br>PREFERRED_VERSION_openjdk-7-jre =3D &quot;03b21-2.1.7&quot;<br>PREFERR=
ED_VERSION_icedtea7-native =3D &quot;2.1.3<br>Added the following to my bbl=
ayers.conf<br>
=A0 /home/vidal/POKY/build061613_dylan/poky/meta-oe/meta-oe \<br>=A0 /home/=
vidal/POKY/build061613_dylan/poky/meta-java \<br>This is the build informat=
ion for my build<br>I added the following to <a href=3D"http://core-image-s=
ato-sdk-ex.bb">core-image-sato-sdk-ex.bb</a><br>
IMAGE_INSTALL +=3D &quot;kernel-dev boost qt-mobility-x11 gsl gnuplot gnura=
dio \<br>openjdk-7-jre openjdk-7-vm-jamvm openjdk-7-vm-cacao &quot;<br>This=
 did not install the java compiler.<br>I installed manually openjdk-7-jdk-0=
3b21+2.1.8-r5.0.armv7a_vfp_neon.rpm which provided javac<br>
</div>Currently building with <br>IMAGE_INSTALL +=3D &quot;kernel-dev boost=
 qt-mobility-x11 gsl gnuplot gnuradio \<br>openjdk-7-jdk openjdk-7-jre open=
jdk-7-vm-jamvm openjdk-7-vm-cacao &quot;<br>=A0<br><div>Build Configuration=
:<br>
BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.18.0&quot;<br>BUILD_SYS=A0=A0=
=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=A0=A0 =
=3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;arm-=
poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot=
;beagleboard&quot;<br>
DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERS=
ION=A0=A0=A0 =3D &quot;1.4.1&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;a=
rmv7a vfp neon&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&=
quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=
=A0=A0=A0=A0=A0 =3D &quot;dylan:73f103bf9b2cdf985464dc53bf4f1cfd71d4531f&qu=
ot;<br>
meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:ed84e64d22400595b68d=
a4e75b48ab7ecc342aa9&quot;<br>meta-java=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;m=
aster:59696d89fd33df6953dcb2dd54ccd3b362513f28&quot;<br>meta-yocto-bsp=A0=
=A0=A0 =3D &quot;dylan:73f103bf9b2cdf985464dc53bf4f1cfd71d4531f&quot;<br>
<br></div><div>Any and all help will be appreciatd.<br></div><div>Thanks Ed=
 Vidal<br><br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"=
gmail_quote">On Sun, Jun 2, 2013 at 3:35 PM, Edward Vidal <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:vidal.develone@gmail.com" target=3D"_blank">vidal.de=
velone@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div>Hello,<br>I =
recently installed libstdc++-static-4.7.2-8.fc18.x86_64.rpm on a Fedora 18 =
system which appears to cause problems in Yocto builds.<br>
This package was installed when trying to add meta-java to Yocto builds<br>
In the meta-java README <br>Please note that libstdc++ static is needed on =
your host to compile icedtea6/7-native<br>(install libstdc++-static on a Fe=
dora).<br>Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot=
;1.18.0&quot;<br>

BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSB=
STRING=A0=A0 =3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =
=3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;beaglebone&quot;<br>DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =3D &quot;poky&quot;<br>

DISTRO_VERSION=A0=A0=A0 =3D &quot;1.4&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =
=3D &quot;armv7a vfp neon&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quo=
t;vfp-neon&quot;<br>meta<br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;(nobr=
anch):c3cb65041834159a318df9c1a5a05f1ef36a2ebc&quot;<br>

meta-ti=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;(nobranch):d61bfa88ed3df919=
0ac9fd5643c27f77b34c5f01&quot;<br>meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D=
 &quot;master:bea2397361da080df1256046b927b454e2e5fc9a&quot;<br>meta-yocto-=
bsp=A0=A0=A0 =3D &quot;(nobranch):c3cb65041834159a318df9c1a5a05f1ef36a2ebc&=
quot;<br>

I got serveral ERRORS<br>ERROR: Package version for package libgcc went bac=
kwards which would break package feeds from (0:4.7.2-r20 to 0:4.7.2-r19)<br=
>This build would not boot.<br>Removed=A0 libstdc++-static-4.7.2-8.fc18.x86=
_64.rpm and new build.<br>

<br>Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.18.=
0&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<b=
r>NATIVELSBSTRING=A0=A0 =3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=
=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>

MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;beaglebone&quot;<br>DISTRO=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=
=A0=A0 =3D &quot;1.4&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;armv7a vf=
p neon&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<br=
>
meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>
meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;(nobranch):c3cb65041834159a318df9=
c1a5a05f1ef36a2ebc&quot;<br>meta-ti=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot=
;(nobranch):d61bfa88ed3df9190ac9fd5643c27f77b34c5f01&quot;<br>meta-oe=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;(nobranch):22100f5b136e1be268055f4da14c3=
9d7a32e9023&quot;<br>

meta-yocto-bsp=A0=A0=A0 =3D &quot;(nobranch):c3cb65041834159a318df9c1a5a05f=
1ef36a2ebc&quot;<br></div>This build boots okay.<br></div>Any and all help =
will be appreciated.<br></div>Thanks <br></div>
</blockquote></div><br></div>

--089e0160c5ceb9626e04df4e22b0--
