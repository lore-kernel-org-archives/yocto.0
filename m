Return-Path: <joe@deserted.net>
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FBC2E01536
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 11:06:05 -0700 (PDT)
Received: by mail-we0-f179.google.com with SMTP id x55so2982347wes.24
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 11:06:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=/nYimE+BN2l0rhk+8MRdwJrtz3Q9Nv6/MHi77w6Ndz8=;
	b=L6Zb9+FomOYfRxxmUur/G02/Bbhi4rU6J0d8B5MeLFOyCd4hb2hHxFUu4gEYaBvlAD
	caLmhLWv43KdwKSk9qQxryGVCODZeNagCKS+JRQgC8NiLQ3HIx4N0MYoDBz2DS05FGMU
	FfT3Kfqex0eE4oVCPGb99d55gtVmCJa0zHWyrlYQhIngsuNX0qeUvOn+d3hHmiq3wxHA
	lHvoaLQTgOPW1vWgsc/Wj3lEbA/Fr/2uK3oMLew09vFSPNeefL9g2Xikv51AFBTZNmtK
	xolWQgetH7S1E8awjJFHE7jyF5IeZPaFAYT/PmUcjUktB+rimD3WaZ61BoB5vc+TB8yz
	W8zQ==
X-Gm-Message-State: ALoCoQlzHIDL8EIBdHIpSNUWLYl/GWxm0+17M7los3dbGWsUNF0gE8HYvHmIifK0/V6C9wJlzHAa
X-Received: by 10.180.83.101 with SMTP id p5mr3685324wiy.42.1380305164529;
	Fri, 27 Sep 2013 11:06:04 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id b13sm40844567wic.9.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 27 Sep 2013 11:06:03 -0700 (PDT)
Date: Fri, 27 Sep 2013 14:05:59 -0400
From: Joe MacDonald <joe@deserted.net>
To: Philip Tricca <flihp@twobit.us>
Message-ID: <20130927180557.GD7238@deserted.net>
References: <20130926204939.GA2107@longhaul.twobit.us>
MIME-Version: 1.0
In-Reply-To: <20130926204939.GA2107@longhaul.twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux] Check for the availability of 'secon' and 'setenforce' in the selinux-init.sh script.
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
X-List-Received-Date: Fri, 27 Sep 2013 18:06:09 -0000
X-Groupsio-MsgNum: 16273
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="1sNVjLsmu1MXqwQ/"
Content-Disposition: inline

--1sNVjLsmu1MXqwQ/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks.
-J.

[[yocto] [meta-selinux] Check for the availability of 'secon' and 'setenfor=
ce' in the selinux-init.sh script.] On 13.09.26 (Thu 20:49) Philip Tricca w=
rote:

> This is for consistency and to aid in debugging.
>=20
> Signed-off-by: Philip Tricca <flihp@twobit.us>
> ---
>  recipes-security/selinux/selinux-config/selinux-init.sh |    8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>=20
> diff --git a/recipes-security/selinux/selinux-config/selinux-init.sh b/re=
cipes-security/selinux/selinux-config/selinux-init.sh
> index 1cdc3dd..8f3efac 100644
> --- a/recipes-security/selinux/selinux-config/selinux-init.sh
> +++ b/recipes-security/selinux/selinux-config/selinux-init.sh
> @@ -6,8 +6,10 @@ CHCON=3D/usr/bin/chcon
>  MATCHPATHCON=3D/usr/sbin/matchpathcon
>  FIXFILES=3D/sbin/fixfiles
>  RESTORECON=3D/sbin/restorecon
> +SECON=3D/usr/bin/secon
> +SETENFORCE=3D/usr/sbin/setenforce
> =20
> -for i in ${CHCON} ${MATCHPATHCON} ${FIXFILES} ${RESTORECON} ; do
> +for i in ${CHCON} ${MATCHPATHCON} ${FIXFILES} ${RESTORECON} ${SECON} ${S=
ETENFORCE}; do
>  	test -x $i && continue
>  	echo "$i is missing in the system."
>  	echo "Please add \"selinux=3D0\" in the kernel command line to disable =
SELinux."
> @@ -51,12 +53,12 @@ fi
> =20
>  # If first booting, the security context type of init would be
>  # "kernel_t", and the whole file system should be relabeled.
> -if [ "`/usr/bin/secon -t --pid 1`" =3D "kernel_t" ]; then
> +if [ "`${SECON} -t --pid 1`" =3D "kernel_t" ]; then
>  	echo "Checking SELinux security contexts:"
>  	check_rootfs
>  	echo " * First booting, filesystem will be relabeled..."
>  	test -x /etc/init.d/auditd && /etc/init.d/auditd start
> -	/usr/sbin/setenforce 0
> +	${SETENFORCE} 0
>  	${RESTORECON} -R /
>  	${RESTORECON} /
>  	echo " * Relabel done, rebooting the system."
--=20
-Joe MacDonald.
:wq

--1sNVjLsmu1MXqwQ/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlJFyQUACgkQwFvcllog0XyZhQCeJcy0Wb4qZnFV7G3GhaR1Xlo2
I2EAn1D7lr7L1jTgFhST2cQ91VRc6mc5
=L450
-----END PGP SIGNATURE-----

--1sNVjLsmu1MXqwQ/--
