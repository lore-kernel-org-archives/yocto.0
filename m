Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D29DCE00849; Mon,  8 Sep 2014 04:38:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 5B470E0056A
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 04:37:47 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.158.1; Mon, 8 Sep 2014
	13:37:46 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id BE24B288E2C;
	Mon,  8 Sep 2014 13:37:46 +0200 (CEST)
Date: Mon, 8 Sep 2014 13:37:46 +0200
From: "Maxin B. John" <maxin.john@enea.com>
To: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
Message-ID: <20140908113746.GA4008@sestofb10.enea.se>
References: <56338fcf02a045d594899097d7186b72@EPBYMINSA0032.epam.com>
MIME-Version: 1.0
In-Reply-To: <56338fcf02a045d594899097d7186b72@EPBYMINSA0032.epam.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX03.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java][PATCH v3] Update jdk and jre to version 67
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
X-List-Received-Date: Mon, 08 Sep 2014 11:38:00 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Manually merged this patch (There were some difficulties in applying
this patch directly - please take care of it next time). Thanks !

On Thu, Sep 04, 2014 at 04:18:00PM +0000, Vladimir Redzhepov wrote:
> From 61efb0099635325b21d589dd96308c7fa9b668de Mon Sep 17 00:00:00 2001
> From: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> Date: Thu, 4 Sep 2014 18:37:50 +0300
> Subject: [PATCH] Update jdk and jre to version 67.
> MIME-Version: 1.0
> Content-Type: text/plain; charset=3DUTF-8
> Content-Transfer-Encoding: 8bit
>=20
> 1. Add BUILD_NUMBER variable.
> 2. Change SRC_URI for all recipes.
> 3. Recipe cleanup - remove redundant PR =3D "r0" from all recipes.
> 4. Update checksums for license files.
>=20
> Changes in COPYRIGHT:
> -Copyright =EF=BF=BD 1993, 2013, Oracle and/or its affiliates.
> +Copyright =EF=BF=BD 1993, 2014, Oracle and/or its affiliates.
>=20
> Changes in THIRDPARTYLICENSEREADME.txt:
> +%% This notice is provided with respect to Sparkle v.1.5,
> +which is included with JRE 7 on Mac OS X.
> +
> +--- begin of LICENSE ---
> +
> +Copyright (c) 2012 Sparkle.org and Andy Matuschak
> +
> +Permission is hereby granted, free of charge, to any person obtaining a =
copy
> +of this software and associated documentation files (the "Software"), to=
 deal
> +in the Software without restriction, including without limitation the ri=
ghts
> +to use, copy, modify, merge, publish, distribute, sublicense, and/or sel=
l
> +copies of the Software, and to permit persons to whom the Software is
> +furnished to do so, subject to the following conditions:
> +
> +The above copyright notice and this permission notice shall be included =
in all
> +copies or substantial portions of the Software.
> +
> +THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS =
OR
> +IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> +FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL =
THE
> +AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> +LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING =
FROM,
> +OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS I=
N THE
> +SOFTWARE.
> +
> +--- end of LICENSE ---
> +
> +------------------------------------------------------------------------=
-------
> +
>  %% Portions licensed from Taligent, Inc.
>=20
>  ------------------------------------------------------------------------=
-------
>  %% This notice is provided with respect to the following which is
>  included with JRE 7, JDK 7, and OpenJDK 7, except where noted:
>=20
> -  Apache Derby 10.8.1.2        [included with JDK 7 only]
> +  Apache Derby 10.8.3.0        [included with JDK 7 only]
>    Apache Jakarta BCEL 5.2
>    Apache Jakarta Regexp 1.4
>    Apache Santuario XMLSec-Java 1.4.2
>    Apache Xalan-Java 2.7.1
> -  Apache Xerces2 Java 2.10.0
> +  Apache Xerces2 Java 2.11.0
>    Apache XML Resolver 1.1
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
> =20
>  FETCHCMD_wget_append =3D " --header=3DCookie:oraclelicense=3Da "
> --=20
Thanks and Regards,
Maxin

