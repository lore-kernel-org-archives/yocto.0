Subject: Re: ttyS0 timeout but not using ttyS0 #yocto #systemd
To: yocto@lists.yoctoproject.org
From: "William Durocher" <wdurocher@it-link.ca>
X-Originating-Location: Montreal, Quebec, CA (173.231.104.26)
X-Originating-Platform: Linux Firefox 72
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Jan 2020 12:37:04 -0800
References: <CAMKF1so1Nk969OecOQ1AVRAWAJv1TNdxJtgqonO9mMuN6PwUZQ@mail.gmail.com>
In-Reply-To: <CAMKF1so1Nk969OecOQ1AVRAWAJv1TNdxJtgqonO9mMuN6PwUZQ@mail.gmail.com>
Message-ID: <16075.1580157424388586462@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="eo7l0WzrUog1CoZtTXnI"

--eo7l0WzrUog1CoZtTXnI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you for the quick reply,
in our machin confif only SERIAL_CONSOLE is set, it is:
>=20
> SERIAL_CONSOLE =3D "115200 ttyO0"

But yocto then uses that to set SERIAL_CONSOLES

In bitbake -e I see SERIAL_CONSOLE and SERIAL_CONSOLES set to :

>=20
> # $SERIAL_CONSOLE [3 operations]
> #=C2=A0=C2=A0 set
> /home/wdurocher/work/gammaip/warrior/sources/meta-gammaip/conf/machine/g=
ammaip.conf:16
>=20
> #=C2=A0=C2=A0=C2=A0=C2=A0 "115200 ttyO0"
> #=C2=A0=C2=A0 set
> /home/wdurocher/work/gammaip/warrior/sources/meta/meta/conf/documentatio=
n.conf:371
>=20
> #=C2=A0=C2=A0=C2=A0=C2=A0 [doc] "The speed and device for the serial por=
t used to attach the
> serial console. This variable is given to the kernel as the 'console'
> parameter. After booting occurs, getty is started on that port so remote
> login is possible."
> #=C2=A0=C2=A0 set
> /home/wdurocher/work/gammaip/warrior/sources/meta/meta/conf/bitbake.conf=
:845
>=20
> #=C2=A0=C2=A0=C2=A0=C2=A0 [_defaultval] ""
> # pre-expansion value:
> #=C2=A0=C2=A0 "115200 ttyO0"
> SERIAL_CONSOLE=3D"115200 ttyO0"
> #
> # $SERIAL_CONSOLES [2 operations]
> #=C2=A0=C2=A0 set
> /home/wdurocher/work/gammaip/warrior/sources/meta/meta/conf/documentatio=
n.conf:372
>=20
> #=C2=A0=C2=A0=C2=A0=C2=A0 [doc] "Defines the serial consoles (TTYs) to e=
nable using getty."
> #=C2=A0=C2=A0 set
> /home/wdurocher/work/gammaip/warrior/sources/meta/meta/conf/bitbake.conf=
:846
>=20
> #=C2=A0=C2=A0=C2=A0=C2=A0 [_defaultval] "${@d.getVar('SERIAL_CONSOLE').r=
eplace(' ', ';')}"
> # pre-expansion value:
> #=C2=A0=C2=A0 "${@d.getVar('SERIAL_CONSOLE').replace(' ', ';')}"
> SERIAL_CONSOLES=3D"115200;ttyO0"

--eo7l0WzrUog1CoZtTXnI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you for the quick reply,<br />&nbsp;in our machin confif only SERIAL_=
CONSOLE is set, it is:
<blockquote>SERIAL_CONSOLE =3D "115200 ttyO0"</blockquote>
But yocto then uses that to set SERIAL_CONSOLES<br /><br />In bitbake -e I=
 see SERIAL_CONSOLE and SERIAL_CONSOLES set to :<br />
<blockquote># $SERIAL_CONSOLE [3 operations]<br />#&nbsp;&nbsp; set /home/=
wdurocher/work/gammaip/warrior/sources/meta-gammaip/conf/machine/gammaip.co=
nf:16<br />#&nbsp;&nbsp;&nbsp;&nbsp; "115200 ttyO0"<br />#&nbsp;&nbsp; set =
/home/wdurocher/work/gammaip/warrior/sources/meta/meta/conf/documentation.c=
onf:371<br />#&nbsp;&nbsp;&nbsp;&nbsp; [doc] "The speed and device for the =
serial port used to attach the serial console. This variable is given to th=
e kernel as the 'console' parameter. After booting occurs, getty is started=
 on that port so remote login is possible."<br />#&nbsp;&nbsp; set /home/wd=
urocher/work/gammaip/warrior/sources/meta/meta/conf/bitbake.conf:845<br />#=
&nbsp;&nbsp;&nbsp;&nbsp; [_defaultval] ""<br /># pre-expansion value:<br />=
#&nbsp;&nbsp; "115200 ttyO0"<br />SERIAL_CONSOLE=3D"115200 ttyO0"<br />#<br=
 /># $SERIAL_CONSOLES [2 operations]<br />#&nbsp;&nbsp; set /home/wdurocher=
/work/gammaip/warrior/sources/meta/meta/conf/documentation.conf:372<br />#&=
nbsp;&nbsp;&nbsp;&nbsp; [doc] "Defines the serial consoles (TTYs) to enable=
 using getty."<br />#&nbsp;&nbsp; set /home/wdurocher/work/gammaip/warrior/=
sources/meta/meta/conf/bitbake.conf:846<br />#&nbsp;&nbsp;&nbsp;&nbsp; [_de=
faultval] "${@d.getVar('SERIAL_CONSOLE').replace(' ', ';')}"<br /># pre-exp=
ansion value:<br />#&nbsp;&nbsp; "${@d.getVar('SERIAL_CONSOLE').replace(' '=
, ';')}"<br />SERIAL_CONSOLES=3D"115200;ttyO0"</blockquote>

--eo7l0WzrUog1CoZtTXnI--
