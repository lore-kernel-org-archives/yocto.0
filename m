Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17A06E00894; Mon, 26 Jan 2015 18:45:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DA14E0083A
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 18:45:02 -0800 (PST)
Received: from svr-orw-fem-05.mgc.mentorg.com ([147.34.97.43])
	by relay1.mentorg.com with esmtp 
	id 1YFw9E-0000gN-Us from Joe_MacDonald@mentor.com ;
	Mon, 26 Jan 2015 18:45:00 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-05.mgc.mentorg.com
	(147.34.97.43) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 26 Jan 2015 18:45:00 -0800
Received: by burninator (Postfix, from userid 1000)	id 91C885810A4; Mon, 26
	Jan 2015 21:44:56 -0500 (EST)
Date: Mon, 26 Jan 2015 21:44:56 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: <jackie.huang@windriver.com>
Message-ID: <20150127024456.GJ4791@mentor.com>
References: <1421213403-27878-1-git-send-email-jackie.huang@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1421213403-27878-1-git-send-email-jackie.huang@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] audit-systemd: allow manual stop as sysvinit
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
X-List-Received-Date: Tue, 27 Jan 2015 02:45:07 -0000
X-Groupsio-MsgNum: 23179
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="yiup30KVCQiHUZFC"
Content-Disposition: inline

--yiup30KVCQiHUZFC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks, Jackie.

-J.

[[yocto] [meta-selinux][PATCH] audit-systemd: allow manual stop as sysvinit=
] On 15.01.14 (Wed 13:30) jackie.huang@windriver.com wrote:

> From: Jackie Huang <jackie.huang@windriver.com>
>=20
> The audit service should be manually stopped with systemd.
>=20
> Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> ---
>  recipes-security/audit/audit/auditd.service | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/recipes-security/audit/audit/auditd.service b/recipes-securi=
ty/audit/audit/auditd.service
> index adf4d3b..ebc0798 100644
> --- a/recipes-security/audit/audit/auditd.service
> +++ b/recipes-security/audit/audit/auditd.service
> @@ -5,7 +5,6 @@ After=3Dlocal-fs.target
>  Conflicts=3Dshutdown.target
>  Before=3Dsysinit.target shutdown.target
>  After=3Dsystemd-tmpfiles-setup.service
> -RefuseManualStop=3Dyes
> =20
>  [Service]
>  ExecStart=3D/sbin/auditd -n
> --=20
> 1.9.1
>=20
--=20
-Joe MacDonald.
:wq

--yiup30KVCQiHUZFC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUxvulAAoJEEn8ffcsOfaW/uUH/iNbc1sy1pVN/NeBKsgVPtst
5LgBPtaVFCFzoCvXj1B3eR9Nq/oCsBvwwk09m/ta6FWuTycaj0XpniEy9hhBwhHZ
m1U0eo/tz2G5kJ2fysho1J7TBpmef+/xlPZpgBxqVkvmeHx/5YJODNNEZK4vPqBU
HDWCz/J4N01Di0SX737v1yGMuKdqIuXg5hzASF/r61xd0VyKx4lJRB2FTkC9V7wC
+cg0pKg5OPKDPW7VmZbMGI15aS2JV6FWC/EuAH40NpherR1pBBQeTDceSf0J8NOx
D47s3ibn3eLtw/dgKYhWFIMPP6WNx//qfSPhKlw3HyTO4WF1rZwQ609d2jVUai4=
=tH2J
-----END PGP SIGNATURE-----

--yiup30KVCQiHUZFC--
