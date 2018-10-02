Return-Path: <lewis.muhlenkamp@stryker.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 833FAE00994; Tue,  2 Oct 2018 20:07:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.72.47 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 31262 seconds by postgrey-1.32 at yocto-www;
	Tue, 02 Oct 2018 20:07:02 PDT
Received: from NAM05-CO1-obe.outbound.protection.outlook.com
	(mail-eopbgr720047.outbound.protection.outlook.com [40.107.72.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DB94E0095C;
	Tue,  2 Oct 2018 20:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stryker.com;
	s=selector2;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=KWmMzmxe8qQzbzL/y2kz1m1opTKl6MmZ/XtMsngYXZs=;
	b=diFxp77DCLkqvxcyAbyEiQ3h+OPYL/sLIyuVhW4FfsyVYJ3LYmipGXs0OFoDd3wbBq41W/h8wGJb3ROkRhvD4YtVCIM7wrpb8sI4G+m8Se6aPfarbBYPNHmfidbGRMIldXntml9dZQ7IGZd9XcB/V918hRjGU4yipKfaCtcYsGU=
Received: from CY1PR01MB1852.prod.exchangelabs.com (10.166.189.8) by
	CY1PR01MB1278.prod.exchangelabs.com (10.163.18.140) with Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1185.25; Tue, 2 Oct 2018 15:53:22 +0000
Received: from CY1PR01MB1852.prod.exchangelabs.com
	([fe80::dc39:3b9f:c3cb:805d]) by CY1PR01MB1852.prod.exchangelabs.com
	([fe80::dc39:3b9f:c3cb:805d%3]) with mapi id 15.20.1185.024;
	Tue, 2 Oct 2018 15:53:22 +0000
From: "Muhlenkamp, Lewis" <lewis.muhlenkamp@stryker.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"meta-intel@yoctoproject.org" <meta-intel@yoctoproject.org>
Thread-Topic: ac_nonexistent.h error in do_configure
Thread-Index: AdRaaAstnV2h/VHzQhCphZhyUxYUiQ==
Date: Tue, 2 Oct 2018 15:53:22 +0000
Message-ID: <CY1PR01MB185241745662704F7F200C5E8FE80@CY1PR01MB1852.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=lewis.muhlenkamp@stryker.com; 
x-originating-ip: [165.225.32.65]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY1PR01MB1278;
	20:7UqCeWl8+alCYJNcYzxC01rglwT9IowljOC+0/01Nw74vSs3ZtrEaWLE/73Lfal7oMIEgAQQOWx3F6NZzkg+Rnw24IDyTVdUGhPvUAiK86P8NI77h5DFVNh261HXw9PQPhWnQCSRGQ8+NiIJ0dYFXxiul/UvES4l4zNMG189pVmvMSIpxlqYwYot7rm+6xJBuZ1kQvdfdflQKDFcbPjvhzKA6FCpLZXAB30xqU/VBD2WcL3N++mlktdJ7kJUanEL;
	23:v9FFF0eKwnGy/uDhnonV8gp49Hfj6z+wijzzIrPthkfHLSAtWcUU+w422ZLib2DsykVS9sIPeXcs21OrXvT1muhcCKrhB/5PGE9oPWxA0Cdo8lHhRhYLym1WhVuPD8d0rICTHkXfMBbUz++n8DYJ/w==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: b06d8288-66f3-41dd-e08c-08d6287f2e99
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(4534165)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600074)(711020)(4618075)(2017052603328)(7167020)(7153060)(7193020);
	SRVR:CY1PR01MB1278; 
X-MS-TrafficTypeDiagnostic: CY1PR01MB1278:|CY1PR01MB1278:
x-microsoft-antispam-prvs: <CY1PR01MB127853105BA46AE8C63279288FE80@CY1PR01MB1278.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(209352067349851)(21748063052155)(28532068793085)(190501279198761)(227612066756510);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(3002001)(3231355)(944501410)(52105095)(10201501046)(6055026)(149066)(150057)(6041310)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123558120)(20161123560045)(201708071742011)(7699051);
	SRVR:CY1PR01MB1278; BCL:0; PCL:0; RULEID:; SRVR:CY1PR01MB1278; 
