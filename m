Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DABE0E00857; Wed, 24 Sep 2014 07:37:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56A97E00848
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 07:37:24 -0700 (PDT)
Received: from svr-orw-fem-02x.mgc.mentorg.com ([147.34.96.206]
	helo=SVR-ORW-FEM-02.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1XWnh5-0002s3-GF from Joe_MacDonald@mentor.com ;
	Wed, 24 Sep 2014 07:37:23 -0700
Received: from burninator (147.34.91.1) by svr-orw-fem-02.mgc.mentorg.com
	(147.34.96.168) with Microsoft SMTP Server id 14.3.181.6;
	Wed, 24 Sep 2014 07:37:22 -0700
Received: by burninator (Postfix, from userid 1000)	id AFED4580FB5; Wed, 24
	Sep 2014 10:37:22 -0400 (EDT)
Date: Wed, 24 Sep 2014 10:37:22 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: <rongqing.li@windriver.com>
Message-ID: <20140924143722.GB8841@mentor.com>
References: <1411522429-30924-1-git-send-email-rongqing.li@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1411522429-30924-1-git-send-email-rongqing.li@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][meta-selinux] dhcp: remove the unrecognised without-selinux configuration warning
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
X-List-Received-Date: Wed, 24 Sep 2014 14:37:31 -0000
X-Groupsio-MsgNum: 21638
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="UHN/qo2QbUvPLonB"
Content-Disposition: inline

--UHN/qo2QbUvPLonB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks Roy.
-J.

[[yocto] [PATCH][meta-selinux] dhcp: remove the unrecognised without-selinu=
x configuration warning] On 14.09.24 (Wed 09:33) rongqing.li@windriver.com =
wrote:

> From: "Roy.Li" <rongqing.li@windriver.com>
>=20
> dhcp 4.3 has no selinux related configuration options, but it needs the
> correct initscript when SELinux is enabled, so inherit selinux, not
> inherit with-selinux
>=20
> Signed-off-by: Roy.Li <rongqing.li@windriver.com>
> ---
>  recipes-connectivity/dhcp/dhcp_4.3.0.bbappend |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/recipes-connectivity/dhcp/dhcp_4.3.0.bbappend b/recipes-conn=
ectivity/dhcp/dhcp_4.3.0.bbappend
> index 900c2aa..2d2232c 100644
> --- a/recipes-connectivity/dhcp/dhcp_4.3.0.bbappend
> +++ b/recipes-connectivity/dhcp/dhcp_4.3.0.bbappend
> @@ -1,3 +1,3 @@
> -inherit with-selinux
> +inherit selinux
> =20
>  FILESEXTRAPATHS_prepend :=3D "${@target_selinux(d, '${THISDIR}/files:')}"
> --=20
> 1.7.10.4
>=20
--=20
-Joe MacDonald.
:wq

--UHN/qo2QbUvPLonB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUItciAAoJEEn8ffcsOfaW7ocIAKw6GvIwzw4SXwDSsMsRRyWI
6iRGc/ZhwruhYvkNZ3QkL21MpOMZMBTE3VezjNkEXBH/PzPCrBHzTyhALjw5eyOa
/ADJ0f7zvrk+ROyKiKMT04AE7WEkRJ5bU2Jc3a+eKShcusW4XbwjpLhkY3BOaCpP
G/M4f+ypA0urefNQqvQyuJ6c5s3MjLktiwM5Gl53E9d7SBs/rkHivjoz4gSrCozg
X81MTAoWTqsE7A1LEEOoJSNUXU1IRzGKm0VTjPuivT9RBxeaQqf81FNqHpSkcarV
qkpjIjSAKzPUVqRhEBLYRfhYHYJv1QuGfw8n4bKvkKa4JqMhO+ai/fm52laqMsY=
=SfuU
-----END PGP SIGNATURE-----

--UHN/qo2QbUvPLonB--
