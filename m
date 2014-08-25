Return-Path: <Vladimir_Redzhepov@epam.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10409E00809; Mon, 25 Aug 2014 06:00:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from EVBYMINSA0038.epam.com (evbyminsa0038.epam.com [217.21.63.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32E10E0078A
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 06:00:29 -0700 (PDT)
Received: from EPBYMINSA0001.epam.com (10.6.110.2) by EPBYMINSA0001.epam.com
	(10.6.110.2) with Microsoft SMTP Server (TLS) id 15.0.913.22;
	Mon, 25 Aug 2014 16:00:08 +0300
Received: from EPBYMINSA0001.epam.com ([::1]) by EPBYMINSA0001.epam.com
	([::1]) with mapi id 15.00.0913.011; Mon, 25 Aug 2014 16:00:08 +0300
From: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
To: Martin Jansa <martin.jansa@gmail.com>
Thread-Topic: [yocto] [meta-oracle-java][PATCH] update jdk and jre to
	version 67
Thread-Index: Ac+9YY3bnY/5oSRDTvaNMMXDx9AUu///06SA//nR9XA=
Date: Mon, 25 Aug 2014 13:00:08 +0000
Message-ID: <85891bd4ce86459c9eec96447388fa5c@EPBYMINSA0001.epam.com>
References: <35e32346a105465791b484fe34a2a011@EPBYMINSA0001.epam.com>
	<20140821172245.GZ3660@jama>
In-Reply-To: <20140821172245.GZ3660@jama>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.6.137.75]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java][PATCH] update jdk and jre to version 67
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
X-List-Received-Date: Mon, 25 Aug 2014 13:00:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



-----Original Message-----
From: Martin Jansa [mailto:martin.jansa@gmail.com]=20
Sent: Thursday, August 21, 2014 8:23 PM
To: Vladimir Redzhepov
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-oracle-java][PATCH] update jdk and jre to versio=
n 67

On Thu, Aug 21, 2014 at 05:01:47PM +0000, Vladimir Redzhepov wrote:
> From f0305398a51435f407e41a8f0eaf83f8bdd13cca Mon Sep 17 00:00:00 2001
> From: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> Date: Thu, 21 Aug 2014 19:43:29 +0300
> Subject: [PATCH] update jdk and jre to version 67
>=20
> Signed-off-by: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> ---
> recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb   | 10 +++++---=
--
> recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb | 10 +++++---=
--
> recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb   | 10 +++++---=
--
> recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb | 10 +++++---=
--
> recipes-devtools/oracle-java/oracle-jse.inc                 |  4 ++--
> 5 files changed, 22 insertions(+), 22 deletions(-)
>=20
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb b/=
recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
> index 978fbd5..07fa39b 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
> @@ -1,9 +1,9 @@
> -PR =3D "r0"
> -PV_UPDATE =3D "25"
> +PR =3D "r1"
> +PV_UPDATE =3D "67"

Does it need PR update?

I thought that PR should be updated each time we modify recipe. That's why =
I've updated it.

>  require oracle-jse-jdk.inc
> -SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-7u=
25-linux-i586.tar.gz"
> +SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u67-b01/jdk-7u=
67-linux-i586.tar.gz"

It would be better to use PV_UPDATE variable here and maybe introduce
another one for build number?

Do you mean using PV_UPDATE in SRC_URI like this
SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u${ PV_UPDATE }-b=
01/jdk-7u${ PV_UPDATE }-linux-i586.tar.gz" ?

Of course we can use additional variable for build number, for example BUIL=
D_NUM =3D "b01"
SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u${ PV_UPDATE }-$=
{BUILD_NUM}/jdk-7u${ PV_UPDATE }-linux-i586.tar.gz"

> -SRC_URI[md5sum] =3D "23176d0ebf9dedd21e3150b4bb0ee776"
> -SRC_URI[sha256sum] =3D "dd89b20afa939992bb7fdc44837fa64f0a98d7ee1e5706fe=
8a2d9e2247ba6de7"
> +SRC_URI[md5sum] =3D "715b0e8ba2a06bded75f6a92427e2701"
> +SRC_URI[sha256sum] =3D "b6231064ad2c9fbbcb099dba17b1dcf12033e922b9c24e43=
48b9a01e9ebaa85c"
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb =
b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
> index 7979401..8bad119 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
> @@ -1,9 +1,9 @@
> -PR =3D "r0"
> -PV_UPDATE =3D "25"
> +PR =3D "r1"
> +PV_UPDATE =3D "67"
>  require oracle-jse-jdk.inc
> -SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-7u=
25-linux-x64.tar.gz"
> +SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u67-b01/jdk-7u=
67-linux-x64.tar.gz"
> -SRC_URI[md5sum] =3D "83ba05e260813f7a9140b76e3d37ea33"
> -SRC_URI[sha256sum] =3D "f80dff0e19ca8d038cf7fe3aaa89538496b80950f4d10ff5=
f457988ae159b2a6"
> +SRC_URI[md5sum] =3D "81e3e2df33e13781e5fac5756ed90e67"
> +SRC_URI[sha256sum] =3D "54dd1e13edf18c64941a55da9c91210b53dc5cf48f1a8f45=
38c863049e346335"
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb b/=
recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
> index 6125025..4165d74 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
> +++ b/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
> @@ -1,9 +1,9 @@
> -PR =3D "r0"
> -PV_UPDATE =3D "25"
> +PR =3D "r1"
> +PV_UPDATE =3D "67"
>  require oracle-jse-jre.inc
> -SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre-7u=
25-linux-i586.tar.gz"
> +SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u67-b01/jre-7u=
67-linux-i586.tar.gz"
> -SRC_URI[md5sum] =3D "0e9ccefe49e937e592dbb605f2e8e7d8"
> -SRC_URI[sha256sum] =3D "4016965536d8607743267812ab04e6d428036dda43289374=
8c1df6cb77b09628"
> +SRC_URI[md5sum] =3D "2a256eb2a91f0084e58c612636342c2b"
> +SRC_URI[sha256sum] =3D "eadec83a54d3a9d09248a8d16b21c03da9afffc7317e775f=
b8db962620a0781d"
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb =
b/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
> index 4058d23..a1474a9 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
> +++ b/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
> @@ -1,9 +1,9 @@
> -PR =3D "r0"
> -PV_UPDATE =3D "25"
> +PR =3D "r1"
> +PV_UPDATE =3D "67"
>  require oracle-jse-jre.inc
> -SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre-7u=
25-linux-x64.tar.gz"
> +SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u67-b01/jre-7u=
67-linux-x64.tar.gz"
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
> LICENSE =3D "Oracle_Binary_Code_License_Agreement"
> LIC_FILES_CHKSUM =3D "\
>                file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/LICENSE;md5=
=3D98f46ab6481d87c4d77e0e91a6dbc15f \
> -              file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;m=
d5=3D3a11238025bf13b87f04753183ffeb90 \
> -                file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPART=
YLICENSEREADME.txt;md5=3Dc339b34e3da6673d2c5950d0f8808f8c \
> +             file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md=
5=3Dbe9fe5d47a7dcfb78f142f487afb34bb \
> +                file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPART=
YLICENSEREADME.txt;md5=3Df3a388961d24b8b72d412a079a878cdb \

Please mention in commit message what was changed in it.

It would be nice to use consistent whitespace for indentation.

>                "
>  FETCHCMD_wget_append =3D " --header=3DCookie:oraclelicense=3Da "
> --
> 2.1.0
>=20

> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

