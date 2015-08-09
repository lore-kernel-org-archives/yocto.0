Return-Path: <pbarker@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64921E009F0; Sun,  9 Aug 2015 03:45:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [188.165.48.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2296 seconds by postgrey-1.32 at yocto-www;
	Sun, 09 Aug 2015 03:45:16 PDT
Received: from 7.mo2.mail-out.ovh.net (7.mo2.mail-out.ovh.net [188.165.48.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46017E003D7
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 03:45:16 -0700 (PDT)
Received: from mail192.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id A9B2BFFC53B
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 12:06:58 +0200 (CEST)
Received: from localhost (HELO queueout) (127.0.0.1)
	by localhost with SMTP; 9 Aug 2015 12:06:57 +0200
Received: from cpc19-shep11-2-0-cust55.8-3.cable.virginm.net (HELO
	bang.betafive.co.uk) (paul@betafive.co.uk@81.111.243.56)
	by ns0.ovh.net with AES256-GCM-SHA384 encrypted SMTP;
	9 Aug 2015 12:06:56 +0200
Received: by bang.betafive.co.uk (Postfix, from userid 1000)
	id 5ABFA40A4F; Sun,  9 Aug 2015 11:07:24 +0100 (BST)
Date: Sun, 9 Aug 2015 11:07:24 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20150809100724.GA24792@bang.betafive.co.uk>
References: <55C4B071.30709@gmail.com>
MIME-Version: 1.0
In-Reply-To: <55C4B071.30709@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Ovh-Tracer-Id: 2756202973812014031
X-Ovh-Remote: 81.111.243.56 (cpc19-shep11-2-0-cust55.8-3.cable.virginm.net)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: -100
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekfedrvdejucetufdoteggucfrrhhofhhilhgvmecuqfggjfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekfedrvdejucetufdoteggucfrrhhofhhilhgvmecuqfggjfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
Cc: yocto@yoctoproject.org
Subject: Re: ipk zImage in master-next
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
X-List-Received-Date: Sun, 09 Aug 2015 10:45:23 -0000
X-Groupsio-MsgNum: 25942
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="mP3DRpeJDSE+ciuQ"
Content-Disposition: inline

--mP3DRpeJDSE+ciuQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 07, 2015 at 09:19:45AM -0400, Trevor Woerner wrote:
> When packaging a zImage kernel for IPK in master-next the following
> error shows up:
>=20
> | kernel-image-zImage-4.1.2-fslc+g95d9e15
> | *** Error: Package name  contains illegal characters, (other than
> [a-z0-9.+-])
>=20
> It looks like the newer kernel.bbclass is much more sophisticated about
> generating package names than before.
>=20
> Has anyone else seen this? Is there a simple way of saying "the type is
> zimage where packaging for ipk is concerned but zImage otherwise"?
>=20
> Best regards,
> 	Trevor

I believe this check is present in opkg-build just to ensure compatibility =
with
the Debian Policy Manual. I don't remember this being an actual restriction=
 of
opkg.

You could try patching the opkg-build script (in opkg-utils) to remove this
check and see if opkg is happy to install the resulting package.

Thanks,

--=20
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

--mP3DRpeJDSE+ciuQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJVxyZcAAoJEBwoJlo7UPQD4SYH/2BYQBLGzw0Vx3+ls9B0YRHl
qXG3V78uNqFi/PFfKkcJx2v5NpKaSyhpJfFecVXSkjUINXknWv172tBrtsXghm2I
pxCKUgm36fP5SWEO6oxub5b688tzBcnc4uRF3uu+LJ9RFUECO3sDXChn4rFtui5C
BolTVzKbDQhjL40NGhiH5hD2m4q8oZGez9tlymIzkCROaCdE2RPJqEbto/2RQJya
tiYx6xZiZXO+2aFCCwNgK2o4a1RnozxoDl3eF6Wks4raP1tHdk2XFiYBNwwCnLr5
xRscFoYFA+NdElmvqYpiwqWuBFH/3UFyfXGwWsPZX0cfTQv1c2arMwAJDtwmBWg=
=qijc
-----END PGP SIGNATURE-----

--mP3DRpeJDSE+ciuQ--
