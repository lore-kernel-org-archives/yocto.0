Return-Path: <Vladimir_Redzhepov@epam.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9076DE0076B; Tue, 26 Aug 2014 03:40:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from EVBYMINSA0102.epam.com (evbyminsa0102.epam.com [217.21.63.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7ADF5E00566
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 03:39:58 -0700 (PDT)
Received: from EPBYMINSA0001.epam.com (10.6.110.2) by EPBYMINSA0001.epam.com
	(10.6.110.2) with Microsoft SMTP Server (TLS) id 15.0.913.22;
	Tue, 26 Aug 2014 13:39:44 +0300
Received: from EPBYMINSA0001.epam.com ([::1]) by EPBYMINSA0001.epam.com
	([::1]) with mapi id 15.00.0913.011; Tue, 26 Aug 2014 13:39:44 +0300
From: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-oracle-java][PATCH] Update jdk and jre to version 67
Thread-Index: Ac/BGVF94F+114omQyWcC7orwVnAXw==
Date: Tue, 26 Aug 2014 10:39:43 +0000
Message-ID: <3d37d63f09a2413593a16754d0ecbb80@EPBYMINSA0001.epam.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.6.137.75]
MIME-Version: 1.0
Subject: [meta-oracle-java][PATCH] Update jdk and jre to version 67
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
X-List-Received-Date: Tue, 26 Aug 2014 10:40:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

From 27a16047d97c3c49f889ccf2a89895b98eb55a39 Mon Sep 17 00:00:00 2001
From: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
Date: Tue, 26 Aug 2014 13:22:49 +0300
Subject: [PATCH] Update jdk and jre to version 67

1. Add BUILD_NUMBER variable.
2. Change SRC_URI for all recipes.
3. Recipe cleanup - remove redundant PR =3D "r0" from all recipes.
4. Update checksums for license files.

Signed-off-by: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
---
 recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb   | 10 +++++----=
-
 recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb | 10 +++++----=
-
 recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb   | 10 +++++----=
-
 recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb | 10 +++++----=
-
 recipes-devtools/oracle-java/oracle-jse.inc                 |  4 ++--
 5 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb b/re=
cipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
index 978fbd5..0667161 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
@@ -1,9 +1,9 @@
-PR =3D "r0"
-PV_UPDATE =3D "25"
+PV_UPDATE =3D "67"
+BUILD_NUMBER =3D "01"
=20
 require oracle-jse-jdk.inc
=20
-SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-7u25=
-linux-i586.tar.gz"
+SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE}-b$=
{BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-i586.tar.gz"
=20
-SRC_URI[md5sum] =3D "23176d0ebf9dedd21e3150b4bb0ee776"
-SRC_URI[sha256sum] =3D "dd89b20afa939992bb7fdc44837fa64f0a98d7ee1e5706fe8a=
2d9e2247ba6de7"
+SRC_URI[md5sum] =3D "715b0e8ba2a06bded75f6a92427e2701"
+SRC_URI[sha256sum] =3D "b6231064ad2c9fbbcb099dba17b1dcf12033e922b9c24e4348=
b9a01e9ebaa85c"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb b/=
recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
index 7979401..f18ce55 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
@@ -1,9 +1,9 @@
-PR =3D "r0"
-PV_UPDATE =3D "25"
+PV_UPDATE =3D "67"
+BUILD_NUMBER =3D "01"
=20
 require oracle-jse-jdk.inc
=20
-SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-7u25=
-linux-x64.tar.gz"
+SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE}-b$=
{BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-x64.tar.gz"
=20
-SRC_URI[md5sum] =3D "83ba05e260813f7a9140b76e3d37ea33"
-SRC_URI[sha256sum] =3D "f80dff0e19ca8d038cf7fe3aaa89538496b80950f4d10ff5f4=
57988ae159b2a6"
+SRC_URI[md5sum] =3D "81e3e2df33e13781e5fac5756ed90e67"
+SRC_URI[sha256sum] =3D "54dd1e13edf18c64941a55da9c91210b53dc5cf48f1a8f4538=
c863049e346335"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb b/re=
cipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
index 6125025..d0a9300 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
@@ -1,9 +1,9 @@
-PR =3D "r0"
-PV_UPDATE =3D "25"
+PV_UPDATE =3D "67"
+BUILD_NUMBER =3D "01"
=20
 require oracle-jse-jre.inc
=20
-SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre-7u25=
-linux-i586.tar.gz"
+SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE}-b$=
{BUILD_NUMBER}/jre-7u${PV_UPDATE}-linux-i586.tar.gz"
=20
-SRC_URI[md5sum] =3D "0e9ccefe49e937e592dbb605f2e8e7d8"
-SRC_URI[sha256sum] =3D "4016965536d8607743267812ab04e6d428036dda432893748c=
1df6cb77b09628"
+SRC_URI[md5sum] =3D "2a256eb2a91f0084e58c612636342c2b"
+SRC_URI[sha256sum] =3D "eadec83a54d3a9d09248a8d16b21c03da9afffc7317e775fb8=
db962620a0781d"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb b/=
recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
index 4058d23..0d5f157 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
@@ -1,9 +1,9 @@
-PR =3D "r0"
-PV_UPDATE =3D "25"
+PV_UPDATE =3D "67"
+BUILD_NUMBER =3D "01"
=20
 require oracle-jse-jre.inc
=20
-SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre-7u25=
-linux-x64.tar.gz"
+SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE}-b$=
{BUILD_NUMBER}/jre-7u${PV_UPDATE}-linux-x64.tar.gz"
=20
-SRC_URI[md5sum] =3D "743ee0ebf73ce428c912866d84e374e0"
-SRC_URI[sha256sum] =3D "3c4496316fb413d5ab0590e9971676a521b9a600b3ceaac311=
f04c18c98a98c0"
+SRC_URI[md5sum] =3D "9007c79167be0177fb47e5313c53d5cb"
+SRC_URI[sha256sum] =3D "726c37c07bb389b5b96674b7bcbc288e39fb8fbcd42369afa3=
64a18e66248b1f"
diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools=
/oracle-java/oracle-jse.inc
index 3a4e20d..38ceef0 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -2,8 +2,8 @@ LICENSE_FLAGS =3D "oracle_java"
 LICENSE =3D "Oracle_Binary_Code_License_Agreement"
 LIC_FILES_CHKSUM =3D "\
 	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/LICENSE;md5=3D98f46ab6481d=
87c4d77e0e91a6dbc15f \
-	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3D3a11238025=
bf13b87f04753183ffeb90 \
-	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.tx=
t;md5=3Dc339b34e3da6673d2c5950d0f8808f8c \
+	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3Dbe9fe5d47a=
7dcfb78f142f487afb34bb \
+	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.tx=
t;md5=3Df3a388961d24b8b72d412a079a878cdb \
 	"
=20
 FETCHCMD_wget_append =3D " --header=3DCookie:oraclelicense=3Da "
--=20
2.1.0


