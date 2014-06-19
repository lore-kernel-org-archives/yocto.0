Return-Path: <Pavel_Shumeika@epam.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A24D8E00BF6; Thu, 19 Jun 2014 02:43:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from EVBYMINSA0102.epam.com (evbyminsa0102.epam.com [217.21.63.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B1CBE00BE9
	for <yocto@yoctoproject.org>; Thu, 19 Jun 2014 02:43:21 -0700 (PDT)
Received: from EPBYMINSA0001.epam.com (10.6.110.2) by EPBYMINSA0001.epam.com
	(10.6.110.2) with Microsoft SMTP Server (TLS) id 15.0.913.22;
	Thu, 19 Jun 2014 12:43:06 +0300
Received: from EPBYMINSA0001.epam.com ([::1]) by EPBYMINSA0001.epam.com
	([::1]) with mapi id 15.00.0913.011; Thu, 19 Jun 2014 12:43:05 +0300
From: Pavel Shumeika <Pavel_Shumeika@epam.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-oracle-java][PATCH] java: version update and
	Java for ARM
Thread-Index: AQHPi6LeKLASnmP6nUeaeVhNovgmUg==
Date: Thu, 19 Jun 2014 09:43:05 +0000
Message-ID: <46d0f69a0a0a4a20bf1bf1864248bde2@EPBYMINSA0001.epam.com>
References: <5323c871b64c43d0bb0ab349b96a6d70@EPBYMINSA0001.epam.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.6.44.76]
MIME-Version: 1.0
Subject: [meta-oracle-java][PATCH] java: version update and Java for ARM
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
X-List-Received-Date: Thu, 19 Jun 2014 09:43:34 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_46d0f69a0a0a4a20bf1bf1864248bde2EPBYMINSA0001epamcom_"

--_000_46d0f69a0a0a4a20bf1bf1864248bde2EPBYMINSA0001epamcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Updated oracle jre and jdk recipes to the latest update 60.

Also added recipe for ejre to support ARM.

Signed-off-by: Pavel Shumeika <pavel_shumeika@epam.com><mailto:pavel_shumei=
ka@epam.com>
---
.../oracle-java/oracle-jse-ejre-arm_1.7.0.bb       |  8 +++++
recipes-devtools/oracle-java/oracle-jse-ejre.inc   | 40 +++++++++++++++++++=
+++
.../oracle-java/oracle-jse-jdk-i586_1.7.0.bb       | 10 +++---
.../oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb     | 10 +++---
recipes-devtools/oracle-java/oracle-jse-jdk.inc    |  8 +++++
.../oracle-java/oracle-jse-jre-i586_1.7.0.bb       | 10 +++---
.../oracle-java/oracle-jse-jre-x86-64_1.7.0.bb     | 10 +++---
recipes-devtools/oracle-java/oracle-jse.inc        |  4 +--
8 files changed, 78 insertions(+), 22 deletions(-)
create mode 100644 recipes-devtools/oracle-java/oracle-jse-ejre-arm_1.7.0.b=
b
create mode 100644 recipes-devtools/oracle-java/oracle-jse-ejre.inc

diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre-arm_1.7.0.bb b/re=
cipes-devtools/oracle-java/oracle-jse-ejre-arm_1.7.0.bb
new file mode 100644
index 0000000..9b55173
--- /dev/null
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre-arm_1.7.0.bb
@@ -0,0 +1,8 @@
+PV_UPDATE =3D "60"
+
+require oracle-jse-ejre.inc
+
+SRC_URI =3D "http://download.oracle.com/otn/java/ejre/7u60-b19/ejre-7u60-f=
cs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz"<http://downlo=
ad.oracle.com/otn/java/ejre/7u60-b19/ejre-7u60-fcs-b19-linux-arm-vfp-hflt-c=
lient_headless-07_may_2014.tar.gz>
+
+SRC_URI[md5sum] =3D "b9b8f598b0a7f49e4d221f16ba25c6c0"
+SRC_URI[sha256sum] =3D "ed061060011d88efe5563c2949c00993db85db17ab94f18a78=
713007a2b90faf"
diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc b/recipes-dev=
tools/oracle-java/oracle-jse-ejre.inc
new file mode 100644
index 0000000..1731055
--- /dev/null
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
@@ -0,0 +1,40 @@
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
+
+LICENSE_FLAGS =3D "oracle_java"
+LICENSE =3D "Oracle_Binary_Code_License_Agreement"
+LIC_FILES_CHKSUM =3D "\
+             file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=
=3Dbe9fe5d47a7dcfb78f142f487afb34bb \
+                file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYL=
ICENSEREADME.txt;md5=3Df3a388961d24b8b72d412a079a878cdb \
+             "
+
+# get the java update version in the resulting package
+PR =3D. "u${PV_UPDATE}"
+S =3D "${WORKDIR}"
+
+do_install () {
+             install -d -m 0755                                           =
   ${D}/usr/${JDK_JRE}${PV}_${PV_UPDATE}
+             cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE}        ${D}/usr/
+             ln -sf ${JDK_JRE}${PV}_${PV_UPDATE}  ${D}/usr/java
+}
+
+# All the files are provided in a binaray package, and keeping all the
+# files in a single package causes packaging QA errors and warnings.
+# Avoid these packaging failure by skiping all the QA checks
+INSANE_SKIP_${PN} =3D "${ERROR_QA} ${WARN_QA}"
+
+# Inhibit warnings about files being stripped, we can't do anything about =
it.
+INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"
+
+FILES_${PN} =3D "/usr/"
+
+RPROVIDES_${PN} +=3D "java2-runtime"
\ No newline at end of file
diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb b/re=
cipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
index 978fbd5..dae68dc 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
@@ -1,9 +1,9 @@
-PR =3D "r0"
-PV_UPDATE =3D "25"
+PR =3D "r1"
+PV_UPDATE =3D "60"
 require oracle-jse-jdk.inc
-SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-7u25=
-linux-i586.tar.gz"<http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jd=
k-7u25-linux-i586.tar.gz>
+SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u60-b19/jdk-7u60=
-linux-i586.tar.gz"<http://download.oracle.com/otn-pub/java/jdk/7u60-b19/jd=
k-7u60-linux-i586.tar.gz>
-SRC_URI[md5sum] =3D "23176d0ebf9dedd21e3150b4bb0ee776"
-SRC_URI[sha256sum] =3D "dd89b20afa939992bb7fdc44837fa64f0a98d7ee1e5706fe8a=
2d9e2247ba6de7"
+SRC_URI[md5sum] =3D "b33c914b03e46c3e7c33e4bdddbec4bd"
+SRC_URI[sha256sum] =3D "d736fb4fd7c8ef50b76411daa640c6feeb48a5c275d29a90ff=
eb916a78d47a48"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb b/=
recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
index 7979401..3e9ed4f 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
@@ -1,9 +1,9 @@
-PR =3D "r0"
-PV_UPDATE =3D "25"
+PR =3D "r1"
+PV_UPDATE =3D "60"
 require oracle-jse-jdk.inc
-SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-7u25=
-linux-x64.tar.gz"<http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk=
-7u25-linux-x64.tar.gz>
+SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u60-b19/jdk-7u60=
-linux-x64.tar.gz"<http://download.oracle.com/otn-pub/java/jdk/7u60-b19/jdk=
-7u60-linux-x64.tar.gz>
-SRC_URI[md5sum] =3D "83ba05e260813f7a9140b76e3d37ea33"
-SRC_URI[sha256sum] =3D "f80dff0e19ca8d038cf7fe3aaa89538496b80950f4d10ff5f4=
57988ae159b2a6"
+SRC_URI[md5sum] =3D "eba4b121b8a363f583679d7cb2e69d28"
+SRC_URI[sha256sum] =3D "c7232b717573b057dbe828d937ee406b7a75fbc6aba7f1de98=
a049cbd42c6ae8"
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
diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb b/re=
cipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
index 6125025..660e122 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
@@ -1,9 +1,9 @@
-PR =3D "r0"
-PV_UPDATE =3D "25"
+PR =3D "r1"
+PV_UPDATE =3D "60"
 require oracle-jse-jre.inc
-SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre-7u25=
-linux-i586.tar.gz"<http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jr=
e-7u25-linux-i586.tar.gz>
+SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u60-b19/jre-7u60=
-linux-i586.tar.gz"<http://download.oracle.com/otn-pub/java/jdk/7u60-b19/jr=
e-7u60-linux-i586.tar.gz>
-SRC_URI[md5sum] =3D "0e9ccefe49e937e592dbb605f2e8e7d8"
-SRC_URI[sha256sum] =3D "4016965536d8607743267812ab04e6d428036dda432893748c=
1df6cb77b09628"
+SRC_URI[md5sum] =3D "331a7ef8230de0939941d1e9b3b761fd"
+SRC_URI[sha256sum] =3D "76e9c4f7cdd62025fe7004221cdeceabcc3adb2f093fc3ee12=
7d30c95df7277e"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb b/=
recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
index 4058d23..ee192e7 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
@@ -1,9 +1,9 @@
-PR =3D "r0"
-PV_UPDATE =3D "25"
+PR =3D "r1"
+PV_UPDATE =3D "60"
 require oracle-jse-jre.inc
-SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre-7u25=
-linux-x64.tar.gz"<http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre=
-7u25-linux-x64.tar.gz>
+SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u60-b19/jre-7u60=
-linux-x64.tar.gz"<http://download.oracle.com/otn-pub/java/jdk/7u60-b19/jre=
-7u60-linux-x64.tar.gz>
-SRC_URI[md5sum] =3D "743ee0ebf73ce428c912866d84e374e0"
-SRC_URI[sha256sum] =3D "3c4496316fb413d5ab0590e9971676a521b9a600b3ceaac311=
f04c18c98a98c0"
+SRC_URI[md5sum] =3D "53a787c9a3170308641074cd86606a99"
+SRC_URI[sha256sum] =3D "73d6d759f524320671904447f9436ff0e60aa9379cacc08380=
01d6259e86216d"
diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools=
/oracle-java/oracle-jse.inc
index 98069f4..9af8f06 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -2,8 +2,8 @@ LICENSE_FLAGS =3D "oracle_java"
LICENSE =3D "Oracle_Binary_Code_License_Agreement"
LIC_FILES_CHKSUM =3D "\
               file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/LICENSE;md5=
=3D98f46ab6481d87c4d77e0e91a6dbc15f \
-              file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=
=3D3a11238025bf13b87f04753183ffeb90 \
-                file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYL=
ICENSEREADME.txt;md5=3Dc339b34e3da6673d2c5950d0f8808f8c \
+             file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=
=3Dbe9fe5d47a7dcfb78f142f487afb34bb \
+                file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYL=
ICENSEREADME.txt;md5=3Df3a388961d24b8b72d412a079a878cdb \
               "
 # get the java update version in the resulting package
--
1.9.1








--_000_46d0f69a0a0a4a20bf1bf1864248bde2EPBYMINSA0001epamcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body text=3D"#000000" bgcolor=3D"#FFFFFF">
<br>
<div class=3D"moz-forward-container">
<div class=3D"moz-forward-container">
<div class=3D"moz-forward-container">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered=0A=
            medium)">
<style><!--=0A=
/* Font Definitions */=0A=
@font-face=0A=
	{font-family:"Cambria Math";=0A=
	panose-1:2 4 5 3 5 4 6 3 2 4;}=0A=
@font-face=0A=
	{font-family:Calibri;=0A=
	panose-1:2 15 5 2 2 2 4 3 2 4;}=0A=
/* Style Definitions */=0A=
p.MsoNormal, li.MsoNormal, div.MsoNormal=0A=
	{margin:0in;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:11.0pt;=0A=
	font-family:"Calibri","sans-serif";}=0A=
a:link, span.MsoHyperlink=0A=
	{mso-style-priority:99;=0A=
	color:#0563C1;=0A=
	text-decoration:underline;}=0A=
