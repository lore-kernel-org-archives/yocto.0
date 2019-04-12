Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A943BE00D11; Fri, 12 Apr 2019 12:24:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A5B4E00BC8
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2019 12:24:47 -0700 (PDT)
Received: from svr-orw-mbx-03.mgc.mentorg.com ([147.34.90.203])
	by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	id 1hF1mz-0003KX-Ox from Joe_MacDonald@mentor.com ;
	Fri, 12 Apr 2019 12:24:41 -0700
Received: from svr-orw-mbx-03.mgc.mentorg.com (147.34.90.203) by
	svr-orw-mbx-03.mgc.mentorg.com (147.34.90.203) with Microsoft SMTP
	Server (TLS) id 15.0.1320.4; Fri, 12 Apr 2019 12:24:39 -0700
Received: from nightwinge.cal.mentorg.com (147.34.91.1) by
	svr-orw-mbx-03.mgc.mentorg.com (147.34.90.203) with Microsoft SMTP
	Server id
	15.0.1320.4 via Frontend Transport; Fri, 12 Apr 2019 12:24:39 -0700
Received: by nightwinge.cal.mentorg.com (Postfix, from userid 53144)
	id 7112715F885; Fri, 12 Apr 2019 15:24:38 -0400 (EDT)
Date: Fri, 12 Apr 2019 15:24:38 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <20190412192438.GE4054@mentor.com>
References: <20190410155302.GA17879@mentor.com>
	<c1864a11-0368-a0d0-85e0-f40a2436c033@windriver.com>
MIME-Version: 1.0
In-Reply-To: <c1864a11-0368-a0d0-85e0-f40a2436c033@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PULL] refpolicy: update to 2.20190201 and git HEAD policies (2019-04-10 10:57:14 -0400)
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
X-List-Received-Date: Fri, 12 Apr 2019 19:24:48 -0000
X-Groupsio-MsgNum: 44790
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FeAIMMcddNRN4P4/"
Content-Disposition: inline

--FeAIMMcddNRN4P4/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Yi,

[Re: [yocto] [meta-selinux][PULL] refpolicy: update to 2.20190201 and git H=
EAD policies (2019-04-10 10:57:14 -0400)] On 19.04.11 (Thu 16:19) Yi Zhao w=
rote:

> Hi Joe,
>=20
> Thank you for working on the refpolicy upgrade.
> I have a quick test with your patch. Here are the results:
>=20
> Machine: qemux86-64
> Image: core-image-selinux
> Init manager: systemd
> Boot command: runqemu qemux86-64 kvm nographic bootparams=3D"selinux=3D1 =
enforcing=3D
> X" qemuparams=3D"-m 1024"
>=20
> 1. All refpolicy type of git version can be built without problems.
>=20
> 2. With parameter selinux=3D1 & enforcing=3D0
> The qemu can boot up and login for all refpolicy types.

Perfect, that's what I had when testing on my reference hardware, so I'm
happy you were able to validate those results.

> 3. With parameter selinux=3D1 & enforcing=3D1
> Some of services failed to startup when booting. But this issue also exis=
t on
> old refpolicy version (2.20170204)

Yeah, and given the scope of this change my goal was mainly parity with
the old policy but based on a version that's 2-ish years newer.  So once
that's done I think we can reasonably work at enabling the additional
services in some structured way.

> 4. refpolicy stable version (2.20190201)
> I got an do_fetch error with refpolicy stable version.
> Seems the SRC_URI is not correct. It should be "https://github.com/
> SELinuxProject/refpolicy/releases/download/RELEASE_2_20190201/refpolicy-$
> {PV}.tar.bz2"

Thanks, good catch, I don't know how that slipped through.  Corrected on
my end, I'll update it in a bit.

-J.

>=20
>=20
> Regards,
> Yi

--=20
-Joe MacDonald.
:wq

--FeAIMMcddNRN4P4/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEkMd/b97HINT8/zEqSfx99yw59pYFAlyw5fUACgkQSfx99yw5
9pb1lQgAj0LEbkC1QosYgD6Jq6zLzaml1h5yUgrkLeze7yfx2fOwizoCWb615kZR
CqhGVgfgKFJBzWsoPLJNl269CCrgSlgFizaEYXcjv7KZkVq3ABqz3L5v8H8sSXug
nnOxOHXeIIu+qXFBuLz9IOX0uKGQ5KxNyOyRWjIuzXRxeDuxtwh7qlSmxn3ZGFQy
2WDHtUjM0rIc8y0A6v2LoPMl4qzvKABHFdZNlSukru5vNvQFfEYXl65g48ziqlCU
A+PDnn4RT8WFQZbguZ7IaKAHaPUPBMELgjYexY++ccLee29zv6CEZymb8M+CR+2C
lV/WZPG/91VRDGQaf5QFACZnNdbpdg==
=Er4g
-----END PGP SIGNATURE-----

--FeAIMMcddNRN4P4/--
