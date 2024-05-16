Return-Path: <gary@missionsecure.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87A02C25B74
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 13:19:28 +0000 (UTC)
Subject: Re: [yocto] Python3 pyee recipe for Kirkstone
To: "Ross Burton" <ross.burton@arm.com>, yocto@lists.yoctoproject.org
From: "Gary Huband" <gary@missionsecure.com>
X-Originating-Location: Charlottesville, Virginia, US (216.197.64.240)
X-Originating-Platform: Linux Firefox 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 16 May 2024 06:19:24 -0700
References: <PA4PR08MB74118B46071BC95A7706D220E8EC2@PA4PR08MB7411.eurprd08.prod.outlook.com>
In-Reply-To: <PA4PR08MB74118B46071BC95A7706D220E8EC2@PA4PR08MB7411.eurprd08.prod.outlook.com>
Message-ID: <10232.1715865564451523024@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="L3az7yo8DikMQn8eS6HA"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 13:19:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63117

--L3az7yo8DikMQn8eS6HA
Content-Type: multipart/alternative; boundary="Kx6xgo7r6JfBNQDvaIpt"

--Kx6xgo7r6JfBNQDvaIpt
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Same problem after adding python3-setuptools-scm-native.=C2=A0 I've attache=
d the pyproject.toml.
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
> DEPENDS +=3D "python3-setuptools-scm-native"
> RDEPENDS:${PN} +=3D "python3-typing-extensions"

--Kx6xgo7r6JfBNQDvaIpt
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Same problem after adding python3-setuptools-scm-native.&nbsp; I've attache=
d the pyproject.toml.
<blockquote>inherit pypi python_setuptools_build_meta<br /><br />LICENSE =
=3D "MIT"<br />LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Db2b1cc8797dff32ce=
c5d783148fceab5"<br /><br />SRC_URI[md5sum] =3D "b12a1105a13a218ef0d6b1fa6c=
b6425a"<br />SRC_URI[sha1sum] =3D "50661cf14bb6e8093ff623856bcdb10400d2ff0b=
"<br />SRC_URI[sha256sum] =3D "b53af98f6990c810edd9b56b87791021a8f54fd13db4=
edd1142438d44ba2263f"<br />SRC_URI[sha384sum] =3D "ff6c091d3a824b164a175fd9=
996c7e4e859c2a59441df6ea140eafab525656669ee51412508b0f5398027a9404c8e785"<b=
r />SRC_URI[sha512sum] =3D "86dd34b6d353be9c01a84cbe7cfbdc70eb8ad75626bfde4=
8d0c7d9b027650df3c51edc8c002b6d011a51868b0ad92b6b44e34618f20861313899221730=
130f16"<br /><br />DEPENDS +=3D "python3-setuptools-scm-native"<br />RDEPEN=
DS:${PN} +=3D "python3-typing-extensions"</blockquote>

--Kx6xgo7r6JfBNQDvaIpt--

--L3az7yo8DikMQn8eS6HA
Content-Type: application/octet-stream; name="pyproject.toml"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="pyproject.toml"

