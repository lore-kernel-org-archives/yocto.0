Subject: Unable to extract tar file #dunfell #yocto
To: yocto@lists.yoctoproject.org
From: "Vijay Rakesh Munganda" <vijayrakeshmunganda@gmail.com>
X-Originating-Location: IN (164.164.95.9)
X-Originating-Platform: Windows Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 06 Jan 2021 23:12:59 -0800
Message-ID: <f9PC.1610003579307616752.mC3p@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hXUy4w6iCbW1T6FDdJV1"

--hXUy4w6iCbW1T6FDdJV1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I'm trying to install the Tokbox library into the build, but the tar file =
is not getting extracted into the folder. Here is my recipe code, kindly pl=
ease help me where I went wrong.
*Recipe:*

>=20
>=20
> DESCRIPTION =3D "libopentok for arm64"
> HOMEPAGE =3D "https://tokbox.com"
>=20
>=20
> SRC_URI =3D
> "https://s3.amazonaws.com/artifact.tokbox.com/rel/opentok-linux-sdk/libo=
pentok_linux_llvm_arm64-2.18.1.tgz"
>=20
> SRC_URI[sha256sum] =3D
> "7ae2b85940a4e16299a4ec5f4341b6b92c71abdb5ef6949508873bd8a2f53abc"
>=20
> S=3D "${WORKDIR}/tokbox"
>=20
> inherit cmake
>=20

*Error:*
>=20
> CMake Error: The source directory
> "/home/test/target/bsp/tmp/work/aarch64-poky-linux/tokbox/1.0-r0/tokbox"
> does not appear to contain CMakeLists.txt.

Thanks & Regards,
Vijay Rakesh

--hXUy4w6iCbW1T6FDdJV1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br /><br />I'm trying to install the Tokbox library into the build,=
 but the tar file is not getting extracted into the folder. Here is my reci=
pe code, kindly please help me where I went wrong.<br /><strong>Recipe:</st=
rong><br />
<blockquote>
<div><br />DESCRIPTION =3D "libopentok for arm64"</div>
<div>HOMEPAGE =3D "https://tokbox.com"</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>SRC_URI =3D "https://s3.amazonaws.com/artifact.tokbox.com/rel/opentok=
-linux-sdk/libopentok_linux_llvm_arm64-2.18.1.tgz"</div>
<div>SRC_URI[sha256sum] =3D "7ae2b85940a4e16299a4ec5f4341b6b92c71abdb5ef69=
49508873bd8a2f53abc"</div>
<div>&nbsp;</div>
<div>S=3D "${WORKDIR}/tokbox"</div>
<div>&nbsp;</div>
<div>inherit cmake</div>
</blockquote>
<strong>Error:&nbsp;</strong>
<blockquote>CMake Error: The source directory "/home/test/target/bsp/tmp/w=
ork/aarch64-poky-linux/tokbox/1.0-r0/tokbox" does not appear to contain CMa=
keLists.txt.</blockquote>
<br />Thanks &amp; Regards,<br />Vijay Rakesh

--hXUy4w6iCbW1T6FDdJV1--
