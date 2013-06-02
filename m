Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f52.google.com (mail-ee0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 094D8E01551
	for <yocto@yoctoproject.org>; Sun,  2 Jun 2013 14:35:37 -0700 (PDT)
Received: by mail-ee0-f52.google.com with SMTP id c50so741023eek.11
	for <yocto@yoctoproject.org>; Sun, 02 Jun 2013 14:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=wQYWhXoH8SXou7H7idLk6/zu7S00A9iXKlh83OyzkZc=;
	b=KEu6O/qXwjK7ujNNnG2HU90dFBYX/1HbUDe6qREsmP2+woDs2GpxqSBBgQQhjIDYTG
	J3QBHeGzRhdaC6cKVnCHGaKtbBWb5D99Qql7EmuvQWoKF8CCFTGSXW24bgT5e/6/AhXF
	xT2vKggrJ/IccEA7oldOMX9xI1b0oFUk2VgpMMft/vu2WByQSKal1lkVMusUUlQx07xV
	0mxROZe8wr1Znn5RYBuRpc9AN6o75V50O1wGfCgWnrV2NmC+X0LhsdfbJQ9peSt8EMPH
	WiJ6iXxojQY+pWbxxOiEfQXVJzaH7JzIG3E5taN++6MXXqW4v58AgpnFUyR7UxRPxGsS
	Tc4w==
MIME-Version: 1.0
X-Received: by 10.14.87.198 with SMTP id y46mr21048809eee.83.1370208936815;
	Sun, 02 Jun 2013 14:35:36 -0700 (PDT)
Received: by 10.223.165.200 with HTTP; Sun, 2 Jun 2013 14:35:36 -0700 (PDT)
Date: Sun, 2 Jun 2013 15:35:36 -0600
Message-ID: <CANwz6ny8-LnE7-weEJnp5BAyR=j4Gbs4HXb29EPM0e4uNx1X4A@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: libstdc++-static impacts yocto builds fedora18
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
X-List-Received-Date: Sun, 02 Jun 2013 21:35:38 -0000
Content-Type: multipart/alternative; boundary=001a11c23bf6f2920504de32a047

--001a11c23bf6f2920504de32a047
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I recently installed libstdc++-static-4.7.2-8.fc18.x86_64.rpm on a Fedora
18 system which appears to cause problems in Yocto builds.
This package was installed when trying to add meta-java to Yocto builds
In the meta-java README
Please note that libstdc++ static is needed on your host to compile
icedtea6/7-native
(install libstdc++-static on a Fedora).
Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beaglebone"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "(nobranch):c3cb65041834159a318df9c1a5a05f1ef36a2ebc"
meta-ti           = "(nobranch):d61bfa88ed3df9190ac9fd5643c27f77b34c5f01"
meta-oe           = "master:bea2397361da080df1256046b927b454e2e5fc9a"
meta-yocto-bsp    = "(nobranch):c3cb65041834159a318df9c1a5a05f1ef36a2ebc"
I got serveral ERRORS
ERROR: Package version for package libgcc went backwards which would break
package feeds from (0:4.7.2-r20 to 0:4.7.2-r19)
This build would not boot.
Removed  libstdc++-static-4.7.2-8.fc18.x86_64.rpm and new build.

Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beaglebone"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "(nobranch):c3cb65041834159a318df9c1a5a05f1ef36a2ebc"
meta-ti           = "(nobranch):d61bfa88ed3df9190ac9fd5643c27f77b34c5f01"
meta-oe           = "(nobranch):22100f5b136e1be268055f4da14c39d7a32e9023"
meta-yocto-bsp    = "(nobranch):c3cb65041834159a318df9c1a5a05f1ef36a2ebc"
This build boots okay.
Any and all help will be appreciated.
Thanks

--001a11c23bf6f2920504de32a047
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br>I recently installed libstdc++-st=
atic-4.7.2-8.fc18.x86_64.rpm on a Fedora 18 system which appears to cause p=
roblems in Yocto builds.<br>This package was installed when trying to add m=
eta-java to Yocto builds<br>
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
>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>
meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;(nobranch):c3cb65041834159a318df9=
c1a5a05f1ef36a2ebc&quot;<br>meta-ti=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot=
;(nobranch):d61bfa88ed3df9190ac9fd5643c27f77b34c5f01&quot;<br>meta-oe=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;(nobranch):22100f5b136e1be268055f4da14c3=
9d7a32e9023&quot;<br>
meta-yocto-bsp=A0=A0=A0 =3D &quot;(nobranch):c3cb65041834159a318df9c1a5a05f=
1ef36a2ebc&quot;<br></div>This build boots okay.<br></div>Any and all help =
will be appreciated.<br></div>Thanks <br></div>

--001a11c23bf6f2920504de32a047--