W2J1aWxkLXN5c3RlbV0KcmVxdWlyZXMgPSBbInNldHVwdG9vbHMiLCAic2V0dXB0b29scy1zY20i
LCAid2hlZWwiXQpidWlsZC1iYWNrZW5kID0gInNldHVwdG9vbHMuYnVpbGRfbWV0YSIKCltwcm9q
ZWN0XQpuYW1lID0gInB5ZWUiCnZlcnNpb24gPSAiMTEuMS4wIgphdXRob3JzID0gWwogIHtuYW1l
ID0gIkpvc2ggSG9sYnJvb2siLCBlbWFpbCA9ICJqb3NoLmhvbGJyb29rQGdtYWlsLmNvbSJ9Cl0K
ZGVzY3JpcHRpb24gPSAiQSByb3VnaCBwb3J0IG9mIE5vZGUuanMncyBFdmVudEVtaXR0ZXIgdG8g
UHl0aG9uIHdpdGggYSBmZXcgdHJpY2tzIG9mIGl0cyBvd24iCnJlYWRtZSA9ICJSRUFETUUubWQi
CmtleXdvcmRzID0gWyJldmVudHMiLCAiZW1pdHRlciIsICJub2RlLmpzIiwgIm5vZGUiLCAiZXZl
bnRlbWl0dGVyIiwgImV2ZW50X2VtaXR0ZXIiXQpsaWNlbnNlID0geyB0ZXh0ID0gIk1JVCIgfQpj
bGFzc2lmaWVycyA9IFsKICAgICJQcm9ncmFtbWluZyBMYW5ndWFnZSA6OiBQeXRob24iLAogICAg
IkRldmVsb3BtZW50IFN0YXR1cyA6OiA0IC0gQmV0YSIsCiAgICAiSW50ZW5kZWQgQXVkaWVuY2Ug
OjogRGV2ZWxvcGVycyIsCiAgICAiTGljZW5zZSA6OiBPU0kgQXBwcm92ZWQgOjogTUlUIExpY2Vu
c2UiLAogICAgIk9wZXJhdGluZyBTeXN0ZW0gOjogT1MgSW5kZXBlbmRlbnQiLAogICAgIlByb2dy
YW1taW5nIExhbmd1YWdlIDo6IFB5dGhvbiIsCiAgICAiUHJvZ3JhbW1pbmcgTGFuZ3VhZ2UgOjog
UHl0aG9uIDo6IDMiLAogICAgIlByb2dyYW1taW5nIExhbmd1YWdlIDo6IFB5dGhvbiA6OiAzLjgi
LAogICAgIlByb2dyYW1taW5nIExhbmd1YWdlIDo6IFB5dGhvbiA6OiAzLjkiLAogICAgIlByb2dy
YW1taW5nIExhbmd1YWdlIDo6IFB5dGhvbiA6OiAzLjEwIiwKICAgICJQcm9ncmFtbWluZyBMYW5n
dWFnZSA6OiBQeXRob24gOjogMy4xMSIsCiAgICAiUHJvZ3JhbW1pbmcgTGFuZ3VhZ2UgOjogUHl0
aG9uIDo6IDMuMTIiLAogICAgIlRvcGljIDo6IE90aGVyL05vbmxpc3RlZCBUb3BpYyIsCl0KcmVx
dWlyZXMtcHl0aG9uID0gIj49My44IgoKZGVwZW5kZW5jaWVzID0gWwogICAgInR5cGluZy1leHRl
bnNpb25zIgpdCgpbcHJvamVjdC5vcHRpb25hbC1kZXBlbmRlbmNpZXNdCmRldiA9IFsKICAiYnVp
bGQiLAogICJmbGFrZTgiLAogICJmbGFrZTgtYmxhY2siLAogICJweXRlc3QiLAogICJweXRlc3Qt
YXN5bmNpbzsgcHl0aG9uX3ZlcnNpb24gPj0gJzMuNCciLAogICJweXRlc3QtdHJpbzsgcHl0aG9u
X3ZlcnNpb24gPj0gJzMuNyciLAogICJibGFjayIsCiAgImlzb3J0IiwKICAianVweXRlci1jb25z
b2xlIiwKICAibWtkb2NzIiwKICAibWtkb2NzLWluY2x1ZGUtbWFya2Rvd24tcGx1Z2luIiwKICAi
bWtkb2NzdHJpbmdzW3B5dGhvbl0iLAogICJzcGhpbngiLAogICJ0b21sIiwKICAidG94IiwKICAi
dHJpbyIsCiAgInRyaW87IHB5dGhvbl92ZXJzaW9uID4gJzMuNiciLAogICJ0cmlvLXR5cGluZzsg
cHl0aG9uX3ZlcnNpb24gPiAnMy42JyIsCiAgInR3aW5lIiwKICAidHdpc3RlZCIsCiAgInZhbGlk
YXRlLXB5cHJvamVjdFthbGxdIiwKXQoKW3Rvb2wuaXNvcnRdCnByb2ZpbGUgPSAiYXBwbmV4dXMi
Cmtub3duX2FwcGxpY2F0aW9uID0gInB5ZWUiCgpbdG9vbC5weXJpZ2h0XQppbmNsdWRlID0gWyJw
eWVlIiwgInRlc3RzIl0KClt0b29sLnB5dGVzdF0KYWRkb3B0cyA9ICItLXZlcmJvc2UgLXMiCnRl
c3RwYXRocyA9IFsgInRlc3RzIiBdCgpbdG9vbC5zZXR1cHRvb2xzXQpwYWNrYWdlcyA9IFsicHll
ZSJdCgpbdG9vbC5zZXR1cHRvb2xzLmR5bmFtaWNdCmRlcGVuZGVuY2llcyA9IHsgZmlsZSA9IFsi
cmVxdWlyZW1lbnRzLnR4dCJdIH0Kb3B0aW9uYWwtZGVwZW5kZW5jaWVzLmRldiA9IHsgZmlsZSA9
IFsicmVxdWlyZW1lbnRzX2Rldi50eHQiXSB9Cg==

--L3az7yo8DikMQn8eS6HA--

