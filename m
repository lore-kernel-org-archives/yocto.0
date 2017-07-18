Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D45FE00BAB; Tue, 18 Jul 2017 10:20:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.241.32.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from g9t1613g.houston.hpe.com (g9t1613g.houston.hpe.com
	[15.241.32.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D5DFE00B67
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 10:20:37 -0700 (PDT)
Received: from g2t2352.austin.hpe.com (g2t2352.austin.hpe.com [15.233.44.25])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g9t1613g.houston.hpe.com (Postfix) with ESMTPS id 2EBD961476
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 17:20:37 +0000 (UTC)
Received: from G2W6310.americas.hpqcorp.net (g2w6310.austin.hp.com
	[16.197.64.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t2352.austin.hpe.com (Postfix) with ESMTPS id D54FA8A
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 17:20:35 +0000 (UTC)
Received: from G9W8454.americas.hpqcorp.net (2002:10d8:a104::10d8:a104) by
	G2W6310.americas.hpqcorp.net (2002:10c5:4034::10c5:4034) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Tue, 18 Jul 2017 17:19:47 +0000
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (15.241.52.13) by
	G9W8454.americas.hpqcorp.net (16.216.161.4) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Tue, 18 Jul 2017 17:19:47 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.157) by
	TU4PR84MB0175.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.156) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1261.13; Tue, 18 Jul 2017 17:19:46 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) by
	TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) with mapi id
	15.01.1261.022; Tue, 18 Jul 2017 17:19:46 +0000
From: "Koehler, Yannick" <yannick.koehler@hpe.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Upgrading to Yocto 1.8 : Kernel module issue due to missing
	work-shared/<arch>/kernel-source
Thread-Index: AdL/6WWYPbYHNjdXTSmugBtZtfZJww==
Date: Tue, 18 Jul 2017 17:19:45 +0000
Message-ID: <TU4PR84MB017624A794B4D62797ABD78DEDA10@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=hpe.com; 
x-originating-ip: [15.219.163.10]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TU4PR84MB0175;
	7:GX/n80WWb3m+PoOy++G/ZJgcqkNPBJCFhMjr0WDRNTsSSnSB7bCZSugpGq+A0oPav4u0uXW5IruYKqu5nE39dHH1TtTJdd37Bskt3JZ/Cklu5alUjtpbaVdt0zgBiFzylmRHc9RYAV1tnwm0SH76XIJZyshxSRbMAa915XiVJPaQm57b3K0J0PDiLbnK4yabAG4Y6+J3HrLnrJK7imE21PR4+negQcjZrfR8aJ7jeJvTY9vszENta49ZAfWmYRqUxdEYuoBClrV/VXPUsNNJGD3aUPxInbdyzfAQhAXLzqb0wQNMDBV/YQlPa+w3TMb1KiWeiM+t2hTRjuyiThExtZENVTJp/BCoDwVfRrnAfgoEMbKsaM76vQc/GSg5pHjsW94+jJS+5c0ZZ1JldP6sr1JiyjEy8UJpR6HdEhad5f6M2/t6tx7tlG/wToej0z1YrqjDLhrKmQZYpNnc2bIpNINvaFztuGnxKq99ay1mvNeLkpuD3B1XfXddu9xdLSf8aQR09wwbzag1rHia2X7+0yDquuryGVgTFCjl6cXDBTHesz3dYsK6q9f71nN0eOwGzl6P8dNyiTPPsTLa1tSrnwO7ZJZTpACUWd7cwKFHF2dS0IKxyzZjUXIFjuHWpoeH8/qNr0WSx4NMWsLnXh0f74xLK6FD4ECfO6q7+H3Pf4REQUk8q7l6qSN2StvYWXlPB9EPQIG4v4hGOYLst51MuHRBMKi37yiBZXo/nJE6xxMkeJxLkRna0PUk3/LatBWZl5wX9ZHoLtBXHYfla1V1QnTJghmELyVt72Y/lHzwRRc=
