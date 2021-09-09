Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web08.2015.1631229530928693599
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Sep 2021 16:18:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=Mg6dtcrd;
 spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: vineela.tummalapalli@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="208044760"
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; 
   d="scan'208,217";a="208044760"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Sep 2021 16:18:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; 
   d="scan'208,217";a="470297663"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
  by orsmga007.jf.intel.com with ESMTP; 09 Sep 2021 16:18:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 9 Sep 2021 16:18:49 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 9 Sep 2021 16:18:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 9 Sep 2021 16:18:48 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 9 Sep 2021 16:18:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T5aBI5cVhACBFF5BQUs/5W9FC8vG6Hq0CM/tjV7xtCX3/SbIZSJ0zdA4fFsL+9xpqrsKFYWDitO1cLcJKg4h0Jk0aW/M1WXuc2MekTgnHfEwsKi1ZmCMAm0JKHz+uaE8VGfjf3W3EJcAGBMpTOUvyLP3agEyMbUhvsXPdiIPXb8L+dNipSH8iHW87JCi2yE4aJH8MqZHQh7tTDVZ5kPNEp8tzVLrxfO0f7boOsHfPPunwguIrepKGmyvKsGij9ndB2EkiD1NRZcLl10i6RGXsZuvLgFb8aWcHsEZWhI+f216fUidDphH8j+8VP8N8x/h5LJZ9hXQ/VOJxdbG9HHUqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=KQfw8TcgM6MRUgSSHlisH4etRgnXythnZgujXc/0Nkk=;
 b=kUY2lQDZFgdX6D8H83zr92BL6PM4JodRqu6FL3NeMUS9Zy/k1dQYg8s8WDV38eRA5E0uNSbav75OOvCaZgH7zW0/unzNRkZ2EbjlxpCjMwb5MOAjcwmpMiVy6JDSjgwX0Ct9YhaeqQn6RV7qZmfWtYleh6Pfd+q1Vfq7N8428Qx+0YQ+iD4rWBVrfGUQgJ8HES1rgw+Ua0thFYWdKocnNAtqtz1Ii27AavHai5Bb4gvE54F4dUPmaKYsxDhgE5Zi/sNSoF/pAQMOGb+5xPhsgJckdxGo9zUKE59ahExdnCDtKT8Ys+b2h+RtSHu15pJD+E/1cMrx0c/az6kHkEsQ1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KQfw8TcgM6MRUgSSHlisH4etRgnXythnZgujXc/0Nkk=;
 b=Mg6dtcrd+vaWYAhhKcD55N5sV9LaDSZxHQvNiSx8IGVCXbakN3/jx/ph0+E1lTdkGn4yHdgkURQTyP7MNyRsgtygPNTr2jxyRY42XvDfWMlO5SwJbL9UlcU4sR3uziFfPAamG07QIYIQl/nweusa2Y7VMkZnEg4lylv2ZHxhvpk=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by SJ0PR11MB4846.namprd11.prod.outlook.com (2603:10b6:a03:2d8::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Thu, 9 Sep
 2021 23:18:47 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::1594:f1cc:8fd2:81d9]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::1594:f1cc:8fd2:81d9%4]) with mapi id 15.20.4478.025; Thu, 9 Sep 2021
 23:18:47 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<'yocto-announce@lists.yoctoproject.org'>, "'yocto@lists.yoctoproject.org'"
	<'yocto@lists.yoctoproject.org'>
Subject: [ANNOUNCEMENT]Milestone 3 for Yocto Project 3.4 (yocto-3.4_M3) now available
Thread-Topic: [ANNOUNCEMENT]Milestone 3 for Yocto Project 3.4 (yocto-3.4_M3)
 now available
