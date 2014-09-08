Return-Path: <Vladimir_Redzhepov@epam.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26225E00855; Mon,  8 Sep 2014 05:04:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from EVBYMINSA0039.epam.com (evbyminsa0039.epam.com [217.21.63.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC3D7E00847
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 05:04:29 -0700 (PDT)
Received: from EPBYMINSA0032.epam.com (10.6.110.32) by EPBYMINSA0001.epam.com
	(10.6.110.2) with Microsoft SMTP Server (TLS) id 15.0.995.29;
	Mon, 8 Sep 2014 15:04:27 +0300
Received: from EPBYMINSA0032.epam.com ([::1]) by EPBYMINSA0032.epam.com
	([::1]) with mapi id 15.00.0995.028; Mon, 8 Sep 2014 15:04:24 +0300
From: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-oracle-java][PATCH v2] Add support for Java SE Embedded
Thread-Index: Ac/LXOuZg1oca3NuRqS8mLGIOxzE0w==
Date: Mon, 8 Sep 2014 12:04:23 +0000
Message-ID: <f5853f85c69e409593c89e39260ca912@EPBYMINSA0032.epam.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.6.137.75]
MIME-Version: 1.0
Subject: [meta-oracle-java][PATCH v2] Add support for Java SE Embedded
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
X-List-Received-Date: Mon, 08 Sep 2014 12:04:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

From a68c728141f369e1ac41f2aaf40915cf14ad341f Mon Sep 17 00:00:00 2001
From: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
Date: Mon, 8 Sep 2014 14:42:28 +0300
Subject: [PATCH] Add support for Java SE Embedded

Signed-off-by: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
---
 ...racle-jse-ejre-arm-vfp-hflt-client-headless_1.7.0.bb |  9 +++++++++
 recipes-devtools/oracle-java/oracle-jse-ejre.inc        | 17 +++++++++++++=
++++
 2 files changed, 26 insertions(+)
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
index 0000000..7889684
--- /dev/null
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
@@ -0,0 +1,17 @@
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
+
+LIC_FILES_CHKSUM =3D "\
+	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3D3a11238025=
bf13b87f04753183ffeb90 \
+	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.tx=
t;md5=3Dc339b34e3da6673d2c5950d0f8808f8c \
+	"
--=20
2.1.0

