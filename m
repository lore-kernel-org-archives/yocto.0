Subject: ninja: error: unknown target 'install' #yocto #toolchain #linux
To: yocto@lists.yoctoproject.org
From: vijayrakeshmunganda@gmail.com
X-Originating-Location: IN (164.164.95.9)
X-Originating-Platform: Windows Chrome 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 03 Dec 2020 04:04:25 -0800
Message-ID: <azPN.1606997065987956361.x09I@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="2vy83DtpNjIHjWOBJKqx"

--2vy83DtpNjIHjWOBJKqx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I had written a bitbake file to download and install AWS SDK C from GitHub=
 https://github.com/aws/aws-iot-device-sdk-embedded-C based on existing rec=
ipes https://github.com/aws/meta-aws, ( https://github.com/aws/meta-aws ) b=
ut I'm getting an error as "ninja: error: unknown target 'install'". Kindly=
 please help me to solve the issue.

Log data follows:
| DEBUG: Executing python function extend_recipe_sysroot
| NOTE: Direct dependencies are ['virtual:native:/home/bl-docker/rity/src/=
poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot', 'virt=
ual:native:/home/bl-docker/rity/src/poky/meta/recipes-devtools/ninja/ninja_=
1.10.0.bb:do_populate_sysroot', 'virtual:native:/home/bl-docker/rity/src/po=
ky/meta/recipes-devtools/patch/patch_2.7.6.bb:do_populate_sysroot', '/home/=
bl-docker/rity/src/poky/meta/recipes-devtools/gcc/gcc-cross_9.3.bb:do_popul=
ate_sysroot', '/home/bl-docker/rity/src/poky/meta/recipes-devtools/cmake/cm=
ake-native_3.16.5.bb:do_populate_sysroot', '/home/bl-docker/rity/src/poky/m=
eta/recipes-connectivity/openssl/openssl_1.1.1g.bb:do_populate_sysroot', '/=
home/bl-docker/rity/src/poky/../meta-mediatek-bsp/recipes-connectivity/mosq=
uitto/mosquitto_1.6.12.bb:do_populate_sysroot', '/home/bl-docker/rity/src/p=
oky/meta/recipes-core/glibc/glibc_2.31.bb:do_populate_sysroot', '/home/bl-d=
ocker/rity/src/poky/meta/recipes-devtools/quilt/quilt-native_0.66.bb:do_pop=
ulate_sysroot', '/home/bl-docker/rity/src/poky/meta/recipes-devtools/gcc/gc=
c-runtime_9.3.bb:do_populate_sysroot']
| NOTE: Installed into sysroot: []
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_install
| NOTE: DESTDIR=3D/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/aws=
/1.0-r0/image VERBOSE=3D1 cmake --build /home/bl-docker/rity/bsp/tmp/work/a=
arch64-poky-linux/aws/1.0-r0/build --target install --
| [0/2] /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/aws/1.0-r0/re=
cipe-sysroot-native/usr/bin/cmake -P /home/bl-docker/rity/bsp/tmp/work/aarc=
h64-poky-linux/aws/1.0-r0/build/CMakeFiles/VerifyGlobs.cmake
| ninja: error: unknown target 'install'
| WARNING: /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/aws/1.0-r0=
/temp/run.do_install.17379:1 exit 1 from 'eval ${DESTDIR:+DESTDIR=3D${DESTD=
IR} }VERBOSE=3D1 cmake --build '/home/bl-docker/rity/bsp/tmp/work/aarch64-p=
oky-linux/aws/1.0-r0/build' "$@" -- ${EXTRA_OECMAKE_BUILD}'
| ERROR: Execution of '/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linu=
x/aws/1.0-r0/temp/run.do_install.17379' failed with exit code 1:
| [0/2] /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/aws/1.0-r0/re=
cipe-sysroot-native/usr/bin/cmake -P /home/bl-docker/rity/bsp/tmp/work/aarc=
h64-poky-linux/aws/1.0-r0/build/CMakeFiles/VerifyGlobs.cmake
| ninja: error: unknown target 'install'
| WARNING: /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/aws/1.0-r0=
/temp/run.do_install.17379:1 exit 1 from 'eval ${DESTDIR:+DESTDIR=3D${DESTD=
IR} }VERBOSE=3D1 cmake --build '/home/bl-docker/rity/bsp/tmp/work/aarch64-p=
oky-linux/aws/1.0-r0/build' "$@" -- ${EXTRA_OECMAKE_BUILD}'
|
ERROR: Task (/home/bl-docker/rity/src/meta-application/recipes-aws/aws/aws=
_1.0.bb:do_install) failed with exit code '1'

Recipe File:
SUMMARY =3D "AWS IoT Device SDK for Embedded C"
DESCRIPTION =3D "The AWS IoT Device SDK for C provides MQTT APIs for Embed=
ded C applications"
HOMEPAGE =3D "https://github.com/aws/aws-iot-device-sdk-embedded-C"
LICENSE =3D "Apache-2.0"

inherit cmake

LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dc8c19afab7f99fb196c9287cbd60a25=
8"

BRANCH ?=3D "main"

