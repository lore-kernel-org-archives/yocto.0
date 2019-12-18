Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.4908.1576630545507453944
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 16:55:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sbcglobal.net header.s=s2048 header.b=tCoMFiwS;
 spf=none, err=permanent DNS error (domain: sbcglobal.net, ip: 140.211.169.56, mailfrom: develone@sbcglobal.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1163E0122A; Tue, 17 Dec 2019 16:55:44 -0800 (PST)
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
	*      [74.6.134.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic307-6.consmr.mail.bf2.yahoo.com (sonic307-6.consmr.mail.bf2.yahoo.com [74.6.134.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AE73E01163
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 16:55:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048; t=1576630542; bh=WPvPkmXMXpdDHak//KwQUprbYlgbR5qwrzVcIuvUO/U=; h=Date:From:To:Subject:References:From:Subject; b=tCoMFiwSIMPcyja2w0eKl9QGE7qdgWul6Pvp+S4E6tAk5yXUQWbtMLYZj581seXJPdxTWLCBYyqyQ97tDWsaP13ug7s3wufUmRVOff0C3jVQ124cKLqmmahGQ9EGR8di0rmHtknPxj4jbK9bOBNoFmPDlP3lfx9swCh45/b+c6Skj2PLC4j0+vvbFCoTwPYIHx5A3oyLUSGBtbAxfEA9lZblScyT1T5jL6/xCuMHJSYYqbFQlCA47IriPNnOSf4d8h06o62+PRak7NjxEZTyepNfkof8AKxAjbyEaZTdFMI5ZSXQ8/FtEIPs5LHli7GkaMUXP2WYoOfWCPuatL7Sqg==
X-YMail-OSG: n7XQkjEVM1nC4sGRPRwZ3xY8Huhi8pGBbkrOI8ecCScAOpr07aVnBdSE2rS5D8x
 c1YkhTTbKOuW9pkHCVLDSogbg1LrWvhvoT7YtxTGv.5aSHO34FcH_Kkx9AJYpH7mU0Zj65xiz7Hg
 AaM7v5zsyGWuHrH6_xRQD1hT_pvqf5BE3Gv5k_1JslB4GyHoa.kAWmUgvnG6WM8vwLyg_Z.zHTDT
 crA7l6ZH32295DucFd.4tzN4aWwVKZjHuIi7ozUz5nJYIXLeyFSDQTyCqhbCVK33vhcGqnmH8ub0
 A2Hg.BjAS7WYCgTMS7M6JehFbq4_B02nPB7Rf5OLJstmhuze9tcCHdav5_9Y2heW5Qcg0kecKkpS
 .VBCfj1mJShG6w6UHgsx2zJbg.WvVzDL.jdM577JyR0R.obQn1YarqsLQripIBfXL9UZUuaMxIAr
 kG2NNZMxpZIlFbnAug2iZYTLA1wjfwsQDPe7FjpMNPCOQ9inXCGv08FHNqS1LuwKML0h8TrRk1q0
 PJ7SzfuCSP.QMWWTWsRWM8KrMPkLuk96eUrhIN7cyzMhukXIzNpfg_fK0NDyA.EkLFRuZXsFFwig
 0vbI0LKjU.2eod6MfKv4zF78ffdpk7rpNHK23jZX4nUJF5.FR_Z4sLQbkT1ClWE8n9HCck8gqndO
 StZqcAeouOQfHs7Y5JqNmZ3ZAiyM9HSR2pAoQUwjHKGgaf5g6S_tzN7ixwHfAf1afXnSzFF3ZfMG
 Rw2dGDyv23Xm2g_G6QU39avdFK0ZfDnKlsjlOursboHEJI6beUtPel5p7hgw.KWZ.dheWUDl.2nl
 9690KmY_q419cwFv_9uR6eYxKTZ1AoqnpEcKGJwVGnnbQfIFXFXdkJYtkJRFqQ75gOx8wGspVvIP
 OJOqtGGSiCzXaWkTb1Zs.l0El4XomoL7uf1Y9UddioE_3CQxoZ8jHbSF_hddSv.jvZuxqJ_wX_HO
 GQTXCn5FQ.N1uNi4Pi8sl0IIsh9Zezgx7OxA58KYvazl6ffmSAx2adduKiVgJr6ZHS4v8mQhX3bA
 9Vy3SfYYG.Y36oG3bidaTl9NCUi8PXEB86vNnzAbmK61YBkBwWAm_eIA3qM4Fxa9WrEcvSXI1wS1
 hL1GBU.vA44.e6hEyFSuiMoUSwnE8vGXcWJe5uLslku8x4HueKIDhm0TCRc8ALgYYy0uvChJbxda
 Tt.6c53DEzjlY.kLdfgyM435i1zq8Lc7lfbs0JvCe_20CAr.v9IBTmDi7O5qebEXcTs7eq0i2A.G
 mnN8f5M7FGMDGAEST8EHfoiiM3BawExWT7dSZDqqMwXBl9t8b2UVDurFOre7_Bdr7k3gb1llEwIS
 JY3X4Xan5UdiYRh6D.QDHoiNSMouLNSDm
Received: from sonic.gate.mail.ne1.yahoo.com by sonic307.consmr.mail.bf2.yahoo.com with HTTP; Wed, 18 Dec 2019 00:55:42 +0000
Date: Wed, 18 Dec 2019 00:55:38 +0000 (UTC)
From: "Ed Vidal" <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <2003464481.391462.1576630538725@mail.yahoo.com>
Subject: Re: Raspberry pi 4 recipe and layer issues.
MIME-Version: 1.0
References: <2003464481.391462.1576630538725.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14873 YMailNorrin Mozilla/5.0 (X11; Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko) Raspbian Chromium/74.0.3729.157 Chrome/74.0.3729.157 Safari/537.36
Content-Type: multipart/alternative; 
	boundary="----=_Part_391461_79389214.1576630538723"

------=_Part_391461_79389214.1576630538723
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi All
This is the error that I see bitbake -DDD arachne-pnr in log.do_compile
My recipe is found at=C2=A0https://github.com/develone/meta-yosys-tools/blo=
b/master/recipes-arachne-pnr/arachne-pnr/arachne-pnr_0.1.bb




I have added to the depends DEPENDS =3D " icestorm busybox" no help
/bin/sh: 1: sum: not found
I did a search for does busybox provide sumhttps://busybox.net/BusyBox.html=
It provides both sh & sum
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [, [[, acpid, add-shell, addgroup, adduser, adj=
timex, ar, arp,=C2=A0 =C2=A0 =C2=A0 =C2=A0 arping, awk, base64, basename, b=
bconfig, beep, blkid, blockdev,=C2=A0 =C2=A0 =C2=A0 =C2=A0 bootchartd, brct=
l, bunzip2, bzcat, bzip2, cal, cat, catv, chat,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
chattr, chgrp, chmod, chown, chpasswd, chpst, chroot, chrt, chvt,=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 cksum, clear, cmp, comm, conspy, cp, cpio, crond, crontab=
, cryptpw,=C2=A0 =C2=A0 =C2=A0 =C2=A0 cttyhack, cut, date, dc, dd, deallocv=
t, delgroup, deluser, depmod,=C2=A0 =C2=A0 =C2=A0 =C2=A0 devfsd, devmem, df=
, dhcprelay, diff, dirname, dmesg, dnsd,=C2=A0 =C2=A0 =C2=A0 =C2=A0 dnsdoma=
inname, dos2unix, dpkg, dpkg-deb, du, dumpkmap, dumpleases,=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 echo, ed, egrep, eject, env, envdir, envuidgid, ether-wake, e=
xpand,=C2=A0 =C2=A0 =C2=A0 =C2=A0 expr, fakeidentd, false, fbset, fbsplash,=
 fdflush, fdformat, fdisk,=C2=A0 =C2=A0 =C2=A0 =C2=A0 fgconsole, fgrep, fin=
d, findfs, flash_eraseall, flash_lock,=C2=A0 =C2=A0 =C2=A0 =C2=A0 flash_unl=
ock, flashcp, flock, fold, free, freeramdisk, fsck,=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 fsck.minix, fsync, ftpd, ftpget, ftpput, fuser, getopt, getty, grep,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 gunzip, gzip, halt, hd, hdparm, head, hexdump, hos=
tid, hostname,=C2=A0 =C2=A0 =C2=A0 =C2=A0 httpd, hush, hwclock, id, ifconfi=
g, ifdown, ifenslave, ifplugd,=C2=A0 =C2=A0 =C2=A0 =C2=A0 ifup, inetd, init=
, inotifyd, insmod, install, ionice, iostat, ip,=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 ipaddr, ipcalc, ipcrm, ipcs, iplink, iproute, iprule, iptunnel,=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 kbd_mode, kill, killall, killall5, klogd, last, length, l=
ess,=C2=A0 =C2=A0 =C2=A0 =C2=A0 linux32, linux64, linuxrc, ln, loadfont, lo=
adkmap, logger, login,=C2=A0 =C2=A0 =C2=A0 =C2=A0 logname, logread, losetup=
, lpd, lpq, lpr, ls, lsattr, lsmod, lspci,=C2=A0 =C2=A0 =C2=A0 =C2=A0 lsusb=
, lzcat, lzma, lzop, lzopcat, makedevs, makemime, man, md5sum,=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 mdev, mesg, microcom, mkdir, mkdosfs, mke2fs, mkfifo, mkfs.e=
xt2,=C2=A0 =C2=A0 =C2=A0 =C2=A0 mkfs.minix, mkfs.reiser, mkfs.vfat, mknod, =
mkpasswd, mkswap, mktemp,=C2=A0 =C2=A0 =C2=A0 =C2=A0 modinfo, modprobe, mor=
e, mount, mountpoint, mpstat, msh, mt, mv,=C2=A0 =C2=A0 =C2=A0 =C2=A0 namei=
f, nanddump, nandwrite, nbd-client, nc, netstat, nice, nmeter,=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 nohup, nslookup, ntpd, od, openvt, passwd, patch, pgrep, pid=
of,=C2=A0 =C2=A0 =C2=A0 =C2=A0 ping, ping6, pipe_progress, pivot_root, pkil=
l, pmap, popmaildir,=C2=A0 =C2=A0 =C2=A0 =C2=A0 poweroff, powertop, printen=
v, printf, ps, pscan, pwd, raidautorun,=C2=A0 =C2=A0 =C2=A0 =C2=A0 rdate, r=
dev, readahead, readlink, readprofile, realpath, reboot,=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 reformime, remove-shell, renice, reset, resize, rev, rfkill, rm,=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rmdir, rmmod, route, rpm, rpm2cpio, rtcwake, ru=
n-parts, runlevel,=C2=A0 =C2=A0 =C2=A0 =C2=A0 runsv, runsvdir, rx, script, =
scriptreplay, sed, sendmail, seq,=C2=A0 =C2=A0 =C2=A0 =C2=A0 setarch, setco=
nsole, setfont, setkeycodes, setlogcons, setsid,=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 setuidgid, sh, sha1sum, sha256sum, sha512sum, showkey, slattach,=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 sleep, smemcap, softlimit, sort, split, start-stop-daemon=
, stat,=C2=A0 =C2=A0 =C2=A0 =C2=A0 strings, stty, su, sulogin, sum, sv, svl=
ogd, swapoff, swapon,=C2=A0 =C2=A0 =C2=A0 =C2=A0 switch_root, sync, sysctl,=
 syslogd, tac, tail, tar, taskset, tcpsvd,=C2=A0 =C2=A0 =C2=A0 =C2=A0 tee, =
telnet, telnetd, test, tftp, tftpd, time, timeout, top, touch,=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 tr, traceroute, traceroute6, true, tty, ttysize, tunctl, tun=
e2fs,=C2=A0 =C2=A0 =C2=A0 =C2=A0 ubiattach, ubidetach, udhcpc, udhcpd, udps=
vd, umount, uname,=C2=A0 =C2=A0 =C2=A0 =C2=A0 uncompress, unexpand, uniq, u=
nix2dos, unlzma, unlzop, unxz, unzip,=C2=A0 =C2=A0 =C2=A0 =C2=A0 uptime, us=
leep, uudecode, uuencode, vconfig, vi, vlock, volname,=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 wall, watch, watchdog, wc, wget, which, who, whoami, xargs, xz,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 xzcat, yes, zcat, zcip

Thanks in advance.
Best Regards
Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_391461_79389214.1576630538723
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpffea4004yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div><div dir=3D"ltr" data-setdir=3D"false"><div><div dir=3D"ltr" data-s=
etdir=3D"false">Hi All</div><div dir=3D"ltr" data-setdir=3D"false"><br></di=
v><div dir=3D"ltr" data-setdir=3D"false">This is the error that I see bitba=
ke -DDD arachne-pnr in log.do_compile</div><div><br></div><div dir=3D"ltr" =
data-setdir=3D"false">My recipe is found at&nbsp;</div><div dir=3D"ltr" dat=
a-setdir=3D"false"><span><a href=3D"https://github.com/develone/meta-yosys-=
tools/blob/master/recipes-arachne-pnr/arachne-pnr/arachne-pnr_0.1.bb" rel=
=3D"nofollow" target=3D"_blank" class=3D"">https://github.com/develone/meta=
-yosys-tools/blob/master/recipes-arachne-pnr/arachne-pnr/arachne-pnr_0.1.bb=
</a></span><div><br></div><div><br></div><div><br></div><br></div><div><br>=
</div><div>I have added to the depends DEPENDS =3D " icestorm busybox" no h=
elp</div><div><br></div><div>/bin/sh: 1: sum: not found</div><div><br></div=
><div>I did a search for does busybox provide sum</div><div>https://busybox=
.net/BusyBox.html</div><div>It provides both sh &amp; sum</div><div><br></d=
iv><div>&nbsp; &nbsp; &nbsp; &nbsp; [, [[, acpid, add-shell, addgroup, addu=
ser, adjtimex, ar, arp,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; arping, awk, =
base64, basename, bbconfig, beep, blkid, blockdev,</div><div>&nbsp; &nbsp; =
&nbsp; &nbsp; bootchartd, brctl, bunzip2, bzcat, bzip2, cal, cat, catv, cha=
t,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; chattr, chgrp, chmod, chown, chpas=
swd, chpst, chroot, chrt, chvt,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; cksum=
, clear, cmp, comm, conspy, cp, cpio, crond, crontab, cryptpw,</div><div>&n=
bsp; &nbsp; &nbsp; &nbsp; cttyhack, cut, date, dc, dd, deallocvt, delgroup,=
 deluser, depmod,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; devfsd, devmem, df,=
 dhcprelay, diff, dirname, dmesg, dnsd,</div><div>&nbsp; &nbsp; &nbsp; &nbs=
p; dnsdomainname, dos2unix, dpkg, dpkg-deb, du, dumpkmap, dumpleases,</div>=
<div>&nbsp; &nbsp; &nbsp; &nbsp; echo, ed, egrep, eject, env, envdir, envui=
dgid, ether-wake, expand,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; expr, fakei=
dentd, false, fbset, fbsplash, fdflush, fdformat, fdisk,</div><div>&nbsp; &=
nbsp; &nbsp; &nbsp; fgconsole, fgrep, find, findfs, flash_eraseall, flash_l=
ock,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; flash_unlock, flashcp, flock, fo=
ld, free, freeramdisk, fsck,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; fsck.min=
ix, fsync, ftpd, ftpget, ftpput, fuser, getopt, getty, grep,</div><div>&nbs=
p; &nbsp; &nbsp; &nbsp; gunzip, gzip, halt, hd, hdparm, head, hexdump, host=
id, hostname,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; httpd, hush, hwclock, i=
d, ifconfig, ifdown, ifenslave, ifplugd,</div><div>&nbsp; &nbsp; &nbsp; &nb=
sp; ifup, inetd, init, inotifyd, insmod, install, ionice, iostat, ip,</div>=
<div>&nbsp; &nbsp; &nbsp; &nbsp; ipaddr, ipcalc, ipcrm, ipcs, iplink, iprou=
te, iprule, iptunnel,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; kbd_mode, kill,=
 killall, killall5, klogd, last, length, less,</div><div>&nbsp; &nbsp; &nbs=
p; &nbsp; linux32, linux64, linuxrc, ln, loadfont, loadkmap, logger, login,=
</div><div>&nbsp; &nbsp; &nbsp; &nbsp; logname, logread, losetup, lpd, lpq,=
 lpr, ls, lsattr, lsmod, lspci,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; lsusb=
, lzcat, lzma, lzop, lzopcat, makedevs, makemime, man, md5sum,</div><div>&n=
bsp; &nbsp; &nbsp; &nbsp; mdev, mesg, microcom, mkdir, mkdosfs, mke2fs, mkf=
ifo, mkfs.ext2,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; mkfs.minix, mkfs.reis=
er, mkfs.vfat, mknod, mkpasswd, mkswap, mktemp,</div><div>&nbsp; &nbsp; &nb=
sp; &nbsp; modinfo, modprobe, more, mount, mountpoint, mpstat, msh, mt, mv,=
</div><div>&nbsp; &nbsp; &nbsp; &nbsp; nameif, nanddump, nandwrite, nbd-cli=
ent, nc, netstat, nice, nmeter,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; nohup=
, nslookup, ntpd, od, openvt, passwd, patch, pgrep, pidof,</div><div>&nbsp;=
 &nbsp; &nbsp; &nbsp; ping, ping6, pipe_progress, pivot_root, pkill, pmap, =
popmaildir,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; poweroff, powertop, print=
env, printf, ps, pscan, pwd, raidautorun,</div><div>&nbsp; &nbsp; &nbsp; &n=
bsp; rdate, rdev, readahead, readlink, readprofile, realpath, reboot,</div>=
<div>&nbsp; &nbsp; &nbsp; &nbsp; reformime, remove-shell, renice, reset, re=
size, rev, rfkill, rm,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; rmdir, rmmod, =
route, rpm, rpm2cpio, rtcwake, run-parts, runlevel,</div><div>&nbsp; &nbsp;=
 &nbsp; &nbsp; runsv, runsvdir, rx, script, scriptreplay, sed, sendmail, se=
q,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; setarch, setconsole, setfont, setk=
eycodes, setlogcons, setsid,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; setuidgi=
d, sh, sha1sum, sha256sum, sha512sum, showkey, slattach,</div><div>&nbsp; &=
nbsp; &nbsp; &nbsp; sleep, smemcap, softlimit, sort, split, start-stop-daem=
on, stat,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; strings, stty, su, sulogin,=
 sum, sv, svlogd, swapoff, swapon,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; sw=
itch_root, sync, sysctl, syslogd, tac, tail, tar, taskset, tcpsvd,</div><di=
v>&nbsp; &nbsp; &nbsp; &nbsp; tee, telnet, telnetd, test, tftp, tftpd, time=
, timeout, top, touch,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; tr, traceroute=
, traceroute6, true, tty, ttysize, tunctl, tune2fs,</div><div>&nbsp; &nbsp;=
 &nbsp; &nbsp; ubiattach, ubidetach, udhcpc, udhcpd, udpsvd, umount, uname,=
</div><div>&nbsp; &nbsp; &nbsp; &nbsp; uncompress, unexpand, uniq, unix2dos=
, unlzma, unlzop, unxz, unzip,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; uptime=
, usleep, uudecode, uuencode, vconfig, vi, vlock, volname,</div><div>&nbsp;=
 &nbsp; &nbsp; &nbsp; wall, watch, watchdog, wc, wget, which, who, whoami, =
xargs, xz,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; xzcat, yes, zcat, zcip</di=
v></div><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false">Thanks in advance.</div><div dir=3D"ltr" dat=
a-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Best Re=
gards</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div class=3D"y=
dpffea4004signature">Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595=
-1613</div></div></div></body></html>

------=_Part_391461_79389214.1576630538723--
