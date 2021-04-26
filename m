Subject: Improving NPM recipe build speed
To: yocto@lists.yoctoproject.org
From: "Alessandro Tagliapietra" <tagliapietra.alessandro@gmail.com>
X-Originating-Location: Las Vegas, Nevada, US (72.207.140.105)
X-Originating-Platform: Linux Chrome 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 26 Apr 2021 16:29:13 -0700
Message-ID: <AUF9.1619479753480261275.rjGo@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1qGqFmhteVEdj425MmcG"

--1qGqFmhteVEdj425MmcG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I'm making an image that includes the node-red recipe from meta-iot-cloud.
The whole process takes about 30+ minutes for that recipe alone (most of t=
he time spent in do_configure).
Now I want to override the recipe systemd service file and create a nodere=
d user. Every time I change my bbappend file I have to wait 30+ minutes to =
have the result even for a small systemd file change.

Is it possible to speed up the process somehow?

Thanks in advance

--1qGqFmhteVEdj425MmcG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,<br /><br />I'm making an image that includes the node-red reci=
pe from meta-iot-cloud.<br />The whole process takes about 30+ minutes for =
that recipe alone (most of the time spent in do_configure).<br />Now I want=
 to override the recipe systemd service file and create a nodered user. Eve=
ry time I change my bbappend file I have to wait 30+ minutes to have the re=
sult even for a small systemd file change.<br /><br />Is it possible to spe=
ed up the process somehow?<br /><br />Thanks in advance

--1qGqFmhteVEdj425MmcG--
