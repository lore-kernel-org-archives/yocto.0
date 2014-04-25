Return-Path: <joe@deserted.net>
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06F41E00BAA
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 17:02:35 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id y20so1201847ier.26
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 17:02:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=iB7jq0bL8BpYLnEYsno37ezPH2WTw5+t1DTs0xixd68=;
	b=PaeJ04MGkfxurJXhwNWlPdYJphBzS00peE7b7YJnUZebOLSb0wUtLGKjSslSztU1JO
	cyKZz+1+p5QIJolTCZgMkfojTev+xCm07ezdiDjMUt9y2LAU8nQwAibL8JwzowNfx2Qa
	DjEs10eZ1i/i0B2SFtWD+cP9ix22Tp7w//SLH9v8dMs6vH0h6frJreTwWeTLLI5HG5V6
	n9pBa3EAVYEi8WJ46puaUMXliG/UQESJL39MJSKpqMZhjU8DkT+M77/ncsZIgwQa7dsv
	HHDzClkKmzxbUFjQIK39hdM8A0+hynwV9SeWnsotX0HJgqMnT+C8sZW8huCgP1ZOZBRE
	eNAQ==
X-Gm-Message-State: ALoCoQldkaQGyvLN6fqxjn7xilEGEYAci8kn68YOY6J42/DNT7YdbXWn3aFWm1stU23ID2r9rhFB
X-Received: by 10.50.138.132 with SMTP id qq4mr1914788igb.8.1398384155244;
	Thu, 24 Apr 2014 17:02:35 -0700 (PDT)
Received: from deserted.net (24-246-4-250.cable.teksavvy.com. [24.246.4.250])
	by mx.google.com with ESMTPSA id
	kw1sm3253253igb.4.2014.04.24.17.02.34 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 24 Apr 2014 17:02:34 -0700 (PDT)
Date: Thu, 24 Apr 2014 20:02:31 -0400
From: Joe MacDonald <joe@deserted.net>
To: wenzong.fan@windriver.com
Message-ID: <20140425000229.GD10115@deserted.net>
References: <cover.1398322678.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
In-Reply-To: <cover.1398322678.git.wenzong.fan@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 0/1] refpolicy: add setrans.conf for mcs/mls policy
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
X-List-Received-Date: Fri, 25 Apr 2014 00:02:40 -0000
X-Groupsio-MsgNum: 19206
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="/3yNEOqWowh/8j+e"
Content-Disposition: inline

--/3yNEOqWowh/8j+e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks.
-J.

[[yocto] [meta-selinux][PATCH 0/1] refpolicy: add setrans.conf for mcs/mls =
policy] On 14.04.24 (Thu 03:02) wenzong.fan@windriver.com wrote:

> From: Wenzong Fan <wenzong.fan@windriver.com>
>=20
> Add initial version for setrans.conf:
>     - setrans-mls.conf: copied from \
>       policycoreutils/mcstrans/share/examples/default/setrans.conf
>     - setrans-mcs.conf: copied from radhat policy.
>    =20
> This fixes below issue:
>     $ chcat -L
>     IOError: No such file or directory: \
>       '/etc/selinux/$POLICY_NAME/setrans.conf'
>=20
> The following changes since commit 0362287928bc0a58b755488ebd74441c28eeee=
e2:
>=20
>   audit: Fix lack of a default audit.rules (2014-04-07 09:55:49 -0400)
>=20
> are available in the git repository at:
>=20
>   git://git.pokylinux.org/poky-contrib wenzong/setrans
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dwenzong/setrans
>=20
> Wenzong Fan (1):
>   refpolicy: add setrans.conf for mcs/mls policy
>=20
>  recipes-security/refpolicy/files/setrans-mcs.conf |   17 +++++++
>  recipes-security/refpolicy/files/setrans-mls.conf |   52 +++++++++++++++=
++++++
>  recipes-security/refpolicy/refpolicy_common.inc   |    8 ++++
>  3 files changed, 77 insertions(+)
>  create mode 100644 recipes-security/refpolicy/files/setrans-mcs.conf
>  create mode 100644 recipes-security/refpolicy/files/setrans-mls.conf
>=20
> --=20
> 1.7.9.5
>=20
--=20
-Joe MacDonald.
:wq

--/3yNEOqWowh/8j+e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlNZphQACgkQwFvcllog0XwXMwCfbu8TRFIBrPXr8RW6JU4njYcf
mlEAnRoJT/mp3GKiHUktcYlL+eeGjlLc
=+127
-----END PGP SIGNATURE-----

--/3yNEOqWowh/8j+e--
