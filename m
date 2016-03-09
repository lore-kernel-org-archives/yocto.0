Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39B09E00BF8; Wed,  9 Mar 2016 04:55:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.73 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 867 seconds by postgrey-1.32 at yocto-www;
	Wed, 09 Mar 2016 04:55:42 PST
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0073.outbound.protection.outlook.com [157.55.234.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 750D6E0088B
	for <yocto@yoctoproject.org>; Wed,  9 Mar 2016 04:55:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
	s=selector1-nxp-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=NpEju2TGYlO1JKs41vCpOCJTuEMV7R4/7ULqjLqWhYs=;
	b=ZaVRq4LTelb3YhykeDS731haexAZZxb6CWWQxRop4IpSgIxruSReyYPXa4vchHW2S//99BI915hNMx3fJw7EoQJQjUUoZRjZ4GdsHDnDWaF9ixuFm8mrQ0Lq1++H+8tETK37IDbhjgxwFjwKHtG2Xmuo2ZG5Owcnzc6KSI3tYhc=
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	(2a01:111:e400:943c::14) by DB3PR04MB0684.eurprd04.prod.outlook.com
	(2a01:111:e400:943c::14) with Microsoft SMTP Server (TLS) id
	15.1.427.16; Wed, 9 Mar 2016 12:41:13 +0000
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::5d5f:4faf:f854:c77e]) by
	DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::5d5f:4faf:f854:c77e%16]) with mapi id 15.01.0427.019;
	Wed, 9 Mar 2016 12:41:13 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Build failed for ext2.gz.u-boot rootfs
Thread-Index: AdF5/9ZUpBFPF64RTf6QiEY58M45Cw==
Date: Wed, 9 Mar 2016 12:41:13 +0000
Message-ID: <DB3PR04MB06841646CCF411F0C83EB427EEB30@DB3PR04MB0684.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=nxp.com; 
x-originating-ip: [123.151.195.52]
x-ms-office365-filtering-correlation-id: 79f00eb1-646a-40ca-bee4-08d3481819b9
x-microsoft-exchange-diagnostics: 1; DB3PR04MB0684;
	5:geup6fjXDTsUoPQ6hJ+mqSy84GNbvNi1HX4K3NvJsit3xVqpHqrFPFanQRY2is91vYNBZ2CAUBqWAxLr+pcwUxuhpoJPIrdZQJ9kVyEkA+L/Ey2vgRzzLOLVyWfhPaeiZ65RUDQgrAXUW/MpcNCDOg==;
	24:/3TMzbtNnX0EZl8YNnlOJVOi70CSMGvLf5DloPsjHLBdrMEbA5Lbvn84vGfCsscwPXs/QpS87CYUJYSe6Vqz6jOY9kTfjx2J7HDaDPWheAc=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB3PR04MB0684;
