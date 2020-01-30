Subject: bitbake failed to compile - ld cannot find -lc
To: yocto@lists.yoctoproject.org
From: "Michael" <youhour@us.ibm.com>
X-Originating-Location: Georgetown, Texas, US (47.221.167.202)
X-Originating-Platform: Windows Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 30 Jan 2020 15:11:20 -0800
Message-ID: <O8NF.1580425880516131135.psHJ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ROYI2euqJjajq2jmIb32"

--ROYI2euqJjajq2jmIb32
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

I'm a newbie to Yocto.

I'm setting up a project using poky warrior branch.
I set up SDKMACHINE=3D"x86_64"
Target arch is powerpc-nf

The goal is to create sdk image to be used for other development.

I include the following packages in conf/local.conf=C2=A0 and many others =
(but may not be important to discuss here)
IMAGE_INSTALL_append +=3D " libgcc "
IMAGE_INSTALL_append +=3D " glibc glibc-dev "
IMAGE_INSTALL_append +=3D " glibc-staticdev "
EXTRA_IMAGE_FEATURES +=3D "tools-sdk"
EXTRA_IMAGE_FEATURES +=3D "dev-pkgs"
SDKIMAGE_FEATURES_append =3D " staticdev-pkgs "

I am able to "bitbake core-image-minimal"=C2=A0 and "bitbake core-image-mi=
nimal -c populate_sdk" successfully.

Then I added another code to handle root access...=C2=A0 This code was bui=
lt fine outside of yocto environment.

Here is the recipe
**********************************************
LICENSE =3D "Apache-2.0"
LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/files/common-licenses/Apache=
-2.0;md5=3D89aea4e17d99a7cacdbeed46a0096b10"

SRC_URI =3D "file://mdchroot-${PV}.tar.gz \
file://mcpbug-121262-bind_mounting_resource_leak.patch \
file://mdchroot-make-depend.patch\
file://mdchroot.spec \
"

SRC_URI[md5sum] =3D "e84606060949ce161bae2a00ad8359fb"
SRC_URI[sha256sum] =3D "2a9801ca9ec9d3b120c13b61c0ed778d07adb4f75fe8357bc7=
38dda9f8aa6dae"

BBCLASSEXTEND =3D "native nativesdk"
inherit autotools

do_compile () {
# You will almost certainly need to add additional arguments here
cd ${S}
unset LDFLAGS CFLAGS CPPFLAGS
make OPTIMIZE=3D-O2 DEBUG=3D-g DEFINES=3D-D_GNU_SOURCE
}
**********************************************

I tried to build "bitbake mdchroot-native"=C2=A0 and it failed

