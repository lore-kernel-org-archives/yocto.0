Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.10341.1576674754859377812
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Dec 2019 05:12:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sbcglobal.net header.s=s2048 header.b=PmH4plDR;
 spf=none, err=permanent DNS error (domain: sbcglobal.net, ip: 140.211.169.56, mailfrom: develone@sbcglobal.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FF62E010FE; Wed, 18 Dec 2019 05:12:34 -0800 (PST)
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
	*      [74.6.129.84 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic317-29.consmr.mail.bf2.yahoo.com (sonic317-29.consmr.mail.bf2.yahoo.com [74.6.129.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CA6AE0083D
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2019 05:12:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048; t=1576674751; bh=adPqxUbTz+iyxSPJjwFD3+RnZwRJUGzRPPq/066fSaA=; h=Date:From:To:Cc:Subject:References:From:Subject; b=PmH4plDR/0BoRcLRvmMWNlaES2fsZ2ZvFf+q2qOuFMa6WBHShUWmgXnFSVGMK03VdDDV+qf9wUj/HEf7UNzw3qHpnPwhH3L1HM2cAooQmeHW6Vedgfrf1Jnxx4Ho3cY8zKvRTBRriy1XyoZJzRgZ8SKVZqeDkS9m1aM/Aljae/n0x6ZTRQN9a09E4iQZojjqsooeyat5WDbbPdl5q1X+nmYSLuq80ebPZRgvOPRTmcY+oEnHhDO3kkuF3BtukRwmWWBPcGs+m5ZgIeO3sQP1Vy8R9PEbZhnYcNGS0DyylpilAO0HiaFEjQzvy/0dpDregVz5qo7i1ciZLdmAiU6FZg==
X-YMail-OSG: UQ2.A10VM1kaOYwGic2haEawNtsoD.7nMUur7B2ahpaovEnohapKO.4kAHG4b0q
 dvft3McE_b6udHbAvxbm7U07XMZPmWvrUC9WumSzZMfxztDWaDlqlhBQiy_6MvG4ZqahqMdPXnL5
 6NzYqthL8fOAM._yQKQ1.cK.uu.FhUDM8bIGMCr_.pW_EKKq8aoyeLxUrkhXzjtsueTTYB5xRLQK
 22loAq0_5cc5fcYKoGvuIiiSPolC8XyuwK2PW0OE67w94gWY.dBobv9MZ8CxI6oEM_qmOjtj6jgr
 djOpduM7dJF4Ard2c1mVZ.jgGjHcnJuRvXpUAxDI5Q6dXsdzmv5DSCCLg6lOLDfdGKQjpgpoddKP
 BksPMPzQLkGwBRKz0Yp_MTczF3z7YsxQzOmwnEU4aoxRJkl54GRnxd3aAvSx.n2aLT2cJ2N176LR
 XuskKiVCrDyn_60j0uY2viiYZ81pUzVzXduJPJhS7XFp.xymUb_.gRNepIQPHTr9RsEjKfcg5Sc1
 8M2YV0BreJ6iORSShVssnxNXL1Vl6Wcala.zNRfBKL6hvsGZ6yeAvmiOkouS8nIYMWiNSqE8aNKP
 nwbvizoCPFrDR4XaIXyr2AU8Stb5aG9c.QUurlDHXpD6TPYwwFzRAKkoPD4IswFpinpx5rvdnKQz
 zZQ0lOqADSObtC6rKAz5M6oCh_FyUqbR4T6ota3CCcN_amzE33xSClERezBcmYlQESFS25phg6jN
 FMvJBpzBNYo1YXiHHiGu6RjVbc4P2XiWJ6wDQQASlE3xIBJzr4HtbcJc7iuucTLRlTJL80HK1_G.
 Hgc0pACq4qdvDC1jTXAhU44kK3omKf16DvXuu_F5FuvmwNZhvCqwaTd6VdtcX_dUwNuy0_ktpXDt
 qXMW6kl.QNm50keBw7ltrpfNcSDJhg832kIv6DlXYxVKAOIvwk9l4241mRrnV0H3bt.ow59MDrFn
 I9eT4X2sWX36rhxGMTJhD8rsLzizsYQ3AzBb30dkufz7yKDf9PujsZVDT8VXUrNvbQs.5JsISEHM
 nQrdLkfUIZu3xJgWGGP3HI5afofkXPJwkYR0KX0j6a2DLBwh47zouMC4365gGfAhUP7kTOTzseSv
 t3BfVJhIu13F5k7ThAC5oycDpASGPIgS_PXhSNBqFYj6936H1L6ybca_KfibrxJQRtRVEAw.WINq
 kkoJSNcAcJACiTZnYjc8yTL9UnQRUZqlYrceZoWoltWQOPRQjZ1hwyiLELhUQA_UpFILn2mAHh7T
 43wKMQyqsa9zRwYYN6zxwCcqvVnV8vokI492591NDZ8TtHFzZdvF4cadK11ndAMiphbC3I2VVgzt
 EuAawhpmeKu3NkhL8HwQOyG5SEM9nuhmBaRdVisA-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic317.consmr.mail.bf2.yahoo.com with HTTP; Wed, 18 Dec 2019 13:12:31 +0000
Date: Wed, 18 Dec 2019 13:12:23 +0000 (UTC)
From: "Ed Vidal" <develone@sbcglobal.net>
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <936786833.497095.1576674743120@mail.yahoo.com>
Subject: Re: [yocto] Raspberry pi 4 recipe and layer issues.
MIME-Version: 1.0
References: <936786833.497095.1576674743120.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14873 YMailNorrin Mozilla/5.0 (X11; Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko) Raspbian Chromium/74.0.3729.157 Chrome/74.0.3729.157 Safari/537.36
Content-Type: multipart/alternative; 
	boundary="----=_Part_497094_1749947122.1576674743118"

------=_Part_497094_1749947122.1576674743118
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


Hi Joesf,=C2=A0I did not understand what you meant with "pull".=C2=A0 These=
 are the steps that I did.
Downloaded the file coreutils_8.31.bb from openemedded to ~/wkg/yocto-zeusS=
aved the original file poky/meta/recipes-core/coreutils/coreutils_8.31.bb ~=
/wkg/yocto-zeus/repo120319
Made the chgs below to rpi4-64/poky/meta/recipes-core/coreutils/coreutils_8=
.31.bb
vidal@ws009:~/wkg/yocto-zeus-3.0$ diff coreutils_8.31.bb repo120319/coreuti=
ls_8.31.bb=C2=A052c52<=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0sha384sum sha512sum shred shuf sort split sum tac tail tee test t=
imeout \--->=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0s=
ha384sum sha512sum shred shuf sort split stdbuf sum tac tail tee test timeo=
ut \60,63d59<=C2=A0< PACKAGE_BEFORE_PN_class-target +=3D "coreutils-stdbuf"=
< FILES_coreutils-stdbuf =3D "${bindir}/stdbuf ${libdir}/coreutils/libstdbu=
f.so"< RDEPENDS_coreutils_class-target +=3D "coreutils-stdbuf"
Tested with DEPENDS =3D " icestorm busybox " and DEPENDS =3D " icestorm bus=
ybox coreutils"
Still getting error "/bin/sh: 1: sum: not found" with bitbake -DDD arachne-=
pnr
Also tried adding coreutils to inherit line and that failed.
Let me know if I can provide additional information.
Thanks for you help.
Regards=C2=A0


Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613=20

    On Wednesday, December 18, 2019, 12:00:16 AM MST, Josef Holzmayr <holzm=
ayr@rsi-elektrotechnik.de> wrote: =20
=20
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
 =20

------=_Part_497094_1749947122.1576674743118
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp7d4bc816yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div><div dir=3D"ltr" data-setdir=3D"false"><div><div><br></div><div>Hi =
Joesf,&nbsp;</div><div>I did not understand what you meant with "pull".&nbs=
p; These are the steps that I did.</div><div><br></div><div>Downloaded the =
file coreutils_8.31.bb from openemedded to ~/wkg/yocto-zeus</div><div>Saved=
 the original file poky/meta/recipes-core/coreutils/coreutils_8.31.bb ~/wkg=
/yocto-zeus/repo120319</div><div><br></div><div>Made the chgs below to rpi4=
-64/poky/meta/recipes-core/coreutils/coreutils_8.31.bb</div><div><br></div>=
<div>vidal@ws009:~/wkg/yocto-zeus-3.0$ diff coreutils_8.31.bb repo120319/co=
reutils_8.31.bb&nbsp;</div><div>52c52</div><div>&lt;&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;sha384sum sha512sum shred shuf sort =
split sum tac tail tee test timeout \</div><div>---</div><div>&gt;&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;sha384sum sha512sum sh=
red shuf sort split stdbuf sum tac tail tee test timeout \</div><div>60,63d=
59</div><div>&lt;&nbsp;</div><div>&lt; PACKAGE_BEFORE_PN_class-target +=3D =
"coreutils-stdbuf"</div><div>&lt; FILES_coreutils-stdbuf =3D "${bindir}/std=
buf ${libdir}/coreutils/libstdbuf.so"</div><div>&lt; RDEPENDS_coreutils_cla=
ss-target +=3D "coreutils-stdbuf"</div><div><br></div><div>Tested with DEPE=
NDS =3D " icestorm busybox " and DEPENDS =3D " icestorm busybox coreutils"<=
/div><div><br></div><div>Still getting error "/bin/sh: 1: sum: not found" w=
ith bitbake -DDD arachne-pnr</div><div><br></div><div>Also tried adding cor=
eutils to inherit line and that failed.</div><div><br></div><div>Let me kno=
w if I can provide additional information.</div><div><br></div><div>Thanks =
for you help.</div><div><br></div><div>Regards&nbsp;</div><div><br></div></=
div><br></div><div><br></div><div class=3D"ydp7d4bc816signature">Edward Vid=
al Jr. e-mail develone@sbcglobal.net 915-595-1613</div></div>
        <div><br></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_6727819246" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Wednesday, December 18, 2019, 12:00:16 AM MST, Josef=
 Holzmayr &lt;holzmayr@rsi-elektrotechnik.de&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div>Howdy!<br clear=3D"none"><div class=3D"yqt8357557304" =
id=3D"yqtfd41688"><br clear=3D"none">On Wed, Dec 18, 2019 at 12:55:38AM +00=
00, Ed Vidal wrote:<br clear=3D"none">&gt; Hi All<br clear=3D"none">&gt; Th=
is is the error that I see bitbake -DDD arachne-pnr in log.do_compile<br cl=
ear=3D"none">&gt; My recipe is found at&nbsp;<a shape=3D"rect" href=3D"http=
s://github.com/develone/meta-yosys-tools/blob/master/recipes-arachne-pnr/ar=
achne-pnr/arachne-pnr_0.1.bb" target=3D"_blank">https://github.com/develone=
/meta-yosys-tools/blob/master/recipes-arachne-pnr/arachne-pnr/arachne-pnr_0=
.1.bb</a><br clear=3D"none">&gt; <br clear=3D"none">&gt; I have added to th=
e depends DEPENDS =3D " icestorm busybox" no help<br clear=3D"none">&gt; /b=
in/sh: 1: sum: not found<br clear=3D"none">&gt; I did a search for does bus=
ybox provide sumhttps://busybox.net/BusyBox.htmlIt provides both sh &amp; s=
um<br clear=3D"none">&gt; &nbsp; &nbsp; &nbsp; &nbsp; [, [[, acpid, add-she=
ll, addgroup, adduser, adjtimex, ar, arp,&nbsp; &nbsp; &nbsp; &nbsp; arping=
, awk, base64, basename, bbconfig, beep, blkid, blockdev,&nbsp; &nbsp; &nbs=
p; &nbsp; bootchartd, brctl, bunzip2, bzcat, bzip2, cal, cat, catv, chat,&n=
bsp; &nbsp; &nbsp; &nbsp; chattr, chgrp, chmod, chown, chpasswd, chpst, chr=
oot, chrt, chvt,&nbsp; &nbsp; &nbsp; &nbsp; cksum, clear, cmp, comm, conspy=
, cp, cpio, crond, crontab, cryptpw,&nbsp; &nbsp; &nbsp; &nbsp; cttyhack, c=
ut, date, dc, dd, deallocvt, delgroup, deluser, depmod,&nbsp; &nbsp; &nbsp;=
 &nbsp; devfsd, devmem, df, dhcprelay, diff, dirname, dmesg, dnsd,&nbsp; &n=
bsp; &nbsp; &nbsp; dnsdomainname, dos2unix, dpkg, dpkg-deb, du, dumpkmap, d=
umpleases,&nbsp; &nbsp; &nbsp; &nbsp; echo, ed, egrep, eject, env, envdir, =
envuidgid, ether-wake, expand,&nbsp; &nbsp; &nbsp; &nbsp; expr, fakeidentd,=
 false, fbset, fbsplash, fdflush, fdformat, fdisk,&nbsp; &nbsp; &nbsp; &nbs=
p; fgconsole, fgrep, find, findfs, flash_eraseall, flash_lock,&nbsp; &nbsp;=
 &nbsp; &nbsp; flash_unlock, flashcp, flock, fold, free, freeramdisk, fsck,=
&nbsp; &nbsp; &nbsp; &nbsp; fsck.minix, fsync, ftpd, ftpget, ftpput, fuser,=
 getopt, getty, grep,&nbsp; &nbsp; &nbsp; &nbsp; gunzip, gzip, halt, hd, hd=
parm, head, hexdump, hostid, hostname,&nbsp; &nbsp; &nbsp; &nbsp; httpd, hu=
sh, hwclock, id, ifconfig, ifdown, ifenslave, ifplugd,&nbsp; &nbsp; &nbsp; =
&nbsp; ifup, inetd, init, inotifyd, insmod, install, ionice, iostat, ip,&nb=
sp; &nbsp; &nbsp; &nbsp; ipaddr, ipcalc, ipcrm, ipcs, iplink, iproute, ipru=
le, iptunnel,&nbsp; &nbsp; &nbsp; &nbsp; kbd_mode, kill, killall, killall5,=
 klogd, last, length, less,&nbsp; &nbsp; &nbsp; &nbsp; linux32, linux64, li=
nuxrc, ln, loadfont, loadkmap, logger, login,&nbsp; &nbsp; &nbsp; &nbsp; lo=
gname, logread, losetup, lpd, lpq, lpr, ls, lsattr, lsmod, lspci,&nbsp; &nb=
sp; &nbsp; &nbsp; lsusb, lzcat, lzma, lzop, lzopcat, makedevs, makemime, ma=
n, md5sum,&nbsp; &nbsp; &nbsp; &nbsp; mdev, mesg, microcom, mkdir, mkdosfs,=
 mke2fs, mkfifo, mkfs.ext2,&nbsp; &nbsp; &nbsp; &nbsp; mkfs.minix, mkfs.rei=
ser, mkfs.vfat, mknod, mkpasswd, mkswap, mktemp,&nbsp; &nbsp; &nbsp; &nbsp;=
 modinfo, modprobe, more, mount, mountpoint, mpstat, msh, mt, mv,&nbsp; &nb=
sp; &nbsp; &nbsp; nameif, nanddump, nandwrite, nbd-client, nc, netstat, nic=
e, nmeter,&nbsp; &nbsp; &nbsp; &nbsp; nohup, nslookup, ntpd, od, openvt, pa=
sswd, patch, pgrep, pidof,&nbsp; &nbsp; &nbsp; &nbsp; ping, ping6, pipe_pro=
gress, pivot_root, pkill, pmap, popmaildir,&nbsp; &nbsp; &nbsp; &nbsp; powe=
roff, powertop, printenv, printf, ps, pscan, pwd, raidautorun,&nbsp; &nbsp;=
 &nbsp; &nbsp; rdate, rdev, readahead, readlink, readprofile, realpath, reb=
oot,&nbsp; &nbsp; &nbsp; &nbsp; reformime, remove-shell, renice, reset, res=
ize, rev, rfkill, rm,&nbsp; &nbsp; &nbsp; &nbsp; rmdir, rmmod, route, rpm, =
rpm2cpio, rtcwake, run-parts, runlevel,&nbsp; &nbsp; &nbsp; &nbsp; runsv, r=
unsvdir, rx, script, scriptreplay, sed, sendmail, seq,&nbsp; &nbsp; &nbsp; =
&nbsp; setarch, setconsole, setfont, setkeycodes, setlogcons, setsid,&nbsp;=
 &nbsp; &nbsp; &nbsp; setuidgid, sh, sha1sum, sha256sum, sha512sum, showkey=
, slattach,&nbsp; &nbsp; &nbsp; &nbsp; sleep, smemcap, softlimit, sort, spl=
it, start-stop-daemon, stat,&nbsp; &nbsp; &nbsp; &nbsp; strings, stty, su, =
sulogin, sum, sv, svlogd, swapoff, swapon,&nbsp; &nbsp; &nbsp; &nbsp; switc=
h_root, sync, sysctl, syslogd, tac, tail, tar, taskset, tcpsvd,&nbsp; &nbsp=
; &nbsp; &nbsp; tee, telnet, telnetd, test, tftp, tftpd, time, timeout, top=
, touch,&nbsp; &nbsp; &nbsp; &nbsp; tr, traceroute, traceroute6, true, tty,=
 ttysize, tunctl, tune2fs,&nbsp; &nbsp; &nbsp; &nbsp; ubiattach, ubidetach,=
 udhcpc, udhcpd, udpsvd, umount, uname,&nbsp; &nbsp; &nbsp; &nbsp; uncompre=
ss, unexpand, uniq, unix2dos, unlzma, unlzop, unxz, unzip,&nbsp; &nbsp; &nb=
sp; &nbsp; uptime, usleep, uudecode, uuencode, vconfig, vi, vlock, volname,=
&nbsp; &nbsp; &nbsp; &nbsp; wall, watch, watchdog, wc, wget, which, who, wh=
oami, xargs, xz,&nbsp; &nbsp; &nbsp; &nbsp; xzcat, yes, zcat, zcip</div><br=
 clear=3D"none"><br clear=3D"none">Thats only halfways correct: busybox *CA=
N* provide sum, if configured<br clear=3D"none">accordingly. It obviously i=
s not, in your case. The easiest way to get<br clear=3D"none">sum is probab=
ly to just pull in coreutils:<br clear=3D"none"><br clear=3D"none"><a shape=
=3D"rect" href=3D"http://cgit.openembedded.org/openembedded-core/tree/meta/=
recipes-core/coreutils/coreutils_8.31.bb" target=3D"_blank">http://cgit.ope=
nembedded.org/openembedded-core/tree/meta/recipes-core/coreutils/coreutils_=
8.31.bb</a><br clear=3D"none"><br clear=3D"none">Greetz<br clear=3D"none"><=
br clear=3D"none">-- <br clear=3D"none">=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94<br clear=3D"none">Josef Holzmayr<br clear=3D"no=
ne">Software Developer Embedded Systems<br clear=3D"none"><br clear=3D"none=
">Tel: +49 8444 9204-48<br clear=3D"none">Fax: +49 8444 9204-50<br clear=3D=
"none"><br clear=3D"none">R-S-I Elektrotechnik GmbH &amp; Co. KG<br clear=
=3D"none">Woelkestrasse 11<br clear=3D"none">D-85301 Schweitenkirchen<br cl=
ear=3D"none">www.rsi-elektrotechnik.de<br clear=3D"none">=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<br clear=3D"none">Amtsgericht In=
golstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 170393<br clear=3D"no=
ne">Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg=
<br clear=3D"none">Ust-IdNr: DE 128592548 <br clear=3D"none"><br clear=3D"n=
one">_____________________________________________________________<br clear=
=3D"none">Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363<br cle=
ar=3D"none">Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Fr=
anz Sorg<br clear=3D"none">USt-IdNr.: DE 128592548<div class=3D"yqt83575573=
04" id=3D"yqtfd95067"><br clear=3D"none"></div></div>
            </div>
        </div></body></html>

------=_Part_497094_1749947122.1576674743118--
