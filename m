Return-Path: <andrea.laini@claypaky.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E781E0094C; Tue, 14 Mar 2017 00:35:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [37.9.225.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from claypaky.vps.sintattica.it (vm1639.cs16.seeweb.it [37.9.225.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9BC6E00901
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 00:35:48 -0700 (PDT)
X-No-Relay: not in my network
X-No-Relay: not in my network
Received: from Server109.claypaky.local
	(host219-54-static.80-94-b.business.telecomitalia.it [94.80.54.219])
	by claypaky.vps.sintattica.it (Postfix) with ESMTPA id BA3922DBFB;
	Tue, 14 Mar 2017 08:35:47 +0100 (CET)
Received: from SERVER109.claypaky.local (10.0.0.109) by
	Server109.claypaky.local (10.0.0.109) with Microsoft SMTP Server (TLS)
	id 15.0.1156.6; Tue, 14 Mar 2017 08:35:46 +0100
Received: from SERVER109.claypaky.local ([10.0.0.109]) by
	Server109.claypaky.local ([10.0.0.109]) with mapi id 15.00.1156.000;
	Tue, 14 Mar 2017 08:35:46 +0100
From: Andrea Laini <andrea.laini@claypaky.it>
To: Khem Raj <raj.khem@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Autoload kernel module works only once
Thread-Index: AdKcBy5200bqrAidQy6sCTYljLmjpQAKNSOAABk7GYA=
Date: Tue, 14 Mar 2017 07:35:46 +0000
Message-ID: <11b7ab8198974668b52c2a0386401f63@Server109.claypaky.local>
References: <9e0050bb9fd3419fa979364b1359b490@Server109.claypaky.local>
	<651fce91-d1dd-5e1a-c049-37a85a91f83d@gmail.com>
In-Reply-To: <651fce91-d1dd-5e1a-c049-37a85a91f83d@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.10.1.21]
MIME-Version: 1.0
Subject: Re: Autoload kernel module works only once
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 14 Mar 2017 07:35:51 -0000
Content-Language: it-IT
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Khem for your anwer,

The device in question are 2 simple character devices, that just read/write=
 IO registers of the SoC. I don't think they depend on something else, but =
surely what I've noticed is that first time I power-on the system they're l=
oaded later than successive bootings.

What I've also seen is that very first time the system started, the device =
number of my module in /dev/mydevice and /sys/class/myclass/mydevice/dev ar=
e exactly the same=20

	/dev/mydevice					Major =3D 247, Minor =3D 0
	/sys/class/myclass/mydevice/dev		Major =3D 247, Minor =3D 0

while from the time I reboot the system the one in /sys/class/myclass/mydev=
ice/dev is increment by 1 respect to the other=20

	/dev/mydevice					Major =3D 247, Minor =3D 0
	/sys/class/myclass/mydevice/dev		Major =3D 248, Minor =3D 0


Andrea Laini


-----Messaggio originale-----
Da: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] =
Per conto di Khem Raj
Inviato: luned=EC 13 marzo 2017 21:29
A: yocto@yoctoproject.org
Oggetto: Re: [yocto] Autoload kernel module works only once



On 3/13/17 7:36 AM, Andrea Laini wrote:
> Hi everybody,
>=20
> =20
>=20
> I'm getting some errors after building my Linux distro with the use of=20
> KERNEL_MODULE_AUTOLOAD to allow autoloading 2 of my custom out-of-tree=20
> device at boot time. We've a Poky 1.7 version.
>=20
> =20
>=20
> So, before building the new image with the Yocto keyword=20
> KERNEL_MODULE_AUTOLOAD, I was able to load and open (and, obviously,
> use) my devices simply by calling 'modprobe mydevice' after logging in.
> Restarting the board, everything was still working well.
>=20
> Since I've rebuild a new image enabling module autoload at boot time,=20
> modules are always loaded, but I'm able to open (and use) them only=20
> really first time I switched on the board after downloading new image.
> After the first reboot, LKMs are still loaded (calling 'lsmod' show
> them) but I can't open them, neither from my C program nor=20
> reading/writing them from '/dev/mydevice'.

look out for any race conditions for dependencies. Since it will now autolo=
ad the modules and its possible that you were depending on some system beha=
vior that was enabled late in boot process, but it worked since you did it =
after logging in and manually doing modprobe.

>=20
> =20
>=20
> To me it sound a very strange behavior.
>=20
> =20
>=20
> Hope anyone can help,
>=20
> Many thanks
>=20
> =20
>=20
> Andrea
>=20
> =20
>=20
>=20
> =20
>=20
>=20
>=20


