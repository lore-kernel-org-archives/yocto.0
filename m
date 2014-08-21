Return-Path: <Vladimir_Redzhepov@epam.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D7A5E00844; Thu, 21 Aug 2014 10:02:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from EVBYMINSA0101.epam.com (evbyminsa0101.epam.com [217.21.63.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68C6BE0044A
	for <yocto@yoctoproject.org>; Thu, 21 Aug 2014 10:02:09 -0700 (PDT)
Received: from EPBYMINSA0001.epam.com (10.6.110.2) by EPBYMINSA0032.epam.com
	(10.6.110.32) with Microsoft SMTP Server (TLS) id 15.0.913.22;
	Thu, 21 Aug 2014 20:01:49 +0300
Received: from EPBYMINSA0001.epam.com ([::1]) by EPBYMINSA0001.epam.com
	([::1]) with mapi id 15.00.0913.011; Thu, 21 Aug 2014 20:01:48 +0300
From: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-oracle-java][PATCH] update jdk and jre to version 67
Thread-Index: Ac+9YY3bnY/5oSRDTvaNMMXDx9AUuw==
Date: Thu, 21 Aug 2014 17:01:47 +0000
Message-ID: <35e32346a105465791b484fe34a2a011@EPBYMINSA0001.epam.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.6.162.121]
MIME-Version: 1.0
Subject: [meta-oracle-java][PATCH] update jdk and jre to version 67
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
X-List-Received-Date: Thu, 21 Aug 2014 17:02:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_35e32346a105465791b484fe34a2a011EPBYMINSA0001epamcom_"

--_000_35e32346a105465791b484fe34a2a011EPBYMINSA0001epamcom_
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

From f0305398a51435f407e41a8f0eaf83f8bdd13cca Mon Sep 17 00:00:00 2001
From: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
Date: Thu, 21 Aug 2014 19:43:29 +0300
Subject: [PATCH] update jdk and jre to version 67

Signed-off-by: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
---
recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb   | 10 +++++-----
recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb | 10 +++++-----
recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb   | 10 +++++-----
recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb | 10 +++++-----
recipes-devtools/oracle-java/oracle-jse.inc                 |  4 ++--
5 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb b/re=
cipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
index 978fbd5..07fa39b 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
@@ -1,9 +1,9 @@
-PR =3D "r0"
-PV_UPDATE =3D "25"
+PR =3D "r1"
+PV_UPDATE =3D "67"
 require oracle-jse-jdk.inc
-SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-7u25=
-linux-i586.tar.gz"
+SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u67-b01/jdk-7u67=
-linux-i586.tar.gz"
-SRC_URI[md5sum] =3D "23176d0ebf9dedd21e3150b4bb0ee776"
-SRC_URI[sha256sum] =3D "dd89b20afa939992bb7fdc44837fa64f0a98d7ee1e5706fe8a=
2d9e2247ba6de7"
+SRC_URI[md5sum] =3D "715b0e8ba2a06bded75f6a92427e2701"
+SRC_URI[sha256sum] =3D "b6231064ad2c9fbbcb099dba17b1dcf12033e922b9c24e4348=
b9a01e9ebaa85c"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb b/=
recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
index 7979401..8bad119 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
@@ -1,9 +1,9 @@
-PR =3D "r0"
-PV_UPDATE =3D "25"
+PR =3D "r1"
+PV_UPDATE =3D "67"
 require oracle-jse-jdk.inc
-SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-7u25=
-linux-x64.tar.gz"
+SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u67-b01/jdk-7u67=
-linux-x64.tar.gz"
-SRC_URI[md5sum] =3D "83ba05e260813f7a9140b76e3d37ea33"
-SRC_URI[sha256sum] =3D "f80dff0e19ca8d038cf7fe3aaa89538496b80950f4d10ff5f4=
57988ae159b2a6"
+SRC_URI[md5sum] =3D "81e3e2df33e13781e5fac5756ed90e67"
+SRC_URI[sha256sum] =3D "54dd1e13edf18c64941a55da9c91210b53dc5cf48f1a8f4538=
c863049e346335"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb b/re=
cipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
index 6125025..4165d74 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
@@ -1,9 +1,9 @@
-PR =3D "r0"
-PV_UPDATE =3D "25"
+PR =3D "r1"
+PV_UPDATE =3D "67"
 require oracle-jse-jre.inc
-SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre-7u25=
-linux-i586.tar.gz"
+SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u67-b01/jre-7u67=
-linux-i586.tar.gz"
-SRC_URI[md5sum] =3D "0e9ccefe49e937e592dbb605f2e8e7d8"
-SRC_URI[sha256sum] =3D "4016965536d8607743267812ab04e6d428036dda432893748c=
1df6cb77b09628"
+SRC_URI[md5sum] =3D "2a256eb2a91f0084e58c612636342c2b"
+SRC_URI[sha256sum] =3D "eadec83a54d3a9d09248a8d16b21c03da9afffc7317e775fb8=
db962620a0781d"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb b/=
recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
index 4058d23..a1474a9 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
@@ -1,9 +1,9 @@
-PR =3D "r0"
-PV_UPDATE =3D "25"
+PR =3D "r1"
+PV_UPDATE =3D "67"
 require oracle-jse-jre.inc
-SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre-7u25=
-linux-x64.tar.gz"
+SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u67-b01/jre-7u67=
-linux-x64.tar.gz"
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
 FETCHCMD_wget_append =3D " --header=3DCookie:oraclelicense=3Da "
--
2.1.0


--_000_35e32346a105465791b484fe34a2a011EPBYMINSA0001epamcom_
Content-Type: text/html; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dkoi8-r">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:56.7pt 42.5pt 56.7pt 85.05pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">From f0305398a51435f407e41a8f0eaf83f8bdd13cca Mon Se=
p 17 00:00:00 2001<o:p></o:p></p>
<p class=3D"MsoNormal">From: Vladimir Redzhepov &lt;vladimir_redzhepov@epam=
.com&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">Date: Thu, 21 Aug 2014 19:43:29 &#43;0300<o:p></o:p>=
</p>
<p class=3D"MsoNormal">Subject: [PATCH] update jdk and jre to version 67<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Signed-off-by: Vladimir Redzhepov &lt;vladimir_redzh=
epov@epam.com&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">---<o:p></o:p></p>
<p class=3D"MsoNormal">recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7=
.0.bb&nbsp;&nbsp; | 10 &#43;&#43;&#43;&#43;&#43;-----<o:p></o:p></p>
<p class=3D"MsoNormal">recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1=
.7.0.bb | 10 &#43;&#43;&#43;&#43;&#43;-----<o:p></o:p></p>
<p class=3D"MsoNormal">recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7=
.0.bb&nbsp;&nbsp; | 10 &#43;&#43;&#43;&#43;&#43;-----<o:p></o:p></p>
<p class=3D"MsoNormal">recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1=
.7.0.bb | 10 &#43;&#43;&#43;&#43;&#43;-----<o:p></o:p></p>
<p class=3D"MsoNormal">recipes-devtools/oracle-java/oracle-jse.inc&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; |&nbsp; 4 &#43;&#43;--<o:p></o:p></p>
<p class=3D"MsoNormal">5 files changed, 22 insertions(&#43;), 22 deletions(=
-)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">diff --git a/recipes-devtools/oracle-java/oracle-jse=
-jdk-i586_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0=
.bb<o:p></o:p></p>
<p class=3D"MsoNormal">index 978fbd5..07fa39b 100644<o:p></o:p></p>
<p class=3D"MsoNormal">--- a/recipes-devtools/oracle-java/oracle-jse-jdk-i5=
86_1.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&#43;&#43; b/recipes-devtools/oracle-java/oracl=
e-jse-jdk-i586_1.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">@@ -1,9 &#43;1,9 @@<o:p></o:p></p>
<p class=3D"MsoNormal">-PR =3D &quot;r0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">-PV_UPDATE =3D &quot;25&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;PR =3D &quot;r1&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;PV_UPDATE =3D &quot;67&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;require oracle-jse-jdk.inc<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI =3D &quot;http://download=
.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-7u25-linux-i586.tar.gz&quot;<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI =3D &quot;http://down=
load.oracle.com/otn-pub/java/jdk/7u67-b01/jdk-7u67-linux-i586.tar.gz&quot;<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI[md5sum] =3D &quot;23176d0=
ebf9dedd21e3150b4bb0ee776&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI[sha256sum] =3D &quot;dd89=
b20afa939992bb7fdc44837fa64f0a98d7ee1e5706fe8a2d9e2247ba6de7&quot;<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI[md5sum] =3D &quot;715=
b0e8ba2a06bded75f6a92427e2701&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI[sha256sum] =3D &quot;=
b6231064ad2c9fbbcb099dba17b1dcf12033e922b9c24e4348b9a01e9ebaa85c&quot;<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal">diff --git a/recipes-devtools/oracle-java/oracle-jse=
-jdk-x86-64_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1=
.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">index 7979401..8bad119 100644<o:p></o:p></p>
<p class=3D"MsoNormal">--- a/recipes-devtools/oracle-java/oracle-jse-jdk-x8=
6-64_1.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&#43;&#43; b/recipes-devtools/oracle-java/oracl=
e-jse-jdk-x86-64_1.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">@@ -1,9 &#43;1,9 @@<o:p></o:p></p>
<p class=3D"MsoNormal">-PR =3D &quot;r0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">-PV_UPDATE =3D &quot;25&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;PR =3D &quot;r1&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;PV_UPDATE =3D &quot;67&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;require oracle-jse-jdk.inc<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI =3D &quot;http://download=
.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-7u25-linux-x64.tar.gz&quot;<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI =3D &quot;http://down=
load.oracle.com/otn-pub/java/jdk/7u67-b01/jdk-7u67-linux-x64.tar.gz&quot;<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI[md5sum] =3D &quot;83ba05e=
260813f7a9140b76e3d37ea33&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI[sha256sum] =3D &quot;f80d=
ff0e19ca8d038cf7fe3aaa89538496b80950f4d10ff5f457988ae159b2a6&quot;<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI[md5sum] =3D &quot;81e=
3e2df33e13781e5fac5756ed90e67&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI[sha256sum] =3D &quot;=
54dd1e13edf18c64941a55da9c91210b53dc5cf48f1a8f4538c863049e346335&quot;<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal">diff --git a/recipes-devtools/oracle-java/oracle-jse=
-jre-i586_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0=
.bb<o:p></o:p></p>
<p class=3D"MsoNormal">index 6125025..4165d74 100644<o:p></o:p></p>
<p class=3D"MsoNormal">--- a/recipes-devtools/oracle-java/oracle-jse-jre-i5=
86_1.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&#43;&#43; b/recipes-devtools/oracle-java/oracl=
e-jse-jre-i586_1.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">@@ -1,9 &#43;1,9 @@<o:p></o:p></p>
<p class=3D"MsoNormal">-PR =3D &quot;r0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">-PV_UPDATE =3D &quot;25&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;PR =3D &quot;r1&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;PV_UPDATE =3D &quot;67&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;require oracle-jse-jre.inc<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI =3D &quot;http://download=
.oracle.com/otn-pub/java/jdk/7u25-b15/jre-7u25-linux-i586.tar.gz&quot;<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI =3D &quot;http://down=
load.oracle.com/otn-pub/java/jdk/7u67-b01/jre-7u67-linux-i586.tar.gz&quot;<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI[md5sum] =3D &quot;0e9ccef=
e49e937e592dbb605f2e8e7d8&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI[sha256sum] =3D &quot;4016=
965536d8607743267812ab04e6d428036dda432893748c1df6cb77b09628&quot;<o:p></o:=
p></span></p>
<p class=3D"MsoNormal">&#43;SRC_URI[md5sum] =3D &quot;2a256eb2a91f0084e58c6=
12636342c2b&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;SRC_URI[sha256sum] =3D &quot;eadec83a54d3a9d092=
48a8d16b21c03da9afffc7317e775fb8db962620a0781d&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">diff --git a/recipes-devtools/oracle-java/oracle-jse=
-jre-x86-64_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1=
.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">index 4058d23..a1474a9 100644<o:p></o:p></p>
<p class=3D"MsoNormal">--- a/recipes-devtools/oracle-java/oracle-jse-jre-x8=
6-64_1.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&#43;&#43; b/recipes-devtools/oracle-java/oracl=
e-jse-jre-x86-64_1.7.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">@@ -1,9 &#43;1,9 @@<o:p></o:p></p>
<p class=3D"MsoNormal">-PR =3D &quot;r0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">-PV_UPDATE =3D &quot;25&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;PR =3D &quot;r1&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;PV_UPDATE =3D &quot;67&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;require oracle-jse-jre.inc<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI =3D &quot;http://download=
.oracle.com/otn-pub/java/jdk/7u25-b15/jre-7u25-linux-x64.tar.gz&quot;<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI =3D &quot;http://down=
load.oracle.com/otn-pub/java/jdk/7u67-b01/jre-7u67-linux-x64.tar.gz&quot;<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI[md5sum] =3D &quot;743ee0e=
bf73ce428c912866d84e374e0&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">-SRC_URI[sha256sum] =3D &quot;3c44=
96316fb413d5ab0590e9971676a521b9a600b3ceaac311f04c18c98a98c0&quot;<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&#43;SRC_URI[md5sum] =3D &quot;900=
7c79167be0177fb47e5313c53d5cb&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal">&#43;SRC_URI[sha256sum] =3D &quot;726c37c07bb389b5b9=
6674b7bcbc288e39fb8fbcd42369afa364a18e66248b1f&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">diff --git a/recipes-devtools/oracle-java/oracle-jse=
.inc b/recipes-devtools/oracle-java/oracle-jse.inc<o:p></o:p></p>
<p class=3D"MsoNormal">index 3a4e20d..38ceef0 100644<o:p></o:p></p>
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
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPD=
ATE}/LICENSE;md5=3D98f46ab6481d87c4d77e0e91a6dbc15f \<o:p></o:p></p>
<p class=3D"MsoNormal">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/=
COPYRIGHT;md5=3D3a11238025bf13b87f04753183ffeb90 \<o:p></o:p></p>
<p class=3D"MsoNormal">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://${WORKDIR}/${JDK_JRE}${PV}_$=
{PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=3Dc339b34e3da6673d2c5950d0f8808=
f8c \<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/CO=
PYRIGHT;md5=3Dbe9fe5d47a7dcfb78f142f487afb34bb \<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://${WORKDIR}/${JDK_JRE}${P=
V}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=3Df3a388961d24b8b72d412a079=
a878cdb \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;FETCHCMD_wget_append =3D &quot; --header=3DCoo=
kie:oraclelicense=3Da &quot;<o:p></o:p></p>
<p class=3D"MsoNormal">-- <o:p></o:p></p>
<p class=3D"MsoNormal">2.1.0<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_35e32346a105465791b484fe34a2a011EPBYMINSA0001epamcom_--
