Subject: Build issue - newbie
To: yocto@lists.yoctoproject.org
From: "Sujoy Ray" <raysujoy@gmail.com>
X-Originating-Location: Surrey, British Columbia, CA (75.156.18.198)
X-Originating-Platform: Windows Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 11 Dec 2019 21:59:33 -0800
Message-ID: <9izc.1576130373846027647.fA8A@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8MSPQmMWBdPPGYwXdU5J"

--8MSPQmMWBdPPGYwXdU5J
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I am trying to build yocto project and having following error:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
ERROR: Unable to start bitbake server (None)
ERROR: Server log for this session (/home/sujoy/OpenBMC/openbmc/ build/bit=
bake-cookerdaemon. log):
--- Starting bitbake server pid 2104 at 2019-12-11 19:23:03.474760 ---
ERROR: Layer microsoft-layer is not compatible with the core layer which o=
nly supports these series: zeus (layer is compatible with warrior)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The above error happens when I run bitbake obmc-phosphor-image in Ubuntu 1=
6.04 running in VMwarer ( Windows 10 as HOST).

The above command succeeds=C2=A0when I use Ubuntu native installation.

Could anybody please help?
Thanks,
Sujoy.

--8MSPQmMWBdPPGYwXdU5J
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">Hello,</span>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">I am trying to build yocto project and having following e=
rror:</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">ERROR: Unable to start bitbake server (None)<br />ERROR: =
Server log for this session (/home/sujoy/OpenBMC/openbmc/<wbr />build/bitba=
ke-cookerdaemon.<wbr />log):<br />--- Starting bitbake server pid 2104 at 2=
019-12-11 19:23:03.474760 ---<br />ERROR: Layer microsoft-layer is not comp=
atible with the core layer which only supports these series: zeus (layer is=
 compatible with warrior)</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr />=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">The above error happens when I run&nbsp;<em>bitbake obmc-=
phosphor-image</em>&nbsp;in Ubuntu 16.04 running in VMwarer ( Windows 10 as=
 HOST).</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">The above command succeeds&nbsp;when I use Ubuntu native =
installation.&nbsp;<br /><br /></div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">Could anybody please help?</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">Thanks,</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">Sujoy.</div>

--8MSPQmMWBdPPGYwXdU5J--