Thread-Index: Adel0NI2TlWm2TZ4SSGb6iO+2YFYpQ==
Date: Thu, 9 Sep 2021 23:18:47 +0000
Message-ID: <BYAPR11MB330137EB2252B446750A381E88D59@BYAPR11MB3301.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b4269555-c459-4fb1-062e-08d973e82d12
x-ms-traffictypediagnostic: SJ0PR11MB4846:
x-microsoft-antispam-prvs: <SJ0PR11MB48467E2ED82D0215AEEE4CF488D59@SJ0PR11MB4846.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tH1RKuKQwMRKVDxU/0he7P18NvwOsmJhXeWrUPjaluEM3fJd3E9MOQx99EKAMAnfil6W6ak0v3D2gZAStHD7H73zIN6DgeOc4W4gb8xlBb8KV1w01fqBXslE9vqlNiMX8JUQIZ1dpJoE8UNnZzEtRZo/yt6LTRdixQ9BoHsVGtg7w9VjiVGqaEZ7dvL3B4ZmSZ/7dNRSCffkSO+W4cG+JC/RE/KqfTUhKbwctZKKZ7wZnUg2R+gYZfBZ4POaqeKU3OMm/1CZzJYZ4cMKzGl1h7kspcSmFgTOp4NafQL2nzWj85Jl5sitL3ryF/5TbAQIkkJoBFIGRwloB4ruNFquLE5iqBnNMtCxf/FaFVu+LzyRCZIgYMH3BVjU9ATALN4abHRNvUovoKR05uas/P8CV9NNz2DOtU0oOPvy0NlINcCrJyZd4S7Xk56mu/XzE+5TVlkYb0ikH94Iwdjjn3XtB1x5C//cNSdYIza0/xu2vJ4XFWHPQUyg/fJJiWhL78hNRKPt+AfGm73VP//r+j8HQ5tFDGOt0CxQJx6wHb7UwipZboBHVIIjyAiUfwZULemKO+A+K1Hp2gokjZIoym7xjKFSjtEnMFyyY8vnwJ8klvfey2J/TBqb5gBlc+VmZTjeMx8HUa7va3xNNDol6x7obgRpm1gLYJ5HmMIK/2XDcAU3rXtg9sb5SKZIHqqDq3v+L7aOkMlYZIfLN6CiMapPwzxXG6JQyhzOlasAO+pDSQRoc/PnV1FBaccMR/c6e+6y5AoFTZTVdw5jhVWWcroxwhFAVoeh2Wcx/+ud+FWvBL6vAzKcqgm4aNme1bu/VjkAJuFZ1CKAxaRPome684I5oQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(450100002)(122000001)(2906002)(4744005)(6506007)(33656002)(38100700002)(9686003)(26005)(8676002)(8936002)(186003)(7696005)(66446008)(52536014)(166002)(66556008)(76116006)(83380400001)(86362001)(9326002)(55016002)(5660300002)(64756008)(66476007)(966005)(109986005)(508600001)(71200400001)(316002)(38070700005)(66946007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7Yid5ha4mU5s+bqb2zpWCxGNdfRND6lHNw9ccW1yemlWx4SgUmm2bCEaRFqM?=
 =?us-ascii?Q?0Jg549jOIW2Sp36k4g5IWacb6YIRiYgYgEKqbHh8HLoPzJWS8RchqOOfVfdC?=
 =?us-ascii?Q?sDnVeBYZKHXG0iyKvY61fwYMMwXAEtWjae1bBEYkJB5gH2vNKyA2kwesVeCr?=
 =?us-ascii?Q?7JTFIeVqQ/V3YYt3cAEHzg86W7YB3ZKCHSgbjsKh4lAn2N4aKSs8T8XF1k5U?=
 =?us-ascii?Q?5h2DBkV6WWKDDYG+PrXZLka0uZsfUM2ZfeWAJnXNpybPLTZe+wCSKRwm2jfD?=
 =?us-ascii?Q?WmsBpIMq8vZtKmSQoQN8GLFM8V/J2mxpsBki0Np2eFpunA2Z6qoFPnVTPugT?=
 =?us-ascii?Q?rAkoKnl6YnNSi1cFQQQvuU9TE4HosLkNy50X4SA//RAnF557BaljaVe4LLHY?=
 =?us-ascii?Q?GEV9GWel9hz8Rx8uPCC+0NdOHjKEc23fVVzxKapCjfD0xg0lGyzGiHFmqSHA?=
 =?us-ascii?Q?g0KK4zg2SdiFpDpZ6J3JM+w2LH7xFvxpRXXODle1fOwEfuW1hyt0WfCi5DaJ?=
 =?us-ascii?Q?YKq7WWEmb+BGdBSVCkIwdrSt69ThJsVa++xMR9Jt6nOToD1LHYWCHSjBgcPs?=
 =?us-ascii?Q?3qgPGb8rQx3G8b6OSfKpqZ/wo+ed5k8rTmIksLbFpGzuqqnvpDrVg3tJCGML?=
 =?us-ascii?Q?5ysqobrfThtbVr883STzsmNntkjBjNHk6nD2YeSdOX8d6E8FC38PYZOPRX/b?=
 =?us-ascii?Q?QB8Crz2OG07zh3BTTyOb/H1xvYIQ6plPUgdaUVo5paysDFGVG2YPPTP0FVv1?=
 =?us-ascii?Q?RFOgEvoxFdFQf2zWKRU7ajDMi/1vKIRUyNdNR8kFRBbqeUewOELwYImsgPsB?=
 =?us-ascii?Q?vPnL8eGXFUYAH9Xgf9c8QQPBdeGAUZF4O2+jQtO3x59ND5ZRZ0V029BD6qo7?=
 =?us-ascii?Q?Phf3y0Zj5P4W7VVvfhyeKWnERVr6qLxuRStlTsQeltkdFP35hHUdthZrVZdK?=
 =?us-ascii?Q?ir9vAh6iy84ePrP7RjA/4l4oBFbLzvWdm6WNFjAeFT1/N7wf6JyZPEFJsI7y?=
 =?us-ascii?Q?yUpPwSZKcI3piJs7/0K5kz8q6ES0mGeAF0GjXkWi+zpBz06G1iX40SO3orsm?=
 =?us-ascii?Q?GhE0gin9So/JQcl+l3EKZploo6DHkkT9ZEdowYsY3OmJikTY15UmHLMH+w25?=
 =?us-ascii?Q?aJO1YHAkA8llnSbJYIU1UiTN/BezevV1NFiEJstGi7m7nOgJmlCaO30udM/q?=
 =?us-ascii?Q?ilPg1K6WonhWSM5FuWH0n/XrjFMAI2GlR0QriCHDSxmUwnKPhcBmspR66bpo?=
 =?us-ascii?Q?Q0XzRy/2w88pW7FJIN4KZU/E892RDr1DQZVqtilgESbcEjjdQn0D7XiVb9Vb?=
 =?us-ascii?Q?rztrbhsfYub85TFwcLBt6iLL?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4269555-c459-4fb1-062e-08d973e82d12
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2021 23:18:47.4379
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Md5Ii3KFg/xGj2NLJXg2WZNQvrLFD62wYbdn006IWHzLQaQLSUzlghT4Ym1ZmKoVCA2W4263o/3UVA5BQ1EwYHigFh8snnhCiEcgyIdbg4o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4846
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB330137EB2252B446750A381E88D59BYAPR11MB3301namp_"

