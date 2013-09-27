Return-Path: <joe@deserted.net>
Received: from mail-we0-f181.google.com (mail-we0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 675F5E015BA
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 10:51:35 -0700 (PDT)
Received: by mail-we0-f181.google.com with SMTP id p61so2996817wes.40
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 10:51:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=DcAs8L0Htgs3/Ak99mgDUGX3xN1WxM6vvOE1oD5vhoQ=;
	b=VYnDLErF/UEWvaOVt+/o7pcCCeIIXSGcNxY1Ljzoo2oGS0882KM30JyqCtOejqB9m4
	PVulH93WqhTkkoXYzcg6H0rJH33TbcpRoiHBkcajyQxBGZ4L/FKU6Eh+zmzybx68sdXo
	3aBmJP+ECJseowiaPWDfTy3DRuLNs/Nhn+teQd9lSmqKpomIhqMuMlwlMzO6OV7qorC0
	PNQBAr72P3wQQVO5UZzB3wsWX50W18nN/44IFfCanBdrHIxhcG+NE3wyiqyLaSyO9btB
	OwpxjGo+kiUpxeafyWD6kEuYcBtrah0y3eyVLPtbdpjNRrBtJVwBrhsYHaozbuaTrhzg
	CdCw==
X-Gm-Message-State: ALoCoQnWdGHqWwYuNcb79RWitbonuZWuqHAcuZHE9cO0Sox8Y7bxpbA7LExoapHmvLXqsyjZUwmh
X-Received: by 10.180.107.99 with SMTP id hb3mr3668874wib.34.1380304294592;
	Fri, 27 Sep 2013 10:51:34 -0700 (PDT)
Received: from deserted.net ([128.224.252.2]) by mx.google.com with ESMTPSA id
	ey4sm16243441wic.11.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 27 Sep 2013 10:51:33 -0700 (PDT)
Date: Fri, 27 Sep 2013 13:51:29 -0400
From: Joe MacDonald <joe@deserted.net>
To: Joe Slater <jslater@windriver.com>
Message-ID: <20130927175126.GA7238@deserted.net>
References: <1378489444-22731-1-git-send-email-jslater@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1378489444-22731-1-git-send-email-jslater@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org, joe.slater@windriver.com
Subject: Re: [meta-selinux][PATCH 1/1] openssh: add PACKAGECONFIG data regarding audit
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
X-List-Received-Date: Fri, 27 Sep 2013 17:51:36 -0000
X-Groupsio-MsgNum: 16270
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="opJtzjQTFsWo+cga"
Content-Disposition: inline

--opJtzjQTFsWo+cga
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks.

-J.

[[yocto] [meta-selinux][PATCH 1/1] openssh: add PACKAGECONFIG data regardin=
g audit] On 13.09.06 (Fri 10:44) Joe Slater wrote:

> Define audit related parameters, but do not enable
> audit support by default.
>=20
> Signed-off-by: Joe Slater <jslater@windriver.com>
> ---
>  .../openssh/openssh_6.2p2.bbappend                 |   10 +++++++++-
>  1 files changed, 9 insertions(+), 1 deletions(-)
>=20
> diff --git a/recipes-connectivity/openssh/openssh_6.2p2.bbappend b/recipe=
s-connectivity/openssh/openssh_6.2p2.bbappend
> index 43d459c..1e919b1 100644
> --- a/recipes-connectivity/openssh/openssh_6.2p2.bbappend
> +++ b/recipes-connectivity/openssh/openssh_6.2p2.bbappend
> @@ -1,5 +1,13 @@
> -PR .=3D ".4"
> +PR .=3D ".selinux4"
> =20
>  inherit with-selinux
> =20
>  FILESEXTRAPATHS_prepend :=3D "${@target_selinux(d, '${THISDIR}/files:')}"
> +
> +# There is no distro feature just for audit.  If we want it,
> +# uncomment the following.
> +#
> +#PACKAGECONFIG +=3D "${@target_selinux(d, 'audit')}"
> +
> +PACKAGECONFIG[audit] =3D "--with-audit=3Dlinux,--without-audit,audit,"
> +
--=20
-Joe MacDonald.
:wq

--opJtzjQTFsWo+cga
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlJFxZcACgkQwFvcllog0XxtWgCgh+jY0BPB36ERkS1Itv9RHN6C
4KIAoJ14YZsZWT6LSNADxK9SL7U7y7sl
=hrTc
-----END PGP SIGNATURE-----

--opJtzjQTFsWo+cga--