a:visited, span.MsoHyperlinkFollowed=0A=
	{mso-style-priority:99;=0A=
	color:#954F72;=0A=
	text-decoration:underline;}=0A=
span.EmailStyle17=0A=
	{mso-style-type:personal-compose;=0A=
	font-family:"Calibri","sans-serif";=0A=
	color:windowtext;}=0A=
.MsoChpDefault=0A=
	{mso-style-type:export-only;=0A=
	font-family:"Calibri","sans-serif";}=0A=
@page WordSection1=0A=
	{size:8.5in 11.0in;=0A=
	margin:56.7pt 42.5pt 56.7pt 85.05pt;}=0A=
div.WordSection1=0A=
	{page:WordSection1;}=0A=
--></style><!--[if gte mso 9]><xml>=0A=
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />=0A=
</xml><![endif]-->Updated
 oracle jre and jdk recipes to the latest update 60.<o:p></o:p>
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Also added recipe for ejre to support ARM.<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Signed-off-by: Pavel Shumeika <a moz-do-not-send=3D"=
true" class=3D"moz-txt-link-rfc2396E" href=3D"mailto:pavel_shumeika@epam.co=
m">
&lt;pavel_shumeika@epam.com&gt;</a><o:p></o:p></p>
<p class=3D"MsoNormal">---<o:p></o:p></p>
<p class=3D"MsoNormal">.../oracle-java/oracle-jse-ejre-arm_1.7.0.bb&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 8 &#43;&#43;&#43;&#43;&#43;<o:p></o:p>=
</p>
<p class=3D"MsoNormal">recipes-devtools/oracle-java/oracle-jse-ejre.inc&nbs=
p;&nbsp; | 40 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&=
#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">.../oracle-java/oracle-jse-jdk-i586_1.7.0.bb&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; | 10 &#43;&#43;&#43;---<o:p></o:p></p>
<p class=3D"MsoNormal">.../oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb&nbsp;=
&nbsp;&nbsp;&nbsp; | 10 &#43;&#43;&#43;---<o:p></o:p></p>
<p class=3D"MsoNormal">recipes-devtools/oracle-java/oracle-jse-jdk.inc&nbsp=
;&nbsp;&nbsp; |&nbsp; 8 &#43;&#43;&#43;&#43;&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">.../oracle-java/oracle-jse-jre-i586_1.7.0.bb&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; | 10 &#43;&#43;&#43;---<o:p></o:p></p>
<p class=3D"MsoNormal">.../oracle-java/oracle-jse-jre-x86-64_1.7.0.bb&nbsp;=
&nbsp;&nbsp;&nbsp; | 10 &#43;&#43;&#43;---<o:p></o:p></p>
<p class=3D"MsoNormal">recipes-devtools/oracle-java/oracle-jse.inc&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 4 &#43;--<o:p></o:p></p>
<p class=3D"MsoNormal">8 files changed, 78 insertions(&#43;), 22 deletions(=
-)<o:p></o:p></p>
<p class=3D"MsoNormal">create mode 100644 recipes-devtools/oracle-java/orac=
le-jse-ejre-arm_1.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">create mode 100644 recipes-devtools/oracle-java/orac=
le-jse-ejre.inc<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">diff --git a/recipes-devtools/oracle-java/oracle-jse=
-ejre-arm_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-ejre-arm_1.7.0=
.bb<o:p></o:p></p>
<p class=3D"MsoNormal">new file mode 100644<o:p></o:p></p>
<p class=3D"MsoNormal">index 0000000..9b55173<o:p></o:p></p>
<p class=3D"MsoNormal">--- /dev/null<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&#43;&#43; b/recipes-devtools/oracle-java/oracl=
e-jse-ejre-arm_1.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">@@ -0,0 &#43;1,8 @@<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;PV_UPDATE =3D &quot;60&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;require oracle-jse-ejre.inc<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI =3D <a moz-do-not-sen=
d=3D"true" class=3D"moz-txt-link-rfc2396E" href=3D"http://download.oracle.c=
om/otn/java/ejre/7u60-b19/ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headl=
ess-07_may_2014.tar.gz">
&quot;http://download.oracle.com/otn/java/ejre/7u60-b19/ejre-7u60-fcs-b19-l=
inux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz&quot;</a><o:p></o:p></=
span></p>
<p class=3D"MsoNormal">&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;SRC_URI[md5sum] =3D &quot;b9b8f598b0a7f49e4d221=
f16ba25c6c0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;SRC_URI[sha256sum] =3D &quot;ed061060011d88efe5=
563c2949c00993db85db17ab94f18a78713007a2b90faf&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">diff --git a/recipes-devtools/oracle-java/oracle-jse=
-ejre.inc b/recipes-devtools/oracle-java/oracle-jse-ejre.inc<o:p></o:p></p>
<p class=3D"MsoNormal">new file mode 100644<o:p></o:p></p>
<p class=3D"MsoNormal">index 0000000..1731055<o:p></o:p></p>
<p class=3D"MsoNormal">--- /dev/null<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&#43;&#43; b/recipes-devtools/oracle-java/oracl=
e-jse-ejre.inc<o:p></o:p></p>
<p class=3D"MsoNormal">@@ -0,0 &#43;1,40 @@<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;SUMMARY =3D &quot;Oracle Java SE runtime enviro=
nment binaries&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;DESCRIPTION =3D &quot;This is the proprietary J=
RE from Sun/Oracle, with the Hotspot JVM. It is\<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; provided by Sun/Oracle only in binary format.\=
<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; Java Platform, Standard Edition (Java SE) lets=
 you develop and deploy Java\<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; applications on desktops and servers, as well =
