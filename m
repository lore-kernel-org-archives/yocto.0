Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id DD56F4C805AF
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2011 15:18:58 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6SKHnYY014453;
	Thu, 28 Jul 2011 15:17:50 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <1311879895.3398.19.camel@lenovo.internal.reciva.com>
Date: Thu, 28 Jul 2011 15:17:50 -0500
Message-Id: <B9407E75-9F43-4EBD-8F3A-F8CB5E926BCB@kernel.crashing.org>
References: <1F827C13-EF18-4D1E-AAA1-381361929F39@kernel.crashing.org>
	<65A75BC37EC7EE4F88AB5EB98759A97003E6E32F@LONMLVEM04.e2k.ad.ge.com>
	<315B4992-8E1A-4DD3-8D3D-E8FD2436B365@kernel.crashing.org>
	<4E3188D3.8040405@linux.intel.com>
	<312066B0-7200-477F-A875-B610335E6153@kernel.crashing.org>
	<20110728185400.GK15286@jama.jama.net>
	<1311879895.3398.19.camel@lenovo.internal.reciva.com>
To: Phil Blundell <philb@gnu.org>
X-Mailer: Apple Mail (2.1084)
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] mpc8315e-rdb core-image-minimal fails (PACKAGE_ARCHS question)
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
X-List-Received-Date: Thu, 28 Jul 2011 20:18:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 28, 2011, at 2:04 PM, Phil Blundell wrote:

> On Thu, 2011-07-28 at 20:54 +0200, Martin Jansa wrote:
>> this change causes ERROR here with nokia900:
>> Error, the PACKAGE_ARCHS variable contains duplicates. The following =
archs are listed more than once: armv7a-vfp-neon
>=20
> It isn't totally obvious to me that it needs to be an error for
> PACKAGE_ARCHS to contain dupes.  AFAIK there is no reason that it
> couldn't simply be uniquified before use.
>=20
> p.
>=20

Ok, maybe we want:

-PACKAGE_ARCHS =3D "all any noarch ${PACKAGE_EXTRA_ARCHS} =
${MACHINE_ARCH}"
+PACKAGE_ARCHS =3D "all any noarch ${TUNE_PKGARCH} =
${PACKAGE_EXTRA_ARCHS} ${MACHINE_ARCH}"

instead as we redefine PACKAGE_ARCH in different places.

- k=

