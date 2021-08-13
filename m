Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web12.39293.1628873771747434957
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Aug 2021 09:56:12 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.196, mailfrom: foss@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 58A4FE0007;
	Fri, 13 Aug 2021 16:56:08 +0000 (UTC)
Date: Fri, 13 Aug 2021 16:56:06 +0000
From: "Quentin Schulz" <foss@0leil.net>
To: yocto@lists.yoctoproject.org, daniel_herrmann22@web.de
Subject: Re: [yocto] Dependencies between recipes
In-Reply-To: <EUEr.1628792870556940876.S5GO@lists.yoctoproject.org>
References: <EUEr.1628792870556940876.S5GO@lists.yoctoproject.org>
Message-ID: <DBF05267-4D6E-4229-8FD7-E3441F4E19D3@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

On August 12, 2021 6:27:50 PM UTC, daniel_herrmann22@web=2Ede wrote:
>Hello,
>
>I'm stucking a little bit by compiling a cmake application which has depe=
ndencies
>on libs from another recipe=2E
>
>*1)*
>The recipe which provided my libs is a normal debian package which I inst=
alled in yocto like this:
>
>SRC_URI =3D "file://${BP}=2Edeb"
>S =3D "${WORKDIR}"
>
>inherit bin_package pkgconfig
>
>do_install() {
>install -d ${D}/opt/package-name/include/
>install -d ${D}/opt/package-name/lib
>install -d ${D}/opt/package-name/lib/cmake
>}

Those commands only add directories, you still need to copy your files to =
one of those directories=2E Use for example:

install ${S}/path/to/lib=2Eso=2Ex=2Ey ${D}${libdir}

>
>FILES_${PN} =3D "/opt/package-name/lib/folder"
>FILES_${PN} +=3D "/opt/package-name/include/folder"
>

Any specific reason for not putting your libs in ${libdir} instead of /opt=
/package-name/lib/folder?

Also, if you can compile from scratch the software instead of including th=
e Deb package, it'd be a better idea =F0=9F=98=89

>*2)*
>The libs from 1) I want to use in the cmake-application
>
>*2=2E1)*
>*CmakeLists=2Etxt is like this:*
>
>cmake_minimum_required(VERSION 2=2E8)
>project(test)
>set(package_DIR /opt/package-name/lib/cmake)=C2=A0=C2=A0 #path to cmake p=
ackage -> Config=2Ecmake
>find_package(package)
>add_executable(test main=2Ecpp)
>target_link_libraries(test package::lib)
>
>*-> I dont know how to set the right path to the Config=2Ecmake=2E At the=
 moment it points to the host location=2E*
>*I have tried like this ${STAGING_DIR}/opt/=2E=2E=2E which should point t=
o the sysroot, but no success=2E*
>
>*2=2E2)*
>*Recipe for the cmake-application in short*
>
>DEPENDS +=3D "package-name"=C2=A0=C2=A0 # package from 1)
>inherit cmake
>SRC_URI=3D"git://=2E=2E=2E=2E
>SRCREV =3D "=2E=2E=2E=2E"
>
>S =3D "${WORKDIR}/git"
>
>do_install(){
>install -d ${D}/${bindir}
>install -m0755 test ${D}/${bindir}
>}
>
>FILES_${PN} =3D "/usr/bin/test"
>
>RDEPENDS_${PN} +=3D "package-name"
>
>When I make a sysroot from the hole image with bitbake -c populate_sdk=C2=
=A0 and I point directly to path where the Config=2Ecmake is stored, everyt=
hings works=2E=2E
>Is there any way to make it work in the yocto build process, without maki=
ng a explicit sysroot ?
>

I don't think your library package is correctly configured for starters=2E=
 I would recommend installing your libs in ${D}${libdir} that's where most =
of the libs are and some variables default are set for those so it's all au=
tomagic=2E

Otherwise, the issue is that the files from your library package aren't ma=
de available to other recipes=2E First because you're not installing your l=
ibs=2E Second, by default only a portion of files installed are made availa=
ble to other recipes via their sysroot=2E The portions are listed in SYSROO=
T_DIRS (https://docs=2Eyoctoproject=2Eorg/ref-manual/variables=2Ehtml#term-=
SYSROOT_DIRS)=2E If you want to keep using /opt/whatever directory for your=
 libs, you'll need to add this directory to SYSROOT_DIRS=2E And probably wi=
ll need to tweak a few other paths to point to ${RECIPE_SYSROOT}/opt for li=
brary lookup for the linker for example=2E

If you install in ${D}${libdir} instead, everything is handled for you aut=
omagically =E2=98=BA=EF=B8=8F

Easier to maintain that way, highly recommend =F0=9F=98=89

Cheers,
Quentin

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
