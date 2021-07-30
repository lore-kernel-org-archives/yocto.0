Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web11.3310.1627677873330534160
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Jul 2021 13:44:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=jKWwwTxM;
 spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: vineela.tummalapalli@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10061"; a="210052580"
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; 
   d="scan'208,217";a="210052580"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jul 2021 13:44:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; 
   d="scan'208,217";a="667434087"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmsmga005.fm.intel.com with ESMTP; 30 Jul 2021 13:44:32 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 30 Jul 2021 13:44:31 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 30 Jul 2021 13:44:31 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 30 Jul 2021 13:44:31 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 30 Jul 2021 13:44:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ut0s9VgCV08MRsCyK2xHFrEijcgpFAhhgl7eny4WICMTuaghKWQ+OUET5jEomfbu9a6PjttXTgzf7uXZNfpcDzzzNGdLgCQARKuvc3RngCsKrzsNFsx0Xwe0A2WSFgVuvSEjw81g5Jl4mlN47KeSWL1uO1p9TrBQ4dX1qAnM8gBpbBWeNAdwSnqCYedbRqqkJdMtrGD1E3tSiTyel4eawgO2Doc9v4TgAHER6LDAzVhu3IVEFiDgdZjozy0Zy4cYD+zE/DEvOjewPYA2khDxAjZ8kQLYp7x0slkzQ7G2eMgylkm3Iz3ulfTByv1cyboDMTo3SS1TUTKqRfGMjBWaiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sPQUjgiwAyxtJO7w32eHGQcjnrLQh9Q5MNo4XFJ1ruw=;
 b=TpwArp9/U9ZsUXnF1Scocx4pBDlIKZtjkpK0yF5i30xzhMsFqTkjc4yWikPfAGOqgWsLUHqUrR5tTYzryRxWTs/dBEBbN4B8+7U9at+qGBDh0iP4RhDcs8Ur736e/RhNQDHkBK0wqnUj1cnDpIZazg87ZexHPzPz7QLvX7HG9y8RGVXSBLC5Ljb4XptAK5xcvvWLPUYc9Dq5ooe8n6vlZJn0pGl1tQ0p3kf1Kk1BauE/sb5X7aXvtWmshXtG8t/UL02PTNNWonk7u1/G1I6U0bZO+NVW4NJBJbn+g9hwDCxpaCc64s2AAh22pl0gdp/AuWIby0mShEB3YwUTuKgxog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sPQUjgiwAyxtJO7w32eHGQcjnrLQh9Q5MNo4XFJ1ruw=;
 b=jKWwwTxMt7G92hlA6J2G9vhTuBVijqeGhEQWDuXsloG6E1Dj2RFxkuMNe6z9Q9BnBs5M1+xhGyWy3jxwKmptWdA0cL/zJLidN0c9/J1XTKPMvVLmwQoMnQyp+B3z80SQk07mm14LwubiAb8P/vdkCGZuya8L3ID0gbE4klWvV/Q=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by BYAPR11MB3255.namprd11.prod.outlook.com (2603:10b6:a03:1d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.29; Fri, 30 Jul
 2021 20:44:29 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::9848:3ad8:5173:a027]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::9848:3ad8:5173:a027%7]) with mapi id 15.20.4352.031; Fri, 30 Jul 2021
 20:44:29 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<'yocto-announce@lists.yoctoproject.org'>, "'yocto@lists.yoctoproject.org'"
	<'yocto@lists.yoctoproject.org'>, "'yocto-request@eclists.intel.com'"
	<'yocto-request@eclists.intel.com'>
Subject: [ANNOUNCEMENT]Milestone 2 for Yocto Project 3.4 (yocto-3.4_M2) now available
Thread-Topic: [ANNOUNCEMENT]Milestone 2 for Yocto Project 3.4 (yocto-3.4_M2)
 now available