x-microsoft-antispam-prvs: <DB3PR04MB06848A63AC549F69C2DEB704EEB30@DB3PR04MB0684.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:DB3PR04MB0684; BCL:0; PCL:0; RULEID:; SRVR:DB3PR04MB0684; 
x-forefront-prvs: 0876988AF0
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(76576001)(575784001)(86362001)(74316001)(66066001)(586003)(790700001)(102836003)(6116002)(92566002)(87936001)(50986999)(54356999)(11100500001)(19300405004)(5004730100002)(3280700002)(1220700001)(110136002)(15975445007)(3660700001)(107886002)(5002640100001)(19625215002)(33656002)(16236675004)(1730700002)(1096002)(5250100002)(81166005)(2501003)(450100001)(3846002)(5008740100001)(5003600100002)(189998001)(2900100001)(19580395003)(229853001)(2351001)(5640700001)(2906002)(5630700001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR04MB0684;
	H:DB3PR04MB0684.eurprd04.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2016 12:41:13.6296 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR04MB0684
Subject: Build failed for ext2.gz.u-boot rootfs
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
X-List-Received-Date: Wed, 09 Mar 2016 12:55:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB3PR04MB06841646CCF411F0C83EB427EEB30DB3PR04MB0684eurp_"

--_000_DB3PR04MB06841646CCF411F0C83EB427EEB30DB3PR04MB0684eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I try to use master branch of poky to build ext2.gz.u-boot rootfs image for=
 qemuarm target, the build failed as the following.  Does somebody know the=
 reason and how to fix it? Thanks in advance.
| Image Name:   core-image-sato-sdk-qemuarm-2016
| Created:      Wed Mar  9 06:11:14 2016
| Image Type:   ARM Linux RAMDisk Image (gzip compressed)
| Data Size:    445885242 Bytes =3D 435434.81 kB =3D 425.23 MB
| Load Address: 00000000
| Entry Point:  00000000
| mkimage: Write error on /home/yocto/poky/qemuarm/tmp/deploy/images/qemuar=
m/core-image-sato-sdk-qemuarm-20160309120517.rootfs.ext2.u-boot: Bad addres=
s
| WARNING: /home/yocto/poky/qemuarm/tmp/work/qemuarm-poky-linux-gnueabi/cor=
e-image-sato-sdk/1.0-r0/temp/run.do_image_ext2.4861:1 exit 1 from 'mkimage =
-A arm -O linux -T ramdisk -C $2 -n core-image-sato-sdk-qemuarm-20160309120=
517 -d /home/yocto/poky/qemuarm/tmp/deploy/images/qemuarm/$1 /home/yocto/po=
ky/qemuarm/tmp/deploy/images/qemuarm/$1.u-boot'
| ERROR: Function failed: do_image_ext2 (log file is located at /home/yocto=
/poky/qemuarm/tmp/work/qemuarm-poky-linux-gnueabi/core-image-sato-sdk/1.0-r=
0/temp/log.do_image_ext2.4861)

Build Configuration:
BB_VERSION        =3D "1.29.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-12.04"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "qemuarm"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "2.0+snapshot-20160309"
TUNE_FEATURES     =3D "arm armv5 thumb dsp"
TARGET_FPU        =3D "soft"
meta
meta-poky
meta-yocto-bsp    =3D "master:5ac3dc76a5afc2ed35b1abfc8e330e0c580eadf0"


Best Regards,

Zhenhua

--_000_DB3PR04MB06841646CCF411F0C83EB427EEB30DB3PR04MB0684eurp_
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
	{font-family:\5B8B\4F53;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@\5B8B\4F53";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
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
<p class=3D"MsoNormal">Hi, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I try to use master branch of poky to build ext2.gz.=
u-boot rootfs image for qemuarm target, the build failed as the following. =
&nbsp;Does somebody know the reason and how to fix it? Thanks in advance.
<o:p></o:p></p>
<p class=3D"MsoNormal">| Image Name:&nbsp;&nbsp; core-image-sato-sdk-qemuar=
m-2016<o:p></o:p></p>
<p class=3D"MsoNormal">| Created:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Wed Mar&nbs=
p; 9 06:11:14 2016<o:p></o:p></p>
<p class=3D"MsoNormal">| Image Type:&nbsp;&nbsp; ARM Linux RAMDisk Image (g=
zip compressed)<o:p></o:p></p>
<p class=3D"MsoNormal">| Data Size:&nbsp;&nbsp;&nbsp; 445885242 Bytes =3D 4=
35434.81 kB =3D 425.23 MB<o:p></o:p></p>
<p class=3D"MsoNormal">| Load Address: 00000000<o:p></o:p></p>
<p class=3D"MsoNormal">| Entry Point:&nbsp; 00000000<o:p></o:p></p>
<p class=3D"MsoNormal">| mkimage: Write error on /home/yocto/poky/qemuarm/t=
mp/deploy/images/qemuarm/core-image-sato-sdk-qemuarm-20160309120517.rootfs.=
ext2.u-boot: Bad address<o:p></o:p></p>
<p class=3D"MsoNormal">| WARNING: /home/yocto/poky/qemuarm/tmp/work/qemuarm=
-poky-linux-gnueabi/core-image-sato-sdk/1.0-r0/temp/run.do_image_ext2.4861:=
1 exit 1 from 'mkimage -A arm -O linux -T ramdisk -C $2 -n core-image-sato-=
sdk-qemuarm-20160309120517 -d /home/yocto/poky/qemuarm/tmp/deploy/images/qe=
muarm/$1
 /home/yocto/poky/qemuarm/tmp/deploy/images/qemuarm/$1.u-boot'<o:p></o:p></=
p>
<p class=3D"MsoNormal">| ERROR: Function failed: do_image_ext2 (log file is=
 located at /home/yocto/poky/qemuarm/tmp/work/qemuarm-poky-linux-gnueabi/co=
re-image-sato-sdk/1.0-r0/temp/log.do_image_ext2.4861)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Build Configuration:<o:p></o:p></p>
<p class=3D"MsoNormal">BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;1.29.0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; =3D &quot;x86_64-linux&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">NATIVELSBSTRING&nbsp;&nbsp; =3D &quot;Ubuntu-12.04&q=
uot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;arm-poky-linux-gnueabi&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D &quot;qemuarm&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; =3D &quot;poky&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;2.0&#43;s=
napshot-20160309&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;arm =
armv5 thumb dsp&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;soft&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">meta-yocto-bsp&nbsp;&nbsp;&nbsp; =3D &quot;master:5a=
c3dc76a5afc2ed35b1abfc8e330e0c580eadf0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Zhenhua <o:p></o:p></p>
</div>
</body>
</html>

--_000_DB3PR04MB06841646CCF411F0C83EB427EEB30DB3PR04MB0684eurp_--
