Subject: Building U-Boot 2014.10 in Poky Thud 2.6 do_compile failing tools/mkimage #uboot #yocto
To: yocto@lists.yoctoproject.org
From: "Jeff Schuler" <jschuler16@gmail.com>
X-Originating-Location: Oakland, California, US (67.188.227.71)
X-Originating-Platform: Linux Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 10 Feb 2021 17:12:07 -0800
Message-ID: <8HLL.1613005927849865837.6TvG@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="M4E1JT3FIlVtJS5tda5c"

--M4E1JT3FIlVtJS5tda5c
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello!

I've recently started porting my recipes from Poky Jethro 2.0 to Poky Thud=
 2.6, and am having an issue building U-Boot. I've read through each stage =
of the migration guide https://yoctoproject.org/docs/2.6/ref-manual/ref-man=
ual.html#moving-to-the-yocto-project-2.6-release and made several changes, =
but can't seem to figure this one out.

do_compile is failing target tools, something to do with dtc-native is my =
theory. Command I'm running:=C2=A0bitbake -fc compile virtual/bootloader

Here's a snippet of the failure:

>=20
> | In file included from
> /home/jschuler/yocto/poky-thud-2.6/builds/board-sensor-chevy/tmp/work/bo=
ard_sensor_chevy-poky-linux-gnueabi/u-boot-custom-socfpga/2014.10.20-r0/git=
/tools/fdt_host.h:11:0,
>=20
> |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from
> /home/jschuler/yocto/poky-thud-2.6/builds/board-sensor-chevy/tmp/work/bo=
ard_sensor_chevy-poky-linux-gnueabi/u-boot-custom-socfpga/2014.10.20-r0/git=
/tools/mkimage.h:22,
>=20
> |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from
> /home/jschuler/yocto/poky-thud-2.6/builds/board-sensor-chevy/tmp/work/bo=
ard_sensor_chevy-poky-linux-gnueabi/u-boot-custom-socfpga/2014.10.20-r0/git=
/tools/mkimage.c:11:
>=20
> |
> /home/jschuler/yocto/poky-thud-2.6/builds/board-sensor-chevy/tmp/work/bo=
ard_sensor_chevy-poky-linux-gnueabi/u-boot-custom-socfpga/2014.10.20-r0/git=
/tools/../include/libfdt.h:1442:19:
> note: previous definition of 'fdt_appendprop_cell' was here
> |=C2=A0 static inline int fdt_appendprop_cell(void *fdt, int nodeoffset,
> |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^=
~~~~~~~~~~~~~~~~~~
> | scripts/Makefile.host:134: recipe for target 'tools/mkimage.o' failed
> | make[2]: *** [tools/mkimage.o] Error 1
> |
> /home/jschuler/yocto/poky-thud-2.6/builds/board-sensor-chevy/tmp/work/bo=
ard_sensor_chevy-poky-linux-gnueabi/u-boot-custom-socfpga/2014.10.20-r0/git=
/Makefile:1038:
> recipe for target 'tools' failed
> | make[1]: *** [tools] Error 2
> | Makefile:134: recipe for target 'sub-make' failed
> | make: *** [sub-make] Error 2
> | make: Leaving directory
> '/home/jschuler/yocto/poky-thud-2.6/builds/board-sensor-chevy/tmp/work/b=
oard_sensor_chevy-poky-linux-gnueabi/u-boot-custom-socfpga/2014.10.20-r0/gi=
t'
>=20
> | ERROR: oe_runmake failed
>=20

Does anyone know what the problem may be here? Please let me know if I sho=
uld include complete recipes or logs, happy to do so!

U-Boot recipe:=C2=A0=C2=A0recipes-bsp/u-boot/u-boot-custom-socfpga_2014.10=
.20.bb

>=20
> require u-boot-custom-socfpga.inc
>=20
> SRC_URI =3D " \
> git://github.com/altera-opensource/u-boot-socfpga.git;tag=3Drel_socfpga_=
v2014.10_arria10_bringup_20.07.02_pr;nobranch=3D1
> \
> "
>=20
> SRC_URI_append_board-sensor-chevy =3D " \
> file://board-sensor-chevy/0001-chevy-sensor-support-files-2021.patch \
> file://board-sensor-chevy/0002-Add-environment-overrride-for-F2H-SDRAM2-=
bridge-init.patch
> \
> "
>=20
> S =3D "${WORKDIR}/git"
> LIC_FILES_CHKSUM =3D
> "file://Licenses/README;md5=3Dc7383a594871c03da76b3707929d2919"
> COMPATIBLE_MACHINE =3D "(board-sensor-chevy)"
>=20

The .inc file that recipe includes has this in it:

>=20
> # Leverage Yocto's existing U-Boot support
> require recipes-bsp/u-boot/u-boot.inc
>=20
> # Apply patches with Git to make it easier to make updates from within a
> # devshell and bring them back into this recipe as properly-formatted
> patches
> PATCHTOOL =3D "git"
>=20
> DEPENDS +=3D "dtc-native"
> PROVIDES +=3D "u-boot"
>=20
> COMPATIBLE_MACHINE ?=3D "(board-sensor-chevy)"
> UBOOT_SUFFIX ?=3D "img"
> LICENSE =3D "GPLv2 & LGPLv2 & BSD & MIT"
>=20

Plus a couple do_compile_append() and do_deploy_append() operations.

Here is a snippet from the meta u-boot.inc that the recipe is leveraging v=
ia include:

>=20
> SUMMARY =3D "Universal Boot Loader for embedded devices"
> PROVIDES =3D "virtual/bootloader"
>=20
> B =3D "${WORKDIR}/build"
>=20
> PACKAGE_ARCH =3D "${MACHINE_ARCH}"
>=20
> inherit uboot-config uboot-extlinux-config uboot-sign deploy
>=20
> DEPENDS +=3D "swig-native python-native"
>=20
> EXTRA_OEMAKE =3D 'CROSS_COMPILE=3D${TARGET_PREFIX} CC=3D"${TARGET_PREFIX=
}gcc
> ${TOOLCHAIN_OPTIONS}" V=3D1'
> EXTRA_OEMAKE +=3D 'HOSTCC=3D"${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS=
}"'
> EXTRA_OEMAKE +=3D 'PYTHON=3Dnativepython
> STAGING_INCDIR=3D${STAGING_INCDIR_NATIVE}
> STAGING_LIBDIR=3D${STAGING_LIBDIR_NATIVE}'
>=20
>=20
>=20
>=20

