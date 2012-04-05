Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 084B8E0137C
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 07:32:36 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Apr 2012 07:32:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="149993343"
Received: from unknown (HELO helios.localnet) ([10.252.120.33])
	by fmsmga002.fm.intel.com with ESMTP; 05 Apr 2012 07:32:34 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?Jo=E3o?= Henrique Freitas <joaohf@gmail.com>,
	yocto@yoctoproject.org
Date: Thu, 05 Apr 2012 15:32:30 +0100
Message-ID: <1634439.IYZyxqXxWH@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-17-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <CANFVK7_ahuH9aSOepVX__Zw1ppSeHNRr_SM=x5xgWMGd=APr6g@mail.gmail.com>
References: <CANFVK7_ahuH9aSOepVX__Zw1ppSeHNRr_SM=x5xgWMGd=APr6g@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Using vendo kernel with Yocto
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
X-List-Received-Date: Thu, 05 Apr 2012 14:32:36 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Wednesday 04 April 2012 19:05:05 Jo=E3o Henrique Freitas wrote:
> My vendor device provides a kernel (2.6.22.19) with a patch to its de=
vice.
> The device is a arm920t. And the vendor is Mindspeed.
>=20
> I want to use Yocto to build the kernel and userland. In the past the=

> vendor provided a very old debian-like userland.
>=20
> I am trying the following:
>=20
> - create a recipe to build the kernel 2.6.22.19 with patch to the dev=
ice
> supplied by vendor
> - build a image using core-image-minimal only to boot the device
> - I think that linux-libc-headers should be 2.6.22.19, but I am tryin=
g with
> linux-libc-headers-yocto
> - the device boots with kernel compiled with Yocto but I have some so=
rt of
> problems with boot scripts. I am investigating.
>=20
> Questions:
>=20
> With Yocto (1.2M3), I can use a kernel 2.6.22.19 with userland provid=
e by
> Yocto project?
>=20
> What is the minimal version of the kernel supported by Yocto?

That's a tough question, I'm not sure many people have experimented to =
find the=20
oldest kernel that will work.=20

However, for one of my hobby projects I have been trying to get an iPAQ=
 h2200=20
(currently stuck with the 2.6.21-hh kernel) booting with a rootfs produ=
ced=20
using Poky. The first problem is that the current version of udev that =
we have,=20
164, requires version 2.6.27 or later of the kernel, so you will need t=
o=20
provide an older udev. I've been testing with udev 092, but I still hit=
=20
problems on boot - if I disable the initscript that calls "ifup -a" it =
boots=20
successfully, but with it the boot process hangs, even though there are=
 no=20
network interfaces other than lo and if I run "ifup -a" after booting t=
hen it=20
works fine. That was the state a few weeks ago and I haven't done any f=
urther=20
work on it since then.

I guess what you can take from the above is it's almost certainly possi=
ble to=20
work with a kernel as old as 2.6.2x, however you will need to downgrade=
 udev=20
(most easily by just bringing across udev recipes from OE Classic) and=20=

possibly other components, and you may still need to do additional=20
troubleshooting.

Have you contacted the vendor to see if they can provide an updated pat=
ch?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

