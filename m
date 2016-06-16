Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7E31E00D7C; Thu, 16 Jun 2016 07:00:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3D02E00D15
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 07:00:25 -0700 (PDT)
Received: from svr-orw-fem-05.mgc.mentorg.com ([147.34.97.43])
	by relay1.mentorg.com with esmtp 
	id 1bDXqK-00057e-FP from Joe_MacDonald@mentor.com ;
	Thu, 16 Jun 2016 07:00:24 -0700
Received: from burninator (147.34.91.1) by svr-orw-fem-05.mgc.mentorg.com
	(147.34.97.43) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 16 Jun 2016 07:00:24 -0700
Received: by burninator (Postfix, from userid 1000)	id C4B2A580B76; Thu, 16
	Jun 2016 10:00:23 -0400 (EDT)
Date: Thu, 16 Jun 2016 10:00:23 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: "Stath, Paul" <PStath@Axxcelera.com>
Message-ID: <20160616140023.GD4918@mentor.com>
References: <5B5D636C5F0AA747B37D0EFC72B563C42D6F7CCF@RIC-MS02.MWSG.int>
MIME-Version: 1.0
In-Reply-To: <5B5D636C5F0AA747B37D0EFC72B563C42D6F7CCF@RIC-MS02.MWSG.int>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ifenslave recipe
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
X-List-Received-Date: Thu, 16 Jun 2016 14:00:30 -0000
X-Groupsio-MsgNum: 30580
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="oj4kGyHlBMXGt3Le"
Content-Disposition: inline

--oj4kGyHlBMXGt3Le
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Paul,

[[yocto] ifenslave recipe] On 16.06.16 (Thu 13:40) Stath, Paul wrote:

> I'm looking at adding support for NIC bonding into our distribution.
>=20
> Along with bonding support in the kernel, I would like to build the 'ifen=
slave'
> utility program.
>=20
> In checking the OpenEmbedded Layer Index, I find recipes-support/ifenslav=
e/
> ifenslave_1.1.0.bb in the meta-networking layer.
>=20
> This recipe has a SRC_URI for a version of 'ifenslave.c'
> (ifenslace-2.6_1.1.0.org.tar.gz) which I hazard to guess is based on the
> ifenslave distributed with the 2.6 kernel sources.
>=20
> The documentation for bonding (http://www.linuxfoundation.org/collaborate/
> workgroups/networking/bonding) recommends using the 'ifenslave.c' distrib=
uted
> with the kernel sources.  It does indicate that sources from an earlier k=
ernel
> should still work, but may not support new functionallity.


Actually, ifenslave has been gone from the kernel sources tree for some
time now:

commit b1098bbe1b24d5d90cff92fbd716d2ef4bed2cff
Author: Cong Wang <amwang@redhat.com>
Date:   Mon May 27 15:49:16 2013 +0000

    bonding: remove ifenslave.c from kernel source
   =20
    As Stephen proposed:
    Since bonding supports configuration via iproute (netlink) and sysfs, I=
 think
    it is time to purge the old ifenslave code out of Documentation/network=
ing
    and update the documentation.
   =20
    Suggested-by: Stephen Hemminger <stephen@networkplumber.org>
    Cc: Stephen Hemminger <stephen@networkplumber.org>
    Cc: Jay Vosburgh <fubar@us.ibm.com>
    Cc: "David S. Miller" <davem@davemloft.net>
    Signed-off-by: Cong Wang <amwang@redhat.com>
    Signed-off-by: David S. Miller <davem@davemloft.net>

so if anything that's probably an argument for us purging the recipe in
meta-networking too.

> Ideally, I would like to add a .bbappend to the linux-yocto recipe in my =
layer
> that will compile and package the ifenslave program if "CONFIG_BONDING=3D=
[m|y]"
> is configured for the kernel build.

Are you sure you need ifenslave at all?  If so, then either you can
submit and updated recipe that grabs the last ifenslave.c (~3.10) or
I'll see if I can put together a quick update to the recipe.  Otherwise
it's probably time to put ifenslave out to pasture.

-J.

>=20
> I'm unsure of the best way to determine if CONFIG_BONDING=3D[m|y].  Is is=
 as
> simple as "grep '^CONFIG_BONDING=3D[m|y] .config"?
>=20
> If bonding is enabled:
>=20
> + do_compile_append() to compile ifenslave.c sources from kernel source t=
ree.
> + do_install_append() to stage ifenslave executable
> + Update the "PACKAGES" variable to add "ifenslave" as a package.
> + Add FILES_ifenslave variable to define the contents of the ifenslave pa=
ckage.
>=20
> Please correct the above if I have missed something, made an invalid
> assumption, or am barking up the wrong tree.
>=20
> --
> Paul Stath
> Senior Software Engineer
> Axxcelera Broadband Wireless
> Richmond, VA 23228
>=20
>=20
>=20
>=20
>=20
>=20

--=20
-Joe MacDonald.
:wq

--oj4kGyHlBMXGt3Le
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJXYrD3AAoJEEn8ffcsOfaWmX0IAM3vwmCtavb1+8SV2+0uHHYD
WaqXwNDU8iyTlkWoHya4BFAK7lqQX+fpYR8/9D4Lb8hK+zpnl/CTCCcFjYRWr9Pe
/+LtZwLlyPwdGU5i5lnwKzJkO/pdZTLqdJ/4+XqQl8FXbLASTGMcbiO5yC2n8Q6h
JCagYeTE8Je5g+54IKwQ5qVRUw/0qxV0oYw6lWv2/cVnFvyuielo3AiiBMsNJGEJ
jlA8rLmGpsyL5B91++qB13BffLfqCM7Mzmz9b+MFoeNXa702G2Yghh/ArYVLIgrn
QGBV/Plk2zaQuBf4DuTz2tE6XyxVsooy00mBpr8i7F/oM4UKX1PsiLKBPy1HONg=
=6kor
-----END PGP SIGNATURE-----

--oj4kGyHlBMXGt3Le--