x-forefront-prvs: 0813C68E65
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(396003)(346002)(39860400002)(136003)(376002)(366004)(199004)(189003)(8676002)(6506007)(476003)(55236004)(99286004)(110136005)(14444005)(256004)(26005)(102836004)(5660300001)(86362001)(486006)(66066001)(25786009)(106356001)(575784001)(105586002)(6436002)(6116002)(790700001)(68736007)(97736004)(9326002)(14454004)(2501003)(9686003)(316002)(54896002)(3846002)(450100002)(53936002)(7736002)(478600001)(6306002)(55016002)(81156014)(71200400001)(74316002)(5250100002)(8936002)(71190400001)(7696005)(186003)(81166006)(33656002)(2900100001)(2906002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR01MB1278;
	H:CY1PR01MB1852.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
	PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: stryker.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 81vZT7UcGtg/qJQag8mtbqg1ruO6SRP92c12MiMRaQyPXO0HeSTnBwgBqn/HUhAVRWmyy9J032mmjEv+z7MUl88C2PKRl5OgHDE6ffhBhNbR5JjdB2K/b9gXzUxR74wqDBTTXeLvA/ixpJ2VdaXIfPicMWdOIx2Cu0YIyS1Bup7A5heOYJxMuZ7Z9F3XM+2k2PUCEP7Wi+IDf2v5hAeT/tZr2XXYKwVIZzxC71h6h75X+dgUjCli7ivtVuiHm2gyKBqvYa9eJfXSE+OuhFtBA0SWw7+VJZISDzCjtWi12uhTzCP5FQ0waIp1HulM1j+UtHdC3YMVlsWSQJ0Wd7i86/kt8imjZF42ediuCeSUvIA=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b06d8288-66f3-41dd-e08c-08d6287f2e99
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2018 15:53:22.6066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e9dbbfb-394a-4583-8810-53f81f819e3b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR01MB1278
X-OriginatorOrg: stryker.com
Subject: ac_nonexistent.h error in do_configure
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
X-List-Received-Date: Wed, 03 Oct 2018 03:07:07 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR01MB185241745662704F7F200C5E8FE80CY1PR01MB1852prod_"

--_000_CY1PR01MB185241745662704F7F200C5E8FE80CY1PR01MB1852prod_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I get a failure when trying to build the core-image-x11 image with the inte=
l-corei7-64 MACHINE.  The error message that appears in the build/tmp-glibc=
/corei7-64-oe-linux/xf86-video-intel/2_2.99.917+gitAUTOINC+e4fe79cf0d-r0/bu=
ild/config.log file is as follows:

=3D=3D=3D Start excerpt =3D=3D=3D
configure:4381: checking how to run the C preprocessor
configure:4451: result: x86_64-oe-linux-gcc -E --sysroot=3D/home/lmuhlenkam=
p/build-target02/tmp-glibc/work/corei7-64-oe-linux/xf86-video-intel/2_2.99.=
917+gitAUTOINC+e4fe79cf0d-r0/recipe-sysroot  -m64 -march=3Dnehalem -mtune=
=3Dgeneric -mfpmath=3Dsse -msse4.2
configure:4471: x86_64-oe-linux-gcc -E --sysroot=3D/home/lmuhlenkamp/build-=
target02/tmp-glibc/work/corei7-64-oe-linux/xf86-video-intel/2_2.99.917+gitA=
UTOINC+e4fe79cf0d-r0/recipe-sysroot  -m64 -march=3Dnehalem -mtune=3Dgeneric=
 -mfpmath=3Dsse -msse4.2  conftest.c
configure:4471: $? =3D 0
configure:4485: x86_64-oe-linux-gcc -E --sysroot=3D/home/lmuhlenkamp/build-=
target02/tmp-glibc/work/corei7-64-oe-linux/xf86-video-intel/2_2.99.917+gitA=
UTOINC+e4fe79cf0d-r0/recipe-sysroot  -m64 -march=3Dnehalem -mtune=3Dgeneric=
 -mfpmath=3Dsse -msse4.2  conftest.c
conftest.c:11:10: fatal error: ac_nonexistent.h: No such file or directory
#include <ac_nonexistent.h>
          ^~~~~~~~~~~~~~~~~~
compilation terminated.
configure:4485: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "xf86-video-intel"
| #define PACKAGE_TARNAME "xf86-video-intel"
| #define PACKAGE_VERSION "2.99.917"
| #define PACKAGE_STRING "xf86-video-intel 2.99.917"
| #define PACKAGE_BUGREPORT "https://bugs.freedesktop.org/enter_bug.cgi?pro=
duct=3Dxorg"
| #define PACKAGE_URL ""
| #define PACKAGE "xf86-video-intel"
| #define VERSION "2.99.917"
| /* end confdefs.h.  */
| #include <ac_nonexistent.h>
=3D=3D=3D End excerpt =3D=3D=3D

I understand that ac_nonexistent.h is not supposed to exist, and that the a=
utoconf stuff is supposed to handle this failure as a successful test if th=
e gcc compiler handles things properly, but it does not look like the gcc c=
ompiler is handling things properly, and I do not know why.

What I am trying to do is to get an image using the minimal amount of meta =
layers as possible, and to not use poky.  I am still learning Yocto.  This =
is a step in my learning process, but I do not understand Yocto enough to d=
etermine how to proceed.

I did the following


  *   cd /home/lmuhlenkamp
  *   git clone git://git.yoctoproject.org/meta-intel
  *   git clone git://git.openembedded.org/meta-openembedded
  *   git clone git://git.openembedded.org/openembedded-core oe-core
  *   cd oe-core/
  *   git clone git://git.openembedded.org/bitbake
  *   . ./oe-init-build-env ~/build-target02

I made the following modifications to bblayers.conf:


  *   diff bblayers.conf .#bblayers.conf.orig
10,16d9
<   /home/lmuhlenkamp/meta-openembedded/meta-python \
<   /home/lmuhlenkamp/meta-openembedded/meta-gnome \
<   /home/lmuhlenkamp/meta-openembedded/meta-filesystems \
<   /home/lmuhlenkamp/meta-openembedded/meta-oe \
<   /home/lmuhlenkamp/meta-openembedded/meta-networking \
<   /home/lmuhlenkamp/meta-openembedded/meta-initramfs \
<   /home/lmuhlenkamp/meta-intel \

I made the following modifications to local.conf:


  *   diff local.conf .#local.conf.orig
28,31d27
< # From the meta-intel BSP layer
< #MACHINE ?=3D "intel-core2-32"
< MACHINE ?=3D "intel-corei7-64"
< #
46c42
< DL_DIR ?=3D "/downloads"
---
> #DL_DIR ?=3D "${TOPDIR}/downloads"
221,224d216
< PACKAGE_CLASSES =3D "package_rpm"
< VIRTUAL-RUNTIME_init_manager =3D "systemd"
< DISTRO_FEATURES_append =3D " systemd"
< DISTRO_FEATURES_BACKFILL_CONSIDERED_append =3D " sysvinit"


As you may have guessed by some of the above changes, I eventually want to =
be able to use the meta-intel BSP with the meta-anaconda layer.  My end goa=
l is to be able to create a bootable DVD that can be given to our field eng=
ineers to be able to do either fresh installs in the field, or upgrade exis=
ting hardware in the field.  I am familiar with Anaconda from doing a lot o=
f work with Red Hat derived OSes.  So, seemed liked a good way to go.

I'm thinking I need to make some other change to local.conf to get the ac_n=
onexistent.h test "succeed".  I am not sure what that change is.

I've looked through a lot of online documentation.  I have done a lot of Go=
ogle searches.  I have not found anything helpful.

Any help anyone can provide would be greatly appreciated, mainly on the ac_=
nonexistent.h error, but if anyone has any helpful pointers or such for com=
bining meta-intel and meta-anaconda, I would really appreciate that too.

Thank you

Lewis Muhlenkamp


--_000_CY1PR01MB185241745662704F7F200C5E8FE80CY1PR01MB1852prod_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:669334288;
	mso-list-type:hybrid;
	mso-list-template-ids:-1102698178 1718796704 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:8;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I get a failure when trying to build the core-image-=
x11 image with the intel-corei7-64 MACHINE.&nbsp; The error message that ap=
pears in the build/tmp-glibc/corei7-64-oe-linux/xf86-video-intel/2_2.99.917=
&#43;gitAUTOINC&#43;e4fe79cf0d-r0/build/config.log
 file is as follows:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D Start excerpt =3D=3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal">configure:4381: checking how to run the C preprocess=
or<o:p></o:p></p>
<p class=3D"MsoNormal">configure:4451: result: x86_64-oe-linux-gcc -E --sys=
root=3D/home/lmuhlenkamp/build-target02/tmp-glibc/work/corei7-64-oe-linux/x=
f86-video-intel/2_2.99.917&#43;gitAUTOINC&#43;e4fe79cf0d-r0/recipe-sysroot&=
nbsp; -m64 -march=3Dnehalem -mtune=3Dgeneric -mfpmath=3Dsse
 -msse4.2<o:p></o:p></p>
<p class=3D"MsoNormal">configure:4471: x86_64-oe-linux-gcc -E --sysroot=3D/=
home/lmuhlenkamp/build-target02/tmp-glibc/work/corei7-64-oe-linux/xf86-vide=
o-intel/2_2.99.917&#43;gitAUTOINC&#43;e4fe79cf0d-r0/recipe-sysroot&nbsp; -m=
64 -march=3Dnehalem -mtune=3Dgeneric -mfpmath=3Dsse -msse4.2&nbsp;
 conftest.c<o:p></o:p></p>
<p class=3D"MsoNormal">configure:4471: $? =3D 0<o:p></o:p></p>
<p class=3D"MsoNormal">configure:4485: x86_64-oe-linux-gcc -E --sysroot=3D/=
home/lmuhlenkamp/build-target02/tmp-glibc/work/corei7-64-oe-linux/xf86-vide=
o-intel/2_2.99.917&#43;gitAUTOINC&#43;e4fe79cf0d-r0/recipe-sysroot&nbsp; -m=
64 -march=3Dnehalem -mtune=3Dgeneric -mfpmath=3Dsse -msse4.2&nbsp;
 conftest.c<o:p></o:p></p>
<p class=3D"MsoNormal">conftest.c:11:10: fatal error: ac_nonexistent.h: No =
such file or directory<o:p></o:p></p>
<p class=3D"MsoNormal">#include &lt;ac_nonexistent.h&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; ^~~~~~~~~~~~~~~~~~<o:p></o:p></p>
<p class=3D"MsoNormal">compilation terminated.<o:p></o:p></p>
<p class=3D"MsoNormal">configure:4485: $? =3D 1 <o:p></o:p></p>
<p class=3D"MsoNormal">configure: failed program was:<o:p></o:p></p>
<p class=3D"MsoNormal">| /* confdefs.h */<o:p></o:p></p>
<p class=3D"MsoNormal">| #define PACKAGE_NAME &quot;xf86-video-intel&quot;<=
o:p></o:p></p>
<p class=3D"MsoNormal">| #define PACKAGE_TARNAME &quot;xf86-video-intel&quo=
t;<o:p></o:p></p>
<p class=3D"MsoNormal">| #define PACKAGE_VERSION &quot;2.99.917&quot;<o:p><=
/o:p></p>
<p class=3D"MsoNormal">| #define PACKAGE_STRING &quot;xf86-video-intel 2.99=
.917&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">| #define PACKAGE_BUGREPORT &quot;https://bugs.freed=
esktop.org/enter_bug.cgi?product=3Dxorg&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">| #define PACKAGE_URL &quot;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">| #define PACKAGE &quot;xf86-video-intel&quot;<o:p><=
/o:p></p>
<p class=3D"MsoNormal">| #define VERSION &quot;2.99.917&quot;<o:p></o:p></p=
>
<p class=3D"MsoNormal">| /* end confdefs.h.&nbsp; */<o:p></o:p></p>
<p class=3D"MsoNormal">| #include &lt;ac_nonexistent.h&gt; <o:p></o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D End excerpt =3D=3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I understand that ac_nonexistent.h is not supposed t=
o exist, and that the autoconf stuff is supposed to handle this failure as =
a successful test if the gcc compiler handles things properly, but it does =
not look like the gcc compiler is
 handling things properly, and I do not know why.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What I am trying to do is to get an image using the =
minimal amount of meta layers as possible, and to not use poky.&nbsp; I am =
still learning Yocto.&nbsp; This is a step in my learning process, but I do=
 not understand Yocto enough to determine how
 to proceed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I did the following<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1">cd /home/lmuhlenkamp<o:p></o:p></li><li class=3D"MsoListParagraph" st=
yle=3D"margin-left:0in;mso-list:l0 level1 lfo1">git clone git://git.yoctopr=
oject.org/meta-intel<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D=
"margin-left:0in;mso-list:l0 level1 lfo1">git clone git://git.openembedded.=
org/meta-openembedded<o:p></o:p></li><li class=3D"MsoListParagraph" style=
=3D"margin-left:0in;mso-list:l0 level1 lfo1">git clone git://git.openembedd=
ed.org/openembedded-core oe-core<o:p></o:p></li><li class=3D"MsoListParagra=
ph" style=3D"margin-left:0in;mso-list:l0 level1 lfo1">cd oe-core/<o:p></o:p=
></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 l=
evel1 lfo1">git clone git://git.openembedded.org/bitbake<o:p></o:p></li><li=
 class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 lfo=
1">. ./oe-init-build-env ~/build-target02<o:p></o:p></li></ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I made the following modifications to bblayers.conf:=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1">diff bblayers.conf .#bblayers.conf.orig<o:p></o:p></li></ul>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">10,16d9<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&lt;&nbsp;&nbsp; /home/lm=
uhlenkamp/meta-openembedded/meta-python \<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&lt;&nbsp;&nbsp; /home/lm=
uhlenkamp/meta-openembedded/meta-gnome \<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&lt;&nbsp;&nbsp; /home/lm=
uhlenkamp/meta-openembedded/meta-filesystems \<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&lt;&nbsp;&nbsp; /home/lm=
uhlenkamp/meta-openembedded/meta-oe \<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&lt;&nbsp;&nbsp; /home/lm=
uhlenkamp/meta-openembedded/meta-networking \<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&lt;&nbsp;&nbsp; /home/lm=
uhlenkamp/meta-openembedded/meta-initramfs \<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&lt;&nbsp;&nbsp; /home/lm=
uhlenkamp/meta-intel \<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I made the following modifications to local.conf:<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1">diff local.conf .#local.conf.orig<o:p></o:p></li></ul>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">28,31d27<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&lt; # From the meta-inte=
l BSP layer<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&lt; #MACHINE ?=3D &quot;=
intel-core2-32&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&lt; MACHINE ?=3D &quot;i=
ntel-corei7-64&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&lt; #<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">46c42<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&lt; DL_DIR ?=3D &quot;/d=
ownloads&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">---<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&gt; #DL_DIR ?=3D &quot;$=
{TOPDIR}/downloads&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">221,224d216<o:p></o:p></p=
>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&lt; PACKAGE_CLASSES =3D =
&quot;package_rpm&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&lt; VIRTUAL-RUNTIME_init=
_manager =3D &quot;systemd&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&lt; DISTRO_FEATURES_appe=
nd =3D &quot; systemd&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&lt; DISTRO_FEATURES_BACK=
FILL_CONSIDERED_append =3D &quot; sysvinit&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As you may have guessed by some of the above changes=
, I eventually want to be able to use the meta-intel BSP with the meta-anac=
onda layer.&nbsp; My end goal is to be able to create a bootable DVD that c=
an be given to our field engineers to be
 able to do either fresh installs in the field, or upgrade existing hardwar=
e in the field.&nbsp; I am familiar with Anaconda from doing a lot of work =
with Red Hat derived OSes.&nbsp; So, seemed liked a good way to go.<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m thinking I need to make some other change =
to local.conf to get the ac_nonexistent.h test &#8220;succeed&#8221;.&nbsp;=
 I am not sure what that change is.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve looked through a lot of online documentat=
ion. &nbsp;I have done a lot of Google searches. &nbsp;I have not found any=
thing helpful.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help anyone can provide would be greatly appreci=
ated, mainly on the ac_nonexistent.h error, but if anyone has any helpful p=
ointers or such for combining meta-intel and meta-anaconda, I would really =
appreciate that too.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Lewis Muhlenkamp<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_CY1PR01MB185241745662704F7F200C5E8FE80CY1PR01MB1852prod_--
