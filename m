Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E75DFA3740
	for <webhook@archiver.kernel.org>; Tue,  1 Nov 2022 03:00:47 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by mx.groups.io with SMTP id smtpd.web11.2076.1667271646264181505
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Oct 2022 20:00:46 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=elOAp69C;
 spf=pass (domain: intel.com, ip: 192.55.52.136, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1667271646; x=1698807646;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:mime-version;
  bh=vALrwbcAT1weo12LeVuqm3F5zn2wfUwxhYdYtPN5mkY=;
  b=elOAp69CndgCjmDKnUGry1MltbPN3ThLnQwtqypyAbM/YibEF5hFlBKa
   YAiqTzvOEbGVREGAaIPAqxgp6taCwTYxTdfGbu2WOSj17DKIHQXKsT+1d
   wsl/7wwLVtvq+owxwuQ7xy8Ya5QTIDshs6MVmaUzAaCd9cQGeyE0yNLXV
   5YCl4HqqhjnH1qsYqd2nYEfS4XEJ2uxBtzBDgXbDM5oxnMogVBiGsVs0/
   oaztu00TVPtI6+vNuFllrvbdHZkRRz9asWG7KonZ74A6ojXzubDfZ1qGM
   /gmH3Z3DflK+Lbc0mds6KZRGtoyOaSqsY1v9MAHBJVKTo62n0tHbrWgVL
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="288766736"
X-IronPort-AV: E=Sophos;i="5.95,229,1661842800"; 
   d="scan'208,217";a="288766736"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Oct 2022 20:00:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="739185963"
X-IronPort-AV: E=Sophos;i="5.95,229,1661842800"; 
   d="scan'208,217";a="739185963"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by fmsmga002.fm.intel.com with ESMTP; 31 Oct 2022 20:00:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 31 Oct 2022 20:00:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 31 Oct 2022 20:00:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 31 Oct 2022 20:00:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 31 Oct 2022 20:00:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LutrRQSOcxTi1JHPe1ai+vHBmJVjF1ILhHzItLKX2TBQmW7frwk5l8LDGqUAGhDgQ+LqkQnO3Oqk0b9cNMhucdJnTtZ0ZykhfZQzJpRxW+8cxfS8k6cX8xTii39z33+88k4m+SXzxKXhgjhIEUxTINqOGjBJVrXQGggZtu8f83hcou07RNFR5do8pjNNsw9R4B9N0lrWsRj010ZM08ZyjWXfqFZXF1bP/M5dAvHjJgBxM/Bmlih0COJLRSYilR7P0lP7P27V6jv7dHcaABFS2jGcjSUaY/1nvO8QFesU6QzY53ZsvU3SGMNGUMOSzNEcvqtqZXc3zfGroC8otdZDiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XbTfHgjx65Vj4Km6HvIXH9U+xceLMjAxORCh04+FS3U=;
 b=hOv0ivN7v+jYMtVxktg5SuP1Ro8Fd0qdX0mfSQgJG+lTtBr5EnihZ9K6fM3VtuuVjkDtMk0UlHuAvSsBZL2jAsVnxZ7ielnJBwZxipuvfIc/o+jwfiNRkE1Qqsjg0RuAa3GOwbxE3qRvvrnIcn3A7QTizHkttxcvwq5nYjN0+l/vTVwLutvz6M7xA5p5+CKhcbFZ1PHxtZnx5+Johrggty+U4Sm4gaWX1f4sUADyENJFUs/vZUfG2Z97lFD1ylJBywodPSHpWcQluvTIHwdZKE6rgT29yfd33rEdngNhCbLT2DZ9lkZm4tik1ihvoR7hfJt3GgdzlNzw9Pm539ZqWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5026.namprd11.prod.outlook.com (2603:10b6:303:9c::13)
 by CH0PR11MB5378.namprd11.prod.outlook.com (2603:10b6:610:b9::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Tue, 1 Nov
 2022 03:00:33 +0000
Received: from CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::128b:b7cc:a237:50f9]) by CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::128b:b7cc:a237:50f9%9]) with mapi id 15.20.5769.019; Tue, 1 Nov 2022
 03:00:32 +0000
