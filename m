Subject: How to remove -rpath and -rpath-link from BUILD_LDFLAGS env variable to solve following error: QA Issue: package python3-scipy contains bad RPATH? #python #bitbake
To: yocto@lists.yoctoproject.org
From: "surfinride" <surfinride@protonmail.com>
X-Originating-Location: Pune, Maharashtra, IN (103.84.81.174)
X-Originating-Platform: Linux Firefox 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 30 Aug 2021 00:49:07 -0700
Message-ID: <Qg0k.1630309747857596465.bKnx@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XaGWlGVlB2sxuMCYPRPp"

--XaGWlGVlB2sxuMCYPRPp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hey there. I am building a Boot2Qt image for my Jetson Nano. Yocto release =
is dunfell. Currently I am trying to build the scipy library release 1.5.3.=
 This is the recipe I am using:

>=20
> inherit pypi setuptools3
>=20
> SUMMARY =3D "SciPy: Scientific Library for Python"
> HOMEPAGE =3D "https://www.scipy.org"
> LICENSE =3D "BSD"
> LIC_FILES_CHKSUM =3D
> "file://LICENSE.txt;md5=3D8256119827cf2bbe63512d4868075867"
>=20
> SRC_URI +=3D " file://0001-Allow-passing-flags-via-FARCH-for-mach.patch"
> SRC_URI[md5sum] =3D "ecf5c58e4df1d257abf1634d51cb9205"
> SRC_URI[sha256sum] =3D
> "ddae76784574cc4c172f3d5edd7308be16078dd3b977e8746860c76c195fa707"
>=20
> DEPENDS +=3D "${PYTHON_PN}-numpy ${PYTHON_PN}-numpy-native
> ${PYTHON_PN}-pybind11-native lapack"
> RDEPENDS_${PN} +=3D "${PYTHON_PN}-numpy lapack"
>=20
> CLEANBROKEN =3D "1"
>=20
> export LAPACK =3D "${STAGING_LIBDIR}"
> export BLAS =3D "${STAGING_LIBDIR}"
>=20
> export F90 =3D "${TARGET_PREFIX}gfortran"
> export FARCH =3D "${TUNE_CCARGS}"
> # Numpy expects the LDSHARED env variable to point to a single
> # executable, but OE sets it to include some flags as well. So we split
> # the existing LDSHARED variable into the base executable and flags, and
> # prepend the flags into LDFLAGS
> LDFLAGS_prepend :=3D "${@" ".join(d.getVar('LDSHARED', True).split()[1:])=
} "
>=20
> export LDSHARED :=3D "${@d.getVar('LDSHARED', True).split()[0]}"
>=20
> # Tell Numpy to look in target sysroot site-packages directory for
> libraries
> LDFLAGS_append =3D "
> -L${STAGING_LIBDIR}/${PYTHON_DIR}/site-packages/numpy/core/lib"

