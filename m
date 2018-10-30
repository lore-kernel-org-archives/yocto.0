Return-Path: <radoslaw.chmielarz@leica-geosystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 502EFE00BD0; Tue, 30 Oct 2018 04:18:05 -0700 (PDT)
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
	*      [40.107.0.135 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
	(mail-eopbgr00135.outbound.protection.outlook.com [40.107.0.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A94C6E00A1A
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 04:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com; 
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Y4+zsCBtSyA2UHIbTTxqa8lSGkYtXTG+fHqHxz7ci8w=;
	b=ffFCHVTO5nYqmNHmkRjHKEOnWmUfw01G2dabyx1+zTtav5+waYTnxOoMkZC452P5gi0ZI2n5kRg+f58VWehVPg15ec5XPqyG2sf+Gm1PZIUZa9neq8Vj1tSSH4ChP8kgMVaskaD+ljS9d7B7+4XLXnHCBzrLTo3JQaEWzPjyj/4=
Received: from AM5PR0602MB2802.eurprd06.prod.outlook.com (10.175.39.151) by
	AM5PR0602MB3249.eurprd06.prod.outlook.com (10.167.170.154) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1273.21; Tue, 30 Oct 2018 11:02:25 +0000
Received: from AM5PR0602MB2802.eurprd06.prod.outlook.com
	([fe80::d000:7ca0:c36a:6e0a]) by
	AM5PR0602MB2802.eurprd06.prod.outlook.com
	([fe80::d000:7ca0:c36a:6e0a%2]) with mapi id 15.20.1273.027;
	Tue, 30 Oct 2018 11:02:24 +0000
From: CHMIELARZ Radoslaw <radoslaw.chmielarz@leica-geosystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Kernel development using externalsrc
Thread-Index: AdRwPm82y9iLj5CSSLqBxiGADRnErQ==
Date: Tue, 30 Oct 2018 11:02:24 +0000
Message-ID: <AM5PR0602MB2802CE6D0351FEED6E8088E1B1CC0@AM5PR0602MB2802.eurprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=radoslaw.chmielarz@leica-geosystems.com; 
x-originating-ip: [193.8.40.126]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM5PR0602MB3249;
	6:T/MKsu9dw3yjMOHkyEGR2FDgTVenRqStF6dxTuUCUkhjUVK3bsUQJd6wiOGaiKn+9iFkkSVQGxc7rzGe70VGAHDHwEZaZgnQw6MnsBCwnpNBB71X1hUUad19OdhO7Og5UwiHoc/PJQYei/31VUbau73/Vmg4J6YSo54vm4dMVYXBu75/owFKlb5dqEjuv3TrZ8EbPSSxeHeUYGzBTkiMUL8AF/49x3T2S0qn2wrqQgOk7vVpYVlWAuQbaUrOFJMstWdWEfjvh5R3njt0F8AQsTVtZMBVyCpI07LO30aXeVZCO3dS+E0CUGvcNl3NfZ8lWlsklPeAr4a8mLHVJoAJUII6nykVE4aoesxYVzpgxbSTHwW1ka9hVrQmZGz5/WbOgmuLMOxm4NAQCCYkraHI4Esmx4g+/apPFc6SMgCfqqPCh7ftmDmWWYp2y6k4wIzoJnXnGgyE8ta4lv0+z+UYmA==;
	5:OtWVw9cbd8Vdeq9+MWACC+S1cs+TZ2NHQXXunjusbiSvMGW3SaiDU54PaXR7OfANybnP0+xtloeIoKpVeQjqZTsEhdQ0VAan9P8QhgobQCk/VjpeEn+jKNNoFyR35czKxldj4iapcQym219MT8zl1kgrsXN7NBNPHJipoA0JNVs=;
	7:1ouuDcGqVndTiNN43IWJV0fCT1JqDpzvyJOLf6dNaOZobYpm9MkL9NgFgK0LPq1GtMbHIHRROfzY2jnT1KwY7O/nNPiNURNiNBNx0sA/4M8DRG2hg5kAAt0wF6DwUiKpoV4Hiu4JtwPSpEJz7PseBw==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 6f5250f2-204f-4e71-8a0d-08d63e572c6c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600074)(711020)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:AM5PR0602MB3249; 
x-ms-traffictypediagnostic: AM5PR0602MB3249:
x-microsoft-antispam-prvs: <AM5PR0602MB3249E85747EBD27CF23AE9F0B1CC0@AM5PR0602MB3249.eurprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(271806183753584)(158342451672863)(21748063052155)(28532068793085)(190501279198761)(227612066756510);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3002001)(3231382)(944501410)(52105095)(6055026)(148016)(149066)(150057)(6041310)(20161123558120)(20161123564045)(20161123560045)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(201708071742011)(7699051)(76991095);
	SRVR:AM5PR0602MB3249; BCL:0; PCL:0; RULEID:;
	SRVR:AM5PR0602MB3249; 
x-forefront-prvs: 08417837C5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39860400002)(376002)(366004)(346002)(136003)(396003)(53754006)(199004)(189003)(486006)(3480700004)(316002)(54896002)(55016002)(6306002)(53936002)(2501003)(2906002)(74316002)(476003)(33656002)(2900100001)(81166006)(5630700001)(236005)(68736007)(81156014)(8676002)(186003)(5250100002)(5640700003)(6436002)(21615005)(97736004)(66066001)(19627235002)(1730700003)(9686003)(99286004)(256004)(8936002)(14444005)(14454004)(86362001)(6916009)(790700001)(3846002)(478600001)(105586002)(7696005)(71190400001)(6116002)(71200400001)(2351001)(26005)(102836004)(6506007)(25786009)(106356001)(7736002)(606006)(5660300001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5PR0602MB3249;
	H:AM5PR0602MB2802.eurprd06.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: leica-geosystems.com does not
	designate permitted sender hosts)
