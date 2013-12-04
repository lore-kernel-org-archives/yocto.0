Return-Path: <joe@deserted.net>
Received: from mail-ee0-f52.google.com (mail-ee0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69012E00779
	for <yocto@yoctoproject.org>; Wed,  4 Dec 2013 07:40:57 -0800 (PST)
Received: by mail-ee0-f52.google.com with SMTP id d17so2335487eek.11
	for <yocto@yoctoproject.org>; Wed, 04 Dec 2013 07:40:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=bdUjsneXeuZpqVx4EML5RervpnQGPRF/+85E6Wf2Ew4=;
	b=Afl1rcT2J+jidpg0jmeiefLgfZ5bJlrb723iv4Za2uCu/7SJFBbsO72Y0iA3RsWzqT
	8oGsCal/Ua0KZclwtlDsVm+n0SqJfpmpQt4m5UzpMvnlW+7cbateeRc2FtrfDSOdpfEG
	pbmRT9S3AfJOSVx5r34I2r2bCad5lJi4DjOTzRbVeJE3Mh7PDRQQi5i+p3rhE2vUNEnP
	lzbZ3AmOU0oNLgAGo/5HRyyiRaEhb5T9rCXfvntVYuFt4CkIOHGIAxESwZVnCTgp2HjW
	FUM3vl99nb7o6WMBthbs3uiEJJAE1hbBbQMISRV1TXeizmjJ8Sj5JoWVG6vBDZph/ZH7
	zVrg==
X-Gm-Message-State: ALoCoQkqWBizc/6Vxf+JQ+xxLFF9PgXm7HrMupry0TrXjhbkyoZuy3ZstWzqtoszgOSa/VCgUHBK
X-Received: by 10.14.202.137 with SMTP id d9mr48824289eeo.23.1386171656308;
	Wed, 04 Dec 2013 07:40:56 -0800 (PST)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id a45sm95511776eem.6.2013.12.04.07.40.54
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 04 Dec 2013 07:40:55 -0800 (PST)
Date: Wed, 4 Dec 2013 10:40:50 -0500
From: Joe MacDonald <joe@deserted.net>
To: Philip Tricca <flihp@twobit.us>
Message-ID: <20131204154049.GD5677@deserted.net>
References: <1384373153-17622-1-git-send-email-flihp@twobit.us>
MIME-Version: 1.0
In-Reply-To: <1384373153-17622-1-git-send-email-flihp@twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][RFC v2] refpolicy: Add generic refpolicy recipe and make policy type configurable.
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
X-List-Received-Date: Wed, 04 Dec 2013 15:40:58 -0000
X-Groupsio-MsgNum: 17429
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="hoZxPH4CaxYzWscb"
Content-Disposition: inline

--hoZxPH4CaxYzWscb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey Phil,

[[meta-selinux][RFC v2] refpolicy: Add generic refpolicy recipe and make po=
licy type configurable.] On 13.11.13 (Wed 20:05) Philip Tricca wrote:

> This is a fix up for my previous RFC. I've cleaned up an error with some \
> variable use. The intent remains the same:
>=20
> This RFC is a significant departure from the way the policy packages are
> currently set up. The noteworthy differences are:
> 1) the POLICY_TYPE variable can be set as configuration outside the polic=
y recipe
> 2) a single refpolicy recipe can be used to build all 3 policy types
> 3) DEFAULT_POLICY from selinux-config has been changed to be the same POL=
ICY_TYPE variable as the policy
> 4) refpolicy depends on the config and sets the POLICY_TYPE accordingly
>=20
> This approach was taken to allow the use of a policy type beyond the defa=
ult
>  MLS. I've left the other refpolicy-* recipes in tact but if this approac=
h is
> acceptable they could be removed if we're willing to accept the limitation
> that only one policy may be installed on a given image. If this limitation
> isn't acceptable then they can be left as is.
>=20
> After thinking about this a bit I've realized that the same effect can li=
kely
> be achieved using the virtual provider mechanism. If this approach would =
be
> preferred I'm happy to whip up a prototype.
>=20
> Comments and input would be appreciated.