SRC_URI =3D "git://github.com/aws/aws-iot-device-sdk-embedded-C;branch=3D$=
{BRANCH};name=3Daws-iot-device-sdk-embedded-C"
SRCREV =3D "${AUTOREV}"

S=3D "${WORKDIR}/git"

do_configure_prepend() {
cd ${S}
git submodule update --init --recursive
}

DEPENDS =3D "openssl mosquitto"
CFLAGS_append =3D " -Wl,-Bsymbolic"

EXTRA_OECMAKE +=3D "-DBUILD_DEPS=3DON"
EXTRA_OECMAKE +=3D "-DBUILD_SHARED_LIBS=3D1"
EXTRA_OECMAKE +=3D "-DCMAKE_BUILD_TYPE=3DRelease"
EXTRA_OECMAKE +=3D "-DCMAKE_INSTALL_PREFIX=3D$D/usr"
OECMAKE_BUILDPATH +=3D "${WORKDIR}/build"
OECMAKE_SOURCEPATH +=3D "${S}"

FILES_${PN} +=3D "${libdir}/*1.0.0"
FILES_${PN} +=3D "${libdir}/libbackoff_algorithm.so"
FILES_${PN} +=3D "${libdir}/libcore_http_client.so"
FILES_${PN} +=3D "${libdir}/libcore_json.so"
FILES_${PN} +=3D "${libdir}/libcore_mqtt.so"
FILES_${PN} +=3D "${libdir}/libcore_mqtt_serializer.so"
FILES_${PN} +=3D "${libdir}/libcore_mqtt_state.so"
FILES_${PN} +=3D "${libdir}/libcore_pkcs11.so"
FILES_${PN} +=3D "${libdir}/libcore_pki_utils.so"
FILES_${PN} +=3D "${libdir}/libcore_pkcs11_pal.so"

PACKAGES =3D "${PN}"
INSANE_SKIP_${PN} +=3D "installed-vs-shipped"
BBCLASSEXTEND =3D "native nativesdk"

Thanks & Regards,
Vijay Rakesh

--2vy83DtpNjIHjWOBJKqx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br /><br />I had written a bitbake file to download and install AWS=
 SDK C from GitHub <a href=3D"https://github.com/aws/aws-iot-device-sdk-emb=
