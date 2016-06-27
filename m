Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8BB5E00EB6; Mon, 27 Jun 2016 01:17:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.81 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0081.outbound.protection.outlook.com [157.55.234.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6DDDE00D3D
	for <yocto@yoctoproject.org>; Mon, 27 Jun 2016 01:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=JecansI1TQDcjQmdNQOf38l57+DDWZ8JQi7cAYr7Cnc=;
	b=U3W7I3lOSJVj/I6wsvZobfg8MzOk8l6Z6+GA0Db7IgcbMeEJolPyaGO28D0mpbWwFdGGD4hEWQcPmyif47UXRCNrIN0Rolue1rEj1PT7/1orQ/Vr9FGNW0YCV1TCgn9HPdEY447o1fhB5koDwy5A2LMl8tB/xqsuuobpLMmY6n8=
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com (10.160.49.142) by
	DB3PR04MB0681.eurprd04.prod.outlook.com (10.160.49.139) with Microsoft
	SMTP Server (TLS) id 15.1.517.8; Mon, 27 Jun 2016 08:16:58 +0000
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::1d30:44c0:d745:ccc5]) by
	DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::1d30:44c0:d745:ccc5%18]) with mapi id 15.01.0523.019;
	Mon, 27 Jun 2016 08:16:59 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Failed to cross compile kernel with Yocto toolchain
Thread-Index: AdHQTEHdkEKXnHfPRAm5aHur2N6Vqw==
Date: Mon, 27 Jun 2016 08:16:59 +0000
Message-ID: <DB3PR04MB068442CB73636660A925BBFAEE210@DB3PR04MB0684.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [199.59.231.64]
x-ms-office365-filtering-correlation-id: b9d2ac52-982c-475e-c00f-08d39e63692d
x-microsoft-exchange-diagnostics: 1; DB3PR04MB0681;
	6:hwolGB660xLbAuFdeaC6LYV52JpMfw/gAlvLK3NJJaKzIiXZSkrO1ffR5LRSsgbkWNHbNlDrK3MEaYF94TcxR0BGGBHmcBSGRno0xUFOVOkQ1L3ATDjCevEzM5OWl28AtGJk7I0SVAlqbYFcd+8K32AdaRUCxMzXLJo4MqoATN2pYYWz9k3ye8Rzd/r9E3bknh4nMyGQ0OOlwheLvfjtosnKJmNnYn/4s75Pw1zTjvusWJGu0TgeocXRG03sPZ/H3Wna8/H1Nvv625JOmup5Iaysz6sNN8sJZ1NvnVO2USsNNlO21AFrBRed6Tjd9W3Wb3o74cZNirlj0UxJZknLRPIXgeduLx9nr5in60EU+aY=;
	5:ObwrytxUt7tGX8IHalGFJw8KLxiEymFpSeGyLKXUqV7EL72ASr/M5XusffA9fPFbRQbu1p0uKQLPbrU+37DGvkree1qh9NY8z5DXE5LrgBhuvblxQKtcccKDwOUtSKl8GRq1AlO8OHd+xIWSr0q03w==;
	24:S11gojJOMi8+iyeYCVwxXLTeaVWZrCxr13W5GhYGe3vFk5Mk16MOxQPVyoSIf7XB9DMrxr0ZiOw/hxuvf3OCt1lRpoLy3vpfXAK/vVvSLuQ=;
	7:K6Srcv88OUL/wSXoKxBdzXz8gO1XQp5B5xrVZySi3q3Hq6JQlPFGo892dASvqlHSSecs2i67Ttc7hpRfw4DavocWHVM0C0LiSI5nOSxkPyvL8fY07IoMhLUJ0GuNibhCdPiSIA1ssSlZ9FW8hutIw0A+ePU1UHOoKl6Z6eFVNKNDSKfv8kpt20rk1CY6N17yzLDnrFul7DAWEnYRgJiU/lZzLucdx1gUd/Zl2d9ZFtOsu+iYkCt59sRcS8uX+b/j
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB3PR04MB0681;
x-microsoft-antispam-prvs: <DB3PR04MB06819813B05E3A80C51A5B24EE210@DB3PR04MB0681.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6055026);
	SRVR:DB3PR04MB0681; BCL:0; PCL:0; RULEID:; SRVR:DB3PR04MB0681; 
