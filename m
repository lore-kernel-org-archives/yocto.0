Return-Path: <will.frazer@eurotech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AB59E00814; Mon,  8 Sep 2014 07:28:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.199.154.15 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 858 seconds by postgrey-1.32 at yocto-www;
	Mon, 08 Sep 2014 07:27:56 PDT
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1lrp0015.outbound.protection.outlook.com [213.199.154.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CC31E007A0
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 07:27:56 -0700 (PDT)
Received: from DB4PR05MB397.eurprd05.prod.outlook.com (10.242.192.141) by
	DB4PR05MB399.eurprd05.prod.outlook.com (10.242.192.146) with Microsoft
	SMTP Server (TLS) id 15.0.1019.16; Mon, 8 Sep 2014 14:13:36 +0000
Received: from DB4PR05MB397.eurprd05.prod.outlook.com ([10.242.192.141]) by
	DB4PR05MB397.eurprd05.prod.outlook.com ([10.242.192.141]) with mapi id
	15.00.1024.012; Mon, 8 Sep 2014 14:13:36 +0000
From: "Frazer, Will" <will.frazer@eurotech.com>
To: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-oracle-java][PATCH v2] Add support for Java SE
	Embedded
Thread-Index: Ac/LXOuZg1oca3NuRqS8mLGIOxzE0wAEStkA
Date: Mon, 8 Sep 2014 14:13:35 +0000
Message-ID: <15cf2669b9a9496db30b36893090d5c8@DB4PR05MB397.eurprd05.prod.outlook.com>
References: <f5853f85c69e409593c89e39260ca912@EPBYMINSA0032.epam.com>
In-Reply-To: <f5853f85c69e409593c89e39260ca912@EPBYMINSA0032.epam.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [164.40.222.34]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;UriScan:;
x-forefront-prvs: 03283976A6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(6009001)(13464003)(199003)(585484001)(189002)(20776003)(15202345003)(31966008)(101416001)(79102001)(107046002)(4396001)(99396002)(74662001)(76482001)(74502001)(77982001)(33646002)(74316001)(86362001)(64706001)(21056001)(15975445006)(92566001)(107886001)(81342001)(575784001)(66066001)(80022001)(2656002)(85852003)(54356999)(76576001)(95666004)(105586002)(50986999)(76176999)(46102001)(230783001)(83072002)(106356001)(19580405001)(2501002)(108616004)(19580395003)(81542001)(85306004)(97736003)(90102001)(83322001)(87936001)(24736002);
	DIR:OUT; SFP:; SCL:1; SRVR:DB4PR05MB399;
	H:DB4PR05MB397.eurprd05.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: eurotech.com
Subject: Re: [meta-oracle-java][PATCH v2] Add support for Java SE	Embedded
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
X-List-Received-Date: Mon, 08 Sep 2014 14:28:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Folks,

My understanding is that while this recipe generated download URL will work=
 if you have already visited the Oracle download location, it won't work fo=
r a build system that has never been there before. Try it.

Also, Oracle has previously been very much against using any mechanism that=
 bypasses a user clicking on the licence acceptance. I'm not aware this pos=
ition has changed. You may find that you are in violation of the Licence ag=
reement if you do this. One of the reasons why the URLs were obfuscated in =
the past I believe.

Will Frazer=20
Eurotech UK

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Vladimir Redzhepov
Sent: 08 September 2014 13:04
To: yocto@yoctoproject.org
Subject: [yocto] [meta-oracle-java][PATCH v2] Add support for Java SE Embed=
ded

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
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-h
+++ eadless_1.7.0.bb
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
+DESCRIPTION =3D "This is the proprietary JRE from Sun/Oracle, with the=20
+Hotspot JVM. It is\  provided by Sun/Oracle only in binary format.\ =20
+Java Platform, Standard Edition (Java SE) lets you develop and deploy=20
+Java\  applications on desktops and servers, as well as in today's=20
+demanding\  embedded environments. Java offers the rich user interface,=20
+performance,\  versatility, portability, and security that today's=20
+applications require.\  The JRE (Java Runtime Environment) is needed on=20
+a system to run Java\  applications and applets"
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
--
2.1.0
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

