Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E6AEC433F5
	for <webhook@archiver.kernel.org>; Fri, 24 Dec 2021 13:00:46 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web11.45147.1640350844155778053
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Dec 2021 05:00:45 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=ZE/vEIVn;
 spf=pass (domain: intel.com, ip: 134.134.136.100,
 mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1640350844; x=1671886844;
  h=from:to:subject:date:message-id:mime-version;
  bh=BuIYtHcx/7HcALlekTJnC+udbJ3CFThlwKs+EcCprM0=;
  b=ZE/vEIVn7ddxWB2UFov0SVGUxdmpIljmJ8uevfNoCrlZwVJUq5CaLkK5
   A7Cfok9oc0EuhBSX0KmO7n6rheGaWoHZUGUkUYuzHq9h27RWac+RY1SJm
   pxtvZMiuQkFJdr0s7bYpST1GLnnnnQwi3OZU19AcjpOpxbr3r42rzgt5c
   WaFYEXxT1FJMeIXZRk5hGe0yi34drT//dmuEnpkx+gtzhUilEMRs3XkS0
   DFW1qMB4XqvlCZ42ikXIWkN2bivbdIVAdynhp5K6wVKOjAHv6YpdtV6MD
   iz+7ieR/fbYD5rUXvXkU7Q6V0bClKI5dwkJxnEW3wc6IzozAFRQlmUZf6
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10207"; a="304341179"
X-IronPort-AV: E=Sophos;i="5.88,232,1635231600";
   d="scan'208,217";a="304341179"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2021 05:00:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,232,1635231600";
   d="scan'208,217";a="757188350"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
  by fmsmga006.fm.intel.com with ESMTP; 24 Dec 2021 05:00:42 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 24 Dec 2021 05:00:42 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 24 Dec 2021 05:00:41 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 24 Dec 2021 05:00:41 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 24 Dec 2021 05:00:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TzcEHakJbRswvj03O5H/fecGYXOY1Pv5+rVJwYTMS5VKihaCMpNZl1naC8JZBYvfpf7nVnZiDFhPFlPko04q7/htH2QB6GW79u0f6Z1jPaWBbWsQnwgxuem5dtnL5vlSlQLOyXsgQbCuOnfQgTFsw0XcNfxRQjJAGYoAcvOLv14vNYH6MNoKiA/FTiDnlVQklNhvQTuACxxcJ0nWEWFxsMXerWzkmm6zIbdairm/VDsciMMyRFrjYvr/PVVQ0e1aHZ7ySaHRD6KJfXgMAuZBWEOECJS329ZVfbdVfQonA6+ldncPwh0pIseAuGlMGX9jG21UfCmaDLFVs70RGwAaYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bLR0stgF6FfgiFgj1ZF+3xyuWXYawR0VSfXuvSl6Y7I=;
 b=cT/gOJg3uw5EpdaamDPUk6pOFUZR/UOnGEsjOBB8CATbFRDIyz//9KKwvOmcgW3J+ZSqjSOLGVHrH3N50g4J2bCFzYnZCkLXYPFyYOi4Z5UPhESdtzcsxov6GAUB9nhgazb5uVosTgUmcHgJJJnafSId8ZDy6TCvdpJa3LEGK3SU3vf8O2k+IWfy9jCdBOJ5Avd1p+6hNQAlnvrrVHbCZ0Tv2kjNwJvP3Xuax4oJU7abj3fG4izYTu0Qau/PqmZewFiCDJlchD0fGeXO1FwRFjMIXTdvFM+XLDPhaKA9ujKieDFA5U3HFKTVsVMtI+Evf83xwsRfQQUMcymcpvC7Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN6PR11MB1748.namprd11.prod.outlook.com (2603:10b6:404:101::12)
 by BN6PR11MB0020.namprd11.prod.outlook.com (2603:10b6:405:6b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.21; Fri, 24 Dec
 2021 13:00:40 +0000
Received: from BN6PR11MB1748.namprd11.prod.outlook.com
 ([fe80::8cca:ad25:930a:e326]) by BN6PR11MB1748.namprd11.prod.outlook.com
 ([fe80::8cca:ad25:930a:e326%12]) with mapi id 15.20.4823.021; Fri, 24 Dec
 2021 13:00:39 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 1 for Yocto Project 3.5 (yocto-3.5_M1) now
 available
Thread-Topic: [ANNOUNCEMENT] Milestone 1 for Yocto Project 3.5 (yocto-3.5_M1)
 now available
Thread-Index: Adf4xLBwi90UmRgOSy+YhPwyJkqFgQ==
Date: Fri, 24 Dec 2021 13:00:39 +0000
Message-ID: 
 <BN6PR11MB174884DA432819F54AB01B33B97F9@BN6PR11MB1748.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: add2008b-e580-40b3-c6d2-08d9c6dd62e7
x-ms-traffictypediagnostic: BN6PR11MB0020:EE_
x-microsoft-antispam-prvs: 
 <BN6PR11MB00209BE5C07A5FD82BB13C49B97F9@BN6PR11MB0020.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Py12VRJ7dkWtyUMt3NfrcikY48804yDgmUPKy//how6kF9rRz64gyr6Og3/wPx12JW1h8G9dMUyMvpVzAi4yY9Cm1g75ScPffpEb3LBXuBh/GcGQwrF+3Vta0KDU92cBAW6qLIt4aT2t1nkUaIv3HVjUOcjTR0q/EDUdwxuLQHOdFTeSREKNHUvvZ1dEhytu4757G28sK65H4NVt1wgDUEbbdrPsSxK8RN38xMU+wY+B8/Zyleau+t4zTWO1AX+QxxQ0vXcfO7yWklxoTaVHSbMij8uf51bls3T5y7O0QKzOshjR4L5rR6A7TFIOgzMxbrVihGv71ipn88/lk7GbhIJi58vF7kDWG5oV1T3HYjrx9Y1YeXR1ro1cNZffuTgIQHGKWitSCXPCPdKyqEaxP1B4irj5ZCr8CyHL5W/lV5dBM4LNK+gzfoTVsxoEQ74VP8Gq5M34I+UPLsSQKn+u+QdrffIQyuATuN5nZhB5JWV0CtcLhkk4tu4NVIDnYhIy/n433ZjVyUutRBbgIdUsC8km3EvEWxmFl7Na2t62bNGvRfJ/TDnUpluSMjmgLpUo5inGEhR36vJDVI+BCQDLQJzWUsoVSkPjK1yO+69tJhjSqpID9Aa1n15kR0cEcKpW2Fwv9fXsPF73SH0TYiE114gET6ieB/VruCRdKI1O3QuL5IFNxBXx5DR/4FGFndMllAPNJ9hVAlSeohJIMAB0M0XimHW5R7N9mPAP6HuBXmXMAv+hWwacoVFYuOX8njS9HVs246zjDhOmy/PiMRzJTSmQz9ltqmT5szY7/BCV9ECtoL5C5fyQYv31tJSiqbKjO2nFYSPiCWdpWjxj+J/2zw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR11MB1748.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(8676002)(33656002)(9686003)(7696005)(52536014)(26005)(38070700005)(6506007)(110136005)(55016003)(8936002)(82960400001)(122000001)(38100700002)(55236004)(71200400001)(450100002)(316002)(966005)(64756008)(66446008)(66946007)(66556008)(76116006)(66476007)(9326002)(83380400001)(186003)(508600001)(166002)(86362001)(2906002)(5660300002)(4744005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?w0o3O/3+CDGK1k4tTUJfDWGW8LZlZl6yL1xYpq9BwkusqJ5WCITpZFmcesX8?=
 =?us-ascii?Q?WlFhXd5+q4FhGHT4LWXAYaQJ3XpeoOuyPbj/RgRmRX82qJy5V2OtQvLeyfGu?=
 =?us-ascii?Q?ICsQIt8C7Y4dNnR1T8bnCF3oNCRjrseVpj3N99QIt35b3uUXrJkPUqNk5rn6?=
 =?us-ascii?Q?U7kCDtrwha+I6/ZbO4lh/qqf+tfSVzCRX+YJh7TeY4/skvvLS6oMJp2NOhue?=
 =?us-ascii?Q?tEjsQEtTt5LiRhXAHyNQ7Px/UKFnOnG+2AXw9/yrEpSgXpz1Dijy4FRsQhMv?=
 =?us-ascii?Q?/TiYaMGuEjqJH6fKNjtkoqeb4PWWIHv6UITwNcS28prW5zvgR/ZfCKUv106f?=
 =?us-ascii?Q?hcXVnXJiCvjs2HKh9l6GIWs8If2rFUfpmnpS+US8WFKlRoTfiVRfJSW9XwKN?=
 =?us-ascii?Q?G+qwmbfxB97N2PB1q23vAC/bEgfmd6hIeo+XOzc641coe81qkS5gJpC5MuMW?=
 =?us-ascii?Q?G7MXJdl6vMWffs6/vmYV/LrxB2qvOOGXSa5Q7+cIc03/LMfU1tGm++0KLLFH?=
 =?us-ascii?Q?35DWcXlDbCeq1jgYc/G693zbG408TDocqq4wV4NgajgpUso8WF64U2siAP3G?=
 =?us-ascii?Q?oRo6XTgAQzH12w7HLItG0v6qQqxnQIuohsv7X4vb+c2iGl40+eIIQafWkJ/P?=
 =?us-ascii?Q?eJmUXuTBwWrR/zbPr2TMwoVHloYvd6OQr9DnusttVrbl2w7Pz0xAZuAKK+pa?=
 =?us-ascii?Q?7k3mpBhizmL0SVg1u0PXRN+xXTzcqI3m7OfiFOcs5B3c38IIBifiLtOylJ3t?=
 =?us-ascii?Q?9q0eO08Q50yZsdnphWLoFaKQ+/Cuo8USghjQ3ufwro3UeZV6JOXpv2OY2jZ2?=
 =?us-ascii?Q?fY2okEomNSFV4cFhALfobsj3mlNlQL4rwo6wYBz0ciW6eXo6vGhLCRzpvota?=
 =?us-ascii?Q?h/2yOht5PL5qWazcpFJt9eKeyxqCi3j5Ozryf0VNO4jX6bJxLsS4LbCpr/gp?=
 =?us-ascii?Q?F9QYNJTgmO/ysYV6yLVYmdrXXcdfZT9cBCR0Mvgc2hBskgZLxgcjEQttbH46?=
 =?us-ascii?Q?zTYWEDf3drKaJXWgXxSA79mvm1TK+XruL/mIio4twiR0e+Qsr5AH/r/yK4Z7?=
 =?us-ascii?Q?453NcVdlo/bybOtx/00QJK7WLcIkAfDqPrN/11C1NyJ/3pqgQYn9yT4C6asB?=
 =?us-ascii?Q?ZyUGpn5x2zSis1FRKqf0C7c4czycTAb81IgftCPP2OZ/eCpcwfI7mU18A3q9?=
 =?us-ascii?Q?JVLNJDgL7FtpudcNQGTdf7qy+Pm5nlBEPPlrz+neACh2RaVXpIP/tMCSxu6l?=
 =?us-ascii?Q?TzWGizN5Y2yuV2K+mKGx/WlKxBaR2QDZQAVW+RDDtFVAGca1fvn6I0IP1jz+?=
 =?us-ascii?Q?3IQJs2A1R2koePpvCMCVhf51d+3nrcM8wZ4q7UPKbD1dVoTRDiykQKv49vle?=
 =?us-ascii?Q?lk7CZy/dFpI/H1d5tggebTcKijaVgHIkqeAUSQnsYSPZBdBFF5EoeFU4qvXy?=
 =?us-ascii?Q?K3kJR7IfFzHwyEiaF+BpWDItOyX48DEA0CWNt73O9UkGaWhFd/p3EQASJTDc?=
 =?us-ascii?Q?AcVKjpoBN9P/E+A4063PDH/z83z/hs+xgEPJNo5n2G7kisB4k+NGEIT/IgvJ?=
 =?us-ascii?Q?OCjJGAUUcFS+HX7WK3raHqKXDh5RDUnMkx4FbyUQOaPkzqpNUr9QqQdArFBy?=
 =?us-ascii?Q?2A=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_BN6PR11MB174884DA432819F54AB01B33B97F9BN6PR11MB1748namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB1748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 add2008b-e580-40b3-c6d2-08d9c6dd62e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Dec 2021 13:00:39.5346
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 9xBvEt9fU6O430icrhYY/c0vquhhTAtpNzfrSV0eXoIRfudzUWcrIWqP51Wf4wGIaSONrRTHBMJ1K1zUJsQ2og==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB0020
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Dec 2021 13:00:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55654

--_000_BN6PR11MB174884DA432819F54AB01B33B97F9BN6PR11MB1748namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the first milestone release for Yocto Project 3.=
5 (yocto-3.5_M1) is now available for download.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.5_M1


bitbake: 1ecc1d9424877df89fcda2f23c306998998a65ff
meta-arm: d446f7f80bf61e9cf05843e8ef4bc5473f936118
meta-gplv2: f04e4369bf9dd3385165281b9fa2ed1043b0e400
meta-intel: aa8482af7b286f8fe8f7aae648938d4ebf0283c5
meta-mingw: 992fb40bdbfe9fe60f815aac46e04c58963918b5
oecore: 1a6c2a7345199d77ad5aeac8ad337ed80a8aa39b
poky: 65c94ca3196e5ef3344a469fea8e30444f2e967a


Full Test Report:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.5_M1/te=
streport.txt

Thank you.
Lee, Chee Yang chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release

--_000_BN6PR11MB174884DA432819F54AB01B33B97F9BN6PR11MB1748namp_
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
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
<body lang=3D"EN-MY" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are pleased to announce the first milestone relea=
se for Yocto Project 3.5 (yocto-3.5_M1) is now available for download.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Download:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/milestones/yocto-3.5_M1">http://downloads.yoctoproject.org/releases=
/yocto/milestones/yocto-3.5_M1</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">bitbake: 1ecc1d9424877df89fcda2f23c306998998a65ff<o:=
p></o:p></p>
<p class=3D"MsoNormal">meta-arm: d446f7f80bf61e9cf05843e8ef4bc5473f936118<o=
:p></o:p></p>
<p class=3D"MsoNormal">meta-gplv2: f04e4369bf9dd3385165281b9fa2ed1043b0e400=
<o:p></o:p></p>
<p class=3D"MsoNormal">meta-intel: aa8482af7b286f8fe8f7aae648938d4ebf0283c5=
<o:p></o:p></p>
<p class=3D"MsoNormal">meta-mingw: 992fb40bdbfe9fe60f815aac46e04c58963918b5=
<o:p></o:p></p>
<p class=3D"MsoNormal">oecore: 1a6c2a7345199d77ad5aeac8ad337ed80a8aa39b<o:p=
></o:p></p>
<p class=3D"MsoNormal">poky: 65c94ca3196e5ef3344a469fea8e30444f2e967a<br>
<br>
<br>
<o:p></o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/milestones/yocto-3.5_M1/testreport.txt">http://downloads.yoctoproje=
ct.org/releases/yocto/milestones/yocto-3.5_M1/testreport.txt</a><o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">Lee, Chee Yang <a href=3D"mailto:chee.yang.lee@intel=
.com">chee.yang.lee@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal">Yocto Project Build and Release<o:p></o:p></p>
</div>
</body>
</html>

--_000_BN6PR11MB174884DA432819F54AB01B33B97F9BN6PR11MB1748namp_--

