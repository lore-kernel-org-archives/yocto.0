Return-Path: <Joel.Esponde@Honeywell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B2F2E00961; Mon, 20 Mar 2017 06:47:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.112 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 7148 seconds by postgrey-1.32 at yocto-www;
	Mon, 20 Mar 2017 06:47:02 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0112.outbound.protection.outlook.com [104.47.34.112])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E45CE00901
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 06:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Honeywell.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=nOKE8z68KW0tXmwQ/LG36fbLq64FcHiak0bqCmhDEtE=;
	b=AwK3t6NtMVlwIk7EN0g6AjjN16jcBLH4FPmvtCRpqCrTv/rlQ5Hyxqpt2Fqyl144DMraAKE/HRhOoE6ATJUCmc0UCF+jAefFE8EMP0HXJGTAFszCIq83IZjpqdvh76fn+t1TZ88kIrrMPT5FsIiT89e/ehi3ET980K9RbUCNoGE=
Received: from CO2PR07MB588.namprd07.prod.outlook.com (10.141.229.153) by
	CO2PR07MB588.namprd07.prod.outlook.com (10.141.229.153) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.947.12; Mon, 20 Mar 2017 11:16:05 +0000
Received: from CO2PR07MB588.namprd07.prod.outlook.com ([10.141.229.153]) by
	CO2PR07MB588.namprd07.prod.outlook.com ([10.141.229.153]) with mapi id
	15.01.0947.020; Mon, 20 Mar 2017 11:16:05 +0000
From: "Esponde, Joel" <Joel.Esponde@Honeywell.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] file: fetch fail on missing commit
Thread-Index: AdKhagueO7MT7o4UT3qI9dpPYdqeMA==
Date: Mon, 20 Mar 2017 11:16:05 +0000
Message-ID: <CO2PR07MB58833668007B05E6BF1F0FD963A0@CO2PR07MB588.namprd07.prod.outlook.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=Honeywell.com;
x-originating-ip: [199.64.75.70]
x-ms-office365-filtering-correlation-id: 930b1501-a517-48d6-f29c-08d46f828058
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(48565401081); SRVR:CO2PR07MB588; 
x-microsoft-exchange-diagnostics: 1; CO2PR07MB588;
	7:SpFLHapca5Qv7spVdACTK8ayROAg5vDp2dmdrGUK8qfLm5pXXvqNBQleSB/UXqf3oWrnVguCl0cQuG0OlNK/g1JWUtSGVyhWrDAGBuqFKr8KnkfZqOdK/ufNepKzTiaxdK30/hHvKVsCMXWVZq+/rax1eBIpJqg/n3qMCvLl5uvAyA+vs6zaEEq2E4DHZklAcVYVzz2JJ9+oOFBy9DWandukpv0LhbhZMpvf67GDATLW1I23flJpzaPtBQx2X2jJ4z0WGIcJmWTIz2wPyugBHfvv1fGVNn+OW0TNZrGwIhUTmyCzxnxJ6mhEyucwvsdQ28FPvMhFd36RysyYrgb3gg==;
	20:u/fYSiW2/zypnu3fmxWk+YT5xrrQ4qtQfRxQcTzLOTmFog9fvZ80EKpsV9NDoXMkjF25Eb4WdThUCHVwqdY3OLxgh9m1quL9NSeiRJZkc7/vFm4738TsIS9X4ZK3LmaAxCkMDA7s0m5ihAi4VSaqfAguPqXhebojM5eE3H/joGYXuibWp8kvSf6eAme1WnZTG4t6M1y7lgVvDG0hSoANQ1tArpVRti9TyWuibbv4Nx6a6waRD5s+mhifXll0KjpG
x-recptdomain: NotTLSDomain
x-microsoft-antispam-prvs: <CO2PR07MB58854CA1591F03A3FB62F69963A0@CO2PR07MB588.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6055026)(6041248)(20161123564025)(20161123558025)(20161123562025)(20161123560025)(20161123555025)(6072148);
	SRVR:CO2PR07MB588; BCL:0; PCL:0; RULEID:; SRVR:CO2PR07MB588; 
x-forefront-prvs: 02524402D6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39860400002)(39840400002)(39450400003)(39410400002)(39850400002)(2351001)(122556002)(5640700003)(50986999)(966004)(25786008)(9686003)(8676002)(33656002)(74316002)(2900100001)(66066001)(2906002)(5630700001)(7906003)(1730700003)(38730400002)(81166006)(9326002)(110136004)(8936002)(86362001)(790700001)(53936002)(102836003)(6306002)(3660700001)(54356999)(7736002)(6116002)(3846002)(99286003)(2501003)(5660300001)(55016002)(189998001)(236005)(77096006)(6506006)(6916009)(6436002)(7696004)(54896002)(606005)(3280700002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CO2PR07MB588;
	H:CO2PR07MB588.namprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: Honeywell.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2017 11:16:05.4264 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 96ece526-9c7d-48b0-8daf-8b93c90a5d18
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR07MB588
Subject: file: fetch fail on missing commit
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
X-List-Received-Date: Mon, 20 Mar 2017 13:47:06 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_CO2PR07MB58833668007B05E6BF1F0FD963A0CO2PR07MB588namprd_"

--_000_CO2PR07MB58833668007B05E6BF1F0FD963A0CO2PR07MB588namprd_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

It seems that the "file" project maintainers have changed the hashes of all=
 commits of their github mirror repository.

A fix has been recently added to the master branch:
http://git.yoctoproject.org/cgit.cgi/poky/commit/meta/recipes-devtools/file=
?id=3D2102b8c9b60438e5d73f3182799297efad4cbcfe

But based on what I see in my machine, all from scratch builds seem to be b=
roken.
My morty and krogoth builds are broken.

Am I alone to have that issue or is it generalized?

Best regards,

Jo=EBl Esponde


--_000_CO2PR07MB58833668007B05E6BF1F0FD963A0CO2PR07MB588namprd_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
	color:#400000;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"color:#400000">Hi,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:#400000"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">It seems that the &#82=
20;file&#8221; project maintainers have changed the hashes of all commits o=
f their github mirror repository.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">A fix has been recentl=
y added to the master branch:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000"><a href=3D"http://git.=
yoctoproject.org/cgit.cgi/poky/commit/meta/recipes-devtools/file?id=3D2102b=
8c9b60438e5d73f3182799297efad4cbcfe">http://git.yoctoproject.org/cgit.cgi/p=
oky/commit/meta/recipes-devtools/file?id=3D2102b8c9b60438e5d73f3182799297ef=
ad4cbcfe</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">But based on what I se=
e in my machine, all from scratch builds seem to be broken.<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">My morty and krogoth b=
uilds are broken.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Am I alone to have tha=
t issue or is it generalized?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Best regards,<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:#707070">Jo=EBl Esponde<o:p></o:p></span></b>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_CO2PR07MB58833668007B05E6BF1F0FD963A0CO2PR07MB588namprd_--
