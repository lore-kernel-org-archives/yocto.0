Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B853BE0076B; Tue, 26 Aug 2014 04:07:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5BCEE00566
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 04:07:15 -0700 (PDT)
Received: by mail-la0-f45.google.com with SMTP id ty20so14782678lab.4
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 04:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=Tcos8vSWjE6AIyXXku4W94ntzhpuClAoYsF5qT1BKII=;
	b=Rss90f8f+wkbcD0Do+F7BvR1hXi+Ek1e4yJ4IKc5tKDf4CXhGr6Vztos3xIdAoTc/j
	PTUlUVhAjTkPorXKMkti9OnSlWPAZqfv3e631w2oxjTQiMg9BY+xp70CVjhmg0cOZqX6
	4zjA2DzKBDVq2BpZbiwzSTO/t0AF8Y2JvdZaIooMSs5yG9yoe+r8J7Be8AtHQ/Dmnxab
	DXUJUOzwTFwF7k6OW3T3i0zMAcNJ53XwQzyoxYSAghTZG33pYtVHK0K9bcWWJwtS6wtI
	iLR5l7geuQfWIoiDNEnI8BemJcHiOIBnNse7ZIhzD8X+skyczLAgSGEa+X8IXVmB2Yca
	EUow==
X-Received: by 10.152.25.170 with SMTP id d10mr26483274lag.37.1409051233945;
	Tue, 26 Aug 2014 04:07:13 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	s10sm1827826laa.29.2014.08.26.04.07.12 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 26 Aug 2014 04:07:13 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 26 Aug 2014 13:07:20 +0200
To: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
Message-ID: <20140826110720.GX20524@jama>
References: <3d37d63f09a2413593a16754d0ecbb80@EPBYMINSA0001.epam.com>
MIME-Version: 1.0
In-Reply-To: <3d37d63f09a2413593a16754d0ecbb80@EPBYMINSA0001.epam.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java][PATCH] Update jdk and jre to version 67
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
X-List-Received-Date: Tue, 26 Aug 2014 11:07:19 -0000
X-Groupsio-MsgNum: 21255
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="WG0/bXtUnGTsWt66"
Content-Disposition: inline

