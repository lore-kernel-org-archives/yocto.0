Return-Path: <joe@deserted.net>
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C480BE00BAF
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 16:58:04 -0700 (PDT)
Received: by mail-ie0-f177.google.com with SMTP id rl12so3144152iec.36
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 16:58:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=OWuEp+VsTUaJ4eGtLyb1yKMQln2chPNr9NdsKwKK0Qo=;
	b=Vy9Uvb44B9Al5YLpdfMkP4AiBrGlvl91ab6mg6xWB/A/RIa+pISZ++JnVORIe4W3Yi
	atahqIAyPpapsbTL9JUpDH+wjRA3fIUHpQ5lWbnxZsmj0lVGANU071SH74Z95acA+Qbv
	FmNGwLWlXGYt/1SDFBdXWyFtuwHoOapiV6ef/7b5K2bqM1wAq3XXoTB2/REh4zZetvq7
	t8AVlsiJxozDciNNR/CZ4DWvZlxH9VtCDwLjoBwtU8onMtGEnEuo0z1uyvf3On1I+Z/S
	X3SO3/83qvRA4xVDDqD7moD5L32/S8tHSGPuLdgOeSYPzBDT3dJBf1fx2qMUMtY6DJri
	ud/g==
X-Gm-Message-State: ALoCoQkCnrITxriiRTOS5zFuUbJKtiT00+z4sBNJrxQ2ZN1IHc5iuK8+DbrTJ8cZaO/Y4qoVO+h0
X-Received: by 10.50.119.132 with SMTP id ku4mr1699876igb.35.1398383884102;
	Thu, 24 Apr 2014 16:58:04 -0700 (PDT)
Received: from deserted.net (24-246-4-250.cable.teksavvy.com. [24.246.4.250])
	by mx.google.com with ESMTPSA id h7sm3236102igy.2.2014.04.24.16.58.02
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 24 Apr 2014 16:58:03 -0700 (PDT)
Date: Thu, 24 Apr 2014 19:58:00 -0400
From: Joe MacDonald <joe@deserted.net>
To: Kai Kang <kai.kang@windriver.com>
Message-ID: <20140424235758.GC10115@deserted.net>
References: <1398328477-20192-1-git-send-email-kai.kang@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1398328477-20192-1-git-send-email-kai.kang@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] audit: Enable ARM System Call Audit in user space.
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
X-List-Received-Date: Thu, 24 Apr 2014 23:58:04 -0000
X-Groupsio-MsgNum: 19205
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="f0KYrhQ4vYSV2aJu"
Content-Disposition: inline

--f0KYrhQ4vYSV2aJu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks.
-J.

[[yocto] [meta-selinux][PATCH] audit: Enable ARM System Call Audit in user =
space.] On 14.04.24 (Thu 16:34) Kai Kang wrote:

> From: Han Chao <chan@windriver.com>
>=20
> Audit System Call needs kernel and user space support.
>=20
> In user space it needs system call table for ARM. It also needs a
> configure option --with-armeb for build audit. Audit system call also
> needs enable kernel config CONFIG_AUDITSYSCALL.
>=20
> Signed-off-by: Han Chao <chan@windriver.com>
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>  .../audit/add-system-call-table-for-ARM.patch      | 46 ++++++++++++++++=
++++++
>  recipes-security/audit/audit_2.3.2.bb              |  2 +
>  2 files changed, 48 insertions(+)
>  create mode 100644 recipes-security/audit/audit/add-system-call-table-fo=
r-ARM.patch
>=20
> diff --git a/recipes-security/audit/audit/add-system-call-table-for-ARM.p=
atch b/recipes-security/audit/audit/add-system-call-table-for-ARM.patch
> new file mode 100644
> index 0000000..ad94d11
> --- /dev/null
> +++ b/recipes-security/audit/audit/add-system-call-table-for-ARM.patch
> @@ -0,0 +1,46 @@
> +From 52ff74be2f01182ed9d4fcc3da059512fad63d72 Mon Sep 17 00:00:00 2001
> +From: Han Chao <chan@windriver.com>
> +Date: Thu, 27 Feb 2014 14:58:57 +0800
> +Subject: [PATCH] add system call table for ARM.
> +
> +This change enable audit system call on ARM.
> +Add arm System call table on machinetabs.h.
> +Audit system call need enable kernel config CONFIG_AUDITSYSCALL.
> +
> +Signed-off-by: Han Chao <chan@windriver.com>
> +---
> + lib/machinetabs.h |   11 ++++++-----
> + 1 file changed, 6 insertions(+), 5 deletions(-)
> +
> +diff --git a/lib/machinetabs.h b/lib/machinetabs.h
> +index ec2d033..1c2e284 100644
> +--- a/lib/machinetabs.h
> ++++ b/lib/machinetabs.h
> +@@ -1,10 +1,11 @@
> +-/* This is a generated file, see Makefile.am for its inputs. */
> +-static const char machine_strings[] =3D "i386\0i486\0i586\0i686\0ia64\0=
ppc\0ppc64\0s390\0s390x\0x86_64";
> ++/* Such is aways generated file, see Makefile.am for its inputs.
> ++ * But this version is not generated file, which is for ARM. */
> ++static const char machine_strings[] =3D "armeb\0armv5tejl\0armv5tel\0ar=
mv6l\0armv7l";
> + static const unsigned machine_s2i_s[] =3D {
> +-	0,5,10,15,20,25,29,35,40,46,
> ++	0,6,16,25,32,
> + };
> + static const int machine_s2i_i[] =3D {
> +-	0,0,0,0,2,4,3,6,5,1,
> ++	8,8,8,8,8,
> + };
> + static int machine_s2i(const char *s, int *value) {
> + 	size_t len, i;
> +@@ -19,7 +20,7 @@ static int machine_s2i(const char *s, int *value) {
> + 	}
> + }
> + static const unsigned machine_i2s_direct[] =3D {
> +-	0,46,20,29,25,40,35,
> ++    39,85,59,68,64,
> + };
> + static const char *machine_i2s(int v) {
> + 	return i2s_direct__(machine_strings, machine_i2s_direct, 0, 6, v);
> +--=20
> +1.7.9.5
> +
> diff --git a/recipes-security/audit/audit_2.3.2.bb b/recipes-security/aud=
it/audit_2.3.2.bb
> index ae6556f..4baf7a0 100644
> --- a/recipes-security/audit/audit_2.3.2.bb
> +++ b/recipes-security/audit/audit_2.3.2.bb
> @@ -18,6 +18,7 @@ SRC_URI =3D "http://people.redhat.com/sgrubb/audit/audi=
t-${PV}.tar.gz \
>  	   file://auditd.service \
>  	   file://audit-volatile.conf \
>  "
> +SRC_URI_append_arm =3D "file://add-system-call-table-for-ARM.patch"
> =20
>  inherit autotools pythonnative update-rc.d systemd
> =20
> @@ -41,6 +42,7 @@ EXTRA_OECONF +=3D "--without-prelude \
>  	--libdir=3D${base_libdir} \
>  	--sbindir=3D${base_sbindir} \
>  	"
> +EXTRA_OECONF_append_arm =3D " --with-armeb=3Dyes"
> =20
>  EXTRA_OEMAKE +=3D "PYLIBVER=3D'python${PYTHON_BASEVERSION}' \
>  	PYINC=3D'${STAGING_INCDIR}/$(PYLIBVER)' \
> --=20
> 1.8.4
>=20
--=20
-Joe MacDonald.
:wq

--f0KYrhQ4vYSV2aJu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlNZpQYACgkQwFvcllog0XzAlgCeO8V2KDdZ4R2kvliK1rbrb1cy
vz8An2q0aSlt4PWd2DkZ97LSi88CBKrD
=+kad
-----END PGP SIGNATURE-----

--f0KYrhQ4vYSV2aJu--
