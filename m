Return-Path: <natalia_th92@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75085E00C7B; Wed, 12 Jul 2017 00:05:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (natalia_th92[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.72.65 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 14346 seconds by postgrey-1.32 at yocto-www;
	Wed, 12 Jul 2017 00:05:39 PDT
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
	(mail-oln040092072065.outbound.protection.outlook.com [40.92.72.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C113E00C3E
	for <yocto@yoctoproject.org>; Wed, 12 Jul 2017 00:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=HkPwPkTpMi3ocS3fDMYdS0yUGUCj1d/dpVbWkcFrwpQ=;
	b=QdUVtwSk0foaDyGQl5i9Z16LkEq7uhLUIY9sZOIThPatI9355VXMJL8x/urYDP9QHLhAruwcnfJssKNVhJ6FXa/srn9lQhafjszSDZ7Vftz/mlnITDkr78reLATyTkgTIZNaAEYi8Zzz19XxU0rAceXGUecQz+qDsRGesz6bm6+qKNpqXv23sh5/kukYRsWoIDKW0LmQpBWA4cc12JtOJ9GOY5UDWNwowgUvD8gx47FnHAcp7CENJVpIwPGlqbFGUUaNzbDmBO8EMC3XUCRMGe8ykboucV69iTMY4Z9brznp0P69rtxoXLwHyYE/sBN7c9Y8DictJhcoK7U6Zl6Vrw==
Received: from VE1EUR03FT061.eop-EUR03.prod.protection.outlook.com
	(10.152.18.54) by VE1EUR03HT068.eop-EUR03.prod.protection.outlook.com
	(10.152.18.206) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1220.9;
	Tue, 11 Jul 2017 18:31:33 +0000
Received: from VI1PR0502MB2941.eurprd05.prod.outlook.com (10.152.18.56) by
	VE1EUR03FT061.mail.protection.outlook.com (10.152.19.220) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1220.9 via Frontend Transport; Tue, 11 Jul 2017 18:31:34 +0000
Received: from VI1PR0502MB2941.eurprd05.prod.outlook.com
	([fe80::dfb:f758:23fd:e9b2]) by
	VI1PR0502MB2941.eurprd05.prod.outlook.com
	([fe80::dfb:f758:23fd:e9b2%14]) with mapi id 15.01.1240.020;
	Tue, 11 Jul 2017 18:31:33 +0000
From: Natalia Theologou <natalia_th92@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Problem bitbaking <custom>server.cpp (Iotivity) in Yocto 
Thread-Index: AQHS+nPr279dyyWO/EuMovkVJBOiJw==
Date: Tue, 11 Jul 2017 18:31:33 +0000
Message-ID: <VI1PR0502MB2941F4BDF0DF02AD5A198E80F9AE0@VI1PR0502MB2941.eurprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:7CB70158B797F7A9F125C1CBC116204992B70E30CC94298F48EE823A7EBEE6D4;
	UpperCasedChecksum:93A5780899FCE98B6A30CE0BC96A45BB9CAA298CA8990420A2EE8EAFE8CEE354;
	SizeAsReceived:7143; Count:43
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [WQmkJaVWCI+EFWMxU+DaWDzXTK2EgjBF]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VE1EUR03HT068;
	7:wAMs1jnZ4/dmicO1S3XhF6LKcgkENzeKaXldr8XDTBXmxT1toVXiTI2Rnl0VgekBDs4hNjv6gkyGRoa5w0pu+KYVLsHedWB5ZvEMvlagn5fm+JTwruRtA8FIM/2bfBr/wK+XT2uZzbXISSabkkVQQ0+Vza2x/74oPSG3NsZ39pt4Sy0dnOAvxUNAmX8zzS9hA3oDJrcQal/VGs1gYZcLKAuoEncCOUUg+CH3ZGQzTKeriRr2WAqcltH+EesVq6wRzpqZDHPAO2HPV9SCjWtaBEaSCFHg3cbeKLW3upv0cF0Uxa1OOqrYfqtBEB/eVkFaPJ7jcuOVB5XJ6enK8huOX9IoqsYMoi7Jlruu3DLqjaqpcR8U9WDhEUS1vLS3tZr/B4J4FYE47umUrLcV7cDSPv0JhFMEmqFoqUPWskdehQg/0+GO55CCPznFaZ4SPRaUo70WP35C9CsKJi9b/Usr/uMtY0esLKzlCSAsKwLfkA9nxoekPd7i63ADrSXC5PwA+oZaWAior9HNcmPdYu7Y3YJ6gtmH4lGNPWgKNBQuv+RtIhVG+tWl7/MjUVJPyU9qLUl4VA8AHwU1jrw03fK/EXwPxgvDYA7YSUcRS84VtqQhCxP95uUxWlu6QGYzV+JTcG8/dFSEgbunq3NtKg6r0/3Dz4DVGki2UBF0s2M5gjI7MaYIjgXXk+A76ox/uT6VdZtCR3P54oJ1fE0kWLEaTs+aiThWamE/PIVH0YdUkRJbD4FKUNUFghrTKV31KhuEVNCKC4YVo/W45HQvlo+dfg==
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:VE1EUR03HT068;
	H:VI1PR0502MB2941.eurprd05.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: fe89f864-24ea-40df-6197-08d4c88b0ebc
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(300000503095)(300135400095)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322274)(1603101448)(1601125374)(1701031045)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:VE1EUR03HT068; 
x-ms-traffictypediagnostic: VE1EUR03HT068:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(444000031);
	SRVR:VE1EUR03HT068; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:VE1EUR03HT068; 
x-forefront-prvs: 0365C0E14B
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2017 18:31:33.8224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT068
Subject: Problem bitbaking <custom>server.cpp (Iotivity) in Yocto
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
X-List-Received-Date: Wed, 12 Jul 2017 07:05:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0502MB2941F4BDF0DF02AD5A198E80F9AE0VI1PR0502MB2941_"

--_000_VI1PR0502MB2941F4BDF0DF02AD5A198E80F9AE0VI1PR0502MB2941_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello all,


I have also sent this email to iotivity list.

I am following the template of iotivity-simple-client inside recipes-apps i=
n order to bitbake my custom simple server and simple client.

The client succeeds in bitbaking but the server has the errors:


Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 1 -e MAKEFLAGS=3D
| arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-ab=
i=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a9 -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl=
,--as-needed --sysroot=3D/home/natalia/Downloads/release-bsp/build/tmp/sysr=
oots/imx6dlsabreauto  -O2 -pipe -g -feliminate-unused-debug-types -fvisibil=
ity-inlines-hidden   -c -o nickserver.o nickserver.cpp
| In file included from /home/natalia/Downloads/release-bsp/build/tmp/sysro=
ots/imx6dlsabreauto/usr/include/c++/mutex:35:0,
|                  from nickserver.cpp:34:
| /home/natalia/Downloads/release-bsp/build/tmp/sysroots/imx6dlsabreauto/us=
r/include/c++/bits/c++0x_warning.h:32:2: error: #error This file requires c=
ompiler and library support for the ISO C++ 2011 standard. This support is =
currently experimental, and must be enabled with the -std=3Dc++11 or -std=
=3Dgnu++11 compiler options.
|  #error This file requires compiler and library support for the \
|   ^
| nickserver.cpp:38:19: fatal error: OCApi.h: No such file or directory
|  #include <OCApi.h>
|                    ^
| compilation terminated.
| make: *** [nickserver.o] Error 1
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at /home/natalia/=
Downloads/release-bsp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi=
/iotivity-nick-server/1.0-r0/temp/log.do_compile.26572)
ERROR: Task 6 (/home/natalia/Downloads/release-bsp/sources/meta-oic/recipes=
-apps/iotivity-nick-server/iotivity-nick-server.bb, do_compile) failed with=
 exit code '1'



My .bb file is as follows:



SUMMARY =3D "Iotivity Simple server"
DESCRIPTION =3D "Iotivity Simple server example which talks to the Simple S=
erver example."
HOMEPAGE =3D "https://www.iotivity.org/"
DEPENDS =3D "iotivity"
SECTION =3D "apps"
LICENSE =3D "Apache-2.0"
LIC_FILES_CHKSUM =3D "file://nickserver.cpp;beginline=3D1;endline=3D19;md5=
=3Dfc5a615cf1dc3880967127bc853b3e0c"

SRC_URI =3D "file://iotivity-nick-server.tar.gz \
          "

S =3D "${WORKDIR}/iotivity-nick-server"

TARGET_CC_ARCH +=3D "${LDFLAGS}"

IOTIVITY_BIN_DIR =3D "/opt/iotivity"
IOTIVITY_BIN_DIR_D =3D "${D}${IOTIVITY_BIN_DIR}"

do_install() {
    install -d ${IOTIVITY_BIN_DIR_D}/apps/iotivity-nick-server
    install -c -m 555 ${S}/nickserver ${IOTIVITY_BIN_DIR_D}/apps/iotivity-n=
ick-server
    install -c -m 444 ${S}/oic_svr_db_server.dat ${IOTIVITY_BIN_DIR_D}/apps=
/iotivity-nick-server
}

FILES_${PN} =3D "${IOTIVITY_BIN_DIR}/apps/iotivity-nick-server/nickserver \
               ${IOTIVITY_BIN_DIR}/apps/iotivity-nick-server/oic_svr_db_ser=
ver.dat"
FILES_${PN}-dbg =3D "${IOTIVITY_BIN_DIR}/apps/iotivity-nick-server/.debug"
RDEPENDS_${PN} +=3D "iotivity-resource"
BBCLASSEXTEND =3D "native nativesdk"

and my makefile:


YOCTOCXXFLAGS=3D-I$(PKG_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/ =
-I$(PKG_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/stack -I$(PKG_CON=
FIG_SYSROOT_DIR)/usr/include/iotivity/resource/ocrandom -I$(PKG_CONFIG_SYSR=
OOT_DIR)/usr/include/iotivity/resource/logger -I$(PKG_CONFIG_SYSROOT_DIR)/u=
sr/include/iotivity/resource/oc_logger

YOCTOLDFLAGS=3D-loc -loctbstack -loc_logger

all: nickserver

nickserveroff.o: nickserver.cpp
ifeq ($(PKG_CONFIG_SYSROOT_DIR),)
    echo "Error: Yocto cross-toolchain environment not initialized"
    exit 1
endif
    $(CXX) -std=3Dc++0x -c -o $@ $< $(YOCTOCXXFLAGS)

nickserver: nickserver.o
    $(CXX) -o nickserver nickserver.o $(YOCTOLDFLAGS)

clean:
    rm -rf nickserver *.o



I have -std=3Dc++0x in the makefile which is the same  as -std=3Dc++11, so =
I don't know why it has the error: #error This file requires compiler and l=
ibrary support for the ISO C++ 2011 standard. This support is currently exp=
erimental, and must be enabled with the -std=3Dc++11 or -std=3Dgnu++11 comp=
iler.

Also the client succeded in bitbaking and it has the same makefile and the =
same .bb recipe.

Has anyone any idea regarding this?


Thank you in advance!


Best,
Natalia


--_000_VI1PR0502MB2941F4BDF0DF02AD5A198E80F9AE0VI1PR0502MB2941_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
Hello all,&nbsp;</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<br>
</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
I have also sent this email to iotivity list.&nbsp;</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
I am following the template of<b>&nbsp;iotivity-simple-client</b>&nbsp;insi=
de recipes-apps in order to bitbake my custom simple&nbsp;server and simple=
 client.&nbsp;</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
The client succeeds in bitbaking but the&nbsp;<b>server&nbsp;</b>has the&nb=
sp;<b>errors</b>:</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<br>
</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);">Log data follows:</span><b=
r style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, Emoji=
Font;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);">| DEBUG: Executing shell f=
unction do_compile</span><br style=3D"font-family: Calibri, Arial, Helvetic=
a, sans-serif, serif, EmojiFont;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);">| NOTE: make -j 1 -e MAKEF=
LAGS=3D</span><br style=3D"font-family: Calibri, Arial, Helvetica, sans-ser=
if, serif, EmojiFont;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);">| arm-poky-linux-gnueabi-g=
&#43;&#43;&nbsp; -march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dhard -mfp=
u=3Dneon -mtune=3Dcortex-a9 -Wl,-O1 -Wl,--hash-style=3Dgnu
 -Wl,--as-needed --sysroot=3D/home/natalia/Downloads/release-bsp/build/tmp/=
