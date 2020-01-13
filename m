Subject: How to handle custom fetcher? #yocto
To: yocto@lists.yoctoproject.org
From: Bill.Kulp@azuresummit.com
X-Originating-Location: Fairfax, Virginia, US (174.79.185.74)
X-Originating-Platform: Windows Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 13 Jan 2020 05:56:56 -0800
Message-ID: <2tfx.1578923816482102575.gj3t@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="w4SXfcpIa1mOFpPwVaXK"

--w4SXfcpIa1mOFpPwVaXK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello!=C2=A0 I'm creating a Yocto BSP layer that depends on an external bin=
ary.=C2=A0 This binary is large, so it is stored on an external server.=C2=
=A0 (it's an HDF file for a Xilinx ZynqMP device).

The binary is retrieved using a shell script that can
(1) retrieve a string representing the version of the latest build, and
(2) download a build corresponding to a specific version.

I am trying to figure out how to integrate step (1) with Bitbake.=C2=A0 Id=
eally, Bitbake should treat the version string like a version control ident=
ifier, querying it and rebuilding the package if it has changed.

Do you have advice on the best practice to do this?=C2=A0 Do I need custom=
 code in the do_fetch step?=C2=A0 Can I dynamically set something like SRCP=
V or SRCREV?

--w4SXfcpIa1mOFpPwVaXK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello!&nbsp; I'm creating a Yocto BSP layer that depends on an external bin=
ary.&nbsp; This binary is large, so it is stored on an external server.&nbs=
p; (it's an HDF file for a Xilinx ZynqMP device).<br /><br />The binary is =
retrieved using a shell script that can<br />(1) retrieve a string represen=
ting the version of the latest build, and<br />(2) download a build corresp=
onding to a specific version.<br /><br />I am trying to figure out how to i=
ntegrate step (1) with Bitbake.&nbsp; Ideally, Bitbake should treat the ver=
sion string like a version control identifier, querying it and rebuilding t=
he package if it has changed.<br /><br />Do you have advice on the best pra=
ctice to do this?&nbsp; Do I need custom code in the do_fetch step?&nbsp; C=
an I dynamically set something like SRCPV or SRCREV?

--w4SXfcpIa1mOFpPwVaXK--
