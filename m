Subject: Re: #yocto #linux #systemd Having issues building command line utilities: ntpq, timedatectl, and ntpstat into kernel image
To: yocto@lists.yoctoproject.org
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
X-Originating-Location: US (149.32.192.43)
X-Originating-Platform: Windows IE 11
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 29 Sep 2020 08:45:56 -0700
References: <MADEUP.16390554C73CDE44.27822@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16390554C73CDE44.27822@lists.yoctoproject.org>
Message-ID: <12103.1601394356770198635@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="FjPBlWh6k1zwsvNC9aXm"

--FjPBlWh6k1zwsvNC9aXm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I currently have "ntpq" building and installing correctly...

Can someone tell me what it takes to get the "timedatectl" command utility=
 built into Yocto kernel image ?

I see it referenced in both :

openembedded-core/meta/recipes-core/systemd/systemd_234.bb:=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 ${bindir}/timedatectl \
poky/meta/recipes-core/systemd/systemd_234.bb:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${bindir}/=
timedatectl \

but have yet to figure out how to get the command built and transferred to=
 the kernel image.

Thanks,
Steve

--FjPBlWh6k1zwsvNC9aXm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p><br />I currently have "ntpq" building and installing correctly...<br />=
<br />Can someone tell me what it takes to get the "timedatectl" command ut=
ility built into Yocto kernel image ?<br /><br />I see it referenced in bot=
h :<br /><br />openembedded-core/meta/recipes-core/systemd/systemd_234.bb:&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; ${bindir}/timedatectl \<br />poky/meta/recipes-core/systemd/=
systemd_234.bb:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${bindir}/timedatectl \</p>
<p>but have yet to figure out how to get the command built and transferred=
 to the kernel image.<br /><br />Thanks,<br />Steve</p>

--FjPBlWh6k1zwsvNC9aXm--
