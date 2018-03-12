Return-Path: <vincent.daanen@orthotaxy.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9E92E00ECB; Mon, 12 Mar 2018 10:04:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.107 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0107.outbound.protection.outlook.com [104.47.2.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4EA8E00B1E
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 10:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=orthotaxy.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=5he2qf1nibwSMeKcAnh3F67QCDuskCrkQjuprT2gmJM=;
	b=GmZdEQd9lCNqDp69Qin1nkSJa5kS+rXavm3Vx7qyfUTrOG9ZVR79q+OyPpjZubonwDLbB5bwAke3iM9+2U1R50fMk7kp7TuKrMEKcJoNRwb5uoqz7t/+IGLYdrj9JfgzQZIOc6UaraGzpmjKfXt+XQ0ZO5nmwg174qdO+lOaxEo=
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM (10.175.180.135) by
	VI1P192MB0222.EURP192.PROD.OUTLOOK.COM (10.175.181.9) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.548.13; Mon, 12 Mar 2018 17:04:25 +0000
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::b85b:37d9:45a2:c505]) by VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::b85b:37d9:45a2:c505%18]) with mapi id 15.20.0567.018;
	Mon, 12 Mar 2018 17:04:25 +0000
From: Vincent Daanen <vincent.daanen@orthotaxy.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Integrating Ixxat SocketCAN Drivers in image
Thread-Index: AdO6CNVi4/py2ljCQuuK/XZexfOcbA==
Date: Mon, 12 Mar 2018 17:04:24 +0000
Message-ID: <VI1P192MB014333E08E0D81CEC356A4958DD30@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=vincent.daanen@orthotaxy.com; 
x-originating-ip: [152.77.102.34]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1P192MB0222;
	7:KKz1Fmtjgp6IBr7J3qVveoA50hMA+2quvFSJ06CTK+RxoXbUN6HfkhJlb70MxGZwqttotRglwbmHPgso8CHL/17nF8pr5yhXWEL5yX07uEN6ykXz1V7KJQoqexIev13IJjMW41SPD06M5FgLHAnD3m33d1zc23KioSpP6LrgmwnjqgSwQQIGkwtp2GrB+Zv3ly6ND6ZtimnGVl1q3xfsFjPzmAXwAxt0GmpD+PgTqXv+ONUVKggjZ28L+HR8SLTA
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 7acf4f4c-ef8f-4b95-04b2-08d5883b4edc
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4604075)(3008032)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:VI1P192MB0222; 
x-ms-traffictypediagnostic: VI1P192MB0222:
x-microsoft-antispam-prvs: <VI1P192MB0222C20B5A51B8585E7ACFD38DD30@VI1P192MB0222.EURP192.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(28532068793085)(186554780618531)(21748063052155); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(10201501046)(3231220)(944501244)(52105095)(6041310)(20161123564045)(20161123562045)(20161123560045)(20161123558120)(2016111802025)(6043046)(6072148)(201708071742011);
	SRVR:VI1P192MB0222; BCL:0; PCL:0; RULEID:; SRVR:VI1P192MB0222; 
