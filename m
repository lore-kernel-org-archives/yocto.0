Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web12.523.1624405565370649901
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Jun 2021 16:46:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=dY2rwpFv;
 spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: KMTFXe4lwRonyMyUA2OrXC+eV73zFfnmuXm9qtTJdRYhe3InACxlQc4gp2PF3+AXGRD5XkmTzh
 nKeOXcy3wAyA==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="292789091"
X-IronPort-AV: E=Sophos;i="5.83,292,1616482800"; 
   d="scan'208,217";a="292789091"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2021 16:46:02 -0700
IronPort-SDR: vzagVCB1oPeiGZ7nR3N4hZ3HYth7Wer8MdSf/LR9OKaaIcUnB7/jEFEmmJYcvqucivevB1Krel
 gSOP0gnOwNwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,292,1616482800"; 
   d="scan'208,217";a="406500716"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by orsmga003.jf.intel.com with ESMTP; 22 Jun 2021 16:46:01 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 22 Jun 2021 16:46:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 22 Jun 2021 16:46:01 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 22 Jun 2021 16:46:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dQA39s4F/2kbVwayWrWLkPm71OfpfLIGtqON3DEU5LVKfToGh3A4zaKCGno1ifV6dcKffGdUpbOy76kYW4HTOSyxnx+7c/p1M2pNO3KfxT5VCfjmGDhXbqeUHKDmwDldx0NQUaq4N5622eMH/iIeGYFXsw81oDcFkoQMx6pCbAx9UjOKICPYICGfljq96NPYCQVkLXbotHryig3t/jeXnMZTI38BOJmAsC5oZ7i3Ruqd2Vl50JCLuRG8p5pRXl0vlTv0CO/8BSxcKVvqVyOdENRMPzzlkQ2og1ogfi574tJR8PKOUVmpfJazpXrmPZnK2n19EqmGtkN2MWRCUcre6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bnZAFKiH/xp1KOZfM6UYtTOag21ACjVlppHmMgxF3TY=;
 b=AG7RHRb1jyNJEAm7RykXsBYwY+rJutyj0ZQLPUkkm/bK1voVlwG+LU2OYcTkYjJ0p71dlCR+NJjhBGiWhn28R/vBWnYCSxU7/I7As3RsxQofMzxlHK5COnROgZmTF+FfBIS73iM24PdVpop7A74z1wyPb4F3Y8q3QI0JgVGX9lmMVH05VNmlQSG+iUAu4ZL5xBZTIq2Gkk0+CZcTnidxwt9SXID58KCUAP+9SgFPmQOWZ0HGbXSGnZsAgyEemvQuKOtm/Wb4CUPsFYrAAI5Mo4mywwS7KpvI0iIe0zwkvl1hOiuV/vp3j75z6CxqnURhARQTCQO0kEdGTQU/ELXjiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bnZAFKiH/xp1KOZfM6UYtTOag21ACjVlppHmMgxF3TY=;
 b=dY2rwpFvyP7se63IEsgxFJkRTrarXTYm42VDPVZ6lbCmHcLS8ClGm812dtw4cjiZoUfqSSFTj0cidUrzZsVwaX18TQCsdI0eYfcYg20lUZb75+BgTiu5Le8cZMlzZWagfkAZ006V9A0LIVK1JzSx8LJgH2+25RvknMOLpbrT5qM=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by SJ0PR11MB4928.namprd11.prod.outlook.com (2603:10b6:a03:2d2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Tue, 22 Jun
 2021 23:46:00 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::5089:2b85:6b13:abe9]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::5089:2b85:6b13:abe9%4]) with mapi id 15.20.4242.023; Tue, 22 Jun 2021
 23:46:00 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<'yocto-announce@lists.yoctoproject.org'>, "'yocto@lists.yoctoproject.org'"
	<'yocto@lists.yoctoproject.org'>, "'yocto-request@eclists.intel.com'"
	<'yocto-request@eclists.intel.com'>
Subject: [ANNOUNCEMENT]Milestone 1 for Yocto Project 3.4 (yocto-3.4_M1) now available
Thread-Topic: [ANNOUNCEMENT]Milestone 1 for Yocto Project 3.4 (yocto-3.4_M1)
 now available
