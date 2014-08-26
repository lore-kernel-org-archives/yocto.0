Return-Path: <Vladimir_Redzhepov@epam.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2B59E0076B; Tue, 26 Aug 2014 06:02:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from EVBYMINSA0101.epam.com (evbyminsa0101.epam.com [217.21.63.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51C56E006B5
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 06:02:38 -0700 (PDT)
Received: from EPBYMINSA0001.epam.com (10.6.110.2) by EPBYMINSA0032.epam.com
	(10.6.110.32) with Microsoft SMTP Server (TLS) id 15.0.913.22;
	Tue, 26 Aug 2014 16:02:35 +0300
Received: from EPBYMINSA0001.epam.com ([::1]) by EPBYMINSA0001.epam.com
	([::1]) with mapi id 15.00.0913.011; Tue, 26 Aug 2014 16:02:35 +0300
From: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
To: Martin Jansa <martin.jansa@gmail.com>
Thread-Topic: [meta-oracle-java][PATCH] Update jdk and jre to version 67
Thread-Index: Ac/BGVF94F+114omQyWcC7orwVnAX///1uEA//+xLYA=
Date: Tue, 26 Aug 2014 13:02:34 +0000
Message-ID: <78e72bd2bd244c5b98c2c2b487a9b631@EPBYMINSA0001.epam.com>
References: <3d37d63f09a2413593a16754d0ecbb80@EPBYMINSA0001.epam.com>
	<20140826110720.GX20524@jama>
In-Reply-To: <20140826110720.GX20524@jama>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.6.137.75]
MIME-Version: 1.0
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
X-List-Received-Date: Tue, 26 Aug 2014 13:02:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



-----Original Message-----
From: Martin Jansa [mailto:martin.jansa@gmail.com]=20
Sent: Tuesday, August 26, 2014 2:07 PM
To: Vladimir Redzhepov
Cc: yocto@yoctoproject.org; Maxin B. John
Subject: Re: [meta-oracle-java][PATCH] Update jdk and jre to version 67

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

	I remember about it and in this patch I've added the changes:
	> 1. Add BUILD_NUMBER variable.
	> 2. Change SRC_URI for all recipes.
	> 3. Recipe cleanup - remove redundant PR =3D "r0" from all recipes.
	> 4. Update checksums for license files.

Also LIC_FILES_CHKSUM paths can be relative to ${S}, which is set to
WORKDIR in the .inc files, so you should be able to just drop
""${WORKDIR}/" here.

	Yes, I agree. I've just removed "${WORKDIR}/" from LIC_FILES_CHKSUM.

One last comment, while reading .inc file I've noticed:
# get the java update version in the resulting package
PR =3D. "u${PV_UPDATE}"

Would it make sense to append it to PV instead?

	Maybe. Could you please show me how to implement your idea?

Maybe easier to read with recipes renamed from _1.7.0.bb to _1.7.bb.

	Yes, I agree with you. I'll rename them.

Thanks

>  FETCHCMD_wget_append =3D " --header=3DCookie:oraclelicense=3Da "
> --=20
> 2.1.0
>=20

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