Build info:

Poky Thud Commit:=C2=A0e52122a3e6912575ff401a4af6ac1bf3070092bc
Target OS: 32b ARM Arria 10 SoC
Build Host OS: Ubuntu 18.04.4 x86

Build Host OS python versions present:

>=20
> jschuler@kuro2:~/yocto/poky-thud-2.6$ python --version
> Python 2.7.17
> jschuler@kuro2:~/yocto/poky-thud-2.6$ python3 --version
> Python 3.6.9
> jschuler@kuro2:~/yocto/poky-thud-2.6$ python3.8 --version
> Python 3.8.0
>=20

I've tried every combination of messing with the DEPENDS +=3D values and f=
eel like this has something to do with dtc-native?

>=20
> xxxxxx:~/yocto/poky-thud-2.6/builds/board-sensor-chevy/tmp/work/board-se=
nsor-chevy-poky-linux-gnueabi/u-boot-custom-socfpga/2014.10.20-r0$
> l
> board-sensor-chevy/=C2=A0 build/=C2=A0 configure.sstate=C2=A0 git/=C2=A0=
 recipe-sysroot/=C2=A0
> recipe-sysroot-native/=C2=A0 temp/
>=20

The two directories shown above recipe-sysroot and recipe-sysroot-native s=
eem to be present in this build's workdir but were not present when I was b=
uilding this in Jethro, so perhaps there's something there.

Does anyone know what might be causing my bitbake tools to be referencing =
two different fdt tool header files?

Thank you very much for your thoughts.

--M4E1JT3FIlVtJS5tda5c
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello!<br /><br />I've recently started porting my recipes from Poky Jethro=
 2.0 to Poky Thud 2.6, and am having an issue building U-Boot. I've read th=
rough each stage of the migration guide <a href=3D"https://yoctoproject.org=
/docs/2.6/ref-manual/ref-manual.html#moving-to-the-yocto-project-2.6-releas=
e" target=3D"_blank" rel=3D"noopener">https://yoctoproject.org/docs/2.6/ref=
-manual/ref-manual.html#moving-to-the-yocto-project-2.6-release</a>&nbsp;an=
d made several changes, but can't seem to figure this one out.&nbsp;<br /><=
br />do_compile is failing target tools, something to do with dtc-native is=
 my theory. Command I'm running:&nbsp;bitbake -fc compile virtual/bootloade=
