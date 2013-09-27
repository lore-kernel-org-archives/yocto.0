Return-Path: <joe@deserted.net>
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3709BE015B8
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 10:56:15 -0700 (PDT)
Received: by mail-we0-f179.google.com with SMTP id x55so3000557wes.38
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 10:56:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=rVoy9fxXIiGGbQdmoeMa3/fESBaZmDFAFsIQdClRN84=;
	b=lWu99CKi3ao3RVTtJDk5X9wtSMO0cp2X0qiF8wOC2xsaTiV+7zdxtIn38CfDoSg9nW
	LVGkhBt3jesz+VN0usVMpUb9PkQt/rxHRq0aMV5+0qByiSfmf2UexFcQu4GKNa1Onhis
	WgwDZH0t3gaQIV027m2v1/0aGM1WT8PdN2TS4OZ8dGu/UN8xtqSBn4zRQyRpD5xNSGAv
	bnaWHDkIqRBX2n/B10nNHbL9DI9XtJ9sESoiQy4R4YgUWIXmliF4IdQfllzknZOcHuv2
	1yECYIlf9k6l3QRf2GKk98pAjWwS1xfea69+b/qn0/URUne32KbD3QNc9Llf3RzKUJA8
	NwWA==
X-Gm-Message-State: ALoCoQlmObAag5NAtC4pTsf08MXKKTPkhzGvxz3CT1idFQTScPi/7jcaJKkMprQwFr8xV8xJ1fMw
X-Received: by 10.180.182.68 with SMTP id ec4mr3644492wic.40.1380304575002;
	Fri, 27 Sep 2013 10:56:15 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id d11sm40719940wic.4.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 27 Sep 2013 10:56:14 -0700 (PDT)
Date: Fri, 27 Sep 2013 13:56:10 -0400
From: Joe MacDonald <joe@deserted.net>
To: Philip Tricca <flihp@twobit.us>
Message-ID: <20130927175608.GC7238@deserted.net>
References: <20130926045827.GA1541@longhaul.twobit.us>
MIME-Version: 1.0
In-Reply-To: <20130926045827.GA1541@longhaul.twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux] Add util-linux-agetty to core-image-selinux IMAGE_INSTALL.
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
X-List-Received-Date: Fri, 27 Sep 2013 17:56:16 -0000
X-Groupsio-MsgNum: 16272
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="2JFBq9zoW8cOFH7v"
Content-Disposition: inline

--2JFBq9zoW8cOFH7v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks.
-J.

[[yocto] [meta-selinux] Add util-linux-agetty to core-image-selinux IMAGE_I=
NSTALL.] On 13.09.26 (Thu 04:58) Philip Tricca wrote:

> Currently logins to core-image-selinux images through a getty (serial)
> fail. This is caused by the use of the busybox getty. SELinux depends
> on executable files and their labels to transition between types.
> The symlink to busybox is not sufficient to cause the getty processes
> to transition to the right SELinux context. Using a getty binary
> like the one provided by util-linux fixes this.
>=20
> Signed-off-by: Philip Tricca <flihp@twobit.us>
> ---
>  recipes-security/images/core-image-selinux.bb |    1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/recipes-security/images/core-image-selinux.bb b/recipes-secu=
rity/images/core-image-selinux.bb
> index 0109933..1ec7b08 100644
> --- a/recipes-security/images/core-image-selinux.bb
> +++ b/recipes-security/images/core-image-selinux.bb
> @@ -6,6 +6,7 @@ LICENSE =3D "MIT"
> =20
>  IMAGE_INSTALL =3D "\
>  	${CORE_IMAGE_BASE_INSTALL} \
> +	util-linux-agetty \
>  	packagegroup-core-basic \
>  	packagegroup-core-selinux \
>  "  =20
--=20
-Joe MacDonald.
:wq

--2JFBq9zoW8cOFH7v
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlJFxrgACgkQwFvcllog0XwutwCgiqKDrX4at9OZaUgx8jJtGJqZ
lU4AnRG6RUztHTAp/xwmvS51CboGOaxF
=X7aG
-----END PGP SIGNATURE-----

--2JFBq9zoW8cOFH7v--
