Subject: Help creating a recipe for bro (zeek)
To: yocto@lists.yoctoproject.org
From: seshu.pyla@gmail.com
X-Originating-Location: Hyderabad, Telangana, IN (157.48.187.174)
X-Originating-Platform: Linux Firefox 68
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 01 Oct 2020 05:25:24 -0700
Message-ID: <Wy00.1601555124900901736.R4KA@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="9h5YBdy4H6AyNHESbw69"

--9h5YBdy4H6AyNHESbw69
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am creating recipe for the bro version 2.5.5.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
SUMMARY =3D "Passive network traffic analyzer"
HOMEPAGE =3D "http://www.bro.org"

LICENSE =3D "GPL-2.0"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D7ffedb422684eb346c1fb5bb8fc5fe4=
5"

inherit debian-package
require recipes-debian/sources/bro.inc
inherit autotools cmake pythonnative
DEBIAN_UNPACK_DIR =3D "${WORKDIR}/bro-${PV}-minimal"
S =3D "${WORKDIR}/bro-${PV}-minimal"

#It will look for and find the binary in sysroot bin directory.
OECMAKE_FIND_ROOT_PATH_MODE_PROGRAM =3D "BOTH"
EXTRA_OECMAKE +=3D "-DOPENSSL_CORRECT_VERSION_NUMBER=3DTRUE "

DEPENDS +=3D "bind binpac-native openssl=C2=A0 libpcap swig-native=C2=A0 b=
ison-native flex-native zlib sed-native"

RDEPENDS_${PN} +=3D "bash bind libpcap openssl zlib python"

BBCLASSEXTEND =3D "native nativesdk"
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

I got the below error while building:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
| DEBUG: Executing shell function do_compile
| NOTE: VERBOSE=3D1 cmake --build /work/build/tmp/work/core2-64-deby-linux=
/bro/2.5.5-r0/build --target all -- -j 4
| [1/785] [BIFCL] Processing event.bif
| FAILED: src/event.bif.func_def src/event.bif.func_h src/event.bif.func_i=
nit src/event.bif.netvar_def src/event.bif.netvar_h src/event.bif.netvar_in=
it scripts/base/bif/event.bif.bro
| cd /work/build/tmp/work/core2-64-deby-linux/bro/2.5.5-r0/build/src && bi=
fcl /work/build/tmp/work/core2-64-deby-linux/bro/2.5.5-r0/bro-2.5.5-minimal=
/src/event.bif || ( rm -f /work/build/tmp/work/core2-64-deby-linux/bro/2.5.=
5-r0/build/src/event.bif.func_def /work/build/tmp/work/core2-64-deby-linux/=
bro/2.5.5-r0/build/src/event.bif.func_h /work/build/tmp/work/core2-64-deby-=
linux/bro/2.5.5-r0/build/src/event.bif.func_init /work/build/tmp/work/core2=
-64-deby-linux/bro/2.5.5-r0/build/src/event.bif.netvar_def /work/build/tmp/=
work/core2-64-deby-linux/bro/2.5.5-r0/build/src/event.bif.netvar_h /work/bu=
ild/tmp/work/core2-64-deby-linux/bro/2.5.5-r0/build/src/event.bif.netvar_in=
it && exit 1 ) && /work/build/tmp/work/core2-64-deby-linux/bro/2.5.5-r0/rec=
ipe-sysroot-native/usr/bin/cmake -E copy event.bif.bro /work/build/tmp/work=
/core2-64-deby-linux/bro/2.5.5-r0/build/scripts/base/bif/event.bif.bro && /=
work/build/tmp/work/core2-64-deby-linux/bro/2.5.5-r0/recipe-sysroot-native/=
usr/bin/cmake -E remove -f event.bif.bro
| /bin/sh: 1: bifcl: not found
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

I did not get why 'bifcl' is not foud, i have checked inside folder 'build=
/src/' the binary is present.
I have debugged with command `bitbake -d devshell bro`
even there i have got the same error even the binary file is exist
also checked the 'file bifcl' inside devshell, below is the output
bifcl: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically=
 linked, interpreter /lib/ld-linux-x86-64.so.2, for GNU/Linux 3.2.0, BuildI=
D[sha1]=3D9165d27cdaa9bfe77fb8a72081302b0469feda72, with debug_info, not st=
ripped

can any one has suggestion for me?

Thanks
seshu