--_000_BYAPR11MB330137EB2252B446750A381E88D59BYAPR11MB3301namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the third milestone release for Yocto Project 3.=
4 (yocto-3.4_M3) is now available for download.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.4_M3

bitbake: 0a11696e0898c3c5108e6d7c5ad28da50e00ea66
meta-agl: 60344efa7a50dc2548fc4b5d68b5ad4d60c4023a
meta-arm: 46e8fc6a67efbcc357cf507b903a3e3e133c78f7
meta-aws: 32ae20566a39454ab0ba4c80c23a32ed7c14dcaf
meta-gplv2: f04e4369bf9dd3385165281b9fa2ed1043b0e400
meta-intel: cb1bf2bdc1b20f76fde8b291a12b361a4bc2511e
meta-mingw: f5d761cbd5c957e4405c5d40b0c236d263c916a8
meta-openembedded: 1511e25cea69b98bf2778984d7a649dad5597878
oecore: ffb886497390d4de2631bda671f2f631bc0bc7be
poky: f2728d3ec8c0589e02e9a3ce7cf8aca902cae0a3

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.4_M3/te=
streport.txt

Thank you.


Vineela Tummalapalli,

Yocto Project Build and Release

vineela.tummalapalli@intel.com<mailto:vineela.tummalapalli@intel.com>


--_000_BYAPR11MB330137EB2252B446750A381E88D59BYAPR11MB3301namp_
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are pleased to announce the third milestone relea=
se for Yocto Project 3.4 (yocto-3.4_M3) is now available for download.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Download:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/milestones/yocto-3.4_M3">http://downloads.yoctoproject.org/releases=
/yocto/milestones/yocto-3.4_M3</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">bitbake: 0a11696e0898c3c5108e6d7c5ad28da50e00ea66<o:=
p></o:p></p>
<p class=3D"MsoNormal">meta-agl: 60344efa7a50dc2548fc4b5d68b5ad4d60c4023a<o=
:p></o:p></p>
<p class=3D"MsoNormal">meta-arm: 46e8fc6a67efbcc357cf507b903a3e3e133c78f7<o=
:p></o:p></p>
<p class=3D"MsoNormal">meta-aws: 32ae20566a39454ab0ba4c80c23a32ed7c14dcaf<o=
:p></o:p></p>
<p class=3D"MsoNormal">meta-gplv2: f04e4369bf9dd3385165281b9fa2ed1043b0e400=
<o:p></o:p></p>
<p class=3D"MsoNormal">meta-intel: cb1bf2bdc1b20f76fde8b291a12b361a4bc2511e=
<o:p></o:p></p>
<p class=3D"MsoNormal">meta-mingw: f5d761cbd5c957e4405c5d40b0c236d263c916a8=
<o:p></o:p></p>
<p class=3D"MsoNormal">meta-openembedded: 1511e25cea69b98bf2778984d7a649dad=
5597878<o:p></o:p></p>
<p class=3D"MsoNormal">oecore: ffb886497390d4de2631bda671f2f631bc0bc7be<o:p=
></o:p></p>
<p class=3D"MsoNormal">poky: f2728d3ec8c0589e02e9a3ce7cf8aca902cae0a3<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/milestones/yocto-3.4_M3/testreport.txt">http://downloads.yoctoproje=
ct.org/releases/yocto/milestones/yocto-3.4_M3/testreport.txt</a><o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Vineela Tummalapalli,<o:p></o:p></p>
<p class=3D"MsoPlainText">Yocto Project Build and Release<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"mailto:vineela.tummalapalli@intel.com"=
>vineela.tummalapalli@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BYAPR11MB330137EB2252B446750A381E88D59BYAPR11MB3301namp_--