as in today's demanding\<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; embedded environments. Java offers the rich us=
er interface, performance,\<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; versatility, portability, and security that to=
day's applications require.\<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; The JRE (Java Runtime Environment) is needed o=
n a system to run Java\<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; applications and applets&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;JDK_JRE =3D &quot;ejre&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;LICENSE_FLAGS =3D &quot;oracle_java&quot;<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&#43;LICENSE =3D &quot;Oracle_Binary_Code_License_Ag=
reement&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;LIC_FILES_CHKSUM =3D &quot;\<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; <a moz-do-not-send=3D"true" class=3D"moz-txt-link=
-freetext" href=3D"file://$">
file://$</a>{WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3Dbe9fe5d4=
7a7dcfb78f142f487afb34bb \<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a moz-do-not-send=3D"true" cla=
ss=3D"moz-txt-link-freetext" href=3D"file://$">
file://$</a>{WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.=
txt;md5=3Df3a388961d24b8b72d412a079a878cdb \<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; &quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;# get the java update version in the resulting =
package<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;PR =3D. &quot;u${PV_UPDATE}&quot;<o:p></o:p></p=
>
<p class=3D"MsoNormal">&#43;S =3D &quot;${WORKDIR}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;do_install () {<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; install -d -m 0755&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; ${D}/usr/${JDK_JRE}${PV}_${PV_UPDATE}<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE}&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${D}/usr/<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; ln -sf ${JDK_JRE}${PV}_${PV_UPDATE}&nbsp; ${D}/us=
r/java<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;}<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;# All the files are provided in a binaray packa=
ge, and keeping all the<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;# files in a single package causes packaging QA=
 errors and warnings.<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;# Avoid these packaging failure by skiping all =
