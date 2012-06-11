Return-Path: <juergen.messerer@bbv.ch>
Received: from owa.outnet.ch (owa.outnet.ch [80.67.146.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD2EDE006D9
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 07:54:56 -0700 (PDT)
Received: from TKSSREX01.outnet.ch ([10.10.10.1]) by tkssrexhcu01.outnet.ch
	([172.17.220.45]) with mapi; Mon, 11 Jun 2012 16:54:55 +0200
From: =?iso-8859-1?Q?J=FCrgen_Messerer?= <juergen.messerer@bbv.ch>
To: Mihai Lindner <mihaix.lindner@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 11 Jun 2012 16:54:54 +0200
Thread-Topic: [yocto] Grub installation
Thread-Index: Ac1H3bbVxk/P1VE1SjKyv1DHntlYiAAANqsw
Message-ID: <A7B59F6D52627C44813C136D437B0832068BC78CAB91@TKSSREX01.outnet.ch>
References: <A7B59F6D52627C44813C136D437B0832068BC78CAB6C@TKSSREX01.outnet.ch>
	<4FD5FF3E.4060303@linux.intel.com>
In-Reply-To: <4FD5FF3E.4060303@linux.intel.com>
Accept-Language: en-US, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, de-CH
MIME-Version: 1.0
Subject: Re: Grub installation
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
X-List-Received-Date: Mon, 11 Jun 2012 14:54:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear Mihai,

I would expect that grub should be installed in core-image-minimal-qemux86.=
ext3
Grub couldn't be found when running the image with runqemu.

Any other ideas?



-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Mihai Lindner
Sent: Montag, 11. Juni 2012 16:23
To: yocto@yoctoproject.org
Subject: Re: [yocto] Grub installation

On 6/11/2012 5:12 PM, J=FCrgen Messerer wrote:
> Hi
>=20
> =20
>=20
> I have the following problem. I have created with yocto a core-image-mini=
mal for x86 which I could test with qemu.
>=20
> =20
>=20
> later I added the following lines to conf/local.conf at the end according=
 to the manual chapter 4.2.4:
>=20
> IMAGE_INSTALL_append =3D " bash"
>=20
> IMAGE_INSTALL_append =3D " strace"
>=20
> IMAGE_INSTALL_append =3D " grub"
>=20
> =20
>=20
> Bash and strace were installed correctly.
>=20
> In the case of grub I couldn't find the directory /boot/grub.
>=20
> =20
>=20
> /etc/grub.d is installed also the folder /usr/lib/grub
>=20
> =20
>=20
> Question 1:
>=20
> Which grub recipe does yocto install from  poky-denzil-7.0/meta/recipes-b=
sp/grub/
>=20
> I would prefer version 1.99.
>=20
> =20
>=20
> Questin 2:
>=20
> Will yocto not install a /boot/grub directory?
>=20
> =20
>=20
> I would appreciate any tips and tricks to install grub correctly in the c=
ore-image-minimal
>=20
> =20
>=20
> =20
>=20
> Thanks a lot
>=20
> =20
>=20
> Best regards
>=20
> =20
>=20
> Juergen
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20

Hello,

Look for /boot/grub/ in /dev/sda1
It should be there.

--=20
Mihai Lindner


_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