--WG0/bXtUnGTsWt66
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 26, 2014 at 10:39:43AM +0000, Vladimir Redzhepov wrote:
> From 27a16047d97c3c49f889ccf2a89895b98eb55a39 Mon Sep 17 00:00:00 2001
> From: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> Date: Tue, 26 Aug 2014 13:22:49 +0300
> Subject: [PATCH] Update jdk and jre to version 67
>=20
> 1. Add BUILD_NUMBER variable.
> 2. Change SRC_URI for all recipes.
> 3. Recipe cleanup - remove redundant PR =3D "r0" from all recipes.
> 4. Update checksums for license files.
>=20
> Signed-off-by: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> ---
>  recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb   | 10 +++++--=
---
>  recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb | 10 +++++--=
---
>  recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb   | 10 +++++--=
---
>  recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb | 10 +++++--=
---
>  recipes-devtools/oracle-java/oracle-jse.inc                 |  4 ++--
>  5 files changed, 22 insertions(+), 22 deletions(-)
>=20
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb b/=
recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
> index 978fbd5..0667161 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
> @@ -1,9 +1,9 @@
> -PR =3D "r0"
> -PV_UPDATE =3D "25"
> +PV_UPDATE =3D "67"
> +BUILD_NUMBER =3D "01"
> =20
>  require oracle-jse-jdk.inc
> =20
> -SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-7u=
25-linux-i586.tar.gz"
> +SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE}-=
b${BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-i586.tar.gz"
> =20
> -SRC_URI[md5sum] =3D "23176d0ebf9dedd21e3150b4bb0ee776"
> -SRC_URI[sha256sum] =3D "dd89b20afa939992bb7fdc44837fa64f0a98d7ee1e5706fe=
8a2d9e2247ba6de7"
> +SRC_URI[md5sum] =3D "715b0e8ba2a06bded75f6a92427e2701"
> +SRC_URI[sha256sum] =3D "b6231064ad2c9fbbcb099dba17b1dcf12033e922b9c24e43=
48b9a01e9ebaa85c"
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb =
b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
> index 7979401..f18ce55 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
> @@ -1,9 +1,9 @@
> -PR =3D "r0"
> -PV_UPDATE =3D "25"
> +PV_UPDATE =3D "67"
> +BUILD_NUMBER =3D "01"
> =20
>  require oracle-jse-jdk.inc
> =20
> -SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-7u=
25-linux-x64.tar.gz"
> +SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE}-=
b${BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-x64.tar.gz"
> =20
> -SRC_URI[md5sum] =3D "83ba05e260813f7a9140b76e3d37ea33"
> -SRC_URI[sha256sum] =3D "f80dff0e19ca8d038cf7fe3aaa89538496b80950f4d10ff5=
f457988ae159b2a6"
> +SRC_URI[md5sum] =3D "81e3e2df33e13781e5fac5756ed90e67"
> +SRC_URI[sha256sum] =3D "54dd1e13edf18c64941a55da9c91210b53dc5cf48f1a8f45=
38c863049e346335"
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb b/=
recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
> index 6125025..d0a9300 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
> +++ b/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
> @@ -1,9 +1,9 @@
> -PR =3D "r0"
> -PV_UPDATE =3D "25"
> +PV_UPDATE =3D "67"
> +BUILD_NUMBER =3D "01"
> =20
>  require oracle-jse-jre.inc
> =20
> -SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre-7u=
25-linux-i586.tar.gz"
> +SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE}-=
b${BUILD_NUMBER}/jre-7u${PV_UPDATE}-linux-i586.tar.gz"
> =20
> -SRC_URI[md5sum] =3D "0e9ccefe49e937e592dbb605f2e8e7d8"
> -SRC_URI[sha256sum] =3D "4016965536d8607743267812ab04e6d428036dda43289374=
8c1df6cb77b09628"
> +SRC_URI[md5sum] =3D "2a256eb2a91f0084e58c612636342c2b"
> +SRC_URI[sha256sum] =3D "eadec83a54d3a9d09248a8d16b21c03da9afffc7317e775f=
b8db962620a0781d"
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb =
b/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
> index 4058d23..0d5f157 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
> +++ b/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
> @@ -1,9 +1,9 @@
> -PR =3D "r0"
> -PV_UPDATE =3D "25"
> +PV_UPDATE =3D "67"
> +BUILD_NUMBER =3D "01"
> =20
>  require oracle-jse-jre.inc
> =20
> -SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre-7u=
25-linux-x64.tar.gz"
> +SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE}-=
b${BUILD_NUMBER}/jre-7u${PV_UPDATE}-linux-x64.tar.gz"
> =20
> -SRC_URI[md5sum] =3D "743ee0ebf73ce428c912866d84e374e0"
> -SRC_URI[sha256sum] =3D "3c4496316fb413d5ab0590e9971676a521b9a600b3ceaac3=
11f04c18c98a98c0"
> +SRC_URI[md5sum] =3D "9007c79167be0177fb47e5313c53d5cb"
> +SRC_URI[sha256sum] =3D "726c37c07bb389b5b96674b7bcbc288e39fb8fbcd42369af=
a364a18e66248b1f"
> diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtoo=
ls/oracle-java/oracle-jse.inc
> index 3a4e20d..38ceef0 100644
> --- a/recipes-devtools/oracle-java/oracle-jse.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse.inc
> @@ -2,8 +2,8 @@ LICENSE_FLAGS =3D "oracle_java"
>  LICENSE =3D "Oracle_Binary_Code_License_Agreement"
>  LIC_FILES_CHKSUM =3D "\
>  	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/LICENSE;md5=3D98f46ab648=
1d87c4d77e0e91a6dbc15f \
> -	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3D3a112380=
25bf13b87f04753183ffeb90 \
> -	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.=
txt;md5=3Dc339b34e3da6673d2c5950d0f8808f8c \
> +	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3Dbe9fe5d4=
7a7dcfb78f142f487afb34bb \
> +	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.=
txt;md5=3Df3a388961d24b8b72d412a079a878cdb \
>  	"

Please describe the changes in commit message (it was requested in
previous patch sets).

Also LIC_FILES_CHKSUM paths can be relative to ${S}, which is set to
WORKDIR in the .inc files, so you should be able to just drop
""${WORKDIR}/" here.

One last comment, while reading .inc file I've noticed:
# get the java update version in the resulting package
PR =3D. "u${PV_UPDATE}"

Would it make sense to append it to PV instead?

Maybe easier to read with recipes renamed from _1.7.0.bb to _1.7.bb.

Thanks

>  FETCHCMD_wget_append =3D " --header=3DCookie:oraclelicense=3Da "
> --=20
> 2.1.0
>=20

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--WG0/bXtUnGTsWt66
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlP8amgACgkQN1Ujt2V2gBxq7ACdGJkHBcEkpqzzMRf9xOJhmkXS
pkAAnAhKV2Kt1ObnadrcJUKDOiM5CEbM
=0Nnl
-----END PGP SIGNATURE-----

--WG0/bXtUnGTsWt66--