the QA checks<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;INSANE_SKIP_${PN} =3D &quot;${ERROR_QA} ${WARN_=
QA}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;# Inhibit warnings about files being stripped, =
we can't do anything about it.<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;INHIBIT_PACKAGE_DEBUG_SPLIT =3D &quot;1&quot;<o=
:p></o:p></p>
<p class=3D"MsoNormal">&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;FILES_${PN} =3D &quot;/usr/&quot;<o:p></o:p></p=
>
<p class=3D"MsoNormal">&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;RPROVIDES_${PN} &#43;=3D &quot;java2-runtime&qu=
ot;<o:p></o:p></p>
<p class=3D"MsoNormal">\ No newline at end of file<o:p></o:p></p>
<p class=3D"MsoNormal">diff --git a/recipes-devtools/oracle-java/oracle-jse=
-jdk-i586_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0=
.bb<o:p></o:p></p>
<p class=3D"MsoNormal">index 978fbd5..dae68dc 100644<o:p></o:p></p>
<p class=3D"MsoNormal">--- a/recipes-devtools/oracle-java/oracle-jse-jdk-i5=
86_1.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&#43;&#43; b/recipes-devtools/oracle-java/oracl=
e-jse-jdk-i586_1.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">@@ -1,9 &#43;1,9 @@<o:p></o:p></p>
<p class=3D"MsoNormal">-PR =3D &quot;r0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">-PV_UPDATE =3D &quot;25&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;PR =3D &quot;r1&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;PV_UPDATE =3D &quot;60&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;require oracle-jse-jdk.inc<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI =3D <a moz-do-not-send=3D=
"true" class=3D"moz-txt-link-rfc2396E" href=3D"http://download.oracle.com/o=
tn-pub/java/jdk/7u25-b15/jdk-7u25-linux-i586.tar.gz">
&quot;http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-7u25-linux-i=
586.tar.gz&quot;</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI =3D <a moz-do-not-sen=
d=3D"true" class=3D"moz-txt-link-rfc2396E" href=3D"http://download.oracle.c=
om/otn-pub/java/jdk/7u60-b19/jdk-7u60-linux-i586.tar.gz">
&quot;http://download.oracle.com/otn-pub/java/jdk/7u60-b19/jdk-7u60-linux-i=
586.tar.gz&quot;</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI[md5sum] =3D &quot;23176d0=
ebf9dedd21e3150b4bb0ee776&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI[sha256sum] =3D &quot;dd89=
b20afa939992bb7fdc44837fa64f0a98d7ee1e5706fe8a2d9e2247ba6de7&quot;<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI[md5sum] =3D &quot;b33=
c914b03e46c3e7c33e4bdddbec4bd&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI[sha256sum] =3D &quot;=
d736fb4fd7c8ef50b76411daa640c6feeb48a5c275d29a90ffeb916a78d47a48&quot;<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal">diff --git a/recipes-devtools/oracle-java/oracle-jse=
-jdk-x86-64_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1=
.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">index 7979401..3e9ed4f 100644<o:p></o:p></p>
<p class=3D"MsoNormal">--- a/recipes-devtools/oracle-java/oracle-jse-jdk-x8=
6-64_1.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&#43;&#43; b/recipes-devtools/oracle-java/oracl=
e-jse-jdk-x86-64_1.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">@@ -1,9 &#43;1,9 @@<o:p></o:p></p>
<p class=3D"MsoNormal">-PR =3D &quot;r0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">-PV_UPDATE =3D &quot;25&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;PR =3D &quot;r1&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;PV_UPDATE =3D &quot;60&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;require oracle-jse-jdk.inc<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI =3D <a moz-do-not-send=3D=
"true" class=3D"moz-txt-link-rfc2396E" href=3D"http://download.oracle.com/o=
tn-pub/java/jdk/7u25-b15/jdk-7u25-linux-x64.tar.gz">
&quot;http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-7u25-linux-x=
64.tar.gz&quot;</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI =3D <a moz-do-not-sen=
d=3D"true" class=3D"moz-txt-link-rfc2396E" href=3D"http://download.oracle.c=
om/otn-pub/java/jdk/7u60-b19/jdk-7u60-linux-x64.tar.gz">
&quot;http://download.oracle.com/otn-pub/java/jdk/7u60-b19/jdk-7u60-linux-x=
64.tar.gz&quot;</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI[md5sum] =3D &quot;83ba05e=
260813f7a9140b76e3d37ea33&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI[sha256sum] =3D &quot;f80d=
ff0e19ca8d038cf7fe3aaa89538496b80950f4d10ff5f457988ae159b2a6&quot;<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI[md5sum] =3D &quot;eba=
4b121b8a363f583679d7cb2e69d28&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI[sha256sum] =3D &quot;=
c7232b717573b057dbe828d937ee406b7a75fbc6aba7f1de98a049cbd42c6ae8&quot;<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal">diff --git a/recipes-devtools/oracle-java/oracle-jse=
-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc<o:p></o:p></p>
<p class=3D"MsoNormal">index 6a34a7a..de0870a 100644<o:p></o:p></p>
<p class=3D"MsoNormal">--- a/recipes-devtools/oracle-java/oracle-jse-jdk.in=
c<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&#43;&#43; b/recipes-devtools/oracle-java/oracl=
e-jse-jdk.inc<o:p></o:p></p>
<p class=3D"MsoNormal">@@ -10,3 &#43;10,11 @@ DESCRIPTION =3D &quot;This is=
 the proprietary JDK from Sun/Oracle, with the Hotspot JVM<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;JDK_JRE =3D &quot;jdk&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">require oracle-jse.inc<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;do_install_class-native() {<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&nbsp;&nbsp;&nbsp; install -d -m 0755&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${D}${bindir}/${JDK_JRE}${PV}_${P=
