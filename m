Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3189.1577197429273935900
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Dec 2019 06:23:49 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: deserted.net, ip: 140.211.169.56, mailfrom: joe@deserted.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1436E01117; Tue, 24 Dec 2019 06:23:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SUBJ_OBFU_PUNCT_FEW,SUBJ_OBFU_PUNCT_MANY autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [68.232.141.98 listed in list.dnswl.org]
	*  0.7 SUBJ_OBFU_PUNCT_FEW Possible punctuation-obfuscated Subject: header
	*  0.0 SUBJ_OBFU_PUNCT_MANY Punctuation-obfuscated Subject: header
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www; Tue, 24 Dec 2019 06:23:47 PST
Received: from esa2.mentor.iphmx.com (esa2.mentor.iphmx.com [68.232.141.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83A95E00A0A
	for <yocto@yoctoproject.org>; Tue, 24 Dec 2019 06:23:47 -0800 (PST)
IronPort-SDR: UAePDfoRDFp4iOcQpwTumXnRF89kBN/m+WbEXUQ/xjHbLE3t7YYr5+P+1QEZ+Og1zYK+0RP4bH
 kKSTS4xmCp9PYol1vrwv4MAkCgWBe/5SIKbDYmFza6P+CSQS1SBXKfl60wqtAftGruKOvouYCj
 gmoTdaizzJuKk6p1n4d0zJX/csvpT4gtPJMe3Gb/I7kZBVjv3E3ypTfaCOgha/fCZf2qd8RSq4
 rp3gqaUDhw1uCkJj9uWln+XOjNQSekTQdEyPJblMhAthbwXPFMtCl9NdTWXBLjLRKgnnbX25LP
 BUQ=
X-IronPort-AV: E=Sophos;i="5.69,351,1571731200"; 
   d="asc'?scan'208";a="44328805"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
  by esa2.mentor.iphmx.com with ESMTP; 24 Dec 2019 06:22:44 -0800
IronPort-SDR: iX+4auZM0WW9/GXjdWabaDqq6788AdJ7+XIXB6UL9Nln1+ktWHmfJpwoP9dJ0C+d59Rt8rLLLh
 etLpXEGYx4dC6qQcmPdOfFSVMQn9+eGY1EyTJJ10E9zpzsuqDsWoZ1mi+c7HF0E0EIezyUlbO+
 28jw1WOwze+HJveY5u6GaMof3K5JwNMr9JM9qtieoE9IQA6iZMm/7zBRwhv1sTRzY0hM/qew+N
 yMPwDivehr3V2y0cNyTHA4pEI89dxbu+Bu+Sx39htyI/iWOyd/kV7LkgMTfRL8/rFn/uQFDtgF
 X1A=
Date: Tue, 24 Dec 2019 09:22:40 -0500
From: "Joe MacDonald" <joe@deserted.net>
To: Yi Zhao <yi.zhao@windriver.com>
CC: <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCH 4/6] selinux-initsh.inc: install selinux-init.sh and selinux-labeldev.sh when using systemd
Message-ID: <20191224142238.GA39081@deserted.net>
References: <20191223082152.7706-1-yi.zhao@windriver.com>
 <20191223082152.7706-4-yi.zhao@windriver.com>
MIME-Version: 1.0
In-Reply-To: <20191223082152.7706-4-yi.zhao@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Groupsio-MsgNum: 47816
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cNdxnHkX5QqsyA0e"
Content-Disposition: inline

--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Yi,

I've merged the others in this series, can you elaborate a bit on how
this ensures we don't have a problem coming back that 5fd3c5b71 was
intended to address?

Thanks,
-J.

[[meta-selinux][PATCH 4/6] selinux-initsh.inc: install selinux-init.sh and =
selinux-labeldev.sh when using systemd] On 19.12.23 (Mon 16:21) Yi Zhao wro=
te:

> The commit 5fd3c5b71edb99659aeb5cb5903088d84517382e introduced an issue
> that selinux-init.sh and selinux-labeldev.sh are not installed when
> using systemd which will cause the selinux-ini.service and
> selinux-labeldev.service fail to startup. Move the do_install codes from
> selinux-autorelabel to selinux-initsh.inc to make sure install these
> scripts when using systemd.
>=20
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>  recipes-security/selinux/selinux-autorelabel_0.1.bb | 3 ---
>  recipes-security/selinux/selinux-initsh.inc         | 9 +++++++--
>  2 files changed, 7 insertions(+), 5 deletions(-)
>=20
> diff --git a/recipes-security/selinux/selinux-autorelabel_0.1.bb b/recipe=
s-security/selinux/selinux-autorelabel_0.1.bb
> index 7e7d08c..b898c3b 100644
> --- a/recipes-security/selinux/selinux-autorelabel_0.1.bb
> +++ b/recipes-security/selinux/selinux-autorelabel_0.1.bb
> @@ -21,9 +21,6 @@ require selinux-initsh.inc
> =20
>  do_install_append() {
>  	if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', =
d)}; then
> -		install -d ${D}${bindir}
> -		install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh ${D}${bindir}
> -		sed -i -e '/.*HERE$/d' ${D}${bindir}/${SELINUX_SCRIPT_SRC}.sh
>  		echo "# first boot relabelling" > ${D}/.autorelabel
>  	fi
>  }
> diff --git a/recipes-security/selinux/selinux-initsh.inc b/recipes-securi=
ty/selinux/selinux-initsh.inc
> index 6084762..0a6cf4b 100644
> --- a/recipes-security/selinux/selinux-initsh.inc
> +++ b/recipes-security/selinux/selinux-initsh.inc
> @@ -27,8 +27,13 @@ do_install () {
>  	       -e '/.*HERE$/d' -e '/.*Contents.*sysvinit/d' \
>  	       ${D}${sysconfdir}/init.d/${SELINUX_SCRIPT_DST}
> =20
> -	install -d ${D}${systemd_unitdir}/system
> -	install -m 0644 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.service ${D}${systemd_=
unitdir}/system
> +    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false=
', d)}; then
> +        install -d ${D}${systemd_unitdir}/system
> +        install -m 0644 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.service ${D}${s=
ystemd_unitdir}/system
> +        install -d ${D}${bindir}
> +        install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh ${D}${bindir}
> +        sed -i -e '/.*HERE$/d' ${D}${bindir}/${SELINUX_SCRIPT_SRC}.sh
> +    fi
>  }
> =20
>  sysroot_stage_all_append () {
> --=20
> 2.17.1
>=20

--=20
-Joe MacDonald.
:wq

--cNdxnHkX5QqsyA0e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCXgIfIgAKCRDAW9yWWiDR
fKlxAJ478Gzt05fGKSyY4PimbHjatng2AACgrN/VPV/aftZGPOVDC3Wo6cZcTfQ=
=dbvW
-----END PGP SIGNATURE-----

--cNdxnHkX5QqsyA0e--