Thread-Index: AdeFdei/SrfQ2NxbS7++y8KHTrP7vA==
Date: Fri, 30 Jul 2021 20:44:29 +0000
Message-ID: <BYAPR11MB33010FF3770C08C42F30122088EC9@BYAPR11MB3301.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 27a03ca2-1ecd-4bd2-57c4-08d9539ad424
x-ms-traffictypediagnostic: BYAPR11MB3255:
x-microsoft-antispam-prvs: <BYAPR11MB3255495B13842F63D2A890A188EC9@BYAPR11MB3255.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nqPnYv1r68ZuTOvBG1e8KGWIesMM+L2ok4X7y10+u7IGioFy6wevayh2jAt3is/S5oxE0TxUPZ0HPSoJRn3PxMBbGGAVHuMBg1bFMvDZONaszUc2NpWzTQHHdjcSsWo8THUYS4Na6xiCZV8x1K3vC59y1DLUS+MC/pejES7R0zvzfx0GsbXAzipf8z4V71XZrAl/YmKRhoS9RL9x2KtwQNfEdnhe8DnFp/ZMSmy1Gw/z29v816igDDQXh0+4P4CF1Vx0WNrM5qu7bsZZ/QVffAWcSj7Sx9KCp/4KWu0D+HFxMxoP1T+5NbWuH7rVpzRjDi0SPvZaibL12pTivS+XQTX3KOdV8j+qqmLZIqHciipfTOseFO46ey/MdR+GSXUWObPGR3Mtkt5frXxt+SGExm8NpsCbGAe/xk/QEiweyLebJIAo8x875Ft7zdChxdBLddwJfdNximGZb4d5p3kDoxspGb5JiYluttjWggRtMevkId2uXCzAsutRSWKNmMs0Es3H7Uo+i1SoRm6g4+7Htz5NZdaK5RcBiXmwCur6D6I5pBvfZVTIIb90dDpGH0CD16k081o55j6jHPLCK8zrM6NqWsEuGXm/cwv0gaKo/WvHCJ8JPZNah6sIbK2CueV7/pVaKjGo9Rda7PADlOTwr/ZIdg2mBI8H9xuo/TzTQTkk7KsIPRoso1+w9fPzs4G1a2I0KKxlfaA4gxKp2W3F6ViW/rvDOOu24NrpGXNw5z39uuu6ubiuT0NCt2HORWmxwSuvX+NzmNpL/XHovnVKIUKiyxiVI1jz/isnYyw30HFOhsgD8CmwtQ7/4XeM+AnvykbgWKu53pv/bOtWCIfsEg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39860400002)(366004)(346002)(376002)(396003)(86362001)(38070700005)(478600001)(33656002)(966005)(5660300002)(6506007)(316002)(4744005)(52536014)(71200400001)(109986005)(186003)(8676002)(26005)(166002)(83380400001)(8936002)(66476007)(55016002)(122000001)(9326002)(7696005)(66556008)(2906002)(38100700002)(64756008)(76116006)(9686003)(66946007)(66446008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?G3ESQw68CbS0XySIgUltGlzfcg30K1T26nf4MmCVry0PkzzAipxGtWfQrrOm?=
 =?us-ascii?Q?4PgkuBfIlL0zI2/MJSfHoZnmyA/NHvavnJb4EFsNAxUlxYN6R/RN3LdXMKE9?=
 =?us-ascii?Q?v4JgfkBk77it5EG8ER2HOou6eaZq/8FK+AQB0ZyD+kQKY85uBweprgKKQFqE?=
 =?us-ascii?Q?GlQcPvQlHjcGK6pEkKQ1xQG/nlgSVBQTx9dDIH7yn7WmKinXkuWWSMqCAlfw?=
 =?us-ascii?Q?mPZUuRmBN3qDZsJINM01cwrFJ4tTKG0A0SKxJzpgXOVm66Ids3HtyQFZLpgv?=
 =?us-ascii?Q?EZeWSHnZ2XhkM+Gt29Qw3wnv6JMob6AslBXWC28em3rcasTPNUV2Ldr4eHyG?=
 =?us-ascii?Q?ueDPkXGMMcuH+VkMf3cq+WiXkVVOw36wjCeg4hAxslRzt7zNyP+ANEcZ8EOv?=
 =?us-ascii?Q?j1vTJFK5o79Bop6zNyVEdC3mFV2oqhHtxnT3ciygejHHFhko/tBdEy+ht3Zo?=
 =?us-ascii?Q?FSz+yiukibLc7xKK86dQIRYqUQuKAfFzehrqho7md9yvM/FF1en2myF/6J/U?=
 =?us-ascii?Q?TVde3ButWBfbUF4Trqffxb+J1S+rDFtFyD6AlwA2n3zFQGwRXZAG/BHtup+Q?=
 =?us-ascii?Q?6Ui1crJHkpXkBxbR2wVV5bOih0sCZPUG7Uha6Zdy5LaUq//kHdYxfpkdGZYU?=
 =?us-ascii?Q?YjdQQB4XptE/jyFTK8MsF3I+O0Mn/gEKQhlC75myaLqNmqzycNCviU61Pfa1?=
 =?us-ascii?Q?htLwAb6WpL1U7SUvwijnJ06X7lJZkfPr18jWB+voluM3VhEDsTcAsolT/Hqf?=
 =?us-ascii?Q?ISNZi4T1UYDGgwwLvm1caqUUdRr++47bDIJ32LQukiAhr9Nl59ixHy9zM3HG?=
 =?us-ascii?Q?lKHaMD1y3pfHAwSYjrJvuVZTRvxWlqOQXSj+DJ7pGW2Byj0tH+RA9Fhv9wYg?=
 =?us-ascii?Q?UBNwn68PCjol1K7PEt0t/YNORBYp04xn3j2WdQR349+lv1NcHWP2HKXkydZq?=
 =?us-ascii?Q?JHPW2yySDmT+yoJmJS8UuVhcFiQNurv7yev9lv6kXycRC+WM3ndrr53r7PWd?=
 =?us-ascii?Q?R0bYOHG7ZieYOpFHDbOynZG0E7ixFjZTUe8zrYJSHsw2KqziZ84LFFyVJjvp?=
 =?us-ascii?Q?Rxy8z0lSJj84FMGlCr9TTRIxPYhIBxIM/P/libidAKggfu1sG+mwqCj7uBe/?=
 =?us-ascii?Q?rZyZuFNL2V9k5FliQxbin0/VrRzYrpzQq31gU+AaZHsJbSRsse04lCqbMzDL?=
 =?us-ascii?Q?vqVEgA5op+X9NKXU/KYINU+uoK9so09zdmA2F92aR0jz8PCcJYg0jT4gpZ1d?=
 =?us-ascii?Q?sazVNY2nmzjcBQwfiJX+1AVXx/EfIkez2SDhlMKqnhSrCs2dZ8zBS4K5I4f3?=
 =?us-ascii?Q?JNBnyCztBhGSAEP6vKlzuhM6?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27a03ca2-1ecd-4bd2-57c4-08d9539ad424
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2021 20:44:29.8526
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bh633WRya7G8zv1Y5NR3e1/M89ONkbzxBM+i/mgX7feJ9xgah92mDqd8qVk2uJYAOxFd3v/z2GFGfeIG5tevVa+YCSGDbDVK23ZoHxk13Kc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3255
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB33010FF3770C08C42F30122088EC9BYAPR11MB3301namp_"

--_000_BYAPR11MB33010FF3770C08C42F30122088EC9BYAPR11MB3301namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the second milestone release for Yocto Project 3=
.4 (yocto-3.4_M2) is now available for download.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.4_M2

bitbake: 13e2855bff6a6ead6dbd33c5be4b988aafcd4afa
meta-arm: 9efa3b5683a5dd7ebbf63ff31b889ed589ff7a9a
meta-gplv2: b3fa26bc777ec0136ce189d90123b50f6ee567b9
meta-intel: 94c097a82cf9167fa567c2af80d5e39a3fbbc11f
meta-mingw: 8f3b6e3772879dc2caec8fe249ce277fbb1aa55f
oecore: c4fc226c2e3856b942bb4f57ead21a64c3dc8c0d
poky: 1ad79313a5c3e6a453fbeb44caac5c5bbad46d3c

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.4_M2/te=
streport.txt

Thank you.




Vineela Tummalapalli,

Yocto Project Build and Release

vineela.tummalapalli@intel.com<mailto:vineela.tummalapalli@intel.com>


--_000_BYAPR11MB33010FF3770C08C42F30122088EC9BYAPR11MB3301namp_
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
<p class=3D"MsoNormal">We are pleased to announce the second milestone rele=
ase for Yocto Project 3.4 (yocto-3.4_M2) is now available for download.<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Download:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/milestones/yocto-3.4_M2">http://downloads.yoctoproject.org/releases=
/yocto/milestones/yocto-3.4_M2</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">bitbake: 13e2855bff6a6ead6dbd33c5be4b988aafcd4afa<o:=
p></o:p></p>
<p class=3D"MsoNormal">meta-arm: 9efa3b5683a5dd7ebbf63ff31b889ed589ff7a9a<o=
:p></o:p></p>
<p class=3D"MsoNormal">meta-gplv2: b3fa26bc777ec0136ce189d90123b50f6ee567b9=
<o:p></o:p></p>
<p class=3D"MsoNormal">meta-intel: 94c097a82cf9167fa567c2af80d5e39a3fbbc11f=
<o:p></o:p></p>
<p class=3D"MsoNormal">meta-mingw: 8f3b6e3772879dc2caec8fe249ce277fbb1aa55f=
<o:p></o:p></p>
<p class=3D"MsoNormal">oecore: c4fc226c2e3856b942bb4f57ead21a64c3dc8c0d<o:p=
></o:p></p>
<p class=3D"MsoNormal">poky: 1ad79313a5c3e6a453fbeb44caac5c5bbad46d3c<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/mil=
estones/yocto-3.4_M2/testreport.txt<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Vineela Tummalapalli,<o:p></o:p></p>
<p class=3D"MsoPlainText">Yocto Project Build and Release<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"mailto:vineela.tummalapalli@intel.com"=
>vineela.tummalapalli@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BYAPR11MB33010FF3770C08C42F30122088EC9BYAPR11MB3301namp_--
