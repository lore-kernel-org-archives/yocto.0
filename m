Return-Path: <gary@missionsecure.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CCC25B79
	for <webhook@archiver.kernel.org>; Wed, 15 May 2024 18:33:54 +0000 (UTC)
Subject: Python3 pyee recipe for Kirkstone
To: yocto@lists.yoctoproject.org
From: "Gary Huband" <gary@missionsecure.com>
X-Originating-Location: Charlottesville, Virginia, US (216.197.64.240)
X-Originating-Platform: Linux Firefox 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 May 2024 11:33:45 -0700
Message-ID: <uE8A.1715798025327127879.heFm@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ffuJm3sTJLvl51gkclPF"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 May 2024 18:33:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63100

--ffuJm3sTJLvl51gkclPF
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to create a Python3 recipe for pyee

https://pypi.org/project/pyee/
The package has a pyproject.toml but no setup.py.
The build system section:
[build-system]
requires =3D ["setuptools", "setuptools-scm", "wheel"]
build-backend =3D "setuptools.build_meta"

Here's my recipe python3-pyee_11.1.0.bb:

>=20
>=20
>=20
> inherit pypi python_setuptools_build_meta
>=20
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Db2b1cc8797dff32cec5d783148fcea=
b5"
>=20
> SRC_URI[md5sum] =3D "b12a1105a13a218ef0d6b1fa6cb6425a"
> SRC_URI[sha1sum] =3D "50661cf14bb6e8093ff623856bcdb10400d2ff0b"
> SRC_URI[sha256sum] =3D
> "b53af98f6990c810edd9b56b87791021a8f54fd13db4edd1142438d44ba2263f"
> SRC_URI[sha384sum] =3D
> "ff6c091d3a824b164a175fd9996c7e4e859c2a59441df6ea140eafab525656669ee51412=
508b0f5398027a9404c8e785"
>=20
> SRC_URI[sha512sum] =3D
> "86dd34b6d353be9c01a84cbe7cfbdc70eb8ad75626bfde48d0c7d9b027650df3c51edc8c=
002b6d011a51868b0ad92b6b44e34618f20861313899221730130f16"
>=20
>=20
> RDEPENDS:${PN} +=3D "python3-typing-extensions"
>=20
> # pyee uses pyproject.toml instead of setup.py, so need below
> do_configure:prepend() {
> cat > ${S}/setup.py <<-EOF
> from setuptools import setup
> from setuptools import find_packages
> setup(
> name=3D"${PYPI_PACKAGE}",
> version=3D"${PV}",
> license=3D"${LICENSE}",
> package_dir=3D{'': 'pyee'},
> packages=3Dfind_packages(''),
> python_requires=3D">=3D3.8",
> zip_safe=3DTrue,
> )
> EOF
> }
>=20
>=20
>=20
> This does not put the package code into site-packages/pyee
> $ tree ./tmp/work/corei7-64-poky-linux/python3-pyee/11.1.0-r0/image/
> ./tmp/work/corei7-64-poky-linux/python3-pyee/11.1.0-r0/image/
> =E2=94=94=E2=94=80=E2=94=80 usr
> =E2=94=94=E2=94=80=E2=94=80 lib
> =E2=94=94=E2=94=80=E2=94=80 python3.10
> =E2=94=94=E2=94=80=E2=94=80 site-packages
> =E2=94=94=E2=94=80=E2=94=80 pyee-11.1.0.dist-info
> =E2=94=9C=E2=94=80=E2=94=80 LICENSE
> =E2=94=9C=E2=94=80=E2=94=80 METADATA
> =E2=94=9C=E2=94=80=E2=94=80 RECORD
> =E2=94=9C=E2=94=80=E2=94=80 top_level.txt
> =E2=94=9C=E2=94=80=E2=94=80 WHEEL
> =E2=94=94=E2=94=80=E2=94=80 zip-safe
>=20
>=20

Any help is appreciated.