r<br /><br />Here's a snippet of the failure:<br />
<div><br />
<blockquote>
<div>| In file included from /home/jschuler/yocto/poky-thud-2.6/builds/boa=
rd-sensor-chevy/tmp/work/board_sensor_chevy-poky-linux-gnueabi/u-boot-custo=
m-socfpga/2014.10.20-r0/git/tools/fdt_host.h:11:0,</div>
<div>|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; from =
/home/jschuler/yocto/poky-thud-2.6/builds/board-sensor-chevy/tmp/work/board=
_sensor_chevy-poky-linux-gnueabi/u-boot-custom-socfpga/2014.10.20-r0/git/to=
ols/mkimage.h:22,</div>
<div>|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; from =
/home/jschuler/yocto/poky-thud-2.6/builds/board-sensor-chevy/tmp/work/board=
_sensor_chevy-poky-linux-gnueabi/u-boot-custom-socfpga/2014.10.20-r0/git/to=
ols/mkimage.c:11:</div>
<div>| /home/jschuler/yocto/poky-thud-2.6/builds/board-sensor-chevy/tmp/wo=
rk/board_sensor_chevy-poky-linux-gnueabi/u-boot-custom-socfpga/2014.10.20-r=
0/git/tools/../include/libfdt.h:1442:19: note: previous definition of 'fdt_=
appendprop_cell' was here</div>
<div>|&nbsp; static inline int fdt_appendprop_cell(void *fdt, int nodeoffs=
et,</div>
<div>|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; ^~~~~~~~~~~~~~~~~~~</div>
<div>| scripts/Makefile.host:134: recipe for target 'tools/mkimage.o' fail=
ed</div>
<div>| make[2]: *** [tools/mkimage.o] Error 1</div>
<div>| /home/jschuler/yocto/poky-thud-2.6/builds/board-sensor-chevy/tmp/wo=
rk/board_sensor_chevy-poky-linux-gnueabi/u-boot-custom-socfpga/2014.10.20-r=
0/git/Makefile:1038: recipe for target 'tools' failed</div>
<div>| make[1]: *** [tools] Error 2</div>
<div>| Makefile:134: recipe for target 'sub-make' failed</div>
<div>| make: *** [sub-make] Error 2</div>
<div>| make: Leaving directory '/home/jschuler/yocto/poky-thud-2.6/builds/=
board-sensor-chevy/tmp/work/board_sensor_chevy-poky-linux-gnueabi/u-boot-cu=
stom-socfpga/2014.10.20-r0/git'</div>
<div>| ERROR: oe_runmake failed</div>
</blockquote>
</div>
<div>Does anyone know what the problem may be here? Please let me know if =
I should include complete recipes or logs, happy to do so!</div>
<br />U-Boot recipe:&nbsp;&nbsp;recipes-bsp/u-boot/u-boot-custom-socfpga_2=
014.10.20.bb<br /><br />
<blockquote>
<div>require u-boot-custom-socfpga.inc</div>
<div>&nbsp;</div>
<div>SRC_URI =3D " \</div>
<div>&nbsp; &nbsp; git://github.com/altera-opensource/u-boot-socfpga.git;t=
ag=3Drel_socfpga_v2014.10_arria10_bringup_20.07.02_pr;nobranch=3D1 \</div>
<div>"</div>
<div>&nbsp;</div>
<div>SRC_URI_append_board-sensor-chevy =3D " \</div>
<div>&nbsp; &nbsp; &nbsp; file://board-sensor-chevy/0001-chevy-sensor-supp=
ort-files-2021.patch \</div>
<div>&nbsp; &nbsp; &nbsp; file://board-sensor-chevy/0002-Add-environment-o=
verrride-for-F2H-SDRAM2-bridge-init.patch \</div>
<div>"</div>
<div>&nbsp;</div>
<div>S =3D "${WORKDIR}/git"</div>
<div>LIC_FILES_CHKSUM =3D "file://Licenses/README;md5=3Dc7383a594871c03da7=
6b3707929d2919"</div>
<div>COMPATIBLE_MACHINE =3D "(board-sensor-chevy)"</div>
</blockquote>
The .inc file that recipe includes has this in it:<br /><br />
<blockquote>
<div># Leverage Yocto's existing U-Boot support</div>
<div>require recipes-bsp/u-boot/u-boot.inc</div>
<div>&nbsp;</div>
<div># Apply patches with Git to make it easier to make updates from withi=
n a</div>
<div># devshell and bring them back into this recipe as properly-formatted=
 patches</div>
<div>PATCHTOOL =3D "git"</div>
<div>&nbsp;</div>
<div>DEPENDS +=3D "dtc-native"</div>
<div>PROVIDES +=3D "u-boot"</div>
<div>&nbsp;</div>
<div>COMPATIBLE_MACHINE ?=3D "(board-sensor-chevy)"</div>
<div>UBOOT_SUFFIX ?=3D "img"</div>
<div>LICENSE =3D "GPLv2 &amp; LGPLv2 &amp; BSD &amp; MIT"</div>
</blockquote>
Plus a couple do_compile_append() and do_deploy_append() operations.<br />=
<br />Here is a snippet from the meta u-boot.inc that the recipe is leverag=
ing via include:<br /><br />
<blockquote>
<div>SUMMARY =3D "Universal Boot Loader for embedded devices"</div>
<div>PROVIDES =3D "virtual/bootloader"</div>
<div>&nbsp;</div>
<div>B =3D "${WORKDIR}/build"</div>
<div>&nbsp;</div>
<div>PACKAGE_ARCH =3D "${MACHINE_ARCH}"</div>
<div>&nbsp;</div>
<div>inherit uboot-config uboot-extlinux-config uboot-sign deploy</div>
<div>&nbsp;</div>
<div>DEPENDS +=3D "swig-native python-native"</div>
<div>&nbsp;</div>
<div>EXTRA_OEMAKE =3D 'CROSS_COMPILE=3D${TARGET_PREFIX} CC=3D"${TARGET_PRE=
FIX}gcc ${TOOLCHAIN_OPTIONS}" V=3D1'</div>
<div>EXTRA_OEMAKE +=3D 'HOSTCC=3D"${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFL=
AGS}"'</div>
<div>EXTRA_OEMAKE +=3D 'PYTHON=3Dnativepython STAGING_INCDIR=3D${STAGING_I=
NCDIR_NATIVE} STAGING_LIBDIR=3D${STAGING_LIBDIR_NATIVE}'</div>
<div><br /><br /></div>
</blockquote>
Build info:<br /><br />Poky Thud Commit:&nbsp;e52122a3e6912575ff401a4af6ac=
1bf3070092bc<br />Target OS: 32b ARM Arria 10 SoC<br />Build Host OS: Ubunt=
u 18.04.4 x86<br /><br />Build Host OS python versions present:<br />
<blockquote>
<div>jschuler@kuro2:~/yocto/poky-thud-2.6$ python --version</div>
<div>Python 2.7.17</div>
<div>jschuler@kuro2:~/yocto/poky-thud-2.6$ python3 --version</div>
<div>Python 3.6.9</div>
<div>jschuler@kuro2:~/yocto/poky-thud-2.6$ python3.8 --version</div>
<div>Python 3.8.0</div>
</blockquote>
I've tried every combination of messing with the DEPENDS +=3D values and f=
eel like this has something to do with dtc-native?<br /><br />
<blockquote>
<div>xxxxxx:~/yocto/poky-thud-2.6/builds/board-sensor-chevy/tmp/work/board=
-sensor-chevy-poky-linux-gnueabi/u-boot-custom-socfpga/2014.10.20-r0$ l</di=
v>
<div>board-sensor-chevy/&nbsp; build/&nbsp; configure.sstate&nbsp; git/&nb=
sp; recipe-sysroot/&nbsp; recipe-sysroot-native/&nbsp; temp/</div>
</blockquote>
<div>The two directories shown above recipe-sysroot and recipe-sysroot-nat=
ive seem to be present in this build's workdir but were not present when I =
was building this in Jethro, so perhaps there's something there.&nbsp;</div=
>
<br />Does anyone know what might be causing my bitbake tools to be refere=
ncing two different fdt tool header files?<br /><br />Thank you very much f=
or your thoughts.

--M4E1JT3FIlVtJS5tda5c--
