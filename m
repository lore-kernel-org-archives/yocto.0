Return-Path: <joe@deserted.net>
Received: from mail-qa0-f53.google.com (mail-qa0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F052E0173C
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 07:22:11 -0700 (PDT)
Received: by mail-qa0-f53.google.com with SMTP id k15so867569qaq.5
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 07:22:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=3fKDGN17NE0itgILjXDa/W0E0ZvCtnO5blmNQYkv+tQ=;
	b=EB+uR3P0vQJ8chiUBkE4N7zmgOo3MQcwmHp9fahsh4rx+N6aQQkcyt5sruW72FK5Jy
	JNFGY9QgfLWxh8x92ElDzXe9KKYv4Ace8oPVNbpJKAXkcAQllMeaGfdVvvGntGAWjMy7
	R71qUGFVIh8HKHUa3Vp6Cwc5uMf5NyBugS7yZw/Egk74D3Wn3PrG0qTXiqsXSq70KGyo
	jo0INlE7J7ne6Mnd7laqczj+i/g41TJ/GJh4ztQ3VSGjf4InLYn4bFfoJMK6zoxjV99k
	EZvcMGON/xpcfUtc+RfqbDZOlR2ygVV2twXqLrNgrard6dlSkOMTmk73A+CCQQKfPQsa
	psaQ==
X-Gm-Message-State: ALoCoQnPVbwCMUvzE+74L7M2Wif1zdZLvHbwHP5G5u0oHBv7oJScrs76RSwkBjuShwVFIbIoA2Nt
X-Received: by 10.224.167.16 with SMTP id o16mr8268905qay.58.1383142931304;
	Wed, 30 Oct 2013 07:22:11 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id e7sm56720705qag.7.2013.10.30.07.22.10
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 30 Oct 2013 07:22:10 -0700 (PDT)
Date: Wed, 30 Oct 2013 10:22:08 -0400
From: Joe MacDonald <joe@deserted.net>
To: Philip Tricca <flihp@twobit.us>
Message-ID: <20131030142207.GE3716@deserted.net>
References: <1383095496-6487-1-git-send-email-flihp@twobit.us>
	<1383095496-6487-2-git-send-email-flihp@twobit.us>
MIME-Version: 1.0
In-Reply-To: <1383095496-6487-2-git-send-email-flihp@twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 1/4] Move common POLICY_* variables to refpolicy_common.inc
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
X-List-Received-Date: Wed, 30 Oct 2013 14:22:13 -0000
X-Groupsio-MsgNum: 16811
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="k3qmt+ucFURmlhDS"
Content-Disposition: inline

--k3qmt+ucFURmlhDS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[yocto] [meta-selinux][PATCH 1/4] Move common POLICY_* variables to refpol=
icy_common.inc] On 13.10.30 (Wed 01:11) Philip Tricca wrote:

> Use default assignment to allow variables to be overriden by recipes
> that include refpolicy_common.inc
>=20
> Signed-off-by: Philip Tricca <flihp@twobit.us>
> ---
>  recipes-security/refpolicy/refpolicy_common.inc |   12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-se=
curity/refpolicy/refpolicy_common.inc
> index 0ca0b9d..65d679b 100644
> --- a/recipes-security/refpolicy/refpolicy_common.inc
> +++ b/recipes-security/refpolicy/refpolicy_common.inc
> @@ -24,6 +24,18 @@ inherit autotools pythonnative
> =20
>  PARALLEL_MAKE =3D ""
> =20
> +POLICY_NAME ?=3D "${POLICY_TYPE}"
> +POLICY_DISTRO ?=3D "redhat"
> +POLICY_UBAC ?=3D "n"
> +POLICY_UNK_PERMS ?=3D "allow"
> +POLICY_DIRECT_INITRC ?=3D "n"
> +POLICY_MONOLITHIC ?=3D "n"
> +POLICY_CUSTOM_BUILDOPT ?=3D ""
> +POLICY_QUIET ?=3D "y"
> +POLICY_MLS_SENS =3D "16"
> +POLICY_MLS_CATS =3D "1024"
> +POLICY_MCS_CATS =3D "1024"

Any reason not to make these last three soft assignments as well?
They're unlikely to change and putting them here makes sense, but I can
also imagine someone wanting to use this as a base for creating a
simplified policy.

-J.

> +
>  EXTRA_OEMAKE +=3D "NAME=3D${POLICY_NAME} \
>  	TYPE=3D${POLICY_TYPE} \
>  	DISTRO=3D${POLICY_DISTRO} \
--=20
-Joe MacDonald.
:wq

--k3qmt+ucFURmlhDS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlJxFg8ACgkQwFvcllog0Xz5XACfcSnNWtUn5l9bH+oLOQxDUlWg
ldgAn1QX2X2Z3OY3dYg/xUYZmVLlvIeN
=bFCU
-----END PGP SIGNATURE-----

--k3qmt+ucFURmlhDS--