Thread-Index: Addnv3socrogza/KSXWOVTJcVjfYlA==
Date: Tue, 22 Jun 2021 23:46:00 +0000
Message-ID: <BYAPR11MB33011E9BE7319FFF22B3644188099@BYAPR11MB3301.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.103.136.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2ae671c-0a8c-428c-2699-08d935d7e39b
x-ms-traffictypediagnostic: SJ0PR11MB4928:
x-microsoft-antispam-prvs: <SJ0PR11MB492822F0ED6DB85DD127F8FC88099@SJ0PR11MB4928.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sxomd/wgmPfzPyFzII5xOu+H3tAaZ2sHyFEsmojdlL43zBIyhTVsZEIlMu3i6SEegyWsGk3K+NcoQpiPAYFGazh5mZTsGKfVCFS0QEHzi/BytQlYgCUTTjS5xzICm1dxqLd6HT2shDSUenSvNvEsFgpu3ZO+p7zdfIQNtNaZezQEMLAjMUBvqf5NnB5neVhW+sPOH2B0L2+KDjcGpY5pEkYFkW+QxDjP5UaJRs7kGvmu738DPDTGmtUaIjnZGgn2uPuvfNPTLYNOjPTxjmO/u5G/RbQxyilunGKAG1j5weXuIRVj0MyEcrkM3aHYHRNcfaqOoH1oeLR41WJ6NPMBM7lF26tyY2nD6Ldw9/4PfZhc5hQAl1Qk2GiVW4jOInCUdYu9WpUkA7sj7i1Y5EtKu/m0Qgtf7ZerjUUGQGj6NJhDFK4UTMbzqiuqSzF39MiVG9UDpNjnOUPYsOGUTv8vhBwXnRc8QuSX4A45B+QWIo6qwBAEcuhB8AAfyFtFIzbxbdwc1QyRyl3SkJV/2VAQzzsRrIr+x+OkaZAFJIMTNtvaLu3RXoYNrK4LDA7pZVac7J6yxSAC9YHRIO3jjvWmpTeQtByhsmkSNHUMKFZs5qlGikG1Mi3d3fxEaFmO3EVLrIKegXpt02xkZIFVVIo+tvNHNEz32AU2bnQ8sdr8KGVuM5FQFBJEYst8+s/6lf+8AR0aL+qkDdEW+DGEChVfbqIF/56ZQyOZ0Nbj7Se+yRD9GyHtT5V2SzqosdVqMzgK06/VWQU2EAlk+GC9QNuiXQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(376002)(396003)(39860400002)(366004)(346002)(7696005)(76116006)(4744005)(33656002)(52536014)(9326002)(478600001)(2906002)(316002)(6506007)(5660300002)(966005)(26005)(122000001)(109986005)(8936002)(66446008)(66476007)(55016002)(9686003)(186003)(83380400001)(71200400001)(64756008)(66946007)(8676002)(66556008)(86362001)(166002)(38100700002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qfYC221Av/jykv7m53BZgM3e077MQcKfOLd0P/xP71IhHIh+NwL4+erMQQZx?=
 =?us-ascii?Q?1RWo413RlKUgAHqDr63+uNsLzyBlONmK5fzqh8mziwT2It7+BGpsvQB3BLzY?=
 =?us-ascii?Q?IInrP3edA2q9pXlDzkpEh645z+W9YNrBITr3YjC6YaEBeYAjqYGpDXeN+ZIJ?=
 =?us-ascii?Q?SyXsVCU5ebCgzd0m/CQBDy3fdTNyqg5uxBniZpW4qPcm8yBOBQYYswp33JvZ?=
 =?us-ascii?Q?hBxEF2MPKUHGaGzwMn5GC7kFYOc6VHasy2J8YXbiYt4d9iuMB0ORgDE6DNL7?=
 =?us-ascii?Q?xJcU1pAtAihEX0rsmSLhaZiz3T08gjZbqcgAEj3smgZK5azr2FbqG2qvvgsW?=
 =?us-ascii?Q?hn7/rKkUuJkdZzUfRisJR8r+9qk7zsQthVsO4sE5Ae5IX27ZByAc/vv2l0Uf?=
 =?us-ascii?Q?s+oP2wStruQSOmhSMv3ie5Tjr1/k13NkojWt63jof8/7aNDw19e8NJSliwHI?=
 =?us-ascii?Q?pccRU2lvN061WJdlYER2q6Kc2R3CTW6wHqDfuPxHFekdfieHJwq79LzY5RuW?=
 =?us-ascii?Q?BemsH9Hj9uiwmh0nk2mzuDdF5LtMLHzULr8ryExt21JPgNyLBYjSiJYL4fUG?=
 =?us-ascii?Q?FNgWNhvg+XZv4UhGkeXHcLQPjFyL5Oc7YcCUz6DWUleHOnDM8DTeiSrSp/h5?=
 =?us-ascii?Q?4kn/dqK1WfFXrgxOEw/DpXMvSEKvqrTZm9lih7j8PTF2NKxsS3McrBBG4877?=
 =?us-ascii?Q?ncfoD0JpBRPO136Oiumxd3NWvrUiPx9Xl4DxVdpzJQG4lsjbjsFaaUgKkr+H?=
 =?us-ascii?Q?vzSt1gepIArNHQ8Bd+Vb0EJc19GWwuHZ9dZuGBvKIrje2qZHTeswH2OXNSuj?=
 =?us-ascii?Q?XARJfe9umNxlk7cRTCUN1RLKb3ZZ25lIpKIlmDD7VrTLaTGvVSCf9Mu/U+j/?=
 =?us-ascii?Q?i/fAcsZVhmwPY+yXmXdCRKOYO1MQ5wH/j8iGjlVHt5afMCrAIayo2Xy9posw?=
 =?us-ascii?Q?8mKT3+HL04CYtQ/fHXou5N5UxCLwj20XrKOMQ4OUXeHkGYoqc0m0WDAlpJdv?=
 =?us-ascii?Q?v2B1LtGrlsT75j+C8E1Il75VtHjIum5TzCLXvYczzTkgNXHF4jC8FMlhkn7S?=
 =?us-ascii?Q?8RdhkUDolbL2A+W05hGb1qys2UfD5JU1MabUJM/AAVxvlIgrsThmdIT1GR4x?=
 =?us-ascii?Q?S7C9M2Z4sXwpJLLCcia773EuDrFOI5InugRy8W/Lod/TlzYF30/S7znFdoob?=
 =?us-ascii?Q?5g0FBbXnqPMYRsy21Q2t0gkbsX7uO4QOIgV/zINDzaFz/M1wgDSSxPSlV8Kb?=
 =?us-ascii?Q?yNCpelI9xE3KcU8G45BSU6ocCLykHxXTzQQcMJCoGDfNz4jiLeTayfyKDDXi?=
 =?us-ascii?Q?PPywcfQV64lgio43femZ3qp9?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2ae671c-0a8c-428c-2699-08d935d7e39b
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2021 23:46:00.1852
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +7mX8oWJjF0I3BEyyUVGmw1aVjA7tSBNy5t4XGHkOVLuHS1jaGK86BAgEx4yiFi73QcVuxu+S2IFHzjFx+IEqf7XvCi34gYeI8DOqmd9W+w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4928
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB33011E9BE7319FFF22B3644188099BYAPR11MB3301namp_"

--_000_BYAPR11MB33011E9BE7319FFF22B3644188099BYAPR11MB3301namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,



We are pleased to announce the first milestone release for Yocto Project 3.=
4 (yocto-3.4_M1) is now available for download.



Download:



http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.4_M1



bitbake: 398a1686176c695d103591089a36e25173f9fd6e

meta-arm: 6c3d62c776fc45b4bae47d178899e84b17248b31

meta-gplv2: 1ee1a73070d91e0c727f9d0db11943a61765c8d9

meta-intel: 0937728bcd98dd13d2c6829e1cd604ea2e53e5cd

meta-mingw: bfd22a248c0db4c57d5a72d675979d8341a7e9c1

oecore: 3b2903ccc791d5dedd84c75227f38ae4c8d29251

poky: 59d93693bf24e02ca0f05fe06d96a46f4f0f1bf8



Full Test Report:



http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.4_M1/te=
streport.txt



Thank you.



Vineela Tummalapalli,

Yocto Project Build and Release

vineela.tummalapalli@intel.com<mailto:vineela.tummalapalli@intel.com>


--_000_BYAPR11MB33011E9BE7319FFF22B3644188099BYAPR11MB3301namp_
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
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText">Hello,<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">We are pleased to announce the first milestone re=
lease for Yocto Project 3.4 (yocto-3.4_M1) is now available for download.<o=
:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Download:<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><a href=3D"http://downloads.yoctoproject.org/rele=
ases/yocto/milestones/yocto-3.4_M1">http://downloads.yoctoproject.org/relea=
ses/yocto/milestones/yocto-3.4_M1</a>
<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">bitbake: 398a1686176c695d103591089a36e25173f9fd6e=
<o:p></o:p></p>
<p class=3D"MsoPlainText">meta-arm: 6c3d62c776fc45b4bae47d178899e84b17248b3=
1<o:p></o:p></p>
<p class=3D"MsoPlainText">meta-gplv2: 1ee1a73070d91e0c727f9d0db11943a61765c=
8d9<o:p></o:p></p>
<p class=3D"MsoPlainText">meta-intel: 0937728bcd98dd13d2c6829e1cd604ea2e53e=
5cd<o:p></o:p></p>
<p class=3D"MsoPlainText">meta-mingw: bfd22a248c0db4c57d5a72d675979d8341a7e=
9c1 <o:p>
</o:p></p>
<p class=3D"MsoPlainText">oecore: 3b2903ccc791d5dedd84c75227f38ae4c8d29251<=
o:p></o:p></p>
<p class=3D"MsoPlainText">poky: 59d93693bf24e02ca0f05fe06d96a46f4f0f1bf8<o:=
p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><a href=3D"http://downloads.yoctoproject.org/rele=
ases/yocto/milestones/yocto-3.4_M1/testreport.txt">http://downloads.yoctopr=
oject.org/releases/yocto/milestones/yocto-3.4_M1/testreport.txt</a><o:p></o=
:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Thank you.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Vineela Tummalapalli,<o:p></o:p></p>
<p class=3D"MsoPlainText">Yocto Project Build and Release<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"mailto:vineela.tummalapalli@intel.com"=
>vineela.tummalapalli@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BYAPR11MB33011E9BE7319FFF22B3644188099BYAPR11MB3301namp_--
