Return-Path: <joe@deserted.net>
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96D13E00B6D
	for <yocto@yoctoproject.org>; Thu,  3 Apr 2014 07:56:15 -0700 (PDT)
Received: by mail-qg0-f48.google.com with SMTP id i50so1193809qgf.35
	for <yocto@yoctoproject.org>; Thu, 03 Apr 2014 07:56:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=ToZdKcN/zmPl5j0he/ktcRzlGvxWH61A+BTa/iVq478=;
	b=DvaxQlapym0jiZi17AebbHad3uaqMXtmCIs7naaR7oxcSRGuSK+aQjLMT8JFOXvJqy
	Qkbv60yo1rcFQvRDa4nfgKzwlgPNhc+SFYJV9FUcs3muZXVaRAbkCXRYZing4W3DFB4t
	IvsLbDjX8oHPS0a1X1/OW3DAseDTPbuabodBunDcr36Qcb7nvjIKImOoC47TYCU4KCd2
	yJQA0fBhahfOY/RhsrOxqqCSiQv9fLM97ZBIguUGv2ieai2MLH5BV7PHMqlgqepZKP9O
	d7F/AWWHF1K5cT2exKiqye7P10Y1dU3xEOkZJzXQxWZ/ALzaa6Aj8sKEGTO22TEuNvPj
	Sxtw==
X-Gm-Message-State: ALoCoQmRpiBXJv26UI5hW1vXcGs+Z89r3NrkxedqUR97CKe12bFgXF9rxUf1s6rsgC9YNN2QB4yB
X-Received: by 10.224.37.10 with SMTP id v10mr1731922qad.104.1396536974880;
	Thu, 03 Apr 2014 07:56:14 -0700 (PDT)
Received: from deserted.net ([128.224.252.2]) by mx.google.com with ESMTPSA id
	z10sm10485478qaf.33.2014.04.03.07.56.13 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 03 Apr 2014 07:56:13 -0700 (PDT)
Date: Thu, 3 Apr 2014 10:56:11 -0400
From: Joe MacDonald <joe@deserted.net>
To: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
Message-ID: <20140403145609.GD4075@deserted.net>
References: <1396531024-12780-1-git-send-email-joe@deserted.net>
	<1396533882.11779.YahooMailNeo@web122503.mail.ne1.yahoo.com>
MIME-Version: 1.0
In-Reply-To: <1396533882.11779.YahooMailNeo@web122503.mail.ne1.yahoo.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCH] refpolicy: add versioned directory to	FILESEXTRAPATHS
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
X-List-Received-Date: Thu, 03 Apr 2014 14:56:19 -0000
X-Groupsio-MsgNum: 18832
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="UoPmpPX/dBe4BELn"
Content-Disposition: inline

--UoPmpPX/dBe4BELn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux][PATCH] refpolicy: add versioned directory to FI=
LESEXTRAPATHS] On 14.04.03 (Thu 07:04) Vaduva alexandru wrote:

> I also did a similar patch sometime ago, but it is waiting for a merge to
> upstream.

Ah, found it.  I missed it in my filters when I was looking for
meta-selinux stuff.  Since it's the same content, I'll merge yours.

-J.

>=20
> On Thursday, April 3, 2014 4:18 PM, Joe MacDonald <joe@deserted.net> wrot=
e:
> ${PV} is no longer calculated for non-bb/bbappend files, resulting in a
> failure to find any patches in refpolicy-2.20130424/.  Explicitly set the
> path name rather than relying on the ${PV} expansion.
>=20
> Signed-off-by: Joe MacDonald <joe@deserted.net>
> ---
> recipes-security/refpolicy/refpolicy_2.20130424.inc |    2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/
> recipes-security/refpolicy/refpolicy_2.20130424.inc
> index 9e5e426..4ea61fc 100644
> --- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
> +++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
> @@ -4,7 +4,7 @@ SRC_URI =3D "http://oss.tresys.com/files/refpolicy/refpol=
icy-$
> {PV}.tar.bz2;"
> SRC_URI[md5sum] =3D "6a5c975258cc8eb92c122f11b11a5085"
> SRC_URI[sha256sum] =3D
> "6039ba854f244a39dc727cc7db25632f7b933bb271c803772d754d4354f5aef4"
>=20
> -FILESEXTRAPATHS_prepend :=3D "${THISDIR}/refpolicy-${PV}:"
> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/refpolicy-2.20130424:"
>=20
> # Fix file contexts for Poky
> SRC_URI +=3D "file://poky-fc-subs_dist.patch \
> --
> 1.7.10.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20

--=20
-Joe MacDonald.
:wq

--UoPmpPX/dBe4BELn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlM9dokACgkQwFvcllog0Xy1EwCggWCwWX0o/u3uRRiO+3qWYQL+
HDcAn1MY/3tnsBKtCQOexIzZLyiZ8dYV
=VvAu
-----END PGP SIGNATURE-----

--UoPmpPX/dBe4BELn--
