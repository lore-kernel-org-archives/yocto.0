Subject: need Sysvinit as system manager in Rocko Version #rocko
To: yocto@lists.yoctoproject.org
From: rohitbjadhav1@gmail.com
X-Originating-Location: Pune, Maharashtra, IN (152.57.6.123)
X-Originating-Platform: Linux Firefox 66
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 13 Apr 2021 03:02:29 -0700
Message-ID: <1Z2R.1618308149078356804.m8K6@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="z2tI7CJTMHX7dfOrbIcy"

--z2tI7CJTMHX7dfOrbIcy
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have created rootfs with Rocko yocto version.

I need sysyvinit as system manager instead of Systemd.

I have tried with following in local.conf

DISTRO_FEATURES_append =3D " sysvinit"

VIRTUAL-RUNTIME_init_manager =3D "sysvinit"

VIRTUAL-RUNTIME_initscripts =3D "initscripts"

It created run-level folder like rcS and rc0.d to rc6.d. but did not creat=
ed inittab file in /etc .

And after booting it rootfs boots up with systemd only
root@imx6ull14x14evk:~# ps -p1 | grep "init\|upstart\|systemd"
1 ?=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00:00:07 systemd
I need init as system manager . can you please guide me in this regard.

Thank you

Regards
Rohit

--z2tI7CJTMHX7dfOrbIcy
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have created rootfs with Rocko yocto version.<br /><br />I need sysyvinit=
 as system manager instead of Systemd.<br />
<p><span dir=3D"ltr" class=3D"uiOutputText">I have tried with following in=
 local.conf</span></p>
<p><span dir=3D"ltr" class=3D"uiOutputText">DISTRO_FEATURES_append =3D " s=
ysvinit"</span></p>
<p><span dir=3D"ltr" class=3D"uiOutputText">VIRTUAL-RUNTIME_init_manager =
=3D "sysvinit"</span></p>
<p><span dir=3D"ltr" class=3D"uiOutputText">VIRTUAL-RUNTIME_initscripts =
=3D "initscripts"<br /><br />It created run-level folder like rcS and rc0.=
d to rc6.d. but did not created inittab file in /etc .<br /><br />And after=
 booting it rootfs boots up with systemd only <br />root@imx6ull14x14evk:~#=
 ps -p1 | grep "init\|upstart\|systemd"<br />&nbsp;&nbsp;&nbsp; 1 ?&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 00:00:07 systemd<br />I need init as sys=
tem manager . can you please guide me in this regard.<br /><br />Thank you<=
br /><br />Regards<br />Rohit<br /></span></p>

--z2tI7CJTMHX7dfOrbIcy--
