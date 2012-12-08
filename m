Return-Path: <vidal.develone@gmail.com>
Received: from mail-ia0-f169.google.com (mail-ia0-f169.google.com
	[209.85.210.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E424E00559
	for <yocto@yoctoproject.org>; Sat,  8 Dec 2012 09:24:48 -0800 (PST)
Received: by mail-ia0-f169.google.com with SMTP id r4so2964306iaj.0
	for <yocto@yoctoproject.org>; Sat, 08 Dec 2012 09:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=7SbjDEna0RDOFaT65aDaVrZSRuzuRj23Zhg04iLMO6U=;
	b=MXvrryhzoJg2KqTvuBCAk0rn2l/mmDiKt1mliopk7iNJsn1+FT1ZISqHYRpmLr1TC3
	QmbrDPUOeUkFsqPseAxr9S5z/V89VSwWD4YFIHWB4ATNh1R14jG3+h6BQqVHWOe3CdDq
	f1YY+tL01QxSzvbeu9v53DOtvUPgZCRvhhrdz7kuQlOuCAHol2OalSjWnq5Bj8rsIl2C
	mKeKp2/jHGCHzaUMFvtVedL9vU7wET/9WCf6wZEGrKg6MpksypJ0Dv1MCWSmokl3cWd+
	DmBay46/2XymmcwuXS1Kj4WiJN1fNM3RUsbJL1/kstG/DhoBagV+jmuIjP+0MWpQqwdy
	3x0g==
MIME-Version: 1.0
Received: by 10.50.185.230 with SMTP id ff6mr2370533igc.7.1354987487636; Sat,
	08 Dec 2012 09:24:47 -0800 (PST)
Received: by 10.64.40.132 with HTTP; Sat, 8 Dec 2012 09:24:47 -0800 (PST)
Date: Sat, 8 Dec 2012 10:24:47 -0700
Message-ID: <CANwz6nzr_CjMO8ejGQf-8tb171BuK+3a=Kmj-46Ga2LjZ-GZJg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: beagleboard not booting to SATO interface
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
X-List-Received-Date: Sat, 08 Dec 2012 17:24:48 -0000
Content-Type: multipart/alternative; boundary=14dae9340681e02c6404d05a9be2

--14dae9340681e02c6404d05a9be2
Content-Type: text/plain; charset=ISO-8859-1

Hello,
Checking  I did no have the file
/usr/lib/xorg/modules/drivers/omapfb_drv.so only the file
/usr/lib/xorg/modules/drivers/omap_drv.so
I copied the file /usr/lib/xorg/modules/drivers/omapfb_drv.so from a
core-image-sato previous version that was working.
Then I get the following in the /var/log/Xorg.0.log


[2058242.925] (II) Loading /usr/lib/xorg/modules/drivers/omapfb_drv.so
[2058242.931] (II) Module omapfb: vendor="X.Org Foundation"
[2058242.932]   compiled for 1.11.4, module version = 0.1.1
[2058242.932]   ABI class: X.Org Video Driver, version 11.0
[2058242.932] (EE) module ABI major version (11) doesn't match the server's
version (13)
[2058242.932] (II) UnloadModule: "omapfb"
[2058242.932] (II) Unloading omapfb
[2058242.933] (EE) Failed to load module "omapfb" (module requirement
mismatch, 0)
Any help will be welcomed
Thanks

--14dae9340681e02c6404d05a9be2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<br>Checking=A0 I did no have the file<br>/usr/lib/xorg/modules/drive=
rs/omapfb_drv.so only the file /usr/lib/xorg/modules/drivers/omap_drv.so<br=
>I copied the file /usr/lib/xorg/modules/drivers/omapfb_drv.so from a core-=
image-sato previous version that was working.<br>
Then I get the following in the /var/log/Xorg.0.log<br><br><br>[2058242.925=
] (II) Loading /usr/lib/xorg/modules/drivers/omapfb_drv.so<br>[2058242.931]=
 (II) Module omapfb: vendor=3D&quot;X.Org Foundation&quot;<br>[2058242.932]=
=A0=A0 compiled for 1.11.4, module version =3D 0.1.1<br>
[2058242.932]=A0=A0 ABI class: X.Org Video Driver, version 11.0<br>[2058242=
.932] (EE) module ABI major version (11) doesn&#39;t match the server&#39;s=
 version (13)<br>[2058242.932] (II) UnloadModule: &quot;omapfb&quot;<br>[20=
58242.932] (II) Unloading omapfb<br>
[2058242.933] (EE) Failed to load module &quot;omapfb&quot; (module require=
ment mismatch, 0)<br>Any help will be welcomed <br>Thanks<br><br><br>

--14dae9340681e02c6404d05a9be2--