V_UPDATE}<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&nbsp;&nbsp;&nbsp; cp -a ${S}/${JDK_JRE}${PV}_$=
{PV_UPDATE} ${D}${bindir}/<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&nbsp;&nbsp;&nbsp; ln -sf ${JDK_JRE}${PV}_${PV_=
UPDATE}&nbsp;&nbsp;&nbsp;&nbsp; ${D}${bindir}/java<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;}<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;BBCLASSEXTEND =3D &quot;native&quot;<o:p></o:p>=
</p>
<p class=3D"MsoNormal">diff --git a/recipes-devtools/oracle-java/oracle-jse=
-jre-i586_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0=
.bb<o:p></o:p></p>
<p class=3D"MsoNormal">index 6125025..660e122 100644<o:p></o:p></p>
<p class=3D"MsoNormal">--- a/recipes-devtools/oracle-java/oracle-jse-jre-i5=
86_1.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&#43;&#43; b/recipes-devtools/oracle-java/oracl=
e-jse-jre-i586_1.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">@@ -1,9 &#43;1,9 @@<o:p></o:p></p>
<p class=3D"MsoNormal">-PR =3D &quot;r0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">-PV_UPDATE =3D &quot;25&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;PR =3D &quot;r1&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;PV_UPDATE =3D &quot;60&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;require oracle-jse-jre.inc<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI =3D <a moz-do-not-send=3D=
"true" class=3D"moz-txt-link-rfc2396E" href=3D"http://download.oracle.com/o=
tn-pub/java/jdk/7u25-b15/jre-7u25-linux-i586.tar.gz">
&quot;http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre-7u25-linux-i=
586.tar.gz&quot;</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI =3D <a moz-do-not-sen=
d=3D"true" class=3D"moz-txt-link-rfc2396E" href=3D"http://download.oracle.c=
om/otn-pub/java/jdk/7u60-b19/jre-7u60-linux-i586.tar.gz">
&quot;http://download.oracle.com/otn-pub/java/jdk/7u60-b19/jre-7u60-linux-i=
586.tar.gz&quot;</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI[md5sum] =3D &quot;0e9ccef=
e49e937e592dbb605f2e8e7d8&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI[sha256sum] =3D &quot;4016=
965536d8607743267812ab04e6d428036dda432893748c1df6cb77b09628&quot;<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI[md5sum] =3D &quot;331=
a7ef8230de0939941d1e9b3b761fd&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI[sha256sum] =3D &quot;=
76e9c4f7cdd62025fe7004221cdeceabcc3adb2f093fc3ee127d30c95df7277e&quot;<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal">diff --git a/recipes-devtools/oracle-java/oracle-jse=
-jre-x86-64_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1=
.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">index 4058d23..ee192e7 100644<o:p></o:p></p>
<p class=3D"MsoNormal">--- a/recipes-devtools/oracle-java/oracle-jse-jre-x8=
6-64_1.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&#43;&#43; b/recipes-devtools/oracle-java/oracl=
e-jse-jre-x86-64_1.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">@@ -1,9 &#43;1,9 @@<o:p></o:p></p>
<p class=3D"MsoNormal">-PR =3D &quot;r0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">-PV_UPDATE =3D &quot;25&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;PR =3D &quot;r1&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;PV_UPDATE =3D &quot;60&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;require oracle-jse-jre.inc<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI =3D <a moz-do-not-send=3D=
"true" class=3D"moz-txt-link-rfc2396E" href=3D"http://download.oracle.com/o=
tn-pub/java/jdk/7u25-b15/jre-7u25-linux-x64.tar.gz">
&quot;http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre-7u25-linux-x=
64.tar.gz&quot;</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI =3D <a moz-do-not-sen=
d=3D"true" class=3D"moz-txt-link-rfc2396E" href=3D"http://download.oracle.c=
om/otn-pub/java/jdk/7u60-b19/jre-7u60-linux-x64.tar.gz">
&quot;http://download.oracle.com/otn-pub/java/jdk/7u60-b19/jre-7u60-linux-x=
64.tar.gz&quot;</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal">-SRC_URI[md5sum] =3D &quot;743ee0ebf73ce428c912866d8=
4e374e0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">-SRC_URI[sha256sum] =3D &quot;3c4496316fb413d5ab0590=
e9971676a521b9a600b3ceaac311f04c18c98a98c0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;SRC_URI[md5sum] =3D &quot;53a787c9a317030864107=
4cd86606a99&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;SRC_URI[sha256sum] =3D &quot;73d6d759f524320671=
904447f9436ff0e60aa9379cacc0838001d6259e86216d&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">diff --git a/recipes-devtools/oracle-java/oracle-jse=
.inc b/recipes-devtools/oracle-java/oracle-jse.inc<o:p></o:p></p>
<p class=3D"MsoNormal">index 98069f4..9af8f06 100644<o:p></o:p></p>
<p class=3D"MsoNormal">--- a/recipes-devtools/oracle-java/oracle-jse.inc<o:=
p></o:p></p>
<p class=3D"MsoNormal">&#43;&#43;&#43; b/recipes-devtools/oracle-java/oracl=
e-jse.inc<o:p></o:p></p>
<p class=3D"MsoNormal">@@ -2,8 &#43;2,8 @@ LICENSE_FLAGS =3D &quot;oracle_j=
ava&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">LICENSE =3D &quot;Oracle_Binary_Code_License_Agreeme=
nt&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">LIC_FILES_CHKSUM =3D &quot;\<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a moz-do-not-send=3D"true" class=3D"moz-t=
xt-link-freetext" href=3D"file://$">
file://$</a>{WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/LICENSE;md5=3D98f46ab648=
1d87c4d77e0e91a6dbc15f \<o:p></o:p></p>
<p class=3D"MsoNormal">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; <a moz-do-not-send=3D"true" class=3D"moz-txt-li=
nk-freetext" href=3D"file://$">
file://$</a>{WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3D3a112380=
25bf13b87f04753183ffeb90 \<o:p></o:p></p>
<p class=3D"MsoNormal">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a moz-do-not-send=3D"true" class=
=3D"moz-txt-link-freetext" href=3D"file://$">
file://$</a>{WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.=
txt;md5=3Dc339b34e3da6673d2c5950d0f8808f8c \<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; <a moz-do-not-send=3D"true" class=3D"moz-txt-link=
-freetext" href=3D"file://$">
file://$</a>{WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3Dbe9fe5d4=
7a7dcfb78f142f487afb34bb \<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a moz-do-not-send=3D"true" cla=
ss=3D"moz-txt-link-freetext" href=3D"file://$">
file://$</a>{WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.=
txt;md5=3Df3a388961d24b8b72d412a079a878cdb \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;# get the java update version in the resulting=
 package<o:p></o:p></p>
<p class=3D"MsoNormal">-- <o:p></o:p></p>
<p class=3D"MsoNormal">1.9.1<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br>
</div>
<br>
<br>
</div>
<br>
<br>
</div>
<br>
</body>
</html>

--_000_46d0f69a0a0a4a20bf1bf1864248bde2EPBYMINSA0001epamcom_--
