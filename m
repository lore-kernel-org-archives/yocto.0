Return-Path: <eric@eukrea.com>
Received: from smtp3-g21.free.fr (smtp3-g21.free.fr [212.27.42.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0AF0E0030B
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2012 17:04:52 -0800 (PST)
Received: from eb-e6520 (unknown [82.233.81.124])
	by smtp3-g21.free.fr (Postfix) with ESMTP id E3DD7A60F2
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 02:04:45 +0100 (CET)
Date: Fri, 9 Mar 2012 02:04:44 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
To: yocto@yoctoproject.org
Message-ID: <20120309020444.500f5533@eb-e6520>
In-Reply-To: <4F5934F0.6090600@gmail.com>
References: <4F58D16C.8030309@gmail.com>
	<CADzUK1K0BTWTm8kfto2SZGpv7Q6sSGcCKggCHXeaconFKR9xcg@mail.gmail.com>
	<4F591A23.3050908@gmail.com>
	<CA+gsK-qzbm6j9Vj7jmDc7E2g=LfrUpwZENsXsPLaVT7cbpWg1Q@mail.gmail.com>
	<4F59280A.9010603@gmail.com>
	<CADzUK1J+EdCkjRsFRdTYZY3HiLwmWxnEd1s3tNDVFDaHKuSnmQ@mail.gmail.com>
	<4F593209.6040309@gmail.com> <4F593365.4060904@mlbassoc.com>
	<4F5934F0.6090600@gmail.com>
Organization: =?ISO-8859-1?B?RXVrculh?= Electromatique
X-Mailer: Claws Mail 3.8.0 (GTK+ 2.24.8; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
Subject: Re: Adding test files to an image
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
X-List-Received-Date: Fri, 09 Mar 2012 01:04:54 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Le Thu, 08 Mar 2012 17:38:40 -0500,
jfabernathy <jfabernathy@gmail.com> a =E9crit :
> So what I can get to work is the following recipe, but what I want is=20
> not o have to specify the file extension:
>=20
you may be able to build your archive in a directory like :
myvideos-1.0/files.mp4, so that your files will be available in ${S} =3D
${WORKDIR}/myvideos-1.0/

Eric
--=20
http://eukrea.com/en/news/104-2012