From: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
To: Jon Mason <Jon.Mason@arm.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: RE: Langdale branch for meta-zephyr
Thread-Topic: Langdale branch for meta-zephyr
Thread-Index: AdjtOVKGowIP0UbZRJehIMs1VResHgAZGHTQ
Date: Tue, 1 Nov 2022 03:00:32 +0000
Message-ID: <CO1PR11MB5026178FAC96C620AF1ACEC8C4369@CO1PR11MB5026.namprd11.prod.outlook.com>
References: <DBAPR08MB5798254CD368AE30D2B33713F0379@DBAPR08MB5798.eurprd08.prod.outlook.com>
In-Reply-To: <DBAPR08MB5798254CD368AE30D2B33713F0379@DBAPR08MB5798.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5026:EE_|CH0PR11MB5378:EE_
x-ms-office365-filtering-correlation-id: 6531f4d7-61c2-42b5-df97-08dabbb53dbf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rMWCTqVPlENWvmacBdMhCi2pYFm/Gak3yCeqU7/BMFlqxlb6izbYO8+xoMO7UfxiLO81BfOYYrhKy3U7yTI5AsYPOxHwbIFlB+rIFOMwPTRSBWrfWHywqw6FgcPMml/MP/GfWgsJdWwlEmc8LGAInCXsmfsEnLJCjmTmbSOkNZRt6VuWbr1gjCt/JdwHxqCXY1Q3HmT5bVWqluLN/0sYlILt8QpUBBIUzrYoFR7rTt8v9VkOCH//TA4b5Prn6dqU6c0OwYoRvYI9mw3M1rDEXj5WQqtguwNLQmK/E8QDTg3BbMhVinoxuseMHUTIKH9nX33GuiStCvYKjmZoEIsl+4ANpexQjhO/iAORLTfHhRDu34qsWOSVnXv86gtBOQHwNS6hgvVUNvCADKfNE+to3XmEf6Vr2X8dHY6+twJUWLZzq23UhtX2wM++h1wW3P/iRtXnS4UXaPg7OzUpfHf+rZXgrxLiM1PNkBPkeoIb5gotk4KeqlhM2xJR8/MjZPAtYLTbnn7RRNvijhGUyo4JatidEBljBVCZ6rjS2bYkaasIhVMtu0J9kYJ4vlkuih8SFew05Ji6oBYWCqPKEo6mWrsVCMkdZAVBgy4Xh5l1ke5eLFuzDPDP3ZX4O0+IOzy1Cha9wRabfQrX8z7XSbQUCq+FCUfQmbnP7XXre1bjaTQP21BA6kQHHg/O7xzm+2j7tefehUfHwJ+w0tIMgjy0fKU+hV0obcQ0bdXxUM0whrDgVH1ejp/rjPOKaKqjTPp73SJG2dWuellZhCokyex5EoHZYjutoIChkiNRKHy+bVo=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5026.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(39860400002)(396003)(376002)(136003)(366004)(346002)(451199015)(186003)(166002)(38070700005)(316002)(8676002)(66476007)(76116006)(66446008)(64756008)(66946007)(66556008)(4326008)(55016003)(6916009)(52536014)(26005)(5660300002)(9686003)(4744005)(86362001)(53546011)(7696005)(6506007)(33656002)(41300700001)(966005)(9326002)(8936002)(83380400001)(478600001)(71200400001)(122000001)(38100700002)(2906002)(82960400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jcbWMhyy3X/j3VElTFKssK+et54hqK8PDzWB8+LQnGw/Pi0jWC4YtDVE9/By?=
 =?us-ascii?Q?FZQuc6Kq9nBYmPJxjPL3UhnTQ9pmhHdqcNNp7ck3TsV5iFB8aWVWMhLOn7Oh?=
 =?us-ascii?Q?+bqBsx5xgLjjyGVZLvFvYjuARsM5opZc0z9r260ZM3vdK4enosqSONPCeiKQ?=
 =?us-ascii?Q?8LYC2lxjdsgcLF6V4oOq9gGFoH1LvOTGhiX7oMbxdf6yMs5c0O/yAOlei0EU?=
 =?us-ascii?Q?10NK0e4hA+crHt9lJYKn1zA3Wp3rLAwBWRUJrRLtsQroLmebcwW/zxzMqlKI?=
 =?us-ascii?Q?M6QO1B57lllE/Bms+EYenU4cB9vYhiftPuDY38wkyiA1MPeme+AucsWQH+jS?=
 =?us-ascii?Q?nexYWTava4OIFNccn5yhUbeNws9/nQaN8CuTPyhZpSyCb1M3aY9NNXupqxqf?=
 =?us-ascii?Q?OBZID6j9It/yl3uApKxGzhm8108FZGZFQGf2Ptx7qb1SUh0Mnkpna0oCYcUj?=
 =?us-ascii?Q?JUxLBERqfILFlb0ONxMWr6ePnqgCJwWbnKVZbcFE7zcz/cXNH3gyh4ZC57e0?=
 =?us-ascii?Q?UmpZl2x6ULPCpCJDeT2Zgk9ctW2qldFV8v3VnC9SjwYQSDIgbGvzzesN4frW?=
 =?us-ascii?Q?qUR1f0RoZ9lbZvyb3I1IvqbNBKofjpvTVqomyYoDsunZI+mg1GabbmdmNF8r?=
 =?us-ascii?Q?LH+L0Sw8Qrzgr5Uy7O19CeyJ/ZmB7FQhpd62NOfNtOEc2b2geYLq4wvq5rlr?=
 =?us-ascii?Q?6vw12PhGD7K+N3tCOhsR+zefOL6WdrVv6e6j/9GHNik6ThFswFsUCCYRmsXx?=
 =?us-ascii?Q?ZXfhy+DN2cR4neiV6/imLMDrkUWOb5eQOsgXhPM+z5pHJZGppVd0hTqWT0EA?=
 =?us-ascii?Q?KQSnX6hdgoTzY2Ro6ta/r38ueQ0ztbdjVYE/ISnBPvLT61aEcR83KqxOwFnX?=
 =?us-ascii?Q?XbJbbT/3eH3d8SP0LTeC/JBThq55BHnfcXWrHIBarVdBz23cTLqkSFAvoS7J?=
 =?us-ascii?Q?7rIU6sPm3Z00VqZ93umIaODBU5AQ8aS5h4mR6SJtGbdw789vwcsBHRAxWNbV?=
 =?us-ascii?Q?O7NnSMErKTzoCIMf0RbRYFvBCoVaZI5qqpcFPsxGByyiv9RU2dE2NgyoLJLg?=
 =?us-ascii?Q?b1ryJkKAxHZTCeC99YNV4+kCTp0MQiIBmTK9Qp54cIaT9UvCWDBfNp9VCPZq?=
 =?us-ascii?Q?iXs7WyDUAtokJ+ZEFqUnUQMZr41NDUi+4cP8E74tRHNlXLktD+wJWWcBP509?=
 =?us-ascii?Q?u76rjqjLuuTNq62lh82LcD++pF91S/3/C4MWrGZk+Sub2V+6I9mXc4WM/Thx?=
 =?us-ascii?Q?iUuEupTT5dhpim2mBJF74RpMeCY7FTdzN+x1u98Lbo95ZykEuRdfv2WfDI7A?=
 =?us-ascii?Q?DjVAQT7+LgZmDQNq3Js49hOOgYWFjTGkjhMgAUNFO748QoLtxmM4JMhA8W9d?=
 =?us-ascii?Q?EnGHvQ6n2du76tSK6uxhjUmOBdIgAiXp3m6ayTAZimZGYNoxo23C94B2ihsy?=
 =?us-ascii?Q?sxI1ndo6RFlgXlu8OrVC3/LeJAjzZMvbFvr3wQjd/C3j9KFTS5Ms1PABtUCR?=
 =?us-ascii?Q?emyrNvnBiK2AuQs3cnizH1HH7nnX8AwIBzoL6MX0eIqMBj0bbO6tHnUtQ6/o?=
 =?us-ascii?Q?kul6A9ohVZ/Ra1cZnimdIz2YMrc81Kp8+fMspSOWVmG2vAAFAycSwmh+AYUZ?=
 =?us-ascii?Q?Lw=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_CO1PR11MB5026178FAC96C620AF1ACEC8C4369CO1PR11MB5026namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6531f4d7-61c2-42b5-df97-08dabbb53dbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2022 03:00:32.5649
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SkZahayp1ZPLt2zpI+hD77JEXE8EL9l1zy2Z3zbl4JQqWdKBCy3KHFYTeEKbd7BNtHiZOd/qpk4oROXPs8XJCN4KuP5ep7OVT5zOhShX73g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5378
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Nov 2022 03:00:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58451

