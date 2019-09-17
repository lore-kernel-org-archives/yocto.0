Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E96ADE00D72; Tue, 17 Sep 2019 07:12:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [68.232.137.180 listed in list.dnswl.org]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Tue, 17 Sep 2019 07:12:22 PDT
Received: from esa3.mentor.iphmx.com (esa3.mentor.iphmx.com [68.232.137.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 667C4E00C74
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2019 07:12:21 -0700 (PDT)
IronPort-SDR: MrE/b62n9qGWBP6gjeJwjyHr5yZW2yXszIbA0iL6AZ4uJSHhNyToluXPOPP4zGVYsyJJjmto0q
	Hd4XBsYhYs4K6z53jXf8IMQGDtCFf9v2efUx79uz4TLhQuuGaDyV3F03VCXNtap2X6dqi0jypr
	5yBsRSEJtU7lauTmvc1UeMa5AeDauAW3oNaMXfulycZ2zvrejy+xm8kThdTZhVVpKsRm3YSWKZ
	BHSE0TNUN89/WFv/4XxFBuGz/GR/ceD/EuMJWnttruTX4SYhYLDEpixt7LrpIPVLa6U3eQAwUi
	psE=
X-IronPort-AV: E=Sophos;i="5.64,516,1559548800"; 
	d="asc'?scan'208";a="41426534"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
	by esa3.mentor.iphmx.com with ESMTP; 17 Sep 2019 06:11:05 -0800
IronPort-SDR: NSb94kacxFYNcB6mgUL1N37FhrpP3zqQdagCOg6SvNymG/V0TBlHvDTosXni71RRm4i6VyfUxz
	A/DgPnqVJ08zOjplJPIPNVemSKkmg3E6BhLAgqyp5K0SCJYeM3rpGYZoprE5iuFnVZxnTGLp3W
	RGcWzUtulrL+iUC0NwkDTSYoT3A0ABA1wS3R4RjNXP5YfmMwTwCxNqJcGTiZCRbfAQatwVoEEe
	M40/xqUZEP+TesOaiOi0gvZbg/wdTikJB+xDlEvq/B41+hmV2VpIjU/wOx6Qx/fzeLWjxg/rlo
	504=
Date: Tue, 17 Sep 2019 10:11:01 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Lorenz Kofler <lorenz@sigma-star.at>
Message-ID: <20190917141101.GC28098@mentor.com>
References: <1286559489.33897.1568725712049.JavaMail.zimbra@sigma-star.at>
MIME-Version: 1.0
In-Reply-To: <1286559489.33897.1568725712049.JavaMail.zimbra@sigma-star.at>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: meta-selinux thud compatibility
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
X-List-Received-Date: Tue, 17 Sep 2019 14:12:23 -0000
X-Groupsio-MsgNum: 46625
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Clx92ZfkiYIKRjnr"
Content-Disposition: inline

--Clx92ZfkiYIKRjnr
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Lorenz,

[meta-selinux thud compatibility] On 19.09.17 (Tue 15:08) Lorenz Kofler wro=
te:

> Hello,
>=20
> according to your layer.conf file is the meta-selinux layer compatible wi=
th
> thud, however it did not build successfully.
> I had to revert the patch eafe868098f52b061422bffc13fbc582d687d4ed.
> Is it possible to make a Yocto version dependent .bbappend file? Or maybe=
 just
> remove compatibility for thud.

Thanks for bringing this to our attention.  I haven't built thud in
ages, so it's definitely helpful to hear about any issues someone may
be having.

That said, I don't see eafe868098f52b061422bffc13fbc582d687d4ed on the
'thud' branch.  I did a fresh clone into a new workspace from
git://git.yoctoproject.org/meta-selinux just to be sure.  Are you sure
your tree is in sync with the meta-selinux thud brach?  The HEAD commit
there, as I see it, is:

commit fb6192aa2c5df8e80c5e6d4fa5448d574332f68f (HEAD -> thud,
origin/thud)
Author: Khem Raj <raj.khem@gmail.com>
Date:   Tue Feb 26 11:44:43 2019 -0800

    refpolicy: Forward patch to apply cleanly on thud
   =20
    Also fix devtool generated warnings by refreshing patches
   =20
    Signed-off-by: Khem Raj <raj.khem@gmail.com>
    Signed-off-by: Joe MacDonald <joe@deserted.net>

--=20
-Joe MacDonald.
Linux Architect | Mentor=AE A Siemens Business
:wq

--Clx92ZfkiYIKRjnr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEkMd/b97HINT8/zEqSfx99yw59pYFAl2A6WUACgkQSfx99yw5
9pYPRwf9GBcRMxkPGnwIaL+hiD0f/iI//YZm8wFjnm2guGPern8swIUFIp0Qcfz7
CHnGNaoq04dvyIwDP2YIh6qYmIYI6XdwV48yAoyWz4mxDSuWeGY+1NPEPFzVXn3h
yS4w/yCYgwQHAotfRBCx3QMv+Or450LFXfULhkG6ZvUia0opuy4PFOVb5JrlHyf0
feQTiUqKt2aeGMGkKOr2jMpLNLzrUg2wEysMc4cCAWw538WL1go3AUTL4cdpzPl/
K/LRFCsy7HqIEhxdrPHeff1jdOLWm1MaElVPYnQlaRlrcDAZX+Duy0WfJ2uUHcag
DnxBjPlX8J9lkecJVo2ZiwwFj/iBAA==
=zvUV
-----END PGP SIGNATURE-----

--Clx92ZfkiYIKRjnr--
