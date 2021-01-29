Subject: pypi setuptools based recipe fails ModuleNotFoundError: No module named 'pkg_resources' #python
To: yocto@lists.yoctoproject.org
From: ddbabich@bootseeds.com
X-Originating-Location: Boardman, Oregon, US (52.61.197.79)
X-Originating-Platform: Linux Chrome 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 29 Jan 2021 12:41:00 -0800
Message-ID: <2ct9.1611952860604820411.DUaL@lists.yoctoproject.org>
X-Groupsio-MsgNum: 52157
Content-Type: multipart/mixed; boundary="8ulHq0klN0yuh1jbcA9z"

--8ulHq0klN0yuh1jbcA9z
Content-Type: multipart/alternative; boundary="aZTJfCKBDksAHlAZ9Jj5"

--aZTJfCKBDksAHlAZ9Jj5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm attempting to make a simple bitbake recipe for python3-astropy that inh=
erits from pypi and setuptools3.=C2=A0 The very simple recipe is attached.
When I build I'm getting this error:

>=20
>=20
>=20
> |=C2=A0 =C2=A0 =C2=A0import pkg_resources
>=20
>=20
>=20
> | ModuleNotFoundError: No module named 'pkg_resources'
>=20
>=20
>=20
> | WARNING: exit code 1 from a shell command.
>=20
>=20

I don't understand this error because I'm using setuptools3 which I believ=
e contains pkg_resources.=C2=A0 In desperation I added a "DEPENDS =3D "pyth=
on3-setuptools" but that did not help either.=C2=A0 I'd appreciate any advi=
ce on this.
Thanks

--aZTJfCKBDksAHlAZ9Jj5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I'm attempting to make a simple bitbake recipe for python3-astropy that =
inherits from pypi and setuptools3.&nbsp; The very simple recipe is attache=
d.<br />When I build I'm getting this error:</p>
<blockquote>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10p=
t;">|&nbsp; &nbsp; &nbsp;import pkg_resources</span></p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10p=
t;">| ModuleNotFoundError: No module named 'pkg_resources'</span></p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10p=
t;">| WARNING: exit code 1 from a shell command.</span></p>
</blockquote>
I don't understand this error because I'm using setuptools3 which I believ=
e contains pkg_resources.&nbsp; In desperation I added a "DEPENDS =3D "pyth=
on3-setuptools" but that did not help either.&nbsp; I'd appreciate any advi=
ce on this.<br />Thanks

--aZTJfCKBDksAHlAZ9Jj5--

--8ulHq0klN0yuh1jbcA9z
Content-Type: application/octet-stream; name="python3-astropy_3.2.1.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="python3-astropy_3.2.1.bb"

REVTQ1JJUFRJT04gPSAiQXN0cm9weS4iClNFQ1RJT04gPSAiZGV2ZWwvcHl0aG9uIgpMSUNFTlNF
ID0gIk1JVCIKTElDX0ZJTEVTX0NIS1NVTSA9ICJmaWxlOi8vJHtDT01NT05fTElDRU5TRV9ESVJ9
L01JVDttZDU9MDgzNWFkZTY5OGUwYmNmODUwNmVjZGEyZjdiNGYzMDIiCgpQWVBJX1BBQ0tBR0Ug
PSAiYXN0cm9weSIKaW5oZXJpdCBweXBpIHNldHVwdG9vbHMzCgpERVBFTkRTID0gInB5dGhvbjMt
c2V0dXB0b29scyBweXRob24zLWFzdHJvcHktaGVscGVycyIKClNSQ19VUklbbWQ1c3VtXSA9ICJl
ZTBhMTg1ZThiOTA2NWVhOWViZDg2MGE2NTFhZjJlZSIKU1JDX1VSSVtzaGEyNTZzdW1dID0gIjcw
NmMwNDU3Nzg5Yzc4Mjg1ZTU0NjRhNWEzMzZmNWYwYjA1OGQ2NDZkNjBmNGU1ZjViYTFmN2Q1YmY0
MjRiMjgiCg==

--8ulHq0klN0yuh1jbcA9z--