sysroots/imx6dlsabreauto&nbsp; -O2 -pipe -g -feliminate-unused-debug-types =
-fvisibility-inlines-hidden&nbsp;&nbsp; -c -o nickserver.o nickserver.cpp</=
span><br style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif=
, EmojiFont;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);">| In file included from /h=
ome/natalia/Downloads/release-bsp/build/tmp/sysroots/imx6dlsabreauto/usr/in=
clude/c&#43;&#43;/mutex:35:0,</span><br style=3D"font-family: Calibri, Aria=
l, Helvetica, sans-serif, serif, EmojiFont;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);">|&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; from nickserver.cpp:34:</span><br style=3D"font-family: Calibri, Arial, =
Helvetica, sans-serif, serif, EmojiFont;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);">| /home/natalia/Downloads/=
release-bsp/build/tmp/sysroots/imx6dlsabreauto/usr/include/c&#43;&#43;/bits=
/c&#43;&#43;0x_warning.h:32:2: error: #error This
 file requires compiler and library support for the ISO C&#43;&#43; 2011 st=
andard. This support is currently experimental, and must be enabled with th=
e -std=3Dc&#43;&#43;11 or -std=3Dgnu&#43;&#43;11 compiler options.</span><b=
r style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, Emoji=
Font;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);">|&nbsp; #error This file r=
equires compiler and library support for the \</span><br style=3D"font-fami=
ly: Calibri, Arial, Helvetica, sans-serif, serif, EmojiFont;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);">|&nbsp;&nbsp; ^</span><br =
style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, EmojiFo=
nt;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);">| nickserver.cpp:38:19: fa=
tal error: OCApi.h: No such file or directory</span><br style=3D"font-famil=
y: Calibri, Arial, Helvetica, sans-serif, serif, EmojiFont;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);">|&nbsp; #include &lt;OCApi=
.h&gt;</span><br style=3D"font-family: Calibri, Arial, Helvetica, sans-seri=
f, serif, EmojiFont;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);">|&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; ^</span><br style=3D"font-family: Calibri, Arial, Helvetica,=
 sans-serif, serif, EmojiFont;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);">| compilation terminated.<=