x-forefront-prvs: 06098A2863
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(39380400002)(39830400003)(346002)(376002)(366004)(189003)(199004)(25786009)(54896002)(6306002)(8558605004)(9686003)(66066001)(97736004)(7696005)(55016002)(53936002)(236005)(99286004)(86362001)(105586002)(2906002)(5660300001)(5640700003)(6436002)(3280700002)(790700001)(6116002)(3846002)(81166006)(81156014)(1730700003)(8676002)(2501003)(5250100002)(6506007)(3660700001)(2900100001)(59450400001)(7736002)(316002)(14454004)(6916009)(26005)(102836004)(966005)(8936002)(5630700001)(9326002)(606006)(2351001)(74316002)(68736007)(186003)(106356001)(33656002)(478600001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1P192MB0222;
	H:VI1P192MB0143.EURP192.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: orthotaxy.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 6ADdysSiH702XVJZdY30AJSLS972/ML0rm/0yuW5TroyIm4juCZd4tyvauvz5HqHgiWpwRaGUYDe084IsfVTy+MNWCrtt3pIpfheaZhal4b7PTHNVdXJzf79iTB5MYG+bSBG2PjxHnhQafHM8Zcgzx2X5WRDfmnPB/CSrEV6auiqt61TDuYggkMwt5fsQtDG+d6+Firu9wuSKJQdF97R+pg8BfWsuVHzUTdMJYdcoDVUIoYdCQxllDm0PtXEsMDK3VVJYaPdar9gJLALh1icUlST9cRU7gwSxG/VUwRGX0e3xIeSHACdAxGZQpWJ1eq2NU3ki3fToX4xDakaiz+Qhw==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: orthotaxy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7acf4f4c-ef8f-4b95-04b2-08d5883b4edc
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2018 17:04:24.9658 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0c838133-9c42-4d53-8cbc-7a36ef5279a7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0222
Subject: Integrating Ixxat SocketCAN Drivers in image
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
X-List-Received-Date: Mon, 12 Mar 2018 17:04:32 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_VI1P192MB014333E08E0D81CEC356A4958DD30VI1P192MB0143EURP_"

--_000_VI1P192MB014333E08E0D81CEC356A4958DD30VI1P192MB0143EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have to integrate Ixxat SocketCAN driver in the image which will run our =
system.

The organisation of the files is the following
                Yocto/MyCompany/meta-myCompany/recipes-candriver/ixxat-sock=
etcan
This directory contains the file ixxat-socketcan.bb.
The content of this file is the following
SUMMARY =3D "..."
LICENSE =3D "CLOSED"
SRC_URI=3D https://www.ixxat.com/docs/librariesprovider8/default-document-l=
ibrary/downloads/other-drivers/socketcan.zip
SRC_URI[sha256sum] =3D <... >  (the sha256 sum is correct)
S=3D"${WORKDIR}"

The problems I run into are the following:

  1.  Although the recipe is found (it appears in the output of bitbake-lay=
er show-recipe), and that the file is processed by bitbake (if I intentiona=
lly add a typo, the build breaks), it seems to not be processed (the zip fi=
le is not downloaded) when I invoke bitbake core-image-minimal..



  1.  When I invoke bitbake -b ixxat-socketcan, it fails with the following=
 output (sorry for the formatting of the text)



ERROR: ixxat-socketcan-1.0-r0 do_unpack: Unpack failure for URL: 'https://w=
ww.ixxat.com/docs/librariesprovider8/default-document-library/downloads/oth=
er-drivers/socketcan.zip'. Unpack command PATH=3D"/home/rd-otx/yocto/RCU_Yo=
cto/build-firstBoot/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/rd-ot=
x/yocto/sources/poky/scripts:/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/t=
mp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/recipe-sysroot-native/=
usr/bin/x86_64-poky-linux:/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/tmp/=
work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/recipe-sysroot/usr/bin/cr=
ossscripts:/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/tmp/work/qemux86_64=
-poky-linux/ixxat-socketcan/1.0-r0/recipe-sysroot-native/usr/sbin:/home/rd-=
otx/yocto/RCU_Yocto/build-firstBoot/tmp/work/qemux86_64-poky-linux/ixxat-so=
cketcan/1.0-r0/recipe-sysroot-native/usr/bin:/home/rd-otx/yocto/RCU_Yocto/b=
uild-firstBoot/tmp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/recipe=
-sysroot-native/sbin:/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/tmp/work/=
qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/recipe-sysroot-native/bin:/hom=
e/rd-otx/yocto/sources/poky-rocko-18.0.1/bitbake/bin:/home/rd-otx/yocto/RCU=
_Yocto/build-firstBoot/tmp/hosttools" unzip -q -o '/home/rd-otx/yocto/RCU_Y=
octo/build-firstBoot/downloads/socketcan.zip' failed with return value 127

ERROR: ixxat-socketcan-1.0-r0 do_unpack: Function failed: base_do_unpack

ERROR: Logfile of failure stored in: /home/rd-otx/yocto/RCU_Yocto/build-fir=
stBoot/tmp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/temp/log.do_un=
pack.16493

ERROR: ixxat-socketcan-1.0-r0 do_make_scripts: Function failed: do_make_scr=
ipts (log file is located at /home/rd-otx/yocto/RCU_Yocto/build-firstBoot/t=
mp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/temp/log.do_make_scrip=
ts.16494)

ERROR: Task (/home/rd-otx/yocto/RCU_Yocto/meta-OtxLayer/recipes-candriver/i=
xxat-socketcan/ixxat-socketcan.bb:do_unpack) failed with exit code '1'

ERROR: Logfile of failure stored in: /home/rd-otx/yocto/RCU_Yocto/build-fir=
stBoot/tmp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/temp/log.do_ma=
ke_scripts.16494


                I found on the net that the first error is sometimes due to=
 the fact that the archive file is corrupted but this is not the case. I co=
uld unpack the file manually using unzip .

Can someone point me to information or help me to figure out what's wrong ?=
?

Thanks

Vincent


--_000_VI1P192MB014333E08E0D81CEC356A4958DD30VI1P192MB0143EURP_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:239485949;
	mso-list-type:hybrid;
	mso-list-template-ids:498640258 134807567 134807577 134807579 134807567 13=
4807577 134807579 134807567 134807577 134807579;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have to integrate Ixxat SocketCAN driver in the im=
age which will run our system.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The organisation of the files is the following<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Yocto/MyCompany/meta-myCompany/recip=
es-candriver/ixxat-socketcan<o:p></o:p></p>
<p class=3D"MsoNormal">This directory contains the file ixxat-socketcan.bb.=
<o:p></o:p></p>
<p class=3D"MsoNormal">The content of this file is the following<o:p></o:p>=
</p>
<p class=3D"MsoNormal">SUMMARY =3D &#8220;&#8230;&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal">LICENSE =3D &#8220;CLOSED&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"FR">SRC_URI=3D <a href=3D"https://www.=
ixxat.com/docs/librariesprovider8/default-document-library/downloads/other-=
drivers/socketcan.zip">
https://www.ixxat.com/docs/librariesprovider8/default-document-library/down=
loads/other-drivers/socketcan.zip</a><o:p></o:p></span></p>
<p class=3D"MsoNormal">SRC_URI[sha256sum] =3D &laquo;&#8230;&nbsp;&raquo;&n=
bsp; (the sha256 sum is correct)<o:p></o:p></p>
<p class=3D"MsoNormal">S=3D&#8221;${WORKDIR}&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The problems I run into are the following:<o:p></o:p=
></p>
<ol style=3D"margin-top:0cm" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1">Although the recipe is found (it appears in the output of bitbake-lay=
er show-recipe), and that the file is processed by bitbake (if I intentiona=
lly add a typo, the build breaks), it
 seems to not be processed (the zip file is not downloaded) when I invoke b=
