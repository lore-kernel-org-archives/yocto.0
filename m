Subject: matchbox systemd/logind IdleAction taken despite not being idle #systemd
To: yocto@lists.yoctoproject.org
From: cwseys@physics.wisc.edu
X-Originating-Location: US (144.92.31.233)
X-Originating-Platform: Linux Firefox 68
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 27 Feb 2020 07:00:06 -0800
Message-ID: <cwSL.1582815606041394767.LEm2@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="N5FVE3CHLwcWJMbfIoYR"

--N5FVE3CHLwcWJMbfIoYR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,
I've set up a kiosk using matchbox window manager running Chromium (Debian=
 Buster). It works great!
Next I try to set up power savings by setting IdleAction=3Dsuspend in /etc=
/systemd/logind.conf .=C2=A0=C2=A0 Sadly, the computer suspends even with m=
ouse or keyboard activity.
I found that swaywm has encountered the same problem
https://github.com/swaywm/swayidle/issues/4
and that they have opened a systemd bug report where it looks like a new c=
all to systemd is being implemented to address the problem.
https://github.com/systemd/systemd/issues/14489
I'm not sure if matchbox is in the same condition. Possibly I haven't inst=
alled some package that interfaces matchbox to systemd?=C2=A0 Or maybe matc=
hbox needs to be updated once systemd feature has been added?

Thanks for your work! Chad.

--N5FVE3CHLwcWJMbfIoYR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,<br />&nbsp; I've set up a kiosk using matchbox window manager ru=
nning Chromium (Debian Buster). It works great!<br />&nbsp; Next I try to s=
et up power savings by setting IdleAction=3Dsuspend in /etc/systemd/logind.=
conf .&nbsp;&nbsp; Sadly, the computer suspends even with mouse or keyboard=
 activity.<br />&nbsp; I found that swaywm has encountered the same problem=
 <br /><a href=3D"https://github.com/swaywm/swayidle/issues/4">https://gith=
ub.com/swaywm/swayidle/issues/4</a> <br />&nbsp;and that they have opened a=
 systemd bug report where it looks like a new call to systemd is being impl=
emented to address the problem.<br /><a href=3D"https://github.com/systemd/=
systemd/issues/14489">https://github.com/systemd/systemd/issues/14489</a> <=
br />&nbsp;I'm not sure if matchbox is in the same condition. Possibly I ha=
ven't installed some package that interfaces matchbox to systemd?&nbsp; Or =
maybe matchbox needs to be updated once systemd feature has been added?<br =
/><br />Thanks for your work! Chad.

--N5FVE3CHLwcWJMbfIoYR--