x-microsoft-antispam-message-info: rSlUh/hJ7eq5JaeDbtG6E52s55OYLjsg9V/RaM4nh391G5anaf/I1yRytjHxd+vm0x1+uDIGcLj/uv9eFdWokDIeu++5dHhlO8ave1ZhHPViQ+kOcqHDRw7OXbAFj4F3m4OVZQGDrARMPdjhkAZMi0UZ3tzOH2bosg7z2jUhYrXvIA5YdLumhuQGh8qpjCO+PTcXBPWjHRWEhUDe9UNhwrb7wgVbSXKtiMRbwVwzrTQ0B4zxkRerx6br7xoNjJMFmUXrXDtUKqbumvJZUkTYWmC2fYVtxqNA/IYsyjZkyJ5uqovSRoS5D3L0sU8lQgb52csv/UJwvn473gUfMsGs9dXCHiaVfWiWCTGMRbkSDQw=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f5250f2-204f-4e71-8a0d-08d63e572c6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2018 11:02:24.6370 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0602MB3249
X-Mailman-Approved-At: Fri, 02 Nov 2018 08:46:10 -0700
Subject: Kernel development using externalsrc
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
X-List-Received-Date: Tue, 30 Oct 2018 11:18:05 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM5PR0602MB2802CE6D0351FEED6E8088E1B1CC0AM5PR0602MB2802_"

--_000_AM5PR0602MB2802CE6D0351FEED6E8088E1B1CC0AM5PR0602MB2802_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

The company I work for uses yocto to build an image with a custom linux ker=
nel. The documentation (https://www.yoctoproject.org/docs/2.5.1/kernel-dev/=
kernel-dev.html) suggests a setup where the kernel is under git and the ker=
nel recipe specifies this git repository hence the workflow is the followin=
g:

  1.  Make changes in local kernel directory
  2.  Submit changes to git (and presumably push to shared space)
  3.  Run yocto build which fetches the changes

However since I don't want to push the changes to git server before I test =
locally I have added the kernel sources using externalsrc. Unfortunately th=
is has the drawback that linux-libc-headers runs do_configure and do_instal=
l phase which invalidates glibc-initial and requires a recompilation of a c=
ouple of hundreds of packages. I would like to avoid it.

Thus my question is: how can I retain this setup where I only make local ch=
anges to the kernel without yocto rebuilding glibc and dependent packages?

To add more background we are using morty release and the changes in kernel=
 will be in configuration and devices (probably as modules but some may be =
included with the kernel binary). Glibc is also an externalsrc project at t=
he moment since I'm trying to upgrade to newer yocto release but this will =
be taken from git in the long run.

Cheers,
Radek

--_000_AM5PR0602MB2802CE6D0351FEED6E8088E1B1CC0AM5PR0602MB2802_
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
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:910850034;
	mso-list-type:hybrid;
	mso-list-template-ids:1496849202 134676497 134676505 134676507 134676495 1=
34676505 134676507 134676495 134676505 134676507;}
@list l0:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
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
<body lang=3D"DE-CH" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"PL">Hi all,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The company I work for uses yoc=
to to build an image with a custom linux kernel. The documentation (</span>=
<span lang=3D"FR"><a href=3D"https://www.yoctoproject.org/docs/2.5.1/kernel=
-dev/kernel-dev.html"><span lang=3D"EN-US">https://www.yoctoproject.org/doc=
s/2.5.1/kernel-dev/kernel-dev.html</span></a></span><span lang=3D"EN-US">)
 suggests a setup where the kernel is under git and the kernel recipe speci=
fies this git repository hence the workflow is the following:<o:p></o:p></s=
pan></p>
<ol style=3D"margin-top:0cm" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1"><span lang=3D"EN-US">Make changes in local kernel directory<o:p></o:p=
></span></li><li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-li=
st:l0 level1 lfo1"><span lang=3D"EN-US">Submit changes to git (and presumab=
ly push to shared space)<o:p></o:p></span></li><li class=3D"MsoListParagrap=
h" style=3D"margin-left:0cm;mso-list:l0 level1 lfo1"><span lang=3D"EN-US">R=
un yocto build which fetches the changes<o:p></o:p></span></li></ol>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">However since I don&#8217;t wan=
t to push the changes to git server before I test locally I have added the =
kernel sources using externalsrc. Unfortunately this has the drawback that =
linux-libc-headers runs do_configure and do_install
 phase which invalidates glibc-initial and requires a recompilation of a co=
uple of hundreds of packages. I would like to avoid it.<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thus my question is: how can I =
retain this setup where I only make local changes to the kernel without yoc=
to rebuilding glibc and dependent packages?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">To add more background we are u=
sing morty release and the changes in kernel will be in configuration and d=
evices (probably as modules but some may be included with the kernel binary=
). Glibc is also an externalsrc project
 at the moment since I&#8217;m trying to upgrade to newer yocto release but=
 this will be taken from git in the long run.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Cheers,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Radek <o:p></o:p></span></p>
</div>
</body>
</html>

--_000_AM5PR0602MB2802CE6D0351FEED6E8088E1B1CC0AM5PR0602MB2802_--