This recipe fails with the bad RPATH error. Complete error log here ( https=
://pastebin.ubuntu.com/p/2K9sqxkhSn/ ).

This is what the Yocto documentation has to say about the bad RPATH error:

>=20
> -package <packagename> contains bad RPATH <rpath> in file <file>
> [rpaths]The specified binary produced by the recipe contains dynamic
> library load paths (rpaths) that contain build system paths such as
> TMPDIR, which are incorrect for the target and could potentially be a
> security issue. Check for bad -rpathoptions being passed to the linker in
> your do_compile log. Depending on the build system used by the software
> being built, there might be a configure option to disable rpath usage
> completely within the build of the software.

I looked in the run.do_configure file. This is what the BUILD_LDFLAGS varia=
ble is set like:
>=20
>=20
> export
> BUILD_LDFLAGS=3D"-L/media/dell/ext4_volume/jetson-nano-build-files/tmp/wo=
rk/aarch64-poky-linux/python3-scipy/1.5.3-r0/recipe-sysroot-native/usr/lib
> -L/media/dell/ext4_volume/jetson-nano-build-files/tmp/work/aarch64-poky-l=
inux/python3-scipy/1.5.3-r0/recipe-sysroot-native/lib
> -Wl,--enable-new-dtags=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0
> -Wl,-rpath-link,/media/dell/ext4_volume/jetson-nano-build-files/tmp/work/=
aarch64-poky-linux/python3-scipy/1.5.3-r0/recipe-sysroot-native/usr/lib
> -Wl,-rpath-link,/media/dell/ext4_volume/jetson-nano-build-files/tmp/work/=
aarch64-poky-linux/python3-scipy/1.5.3-r0/recipe-sysroot-native/lib
> -Wl,-rpath,/media/dell/ext4_volume/jetson-nano-build-files/tmp/work/aarch=
64-poky-linux/python3-scipy/1.5.3-r0/recipe-sysroot-native/usr/lib
> -Wl,-rpath,/media/dell/ext4_volume/jetson-nano-build-files/tmp/work/aarch=
64-poky-linux/python3-scipy/1.5.3-r0/recipe-sysroot-native/lib
> -Wl,-O1 -Wl,--allow-shlib-undefined
> -Wl,--dynamic-linker=3D/media/dell/ext4_volume/jetson-nano-build-files/tm=
p/sysroots-uninative/x86_64-linux/lib/ld-linux-x86-64.so.2"
>=20

So I created a copy of bitbake.conf in my custom layer and set the priority=
 of the layer above the poky/meta/ layer. With this the -rpath and -rpath-l=
ink options are removed from the BUILD_LDFLAGS variable. Now if I build the=
 package, the build still fails with the same error.
Running grep on the tmp/work/aarch64-poky-linux/python3-scipy/1.5.3-r0/temp=
/ showed that -rpath option is still being passed to gcc. Complete log.do_c=
ompile here. ( https://pastebin.ubuntu.com/p/tvpn8zTZ7q/ )

Right now I am kind of clueless as to how I should approach debugging this.=
 Would really appreciate any help. Thanks.

--XaGWlGVlB2sxuMCYPRPp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hey there. I am building a Boot2Qt image for my Jetson Nano. Yocto release =
is dunfell. Currently I am trying to build the scipy library release 1.5.3.=
 This is the recipe I am using:<br />
<blockquote>inherit pypi setuptools3<br /><br />SUMMARY =3D "SciPy: Scienti=
fic Library for Python"<br />HOMEPAGE =3D "https://www.scipy.org"<br />LICE=
NSE =3D "BSD"<br />LIC_FILES_CHKSUM =3D "file://LICENSE.txt;md5=3D825611982=
7cf2bbe63512d4868075867"<br /><br />SRC_URI +=3D " file://0001-Allow-passin=
g-flags-via-FARCH-for-mach.patch"<br />SRC_URI[md5sum] =3D "ecf5c58e4df1d25=
7abf1634d51cb9205"<br />SRC_URI[sha256sum] =3D "ddae76784574cc4c172f3d5edd7=
308be16078dd3b977e8746860c76c195fa707"<br /><br />DEPENDS +=3D "${PYTHON_PN=
}-numpy ${PYTHON_PN}-numpy-native ${PYTHON_PN}-pybind11-native lapack"<br /=
>RDEPENDS_${PN} +=3D "${PYTHON_PN}-numpy lapack"<br /><br />CLEANBROKEN =3D=
 "1"<br /><br />export LAPACK =3D "${STAGING_LIBDIR}"<br />export BLAS =3D =
"${STAGING_LIBDIR}"<br /><br />export F90 =3D "${TARGET_PREFIX}gfortran"<br=
 />export FARCH =3D "${TUNE_CCARGS}"<br /># Numpy expects the LDSHARED env =
variable to point to a single<br /># executable, but OE sets it to include =
some flags as well. So we split<br /># the existing LDSHARED variable into =
the base executable and flags, and<br /># prepend the flags into LDFLAGS<br=
 />LDFLAGS_prepend :=3D "${@" ".join(d.getVar('LDSHARED', True).split()[1:]=
)} "<br />export LDSHARED :=3D "${@d.getVar('LDSHARED', True).split()[0]}"<=
br /><br /># Tell Numpy to look in target sysroot site-packages directory f=
or libraries<br />LDFLAGS_append =3D " -L${STAGING_LIBDIR}/${PYTHON_DIR}/si=
te-packages/numpy/core/lib"</blockquote>
<div data-reddit-rtjson=3D"{&quot;entityMap&quot;:{&quot;0&quot;:{&quot;typ=
e&quot;:&quot;LINK&quot;,&quot;mutability&quot;:&quot;MUTABLE&quot;,&quot;d=
ata&quot;:{&quot;url&quot;:&quot;https://pastebin.ubuntu.com/p/2K9sqxkhSn/&=
quot;}}},&quot;blocks&quot;:[{&quot;key&quot;:&quot;6pfgm&quot;,&quot;text&=
quot;:&quot;This recipe fails with the bad RPATH error. Complete error log =
here.&quot;,&quot;type&quot;:&quot;unstyled&quot;,&quot;inlineStyleRanges&q=
uot;:[],&quot;entityRanges&quot;:[{&quot;offset&quot;:63,&quot;length&quot;=
:4,&quot;key&quot;:0}],&quot;data&quot;:{}}]}"><span data-offset-key=3D"3r7=
gg-0-0"><span data-text=3D"true">This recipe fails with the bad RPATH error=
. Complete error log </span></span><span><a class=3D"_1FRfMxEAy__7c8vezYv9q=
P" href=3D"https://pastebin.ubuntu.com/p/2K9sqxkhSn/"><span data-offset-key=
=3D"3r7gg-1-0"><span data-text=3D"true">here</span></span></a></span><span =
data-offset-key=3D"3r7gg-2-0"><span data-text=3D"true">.<br /></span></span=
><br />This is what the Yocto documentation has to say about the bad RPATH =
error:<span data-offset-key=3D"3r7gg-2-0"><span data-text=3D"true"></span><=
/span></div>
<blockquote>-package &lt;packagename&gt; contains bad RPATH &lt;rpath&gt; i=
n file &lt;file&gt; [rpaths]The specified binary produced by the recipe con=
tains dynamic library load paths (rpaths) that contain build system paths s=
uch as TMPDIR, which are incorrect for the target and could potentially be =
a security issue. Check for bad -rpathoptions being passed to the linker in=
 your do_compile log. Depending on the build system used by the software be=
