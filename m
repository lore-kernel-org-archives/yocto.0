Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f46.google.com (mail-ee0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89640E00429
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 08:48:54 -0700 (PDT)
Received: by mail-ee0-f46.google.com with SMTP id b57so1677599eek.19
	for <yocto@yoctoproject.org>; Thu, 09 May 2013 08:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=oKMbyMK0mp/jVzLNPXpyhgi//RsiiFtIo67WJeLfLrk=;
	b=Ds1pSeR4ko2F602/fu9thWrVZGb1noFNyfa2CXbc3FSL21uV8i2xfpdqF4fgM5Nvv6
	tKkKU0Ap9BGkCm7YwGfR83W8Pu8z76agFtSAPw8cAnyeIoZim4BBHdygn6BEjT7ejkfT
	26/1cCDTqINdgfD/Fl4ElGbhWS3xFzBBqg17X1WWesN5IuM9P0nTUFZp9Nzg3on5Vz+L
	NT80nQonDFYp94A6HuZAzZD2xj851x3hcLzBptvF93LwXBM94bRVXGWmpJHPhXaq1yy4
	hhFCLl14j4K272m9lDfGFrnuOtJeHYAXch99RezDoIV7QcDZ8YOAC58R8fqgJtxzCO9E
	NnYQ==
MIME-Version: 1.0
X-Received: by 10.15.48.193 with SMTP id h41mr30412624eew.23.1368114532906;
	Thu, 09 May 2013 08:48:52 -0700 (PDT)
Received: by 10.223.201.9 with HTTP; Thu, 9 May 2013 08:48:52 -0700 (PDT)
Date: Thu, 9 May 2013 09:48:52 -0600
Message-ID: <CANwz6nzLfczXdCZ6pXRKWqenoJ_cB=cjUTuasPeZfim+Kn2zyA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: recipe gsl-1.15
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
X-List-Received-Date: Thu, 09 May 2013 15:48:54 -0000
Content-Type: multipart/alternative; boundary=001a11c32c6ebf1c4804dc4afcb6

--001a11c32c6ebf1c4804dc4afcb6
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I am trying to write the recipe to add gsl-1.15 to core-image-sato.

First I did mdkir poky/meta/recipes-support/gsl

Is this the correct location for this recipe?

cp ~/POKY/gsl_1.15.bb ../meta/recipes-support/gsl/

This is the gsl_1.15.bb file
*************************************************
DESCRIPTION = "GNU Scientific Library (GSL)"
HOMEPAGE = "http://www.gnu.org/software/gsl/"

LICENSE = "GPLv3"
LIC_FILES_CHKSUM =
"file://NEWS;beginline=362;endline=363;md5=325d4344063147ef38e3ac2cbf1cc157"

SRC_URI = "http://mirror.rit.edu/gnu/gnu/gsl/gsl-${PV}.tar.gz"
SRC_URI[md5sum] = "494ffefd90eef4ada678c306bab4030b"
SRC_URI[sha256sum] =
"85b907e57902e2b7606ef3aef960302ffdd13bd9dc5b8fcbfa75e4f0bf340ea3"

S = "${WORKDIR}/gsl-${PV}"

inherit autotools
*************************************************
When I execute MACHINE=beagleboard bitbake gsl

Build Configuration:
BB_VERSION        = "1.19.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20130509"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    = "master:84d45db4ddced96c736f106f8122eefadf925c41"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks

The fetch appears to work since in my repository I see the following:
/home/vidal/POKY/linux_src_dnloads/downloads/gsl-1.15.tar.gz
/home/vidal/POKY/linux_src_dnloads/downloads/gsl-1.15.tar.gz.done

In the file NEWS

    362 ** License updated to GNU GPL version 3.
    363
gsl-1.15]$ md5sum NEWS
325d4344063147ef38e3ac2cbf1cc157  NEWS

ERROR: gsl: The new md5 checksum is 73ea11aaa98f8c40401be7c60ee2a8e6
ERROR: gsl: Check if the license information has changed in
ERROR: Licensing Error: LIC_FILES_CHKSUM does not match, please fix
ERROR: Function failed: do_qa_configure
ERROR: Logfile of failure stored in:
/home/vidal/POKY/build050613/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gsl/1.15-r0/temp/log.do_configure.5839
ERROR: Task 5 (/home/vidal/POKY/build050613/poky/meta/recipes-support/gsl/
gsl_1.15.bb, do_configure) failed with exit code '1'

/home/vidal/POKY/build050613/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gsl/1.15-r0/temp/log.do_configure.5839
configure: WARNING: unrecognized options: --disable-silent-rules
DEBUG: Shell function do_configure finished
DEBUG: Executing python function do_qa_configure
NOTE: Checking autotools environment for common misconfiguration
ERROR: gsl: md5 data is not matching for
file://NEWS;beginline=362;endline=363;md5=325d4344063147ef38e3ac2cbf1cc157
ERROR: gsl: The new md5 checksum is 73ea11aaa98f8c40401be7c60ee2a8e6
ERROR: gsl: Check if the license information has changed in
ERROR: Licensing Error: LIC_FILES_CHKSUM does not match, please fix
DEBUG: Python function do_qa_configure finished

Any and all help will be appreciated.
Thanks
Ed Vidal Jr.

--001a11c32c6ebf1c4804dc4afcb6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><br>Hello,<br>I am trying to write the recipe to=
 add gsl-1.15 to core-image-sato. <br><br>First I did mdkir poky/meta/recip=