I've been playing with this for a bit and I quite like both the idea.
I'd like to see this taken to the logical conclusion you mention above,
hit all the policy recipes.  Meaning I think it makes the most sense to
actually approach this as a virtual provider problem.  If you're still
willing to put together a prototype for this, I'm able to take a look at
it in pretty short order.

-J.

>=20
> Regards,
> - Philip
>=20
> Signed-off-by: Philip Tricca <flihp@twobit.us>
> ---
>  .../packagegroups/packagegroup-selinux-minimal.bb      |    3 +--
>  recipes-security/refpolicy/refpolicy_2.20130424.bb     |   16 ++++++++++=
++++++
>  recipes-security/selinux/selinux-config_0.1.bb         |    4 ++--
>  3 files changed, 19 insertions(+), 4 deletions(-)
>  create mode 100644 recipes-security/refpolicy/refpolicy_2.20130424.bb
>=20
> diff --git a/recipes-security/packagegroups/packagegroup-selinux-minimal.=
bb b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
> index 072320d..af29da1 100644
> --- a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
> +++ b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
> @@ -13,6 +13,5 @@ ALLOW_EMPTY_${PN} =3D "1"
>  RDEPENDS_${PN} =3D "\
>  	policycoreutils-semodule \
>  	policycoreutils-sestatus \
> -	selinux-config \
> -	refpolicy-mls \
> +	refpolicy \
>  "
> diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.bb b/recipes=
-security/refpolicy/refpolicy_2.20130424.bb
> new file mode 100644
> index 0000000..f1fa2f8
> --- /dev/null
> +++ b/recipes-security/refpolicy/refpolicy_2.20130424.bb
> @@ -0,0 +1,16 @@
> +SUMMARY =3D "The SELinux reference policy."
> +DESCRIPTION =3D "\
> +This is the reference policy for the SELinux mandatory access control \
> +system. There are 3 supported policy types: standard, MCS and MLS. The \
> +standard policy is the most simple of the three providing the standard \
> +type enforcement policy. The MCS policy adds an additional element to th=
e \
> +SELinux label called a category. Finally the MLS variant allows giving d=
ata \
> +labels such as \"Top Secret\" and preventing such data from leaking to \
> +processes or files with lower classification. \
> +"
> +
> +PR =3D "r0"
> +POLICY_TYPE ??=3D "mls"
> +RDEPENDS_${PN} =3D "selinux-config"
> +
> +include refpolicy_${PV}.inc
> diff --git a/recipes-security/selinux/selinux-config_0.1.bb b/recipes-sec=
urity/selinux/selinux-config_0.1.bb
> index 27d9995..066581e 100644
> --- a/recipes-security/selinux/selinux-config_0.1.bb
> +++ b/recipes-security/selinux/selinux-config_0.1.bb
> @@ -1,4 +1,4 @@
> -DEFAULT_POLICY =3D "mls"
> +POLICY_TYPE ??=3D "mls"
> =20
>  SUMMARY =3D "SELinux configuration"
>  DESCRIPTION =3D "\
> @@ -45,7 +45,7 @@ SELINUX=3Denforcing
>  # SELINUXTYPE=3D can take one of these two values:
>  #     standard - Standard Security protection.
>  #     mls - Multi Level Security protection.
> -SELINUXTYPE=3D${DEFAULT_POLICY}
> +SELINUXTYPE=3D${POLICY_TYPE}
>  " > ${WORKDIR}/config
>  	install -d ${D}/${sysconfdir}/selinux
>  	install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/
--=20
-Joe MacDonald.
:wq

--hoZxPH4CaxYzWscb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlKfTQEACgkQwFvcllog0Xx8igCeLV7MAClfyRB5SXmWkL+wLlXl
uVsAnAiMp0HZ6S+/eGiinEzFwwzhrfUe
=pS9v
-----END PGP SIGNATURE-----

--hoZxPH4CaxYzWscb--
