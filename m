Return-Path: <joe@deserted.net>
Received: from mail-qa0-f53.google.com (mail-qa0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0657DE00B76
	for <yocto@yoctoproject.org>; Thu,  3 Apr 2014 12:15:57 -0700 (PDT)
Received: by mail-qa0-f53.google.com with SMTP id w8so2067786qac.40
	for <yocto@yoctoproject.org>; Thu, 03 Apr 2014 12:15:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=+Sbntri7k1pFQgMfdRrStpZ4qeyjMFLklwqA2Jdd2vs=;
	b=NSJ16bdkm31s1bGGJZ+bRR4MMcvJ8UP44v/XOfLtrLSO+O7Wf5YF3y5+wutfArG6vZ
	ciAhQrZxreZHC9tIclsJqen/BNjmRo+H6GqGuitv+W4wMP8x1iejrQHlNLD1BzFXYIla
	TvGK9mTadrOOK8M4ZVBcHtSRlNoUzuNb0cGvx4nfnyOEBSXOUbarC69g86+1nAGzTykG
	TdzBM//jyrD/qdZ30883YlxtJd/5cfwX7kLhF1GfjK4Cc6m0A8Tv2SCIHjQzS9Gfu+bv
	8a1JLKfPa39I60hGnyUzcJ1Y78ngZ5KEjFsaZUfseKJg74dGL9LeaI8eJt4oUMhXrS57
	hsHg==
X-Gm-Message-State: ALoCoQnkBi6xwcdt2SNj4WRnYllmeAPcgoXF8I+GIr4ztmbPPF8TR5h2+FZ+ECVqata6IVY+6ffZ
X-Received: by 10.224.67.131 with SMTP id r3mr9399772qai.75.1396552556890;
	Thu, 03 Apr 2014 12:15:56 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id v3sm11694141qaj.1.2014.04.03.12.15.55
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 03 Apr 2014 12:15:55 -0700 (PDT)
Date: Thu, 3 Apr 2014 15:15:53 -0400
From: Joe MacDonald <joe@deserted.net>
To: Joe Slater <jslater@windriver.com>
Message-ID: <20140403191551.GL4075@deserted.net>
References: <1396473598-28636-1-git-send-email-jslater@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1396473598-28636-1-git-send-email-jslater@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org, joe.slater@windriver.com
Subject: Re: [meta-selinux][PATCH 1/1] mesa: add dependency on libselinux-native
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
X-List-Received-Date: Thu, 03 Apr 2014 19:16:00 -0000
X-Groupsio-MsgNum: 18842
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Jbyekxk18hnEXT0m"
Content-Disposition: inline

--Jbyekxk18hnEXT0m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks.
-J.

[[yocto] [meta-selinux][PATCH 1/1] mesa: add dependency on libselinux-nativ=
e] On 14.04.02 (Wed 14:19) Joe Slater wrote:

> mesa builds a host utility named builtin_compiler,
> and that needs selinux, too, if --enable-selinux is
> specfied to configure.
>=20
> Signed-off-by: Joe Slater <jslater@windriver.com>
> ---
>  recipes-graphics/mesa/mesa_9.1.6.bbappend |    5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/recipes-graphics/mesa/mesa_9.1.6.bbappend b/recipes-graphics=
/mesa/mesa_9.1.6.bbappend
> index 8c11cac..0004f71 100644
> --- a/recipes-graphics/mesa/mesa_9.1.6.bbappend
> +++ b/recipes-graphics/mesa/mesa_9.1.6.bbappend
> @@ -1 +1,6 @@
>  inherit enable-selinux
> +
> +# But wait!  There's more!  mesa builds a host program named builtin_com=
piler
> +# and it needs selinux, too.  We replace the PACKAGECONFIG[] in the bbcl=
ass.
> +#
> +PACKAGECONFIG[selinux] =3D "--enable-selinux,--disable-selinux,libselinu=
x libselinux-native,"
> --=20
> 1.7.9.5
>=20
--=20
-Joe MacDonald.
:wq

--Jbyekxk18hnEXT0m
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlM9s2cACgkQwFvcllog0XwRYACghThru7ktWuANn2nBbxOUHrqt
bSoAn15TxI4tTO66y+/r5XVuTxbZfF04
=dM7b
-----END PGP SIGNATURE-----

--Jbyekxk18hnEXT0m--