itbake core-image-minimal..<o:p></o:p></li></ol>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0cm" start=3D"2" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1">When I invoke bitbake -b ixxat-socketcan, it fails with the following=
 output (sorry for the formatting of the text)<o:p></o:p></li></ol>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph">ERROR: ixxat-socketcan-1.0-r0 do_unpack: Unpa=
ck failure for URL: 'https://www.ixxat.com/docs/librariesprovider8/default-=
document-library/downloads/other-drivers/socketcan.zip'. Unpack command PAT=
H=3D&quot;/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/tmp/sysroots-uninati=
ve/x86_64-linux/usr/bin:/home/rd-otx/yocto/sources/poky/scripts:/home/rd-ot=
x/yocto/RCU_Yocto/build-firstBoot/tmp/work/qemux86_64-poky-linux/ixxat-sock=
etcan/1.0-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux:/home/rd-otx/y=
octo/RCU_Yocto/build-firstBoot/tmp/work/qemux86_64-poky-linux/ixxat-socketc=
an/1.0-r0/recipe-sysroot/usr/bin/crossscripts:/home/rd-otx/yocto/RCU_Yocto/=
build-firstBoot/tmp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/recip=
e-sysroot-native/usr/sbin:/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/tmp/=
work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/recipe-sysroot-native/usr=
/bin:/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/tmp/work/qemux86_64-poky-=
linux/ixxat-socketcan/1.0-r0/recipe-sysroot-native/sbin:/home/rd-otx/yocto/=
RCU_Yocto/build-firstBoot/tmp/work/qemux86_64-poky-linux/ixxat-socketcan/1.=
0-r0/recipe-sysroot-native/bin:/home/rd-otx/yocto/sources/poky-rocko-18.0.1=
/bitbake/bin:/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/tmp/hosttools&quo=
t;
 unzip -q -o '/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/downloads/socket=
can.zip' failed with return value 127<o:p></o:p></p>
<p class=3D"MsoListParagraph">ERROR: ixxat-socketcan-1.0-r0 do_unpack: Func=
tion failed: base_do_unpack<o:p></o:p></p>
<p class=3D"MsoListParagraph">ERROR: Logfile of failure stored in: /home/rd=
-otx/yocto/RCU_Yocto/build-firstBoot/tmp/work/qemux86_64-poky-linux/ixxat-s=
ocketcan/1.0-r0/temp/log.do_unpack.16493<o:p></o:p></p>
<p class=3D"MsoListParagraph">ERROR: ixxat-socketcan-1.0-r0 do_make_scripts=
: Function failed: do_make_scripts (log file is located at /home/rd-otx/yoc=
to/RCU_Yocto/build-firstBoot/tmp/work/qemux86_64-poky-linux/ixxat-socketcan=
/1.0-r0/temp/log.do_make_scripts.16494)<o:p></o:p></p>
<p class=3D"MsoListParagraph">ERROR: Task (/home/rd-otx/yocto/RCU_Yocto/met=
a-OtxLayer/recipes-candriver/ixxat-socketcan/ixxat-socketcan.bb:do_unpack) =
failed with exit code '1'<o:p></o:p></p>
<p class=3D"MsoListParagraph">ERROR: Logfile of failure stored in: /home/rd=
-otx/yocto/RCU_Yocto/build-firstBoot/tmp/work/qemux86_64-poky-linux/ixxat-s=
ocketcan/1.0-r0/temp/log.do_make_scripts.16494<o:p></o:p></p>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I found on the net that the first er=
ror is sometimes due to the fact that the archive file is corrupted but thi=
s is not the case. I could unpack the file manually using unzip .<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can someone point me to information or help me to fi=
gure out what&#8217;s wrong ??<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Vincent<span lang=3D"FR" style=3D"font-family:&quot;=
Arial&quot;,sans-serif;color:#222222;mso-fareast-language:EN-GB"><o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_VI1P192MB014333E08E0D81CEC356A4958DD30VI1P192MB0143EURP_--
