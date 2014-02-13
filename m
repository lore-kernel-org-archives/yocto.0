Return-Path: <joe@deserted.net>
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86EF6E007AD
	for <yocto@yoctoproject.org>; Wed, 12 Feb 2014 16:54:53 -0800 (PST)
Received: by mail-ie0-f173.google.com with SMTP id y20so3402636ier.32
	for <yocto@yoctoproject.org>; Wed, 12 Feb 2014 16:54:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=I++S4sAOSEk0nMxS1n1Wk2dMdyzzbyIZWSJh2s0ZA/8=;
	b=NKORhMpoQexcK+d2nbiiAWyVeTENE3YpfEtEjtlf3LNP6HhdzXINZ832h65ZdsVgK+
	ExAF5TVL9wBCa0bac6s3Ng7UtobpvaxOBcylTM5w41pT3LVPOLFdG4ldLHNRt7vQlhUl
	VbhzvWdHC0upLO8GYX9pKgv1MAewtyfJmX4MSxDmqm70/YLc32HN262K25psODP5jNnI
	/DWnQeJCqzngex69rxp5oM6v7Jvi0Rjn94acsIkzTxav93XhL1pilOpknml4ZG406tks
	13hA2Xv+nVguMn0wrVX+K6RzETPNGJX0GnsDZQYHwpR0OJLxRcsEIOvRJCt5xsMptjhH
	pn4A==
X-Gm-Message-State: ALoCoQl/Ut+KLbnjsvX2F8ZqcGeqn/3tSe2ro+NS218sxy4JcOi+s92Vz8qiA8kptv3XySJfqu22
X-Received: by 10.43.49.1 with SMTP id uy1mr8967866icb.48.1392252892670;
	Wed, 12 Feb 2014 16:54:52 -0800 (PST)
Received: from deserted.net (24-246-4-250.cable.teksavvy.com. [24.246.4.250])
	by mx.google.com with ESMTPSA id
	r6sm2540994igg.10.2014.02.12.16.54.51 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 12 Feb 2014 16:54:51 -0800 (PST)
Date: Wed, 12 Feb 2014 19:54:49 -0500
From: Joe MacDonald <joe@deserted.net>
To: rongqing.li@windriver.com
Message-ID: <20140213005447.GD23405@deserted.net>
References: <cover.1391825983.git.rongqing.li@windriver.com>
	<03a4294a66655a6b604f537c2205179ff48d0f31.1391825983.git.rongqing.li@windriver.com>
MIME-Version: 1.0
In-Reply-To: <03a4294a66655a6b604f537c2205179ff48d0f31.1391825983.git.rongqing.li@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 1/1] refpolicy: fix ftpwho install dir
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
X-List-Received-Date: Thu, 13 Feb 2014 00:54:55 -0000
X-Groupsio-MsgNum: 18083
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="5oH/S/bF6lOfqCQb"
Content-Disposition: inline

--5oH/S/bF6lOfqCQb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks.
-J.

[[yocto] [meta-selinux][PATCH 1/1] refpolicy: fix ftpwho install dir] On 14=
=2E02.08 (Sat 10:34) rongqing.li@windriver.com wrote:

> From: Roy Li <rongqing.li@windriver.com>
>=20
> ftpwho is installed into /usr/bin, not /usr/sbin.
>=20
> Signed-off-by: Roy Li <rongqing.li@windriver.com>
> ---
>  .../refpolicy-2.20130424/poky-fc-ftpwho-dir.patch  |   27 ++++++++++++++=
++++++
>  .../refpolicy/refpolicy_2.20130424.inc             |    1 +
>  2 files changed, 28 insertions(+)
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-=
fc-ftpwho-dir.patch
>=20
> diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-ftpw=
ho-dir.patch b/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-ftpw=
ho-dir.patch
> new file mode 100644
> index 0000000..a7d434f
> --- /dev/null
> +++ b/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-ftpwho-dir.=
patch
> @@ -0,0 +1,27 @@
> +fix ftpwho install dir
> +
> +Upstream-Status: Pending
> +
> +ftpwho is installed into /usr/bin/, not /usr/sbin, so fix it
> +
> +Signed-off-by: Roy Li <rongqing.li@windriver.com>
> +---
> + policy/modules/contrib/ftp.fc |    2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/policy/modules/contrib/ftp.fc b/policy/modules/contrib/ftp.=
fc
> +index ddb75c1..26fec47 100644
> +--- a/policy/modules/contrib/ftp.fc
> ++++ b/policy/modules/contrib/ftp.fc
> +@@ -9,7 +9,7 @@
> +=20
> + /usr/kerberos/sbin/ftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
> +=20
> +-/usr/sbin/ftpwho	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
> ++/usr/bin/ftpwho	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
> + /usr/sbin/in\.ftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
> + /usr/sbin/muddleftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
> + /usr/sbin/proftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
> +--=20
> +1.7.10.4
> +
> diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipe=
s-security/refpolicy/refpolicy_2.20130424.inc
> index 4b618b2..7ecfdc1 100644
> --- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
> +++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
> @@ -29,6 +29,7 @@ SRC_URI +=3D "file://poky-fc-subs_dist.patch \
>              file://poky-fc-sysnetwork.patch \
>              file://poky-fc-udevd.patch \
>              file://poky-fc-rpm.patch \
> +            file://poky-fc-ftpwho-dir.patch \
>             "
> =20
>  # Specific policy for Poky
--=20
-Joe MacDonald.
:wq

--5oH/S/bF6lOfqCQb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlL8F9cACgkQwFvcllog0XyFdQCgociojDaD9CF7U945/0+GnF6N
qqAAn0hqyLgkCOLF86PWjb3xzZfdo78K
=0Hm8
-----END PGP SIGNATURE-----

--5oH/S/bF6lOfqCQb--
