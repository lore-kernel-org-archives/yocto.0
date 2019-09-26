Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A72D6E00A00; Wed, 25 Sep 2019 23:33:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_MED,SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA7D9E0084E
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2019 23:33:49 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Sep 2019 23:33:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,550,1559545200"; 
	d="scan'208,217";a="340657763"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
	by orsmga004.jf.intel.com with ESMTP; 25 Sep 2019 23:33:48 -0700
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
	FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Wed, 25 Sep 2019 23:33:48 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
	FMSMSX119.amr.corp.intel.com (10.18.124.207) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Wed, 25 Sep 2019 23:33:47 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (104.47.40.51) by
	edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Wed, 25 Sep 2019 23:33:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=AtZTl3Rv6MRiXRz/0ofzVs9mFJqgTOatKmpcYs6A8VgKKCnDBmWg4JVQ6h8HqXqiRLjnlIuKunO+B0+g1KaKdypyzzxJMnxAuCKDMXeHwr2advaG+S/RzqXu416Po5vugpxuBW6nWKkF91BhJnWbqYPnwF65WSS3Nhy/qXm6CHAFgKFINoQFGqiPMItKBJ/zHU8rhtcXRFY1DZ+V5+KD2YHlpc/iv2wcnKw+X5Cd/1QebhNqSIiU8q5BBflm7TpndTYwIX44e8bxYYgzic4Gx7DFu+vAKcgZeeeJVW0fB8o0ldWaXbKx1ObN34YtVit2VVO6wEvJCilMP6RJX3a1/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=dzli71x41VzrOfxjTgLty6+WCSxnP3JFuNKcQJfiihw=;
	b=Kj32xJdI+UR+Ouz1v5ytTu9LVpKUEsspyeDgCXsshLlf4TGYJOEIX5wvWqA1xFw3Vgm8rPsyS2bxkGLpBqMPEdcWaXUhuye8Ovb9aM+jI4i+pKNb/JvkRO0HQ6G6pjO4dqNQW2nwcdqtTqVeJwt8Gkwqn+3j77EIGVf2NwJpKYbpxg1TaUrg/R28VyFn3f3GJUUcpYow+pKczjSl68Y93iwKpuo7gH7AyfWIETjQXcjK1wJ4aNRG4SuBb5b1052Xee/pLhj2lPlP7/KIKb6RhJLEEeyclfCS/KYLFa9r6qY01iH1q40SWLjJJ77s+AmCdMqFZB54f8QT+UMhHMbGAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com; 
	dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
	s=selector2-intel-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=dzli71x41VzrOfxjTgLty6+WCSxnP3JFuNKcQJfiihw=;
	b=cp0rOiT1c3EDQARl891NYCUNjm6H2KnLVRYa/c689Z8wcfq90LAsN6Y6Q6h2urkrQcdLSeDSL+WpCu0FKMuy2iXRFhJw7ZWUkYf889qW9eZCQGZA9oL2a+JgElHE2w2pqK+MTJONlii9meW4lioxVhiwOUm9XyDARoVsaKrKOGs=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (10.175.60.137) by
	CY4PR11MB1720.namprd11.prod.outlook.com (10.173.17.19) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2284.26; Thu, 26 Sep 2019 06:33:46 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::3d46:e26e:3050:288f]) by
	CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::3d46:e26e:3050:288f%11]) with mapi id 15.20.2305.016;
	Thu, 26 Sep 2019 06:33:46 +0000
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA cycle report for 2.8 M3 RC1
Thread-Index: AdV0NDG4aWJD97BLR3+2jIkEMstoEQ==
Date: Thu, 26 Sep 2019 06:33:46 +0000
Message-ID: <CY4PR11MB1879D6C245032898724E519DE3860@CY4PR11MB1879.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiM2UyNmRhMDUtZWVjMi00MGFkLWFmZmUtZDlkNGMyNTg2NjVkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRTRSdkFXeVJqOGNVK3NlTmF3MnZTZlVwM2p4ZkJvZmZwVjdSYThSOVpjN05NbHV6bkw1QlFQV3JiODdYTXJ6VyJ9
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 857b884f-f9ab-4fc4-c67f-08d7424b7bf1
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:CY4PR11MB1720; 
x-ms-traffictypediagnostic: CY4PR11MB1720:
x-ms-exchange-purlcount: 3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB1720A9CA2748C773B5B342A9E3860@CY4PR11MB1720.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0172F0EF77
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39860400002)(346002)(366004)(136003)(396003)(376002)(53754006)(199004)(189003)(5640700003)(316002)(66946007)(8936002)(76116006)(64756008)(66476007)(66556008)(3846002)(81156014)(8676002)(52536014)(6116002)(790700001)(81166006)(1730700003)(2351001)(606006)(6916009)(99286004)(14454004)(476003)(7696005)(2906002)(5660300002)(66446008)(486006)(966005)(102836004)(26005)(186003)(7736002)(74316002)(478600001)(25786009)(6506007)(4744005)(9326002)(2501003)(107886003)(86362001)(66066001)(256004)(54906003)(4326008)(236005)(71200400001)(54896002)(6306002)(71190400001)(6436002)(55016002)(9686003)(33656002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR11MB1720;
	H:CY4PR11MB1879.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SxN2bNtJo0P1xOXmYN0lxrJe1rF1kSCpEa0Xkgzozjt1VcW0EZCR3m2ArOUt+F8DI6f1Cbu2djwcBFiSdzBiv8qVP6EregyWPxue5BioXgE7/YHN5hlfIGt7LDPBroMyA5j7LTh9TYQceYFQlTnQ+XcxeZqKClwJgI7I1vufzrXVdhnsnRVrN0qcBDhUBqnepzaUL46NMMJLCMmnbnTHnv0+dxeM/idGZpd6ZztlPEM6agh3otnmRtEss6Y3Za3cwB7hUVPL98kFswIL6Zti49ciAihE1fXQRhW72XuasoaewgTbE4gQYKBqsmviAD0RljfBuyITPsz41e49xZ2MeuHlYMclHXVozcL/YJLGYYKA82hSaS4egP1jYgnEZ1Cz/nx+V7obgvW4oXSHyWvRU+k5e7/VVGVQYRC3a3NIb2cNAy4+j/vAd9OzoebjLFy4KXvvCEfTVUtQTAlq+sNXBA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 857b884f-f9ab-4fc4-c67f-08d7424b7bf1
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2019 06:33:46.1299 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lEmgFT7Mta6bIIruy1eEq1XXv6sl6t4my0VWF8uX38ZbHEKmkLdWD5zOJYlHJBUj5slKiD1amDBOS8/HZ2EiqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1720
X-OriginatorOrg: intel.com
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: QA cycle report for 2.8 M3 RC1
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
X-List-Received-Date: Thu, 26 Sep 2019 06:33:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR11MB1879D6C245032898724E519DE3860CY4PR11MB1879namp_"

--_000_CY4PR11MB1879D6C245032898724E519DE3860CY4PR11MB1879namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello All,

This is the full QA report for 2.8 M3 RC1:
https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?=
h=3Dintel-yocto-testresults

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
No high milestone defects.
Two new defects are found in this cycle, mpc8315e-rdb System randomly hang =
when running commands (BUG id:13555)
Due to this issue, oeqa would be timeout and many tests are skipped/failed =
on mpc8315e-rdb.
and ptest failed (BUG id:13556).

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13555
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13556

Thanks & Regards,
Sangeeta Jain


--_000_CY4PR11MB1879D6C245032898724E519DE3860CY4PR11MB1879namp_
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This is the full QA report for 2.8 M3 RC1:&nbsp; <o:=
p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://git.yoctoproject.org/cgit/cgit.cg=
i/yocto-testresults-contrib/tree/?h=3Dintel-yocto-testresults">https://git.=
yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=3Dintel-yo=
cto-testresults</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=
=3D<o:p></o:p></p>
<p class=3D"MsoNormal">No high milestone defects.&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">Two new defects are found in this cycle, mpc8315e-rd=
b System randomly hang when running commands (BUG id:13555)<o:p></o:p></p>
<p class=3D"MsoNormal">Due to this issue, oeqa would be timeout and many te=
sts are skipped/failed on mpc8315e-rdb.<o:p></o:p></p>
<p class=3D"MsoNormal">and ptest failed (BUG id:13556). <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D<=
o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D13555">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13555=
</a><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D13556">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13556=
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

--_000_CY4PR11MB1879D6C245032898724E519DE3860CY4PR11MB1879namp_--
