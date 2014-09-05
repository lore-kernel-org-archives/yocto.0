Return-Path: <Vladimir_Redzhepov@epam.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF311E0078E; Fri,  5 Sep 2014 08:59:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from EVBYMINSA0039.epam.com (evbyminsa0039.epam.com [217.21.63.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73958E0049D
	for <yocto@yoctoproject.org>; Fri,  5 Sep 2014 08:58:57 -0700 (PDT)
Received: from EPBYMINSA0032.epam.com (10.6.110.32) by EPBYMINSA0001.epam.com
	(10.6.110.2) with Microsoft SMTP Server (TLS) id 15.0.995.29;
	Fri, 5 Sep 2014 18:58:54 +0300
Received: from EPBYMINSA0032.epam.com ([::1]) by EPBYMINSA0032.epam.com
	([::1]) with mapi id 15.00.0995.028; Fri, 5 Sep 2014 18:58:54 +0300
From: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-oracle-java][PATCH] Add support for Java SE Embedded
Thread-Index: Ac/JIi6TtahCyQR6Q/GwNS0UIGVjew==
Date: Fri, 5 Sep 2014 15:58:53 +0000
Message-ID: <8b6dc55b042849e3bce4864bf7e7d24d@EPBYMINSA0032.epam.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.6.137.75]
MIME-Version: 1.0
Subject: [meta-oracle-java][PATCH] Add support for Java SE Embedded
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
X-List-Received-Date: Fri, 05 Sep 2014 15:59:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

From 783ff400987ec06f41286ffce7e3afc4545d67e5 Mon Sep 17 00:00:00 2001
From: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
Date: Fri, 5 Sep 2014 18:13:42 +0300
Subject: [PATCH] Add support for Java SE Embedded

LICENSE file removed from LIC_FILES_CHKSUM in oracle-jse.inc
because it doesn't exist in ejre.

Signed-off-by: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
---
 .../oracle-jse-ejre-arm-vfp-hflt-client-headless_1.7.0.bb    |  9 ++++++++=
+
 recipes-devtools/oracle-java/oracle-jse-ejre.inc             | 12 ++++++++=
++++
 recipes-devtools/oracle-java/oracle-jse.inc                  |  1 -
 3 files changed, 21 insertions(+), 1 deletion(-)
 create mode 100644 recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hf=
lt-client-headless_1.7.0.bb
 create mode 100644 recipes-devtools/oracle-java/oracle-jse-ejre.inc

diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-clie=
nt-headless_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp=
-hflt-client-headless_1.7.0.bb
new file mode 100644
index 0000000..bfa8011
--- /dev/null
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-head=
less_1.7.0.bb
@@ -0,0 +1,9 @@
+PV_UPDATE =3D "60"
+BUILD_NUMBER =3D "19"
+
+require oracle-jse-ejre.inc
+
+SRC_URI =3D "http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b${BU=
ILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b${BUILD_NUMBER}-linux-arm-vfp-hflt-cli=
ent_headless-07_may_2014.tar.gz"
+
+SRC_URI[md5sum] =3D "b9b8f598b0a7f49e4d221f16ba25c6c0"
+SRC_URI[sha256sum] =3D "ed061060011d88efe5563c2949c00993db85db17ab94f18a78=
713007a2b90faf"
diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc b/recipes-dev=
tools/oracle-java/oracle-jse-ejre.inc
new file mode 100644
index 0000000..4eeace0
--- /dev/null
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
@@ -0,0 +1,12 @@
+SUMMARY =3D "Oracle Java SE runtime environment binaries"
+DESCRIPTION =3D "This is the proprietary JRE from Sun/Oracle, with the Hot=
spot JVM. It is\
+ provided by Sun/Oracle only in binary format.\
+ Java Platform, Standard Edition (Java SE) lets you develop and deploy Jav=
a\
+ applications on desktops and servers, as well as in today's demanding\
+ embedded environments. Java offers the rich user interface, performance,\
+ versatility, portability, and security that today's applications require.=
\
+ The JRE (Java Runtime Environment) is needed on a system to run Java\
+ applications and applets"
+
+JDK_JRE =3D "ejre"
+require oracle-jse.inc
diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools=
/oracle-java/oracle-jse.inc
index 38ceef0..5aebfaf 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -1,7 +1,6 @@
 LICENSE_FLAGS =3D "oracle_java"
 LICENSE =3D "Oracle_Binary_Code_License_Agreement"
 LIC_FILES_CHKSUM =3D "\
-	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/LICENSE;md5=3D98f46ab6481d=
87c4d77e0e91a6dbc15f \
 	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3Dbe9fe5d47a=
7dcfb78f142f487afb34bb \
 	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.tx=
t;md5=3Df3a388961d24b8b72d412a079a878cdb \
 	"
--=20
2.1.0

