Return-Path: <logan.grosz@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4278C77B6E
	for <webhook@archiver.kernel.org>; Thu, 13 Apr 2023 15:49:43 +0000 (UTC)
Subject: Adding avr-gcc to an SDK #bitbake #avr #gcc #sdk
To: yocto@lists.yoctoproject.org
From: logan.grosz@gmail.com
X-Originating-Location: Rapid City, South Dakota, US (208.117.101.126)
X-Originating-Platform: Windows Firefox 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Apr 2023 08:49:39 -0700
Message-ID: <LBMA.1681400979666749347.cU24@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="T0rNtx6mF6KzG9bfrTQ3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Apr 2023 15:49:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59705

--T0rNtx6mF6KzG9bfrTQ3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using meta-microcontroller ( https://github.com/schnitzeltony/meta-mic=
rocontroller ) to build an AVR image at build-time. The target device will =
then image the microcontroller at runtime. I want to put the avr utilities =
into the produce yocto sdk to I can do development for the microcontroller =
with the same tools its final build will be made with. The meta layer alrea=
dy provides `-native` variants of the necessary recipes. I am attempting to=
 create `nativesdk-` variants for the necessary recipes.

I was successfully able to make `nativesdk-avr-binutils` by adding the foll=
owing line to the recipe:

```
BBCLASSEXTEND =3D+ "nativesdk"
```

I do the same to the `avr-gcc` recipe, but I get the following compile erro=
r when I `bitbake nativesdk-avr-gcc`:

```
g++: error: unrecognized command line option =E2=80=98-fmacro-prefix-map=3D=
...
```

`avr-binutils` builds just fine with the same command line options accordin=
g to `run.do_compile`, so I feel like the issue has to reside in the `avr-g=
cc` recipe.

```meta-microcontroller/recipes-avr/avr-gcc/avr-gcc_8.4.0.bb
SUMMARY =3D "GNU compiler for Microchip (formerly Atmel) AVR microcontrolle=
rs"
HOMEPAGE =3D "http://www.gnu.org/software/gcc/"
SECTION =3D "devel"
LICENSE =3D "GPLv2+"

LIC_FILES_CHKSUM =3D "\
file://COPYING;md5=3D59530bdf33659b29e73d4adb9f9f6552 \
file://COPYING3;md5=3Dd32239bcb673463ab874e80d47fae504 \
file://COPYING3.LIB;md5=3D6a6a8e020838b23406c81b19c1d46df6 \
file://COPYING.LIB;md5=3D2d5025d4aa3495befef8f17206a5b0a1 \
file://COPYING.RUNTIME;md5=3Dfe60d87048567d4fe8c8a0ed2448bcc8 \
"

inherit autotools gettext texinfo

BBCLASSEXTEND =3D "native nativesdk"

DEPENDS =3D " \
avr-binutils \
zlib \
gawk \
gmp \
mpfr \
libmpc \
flex \
"
DEPENDS_append_class-target =3D " ${BPN}-native"

PE =3D "1"

SRC_URI =3D "https://ftp.gnu.org/gnu/gcc/gcc-${PV}/gcc-${PV}.tar.xz"
SRC_URI[md5sum] =3D "bb815a8e3b7be43c4a26fa89dbbd9795"
SRC_URI[sha256sum] =3D "e30a6e52d10e1f27ed55104ad233c30bd1e99cfb5ff98ab022d=
c941edd1b2dd4"

S =3D "${WORKDIR}/gcc-${PV}"

EXTRA_OECONF =3D " \
--target=3Davr \
--program-prefix=3Davr- \
--enable-languages=3Dc,c++ \
--enable-c99 \
--enable-long-long \
--disable-bootstrap \
--disable-libmudflap \
--with-system-zlib \
--with-build-sysroot=3D${STAGING_DIR_TARGET} \
"

EXTRA_OECONF_append_class-target =3D " \
--with-gnu-as \
--with-gnu-ld \
--with-as=3D${STAGING_BINDIR_NATIVE}/avr-as \
--with-ld=3D${STAGING_BINDIR_NATIVE}/avr-ld \
"

export AR_FOR_TARGET =3D "avr-ar"
export AS_FOR_TARGET =3D "avr-as"
export DLLTOOL_FOR_TARGET =3D "avr-dlltool"
export CC_FOR_TARGET =3D "avr-gcc"
export CXX_FOR_TARGET =3D "avr-g++"
export GCC_FOR_TARGET =3D "avr-gcc"
export LD_FOR_TARGET =3D "avr-ld"
export LIPO_FOR_TARGET =3D "avr-lipo"
export NM_FOR_TARGET =3D "avr-nm"
export OBJDUMP_FOR_TARGET =3D "avr-objdump"
export RANLIB_FOR_TARGET =3D "avr-ranlib"
export STRIP_FOR_TARGET =3D "avr-strip"
export WINDRES_FOR_TARGET =3D "avr-windres"

do_configure_preend_class-target() {
# broken libtool here - stolen from oe-core gcc-source.inc
#sed -i -e 's/hardcode_into_libs=3Dyes/hardcode_into_libs=3Dno/' ${S}/libcc=
1/configure
}

do_configure() {
(cd ${S} && gnu-configize)

oe_runconf
}

do_install_append() {
# fix some host contamination - TBD: fix properly
for file in `find ${D}/${libdir}/gcc/avr/${PV}/include`; do
chown root:root $file
done
for file in `find ${D}/${libdir}/gcc/avr/${PV}/include-fixed`; do
chown root:root $file
done

# remove some files conflicting with target utils
rm -rf ${D}/${datadir}/locale
rm -rf ${D}/${datadir}/info
rm -rf ${D}/${datadir}/man/man7
}

FILES_${PN} +=3D "${libdir}/gcc/avr"

FILES_${PN}-staticdev +=3D " \
${libdir}/gcc/avr/${PV}/*.a \
${libdir}/gcc/avr/${PV}/*/*.a \
${libdir}/gcc/avr/${PV}/*/*/*.a \
"

# as long as there is no other libc we can pin avr-libc
RDEPENDS_${PN}_class-target +=3D " \
${PN}-staticdev \
avr-libc \
"

INSANE_SKIP_${PN} =3D "dev-so"
```

