Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.7548.1576652413177848790
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 23:00:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=RXrwoP5J;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 140.211.169.56, mailfrom: prvs=1255d1f8cb=holzmayr@rsi-elektrotechnik.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92C95E01233; Tue, 17 Dec 2019 23:00:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [85.215.255.20 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [85.215.255.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 865F1E01082
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 23:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1576652407;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=WSQbuKdbvf+ewieom/PQgh358RidBH+kWrKzIguCkhQ=;
	b=RXrwoP5JQ0hRxCzvcOAWVzbGFnbHJwlrMVZG9daacpcdnZapX2ujwTXZ52ZLI9PJ69
	1Z7sOpDkiJdP0ZcYW+ISQCilHi0nnWcAV8GJ8tA5waJ4kaMud30SjQFW8CEyOYWPxaX2
	/US06ZYMLITy8cR2zrH6bE/Muw/eUsG+Dw1CBwE+Zn9Q3xEGOZg4Mq9YQAI7MzHc0nqj
	ubt9wVPHmnR6GI0lOPQQaUwz5oJi4uGH3bEfLrCUf49UzNUc1pQX7PUZAOWiGHqc28vB
	3RSsO4wMBVlzvklSS4z47x6W/TciT6NiPET4cm1S0gnedPt3+tR0kHGNHQ52kxwZef7g
	6fWQ==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.0.7 AUTH)
	with ESMTPSA id 309d82vBI7072jy
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Wed, 18 Dec 2019 08:00:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1576652407; x=1577257207;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=WS
	QbuKdbvf+ewieom/PQgh358RidBH+kWrKzIguCkhQ=; b=g3lDr+rpceHZJsykCt
	pYkWQWcUXdh5llef32VfpWOui0gSYJ/kP6iBqo/FjwB2Jo2VyqtsurSk5KuyHIMD
	hX6nscu2VrXEhmVLZQf1WcPm0cQwh0M+8Ik8McE25M80Jgy9zsBSaQqfByylOiTf
	dBH5Ip1+CNFp3kaOUGlNaMNjY=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.3) with ESMTPSA id md50000228519.msg; 
	Wed, 18 Dec 2019 08:00:06 +0100
X-MDArrival-Date: Wed, 18 Dec 2019 08:00:06 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1255d1f8cb=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Wed, 18 Dec 2019 08:00:04 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: Ed Vidal <develone@sbcglobal.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] Raspberry pi 4 recipe and layer issues.
Message-ID: <20191218070004.eheuurpvwtvfnfpm@jholzmayr.localdomain>
References: <2003464481.391462.1576630538725.ref@mail.yahoo.com>
 <2003464481.391462.1576630538725@mail.yahoo.com>
MIME-Version: 1.0
In-Reply-To: <2003464481.391462.1576630538725@mail.yahoo.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Howdy!

On Wed, Dec 18, 2019 at 12:55:38AM +0000, Ed Vidal wrote:
> Hi All
> This is the error that I see bitbake -DDD arachne-pnr in log.do_compile
> My recipe is found at=C2=A0https://github.com/develone/meta-yosys-tools/b=
lob/master/recipes-arachne-pnr/arachne-pnr/arachne-pnr_0.1.bb
>=20
> I have added to the depends DEPENDS =3D " icestorm busybox" no help
> /bin/sh: 1: sum: not found
> I did a search for does busybox provide sumhttps://busybox.net/BusyBox.ht=
mlIt provides both sh & sum
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 [, [[, acpid, add-shell, addgroup, adduser, a=
djtimex, ar, arp,=C2=A0 =C2=A0 =C2=A0 =C2=A0 arping, awk, base64, basename,=
 bbconfig, beep, blkid, blockdev,=C2=A0 =C2=A0 =C2=A0 =C2=A0 bootchartd, br=
ctl, bunzip2, bzcat, bzip2, cal, cat, catv, chat,=C2=A0 =C2=A0 =C2=A0 =C2=
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

Thats only halfways correct: busybox *CAN* provide sum, if configured
accordingly. It obviously is not, in your case. The easiest way to get
sum is probably to just pull in coreutils:

http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-core/coreu=
tils/coreutils_8.31.bb

Greetz

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

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548

