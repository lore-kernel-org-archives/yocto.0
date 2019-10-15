Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F061E00D35; Mon, 14 Oct 2019 23:42:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2255BE00CB9
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 23:42:54 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Oct 2019 23:42:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,298,1566889200"; 
	d="scan'208,217";a="207453539"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
	by orsmga002.jf.intel.com with ESMTP; 14 Oct 2019 23:42:52 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
	fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Mon, 14 Oct 2019 23:42:52 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
	FMSMSX114.amr.corp.intel.com (10.18.116.8) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Mon, 14 Oct 2019 23:42:51 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (104.47.41.55) by
	edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Mon, 14 Oct 2019 23:42:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=Th71U7yO3HDe5sp0MdH9EajgodSXrZ+hHxao865t9zlNYkYXGiRX4d9eXbdPMW+z4O5a6N4A5R8OHxTQ/X6xXYIF5W1Y4wUod3+1qeceHYgnxWCeAsRXuCohoNpB+RM3Rpvl+GY78ahsLOsXqpuofXp6k76K79QdQUDnw+iAGXezcOSTHBVIPJ5z36g7dpy/YkVCxuPXDwyhhxs1ryiF9b+W51+q/MhMKpS901/ZSaGRWcHIioRE2rdcn34nTNbiQ5ecVnFP8oQm1hik8s7NJkO1NYd3ofpdogJtw9WuQkAJWz2pmu3vQBCgjmKQyq4NAJjSLrG78xgSwRicQ63B7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=HYmF2D1Xud5gDBcmZIEfizgUTTYPZApPGSHgmWZs/mA=;
	b=Mf9yFcGXqCb0yrm48l0R+rHpTHBwuv+7pN9WGHsR9fgWjXGVf9xlJmv7PEZE6eKW1H5ICqNsb9RRaaVB/Hhoxz9Srw5sDuqX4Z3axgflApADADvV1dp8Njkc1Q34DQhDB5FrFzsOKJcD+XGxeHgFe4trhkjFg0f+k6+ezF3/WnBBZ5bQSbrcd0JZ45cbsv3tx4GGADuJZc5qsbA2iALW0FlNgukoiJgv6svyS42FuZ+JENIu8H1ynPbW0taDVMgD3uYocnCGobsLcu5EaXPzCcJ8RvhHlBegSxtz05L5dQe7CTlvALAL4rWyVEb95B+VHvFjDsaUzOQ1IrnJBoZZwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com; 
	dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
	s=selector2-intel-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=HYmF2D1Xud5gDBcmZIEfizgUTTYPZApPGSHgmWZs/mA=;
	b=nGJ/Hzaa5ewulI0Sf+tLfQDLa0+lJl9jRIzj0601LraDumVFtWPt1/q6g+HwhRHKr6mp/M3ipEq4VwWsi6/0QVUzBryw9/1c/3+ZXF95h1ngleb78TAlZ+qfHaygYAhrSm6GpUY6+ZvuIORplZ/CUswCxnViGX7wx7SNUePI6e4=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (10.175.60.137) by
	CY4PR11MB1735.namprd11.prod.outlook.com (10.175.81.140) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2347.21; Tue, 15 Oct 2019 06:42:35 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::581b:6fbf:a761:35e9]) by
	CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::581b:6fbf:a761:35e9%11]) with mapi id 15.20.2347.023;
	Tue, 15 Oct 2019 06:42:35 +0000
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [Yocto] QA cycle report for yocto-3.0_rc2
Thread-Index: AdWDI4gvb8Jbyq4lQ8GCsGkykATSPA==
Date: Tue, 15 Oct 2019 06:42:35 +0000
Message-ID: <CY4PR11MB187984F61307B7A52EA7C1EBE3930@CY4PR11MB1879.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmM1NDVjZGUtYWU0Ni00MzFlLTk2N2YtZTAzN2JmOGE1YTYxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRmpQRWpic25UV2E0TkdxYmxrNDZKVUxaelozc0E0bml3RFUwNUhyeXRxMFwveTFURzZrVHZsQU5LeXcxWnIxMk8ifQ==
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.211]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ba83980b-8175-452d-8a68-08d7513adcd8
x-ms-traffictypediagnostic: CY4PR11MB1735:
x-ms-exchange-purlcount: 3
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB1735FD4D586B4937A243190EE3930@CY4PR11MB1735.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 01917B1794
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(346002)(376002)(396003)(39860400002)(366004)(136003)(53754006)(189003)(199004)(6916009)(5660300002)(8676002)(54896002)(4744005)(478600001)(14454004)(966005)(33656002)(4326008)(55016002)(9686003)(6306002)(81156014)(1730700003)(8936002)(52536014)(81166006)(236005)(6436002)(2351001)(25786009)(71190400001)(71200400001)(5640700003)(256004)(7736002)(66446008)(64756008)(2501003)(99286004)(74316002)(76116006)(86362001)(486006)(66476007)(7696005)(66066001)(66556008)(3846002)(790700001)(6116002)(102836004)(2906002)(606006)(66946007)(316002)(6506007)(26005)(186003)(54906003)(476003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR11MB1735;
	H:CY4PR11MB1879.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SdTh2sIH7Y765Najg5mWdbWjwAylT2g6shnnbGSZKeKduKIZlTsk/SfY1G1ZYDBBMixF9VyLHbwE6J8jkndHyQUFiMkCKkCLoJdrvVbWVpg0wFEXM9mAeiOxBglpkuGQA6W1JWnM8vmp0d28O0EhbiXk4AcFOq4/NiACG7fffHA3E9xG8WULo3pCsM6uHkLfFVKK+9Pwv/gS7kHaTreIVxfh81nBhUziESIcWOIwrNiTDbWBdRmif35zzMGChvSkIPXqHqZs3j+SEtfX6cgkJUVpAi/8QW681tBVFLOyvrWbkVvsBDl9CzrCIzuD0SW4Hsrq1ho8ZLrf++Jmjvihk9ZT/jlOxy1larz8LDRebpQnAZqZ6E4CvAB8XsNymbUu+rJeEXD6h3ARmZUihL1OUgspgNhefOcW5/CGEP8Fg1qtPQj9NHQG8ldAPSfp2NxTLtYEsnlXiOVIfgUHoLCfmw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ba83980b-8175-452d-8a68-08d7513adcd8
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2019 06:42:35.0696 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 276F5B0GmH05W+v0FpTeBOmI5I1zQFATc3U4H7JVHS5BbFBJOwfh09p5CiSTub9wQYexXXYIxAbwnoA3Qdx7sQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1735
X-OriginatorOrg: intel.com
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: QA cycle report for yocto-3.0_rc2
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
X-List-Received-Date: Tue, 15 Oct 2019 06:42:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR11MB187984F61307B7A52EA7C1EBE3930CY4PR11MB1879namp_"

--_000_CY4PR11MB187984F61307B7A52EA7C1EBE3930CY4PR11MB1879namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all,

This is the full QA report for YP 3.0 RC2:
https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/3=
.0_RC2?h=3Dintel-yocto-testresults

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
No high milestone defects.
Two new defects are found in this cycle, mpc8315e-rdb: the stap oeqa test c=
auses OOM (BUG id:13594)
and strace ptest failed (BUG id:13595).

Verified (BUG id: 13555)


=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13595
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13594

Thanks & Regards,
Sangeeta Jain


--_000_CY4PR11MB187984F61307B7A52EA7C1EBE3930CY4PR11MB1879namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:m=3D"http://schema=
s.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html=
40">
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
<body lang=3D"EN-MY" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This is the full QA report for YP 3.0 RC2:&nbsp; <o:=
p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://git.yoctoproject.org/cgit/cgit.cg=
i/yocto-testresults-contrib/tree/3.0_RC2?h=3Dintel-yocto-testresults">https=
://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/3.0_RC=
2?h=3Dintel-yocto-testresults</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=
=3D<o:p></o:p></p>
<p class=3D"MsoNormal">No high milestone defects.&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">Two new defects are found in this cycle, mpc8315e-rd=
b: the stap oeqa test causes OOM (BUG id:13594)<o:p></o:p></p>
<p class=3D"MsoNormal">and strace ptest failed (BUG id:13595). <o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Verified (BUG id: 13555)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D<=
o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D13595">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13595=
</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D13594">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13594=
</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-MY">Thanks &amp; Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-MY">Sangeeta Jain<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_CY4PR11MB187984F61307B7A52EA7C1EBE3930CY4PR11MB1879namp_--