**********************************************
Initialising tasks: 100% |################################################=
###########################################################################=
####| Time: 0:00:00
Sstate summary: Wanted 1 Found 0 Missed 1 Current 8 (0% match, 88% complet=
e)
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: mdchroot-native-0.7.4-r0 do_compile: Function failed: do_compile (l=
og file is located at /tmp/youhour/fips-build/fips-ppcnf/build/tmp/work/x86=
_64-linux/mdchroot-native/0.7.4-r0/temp/log.do_compile.30014)
ERROR: Logfile of failure stored in: /tmp/youhour/fips-build/fips-ppcnf/bu=
ild/tmp/work/x86_64-linux/mdchroot-native/0.7.4-r0/temp/log.do_compile.3001=
4
Log data follows:
| DEBUG: Executing shell function do_compile
| gcc -Wall -Werror -D_GNU_SOURCE -O2 -g -o src/mdchroot src/mdchroot.o sr=
c/mount_table.o src/mount.o src/roots.o -static
*| /tmp/youhour/fips-build/fips-ppcnf/build/tmp/hosttools/ld: cannot find =
-lc*
*| collect2: error: ld returned 1 exit status*
| make: *** [src/mdchroot] Error 1
| WARNING: /tmp/youhour/fips-build/fips-ppcnf/build/tmp/work/x86_64-linux/=
mdchroot-native/0.7.4-r0/temp/run.do_compile.30014:1 exit 2 from 'make OPTI=
MIZE=3D-O2 DEBUG=3D-g DEFINES=3D-D_GNU_SOURCE'
| ERROR: Function failed: do_compile (log file is located at /tmp/youhour/=
fips-build/fips-ppcnf/build/tmp/work/x86_64-linux/mdchroot-native/0.7.4-r0/=
temp/log.do_compile.30014)
ERROR: Task (virtual:native:/esw/san5/youhour/yocto_mcp/b20200123a/fips-bu=
ild/meta-fips-dependencies/recipes-phosphor/mdchroot/mdchroot_0.7.4.bb:do_c=
ompile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 63 tasks of which 62 didn't need to be reru=
n and 1 failed.

Summary: 1 task failed:
virtual:native:/esw/san5/youhour/yocto_mcp/b20200123a/fips-build/meta-fips=
-dependencies/recipes-phosphor/mdchroot/mdchroot_0.7.4.bb:do_compile
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
**********************************************

Seemed like ld was not able to find the glibc static library.
Under the tmp/work directory=C2=A0 I found these libraries.=C2=A0 So, it s=
eems that the glibc static library is there.
*************************************************************
./x86_64-nativesdk-pokysdk-linux/gcc-cross-canadian-powerpc/8.3.0-r0/recip=
e-sysroot/usr/lib/libc.a
./x86_64-nativesdk-pokysdk-linux/gcc-cross-canadian-powerpc/8.3.0-r0/recip=
e-sysroot/opt/poky/2.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/libc.a
./x86_64-nativesdk-pokysdk-linux/nativesdk-glibc/2.29-r0/build-x86_64-poky=
sdk-linux/libc.a
./x86_64-nativesdk-pokysdk-linux/nativesdk-glibc/2.29-r0/image/opt/poky/2.=
7.1/sysroots/x86_64-pokysdk-linux/usr/lib/libc.a
./x86_64-nativesdk-pokysdk-linux/nativesdk-glibc/2.29-r0/packages-split/na=
tivesdk-glibc-staticdev/opt/poky/2.7.1/sysroots/x86_64-pokysdk-linux/usr/li=
b/libc.a
./x86_64-nativesdk-pokysdk-linux/nativesdk-glibc/2.29-r0/sysroot-destdir/o=
pt/poky/2.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/libc.a
./x86_64-nativesdk-pokysdk-linux/nativesdk-glibc/2.29-r0/package/opt/poky/=
2.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/libc.a
./x86_64-nativesdk-pokysdk-linux/gdb-cross-canadian-powerpc/8.2.1-r0/recip=
e-sysroot/opt/poky/2.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/libc.a
*************************************************************

Any thought what I am missing in the conf/local.conf or in the recipe file=
?

Thank you in advance.

--ROYI2euqJjajq2jmIb32
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello All, <br /><br />I'm a newbie to Yocto.</div>
<div>&nbsp;</div>
<div>I'm setting up a project using poky warrior branch.</div>
<div>I set up SDKMACHINE=3D"x86_64"</div>
<div>Target arch is powerpc-nf</div>
<div>&nbsp;</div>
<div>The goal is to create sdk image to be used for other development.</di=
v>
<div>&nbsp;</div>
<div>I include the following packages in conf/local.conf&nbsp; and many ot=
hers (but may not be important to discuss here)</div>
<div>IMAGE_INSTALL_append +=3D " libgcc "</div>
<div>IMAGE_INSTALL_append +=3D " glibc glibc-dev "</div>
<div>IMAGE_INSTALL_append +=3D " glibc-staticdev "</div>
<div>EXTRA_IMAGE_FEATURES +=3D "tools-sdk"</div>
<div>EXTRA_IMAGE_FEATURES +=3D "dev-pkgs"</div>
<div>SDKIMAGE_FEATURES_append =3D " staticdev-pkgs "</div>
<div>&nbsp;</div>
<div>I am able to "bitbake core-image-minimal"&nbsp; and "bitbake core-ima=
ge-minimal -c populate_sdk" successfully.</div>
<div>&nbsp;</div>
<div>Then I added another code to handle root access...&nbsp; This code wa=
s built fine outside of yocto environment.</div>
<div>&nbsp;</div>
<div>Here is the recipe</div>
<div>**********************************************</div>
<div>LICENSE =3D "Apache-2.0"</div>
<div>LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/files/common-licenses/A=
pache-2.0;md5=3D89aea4e17d99a7cacdbeed46a0096b10"</div>
<div>&nbsp;</div>
<div>SRC_URI =3D "file://mdchroot-${PV}.tar.gz \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file://mcpbug-121262-bind_mo=
unting_resource_leak.patch \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file://mdchroot-make-depend.=
patch\</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file://mdchroot.spec \</div>
<div>"</div>
<div>&nbsp;</div>
<div>SRC_URI[md5sum] =3D "e84606060949ce161bae2a00ad8359fb"</div>
<div>SRC_URI[sha256sum] =3D "2a9801ca9ec9d3b120c13b61c0ed778d07adb4f75fe83=
57bc738dda9f8aa6dae"</div>
<div>&nbsp;</div>
<div>BBCLASSEXTEND =3D "native nativesdk"</div>
<div>inherit autotools</div>
<div>&nbsp;</div>
<div>do_compile () {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; # You will almost certainly need to add a=
dditional arguments here</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; cd ${S}</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; unset LDFLAGS CFLAGS CPPFLAGS</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; make OPTIMIZE=3D-O2 DEBUG=3D-g DEFINES=3D=
-D_GNU_SOURCE</div>
<div>}</div>
<div>**********************************************</div>
<div>&nbsp;</div>
<div>I tried to build "bitbake mdchroot-native"&nbsp; and it failed</div>
<div>&nbsp;</div>
<div>**********************************************</div>
<div>Initialising tasks: 100% |###########################################=
###########################################################################=
#########| Time: 0:00:00</div>
<div>Sstate summary: Wanted 1 Found 0 Missed 1 Current 8 (0% match, 88% co=
mplete)</div>
<div>NOTE: Executing SetScene Tasks</div>
<div>NOTE: Executing RunQueue Tasks</div>
<div>ERROR: mdchroot-native-0.7.4-r0 do_compile: Function failed: do_compi=
le (log file is located at /tmp/youhour/fips-build/fips-ppcnf/build/tmp/wor=
k/x86_64-linux/mdchroot-native/0.7.4-r0/temp/log.do_compile.30014)</div>
<div>ERROR: Logfile of failure stored in: /tmp/youhour/fips-build/fips-ppc=
nf/build/tmp/work/x86_64-linux/mdchroot-native/0.7.4-r0/temp/log.do_compile=
.30014</div>
<div>Log data follows:</div>
<div>| DEBUG: Executing shell function do_compile</div>
<div>| gcc -Wall -Werror -D_GNU_SOURCE -O2 -g -o src/mdchroot src/mdchroot=
.o src/mount_table.o src/mount.o src/roots.o -static</div>
<div><strong>| /tmp/youhour/fips-build/fips-ppcnf/build/tmp/hosttools/ld: =
cannot find -lc</strong></div>
<div><strong>| collect2: error: ld returned 1 exit status</strong></div>
<div>| make: *** [src/mdchroot] Error 1</div>
<div>| WARNING: /tmp/youhour/fips-build/fips-ppcnf/build/tmp/work/x86_64-l=
inux/mdchroot-native/0.7.4-r0/temp/run.do_compile.30014:1 exit 2 from 'make=
 OPTIMIZE=3D-O2 DEBUG=3D-g DEFINES=3D-D_GNU_SOURCE'</div>
<div>| ERROR: Function failed: do_compile (log file is located at /tmp/you=
hour/fips-build/fips-ppcnf/build/tmp/work/x86_64-linux/mdchroot-native/0.7.=
4-r0/temp/log.do_compile.30014)</div>
<div>ERROR: Task (virtual:native:/esw/san5/youhour/yocto_mcp/b20200123a/fi=
ps-build/meta-fips-dependencies/recipes-phosphor/mdchroot/mdchroot_0.7.4.bb=
:do_compile) failed with exit code '1'</div>
<div>NOTE: Tasks Summary: Attempted 63 tasks of which 62 didn't need to be=
 rerun and 1 failed.</div>
<div>&nbsp;</div>
<div>Summary: 1 task failed:</div>
<div>&nbsp; virtual:native:/esw/san5/youhour/yocto_mcp/b20200123a/fips-bui=
ld/meta-fips-dependencies/recipes-phosphor/mdchroot/mdchroot_0.7.4.bb:do_co=
mpile</div>
<div>Summary: There was 1 ERROR message shown, returning a non-zero exit c=
ode.</div>
<div>**********************************************</div>
<div>&nbsp;</div>
<div>Seemed like ld was not able to find the glibc static library.</div>
<div>Under the tmp/work directory&nbsp; I found these libraries.&nbsp; So,=
 it seems that the glibc static library is there.&nbsp;&nbsp;</div>
<div>*************************************************************</div>
<div>./x86_64-nativesdk-pokysdk-linux/gcc-cross-canadian-powerpc/8.3.0-r0/=
recipe-sysroot/usr/lib/libc.a</div>
<div>./x86_64-nativesdk-pokysdk-linux/gcc-cross-canadian-powerpc/8.3.0-r0/=
recipe-sysroot/opt/poky/2.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/libc.a<=
/div>
<div>./x86_64-nativesdk-pokysdk-linux/nativesdk-glibc/2.29-r0/build-x86_64=
-pokysdk-linux/libc.a</div>
<div>./x86_64-nativesdk-pokysdk-linux/nativesdk-glibc/2.29-r0/image/opt/po=
ky/2.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/libc.a</div>
<div>./x86_64-nativesdk-pokysdk-linux/nativesdk-glibc/2.29-r0/packages-spl=
it/nativesdk-glibc-staticdev/opt/poky/2.7.1/sysroots/x86_64-pokysdk-linux/u=
sr/lib/libc.a</div>
<div>./x86_64-nativesdk-pokysdk-linux/nativesdk-glibc/2.29-r0/sysroot-dest=
dir/opt/poky/2.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/libc.a</div>
<div>./x86_64-nativesdk-pokysdk-linux/nativesdk-glibc/2.29-r0/package/opt/=
poky/2.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/libc.a</div>
<div>./x86_64-nativesdk-pokysdk-linux/gdb-cross-canadian-powerpc/8.2.1-r0/=
recipe-sysroot/opt/poky/2.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/libc.a<=
/div>
<div>*************************************************************</div>
<div>&nbsp;</div>
<div>Any thought what I am missing in the conf/local.conf or in the recipe=
 file?</div>
<div>&nbsp;</div>
<div>Thank you in advance.</div>

--ROYI2euqJjajq2jmIb32--
