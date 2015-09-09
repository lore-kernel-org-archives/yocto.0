Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF561E00C9A; Wed,  9 Sep 2015 06:58:44 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA8DCE00A81
	for <yocto@yoctoproject.org>; Wed,  9 Sep 2015 06:58:41 -0700 (PDT)
Received: from svr-orw-fem-02x.mgc.mentorg.com ([147.34.96.206]
	helo=SVR-ORW-FEM-02.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1ZZftZ-0005wj-3M from Joe_MacDonald@mentor.com ;
	Wed, 09 Sep 2015 06:58:41 -0700
Received: from burninator (147.34.91.1) by svr-orw-fem-02.mgc.mentorg.com
	(147.34.96.168) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 9 Sep 2015 06:58:40 -0700
Received: by burninator (Postfix, from userid 1000)	id 2893C5877D0; Wed,  9
	Sep 2015 09:57:40 -0400 (EDT)
Date: Wed, 9 Sep 2015 09:57:40 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Thomas Perrot <thomas.perrot@tupi.fr>
Message-ID: <20150909135739.GN3916@mentor.com>
References: <1441791596-7992-1-git-send-email-thomas.perrot@tupi.fr>
MIME-Version: 1.0
In-Reply-To: <1441791596-7992-1-git-send-email-thomas.perrot@tupi.fr>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] To fix ERROR: No recipes available for: /home/tperrot/dev/oe-build-easy/combination/meta-selinux/recipes-extended/net-tools/net-tools_1.60-25.bbappend The version of the recipe has changed to 1.60-26 in openembedded-core.
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
X-List-Received-Date: Wed, 09 Sep 2015 13:58:44 -0000
X-Groupsio-MsgNum: 26323
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="JLiXfqD9/Kt1b+Pq"
Content-Disposition: inline

--JLiXfqD9/Kt1b+Pq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Thomas,

Thanks for the update, but I had already sent out a patch for review for
this yesterday:

https://www.mail-archive.com/yocto@yoctoproject.org/msg25655.html

since it's obviously a blocking issue for anyone building meta-selinux
now, I've merged and pushed it.

-J.

[[yocto] [meta-selinux][PATCH] To fix ERROR: No recipes available for: /hom=
e/tperrot/dev/oe-build-easy/combination/meta-selinux/recipes-extended/net-t=
ools/net-tools_1.60-25.bbappend The version of the recipe has changed to 1.=
60-26 in openembedded-core.]=20
> Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>
> ---
>  .../net-tools/{net-tools_1.60-25.bbappend =3D> net-tools_1.60-%.bbappend=
}   | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename recipes-extended/net-tools/{net-tools_1.60-25.bbappend =3D> net-t=
ools_1.60-%.bbappend} (100%)
>=20
> diff --git a/recipes-extended/net-tools/net-tools_1.60-25.bbappend b/reci=
pes-extended/net-tools/net-tools_1.60-%.bbappend
> similarity index 100%
> rename from recipes-extended/net-tools/net-tools_1.60-25.bbappend
> rename to recipes-extended/net-tools/net-tools_1.60-%.bbappend
> --=20
> 2.1.4
>=20
--=20
-Joe MacDonald.
:wq

--JLiXfqD9/Kt1b+Pq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJV8DrTAAoJEEn8ffcsOfaWbkcH/25xvpYgkNl9/sl9TBQsZIDp
VLdrtf09IE+CV9BTZ90FdpruFObZVBM8dBrjZAvkQxtdO5Z1R9n9FnZXwQZQZoDP
hfF1DTgXEvay74Yx5zwS15vE7O9WPYcGrApTHX/YnphlK7oae4098RoCOk5ixRaV
SDmA/CNFjh0JLLyMbFM9sdCJgClXs8KlhNuP3nKZIP2iedh+DYR2uOF8jM/Z+Aqb
LxgoYV7nwF7cM/yaYXDK4dwf9VUXIU56dStOvLiMYYLiBD4WCdczOJD+ahC/B040
oblAS5O6PN/76+akBNY/ByVqpNVxEQbx7t+kWQJ7b6ilZelJoxx5tiJBCxVkKoI=
=m8JM
-----END PGP SIGNATURE-----

--JLiXfqD9/Kt1b+Pq--