x-ms-office365-filtering-correlation-id: ee243c0d-c176-410b-112a-08d4ce013000
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254075)(300000503095)(300135400095)(48565401081)(2017052603031)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:TU4PR84MB0175; 
x-ms-traffictypediagnostic: TU4PR84MB0175:
x-exchange-antispam-report-test: UriScan:(151999592597050)(26388249023172)(236129657087228)(21748063052155)(247924648384137);
x-microsoft-antispam-prvs: <TU4PR84MB01756FAEF71C9717DB6F9623EDA10@TU4PR84MB0175.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(2017060910075)(8121501046)(5005006)(93006095)(93001095)(100000703101)(100105400095)(3002001)(10201501046)(6055026)(6041248)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123564025)(20161123555025)(20161123562025)(20161123560025)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:TU4PR84MB0175; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:TU4PR84MB0175; 
x-forefront-prvs: 037291602B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39410400002)(39850400002)(39400400002)(39450400003)(39840400002)(39860400002)(66066001)(38730400002)(110136004)(33656002)(50986999)(5630700001)(55016002)(54896002)(9686003)(6306002)(790700001)(6116002)(102836003)(3846002)(25786009)(5640700003)(86362001)(53936002)(77096006)(6506006)(6436002)(478600001)(189998001)(74316002)(2501003)(2900100001)(6916009)(2351001)(14454004)(7696004)(8936002)(2906002)(3660700001)(7736002)(54356999)(3280700002)(5660300001)(8676002)(1730700003)(81166006);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR84MB0175;
	H:TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2017 17:19:45.9610 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR84MB0175
X-OriginatorOrg: hpe.com
Subject: Upgrading to Yocto 1.8 : Kernel module issue due to missing work-shared/<arch>/kernel-source
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
X-List-Received-Date: Tue, 18 Jul 2017 17:20:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TU4PR84MB017624A794B4D62797ABD78DEDA10TU4PR84MB0176NAMP_"

--_000_TU4PR84MB017624A794B4D62797ABD78DEDA10TU4PR84MB0176NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi guys,

Question for you, we were using Yocto 1.6, and I am proceeding to upgrade t=
o 2.2, going one release at a time.  Upgrade to 1.7 was with no problem, bu=
t 1.8 seems to have an issue due to missing work-shared/<machine>/kernel-so=
urce folder (aka STAGING_KERNEL_DIR or KERNEL_SRC).  The folder appears mis=
sing and the main reason behind it is the usage of externalsrc for the kern=
el.  The kernel.bbclass appears to copy the ${S} content to ${STAGING_KERNE=
L_DIR} folder, but it does so under the do_unpack function via base_do_unpa=
ck_append().  The thing is that the externalsrc.bbclass remove the fetch/un=
pack task from existing for any package, including kernel.  It is yet, inte=
resting to see that the base_do_unpack_append() function does check for the=
 presence of EXTENRAL_SRC variable, even if that task for this context is n=
ever ran.

As such, I am unclear about what the ideal way to resolve this is, as I req=
uired the folder, and in previous release this was created in the do_instal=
l.  So I am thinking of putting it back there, yet, I do not understand why=
 the EXTERNAL_SRC variable is referred from unpack, which seems like a noop=
 to me, and as such I am afraid to have miss something.

Any help appreciated.

--
Yannick Koehler

--_000_TU4PR84MB017624A794B4D62797ABD78DEDA10TU4PR84MB0176NAMP_
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
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-CA" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi guys,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Question for you, we were using Yocto 1.6, and I am =
proceeding to upgrade to 2.2, going one release at a time.&nbsp; Upgrade to=
 1.7 was with no problem, but 1.8 seems to have an issue due to missing wor=
k-shared/&lt;machine&gt;/kernel-source folder
 (aka STAGING_KERNEL_DIR or KERNEL_SRC).&nbsp; The folder appears missing a=
nd the main reason behind it is the usage of externalsrc for the kernel.&nb=
sp; The kernel.bbclass appears to copy the ${S} content to ${STAGING_KERNEL=
_DIR} folder, but it does so under the do_unpack
 function via base_do_unpack_append(). &nbsp;The thing is that the external=
src.bbclass remove the fetch/unpack task from existing for any package, inc=
luding kernel.&nbsp; It is yet, interesting to see that the base_do_unpack_=
append() function does check for the presence
 of EXTENRAL_SRC variable, even if that task for this context is never ran.=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As such, I am unclear about what the ideal way to re=
solve this is, as I required the folder, and in previous release this was c=
reated in the do_install.&nbsp; So I am thinking of putting it back there, =
yet, I do not understand why the EXTERNAL_SRC
 variable is referred from unpack, which seems like a noop to me, and as su=
ch I am afraid to have miss something.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help appreciated.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--<o:p></o:p></p>
<p class=3D"MsoNormal">Yannick Koehler<o:p></o:p></p>
</div>
</body>
</html>

--_000_TU4PR84MB017624A794B4D62797ABD78DEDA10TU4PR84MB0176NAMP_--
