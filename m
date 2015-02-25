Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D91FEE0076F; Wed, 25 Feb 2015 05:44:06 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33C7CE0074C
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 05:44:04 -0800 (PST)
Received: from svr-orw-fem-02x.mgc.mentorg.com ([147.34.96.206]
	helo=SVR-ORW-FEM-02.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1YQcFu-0004hp-Ko from Joe_MacDonald@mentor.com ;
	Wed, 25 Feb 2015 05:44:02 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-02.mgc.mentorg.com
	(147.34.96.168) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 25 Feb 2015 05:44:02 -0800
Received: by burninator (Postfix, from userid 1000)	id A340A581021; Wed, 25
	Feb 2015 08:44:06 -0500 (EST)
Date: Wed, 25 Feb 2015 08:44:06 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20150225134406.GH8949@mentor.com>
References: <alpine.LFD.2.11.1502250351310.26693@localhost>
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.11.1502250351310.26693@localhost>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: kernel manual: confusing coverage of FILESEXTRAPATHS_prepend
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
X-List-Received-Date: Wed, 25 Feb 2015 13:44:06 -0000
X-Groupsio-MsgNum: 23744
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ik0NlRzMGhMnxrMX"
Content-Disposition: inline

--ik0NlRzMGhMnxrMX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[yocto] kernel manual: confusing coverage of FILESEXTRAPATHS_prepend] On 1=
5.02.25 (Wed 03:54) Robert P. J. Day wrote:

>=20
>   minor quibble about kernel dev manual -- section 2.2.1, "creating
> the append file", uses the example of:
>=20
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> while section 2.2.3 uses:
>=20
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>=20
> both sections kind of implying that that's the way to do it, without
> making it clear that *either* way works as long as the variable
> prepend matches up with the directory name.
>=20
>   both ways are correct, of course, but the wording is a bit
> confusing.

It's probably worth changing the latter reference to match the former.
Both work but with any new recipes (at least in the layers I maintain)
the preference is to use the former for clarity as well as faster
lookups.

-J.

>=20
> rday
>=20
> --=20
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>=20
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--=20
-Joe MacDonald.
:wq

--ik0NlRzMGhMnxrMX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJU7dGcAAoJEEn8ffcsOfaWQhoH/2HGfZxGnyiY0cBaCCg/79Jp
EpsBlpGsWuocfq7BEeiXqRKWZ7OhH6eLvoq8exlTKArOOxP7Ynrk9etIhxXIGZhF
2htFOjf4nbiGLxAQy1a0FUWe58zvL6ka/I+7o+aagx7pL2bvGYgiyXdfSQRkjP58
aa+JMm8OhO7gXmcRT9nb9x3MHqZXKGYSSQ1zGK0n52hWIL6lDhBenkfIEXSzdBcV
XMwXb9642YcDxRWuO/JEJ7zqK8ccbsgGcIyX2PcnawS78wne2V6+StdhoEI8b8gt
RIHaxhNBbecMZP8nl/60wvGdmI+5XMR/If8FKHd2wCtsU0tJSaazE3C60o81PRk=
=MRZt
-----END PGP SIGNATURE-----

--ik0NlRzMGhMnxrMX--