es-support/gsl<br><br>Is this the correct location for this recipe?<br><br>
cp ~/POKY/<a href=3D"http://gsl_1.15.bb">gsl_1.15.bb</a> ../meta/recipes-su=
pport/gsl/<br><br>This is the <a href=3D"http://gsl_1.15.bb">gsl_1.15.bb</a=
> file<br>*************************************************<br>DESCRIPTION =
=3D &quot;GNU Scientific Library (GSL)&quot;<br>
HOMEPAGE =3D &quot;<a href=3D"http://www.gnu.org/software/gsl/">http://www.=
gnu.org/software/gsl/</a>&quot;<br><br>LICENSE =3D &quot;GPLv3&quot;<br>LIC=
_FILES_CHKSUM =3D &quot;file://NEWS;beginline=3D362;endline=3D363;md5=3D325=
d4344063147ef38e3ac2cbf1cc157&quot;<br>
<br>SRC_URI =3D &quot;<a href=3D"http://mirror.rit.edu/gnu/gnu/gsl/gsl-${PV=
}.tar.gz">http://mirror.rit.edu/gnu/gnu/gsl/gsl-${PV}.tar.gz</a>&quot;<br>S=
RC_URI[md5sum] =3D &quot;494ffefd90eef4ada678c306bab4030b&quot;<br>SRC_URI[=
sha256sum] =3D &quot;85b907e57902e2b7606ef3aef960302ffdd13bd9dc5b8fcbfa75e4=
f0bf340ea3&quot;<br>
<br>S =3D &quot;${WORKDIR}/gsl-${PV}&quot;<br><br>inherit autotools<br>****=
*********************************************<br>When I execute MACHINE=3Db=
eagleboard bitbake gsl<br><br>Build Configuration:<br>BB_VERSION=A0=A0=A0=
=A0=A0=A0=A0 =3D &quot;1.19.0&quot;<br>
BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSB=
STRING=A0=A0 =3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =
=3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;beagleboard&quot;<br>DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =3D &quot;poky&quot;<br>
DISTRO_VERSION=A0=A0=A0 =3D &quot;1.3+snapshot-20130509&quot;<br>TUNE_FEATU=
RES=A0=A0=A0=A0 =3D &quot;armv7a vfp neon&quot;<br>TARGET_FPU=A0=A0=A0=A0=
=A0=A0=A0 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0<br>meta-yocto=A0=A0=A0=A0=A0=A0 =A0<br>meta-yocto-bsp=A0=A0=A0 =3D =
&quot;master:84d45db4ddced96c736f106f8122eefadf925c41&quot;<br>
<br>NOTE: Resolving any missing task queue dependencies<br>NOTE: Preparing =
runqueue<br>NOTE: Executing SetScene Tasks<br>NOTE: Executing RunQueue Task=
s<br><br>The fetch appears to work since in my repository I see the followi=
ng:<br>
/home/vidal/POKY/linux_src_dnloads/downloads/gsl-1.15.tar.gz<br>/home/vidal=
/POKY/linux_src_dnloads/downloads/gsl-1.15.tar.gz.done<br><br>In the file N=
EWS <br><br>=A0=A0=A0 362 ** License updated to GNU GPL version 3.<br>=A0=
=A0=A0 363 <br>
gsl-1.15]$ md5sum NEWS<br>325d4344063147ef38e3ac2cbf1cc157=A0 NEWS<br><br>E=
RROR: gsl: The new md5 checksum is 73ea11aaa98f8c40401be7c60ee2a8e6<br>ERRO=
R: gsl: Check if the license information has changed in<br>ERROR: Licensing=
 Error: LIC_FILES_CHKSUM does not match, please fix<br>
ERROR: Function failed: do_qa_configure<br>ERROR: Logfile of failure stored=
 in: /home/vidal/POKY/build050613/poky/build/tmp/work/armv7a-vfp-neon-poky-=
linux-gnueabi/gsl/1.15-r0/temp/log.do_configure.5839<br>ERROR: Task 5 (/hom=
e/vidal/POKY/build050613/poky/meta/recipes-support/gsl/<a href=3D"http://gs=
l_1.15.bb">gsl_1.15.bb</a>, do_configure) failed with exit code &#39;1&#39;=
<br>
<br>/home/vidal/POKY/build050613/poky/build/tmp/work/armv7a-vfp-neon-poky-l=
inux-gnueabi/gsl/1.15-r0/temp/log.do_configure.5839<br>configure: WARNING: =
unrecognized options: --disable-silent-rules<br>DEBUG: Shell function do_co=
nfigure finished<br>
DEBUG: Executing python function do_qa_configure<br>NOTE: Checking autotool=
s environment for common misconfiguration<br>ERROR: gsl: md5 data is not ma=
tching for file://NEWS;beginline=3D362;endline=3D363;md5=3D325d4344063147ef=
38e3ac2cbf1cc157<br>
ERROR: gsl: The new md5 checksum is 73ea11aaa98f8c40401be7c60ee2a8e6<br>ERR=
OR: gsl: Check if the license information has changed in<br>ERROR: Licensin=
g Error: LIC_FILES_CHKSUM does not match, please fix<br>DEBUG: Python funct=
ion do_qa_configure finished<br>
<br>Any and all help will be appreciated.<br></div>Thanks<br></div>Ed Vidal=
 Jr.<br></div>

--001a11c32c6ebf1c4804dc4afcb6--
