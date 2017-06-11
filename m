Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EE65E00718; Sun, 11 Jun 2017 04:51:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00FA0E00349
	for <yocto@yoctoproject.org>; Sun, 11 Jun 2017 04:51:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v5BBoxej003538
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 11 Jun 2017 04:50:59 -0700 (PDT)
Received: from pek-khao-d1 (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.294.0;
	Sun, 11 Jun 2017 04:50:59 -0700
Date: Sun, 11 Jun 2017 19:50:54 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20170611115053.GA12302@pek-khao-d1>
References: <1496947514-11876-1-git-send-email-bruce.ashfield@windriver.com>
	<20170609013019.GC21118@pek-khao-d1>
	<1497175634.6630.279.camel@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <1497175634.6630.279.camel@linuxfoundation.org>
User-Agent: Mutt/1.7.1 (2016-10-04)
X-Originating-IP: [147.11.105.121]
Cc: yocto@yoctoproject.org, "Hernandez,
	Alejandro" <alejandro.hernandez@intel.com>
Subject: Re: [PATCH] yocto-bsp: update reference BSPs to 4.1 latest
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
X-List-Received-Date: Sun, 11 Jun 2017 11:51:05 -0000
X-Groupsio-MsgNum: 36483
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PEIAKu/WMn1b1Hv9"
Content-Disposition: inline

--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 11, 2017 at 11:07:14AM +0100, Richard Purdie wrote:
> On Fri, 2017-06-09 at 09:30 +0800, Kevin Hao wrote:
> > On Thu, Jun 08, 2017 at 02:45:14PM -0400, Bruce Ashfield wrote:
> > >=20
> > > The reference BSPs are lagging on their 4.1 SRCREVs, which means
> > > -stable updates, and gcc-7 build fixes are missing.
> > I have made a patch to update the SRCREVs for 4.1, 4.4, 4,9 and 4.10
> > three weeks ago,
> > but it seems not get merged. I just sent a ping for the merging.
>=20
> The trouble is you and Alejandro send updates against the same file and
> one invariably fails to apply. I've fixed it up and applied it but one
> of you basing on the other would help with this.

Thanks Richard. We would avoid such kind of conflicts in the future.

Thanks,
Kevin

--PEIAKu/WMn1b1Hv9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJZPS6dAAoJEJNY7TDerrFxX4wIALJ+ab3Rt0ocux7eBb15eKmB
IyWcDn756nPKj9EV/j0g2ThUIZMhxotQZBSlsI0/u4zE7sOjrPmJ2+7Okn42MBD+
TwN23qZL8Xo1MeFI7apva550lrzaQneYEE/U4BOa/Kn2D8qQn0jSsS6v6y99Gc/d
V+JfG9jo+VgP9L2kpBBb43GQ3TFbig68tPXX1qT6uwVJiUFqOdJCyHvTJsnKL8X/
uMz3Ij9e7UDnEF7l7xiUG/Sk/HgsFSirt/jzSzzoiiAQ4ir8De611eu/WZTPChn/
SYdDDcD9aO1j3JoSFM5MupguFXtxV3FAJyg3UuQR2ulkdHLrPIeYT3L+ja+aCzo=
=WFlx
-----END PGP SIGNATURE-----

--PEIAKu/WMn1b1Hv9--
