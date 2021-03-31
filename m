Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.607.1617228515742465337
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Mar 2021 15:08:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=HHaeHFqF;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd03117.aruba.it (smtpcmd03117.aruba.it [62.149.158.117])
	by mail.yoctoproject.org (Postfix) with ESMTP id 737C238C1265
	for <yocto@yoctoproject.org>; Wed, 31 Mar 2021 22:08:34 +0000 (UTC)
Received: from z600 ([93.38.119.136])
	by Aruba Outgoing Smtp  with ESMTPSA
	id Rj0qlfyhMzPKKRj0qlDogp; Thu, 01 Apr 2021 00:08:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1617228512; bh=Qxo8y+g3sRct84akVlVhQkLKzTi8UVDo03VNhVh/vmY=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=HHaeHFqFl3AntO/dr9lFX1x+G7oViqDR3VEHK5vEDHR+6Vxh985FPspw2jf0D4rti
	 R1OMZmMBNhbJXPPbQxojDFS/HVu65/UEZ0D4Q7NGJb6urI6hRmF1aqdcDOrefe3Y7f
	 GK+wa9H/lpfKqCgNf5Lnz/3KVMWsacKsr3ME1gWP90/ICwKdAAhDjKMDCthw06Ftgg
	 yEVIoszL07h333LFyoe9x3fUGwOafHLyxLkQ48MU5B3XeNzdNukyv3YkNGVslYCDAN
	 1hUIOkhSXvXA5/K+YoM+imuB2y0T3VNy9ozQfUcmSU25efw3+p9IUwj/KZ0ktLul42
	 Wsj4u7DjvmbJw==
Date: Thu, 1 Apr 2021 00:08:31 +0200
From: "Mauro Ziliani" <mauro@faresoftware.it>
To: "=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>
Message-ID: <B03C8661-F73C-4BEB-810C-6952F6A86F03@getmailspring.com>
Subject: SYSVINIT_ENABLED_GETTYS dynamic setup
X-Mailer: Mailspring
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfKV2+fCfqZkkwdjKcCvPeYJzW/69cLgcbEW4zhxpZsE7O6acTC9Zt/e6RE75D5LxPU5npTlw9nwKuFeYfeVPOg4ZMMGfRFa87FT7YcJKlPKshgsYfAqx
 GajwZ70FUsengmhHHdTTBIi9/UiYoUoQX8FNTd2JKtKWONSpvZkealAq
Content-Type: multipart/alternative; boundary="6064f2df_626dfcb5_12d6"

--6064f2df_626dfcb5_12d6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi all.

I make two images image1 image1-installer
In image1 I don't need any getty so i'd like to put SYSVINIT_ENALED_GETTYS := ""

image1.bb give the output image1.sdcard
SYSVINIT_ENABLED_GETTYS := "2"
IMAGE_INSTALL_append = "sysvinit-inittab "

This is /etc/inittab i'd like inside image1.sdcard
2:2345:respawn:/sbin/getty 38400 tty2

In image1-installer I need only getty1 so i'd like to setup SYSVINIT_ENABLED GETTYS := "1"
image1-installer.bb give the output image1-installer.sdcard
SYSVINIT_ENABLED_GETTYS := "1"
IMAGE_INSTALL_append = " sysvinit-inittab "

The /etc/inittab in image1-installer.sdcard contains
1:2345:respawn:/sbin/getty 38400 tty1

There is a way to "configure" sysvinit-inittab_%.bb to make a different output using a PACKAGECONFIG o others variables?
By now I have setup SYSVINIT_ENABLED_GETTYS := "" and than add 2:2345:respawn:/sbin/getty 38400 tty2 or 1:2345:respawn:/sbin/getty 38400 tty1 in the recipe

There is another way?

MZ

Sent from Mailspring (https://getmailspring.com/), the best free email app for work

--6064f2df_626dfcb5_12d6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>Hi all.</div><br><div>I make two images&nbsp; image1&nbsp; image1-in=
staller</div><div>In image1 I don't need any getty so i'd like to put SYS=
VINIT=5FENALED=5FGETTYS :=3D&nbsp;=22=22</div><br><div>image1.bb give the=
 output image1.sdcard</div><div>SYSVINIT=5FENABLED=5FGETTYS :=3D =222=22<=
/div><div>IMAGE=5FINSTALL=5Fappend =3D =22sysvinit-inittab =22</div><br><=
div>This is /etc/inittab i'd like inside image1.sdcard</div><br><div>2:23=
45:respawn:/sbin/getty 38400 tty2</div><br><br><br><div>In image1-install=
er I need only getty1 so i'd like to setup SYSVINIT=5FENABLED GETTYS :=3D=
&nbsp;=221=22</div><br><div>image1-installer.bb give the output image1-in=
staller.sdcard</div><div>SYSVINIT=5FENABLED=5FGETTYS :=3D&nbsp;=221=22</d=
iv><div>IMAGE=5FINSTALL=5Fappend =3D =22 sysvinit-inittab =22</div><br><d=
iv>The&nbsp; /etc/inittab in image1-installer.sdcard contains</div><br><d=
iv>1:2345:respawn:/sbin/getty 38400 tty1</div><br><br><div>There is a way=
 to =22configure=22 sysvinit-inittab=5F%.bb to make a different output us=
ing a PACKAGECON=46IG o others variables=3F</div><br><div>By now I have s=
etup SYSVINIT=5FENABLED=5FGETTYS :<span data-emoji-typing=3D=22true=22>=3D=
</span>&nbsp;=22=22 and than add&nbsp; 2:2345:respawn:/sbin/getty 38400 t=
ty2 or 1:2345:respawn:/sbin/getty 38400 tty1 in the recipe </div><br><br>=
<div>There is another way=3F</div><br><br><div>MZ</div><br><br><br><br><b=
r><br><br><div><div><signature id=3D=22initial=22><div><div>Sent from <a =
href=3D=22https://getmailspring.com/=22>Mailspring</a>, the best free ema=
il app for work</div></div></signature></div></div>

--6064f2df_626dfcb5_12d6--
