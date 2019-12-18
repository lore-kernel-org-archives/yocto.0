Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.11332.1576680891022249343
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Dec 2019 06:54:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sbcglobal.net header.s=s2048 header.b=RBP5ulWG;
 spf=none, err=permanent DNS error (domain: sbcglobal.net, ip: 140.211.169.56, mailfrom: develone@sbcglobal.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 926BAE00DEE; Wed, 18 Dec 2019 06:54:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [74.6.131.126 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic311-16.consmr.mail.bf2.yahoo.com (sonic311-16.consmr.mail.bf2.yahoo.com [74.6.131.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B84DEE00D4F
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2019 06:54:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048; t=1576680888; bh=YCr6VFz0XAeEYfQYAhAdIwaKTCUu86fDM11r7gHSAfA=; h=Date:From:To:Cc:Subject:References:From:Subject; b=RBP5ulWGlILY0eR8cD/8jNjfVrvdE/7Ce6idhpJhhx29JFY199Pz6R24jio6+4icf5rg0u04t4qvRk3KfF690mkJQReopBgq41oUk7xYxvuo4iw6lREw4k37Zr9io/Gh8uhlID20AGFGj6sqUR61gOXGiH/TGOqY7PxHymQxtUlVVT3eUjGXA3ANw/vY1xaCOkTP0uPeSjFt/p4Jn3QO/JKNE3SE8tzcLq2eVSmlSUzgh1z8gB1YYqc16dsun5hpc5x8/dq90jmd5praBuu6LTEmUfDPhBN8Fchr8ACQWoffVYtbwc8QKCxv5phBQ5dtrUPB35Mjws0jk6eKtFOpeg==
X-YMail-OSG: Tm9AKp0VM1mEsQXcFJQB_SqMrCqDyhR0k5OWYaaRgCSaCAJq_k2NWepe22LVR0K
 ezq0nKGk9lrWwue9OlY_.YvRW9DaTD_T2d.moBEQDZGjzHXedfUgOF2TAuXvIT_0FNexpbWrZlTc
 598024q0MmweksrQDTV3KnDQz0MtMZz.TLOiteTdceqDiqtGoIraFb3YjlVG2K.GiK.e8aq3eLzB
 GrD9T29RXKGjn1UN.sp8hlRXEvYZcIFiLEKMGnM74Q6q3RU_hQdhnEGiGdeTf3n8nNOa_r9M4ryg
 FYoGJ6yVvkQvS0pSRxkJwxY7nqFhS.U1tFktk8gCLZy4bJPwvcxhu5GLNc6WCQoiJL3qe5ORPgLe
 JhbWBSX5Q7i79CuPutGS6HJk5Op9u6LNT7cKeZnpKGUHS.8wrj.ne_udMdSTf9QaffFh8mhzMrF1
 xhZr48a8OWZVB27HHxPzPhClO9EioqOx18DI1gzSFzvvzOm28vfw6hUR_jH8T5notXwgMOM.Ud_d
 kIblOyM2tDAC.bJ5exw8ScfpzI83eExKh2Zq587i0SDRC.w8.B3GBMCC_P6Ap4Q3pE7vKAMZTjHl
 aqC4ZFa7UWiub2TmZ8xevSnL01fL80uVMfk_plD9C0p4OmNScKxA5ZTB4LbDE7QMNQ8dCdXosNni
 Txi.6uafEvEwwoHo.5LWGSLb22B.xqqUmobEpGdhF__PUXXgtT_JTxujbaHmEpg6FnVm7ahz5LYs
 3L9XptbTzRC_FglyEbrzs2gpLxn4OTlJVM2SX9RpkW3y1vnjhusShDahrSdFlW9XGUwHo5HmFe9X
 XL8EgxxicV_7dh69MQYX4Sz2nSAb6y1nvJ_nTTxC8e_yFZ3ASMBy2ddv0s5PvYCVvS58jYRKrhAJ
 NeonVfJcLAFqbOsbfx22H2eo078PKFsDXLJVNrd.eG9RUUZkRfU0fZ2kxvuFkgZAgouYIaJFT_H2
 oUo0n5dL1AWRHcA2anrR9J4Gsj9soGQb9vE1or7OiWQkfl5fEHUfW849jK4I4oswbr9W1J9JmR8m
 zbMXFIz3N46WEiunmqYilCjSpM0oeEn_F4f_VTySg5VzwX51psV39SmW1BhwtMedC5JyQc768Ksg
 Es6XGnxh6oF.1ws7V0Ja5ZDMRU23dEUyxd7lnw6aS7ncT9FgKWvTFGi3.EY4isIt.BVH0B16d1kg
 fT2A5GccgD0NXKiU0tPO7DIT5eUCB18iBEMglrxhzOfe1QFcfv.SEIikGdN0KqiTwI7ag_Whrn0S
 jp6DuIt77KR2BKLwOjGZpjQHwYscCPzJ3mKGX0p4T3QTs4DMB05rIJuUcwfR4UOUy96AlR8NkJfZ
 A13ZsjvDX5taY6U3CBahIxwOj4aIvym.nnT3jA69m
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.bf2.yahoo.com with HTTP; Wed, 18 Dec 2019 14:54:48 +0000
Date: Wed, 18 Dec 2019 14:54:46 +0000 (UTC)
From: "Ed Vidal" <develone@sbcglobal.net>
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <517194692.534617.1576680886678@mail.yahoo.com>
Subject: Re: [yocto] Raspberry pi 4 recipe and layer issues.
MIME-Version: 1.0
References: <517194692.534617.1576680886678.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14873 YMailNorrin Mozilla/5.0 (X11; Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko) Raspbian Chromium/74.0.3729.157 Chrome/74.0.3729.157 Safari/537.36
Content-Type: multipart/alternative; 
	boundary="----=_Part_534616_1808374833.1576680886676"

------=_Part_534616_1808374833.1576680886676
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Josef,
I restored my poky repository.
These are in my arachne-pnr_0.1.bb.=C2=A0DEPENDS =3D " icestorm busybox cor=
eutils-native"
RDEPENDS_${PN} =3D "coreutils"
When I try the following,
bitbake -c cleanall arachne-pnr

bitbake -DDD arachne-pnr

Still getting this error.| /bin/sh: 1: sum: not found

Thanks,Regards
Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613=20

    On Wednesday, December 18, 2019, 6:35:22 AM MST, Josef Holzmayr <holzma=
yr@rsi-elektrotechnik.de> wrote: =20
=20
 Howdy!

On Wed, Dec 18, 2019 at 01:12:23PM +0000, Edward Vidal wrote:
>=20
> Hi Joesf,=C2=A0I did not understand what you meant with "pull".=C2=A0 The=
se are the steps that I did.
> Downloaded the file coreutils_8.31.bb from openemedded to ~/wkg/yocto-zeu=
sSaved the original file poky/meta/recipes-core/coreutils/coreutils_8.31.bb=
 ~/wkg/yocto-zeus/repo120319
> Made the chgs below to rpi4-64/poky/meta/recipes-core/coreutils/coreutils=
_8.31.bb
> vidal@ws009:~/wkg/yocto-zeus-3.0$ diff coreutils_8.31.bb repo120319/coreu=
tils_8.31.bb=C2=A052c52<=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0sha384sum sha512sum shred shuf sort split sum tac tail tee tes=
t timeout \--->=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0sha384sum sha512sum shred shuf sort split stdbuf sum tac tail tee test t=
imeout \60,63d59<=C2=A0< PACKAGE_BEFORE_PN_class-target +=3D "coreutils-std=
buf"< FILES_coreutils-stdbuf =3D "${bindir}/stdbuf ${libdir}/coreutils/libs=
tdbuf.so"< RDEPENDS_coreutils_class-target +=3D "coreutils-stdbuf"
> Tested with DEPENDS =3D " icestorm busybox " and DEPENDS =3D " icestorm b=
usybox coreutils"
> Still getting error "/bin/sh: 1: sum: not found" with bitbake -DDD arachn=
e-pnr
> Also tried adding coreutils to inherit line and that failed.
> Let me know if I can provide additional information.
> Thanks for you help.
> Regards=C2=A0

If your recipe needs sum at build time, then it shall have
DEPENDS =3D "coreutils-native"

If it needs sum at runtime, then it shall have
RDEPENDS_${PN} =3D "coreutils"

No need to download any recipes from anywhere, coreutils is part of
yocto already.

And please, try to improve the formatting of your mails. It is
incredibly hard to actually read and understand what you do or ask.

Greetz

>=20
>=20
> Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613=20
>=20
>=C2=A0 =C2=A0 On Wednesday, December 18, 2019, 12:00:16 AM MST, Josef Holz=
mayr <holzmayr@rsi-elektrotechnik.de> wrote:=C2=A0=20
>=C2=A0=20
>=C2=A0 Howdy!
>=20
> On Wed, Dec 18, 2019 at 12:55:38AM +0000, Ed Vidal wrote:
> > Hi All
> > This is the error that I see bitbake -DDD arachne-pnr in log.do_compile
> > My recipe is found at=C2=A0https://github.com/develone/meta-yosys-tools=
/blob/master/recipes-arachne-pnr/arachne-pnr/arachne-pnr_0.1.bb
> >=20
> > I have added to the depends DEPENDS =3D " icestorm busybox" no help
> > /bin/sh: 1: sum: not found
> > I did a search for does busybox provide sumhttps://busybox.net/BusyBox.=
htmlIt provides both sh & sum
> > =C2=A0 =C2=A0 =C2=A0 =C2=A0 [, [[, acpid, add-shell, addgroup, adduser,=
 adjtimex, ar, arp,=C2=A0 =C2=A0 =C2=A0 =C2=A0 arping, awk, base64, basenam=
e, bbconfig, beep, blkid, blockdev,=C2=A0 =C2=A0 =C2=A0 =C2=A0 bootchartd, =
brctl, bunzip2, bzcat, bzip2, cal, cat, catv, chat,=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 chattr, chgrp, chmod, chown, chpasswd, chpst, chroot, chrt, chvt,=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 cksum, clear, cmp, comm, conspy, cp, cpio, crond, cro=
ntab, cryptpw,=C2=A0 =C2=A0 =C2=A0 =C2=A0 cttyhack, cut, date, dc, dd, deal=
locvt, delgroup, deluser, depmod,=C2=A0 =C2=A0 =C2=A0 =C2=A0 devfsd, devmem=
, df, dhcprelay, diff, dirname, dmesg, dnsd,=C2=A0 =C2=A0 =C2=A0 =C2=A0 dns=
domainname, dos2unix, dpkg, dpkg-deb, du, dumpkmap, dumpleases,=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 echo, ed, egrep, eject, env, envdir, envuidgid, ether-wak=
e, expand,=C2=A0 =C2=A0 =C2=A0 =C2=A0 expr, fakeidentd, false, fbset, fbspl=
ash, fdflush, fdformat, fdisk,=C2=A0 =C2=A0 =C2=A0 =C2=A0 fgconsole, fgrep,=
 find, findfs, flash_eraseall, flash_lock,=C2=A0 =C2=A0 =C2=A0 =C2=A0 flash=
_unlock, flashcp, flock, fold, free, freeramdisk, fsck,=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 fsck.minix, fsync, ftpd, ftpget, ftpput, fuser, getopt, getty, grep=
,=C2=A0 =C2=A0 =C2=A0 =C2=A0 gunzip, gzip, halt, hd, hdparm, head, hexdump,=
 hostid, hostname,=C2=A0 =C2=A0 =C2=A0 =C2=A0 httpd, hush, hwclock, id, ifc=
onfig, ifdown, ifenslave, ifplugd,=C2=A0 =C2=A0 =C2=A0 =C2=A0 ifup, inetd, =
init, inotifyd, insmod, install, ionice, iostat, ip,=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ipaddr, ipcalc, ipcrm, ipcs, iplink, iproute, iprule, iptunnel,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 kbd_mode, kill, killall, killall5, klogd, last, le=
ngth, less,=C2=A0 =C2=A0 =C2=A0 =C2=A0 linux32, linux64, linuxrc, ln, loadf=
ont, loadkmap, logger, login,=C2=A0 =C2=A0 =C2=A0 =C2=A0 logname, logread, =
losetup, lpd, lpq, lpr, ls, lsattr, lsmod, lspci,=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 lsusb, lzcat, lzma, lzop, lzopcat, makedevs, makemime, man, md5sum,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 mdev, mesg, microcom, mkdir, mkdosfs, mke2fs, mkfi=
fo, mkfs.ext2,=C2=A0 =C2=A0 =C2=A0 =C2=A0 mkfs.minix, mkfs.reiser, mkfs.vfa=
t, mknod, mkpasswd, mkswap, mktemp,=C2=A0 =C2=A0 =C2=A0 =C2=A0 modinfo, mod=
probe, more, mount, mountpoint, mpstat, msh, mt, mv,=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 nameif, nanddump, nandwrite, nbd-client, nc, netstat, nice, nmeter,=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 nohup, nslookup, ntpd, od, openvt, passwd, patc=
h, pgrep, pidof,=C2=A0 =C2=A0 =C2=A0 =C2=A0 ping, ping6, pipe_progress, piv=
ot_root, pkill, pmap, popmaildir,=C2=A0 =C2=A0 =C2=A0 =C2=A0 poweroff, powe=
rtop, printenv, printf, ps, pscan, pwd, raidautorun,=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 rdate, rdev, readahead, readlink, readprofile, realpath, reboot,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 reformime, remove-shell, renice, reset, resize, re=
v, rfkill, rm,=C2=A0 =C2=A0 =C2=A0 =C2=A0 rmdir, rmmod, route, rpm, rpm2cpi=
o, rtcwake, run-parts, runlevel,=C2=A0 =C2=A0 =C2=A0 =C2=A0 runsv, runsvdir=
, rx, script, scriptreplay, sed, sendmail, seq,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
setarch, setconsole, setfont, setkeycodes, setlogcons, setsid,=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 setuidgid, sh, sha1sum, sha256sum, sha512sum, showkey, slatt=
ach,=C2=A0 =C2=A0 =C2=A0 =C2=A0 sleep, smemcap, softlimit, sort, split, sta=
rt-stop-daemon, stat,=C2=A0 =C2=A0 =C2=A0 =C2=A0 strings, stty, su, sulogin=
, sum, sv, svlogd, swapoff, swapon,=C2=A0 =C2=A0 =C2=A0 =C2=A0 switch_root,=
 sync, sysctl, syslogd, tac, tail, tar, taskset, tcpsvd,=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 tee, telnet, telnetd, test, tftp, tftpd, time, timeout, top, tou=
ch,=C2=A0 =C2=A0 =C2=A0 =C2=A0 tr, traceroute, traceroute6, true, tty, ttys=
ize, tunctl, tune2fs,=C2=A0 =C2=A0 =C2=A0 =C2=A0 ubiattach, ubidetach, udhc=
pc, udhcpd, udpsvd, umount, uname,=C2=A0 =C2=A0 =C2=A0 =C2=A0 uncompress, u=
nexpand, uniq, unix2dos, unlzma, unlzop, unxz, unzip,=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 uptime, usleep, uudecode, uuencode, vconfig, vi, vlock, volname,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 wall, watch, watchdog, wc, wget, which, who, whoam=
i, xargs, xz,=C2=A0 =C2=A0 =C2=A0 =C2=A0 xzcat, yes, zcat, zcip
>=20
> Thats only halfways correct: busybox *CAN* provide sum, if configured
> accordingly. It obviously is not, in your case. The easiest way to get
> sum is probably to just pull in coreutils:
>=20
> http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-core/cor=
eutils/coreutils_8.31.bb
>=20
> Greetz
>=20
> --=20
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
> Josef Holzmayr
> Software Developer Embedded Systems
>=20
> Tel: +49 8444 9204-48
> Fax: +49 8444 9204-50
>=20
> R-S-I Elektrotechnik GmbH & Co. KG
> Woelkestrasse 11
> D-85301 Schweitenkirchen
> www.rsi-elektrotechnik.de
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
> Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 17039=
3
> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> Ust-IdNr: DE 128592548=20
>=20
> _____________________________________________________________
> Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> USt-IdNr.: DE 128592548
>=C2=A0=20

--=20
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 170393
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548=20
 =20

------=_Part_534616_1808374833.1576680886676
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp5e6f700eyahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div><div dir=3D"ltr" data-setdir=3D"false">Hi Josef,</div><div dir=3D"l=
tr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">=
I restored my poky repository.</div><div dir=3D"ltr" data-setdir=3D"false">=
<br></div><div dir=3D"ltr" data-setdir=3D"false">These are in my arachne-pn=
r_0.1.bb.</div><div dir=3D"ltr" data-setdir=3D"false">&nbsp;</div><div dir=
=3D"ltr" data-setdir=3D"false"><div><div>DEPENDS =3D " icestorm busybox cor=
eutils-native"</div><div><br></div><div>RDEPENDS_${PN} =3D "coreutils"</div=
><div><br></div><div dir=3D"ltr" data-setdir=3D"false">When I try the follo=
wing,</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr=
" data-setdir=3D"false"><span>bitbake -c cleanall arachne-pnr</span><br></d=
iv></div><div dir=3D"ltr" data-setdir=3D"false"><span><br></span></div><div=
 dir=3D"ltr" data-setdir=3D"false"><span>bitbake -DDD arachne-pnr</span><br=
></div><div dir=3D"ltr" data-setdir=3D"false"><span><br></span></div><span>=
<div dir=3D"ltr" data-setdir=3D"false"><span>Still getting this error.</spa=
n></div>| /bin/sh: 1: sum: not found</span><br></div><div dir=3D"ltr" data-=
setdir=3D"false"><span><br></span></div><div dir=3D"ltr" data-setdir=3D"fal=
se"><span>Thanks,</span></div><div dir=3D"ltr" data-setdir=3D"false">Regard=
s</div><div dir=3D"ltr" data-setdir=3D"false"><span><br></span></div><div c=
lass=3D"ydp5e6f700esignature">Edward Vidal Jr. e-mail develone@sbcglobal.ne=
t 915-595-1613</div></div>
        <div><br></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_7145054007" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Wednesday, December 18, 2019, 6:35:22 AM MST, Josef =
Holzmayr &lt;holzmayr@rsi-elektrotechnik.de&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div>Howdy!<br clear=3D"none"><br clear=3D"none">On Wed, De=
c 18, 2019 at 01:12:23PM +0000, Edward Vidal wrote:<br clear=3D"none">&gt; =
<br clear=3D"none">&gt; Hi Joesf,&nbsp;I did not understand what you meant =
with "pull".&nbsp; These are the steps that I did.<br clear=3D"none">&gt; D=
ownloaded the file coreutils_8.31.bb from openemedded to ~/wkg/yocto-zeusSa=
ved the original file poky/meta/recipes-core/coreutils/coreutils_8.31.bb ~/=
wkg/yocto-zeus/repo120319<br clear=3D"none">&gt; Made the chgs below to rpi=
4-64/poky/meta/recipes-core/coreutils/coreutils_8.31.bb<br clear=3D"none">&=
gt; <a shape=3D"rect" ymailto=3D"mailto:vidal@ws009" href=3D"mailto:vidal@w=
s009">vidal@ws009</a>:~/wkg/yocto-zeus-3.0$ diff coreutils_8.31.bb repo1203=
19/coreutils_8.31.bb&nbsp;52c52&lt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;sha384sum sha512sum shred shuf sort split sum tac tai=
l tee test timeout \---&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;sha384sum sha512sum shred shuf sort split stdbuf sum tac tail=
 tee test timeout \60,63d59&lt;&nbsp;&lt; PACKAGE_BEFORE_PN_class-target +=
=3D "coreutils-stdbuf"&lt; FILES_coreutils-stdbuf =3D "${bindir}/stdbuf ${l=
ibdir}/coreutils/libstdbuf.so"&lt; RDEPENDS_coreutils_class-target +=3D "co=
reutils-stdbuf"<br clear=3D"none">&gt; Tested with DEPENDS =3D " icestorm b=
usybox " and DEPENDS =3D " icestorm busybox coreutils"<br clear=3D"none">&g=
t; Still getting error "/bin/sh: 1: sum: not found" with bitbake -DDD arach=
ne-pnr<br clear=3D"none">&gt; Also tried adding coreutils to inherit line a=
nd that failed.<br clear=3D"none">&gt; Let me know if I can provide additio=
nal information.<br clear=3D"none">&gt; Thanks for you help.<br clear=3D"no=
ne">&gt; Regards&nbsp;<br clear=3D"none"><br clear=3D"none">If your recipe =
needs sum at build time, then it shall have<br clear=3D"none">DEPENDS =3D "=
coreutils-native"<br clear=3D"none"><br clear=3D"none">If it needs sum at r=
untime, then it shall have<br clear=3D"none">RDEPENDS_${PN} =3D "coreutils"=
<br clear=3D"none"><br clear=3D"none">No need to download any recipes from =
anywhere, coreutils is part of<br clear=3D"none">yocto already.<br clear=3D=
"none"><br clear=3D"none">And please, try to improve the formatting of your=
 mails. It is<br clear=3D"none">incredibly hard to actually read and unders=
tand what you do or ask.<br clear=3D"none"><br clear=3D"none">Greetz<br cle=
ar=3D"none"><br clear=3D"none">&gt; <br clear=3D"none">&gt; <br clear=3D"no=
ne">&gt; Edward Vidal Jr. e-mail <a shape=3D"rect" ymailto=3D"mailto:develo=
ne@sbcglobal.net" href=3D"mailto:develone@sbcglobal.net">develone@sbcglobal=
.net</a> 915-595-1613 <br clear=3D"none">&gt; <br clear=3D"none">&gt;&nbsp;=
 &nbsp;  On Wednesday, December 18, 2019, 12:00:16 AM MST, Josef Holzmayr &=
lt;<a shape=3D"rect" ymailto=3D"mailto:holzmayr@rsi-elektrotechnik.de" href=
=3D"mailto:holzmayr@rsi-elektrotechnik.de">holzmayr@rsi-elektrotechnik.de</=
a>&gt; wrote:&nbsp; <br clear=3D"none">&gt;&nbsp; <br clear=3D"none">&gt;&n=
bsp; Howdy!<br clear=3D"none">&gt; <br clear=3D"none">&gt; On Wed, Dec 18, =
2019 at 12:55:38AM +0000, Ed Vidal wrote:<br clear=3D"none">&gt; &gt; Hi Al=
l<br clear=3D"none">&gt; &gt; This is the error that I see bitbake -DDD ara=
chne-pnr in log.do_compile<br clear=3D"none">&gt; &gt; My recipe is found a=
t&nbsp;<a shape=3D"rect" href=3D"https://github.com/develone/meta-yosys-too=
ls/blob/master/recipes-arachne-pnr/arachne-pnr/arachne-pnr_0.1.bb" target=
=3D"_blank">https://github.com/develone/meta-yosys-tools/blob/master/recipe=
s-arachne-pnr/arachne-pnr/arachne-pnr_0.1.bb</a><br clear=3D"none">&gt; &gt=
; <br clear=3D"none">&gt; &gt; I have added to the depends DEPENDS =3D " ic=
estorm busybox" no help<br clear=3D"none">&gt; &gt; /bin/sh: 1: sum: not fo=
und<br clear=3D"none">&gt; &gt; I did a search for does busybox provide sum=
https://busybox.net/BusyBox.htmlIt provides both sh &amp; sum<br clear=3D"n=
one">&gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; [, [[, acpid, add-shell, addgrou=
p, adduser, adjtimex, ar, arp,&nbsp; &nbsp; &nbsp; &nbsp; arping, awk, base=
64, basename, bbconfig, beep, blkid, blockdev,&nbsp; &nbsp; &nbsp; &nbsp; b=
ootchartd, brctl, bunzip2, bzcat, bzip2, cal, cat, catv, chat,&nbsp; &nbsp;=
 &nbsp; &nbsp; chattr, chgrp, chmod, chown, chpasswd, chpst, chroot, chrt, =
chvt,&nbsp; &nbsp; &nbsp; &nbsp; cksum, clear, cmp, comm, conspy, cp, cpio,=
 crond, crontab, cryptpw,&nbsp; &nbsp; &nbsp; &nbsp; cttyhack, cut, date, d=
c, dd, deallocvt, delgroup, deluser, depmod,&nbsp; &nbsp; &nbsp; &nbsp; dev=
fsd, devmem, df, dhcprelay, diff, dirname, dmesg, dnsd,&nbsp; &nbsp; &nbsp;=
 &nbsp; dnsdomainname, dos2unix, dpkg, dpkg-deb, du, dumpkmap, dumpleases,&=
nbsp; &nbsp; &nbsp; &nbsp; echo, ed, egrep, eject, env, envdir, envuidgid, =
ether-wake, expand,&nbsp; &nbsp; &nbsp; &nbsp; expr, fakeidentd, false, fbs=
et, fbsplash, fdflush, fdformat, fdisk,&nbsp; &nbsp; &nbsp; &nbsp; fgconsol=
e, fgrep, find, findfs, flash_eraseall, flash_lock,&nbsp; &nbsp; &nbsp; &nb=
sp; flash_unlock, flashcp, flock, fold, free, freeramdisk, fsck,&nbsp; &nbs=
p; &nbsp; &nbsp; fsck.minix, fsync, ftpd, ftpget, ftpput, fuser, getopt, ge=
tty, grep,&nbsp; &nbsp; &nbsp; &nbsp; gunzip, gzip, halt, hd, hdparm, head,=
 hexdump, hostid, hostname,&nbsp; &nbsp; &nbsp; &nbsp; httpd, hush, hwclock=
, id, ifconfig, ifdown, ifenslave, ifplugd,&nbsp; &nbsp; &nbsp; &nbsp; ifup=
, inetd, init, inotifyd, insmod, install, ionice, iostat, ip,&nbsp; &nbsp; =
&nbsp; &nbsp; ipaddr, ipcalc, ipcrm, ipcs, iplink, iproute, iprule, iptunne=
l,&nbsp; &nbsp; &nbsp; &nbsp; kbd_mode, kill, killall, killall5, klogd, las=
t, length, less,&nbsp; &nbsp; &nbsp; &nbsp; linux32, linux64, linuxrc, ln, =
loadfont, loadkmap, logger, login,&nbsp; &nbsp; &nbsp; &nbsp; logname, logr=
ead, losetup, lpd, lpq, lpr, ls, lsattr, lsmod, lspci,&nbsp; &nbsp; &nbsp; =
&nbsp; lsusb, lzcat, lzma, lzop, lzopcat, makedevs, makemime, man, md5sum,&=
nbsp; &nbsp; &nbsp; &nbsp; mdev, mesg, microcom, mkdir, mkdosfs, mke2fs, mk=
fifo, mkfs.ext2,&nbsp; &nbsp; &nbsp; &nbsp; mkfs.minix, mkfs.reiser, mkfs.v=
fat, mknod, mkpasswd, mkswap, mktemp,&nbsp; &nbsp; &nbsp; &nbsp; modinfo, m=
odprobe, more, mount, mountpoint, mpstat, msh, mt, mv,&nbsp; &nbsp; &nbsp; =
&nbsp; nameif, nanddump, nandwrite, nbd-client, nc, netstat, nice, nmeter,&=
nbsp; &nbsp; &nbsp; &nbsp; nohup, nslookup, ntpd, od, openvt, passwd, patch=
, pgrep, pidof,&nbsp; &nbsp; &nbsp; &nbsp; ping, ping6, pipe_progress, pivo=
t_root, pkill, pmap, popmaildir,&nbsp; &nbsp; &nbsp; &nbsp; poweroff, power=
top, printenv, printf, ps, pscan, pwd, raidautorun,&nbsp; &nbsp; &nbsp; &nb=
sp; rdate, rdev, readahead, readlink, readprofile, realpath, reboot,&nbsp; =
&nbsp; &nbsp; &nbsp; reformime, remove-shell, renice, reset, resize, rev, r=
fkill, rm,&nbsp; &nbsp; &nbsp; &nbsp; rmdir, rmmod, route, rpm, rpm2cpio, r=
tcwake, run-parts, runlevel,&nbsp; &nbsp; &nbsp; &nbsp; runsv, runsvdir, rx=
, script, scriptreplay, sed, sendmail, seq,&nbsp; &nbsp; &nbsp; &nbsp; seta=
rch, setconsole, setfont, setkeycodes, setlogcons, setsid,&nbsp; &nbsp; &nb=
sp; &nbsp; setuidgid, sh, sha1sum, sha256sum, sha512sum, showkey, slattach,=
&nbsp; &nbsp; &nbsp; &nbsp; sleep, smemcap, softlimit, sort, split, start-s=
top-daemon, stat,&nbsp; &nbsp; &nbsp; &nbsp; strings, stty, su, sulogin, su=
m, sv, svlogd, swapoff, swapon,&nbsp; &nbsp; &nbsp; &nbsp; switch_root, syn=
c, sysctl, syslogd, tac, tail, tar, taskset, tcpsvd,&nbsp; &nbsp; &nbsp; &n=
bsp; tee, telnet, telnetd, test, tftp, tftpd, time, timeout, top, touch,&nb=
sp; &nbsp; &nbsp; &nbsp; tr, traceroute, traceroute6, true, tty, ttysize, t=
unctl, tune2fs,&nbsp; &nbsp; &nbsp; &nbsp; ubiattach, ubidetach, udhcpc, ud=
hcpd, udpsvd, umount, uname,&nbsp; &nbsp; &nbsp; &nbsp; uncompress, unexpan=
d, uniq, unix2dos, unlzma, unlzop, unxz, unzip,&nbsp; &nbsp; &nbsp; &nbsp; =
uptime, usleep, uudecode, uuencode, vconfig, vi, vlock, volname,&nbsp; &nbs=
p; &nbsp; &nbsp; wall, watch, watchdog, wc, wget, which, who, whoami, xargs=
, xz,&nbsp; &nbsp; &nbsp; &nbsp; xzcat, yes, zcat, zcip<br clear=3D"none">&=
gt; <br clear=3D"none">&gt; Thats only halfways correct: busybox *CAN* prov=
ide sum, if configured<br clear=3D"none">&gt; accordingly. It obviously is =
not, in your case. The easiest way to get<br clear=3D"none">&gt; sum is pro=
bably to just pull in coreutils:<br clear=3D"none">&gt; <br clear=3D"none">=
&gt; <a shape=3D"rect" href=3D"http://cgit.openembedded.org/openembedded-co=
re/tree/meta/recipes-core/coreutils/coreutils_8.31.bb" target=3D"_blank">ht=
tp://cgit.openembedded.org/openembedded-core/tree/meta/recipes-core/coreuti=
ls/coreutils_8.31.bb</a><br clear=3D"none">&gt; <br clear=3D"none">&gt; Gre=
etz<br clear=3D"none">&gt; <br clear=3D"none">&gt; -- <br clear=3D"none">&g=
t; =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<br clear=3D=
"none">&gt; Josef Holzmayr<br clear=3D"none">&gt; Software Developer Embedd=
ed Systems<br clear=3D"none">&gt; <br clear=3D"none">&gt; Tel: +49 8444 920=
4-48<br clear=3D"none">&gt; Fax: +49 8444 9204-50<br clear=3D"none">&gt; <b=
r clear=3D"none">&gt; R-S-I Elektrotechnik GmbH &amp; Co. KG<br clear=3D"no=
ne">&gt; Woelkestrasse 11<br clear=3D"none">&gt; D-85301 Schweitenkirchen<b=
r clear=3D"none">&gt; www.rsi-elektrotechnik.de<br clear=3D"none">&gt; =E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<br clear=3D"none"=
>&gt; Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 1=
70393<br clear=3D"none">&gt; Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael So=
rg, Dipl.-Ing. Franz Sorg<br clear=3D"none">&gt; Ust-IdNr: DE 128592548 <br=
 clear=3D"none">&gt; <br clear=3D"none">&gt; ______________________________=
_______________________________<br clear=3D"none">&gt; Amtsgericht Ingolsta=
dt - GmbH: HRB 191328 - KG: HRA 170363<br clear=3D"none">&gt; Gesch=C3=A4ft=
sf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg<br clear=3D"none=
">&gt; USt-IdNr.: DE 128592548<div class=3D"yqt7289578326" id=3D"yqtfd14919=
"><br clear=3D"none">&gt;&nbsp;  <br clear=3D"none"><br clear=3D"none">-- <=
br clear=3D"none">=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94<br clear=3D"none">Josef Holzmayr<br clear=3D"none">Software Developer E=
mbedded Systems<br clear=3D"none"><br clear=3D"none">Tel: +49 8444 9204-48<=
br clear=3D"none">Fax: +49 8444 9204-50<br clear=3D"none"><br clear=3D"none=
">R-S-I Elektrotechnik GmbH &amp; Co. KG<br clear=3D"none">Woelkestrasse 11=
<br clear=3D"none">D-85301 Schweitenkirchen<br clear=3D"none">www.rsi-elekt=
rotechnik.de<br clear=3D"none">=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94<br clear=3D"none">Amtsgericht Ingolstadt =E2=80=93 GmbH:=
 HRB 191328 =E2=80=93 KG: HRA 170393<br clear=3D"none">Gesch=C3=A4ftsf=C3=
=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg<br clear=3D"none">Ust=
-IdNr: DE 128592548 <br clear=3D"none"></div></div>
            </div>
        </div></body></html>

------=_Part_534616_1808374833.1576680886676--