--ffuJm3sTJLvl51gkclPF
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I'm trying to create a Python3 recipe for pyee</p>
<p><a href=3D"https://pypi.org/project/pyee/" target=3D"_blank" rel=3D"noop=
ener">https://pypi.org/project/pyee/</a><br />The package has a pyproject.t=
oml but no setup.py.<br />The build system section:<br />[build-system]<br =
/>requires =3D ["setuptools", "setuptools-scm", "wheel"]<br />build-backend=
 =3D "setuptools.build_meta"<br /><br />Here's my recipe python3-pyee_11.1.=
0.bb:</p>
<blockquote>
<p>inherit pypi python_setuptools_build_meta<br /><br />LICENSE =3D "MIT"<b=
r />LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Db2b1cc8797dff32cec5d783148fc=
eab5"<br /><br />SRC_URI[md5sum] =3D "b12a1105a13a218ef0d6b1fa6cb6425a"<br =
/>SRC_URI[sha1sum] =3D "50661cf14bb6e8093ff623856bcdb10400d2ff0b"<br />SRC_=
URI[sha256sum] =3D "b53af98f6990c810edd9b56b87791021a8f54fd13db4edd1142438d=
44ba2263f"<br />SRC_URI[sha384sum] =3D "ff6c091d3a824b164a175fd9996c7e4e859=
c2a59441df6ea140eafab525656669ee51412508b0f5398027a9404c8e785"<br />SRC_URI=
[sha512sum] =3D "86dd34b6d353be9c01a84cbe7cfbdc70eb8ad75626bfde48d0c7d9b027=
650df3c51edc8c002b6d011a51868b0ad92b6b44e34618f20861313899221730130f16"<br =
/><br />RDEPENDS:${PN} +=3D "python3-typing-extensions"<br /><br /># pyee u=
ses pyproject.toml instead of setup.py, so need below<br />do_configure:pre=
pend() {<br />cat &gt; ${S}/setup.py &lt;&lt;-EOF<br />from setuptools impo=
rt setup<br />from setuptools import find_packages<br />setup(<br />&nbsp; =
&nbsp; &nbsp; name=3D"${PYPI_PACKAGE}",<br />&nbsp; &nbsp; &nbsp; version=
=3D"${PV}",<br />&nbsp; &nbsp; &nbsp; license=3D"${LICENSE}",<br />&nbsp; &=
nbsp; &nbsp; package_dir=3D{'': 'pyee'},<br />&nbsp; &nbsp; &nbsp; packages=
=3Dfind_packages(''),<br />&nbsp; &nbsp; &nbsp; python_requires=3D"&gt;=3D3=
.8",<br />&nbsp; &nbsp; &nbsp; zip_safe=3DTrue,<br />)<br />EOF<br />}</p>
<p>This does not put the package code into site-packages/pyee<br />$ tree .=
/tmp/work/corei7-64-poky-linux/python3-pyee/11.1.0-r0/image/<br />./tmp/wor=
k/corei7-64-poky-linux/python3-pyee/11.1.0-r0/image/<br />=E2=94=94=E2=94=
=80=E2=94=80 usr<br />&nbsp; &nbsp; =E2=94=94=E2=94=80=E2=94=80 lib<br />&n=
bsp; &nbsp; &nbsp; &nbsp; =E2=94=94=E2=94=80=E2=94=80 python3.10<br />&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =E2=94=94=E2=94=80=E2=94=80 site-packa=
ges<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =E2=94=94=
=E2=94=80=E2=94=80 pyee-11.1.0.dist-info<br />&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =E2=94=9C=E2=94=80=E2=94=80 LICENS=
E<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; =E2=94=9C=E2=94=80=E2=94=80 METADATA<br />&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =E2=94=9C=E2=94=80=E2=94=80 RECORD<b=
r />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
=E2=94=9C=E2=94=80=E2=94=80 top_level.txt<br />&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =E2=94=9C=E2=94=80=E2=94=80 WHEEL=
<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 =E2=94=94=E2=94=80=E2=94=80 zip-safe</p>
</blockquote>
<p>Any help is appreciated.</p>

--ffuJm3sTJLvl51gkclPF--

