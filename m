Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by mx.groups.io with SMTP id smtpd.web12.78.1590035563458821369
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 May 2020 21:32:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=n4BVMk0t;
 spf=pass (domain: intel.com, ip: 192.55.52.136, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: aRTrt/rOmx1DmPvvhFWsWsoKD31Orc9/i5UylAV1q7hnMk30uVPBkxontMXRT4gIMnNtwJR+bW
 a6jgmbnlQZgw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2020 21:32:42 -0700
IronPort-SDR: JhjeCoScEOwky11FhXtg2bTfostxM9cx1H/evUmmq/95+zXy66lK7RZhSQJvjRALTlSkT3t6lz
 oiz6BfkbvoLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,416,1583222400"; 
   d="scan'208,217";a="300667879"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
  by orsmga008.jf.intel.com with ESMTP; 20 May 2020 21:32:42 -0700
Received: from fmsmsx121.amr.corp.intel.com (10.18.125.36) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 20 May 2020 21:32:42 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx121.amr.corp.intel.com (10.18.125.36) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 20 May 2020 21:32:41 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 20 May 2020 21:32:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N2PEZzkMDSof9Wi3FsdHyY/BgVG96aWyQJ7Qz/4CxJXILOPCxbzW0Apf0ZcDan4iohMsWvSBgBE4fa8I/M8IfTRct2XDCpNYqb/e2zh9l6bFfrPM41xQ+asc69EVmm+dUUm7cePu1X/ZaWxjtvwX7ZhNy+U1XjlLSievEoKyFCaAuh19WrGGw4gIpSgD3wwBCpmIUdiTpty/BdHsxKVk/FMveBtRK7/ShsQMSkiRc5eqkyrWmnd2Ga+cWZ2EFmn2LFSQURN3+FqWsIrnRk3nsACodZmpJANAPaI9Yf6lnXSYjM8a/bZSTcQT/hXQleDFhO6qf18pwUR7/AwpTVrF7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mkC+PC5VMj5XjGpAr1ggoidHDQO4Wz0fQjDlR6jz6Ls=;
 b=BX4laBH8qyUiAh+KYdySgwIA3PSgFC9yDcNjBjHgHwx/RMxmxUYceFpR63IO3mtuTblRV2zIFjza2UunktBoWdzZ6TLN3JddGGXPHr64B7z0K+x7dSLRrYK/k6iIGEnLu0EOZZhjzajFuBi4TjlKy2R5tdEX7miayJjN33LRw+8CdYs0QHyWrHENQRkeU3hHwd+lnsEiTTWeNrkmSt2SxThExYfOyDH+6j5HYKaLMuwg+nBFw3OteX1cxjWweqPYYwLgFi3vWQweia8v5aLThuGsubC6JQZZE9L1YVXy9wQGD4ASv33qSHNgMN2zUmyjFS+cyrD88ifF9MRS2SGGvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mkC+PC5VMj5XjGpAr1ggoidHDQO4Wz0fQjDlR6jz6Ls=;
 b=n4BVMk0t0GLyXhhEEZS/Byv4imlDpyYYSkMQViUtaSKNnXGcuwaFTY7i8RE6VumZOn0smjM+B3uNZrxuxrJp8UIsvVoXcIiwuj+PnymvrKNR+bcEHxCEOSJUyuEpvVx4cp1fHf6jEghx77HaXQIBQJRZutyLXX9I4+qB4TPa23U=
Received: from BY5PR11MB4037.namprd11.prod.outlook.com (2603:10b6:a03:188::13)
 by BY5PR11MB4023.namprd11.prod.outlook.com (2603:10b6:a03:190::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.26; Thu, 21 May
 2020 04:32:39 +0000
Received: from BY5PR11MB4037.namprd11.prod.outlook.com
 ([fe80::6d26:5862:7d75:f47d]) by BY5PR11MB4037.namprd11.prod.outlook.com
 ([fe80::6d26:5862:7d75:f47d%3]) with mapi id 15.20.3021.024; Thu, 21 May 2020
 04:32:39 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: Yi Zhao <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Chan, Aaron Chun Yew"
	<aaron.chun.yew.chan@intel.com>, "otavio@ossystems.com.br"
	<otavio@ossystems.com.br>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>, "akuster808@gmail.com"
	<akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
	"Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
Subject: [yocto] QA completion notification for completed autobuilder build (yocto-3.0.3.rc2)
Thread-Topic: [yocto] QA completion notification for completed autobuilder
 build (yocto-3.0.3.rc2)
Thread-Index: AdYvKMIoQAs3qqR+SS6vTAn5/S2ZhQ==
Date: Thu, 21 May 2020 04:32:39 +0000
Message-ID: <BY5PR11MB4037E21E3D59C5906DBF98ECE3B70@BY5PR11MB4037.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [192.198.147.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 98b3e02a-3a43-4bf8-dfd9-08d7fd3ffec5
x-ms-traffictypediagnostic: BY5PR11MB4023:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4023D71DCE44BE8D44A03492E3B70@BY5PR11MB4023.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 041032FF37
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xig/YQtFIbzUjfoW/2nIEa33DuVEAyRJLy/TkzUCLbKkxJiyLbFF/ldLEf+HUIbj4xJCUSEPngYDTzXBX9mcyk1xMmM0zIZeBSg/QA6LVH/sKhogoly83agV7ve13VWVtkaVQuTrGW9MVVR/M2p0TnOgBgULpsPPr1AYPo0dgrbLUIAtwxnOQs8DJNrZL8cymIRog9ZdIz/PxITXHLwV2aoGtyOOqxI4MxQ+Typf/mDkiLzfBu/rU/djm6SJrrvbm7f9QNkLY0Qmkx8dCGAIc7KOhVh+T/kuy243YTGrhYF0b78whB+2+hmSsJ+j4U4dqmV0F9lA2idBd5s8mfh7rmV+zYURrk4XQwoksp/YY7YL/AZyVubRRzmW0TFajwCwBi6BpdSQYvAQRunBELjRqw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4037.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(376002)(346002)(136003)(396003)(366004)(39860400002)(5660300002)(54906003)(316002)(4744005)(52536014)(55016002)(9686003)(86362001)(478600001)(966005)(107886003)(4326008)(33656002)(7696005)(26005)(8936002)(8676002)(186003)(6916009)(71200400001)(76116006)(2906002)(66476007)(66946007)(66556008)(64756008)(66446008)(6506007)(166002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 7h06Lzd9CsaaMGcbDxDUS/cMc8VLuDrwNWqk4loREPRoVGtCLoguSlmdTt6OuCPNdW5xTFt3KfKG4gkt9KzFNo1iM+FkoG/9eJtQtC8lu38YxDhGkyy6U7wVB0OHDW2cGztNtxVFMNncaZN6o80t4MlVIZUuHsF6QDx3Tq/s14NQk3R1A5Isoafl8mOpnA1uGhZSSQXAEgp23cy/uOrf/x2L3EJrSV593i6DRKCZt/o0rT5xb5dIFjfNoIldVZ0J/3CWsx2xjdLpepoDV2cmO88tfhctFqRSMtLBXVEEYeoZtJoGcRyzhKdGnOFXwRCg/A0CIrzmPt0+D5cg7vp+9qTCQl6A7JcSLZ1XZDicnx24x9d0QxCtbUot+YCZP+8LHptTJot3GsBuUxyOVmcvsYQ9lQJYAHMG89EijbHkLAtAItuD4XJHNq6K1q9A4jSGHn3QidqqfUjiyU1GhbZVNZBLoVKZmjVZqlu3c94+LpuCHlKbve9yYOk4LvIS9pxM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 98b3e02a-3a43-4bf8-dfd9-08d7fd3ffec5
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2020 04:32:39.3663
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WHorc7cSZSLBhlmKWjUBFPF7ZRMhh2+71lHfWo92OzMlsAcPUXQBucB9UKX5szCB/P3TpE1IaBqW1LTXiX01iA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4023
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY5PR11MB4037E21E3D59C5906DBF98ECE3B70BY5PR11MB4037namp_"

--_000_BY5PR11MB4037E21E3D59C5906DBF98ECE3B70BY5PR11MB4037namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all,

This is the full QA report for yocto-3.0.3.rc2:
https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?=
h=3Dintel-yocto-testresults

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
No high milestone defects.
No new defects are found in this cycle.

strace ptest failed (BUG id:13905)
valgrind ptest failed (BUG id:13906)
zlib ptest failed (BUG id:13907)

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13905
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13906
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13907

Thanks,
Sangeeta

--_000_BY5PR11MB4037E21E3D59C5906DBF98ECE3B70BY5PR11MB4037namp_
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
<p class=3D"MsoNormal">Hello all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This is the full QA report for yocto-3.0.3.rc2:&nbsp=
; <o:p></o:p></p>
<p class=3D"MsoNormal">https://git.yoctoproject.org/cgit/cgit.cgi/yocto-tes=
tresults-contrib/tree/?h=3Dintel-yocto-testresults<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=
=3D<o:p></o:p></p>
<p class=3D"MsoNormal">No high milestone defects.&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">No new defects are found in this cycle.<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">strace ptest failed (BUG id:13905)<o:p></o:p></p>
<p class=3D"MsoNormal">valgrind ptest failed (BUG id:13906)<o:p></o:p></p>
<p class=3D"MsoNormal">zlib ptest failed (BUG id:13907)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D<=
o:p></o:p></p>
<p class=3D"MsoNormal">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13905<o:p></o:p></p>
<p class=3D"MsoNormal">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13906<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D13907">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13907=
</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Sangeeta<o:p></o:p></p>
</div>
</body>
</html>

--_000_BY5PR11MB4037E21E3D59C5906DBF98ECE3B70BY5PR11MB4037namp_--
