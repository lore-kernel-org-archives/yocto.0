Return-Path: <Vladimir_Redzhepov@epam.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D6C2E0082A; Thu,  4 Sep 2014 05:31:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from EVBYMINSA0101.epam.com (evbyminsa0101.epam.com [217.21.63.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBA2FE0079E
	for <yocto@yoctoproject.org>; Thu,  4 Sep 2014 05:31:18 -0700 (PDT)
Received: from EPBYMINSA0032.epam.com (10.6.110.32) by EPBYMINSA0001.epam.com
	(10.6.110.2) with Microsoft SMTP Server (TLS) id 15.0.995.29;
	Thu, 4 Sep 2014 15:30:46 +0300
Received: from EPBYMINSA0032.epam.com ([::1]) by EPBYMINSA0032.epam.com
	([::1]) with mapi id 15.00.0995.028; Thu, 4 Sep 2014 15:30:45 +0300
From: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-oracle-java][PATCH] Provide common functionality to run
	jdk on the build host
Thread-Index: Ac/IPAOLcdp117YVRw6YZEdS8Xf0pw==
Date: Thu, 4 Sep 2014 12:30:44 +0000
Message-ID: <62599fadb3fd4388af5fe60df349faf7@EPBYMINSA0032.epam.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.6.137.75]
MIME-Version: 1.0
Subject: [meta-oracle-java][PATCH] Provide common functionality to run jdk on the build host
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
X-List-Received-Date: Thu, 04 Sep 2014 12:31:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

From f7c9e480729ea2c3bafb6ae5e101627f7f77f867 Mon Sep 17 00:00:00 2001
From: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
Date: Thu, 4 Sep 2014 15:02:22 +0300
Subject: [PATCH] Provide common functionality to run jdk on the build host.

The native class provides common functionality for recipes that
wish to build tools to run on the build host (i.e. tools that use
the compiler or other tools from the build host).

Signed-off-by: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
---
 recipes-devtools/oracle-java/oracle-jse-jdk.inc | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devt=
ools/oracle-java/oracle-jse-jdk.inc
index 6a34a7a..de0870a 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
@@ -10,3 +10,11 @@ DESCRIPTION =3D "This is the proprietary JDK from Sun/Or=
acle, with the Hotspot JVM

 JDK_JRE =3D "jdk"
 require oracle-jse.inc
+
+do_install_class-native() {
+    install -d -m 0755                      ${D}${bindir}/${JDK_JRE}${PV}_=
${PV_UPDATE}
+    cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${bindir}/
+    ln -sf ${JDK_JRE}${PV}_${PV_UPDATE}     ${D}${bindir}/java
+}
+
+BBCLASSEXTEND =3D "native"
--=20
2.1.0