/span><br style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, seri=
f, EmojiFont;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);">| make: *** [nickserver.o]=
 Error 1</span><br style=3D"font-family: Calibri, Arial, Helvetica, sans-se=
rif, serif, EmojiFont;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);">| ERROR: oe_runmake failed=
</span><br style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, ser=
if, EmojiFont;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);">| WARNING: exit code 1 fro=
m a shell command.</span><br style=3D"font-family: Calibri, Arial, Helvetic=
a, sans-serif, serif, EmojiFont;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);">| ERROR: Function failed: =
do_compile (log file is located at /home/natalia/Downloads/release-bsp/buil=
d/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/iotivity-nick-server/1.0-=
r0/temp/log.do_compile.26572)</span><br style=3D"font-family: Calibri, Aria=
l, Helvetica, sans-serif, serif, EmojiFont;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);">ERROR: Task 6 (/home/natal=
ia/Downloads/release-bsp/sources/meta-oic/recipes-apps/iotivity-nick-server=
/iotivity-nick-server.bb, do_compile)
 failed with exit code '1'</span><br>
</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);"><br>
</span></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);"><br>
</span></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont;">My&nbsp;<b>.bb file</b>&nbsp;is as follows:</span></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont;"><br>
</span></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont;"><br>
</span></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont;"></span></p>
<div style=3D"font-size: 16px; font-family: Calibri, Arial, Helvetica, sans=
-serif, serif, EmojiFont;">
<span style=3D"background-color: rgb(190, 190, 190);">SUMMARY =3D &quot;Iot=
ivity Simple server&quot;</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">DESCRIPTION =3D &quot=
;Iotivity Simple server example which talks to the Simple Server example.&q=
uot;</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">HOMEPAGE =3D &quot;ht=
tps://www.iotivity.org/&quot;</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">DEPENDS =3D &quot;iot=
ivity&quot;</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">SECTION =3D &quot;app=
s&quot;</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">LICENSE =3D &quot;Apa=
che-2.0&quot;</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">LIC_FILES_CHKSUM =3D =
&quot;file://nickserver.cpp;beginline=3D1;endline=3D19;md5=3Dfc5a615cf1dc38=
80967127bc853b3e0c&quot;</span><br>
<br>
<span style=3D"background-color: rgb(190, 190, 190);">SRC_URI =3D &quot;fil=
e://iotivity-nick-server.tar.gz \</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;</span><br>
<br>
<span style=3D"background-color: rgb(190, 190, 190);">S =3D &quot;${WORKDIR=
}/iotivity-nick-server&quot;</span><br>
<br>
<span style=3D"background-color: rgb(190, 190, 190);">TARGET_CC_ARCH &#43;=
=3D &quot;${LDFLAGS}&quot;</span><br>
<br>
<span style=3D"background-color: rgb(190, 190, 190);">IOTIVITY_BIN_DIR =3D =
&quot;/opt/iotivity&quot;</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">IOTIVITY_BIN_DIR_D =
=3D &quot;${D}${IOTIVITY_BIN_DIR}&quot;</span><br>
<br>
<span style=3D"background-color: rgb(190, 190, 190);">do_install() {</span>=
<br>
<span style=3D"background-color: rgb(190, 190, 190);">&nbsp;&nbsp;&nbsp; in=
stall -d ${IOTIVITY_BIN_DIR_D}/apps/iotivity-nick-server</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">&nbsp;&nbsp;&nbsp; in=
stall -c -m 555 ${S}/nickserver ${IOTIVITY_BIN_DIR_D}/apps/iotivity-nick-se=
rver</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">&nbsp;&nbsp;&nbsp; in=
stall -c -m 444 ${S}/oic_svr_db_server.dat ${IOTIVITY_BIN_DIR_D}/apps/iotiv=
ity-nick-server</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">}</span><br>
<br>
<span style=3D"background-color: rgb(190, 190, 190);">FILES_${PN} =3D &quot=
;${IOTIVITY_BIN_DIR}/apps/iotivity-nick-server/nickserver \</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${IOTIVITY_=
BIN_DIR}/apps/iotivity-nick-server/oic_svr_db_server.dat&quot;</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">FILES_${PN}-dbg =3D &=
quot;${IOTIVITY_BIN_DIR}/apps/iotivity-nick-server/.debug&quot;</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">RDEPENDS_${PN} &#43;=
=3D &quot;iotivity-resource&quot;</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">BBCLASSEXTEND =3D &qu=
ot;native nativesdk&quot;</span><br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont=
; font-size: 16px;">
<br>
</div>
<span style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFon=
t; font-size: 16px;">and my&nbsp;</span><b style=3D"font-family: Calibri, H=
elvetica, sans-serif, serif, EmojiFont; font-size: 16px;">makefile</b><span=
 style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; fo=
nt-size: 16px;">:</span>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont;"><br>
</span></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont;"><span style=3D"background-color: rgb(190, 190, 190);">YOCTOCXXFL=
AGS=3D-I$(PKG_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/ -I$(PKG_CO=
NFIG_SYSROOT_DIR)/usr/include/iotivity/resource/stack
 -I$(PKG_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/ocrandom -I$(PKG=
_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/logger -I$(PKG_CONFIG_SY=
SROOT_DIR)/usr/include/iotivity/resource/oc_logger</span><br>
<br>
<span style=3D"background-color: rgb(190, 190, 190);">YOCTOLDFLAGS=3D-loc -=
loctbstack -loc_logger&nbsp;</span><br>
<br>
<span style=3D"background-color: rgb(190, 190, 190);">all: nickserver</span=
><br>
<br>
<span style=3D"background-color: rgb(190, 190, 190);">nickserveroff.o: nick=
server.cpp</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">ifeq ($(PKG_CONFIG_SY=
SROOT_DIR),)</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">&nbsp;&nbsp; &nbsp;ec=
ho &quot;Error: Yocto cross-toolchain environment not initialized&quot;</sp=
an><br>
<span style=3D"background-color: rgb(190, 190, 190);">&nbsp;&nbsp; &nbsp;ex=
it 1&nbsp;</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">endif</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">&nbsp;&nbsp; &nbsp;$(=
CXX) -std=3Dc&#43;&#43;0x -c -o $@ $&lt; $(YOCTOCXXFLAGS)</span><br>
<br>
<span style=3D"background-color: rgb(190, 190, 190);">nickserver: nickserve=
r.o</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">&nbsp;&nbsp; &nbsp;$(=
CXX) -o nickserver nickserver.o $(YOCTOLDFLAGS)</span><br>
<br>
<span style=3D"background-color: rgb(190, 190, 190);">clean:</span><br>
<span style=3D"background-color: rgb(190, 190, 190);">&nbsp;&nbsp; &nbsp;rm=
 -rf nickserver *.o</span><br>
</span></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);"><br>
</span></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);"><br>
</span></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);"><span style=3D"background-=
color: rgb(255, 255, 255);">I have&nbsp;</span><span style=3D"background-co=
lor: rgb(255, 255, 255);">-std=3Dc&#43;&#43;0x in the
 makefile which is the same&nbsp;</span><span style=3D"background-color: rg=
