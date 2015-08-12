Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78EFBE00A80; Wed, 12 Aug 2015 06:06:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA41CE00A3B
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 06:06:39 -0700 (PDT)
Received: from svr-orw-fem-06.mgc.mentorg.com ([147.34.97.120])
	by relay1.mentorg.com with esmtp 
	id 1ZPVjq-0007T8-KN from Joe_MacDonald@mentor.com ;
	Wed, 12 Aug 2015 06:06:38 -0700
Received: from burninator (147.34.91.1) by SVR-ORW-FEM-06.mgc.mentorg.com
	(147.34.97.120) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 12 Aug 2015 06:06:38 -0700
Received: by burninator (Postfix, from userid 1000)	id DF53B58755D; Wed, 12
	Aug 2015 09:05:56 -0400 (EDT)
Date: Wed, 12 Aug 2015 09:05:56 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: wenzong fan <wenzong.fan@windriver.com>
Message-ID: <20150812130556.GA16995@mentor.com>
References: <55CB0D29.9070206@windriver.com>
MIME-Version: 1.0
In-Reply-To: <55CB0D29.9070206@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux] How about remove libcap-ng from meta-selinux?
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
X-List-Received-Date: Wed, 12 Aug 2015 13:06:42 -0000
X-Groupsio-MsgNum: 26050
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="opJtzjQTFsWo+cga"
Content-Disposition: inline

--opJtzjQTFsWo+cga
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[yocto] [meta-selinux] How about remove libcap-ng from meta-selinux?] On 1=
5.08.12 (Wed 17:08) wenzong fan wrote:

> Hi All,
>=20
> There's a libcap-ng in meta-oe layer, it has been updated to 0.7.7 and the
> one in meta-selinux is 0.7.3.
>=20
> How about removing the one in meta-selinux and get this layer depends on
> meta-oe? Any suggestions?

The last time we had this discussion my sense was that most users of
meta-selinux wanted to continue with it only depending on oe-core.
That's my preference as well.

I'm happy to merge an updated version of libcap-ng (or maybe I'll get to
it myself, since I've known about it since Armin removed it from
meta-security, that was the time of the last discussion, I think).

All I'm saying right now is that this isn't a case of accidental
duplication of recipes in multiple layers, it's the result of a
conscious decision.  It's totally worthwhile re-visiting that decision,
though to make sure the reasons are still valid.

--=20
-Joe MacDonald.
:wq

--opJtzjQTFsWo+cga
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVy0S0AAoJEEn8ffcsOfaWFY4H/AsjYfXClwAU9ryZyCg0Vykq
0AjpfX9CXDkbNQhIbe5yHjXmUecsS0o9oA3eZcWAWNM94Py4mvtQgAtporaTQuAC
FpldOAVYEd2BX3u8KOHAKJ1/6SsqxZSyT+o6Os3XtT4SijSc5Jcc3K3hngGpsU1p
SH8nuY7DBCf7c7MrRspIgYZvt9KNhR+gbunqx7A23Fgu9gXXKQc5wrnHMHPdZOdu
WgqdyeH4GhTrdtlZvQRlZfxJ7kzihUbXyEtkyGMwjWI3LdJjURx+2HMB3qaKIJpd
Muueu0AWT8i1T40ZzL42+/Smky2zxe08lKz6YBbg20JAeMINTZLUD5lGMZQiTio=
=gO3z
-----END PGP SIGNATURE-----

--opJtzjQTFsWo+cga--