x-forefront-prvs: 09860C2161
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(189002)(53754006)(450100001)(76576001)(81156014)(81166006)(2501003)(2351001)(68736007)(19580395003)(229853001)(105586002)(97736004)(92566002)(33656002)(66066001)(8936002)(2906002)(7696003)(106356001)(7736002)(5003600100003)(19300405004)(16236675004)(54356999)(50986999)(5250100002)(790700001)(19625215002)(8676002)(586003)(9686002)(86362001)(3280700002)(5630700001)(2900100001)(5640700001)(15975445007)(5002640100001)(101416001)(107886002)(74316001)(1730700003)(7846002)(87936001)(6116002)(102836003)(3660700001)(110136002)(3846002)(189998001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR04MB0681;
	H:DB3PR04MB0684.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; CAT:NONE; LANG:en; CAT:NONE; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2016 08:16:59.0440 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR04MB0681
Subject: Failed to cross compile kernel with Yocto toolchain
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
X-List-Received-Date: Mon, 27 Jun 2016 08:17:05 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB3PR04MB068442CB73636660A925BBFAEE210DB3PR04MB0684eurp_"

--_000_DB3PR04MB068442CB73636660A925BBFAEE210DB3PR04MB0684eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all,

I generate the Yocto toolchain by "bitbake meta-toolchain", and use this to=
olchain to cross-compile kernel, I met the following error. Is this a bug o=
r I missed something? My host Linux is Fedora 22.

$ source /opt/poky/2.1+snapshot/environment-setup-ppce500mc-poky-linux
$ cd linux/
$ make corenet32_smp_defconfig
  HOSTCC  scripts/kconfig/conf.o
ccache: error: Could not find compiler "gcc" in PATH
scripts/Makefile.host:108: recipe for target 'scripts/kconfig/conf.o' faile=
d
make[1]: *** [scripts/kconfig/conf.o] Error 1
Makefile:541: recipe for target 'corenet32_smp_defconfig' failed
make: *** [corenet32_smp_defconfig] Error 2


Best Regards,

Zhenhua

--_000_DB3PR04MB068442CB73636660A925BBFAEE210DB3PR04MB0684eurp_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:SimSun;
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
<p class=3D"MsoNormal">Hello all, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I generate the Yocto toolchain by &#8220;bitbake met=
a-toolchain&#8221;, and use this toolchain to cross-compile kernel, I met t=
he following error. Is this a bug or I missed something? My host Linux is F=
edora 22.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">$ source /opt/poky/2.1&#43;snapshot/environment-setu=
p-ppce500mc-poky-linux
<o:p></o:p></p>
<p class=3D"MsoNormal">$ cd linux/<o:p></o:p></p>
<p class=3D"MsoNormal">$ make corenet32_smp_defconfig<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; HOSTCC&nbsp; scripts/kconfig/conf.o<o:p></o:p=
></p>
<p class=3D"MsoNormal">ccache: error: Could not find compiler &quot;gcc&quo=
t; in PATH<o:p></o:p></p>
<p class=3D"MsoNormal">scripts/Makefile.host:108: recipe for target 'script=
s/kconfig/conf.o' failed<o:p></o:p></p>
<p class=3D"MsoNormal">make[1]: *** [scripts/kconfig/conf.o] Error 1<o:p></=
o:p></p>
<p class=3D"MsoNormal">Makefile:541: recipe for target 'corenet32_smp_defco=
nfig' failed<o:p></o:p></p>
<p class=3D"MsoNormal">make: *** [corenet32_smp_defconfig] Error 2<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Zhenhua <o:p></o:p></p>
</div>
</body>
</html>

--_000_DB3PR04MB068442CB73636660A925BBFAEE210DB3PR04MB0684eurp_--
