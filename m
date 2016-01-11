Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16925E00B70; Mon, 11 Jan 2016 02:33:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.99 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 898 seconds by postgrey-1.32 at yocto-www;
	Mon, 11 Jan 2016 02:33:33 PST
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0099.outbound.protection.outlook.com [157.56.112.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2A48E00B66
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 02:33:33 -0800 (PST)
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	(2a01:111:e400:943c::14) by DB3PR04MB0684.eurprd04.prod.outlook.com
	(2a01:111:e400:943c::14) with Microsoft SMTP Server (TLS) id
	15.1.361.13; Mon, 11 Jan 2016 10:18:31 +0000
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::4199:fccd:5868:d56c]) by
	DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::4199:fccd:5868:d56c%17]) with mapi id 15.01.0361.006;
	Mon, 11 Jan 2016 10:18:31 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: The problem of linux-yocto external source build 
Thread-Index: AdFMWV2diUq3qN6NR2agKn0jGCioLw==
Date: Mon, 11 Jan 2016 10:18:31 +0000
Message-ID: <DB3PR04MB0684E33036C797D6CEF23A71EEC90@DB3PR04MB0684.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [199.59.230.102]
x-microsoft-exchange-diagnostics: 1; DB3PR04MB0684;
	5:7NXLVO7BQCBtibkoHxAA4iAFgZQfQ9Z+k5bfBDUSkM4PpuTY4BpIAlv8/iG6AyTcB5nQx4xpcXX1k2/A0uh2CDImfLb9kaCxV/1TB2lAlR+gv8FdWuclsxx2/1KrdLZ6f7FxNIGerpgy4OW3NP6MBQ==;
	24:r2b8UOUTtcEm936ki4CcBNQ52rTeNjPAnkMC5sb1YWt2qYi4P5jKledl4NBUB96qCMgaWCmfhmYGvQPGgmnycNcjA94uzY9m4rOvrOsKdRw=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB3PR04MB0684;
x-ms-office365-filtering-correlation-id: 081d1bd4-24b9-4a73-1476-08d31a708e69
x-microsoft-antispam-prvs: <DB3PR04MB0684DDC3171FFE58E9C3B5D8EEC90@DB3PR04MB0684.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(520078)(5005006)(3002001)(10201501046);
	SRVR:DB3PR04MB0684; BCL:0; PCL:0; RULEID:; SRVR:DB3PR04MB0684; 
x-forefront-prvs: 0818724663
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(979002)(6009001)(199003)(189002)(53754006)(54356999)(40100003)(3846002)(106356001)(2351001)(229853001)(5003600100002)(87936001)(5002640100001)(19625215002)(5004730100002)(5250100002)(105586002)(16236675004)(92566002)(74316001)(1730700002)(101416001)(11100500001)(15975445007)(76576001)(107886002)(19580395003)(450100001)(1096002)(2900100001)(5001960100002)(86362001)(189998001)(2501003)(50986999)(97736004)(6116002)(66066001)(5008740100001)(110136002)(586003)(81156007)(790700001)(19300405004)(2906002)(102836003)(1220700001)(33656002)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR04MB0684;
	H:DB3PR04MB0684.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2016 10:18:31.5719 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR04MB0684
Subject: The problem of linux-yocto external source build
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
X-List-Received-Date: Mon, 11 Jan 2016 10:33:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB3PR04MB0684E33036C797D6CEF23A71EEC90DB3PR04MB0684eurp_"

--_000_DB3PR04MB0684E33036C797D6CEF23A71EEC90DB3PR04MB0684eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I try to use the HEAD of poky master to build the external source for linux=
-yocto. the following lines are added in conf/local.conf.
PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto"
INHERIT +=3D "externalsrc"
EXTERNALSRC_pn-linux-yocto =3D "/home/yocto/my-linux-src"

When I build a rootfs which includes cyptodev-module, the following error a=
ppears. Can somebody please help on how to fix the build error?
$ bitbake cryptodev-module
Loading cache: 100% |######################################################=
#################################################| ETA:  00:00:00
Loaded 1296 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        =3D "1.28.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Fedora-22"
TARGET_SYS        =3D "i586-poky-linux"
MACHINE           =3D "qemux86"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "2.0+snapshot-20160111"
TUNE_FEATURES     =3D "m32 i586"
TARGET_FPU        =3D ""
meta
meta-yocto
meta-yocto-bsp    =3D "master:221d864042658daa054281aab439b44d54fe94d7"

NOTE: Preparing RunQueue
ERROR: Task do_make_scripts in /home/yocto/poky/meta/recipes-kernel/cryptod=
ev/cryptodev-module_1.8.bb depends upon non-existent task do_shared_workdir=
 in /home/yocto/poky/meta/recipes-kernel/linux/linux-yocto_4.1.bb

Summary: There was 1 ERROR message shown, returning a non-zero exit code.


Best Regards,

Zhenhua

--_000_DB3PR04MB0684E33036C797D6CEF23A71EEC90DB3PR04MB0684eurp_
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
<p class=3D"MsoNormal">Hi all, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I try to use the HEAD of poky master to build the ex=
ternal source for linux-yocto. the following lines are added in conf/local.=
conf.
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">PREFERRED_PROVIDER_virtua=
l/kernel =3D &quot;linux-yocto&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">INHERIT &#43;=3D &quot;ex=
ternalsrc&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">EXTERNALSRC_pn-linux-yoct=
o =3D &quot;/home/yocto/my-linux-src&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I build a rootfs which includes cyptodev-module=
, the following error appears. Can somebody please help on how to fix the b=
uild error?
<o:p></o:p></p>
<p class=3D"MsoNormal">$ bitbake cryptodev-module<o:p></o:p></p>
<p class=3D"MsoNormal">Loading cache: 100% |###############################=
########################################################################| E=
TA:&nbsp; 00:00:00<o:p></o:p></p>
<p class=3D"MsoNormal">Loaded 1296 entries from dependency cache.<o:p></o:p=
></p>
<p class=3D"MsoNormal">NOTE: Resolving any missing task queue dependencies<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Build Configuration:<o:p></o:p></p>
<p class=3D"MsoNormal">BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;1.28.0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; =3D &quot;x86_64-linux&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">NATIVELSBSTRING&nbsp;&nbsp; =3D &quot;Fedora-22&quot=
;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;i586-poky-linux&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D &quot;qemux86&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; =3D &quot;poky&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;2.0&#43;s=
napshot-20160111&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;m32 =
i586&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 <o:p></o:p></p>
<p class=3D"MsoNormal">meta-yocto-bsp&nbsp;&nbsp;&nbsp; =3D &quot;master:22=
1d864042658daa054281aab439b44d54fe94d7&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">NOTE: Preparing RunQueue<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task do_make_scripts in /home/yocto/poky/meta=
/recipes-kernel/cryptodev/cryptodev-module_1.8.bb depends upon non-existent=
 task do_shared_workdir in /home/yocto/poky/meta/recipes-kernel/linux/linux=
-yocto_4.1.bb<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: There was 1 ERROR message shown, returning =
a non-zero exit code.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Zhenhua <o:p></o:p></p>
</div>
</body>
</html>

--_000_DB3PR04MB0684E33036C797D6CEF23A71EEC90DB3PR04MB0684eurp_--
