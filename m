Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 423E7E00D63; Wed, 15 Jun 2016 19:33:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.86 listed in list.dnswl.org]
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
	(mail-db3on0086.outbound.protection.outlook.com [157.55.234.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CBECE00D5B
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 19:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=QaaYKjatikcIxbrsyaDofUrplLB36raxIEsSkg5uc5Q=;
	b=yBlE8vcDiWeOsN4nVWHyP1IaEDaaNS1FhXId8PnTvH52mtLEf0GW9scjEHB3MuZvjt2xEUuWB5Ukws4PC9hNnHRO9Q95ShLDfqGPIC9fMynpvyc/4XHe2pRrjncftFG09oFLXd/wHtiReyROiGBiTzGZH1f9BrSur9bjLbqjH8c=
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	(2a01:111:e400:943c::14) by DB3PR04MB0683.eurprd04.prod.outlook.com
	(2a01:111:e400:943c::13) with Microsoft SMTP Server (TLS) id 15.1.517.8;
	Thu, 16 Jun 2016 02:33:49 +0000
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::cc2b:ef35:1b5f:50ca]) by
	DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::cc2b:ef35:1b5f:50ca%18]) with mapi id 15.01.0501.018;
	Thu, 16 Jun 2016 02:33:48 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: The linux login prompt delays about 5 seconds with systemd
	rootfs 
Thread-Index: AdHHdwpTERGufJn6ROqkf552+1IppA==
Date: Thu, 16 Jun 2016 02:33:48 +0000
Message-ID: <DB3PR04MB0684431F4D11AB64C705942CEE560@DB3PR04MB0684.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [199.59.226.141]
x-ms-office365-filtering-correlation-id: 98d7ee62-3685-4833-f49b-08d3958ea5b5
x-microsoft-exchange-diagnostics: 1; DB3PR04MB0683;
	6:/Q7xOUkhBD5mGXJkUQXHBl6hMLstSuRBB1m/ZVSvuqZ9TpAmK2Qi1pejmo8sLV7XLSZ5w+839OzDXDrhNuIVV/BvL9nFpRQ4wWbtkBIBk4thJk1hGy3zXTRNouOHXLbWFfzNURlUpiygnxTzwMQ0enQWQIuSvtFejIdY+eMZYLWHbCTDFod4Pnu/i5bjrnwNRCg8ziH9iYe3tjMIyjIJ1o3z0IyvpAfYI/nf8maYzIAT6+dKSU4dVDZA6Cohantvm6TYDWdt6egSDX7zf2lukhaxzvn1gzsZDdCFd2sU0H3HRkQ6xWcsmksvv5T3sALp;
	5:VEcqUDnS6mC+hrFQt9lcPy9772ZmIE26iptLpX+0DLZ9UZ8T2XP8LAAHNMlpNnyW+wo+Z/c3um+GPc5Gm9UiApFGITHK+rcUKy9OHUMWqC1YNyTB19yngVXkvWD9obQ+y11i8pOpDMIS3MfzOVPJ1Q==;
	24:prU4g9lyvP973bVbWRTDWuegjXsoQsBmBIStXWYbd8H7S8GctyRMT7dEpKXbs+uWBv3hXn1+Df6c5SNkmYrMn1KfbZRN5yIDE7jB25SJeIw=;
	7:fKG2fBVjYTrNN8QKMiwevr5P4W+cQK29MBYPuNsHr1XinE+sGgw7fyicFv5kl2RC33uEXXQmuNhuuygPhDkydht7rG59QHMeOhTk84CGs6wFX+K0aqW0mr+ioAOVL44DrMpV/U/xcM6qShS/3VAKCGfEyHFzExEndMSa8dvB5uE/cPzYPg/dXf2yfwza6+rZWp7JW+7V8L15ZtKh4vTvFQ==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB3PR04MB0683;
x-microsoft-antispam-prvs: <DB3PR04MB06831D5050730D2D4410BBC2EE560@DB3PR04MB0683.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6055026);
	SRVR:DB3PR04MB0683; BCL:0; PCL:0; RULEID:; SRVR:DB3PR04MB0683; 
x-forefront-prvs: 09752BC779
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(53754006)(189002)(5003600100002)(74316001)(19580395003)(33656002)(87936001)(97736004)(229853001)(76576001)(68736007)(586003)(3846002)(106356001)(107886002)(9686002)(790700001)(92566002)(2351001)(6116002)(110136002)(66066001)(19625215002)(5002640100001)(16236675004)(5640700001)(86362001)(189998001)(54356999)(5630700001)(3660700001)(50986999)(105586002)(450100001)(3280700002)(2900100001)(101416001)(102836003)(15975445007)(5250100002)(5008740100001)(8676002)(8936002)(81156014)(81166006)(1730700003)(2501003)(5004730100002)(2906002)(19300405004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR04MB0683;
	H:DB3PR04MB0684.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; CAT:NONE; LANG:en; CAT:NONE; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2016 02:33:48.4931 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR04MB0683
Subject: The linux login prompt delays about 5 seconds with systemd rootfs
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
X-List-Received-Date: Thu, 16 Jun 2016 02:33:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB3PR04MB0684431F4D11AB64C705942CEE560DB3PR04MB0684eurp_"

--_000_DB3PR04MB0684431F4D11AB64C705942CEE560DB3PR04MB0684eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all,

I try to add the following lines in local.conf to enable systemd, the core-=
image-minimal rootfs can be built successfully.
DISTRO_FEATURES_append =3D " systemd"
VIRTUAL-RUNTIME_init_manager =3D "systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
VIRTUAL-RUNTIME_initscripts =3D ""

When the systemd rootfs is used to bootup the board,  After the last system=
d service startup log is printed, the console will wait about 5 seconds bef=
ore the linux login prompt appears.
[  OK  ] Started D-Bus System Message Bus.
         Starting Login Service...
[  OK  ] Started Login Service.
<wait about 5 seconds>
Poky (Yocto Project Reference Distro) 2.1+snapshot-20160616 t1040d4rdb ttyS=
0

t1040d4rdb login:

Does somebody know if the delay time can be customized and how to set it?


Best Regards,

Zhenhua

--_000_DB3PR04MB0684431F4D11AB64C705942CEE560DB3PR04MB0684eurp_
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
<p class=3D"MsoNormal">I try to add the following lines in local.conf to en=
able systemd, the core-image-minimal rootfs can be built successfully.
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">DISTRO_FEATURES_append =
=3D &quot; systemd&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">VIRTUAL-RUNTIME_init_mana=
ger =3D &quot;systemd&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">DISTRO_FEATURES_BACKFILL_=
CONSIDERED =3D &quot;sysvinit&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">VIRTUAL-RUNTIME_initscrip=
ts =3D &quot;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When the systemd rootfs is used to bootup the board,=
 &nbsp;After the last systemd service startup log is printed, the console w=
ill wait about 5 seconds before the linux login prompt appears.
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">[&nbsp; OK&nbsp; ] Starte=
d D-Bus System Message Bus.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; Starting Login Service...<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">[&nbsp; OK&nbsp; ] Starte=
d Login Service.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><span style=3D"color:r=
ed">&lt;wait about 5 seconds&gt;</span><o:p></o:p></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Poky (Yocto Project Refer=
ence Distro) 2.1&#43;snapshot-20160616 t1040d4rdb ttyS0<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">t1040d4rdb login:<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Does somebody know if the delay time can be customiz=
ed and how to set it?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Zhenhua <o:p></o:p></p>
</div>
</body>
</html>

--_000_DB3PR04MB0684431F4D11AB64C705942CEE560DB3PR04MB0684eurp_--
