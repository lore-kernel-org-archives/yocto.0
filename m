Return-Path: <miriam.rico@enigmedia.es>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F9EEC48BF6
	for <webhook@archiver.kernel.org>; Mon, 26 Feb 2024 11:51:09 +0000 (UTC)
Subject: Yocto Kirkstone VPP compilation
To: yocto@lists.yoctoproject.org
From: miriam.rico@enigmedia.es
X-Originating-Location: FR (193.70.58.171)
X-Originating-Platform: Linux Chrome 121
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 26 Feb 2024 03:51:07 -0800
Message-ID: <mGSp.1708948267221827405.tNvX@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="VfPNfbtQ2RLpNYYAk2Tr"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Feb 2024 11:51:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62604

--VfPNfbtQ2RLpNYYAk2Tr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm relatively new to Yocto and I'm trying to compile the VPP code. I have =
a recipe that all it does is download the code from the official repository=
 and tries to compile it (i'm trying to compile 23.10 stable version). This=
 code has a lot of dependencies, among them dpdk. The code downloads these =
dependencies in tar.gz files and then compiles the code for each of them. B=
ut when it gets to the dpdk dependency, I get the same error every time. He=
re is the error:

>=20
> /home/user/Yocto/build/tmp/work/core2-64-poky-linux/vpp-test/23.10-r0/git=
/build/external/downloads/meson-0.55.3.tar.gz
>=20
> | Traceback (most recent call last):
> |=C2=A0 =C2=A0File
> "/home/enigmedia/Yocto/build/tmp/work/core2-64-poky-linux/vpp-test/23.10-=
r0/recipe-sysroot-native/usr/bin/pip3",
> line 7, in <module>
> |=C2=A0 =C2=A0 =C2=A0from pip._internal.cli.main import main
> | ModuleNotFoundError: No module named 'pip'
>=20

From what I have been able to find out, the dpdk dependency generates a pyt=
hon virtual environment and executes a series of commands. I have tried to =
launch theses commands manually and there has been no problem, however, whe=
n I try to launch the recipe via bitbake, I get the above error.

Here is the vpp.bb recipe:

>=20
> DESCRIPTION =3D "Vector Packet Processing"
>=20
> STABLE =3D "stable/2310"
> BRANCH =3D "master"
> SRCREV =3D "6b287b53011208bc242040962056360c1ff54a6c"
> S =3D "${WORKDIR}/git"
> PV =3D "23.10"
>=20
> LICENSE =3D "Apache-2.0"
>=20
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D175792518e4ac015ab6696d16c4f60=
7e"
>=20
> AUTOTOOLS_SCRIPT_PATH =3D "${S}/src"
>=20
> SRC_URI +=3D "git://github.com/FDio/vpp;branch=3D${STABLE} \
> "
>=20
> DEPENDS +=3D "openssl numactl curl-native cmake-native nasm-native
> python3-native python3-pip python3-ply-native ninja-native m4-native
> zlib-native binutils-native elfutils-native libpcap libbpf apt systemd
> bpftrace util-linux"
>=20
> inherit autotools pkgconfig python3-dir python3native
>=20
> export OPENSSL_PATH =3D "${RECIPE_SYSROOT}"
>=20
> include vpp-packages.inc
>=20
> do_compile () {
> cd ${S}
> oe_runmake build-release
> }
>=20

vpp-packages.in is a file that enables some vpp plugins and installs the re=
sulting libraries and files=C2=A0 on the system.

Could anyone know what is going on or give me any hints on how to fix the b=
ug?

Thank you so much,

Miriam

--VfPNfbtQ2RLpNYYAk2Tr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I'm relatively new to Yocto and I'm trying to compile the VP=
P code. I have a recipe that all it does is download the code from the offi=
cial repository and tries to compile it (i'm trying to compile 23.10 stable=
 version). This code has a lot of dependencies, among them dpdk. The code d=
ownloads these dependencies in tar.gz files and then compiles the code for =
each of them. But when it gets to the dpdk dependency, I get the same error=
 every time. Here is the error:<br /><br />
<blockquote>
<div>/home/user/Yocto/build/tmp/work/core2-64-poky-linux/vpp-test/23.10-r0/=
git/build/external/downloads/meson-0.55.3.tar.gz</div>
<div>| Traceback (most recent call last):</div>
<div>|&nbsp; &nbsp;File "/home/enigmedia/Yocto/build/tmp/work/core2-64-poky=
-linux/vpp-test/23.10-r0/recipe-sysroot-native/usr/bin/pip3", line 7, in &l=
t;module&gt;</div>
<div>|&nbsp; &nbsp; &nbsp;from pip._internal.cli.main import main</div>
<div>| ModuleNotFoundError: No module named 'pip'</div>
</blockquote>
<div><br />From what I have been able to find out, the dpdk dependency gene=
rates a python virtual environment and executes a series of commands. I hav=
e tried to launch theses commands manually and there has been no problem, h=
owever, when I try to launch the recipe via bitbake, I get the above error.=
<br /><br />Here is the vpp.bb recipe:<br /><br />
<blockquote>
<div>DESCRIPTION =3D "Vector Packet Processing"</div>
<div>&nbsp;</div>
<div>STABLE =3D "stable/2310"</div>
<div>BRANCH =3D "master"</div>
<div>SRCREV =3D "6b287b53011208bc242040962056360c1ff54a6c"</div>
<div>S =3D "${WORKDIR}/git"</div>
<div>PV =3D "23.10"</div>
<div>&nbsp;</div>
<div>LICENSE =3D "Apache-2.0"</div>
<div>&nbsp;</div>
<div>LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D175792518e4ac015ab6696d16c4=
f607e"</div>
<div>&nbsp;</div>
<div>AUTOTOOLS_SCRIPT_PATH =3D "${S}/src"</div>
<div>&nbsp;</div>
<div>SRC_URI +=3D "git://github.com/FDio/vpp;branch=3D${STABLE} \</div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>"</span></div>
<div>&nbsp;</div>
<div>DEPENDS +=3D "openssl numactl curl-native cmake-native nasm-native pyt=
hon3-native python3-pip python3-ply-native ninja-native m4-native zlib-nati=
ve binutils-native elfutils-native libpcap libbpf apt systemd bpftrace util=
-linux"</div>
<div>&nbsp;</div>
<div>inherit autotools pkgconfig python3-dir python3native</div>
<div>&nbsp;</div>
<div>export OPENSSL_PATH =3D "${RECIPE_SYSROOT}"</div>
<div>&nbsp;</div>
<div>include vpp-packages.inc</div>
<div>&nbsp;</div>
<div>do_compile () {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; cd ${S}</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; oe_runmake build-release</div>
<div>}</div>
</blockquote>
<div>vpp-packages.in is a file that enables some vpp plugins and installs t=
he resulting libraries and files&nbsp; on the system.</div>
<br />Could anyone know what is going on or give me any hints on how to fix=
 the bug?<br /><br />Thank you so much,<br /><br />Miriam<br /><br /></div>

--VfPNfbtQ2RLpNYYAk2Tr--

