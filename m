Subject: weston systemd and getty@tty1.service
To: yocto@lists.yoctoproject.org
From: timemaster@trillinis.com
X-Originating-Location: Cambridge, England, GB (80.5.215.14)
X-Originating-Platform: Mac Safari 13.1
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 04 Apr 2020 12:23:16 -0700
Message-ID: <Id6f.1586028196651762031.OW6M@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="DVUEVCLbzp48sxY16dfY"

--DVUEVCLbzp48sxY16dfY
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all, I spent the whole day today fixing this strange problem.

I was trying to get weston working with systemd under root (no other user =
installed).
Corresponding systemd service for weston is already in master, so this par=
t was easy. But=C2=A0after booting the system up, weston desktop appeared a=
nd was replaced in a few seconds with the tty1 console. What was even more =
strange, after a few minutes the desktop reappeared again.

Later on today I found out that the problem is in getty@tty1.service, ( ge=
tty@tty1.service, ) which hasn't be installed /etc/systemd/system/getty.tar=
get.wants/, it seems to me that this service is not needed at all because s=
ystemd will spin up agetty for each chvt=C2=A0anyway.

I was able to track the origin of this file down to the function systemd_p=
reset_all and was able to remove the file using a custom function (simple r=
m) linked in=C2=A0IMAGE_PREPROCESS_COMMAND variable, but would rather do it=
 somewhere else.

Thanks

TM

--DVUEVCLbzp48sxY16dfY
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all, I spent the whole day today fixing this strange problem.<br /><br /=
>I was trying to get weston working with systemd under root (no other user =
installed).<br />Corresponding systemd service for weston is already in mas=
ter, so this part was easy. But&nbsp;after booting the system up, weston de=
sktop appeared and was replaced in a few seconds with the tty1 console. Wha=
t was even more strange, after a few minutes the desktop reappeared again.&=
nbsp;<br /><br />Later on today I found out that the problem is in <a href=
=3D"mailto:getty@tty1.service,">getty@tty1.service, </a>which hasn't be in=
stalled /etc/systemd/system/getty.target.wants/, it seems to me that this s=
ervice is not needed at all because systemd will spin up agetty for each ch=
vt&nbsp;anyway.<br /><br />I was able to track the origin of this file down=
 to the function systemd_preset_all and was able to remove the file using a=
 custom function (simple rm) linked in&nbsp;IMAGE_PREPROCESS_COMMAND variab=
le, but would rather do it somewhere else.&nbsp;<br /><br />Thanks&nbsp;<br=
 /><br />TM

--DVUEVCLbzp48sxY16dfY--