--_000_CO1PR11MB5026178FAC96C620AF1ACEC8C4369CO1PR11MB5026namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jon,

I have forked Langdale branch.

Could you help to fix arm machines failures with zephyr 3.2.0 upgrade patch=
es ?
https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/677723187

Regards,
Naveen

From: Jon Mason <Jon.Mason@arm.com>
Sent: Monday, October 31, 2022 11:07 PM
To: Saini, Naveen Kumar <naveen.kumar.saini@intel.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Langdale branch for meta-zephyr

Hello Naveen,
At least one team within Arm is planning on doing a product using meta-zeph=
yr and basing it off of langdale, and would like a Langdale branch on meta-=
zephyr for continuity with the other branches.

With the recent release of Langdale for Yocto, I was wondering if there are=
 any plans to fork a branch for Langdale on meta-zephyr.  Doing so prior to=
 updating the zephyr sources to the latest might be a good idea.

Thanks,
Jon


--_000_CO1PR11MB5026178FAC96C620AF1ACEC8C4369CO1PR11MB5026namp_
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Hi Jon,<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">I have fo=
rked Langdale branch.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Could you=
 help to fix arm machines failures with zephyr 3.2.0 upgrade patches ?<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><a href=
=3D"https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/677723187">https:=
//gitlab.com/jonmason00/meta-zephyr/-/pipelines/677723187</a><o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Regards,<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Naveen<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Jon Mason &lt;Jon.Mason@arm.com&gt;
<br>
<b>Sent:</b> Monday, October 31, 2022 11:07 PM<br>
<b>To:</b> Saini, Naveen Kumar &lt;naveen.kumar.saini@intel.com&gt;<br>
<b>Cc:</b> Yocto-mailing-list &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Langdale branch for meta-zephyr<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello Naveen,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">At least one team within Arm is=
 planning on doing a product using meta-zephyr and basing it off of langdal=
e, and would like a Langdale branch on meta-zephyr for continuity with the =
other branches.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">With the recent release of Lang=
dale for Yocto, I was wondering if there are any plans to fork a branch for=
 Langdale on meta-zephyr.&nbsp; Doing so prior to updating the zephyr sourc=
es to the latest might be a good idea.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Jon<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
</body>
</html>

--_000_CO1PR11MB5026178FAC96C620AF1ACEC8C4369CO1PR11MB5026namp_--

