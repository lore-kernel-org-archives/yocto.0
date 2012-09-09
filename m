Return-Path: <vidal.develone@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EB9BE00348
	for <yocto@yoctoproject.org>; Sun,  9 Sep 2012 08:12:13 -0700 (PDT)
Received: by iecs9 with SMTP id s9so2036445iec.35
	for <yocto@yoctoproject.org>; Sun, 09 Sep 2012 08:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=9tQrnTyMzTh0fY0bZ8gnTajD77gnZpbN8GTga52wk3g=;
	b=dlOPEr0qpnieMdB2uxILYjwUDW271ah0+migqNhXvCdnSEagNbbCaL8oK/tJoX9PJq
	iXXXS4JDz0ltAjw8jWHYgpmGlIP1CoOkLy6vaZknhFLvO5Y/Lu4eGW+QUdQYW2V2jvEz
	RVkBzNAI6nFo5Cz9nxBAozh8y9+6Ex6woFWHt8tvHhjn1kIuAjZvIWL32pJjH5uyybFi
	CuGX07a4UqpRyctqCT+0WkAL8kAG8WpoG3S5KzLKCd+T/EEtpi+1tc4ycz/pk+C/IC7S
	Pysu+k6Qnm4Lifl4aDKo6N5/7EJXjRLuIX8gHozYhYCF45wprhuLSq5MxDpx3sWaNsGO
	gfhg==
MIME-Version: 1.0
Received: by 10.50.194.130 with SMTP id hw2mr6935144igc.64.1347203517264; Sun,
	09 Sep 2012 08:11:57 -0700 (PDT)
Received: by 10.64.33.107 with HTTP; Sun, 9 Sep 2012 08:11:56 -0700 (PDT)
Date: Sun, 9 Sep 2012 09:11:56 -0600
Message-ID: <CANwz6nzZ2mduQP6fNCYUcgM+D06fckR0vcwAMpae7=wTUqxpZg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: beagleboard boots read only
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 09 Sep 2012 15:12:13 -0000
Content-Type: multipart/alternative; boundary=14dae9340bc71633a404c9464352

--14dae9340bc71633a404c9464352
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I had to use these to get it to boot to prompt.
setenv bootargs 'console=tty0 console=ttyO2,115200n8 root=/dev/mmcblk0p2
rootwait rootfstype=ext3 ro'
setenv bootcmd 'mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bootm
0x80300000'

Yocto (Built by    Poky 7.0) 1.2+snapshot-20120907    beagleboard ttyO2
beagleboard login: root
root@beagleboard:~# xinit: giving up
xinit: unable to connect to X server: Connection refused
xinit: server error
This is what I have in my uEnv.txt file
mpurate=auto

bootcmd="mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bootm 0x80300000"
dvimode="hd720 omapfb.vram=0:8M,1:4M,2:4M"
vram=16M
optargs="consoleblank=0"
console="tty0 console=ttyO2,115200n8"
Does anyone have a working uEnv/txt for core-image-sato.
All will be appreciated.
Thanks

--14dae9340bc71633a404c9464352
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<br>I had to use these to get it to boot to prompt.<br>setenv bootarg=
s &#39;console=3Dtty0 console=3DttyO2,115200n8 root=3D/dev/mmcblk0p2 rootwa=
it rootfstype=3Dext3 ro&#39;<br>
setenv bootcmd &#39;mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bootm =
0x80300000&#39;<br><br>Yocto (Built by=A0=A0=A0 Poky 7.0) 1.2+snapshot-2012=
0907=A0=A0=A0 beagleboard ttyO2<br>beagleboard login: root<br>root@beaglebo=
ard:~# xinit: giving up<br>

xinit: unable to connect to X server: Connection refused<br>xinit: server e=
rror<br>This is what I have in my uEnv.txt file<br>mpurate=3Dauto<br><br>bo=
otcmd=3D&quot;mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bootm 0x8030=
0000&quot;<br>

dvimode=3D&quot;hd720 omapfb.vram=3D0:8M,1:4M,2:4M&quot;<br>vram=3D16M<br>o=
ptargs=3D&quot;consoleblank=3D0&quot;<br>console=3D&quot;tty0 console=3Dtty=
O2,115200n8&quot;<br>Does anyone have a working uEnv/txt for core-image-sat=
o.<br>All will be appreciated.<br>
Thanks<br>

--14dae9340bc71633a404c9464352--
