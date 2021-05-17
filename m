Subject: Make busybox's syslog.cfg depend on VIRTUAL-RUNTIME_base-utils-syslog #dunfell
To: yocto@lists.yoctoproject.org
From: "Volker Vogelhuber" <v.vogelhuber@digitalendoscopy.de>
X-Originating-Location: Friedberg, Bavaria, DE (84.160.118.210)
X-Originating-Platform: Linux Firefox 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 17 May 2021 03:13:54 -0700
Message-ID: <SFLU.1621246434709424827.U4y8@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bdLgA5B90JRxN2S0UYT7"

--bdLgA5B90JRxN2S0UYT7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm working with Yocto Dunfell. I just wanted to remove syslog
from the busybox package by setting VIRTUAL-RUNTIME_base-utils-syslog
to an empty string. But it seems like the syslog.cfg is added to the SRC_U=
RI
independent of the VIRTUAL-RUNTIME_base-utils-syslog which in turn will
enable syslogd again. Wouldn't it be better to include syslog.cfg in
SRC_URI only if VIRTUAL-RUNTIME_base-utils-syslog is set to busybox-syslog=
?

So something like

${@["", "file://syslog.cfg" ][(d.getVar('VIRTUAL-RUNTIME_base-utils-syslog=
') =3D=3D 'busybox-syslog')]}

--bdLgA5B90JRxN2S0UYT7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm working with Yocto Dunfell. I just wanted to remove syslog <br />from t=
he busybox package by setting VIRTUAL-RUNTIME_base-utils-syslog <br />to an=
 empty string. But it seems like the syslog.cfg is added to the SRC_URI <br=
 />independent of the VIRTUAL-RUNTIME_base-utils-syslog which in turn will =
<br />enable syslogd again. Wouldn't it be better to include syslog.cfg in =
<br />SRC_URI only if VIRTUAL-RUNTIME_base-utils-syslog is set to busybox-s=
yslog? <br /><br />So something like <br /><br />${@["", <a class=3D"moz-tx=
t-link-rfc2396E">"file://syslog.cfg"</a>][(d.getVar('VIRTUAL-RUNTIME_base-u=
tils-syslog') =3D=3D 'busybox-syslog')]}

--bdLgA5B90JRxN2S0UYT7--