b(255, 255, 255);">&nbsp;as&nbsp;</span><span style=3D"background-color: rg=
b(255, 255, 255);">-std=3Dc&#43;&#43;11, so I don't know why it has the err=
or</span><span style=3D"background-color: rgb(255, 255, 255);">:</span>&nbs=
p;#error
 This file requires compiler and library support for the ISO C&#43;&#43; 20=
11 standard. This support is currently experimental, and must be enabled wi=
th the -std=3Dc&#43;&#43;11 or -std=3Dgnu&#43;&#43;11 compiler.&nbsp;</span=
></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);"><span style=3D"background-=
color: rgb(255, 255, 255);">Also the&nbsp;<b>client succeded</b>&nbsp;in bi=
tbaking and it has the same makefile and the same
 .bb recipe.&nbsp;</span></span></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);"><span style=3D"background-=
color: rgb(255, 255, 255);">Has anyone any idea regarding this?</span></spa=
n></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);"><span style=3D"background-=
color: rgb(255, 255, 255);"><br>
</span></span></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);"><span style=3D"background-=
color: rgb(255, 255, 255);">Thank you in advance!</span></span></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);"><span style=3D"background-=
color: rgb(255, 255, 255);"><br>
</span></span></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, serif, E=
mojiFont; background-color: rgb(190, 190, 190);"><span style=3D"background-=
color: rgb(255, 255, 255);">Best,&nbsp;<br>
Natalia</span></span></p>
<br>
<p></p>
</div>
</body>
</html>

--_000_VI1PR0502MB2941F4BDF0DF02AD5A198E80F9AE0VI1PR0502MB2941_--
