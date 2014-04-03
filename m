Return-Path: <joe@deserted.net>
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F481E00B78
	for <yocto@yoctoproject.org>; Thu,  3 Apr 2014 12:05:35 -0700 (PDT)
Received: by mail-qg0-f41.google.com with SMTP id z60so2296063qgd.0
	for <yocto@yoctoproject.org>; Thu, 03 Apr 2014 12:05:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=7SwpzPoNRquSoHhTfQPG076N1l+2prc0r0VLgLojXw4=;
	b=GTmrhFNVAy7VmRRuXOAYoE5VySoijgB8F0elJPi5O5948zrh8lg4eZj6cLMH04SrXD
	lhLV94nQIG41mOSEL5RduhjcKyGvZm2PzuQNb6PncgJCM2suOC27IhwtCdbBwWc//6Ql
	UEb9iEkxyxvZqVRtwC5EH3tswV957ZHZVRUVwxz2xV7w7Gqa4dPLkoMunMbLfqsx3FxD
	DOecljzQZvq82jSD/+MBtSwLxlxzdIFh1f8VITKjbXXxmxRuvE7GRU8NEoWEE+ZMgDeu
	pasaTGc066+/rJDf8FOrX6NgKcftorCOGceDBg4uU7jk7AWqqs2ISW5l5RbJZS+rv+Lz
	vW3Q==
X-Gm-Message-State: ALoCoQmnaUmdP9tSTDsfDRdgUpTAIOFJSUkc67irWFS/bVL9L6xb2jyd95TvAbbdoyJ+FQVa/1CM
X-Received: by 10.140.109.132 with SMTP id l4mr8990997qgf.72.1396551935231;
	Thu, 03 Apr 2014 12:05:35 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id b5sm11623968qar.25.2014.04.03.12.05.34
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 03 Apr 2014 12:05:34 -0700 (PDT)
Date: Thu, 3 Apr 2014 15:05:31 -0400
From: Joe MacDonald <joe@deserted.net>
To: rongqing.li@windriver.com
Message-ID: <20140403190528.GH4075@deserted.net>
References: <cover.1392358150.git.rongqing.li@windriver.com>
MIME-Version: 1.0
In-Reply-To: <cover.1392358150.git.rongqing.li@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1][meta-selinux][V2] refpolicy: make proftpd be able to work
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
X-List-Received-Date: Thu, 03 Apr 2014 19:05:36 -0000
X-Groupsio-MsgNum: 18838
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ISKrrfpKsPiF35CV"
Content-Disposition: inline

--ISKrrfpKsPiF35CV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks.
-J.

[[yocto] [PATCH 0/1][meta-selinux][V2] refpolicy: make proftpd be able to w=
ork] On 14.02.14 (Fri 14:10) rongqing.li@windriver.com wrote:

> From: Roy Li <rongqing.li@windriver.com>
>=20
> The following changes since commit a6079a43719e79e12a57e609923a0cccdba069=
16:
>=20
>   refpolicy: fix real path for su.shadow (2014-02-13 10:52:07 -0500)
>=20
> are available in the git repository at:
>=20
>   git://git.pokylinux.org/poky-contrib roy/proftpd-1
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Droy/proftpd-1
>=20
> Roy Li (1):
>   refpolicy: make proftpd be able to work
>=20
>  .../ftp-add-ftpd_t-to-mlsfilewrite.patch           |   39 ++++++++++++++=
++++++
>  .../refpolicy/refpolicy_2.20130424.inc             |    1 +
>  2 files changed, 40 insertions(+)
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/ftp-a=
dd-ftpd_t-to-mlsfilewrite.patch
>=20
--=20
-Joe MacDonald.
:wq

--ISKrrfpKsPiF35CV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlM9sPgACgkQwFvcllog0XzHYgCeOYhO1WimEmeunzJ4cvbR73QB
xPYAoKr4yOeG1f3kr1B9iw3uUTCksfVu
=0fvR
-----END PGP SIGNATURE-----

--ISKrrfpKsPiF35CV--