I feel like there's some funny-business in the dependencies that may be mes=
sing thing up, but I am not familiar enough with `-native`, and `nativesdk-=
` variants to say what's wrong.

Thank you,
Logan

--T0rNtx6mF6KzG9bfrTQ3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I am using <a href=3D"https://github.com/schnitzeltony/meta-=
microcontroller" target=3D"_blank" rel=3D"noopener">meta-microcontroller</a=
> to build an AVR image at build-time. The target device will then image th=
e microcontroller at runtime. I want to put the avr utilities into the prod=
uce yocto sdk to I can do development for the microcontroller with the same=
 tools its final build will be made with. The meta layer already provides `=
-native` variants of the necessary recipes. I am attempting to create `nati=
vesdk-` variants for the necessary recipes.<br /><br />I was successfully a=
ble to make `nativesdk-avr-binutils` by adding the following line to the re=
cipe:<br /><br />```<br />BBCLASSEXTEND =3D+ "nativesdk"<br />```<br /><br =
/>I do the same to the `avr-gcc` recipe, but I get the following compile er=
ror when I `bitbake nativesdk-avr-gcc`:<br /><br />```<br />g++: error: unr=
ecognized command line option &lsquo;-fmacro-prefix-map=3D...<br />```<br /=
><br />`avr-binutils` builds just fine with the same command line options a=
ccording to `run.do_compile`, so I feel like the issue has to reside in the=
 `avr-gcc` recipe.<br /><br />```meta-microcontroller/recipes-avr/avr-gcc/a=
vr-gcc_8.4.0.bb<br />SUMMARY =3D "GNU compiler for Microchip (formerly Atme=
l) AVR microcontrollers"<br />HOMEPAGE =3D "http://www.gnu.org/software/gcc=
/"<br />SECTION =3D "devel"<br />LICENSE =3D "GPLv2+"<br /><br />LIC_FILES_=
CHKSUM =3D "\<br />&nbsp;&nbsp;&nbsp; file://COPYING;md5=3D59530bdf33659b29=
e73d4adb9f9f6552 \<br />&nbsp;&nbsp;&nbsp; file://COPYING3;md5=3Dd32239bcb6=
73463ab874e80d47fae504 \<br />&nbsp;&nbsp;&nbsp; file://COPYING3.LIB;md5=3D=
6a6a8e020838b23406c81b19c1d46df6 \<br />&nbsp;&nbsp;&nbsp; file://COPYING.L=
IB;md5=3D2d5025d4aa3495befef8f17206a5b0a1 \<br />&nbsp;&nbsp;&nbsp; file://=
COPYING.RUNTIME;md5=3Dfe60d87048567d4fe8c8a0ed2448bcc8 \<br />"<br /><br />=
inherit autotools gettext texinfo<br /><br />BBCLASSEXTEND =3D "native nati=
vesdk"<br /><br />DEPENDS =3D " \<br />&nbsp;&nbsp;&nbsp; avr-binutils \<br=
 />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; zlib \<br />&nbsp;&nbsp;&nbsp=
; gawk \<br />&nbsp;&nbsp;&nbsp; gmp \<br />&nbsp;&nbsp;&nbsp; mpfr \<br />=
&nbsp;&nbsp;&nbsp; libmpc \<br />&nbsp;&nbsp;&nbsp; flex \<br />"<br />DEPE=
NDS_append_class-target =3D " ${BPN}-native"<br /><br />PE =3D "1"<br /><br=
 />SRC_URI =3D "https://ftp.gnu.org/gnu/gcc/gcc-${PV}/gcc-${PV}.tar.xz"<br =
/>SRC_URI[md5sum] =3D "bb815a8e3b7be43c4a26fa89dbbd9795"<br />SRC_URI[sha25=
6sum] =3D "e30a6e52d10e1f27ed55104ad233c30bd1e99cfb5ff98ab022dc941edd1b2dd4=
"<br /><br />S =3D "${WORKDIR}/gcc-${PV}"<br /><br />EXTRA_OECONF =3D " \<b=
r />&nbsp;&nbsp;&nbsp; --target=3Davr \<br />&nbsp;&nbsp;&nbsp; --program-p=
refix=3Davr- \<br />&nbsp;&nbsp;&nbsp; --enable-languages=3Dc,c++ \<br />&n=
bsp;&nbsp;&nbsp; --enable-c99 \<br />&nbsp;&nbsp;&nbsp; --enable-long-long =
\<br />&nbsp;&nbsp;&nbsp; --disable-bootstrap \<br />&nbsp;&nbsp;&nbsp; --d=
isable-libmudflap \<br />&nbsp;&nbsp;&nbsp; --with-system-zlib \<br />&nbsp=
;&nbsp;&nbsp; --with-build-sysroot=3D${STAGING_DIR_TARGET} \<br />"<br /><b=
r />EXTRA_OECONF_append_class-target =3D " \<br />&nbsp;&nbsp;&nbsp; --with=
-gnu-as \<br />&nbsp;&nbsp;&nbsp; --with-gnu-ld \<br />&nbsp;&nbsp;&nbsp; -=
-with-as=3D${STAGING_BINDIR_NATIVE}/avr-as \<br />&nbsp;&nbsp;&nbsp; --with=
-ld=3D${STAGING_BINDIR_NATIVE}/avr-ld \<br />"<br /><br />export AR_FOR_TAR=
GET =3D "avr-ar"<br />export AS_FOR_TARGET =3D "avr-as"<br />export DLLTOOL=
_FOR_TARGET =3D "avr-dlltool"<br />export CC_FOR_TARGET =3D "avr-gcc"<br />=
export CXX_FOR_TARGET =3D "avr-g++"<br />export GCC_FOR_TARGET =3D "avr-gcc=
"<br />export LD_FOR_TARGET =3D "avr-ld"<br />export LIPO_FOR_TARGET =3D "a=
vr-lipo"<br />export NM_FOR_TARGET =3D "avr-nm"<br />export OBJDUMP_FOR_TAR=
GET =3D "avr-objdump"<br />export RANLIB_FOR_TARGET =3D "avr-ranlib"<br />e=
xport STRIP_FOR_TARGET =3D "avr-strip"<br />export WINDRES_FOR_TARGET =3D "=
avr-windres"<br /><br />do_configure_preend_class-target() {<br />&nbsp;&nb=
sp;&nbsp; # broken libtool here - stolen from oe-core gcc-source.inc<br />&=
nbsp;&nbsp;&nbsp; #sed -i -e 's/hardcode_into_libs=3Dyes/hardcode_into_libs=
=3Dno/' ${S}/libcc1/configure<br />}<br /><br />do_configure() {<br />&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (cd ${S} &amp;&amp; gnu-configize)<br=
 /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oe_runconf<br />}<br />=
<br />do_install_append() {<br />&nbsp;&nbsp;&nbsp; # fix some host contami=
nation - TBD: fix properly<br />&nbsp;&nbsp;&nbsp; for file in `find ${D}/$=
{libdir}/gcc/avr/${PV}/include`; do<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; chown root:root $file<br />&nbsp;&nbsp;&nbsp; done<br />&nbsp;&nbs=
p;&nbsp; for file in `find ${D}/${libdir}/gcc/avr/${PV}/include-fixed`; do<=
br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chown root:root $file<br />=
&nbsp;&nbsp;&nbsp; done<br /><br />&nbsp;&nbsp;&nbsp; # remove some files c=
onflicting with target utils<br />&nbsp;&nbsp;&nbsp; rm -rf ${D}/${datadir}=
/locale<br />&nbsp;&nbsp;&nbsp; rm -rf ${D}/${datadir}/info<br />&nbsp;&nbs=
p;&nbsp; rm -rf ${D}/${datadir}/man/man7<br />}<br /><br />FILES_${PN} +=3D=
 "${libdir}/gcc/avr"<br /><br />FILES_${PN}-staticdev +=3D " \<br />&nbsp;&=
nbsp;&nbsp; ${libdir}/gcc/avr/${PV}/*.a \<br />&nbsp;&nbsp;&nbsp; ${libdir}=
/gcc/avr/${PV}/*/*.a \<br />&nbsp;&nbsp;&nbsp; ${libdir}/gcc/avr/${PV}/*/*/=
*.a \<br />"<br /><br /># as long as there is no other libc we can pin avr-=
libc<br />RDEPENDS_${PN}_class-target +=3D " \<br />&nbsp;&nbsp;&nbsp; ${PN=
}-staticdev \<br />&nbsp;&nbsp;&nbsp; avr-libc \<br />"<br /><br />INSANE_S=
KIP_${PN} =3D "dev-so"<br />```<br /><br />I feel like there's some funny-b=
usiness in the dependencies that may be messing thing up, but I am not fami=
liar enough with `-native`, and `nativesdk-` variants to say what's wrong.<=
br /><br />Thank you,<br />Logan

--T0rNtx6mF6KzG9bfrTQ3--

