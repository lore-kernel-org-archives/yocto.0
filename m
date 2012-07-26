Return-Path: <vidal.develone@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A687E002A8
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 07:52:57 -0700 (PDT)
Received: by yenl5 with SMTP id l5so2355697yen.35
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 07:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=9fITYeRN3KB1uC4D3PiwMW1I+HkHbclRVqOqzFzNW6Q=;
	b=aUJoE4/4vkxHVXIStn7gpFKstbcY4lErf0bUUHCTX6ReclBv/n+0CAAQ/mrCc96VhW
	tpMjcvi5RK36uQ+sdBXOz+wEeMr10f9lHg9w10HFfCJBW6127Doan8l8nWWFMkzJeh2p
	8iJRestrqzZDrhRAIsZ1OTTe+fR36Tn61I8I+Lcpn/RInoXPLlBa3zHBx476wu+DXkwm
	NzYJbHZPRWnX6NG1qIe5HGIcoc8Y18kfUwLloID3ESJKYfo0GCwT6yGEUgKyGLun1phd
	LGtItXWKwq/3PFesAgjwJVBXCr0ELUNUvFn7+KWlYJ/hl/7ji3ZrNEK/ixiT0YQXQ2pq
	BYMg==
MIME-Version: 1.0
Received: by 10.68.241.41 with SMTP id wf9mr6060656pbc.41.1343314375948; Thu,
	26 Jul 2012 07:52:55 -0700 (PDT)
Received: by 10.68.21.167 with HTTP; Thu, 26 Jul 2012 07:52:55 -0700 (PDT)
Date: Thu, 26 Jul 2012 08:52:55 -0600
Message-ID: <CANwz6nwrd79VHuA93vO8DiC83K8eT9W2Y8DWAeGffonHnJ_o8w@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: beagleboard core-image-sato boots to serial port poky 1.3_M2
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
X-List-Received-Date: Thu, 26 Jul 2012 14:52:57 -0000
Content-Type: multipart/alternative; boundary=047d7b339c7f33388604c5bcc099

--047d7b339c7f33388604c5bcc099
Content-Type: text/plain; charset=ISO-8859-1

hello,
I added the line below to uEnv.txt based on Yi Zhao message.
bootcmd="mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bootm 0x80300000"
Now uEnv.txt is the following
mpurate=auto

bootcmd="mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bootm 0x80300000"
dvimode="hd720 omapfb.vram=0:8M,1:4M,2:4M"
vram=16M
optargs="consoleblank=0"
console="tty0 console=ttyO2,115200n8"
The system boots and with the network setup i can ssh into the beagleboard.
checking dmesg I see the following.

Unable to get DVI reset GPIO
 omap-mcbsp.2: alias fck already exists
 omap-mcbsp.3: alias fck already exists
OMAP DMA hardware revision 5.0

I tried id:3:initdefault still no display on beagleboard display.
Thanks any help will be appreciated :

--047d7b339c7f33388604c5bcc099
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

hello,<br>I added the line below to uEnv.txt based on Yi Zhao message.<br>b=
ootcmd=3D&quot;mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bootm 0x803=
00000&quot;<br>Now uEnv.txt is the following <br>mpurate=3Dauto<br><br>boot=
cmd=3D&quot;mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bootm 0x803000=
00&quot;<br>
dvimode=3D&quot;hd720 omapfb.vram=3D0:8M,1:4M,2:4M&quot;<br>vram=3D16M<br>o=
ptargs=3D&quot;consoleblank=3D0&quot;<br>console=3D&quot;tty0 console=3Dtty=
O2,115200n8&quot;<br>The system boots and with the network setup i can ssh =
into the beagleboard.<br>
checking dmesg I see the following.<br><br>Unable to get DVI reset GPIO<br>=
=A0omap-mcbsp.2: alias fck already exists<br>=A0omap-mcbsp.3: alias fck alr=
eady exists<br>OMAP DMA hardware revision 5.0<br><br>I tried id:3:initdefau=
lt still no display on beagleboard display.<br>
Thanks any help will be appreciated :<br><br>

--047d7b339c7f33388604c5bcc099--