edded-C" target=3D"_blank" rel=3D"noopener">https://github.com/aws/aws-iot-=
device-sdk-embedded-C</a>&nbsp;based on existing recipes <a href=3D"https:/=
/github.com/aws/meta-aws" target=3D"_blank" rel=3D"noopener">https://github=
.com/aws/meta-aws,</a>&nbsp;but I'm getting an error as "ninja: error: unkn=
own target 'install'". Kindly please help me to solve the issue.<br /><br /=
>
<div>Log data follows:</div>
<div>| DEBUG: Executing python function extend_recipe_sysroot</div>
<div>| NOTE: Direct dependencies are ['virtual:native:/home/bl-docker/rity=
/src/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot', =
'virtual:native:/home/bl-docker/rity/src/poky/meta/recipes-devtools/ninja/n=
inja_1.10.0.bb:do_populate_sysroot', 'virtual:native:/home/bl-docker/rity/s=
rc/poky/meta/recipes-devtools/patch/patch_2.7.6.bb:do_populate_sysroot', '/=
home/bl-docker/rity/src/poky/meta/recipes-devtools/gcc/gcc-cross_9.3.bb:do_=
populate_sysroot', '/home/bl-docker/rity/src/poky/meta/recipes-devtools/cma=
ke/cmake-native_3.16.5.bb:do_populate_sysroot', '/home/bl-docker/rity/src/p=
oky/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb:do_populate_sysroot=
', '/home/bl-docker/rity/src/poky/../meta-mediatek-bsp/recipes-connectivity=
/mosquitto/mosquitto_1.6.12.bb:do_populate_sysroot', '/home/bl-docker/rity/=
src/poky/meta/recipes-core/glibc/glibc_2.31.bb:do_populate_sysroot', '/home=
/bl-docker/rity/src/poky/meta/recipes-devtools/quilt/quilt-native_0.66.bb:d=
o_populate_sysroot', '/home/bl-docker/rity/src/poky/meta/recipes-devtools/g=
cc/gcc-runtime_9.3.bb:do_populate_sysroot']</div>
<div>| NOTE: Installed into sysroot: []</div>
<div>| DEBUG: Python function extend_recipe_sysroot finished</div>
<div>| DEBUG: Executing shell function do_install</div>
<div>| NOTE: DESTDIR=3D/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linu=
x/aws/1.0-r0/image VERBOSE=3D1 cmake --build /home/bl-docker/rity/bsp/tmp/w=
ork/aarch64-poky-linux/aws/1.0-r0/build --target install --</div>
<div>| [0/2] /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/aws/1.0-=
r0/recipe-sysroot-native/usr/bin/cmake -P /home/bl-docker/rity/bsp/tmp/work=
/aarch64-poky-linux/aws/1.0-r0/build/CMakeFiles/VerifyGlobs.cmake</div>
<div>| ninja: error: unknown target 'install'</div>
<div>| WARNING: /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/aws/1=
.0-r0/temp/run.do_install.17379:1 exit 1 from 'eval ${DESTDIR:+DESTDIR=3D${=
DESTDIR} }VERBOSE=3D1 cmake --build '/home/bl-docker/rity/bsp/tmp/work/aarc=
h64-poky-linux/aws/1.0-r0/build' "$@" -- ${EXTRA_OECMAKE_BUILD}'</div>
<div>| ERROR: Execution of '/home/bl-docker/rity/bsp/tmp/work/aarch64-poky=
-linux/aws/1.0-r0/temp/run.do_install.17379' failed with exit code 1:</div>
<div>| [0/2] /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/aws/1.0-=
r0/recipe-sysroot-native/usr/bin/cmake -P /home/bl-docker/rity/bsp/tmp/work=
/aarch64-poky-linux/aws/1.0-r0/build/CMakeFiles/VerifyGlobs.cmake</div>
<div>| ninja: error: unknown target 'install'</div>
<div>| WARNING: /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/aws/1=
.0-r0/temp/run.do_install.17379:1 exit 1 from 'eval ${DESTDIR:+DESTDIR=3D${=
DESTDIR} }VERBOSE=3D1 cmake --build '/home/bl-docker/rity/bsp/tmp/work/aarc=
h64-poky-linux/aws/1.0-r0/build' "$@" -- ${EXTRA_OECMAKE_BUILD}'</div>
<div>|</div>
<div>ERROR: Task (/home/bl-docker/rity/src/meta-application/recipes-aws/aw=
s/aws_1.0.bb:do_install) failed with exit code '1'<br /><br />Recipe File:<=
br />
<div>SUMMARY =3D "AWS IoT Device SDK for Embedded C"</div>
<div>DESCRIPTION =3D "The AWS IoT Device SDK for C provides MQTT APIs for =
Embedded C applications"</div>
<div>HOMEPAGE =3D "https://github.com/aws/aws-iot-device-sdk-embedded-C"</=
div>
<div>LICENSE =3D "Apache-2.0"</div>
<div>&nbsp;</div>
<div>inherit cmake</div>
<div>&nbsp;</div>
<div>LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dc8c19afab7f99fb196c9287cbd=
60a258"</div>
<div>&nbsp;</div>
<div>BRANCH ?=3D "main"</div>
<div>&nbsp;</div>
<div>SRC_URI =3D "git://github.com/aws/aws-iot-device-sdk-embedded-C;branc=
h=3D${BRANCH};name=3Daws-iot-device-sdk-embedded-C"</div>
<div>SRCREV =3D "${AUTOREV}"</div>
<div>&nbsp;</div>
<div>S=3D "${WORKDIR}/git"</div>
<div>&nbsp;</div>
<div>do_configure_prepend() {</div>
<div>&nbsp; cd ${S}</div>
<div>&nbsp; git submodule update --init --recursive</div>
<div>}</div>
<div>&nbsp;</div>
<div>DEPENDS =3D "openssl mosquitto"</div>
<div>CFLAGS_append =3D " -Wl,-Bsymbolic"</div>
<div>&nbsp;</div>
<div>EXTRA_OECMAKE +=3D "-DBUILD_DEPS=3DON"</div>
<div>EXTRA_OECMAKE +=3D "-DBUILD_SHARED_LIBS=3D1"</div>
<div>EXTRA_OECMAKE +=3D "-DCMAKE_BUILD_TYPE=3DRelease"</div>
<div>EXTRA_OECMAKE +=3D "-DCMAKE_INSTALL_PREFIX=3D$D/usr"</div>
<div>OECMAKE_BUILDPATH +=3D "${WORKDIR}/build"</div>
<div>OECMAKE_SOURCEPATH +=3D "${S}"</div>
<div>&nbsp;</div>
<div>FILES_${PN} +=3D "${libdir}/*1.0.0"</div>
<div>FILES_${PN} +=3D "${libdir}/libbackoff_algorithm.so"</div>
<div>FILES_${PN} +=3D "${libdir}/libcore_http_client.so"</div>
<div>FILES_${PN} +=3D "${libdir}/libcore_json.so"</div>
<div>FILES_${PN} +=3D "${libdir}/libcore_mqtt.so"</div>
<div>FILES_${PN} +=3D "${libdir}/libcore_mqtt_serializer.so"</div>
<div>FILES_${PN} +=3D "${libdir}/libcore_mqtt_state.so"</div>
<div>FILES_${PN} +=3D "${libdir}/libcore_pkcs11.so"</div>
<div>FILES_${PN} +=3D "${libdir}/libcore_pki_utils.so"</div>
<div>FILES_${PN} +=3D "${libdir}/libcore_pkcs11_pal.so"</div>
<div>&nbsp;</div>
<div>PACKAGES =3D "${PN}"</div>
<div>INSANE_SKIP_${PN} +=3D "installed-vs-shipped"</div>
<div>BBCLASSEXTEND =3D "native nativesdk"</div>
<br />Thanks &amp; Regards,<br />Vijay Rakesh</div>

--2vy83DtpNjIHjWOBJKqx--
