Subject: cpu_count() got an unexpected keyword argument 'at_least'
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (106.51.243.199)
X-Originating-Platform: Linux Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 11 Dec 2020 07:14:17 -0800
Message-ID: <y4Bt.1607699657163733559.sEYQ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kY0GuEa2hNr7R30KK4sg"

--kY0GuEa2hNr7R30KK4sg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

I got expansion error during parsing. I want to fix this bug. can anybody =
know this issue please Update me.

Traceback (most recent call last):
File "Var <PIGZ>", line 1, in <module>
bb.data_smart.ExpansionError: Failure expanding variable PIGZ, expression =
was -p ${@oe.utils.cpu_count(at_least=3D2)} which triggered exception TypeE=
rror: cpu_count() got an unexpected keyword argument 'at_least'

thanking you in advance.

Regards,
Sateesh

--kY0GuEa2hNr7R30KK4sg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Guys,<br /><br /><br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
I got expansion error during parsing. I want to fix this bug. can anybody k=
now this issue please Update me.<br /><br />
<div>Traceback (most recent call last):</div>
<div>&nbsp; File "Var &lt;PIGZ&gt;", line 1, in &lt;module&gt;</div>
<div>bb.data_smart.ExpansionError: Failure expanding variable PIGZ, expres=
sion was -p ${@oe.utils.cpu_count(at_least=3D2)} which triggered exception =
TypeError: cpu_count() got an unexpected keyword argument 'at_least'</div>
<div><br /><br />thanking you in advance.<br /><br />Regards,<br />Sateesh=
</div>

--kY0GuEa2hNr7R30KK4sg--