--9h5YBdy4H6AyNHESbw69
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,<br /><br />I am creating recipe for the bro version 2.5.5.<br /><br=
 />=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br />SUMMARY =3D "Passive network traffic analyzer"<br =
/>HOMEPAGE =3D "http://www.bro.org"<br /><br />LICENSE =3D "GPL-2.0"<br />L=
IC_FILES_CHKSUM =3D "file://COPYING;md5=3D7ffedb422684eb346c1fb5bb8fc5fe45"=
<br /><br />inherit debian-package<br />require recipes-debian/sources/bro.=
inc<br />inherit autotools cmake pythonnative<br />DEBIAN_UNPACK_DIR =3D "$=
{WORKDIR}/bro-${PV}-minimal"<br />S =3D "${WORKDIR}/bro-${PV}-minimal"<br /=
><br />#It will look for and find the binary in sysroot bin directory.<br /=
>OECMAKE_FIND_ROOT_PATH_MODE_PROGRAM =3D "BOTH"<br />EXTRA_OECMAKE +=3D "-D=
OPENSSL_CORRECT_VERSION_NUMBER=3DTRUE "<br /><br />DEPENDS +=3D "bind binpa=
c-native openssl&nbsp; libpcap swig-native&nbsp; bison-native flex-native z=
lib sed-native"<br /><br />RDEPENDS_${PN} +=3D "bash bind libpcap openssl z=
lib python"<br /><br />BBCLASSEXTEND =3D "native nativesdk"<br />=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br /><br />I got the below error while building:<br />=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br />| DEBUG: Executing shell function do_compile<br />| NOTE: V=
ERBOSE=3D1 cmake --build /work/build/tmp/work/core2-64-deby-linux/bro/2.5.5=
-r0/build --target all -- -j 4<br />| [1/785] [BIFCL] Processing event.bif<=
br />| FAILED: src/event.bif.func_def src/event.bif.func_h src/event.bif.fu=
nc_init src/event.bif.netvar_def src/event.bif.netvar_h src/event.bif.netva=
r_init scripts/base/bif/event.bif.bro<br />| cd /work/build/tmp/work/core2-=
64-deby-linux/bro/2.5.5-r0/build/src &amp;&amp; bifcl /work/build/tmp/work/=
core2-64-deby-linux/bro/2.5.5-r0/bro-2.5.5-minimal/src/event.bif || ( rm -f=
 /work/build/tmp/work/core2-64-deby-linux/bro/2.5.5-r0/build/src/event.bif.=
func_def /work/build/tmp/work/core2-64-deby-linux/bro/2.5.5-r0/build/src/ev=
ent.bif.func_h /work/build/tmp/work/core2-64-deby-linux/bro/2.5.5-r0/build/=
src/event.bif.func_init /work/build/tmp/work/core2-64-deby-linux/bro/2.5.5-=
r0/build/src/event.bif.netvar_def /work/build/tmp/work/core2-64-deby-linux/=
bro/2.5.5-r0/build/src/event.bif.netvar_h /work/build/tmp/work/core2-64-deb=
y-linux/bro/2.5.5-r0/build/src/event.bif.netvar_init &amp;&amp; exit 1 ) &a=
mp;&amp; /work/build/tmp/work/core2-64-deby-linux/bro/2.5.5-r0/recipe-sysro=
ot-native/usr/bin/cmake -E copy event.bif.bro /work/build/tmp/work/core2-64=
-deby-linux/bro/2.5.5-r0/build/scripts/base/bif/event.bif.bro &amp;&amp; /w=
ork/build/tmp/work/core2-64-deby-linux/bro/2.5.5-r0/recipe-sysroot-native/u=
sr/bin/cmake -E remove -f event.bif.bro<br />| /bin/sh: 1: bifcl: not found=
<br />=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<br /><br />I did not get why 'bifcl' is not foud, i =
have checked inside folder 'build/src/' the binary is present.<br />I have =
debugged with command `bitbake -d devshell bro`<br />even there i have got =
the same error even the binary file is exist<br />also checked the 'file bi=
fcl' inside devshell, below is the output<br />bifcl: ELF 64-bit LSB shared=
 object, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib/ld-=
linux-x86-64.so.2, for GNU/Linux 3.2.0, BuildID[sha1]=3D9165d27cdaa9bfe77fb=
8a72081302b0469feda72, with debug_info, not stripped<br /><br />can any one=
 has suggestion for me?<br /><br />Thanks<br />seshu

--9h5YBdy4H6AyNHESbw69--