ing built, there might be a configure option to disable rpath usage complet=
ely within the build of the software.</blockquote>
I looked in the run.do_configure file. This is what the BUILD_LDFLAGS varia=
ble is set like:
<blockquote>export BUILD_LDFLAGS=3D"-L/media/dell/ext4_volume/jetson-nano-b=
uild-files/tmp/work/aarch64-poky-linux/python3-scipy/1.5.3-r0/recipe-sysroo=
t-native/usr/lib&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; -L/media/dell/ext4_volume/jetson-nano-build-files/tmp/work/aarch=
64-poky-linux/python3-scipy/1.5.3-r0/recipe-sysroot-native/lib&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -Wl,--enable-new-d=
tags&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -=
Wl,-rpath-link,/media/dell/ext4_volume/jetson-nano-build-files/tmp/work/aar=
ch64-poky-linux/python3-scipy/1.5.3-r0/recipe-sysroot-native/usr/lib&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -Wl,-rpath-l=
ink,/media/dell/ext4_volume/jetson-nano-build-files/tmp/work/aarch64-poky-l=
inux/python3-scipy/1.5.3-r0/recipe-sysroot-native/lib&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -Wl,-rpath,/media/dell/ext4=
_volume/jetson-nano-build-files/tmp/work/aarch64-poky-linux/python3-scipy/1=
.5.3-r0/recipe-sysroot-native/usr/lib&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -Wl,-rpath,/media/dell/ext4_volume/jetson-n=
ano-build-files/tmp/work/aarch64-poky-linux/python3-scipy/1.5.3-r0/recipe-s=
ysroot-native/lib&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; -Wl,-O1 -Wl,--allow-shlib-undefined -Wl,--dynamic-linker=3D/med=
ia/dell/ext4_volume/jetson-nano-build-files/tmp/sysroots-uninative/x86_64-l=
inux/lib/ld-linux-x86-64.so.2"</blockquote>
So I created a copy of bitbake.conf in my custom layer and set the priority=
 of the layer above the poky/meta/ layer. With this the -rpath and -rpath-l=
ink options are removed from the BUILD_LDFLAGS variable. Now if I build the=
 package, the build still fails with the same error.<br />Running grep on t=
he tmp/work/aarch64-poky-linux/python3-scipy/1.5.3-r0/temp/ showed that -rp=
ath option is still being passed to gcc. Complete log.do_compile <a href=3D=
"https://pastebin.ubuntu.com/p/tvpn8zTZ7q/" target=3D"_blank" rel=3D"noopen=
er">here.</a><br /><br />Right now I am kind of clueless as to how I should=
 approach debugging this. Would really appreciate any help. Thanks.

--XaGWlGVlB2sxuMCYPRPp--
