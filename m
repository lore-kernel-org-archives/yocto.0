Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B3BBE00BBF; Thu,  8 Jun 2017 18:30:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6702CE00B57
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 18:30:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v591UPAC007587
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 8 Jun 2017 18:30:25 -0700 (PDT)
Received: from pek-khao-d1 (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.294.0;
	Thu, 8 Jun 2017 18:30:24 -0700
Date: Fri, 9 Jun 2017 09:30:19 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <20170609013019.GC21118@pek-khao-d1>
References: <1496947514-11876-1-git-send-email-bruce.ashfield@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1496947514-11876-1-git-send-email-bruce.ashfield@windriver.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
X-Originating-IP: [147.11.105.121]
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] yocto-bsp: update reference BSPs to 4.1 latest
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
X-List-Received-Date: Fri, 09 Jun 2017 01:30:28 -0000
X-Groupsio-MsgNum: 36461
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3siQDZowHQqNOShm"
Content-Disposition: inline

--3siQDZowHQqNOShm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 08, 2017 at 02:45:14PM -0400, Bruce Ashfield wrote:
> The reference BSPs are lagging on their 4.1 SRCREVs, which means
> -stable updates, and gcc-7 build fixes are missing.

I have made a patch to update the SRCREVs for 4.1, 4.4, 4,9 and 4.10 three =
weeks ago,
but it seems not get merged. I just sent a ping for the merging.

Thanks,
Kevin

>=20
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
>  meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend=
 b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
> index b308c8dfa1cc..afb04c28f4d1 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
> @@ -9,9 +9,9 @@ KMACHINE_genericx86-64 ?=3D "common-pc-64"
> =20
>  SRCREV_machine_genericx86    ?=3D "398d1785c6bde0085b99f00f346e199a15fbd=
cef"
>  SRCREV_machine_genericx86-64 ?=3D "398d1785c6bde0085b99f00f346e199a15fbd=
cef"
> -SRCREV_machine_edgerouter ?=3D "2ce56d130ddff67f43ec857cc51cd347666a0078"
> -SRCREV_machine_beaglebone ?=3D "235de25be3f143b91dcc69479b770722c508889e"
> -SRCREV_machine_mpc8315e-rdb ?=3D "2ce56d130ddff67f43ec857cc51cd347666a00=
78"
> +SRCREV_machine_edgerouter ?=3D "398d1785c6bde0085b99f00f346e199a15fbdcef"
> +SRCREV_machine_beaglebone ?=3D "79414e2b0e0b7f5b86e358a907f841486f428079"
> +SRCREV_machine_mpc8315e-rdb ?=3D "398d1785c6bde0085b99f00f346e199a15fbdc=
ef"
> =20
>  COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
>  COMPATIBLE_MACHINE_genericx86-64 =3D "genericx86-64"
> --=20
> 2.5.0
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--3siQDZowHQqNOShm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJZOforAAoJEJNY7TDerrFx1LYH+gPVRq+vpUtkXSwH9Yza6tVc
gN2Zo9uxMtvY6cRPK3Xyz4ClgCf7LyzodPtRa0LGTf4y83YfmrJ2EAGp3xqcORLF
wssIiE0QYs8pNubhZHF6wiuBj2seyS1Uhp+DiVu+OPwoFF8yTxHqZtQTR3lqRnk8
wo3MAuK/O0nw0sRiWnWVZ29mKbAWI+nXqgoI684XIxw/k9GX83yMfdVtgDyUhVpo
TqX5mSiAfwPHkpMp39R+hVCxZlbmc8fxYpyVBBCzFUEVMWKdxdCYsQH1SajkhjhT
YUJVGYRWD+EJiMk+MRw4wdRXFrqo5zoK2a3rA4GZvV+TINE1Nl2YfFFJ8o3KERc=
=o5EH
-----END PGP SIGNATURE-----

--3siQDZowHQqNOShm--
