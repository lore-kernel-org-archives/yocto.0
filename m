Return-Path: <khem_raj@comcast.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67C52C433FE
	for <webhook@archiver.kernel.org>; Thu, 10 Feb 2022 16:30:57 +0000 (UTC)
Received: from mx0a-00143702.pphosted.com (mx0a-00143702.pphosted.com
 [148.163.145.77])
 by mx.groups.io with SMTP id smtpd.web12.12735.1644510656020877280
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Feb 2022 08:30:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@comcast.com header.s=20190412 header.b=ug2sPrBh;
 spf=pass (domain: comcast.com, ip: 148.163.145.77,
 mailfrom: khem_raj@comcast.com)
Received: from pps.filterd (m0184892.ppops.net [127.0.0.1])
	by mx0a-00143702.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 21AGRN2n023477;
	Thu, 10 Feb 2022 11:30:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=20190412; bh=m8cfu7IWVHqkYOOxXU6f0Hk+l0cNd8qrhgl07v2ZZ5U=;
 b=ug2sPrBhKM3e7kDbksZVSB+k7Ef4+88dV6kQhg6moeGYBowCgNIRC+UbdprebUlRH9C8
 nXbHVeMziXR9fMuYnakz8zbTye3XlNFw8AHgGVZDGuQ2dkB1VJ2dJGCushRUVtPwjvNa
 f5R2yYeYEDIsb3C66444iuu/TH/d0gD2wWQRC5ZTKB1581thPdTRmHZb8+mE5caS4QgZ
 n+xPF5WPOrJGmOYdzqTmpZR/VCI15/ftr61uDclPBEE7Zy187ziYZGlJ9BEGX0kUEfOc
 im+zage5w+brUe8mvrfP8N5ggVhok1VZVhOgP7dJV79P4XfVFSCBLJPcC4KSL9GtQtyT 4w==
Received: from dlpemail-as-7p.cable.comcast.com (dlppfpt-as-1p.slb.comcast.com
 [96.99.226.135])
	by mx0a-00143702.pphosted.com (PPS) with ESMTPS id 3e4ku3hw09-8
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Thu, 10 Feb 2022 11:30:48 -0500
Received: from PACDCEXOP01.cable.comcast.com (24.40.1.148) by
 PACDCEXOP03.cable.comcast.com (24.40.1.150) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Thu, 10 Feb 2022 11:30:14 -0500
Received: from PACDCEXEDGE01.cable.comcast.com (76.96.78.71) by
 PACDCEXOP01.cable.comcast.com (24.40.1.148) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.986.14
 via Frontend Transport; Thu, 10 Feb 2022 11:30:14 -0500
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by webmail.comcast.com (76.96.78.71) with Microsoft SMTP Server (TLS) id
 15.0.1497.28; Thu, 10 Feb 2022 11:30:09 -0500
Received: from BY5PR11MB4451.namprd11.prod.outlook.com (2603:10b6:a03:1cb::30)
 by SJ0PR11MB5022.namprd11.prod.outlook.com (2603:10b6:a03:2d7::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.14; Thu, 10 Feb
 2022 16:30:06 +0000
Received: from BY5PR11MB4451.namprd11.prod.outlook.com
 ([fe80::34e9:64c8:26fd:f0ee]) by BY5PR11MB4451.namprd11.prod.outlook.com
 ([fe80::34e9:64c8:26fd:f0ee%2]) with mapi id 15.20.4975.012; Thu, 10 Feb 2022
 16:30:06 +0000
From: "Raj, Khem" <Khem_Raj@comcast.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
        qa-build-notification
	<qa-build-notification@lists.yoctoproject.org>,
        Yocto TSC
	<tsc@lists.yoctoproject.org>,
        "<yocto@lists.yoctoproject.org>"
	<yocto@lists.yoctoproject.org>
CC: "Teoh, Jay Shen" <jay.shen.teoh@intel.com>,
        "Mittal, Anuj"
	<anuj.mittal@intel.com>,
        Michael Halstead <mhalstead@linuxfoundation.org>,
        Jan-Simon Moeller <dl9pf@gmx.de>,
        Scott Murray <scott.murray@konsulko.com>
Subject: Re: [EXTERNAL] [tsc] 3.4.2 rc1 QA
Thread-Topic: [EXTERNAL] [tsc] 3.4.2 rc1 QA
Thread-Index: AQHYHmtU+6QJPDDHi0uooq1HI7UnOKyM+dyh
Date: Thu, 10 Feb 2022 16:30:06 +0000
Message-ID: 
 <BY5PR11MB44511B9570CD729185664770BB2F9@BY5PR11MB4451.namprd11.prod.outlook.com>
References: 
 <8a5f2620473c2663bcf372c2967b25624ae29724.camel@linuxfoundation.org>
In-Reply-To: 
 <8a5f2620473c2663bcf372c2967b25624ae29724.camel@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe5b09c2-0ae1-43aa-a639-08d9ecb298ff
x-ms-traffictypediagnostic: SJ0PR11MB5022:EE_
x-microsoft-antispam-prvs: 
 <SJ0PR11MB5022E4723D2E7CF8C0A877CBBB2F9@SJ0PR11MB5022.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Hl7WQ3ytG8VDIqPR0ERvp+APFwRPLiqWnBvOuVr3xNe5tACJILqqoaSAcFI4FE+/8EZ0uSsyDQljrwID8ijubqDN46w+ec5s7VvkhkVXj8kiub3jdGg1llEdJzu/d1b3xxlw6K28PtPYkgMm4hvRvVkvy0FZns8sece/ggRtojngKBgZHxC7naUETua3Tql7D1dmAIbgvROaglK0RZbgGnyECuE9seLWdM/6MGGoyGRUt3OXnRC4rIfZZndZW7Y2yOU1VQACFlBsWFv4zBhOTzQriGUBP00eZsJcyiiTw156himlpyN1UTJXcc8c+pWTPTxa+DwESQepWKhTU7MLwSaLWKmQ2IFM08uKVFs7Byq7VdQuNweZr/C1/u4SJF7nFQYuGyu6raYCmbScpKhYubfcE2UmIlw7Xjw5HKgeMfmcZ59fdE6vaCckQsJgJOb55044VUE7YRXIhtZ8LlyOnrQ8rLXt37DaUw9YUbkRg2MQSSKR1YQJQUoLx9HP15IRD1IhwK3cott9kHZOA8DNDznHB9EQp8gw47J7Z4xvCkjuC8PG5zts3kFJYgfh9lScOuhs2fpwH8Zp1HpWi+GypdkQ9Mux8FkO890nvqgwlPaQqjzASB3VaFCnF8vUwksCLZoUEKSqM8sRjzqGV0e0hQx1hCVFYQ8w7dKtnFxURnf1NdiozZxUVk9sCpqV70mGbE590JU98qw5FJiYokkR7Xl7eBmeDwOQDnAUepPIGr4=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4451.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(7696005)(53546011)(9686003)(110136005)(86362001)(55016003)(316002)(33656002)(54906003)(64756008)(38100700002)(4326008)(122000001)(2906002)(38070700005)(76116006)(66946007)(6506007)(66446008)(66476007)(66556008)(508600001)(71200400001)(52536014)(8936002)(83380400001)(8676002)(82960400001)(5660300002)(186003)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?8TiTNWVZpVDLO7y1e1wTyWqRNvlBkMaRaWUsOn6lTviXoZmCD/Y91Jnr?=
 =?Windows-1252?Q?SDrr/5MwVD5Mgcoh0UObCrSDDpkrkoZLPu7I3SmxnT1HAv/46HReco7m?=
 =?Windows-1252?Q?XhgOX06iC2GEd2YRRLFJ1C5n+HH9IQAC8VqhGJItFfyiPiIhUrUrmp3X?=
 =?Windows-1252?Q?IXRPYc6wbZsy4C0LgjvdSv47ByjSzwrYWBiiIp8vb3IK8ouHj7B4Nx0o?=
 =?Windows-1252?Q?5iTLAO9XkOMFvI8s8uV/D8Vxwkzfbhj3OEcBHcP/8Mm7KTt0tCXhYmXd?=
 =?Windows-1252?Q?WoGZ5KeRdpld4FaaGlmvEHsSn8xCyjpy0jeChTXFcBKXJNa6NKY75ZPz?=
 =?Windows-1252?Q?JmjTfIsdrat/13/4uJ+pfUq7GHX4oKT0IkMqoGaH8Ld17qA5P+9S7moF?=
 =?Windows-1252?Q?ncTv68W9sKX7Tf1ngsb1mVLH3DJ1aeFeZZvMZUJxfxlcOEUWNfrpyscJ?=
 =?Windows-1252?Q?7Tno8PdIhhjzKFdJBHVJDj+y0YcmImS67IEYS+zjtikZ8FeYtwMarn1p?=
 =?Windows-1252?Q?KPKA4e7oeTSlBenWyesrTU4V/vrVkrkb9FAo48PoGVYxHP/uv+D0+jDh?=
 =?Windows-1252?Q?FIxY6Z5qG/s2suIgjCOu0MNSW1zyB46RzzCv/dreuXG8vxJhrPPs6Hc6?=
 =?Windows-1252?Q?62KtrTWy7LJVPbhLPNsOPvyEqRMPQwygsTJRdK0EmB5z6kWxMRqxln2Q?=
 =?Windows-1252?Q?P4DNbOdKfSB46ittsAtGgpa7kWl8c7nyA43uU0XUPL0bqe0AFcu7HHWO?=
 =?Windows-1252?Q?dsfatjNbtv5zJVUZQZ0tJD9ZrLpAP40o8hpmSJXbdCBY0/5PI5b0GK48?=
 =?Windows-1252?Q?NYE+R8ViMgdOaTtL/RAKz0mQq0LIxxMgglSqaWQ4jpNB7+7eq8xlqECH?=
 =?Windows-1252?Q?H9Wzw6Tfz/NxxQlhTJ1Ixie3uxvOiPHAxGDZc771hRMx7IzUHOuAeTKw?=
 =?Windows-1252?Q?XDhf4wTO5uAEazXnJcsbZZAQ91de3nfOqbu6K/RttgvU5ViUFlpAuFVN?=
 =?Windows-1252?Q?e7FYIbzezB/YLOb1Apl6D5fQBkjSNqXYbj/SEEPniFijWtTkarb0UCO6?=
 =?Windows-1252?Q?qm5If1/XiqTBu5Se4DmsHxEYFGHOJzUsFuS/j19MSfWfnWevlaX/5cVJ?=
 =?Windows-1252?Q?4NS7uT1rpQ900raT8reYr2QVlpuEq0tahkzop9o/zTIkKzRoTC366Loz?=
 =?Windows-1252?Q?43117C/TWkWzDASL5uFG7JsLrRbifVBETwlD5hHBx3+gPj+qSBPe4r9y?=
 =?Windows-1252?Q?x8ENKx3LXojswAeinT5hYSIwQ0lg3+sdUbV1gNgmAqthi2c3zqpYqNR6?=
 =?Windows-1252?Q?42iyIyF7wzeLeb3WB3xNmmzOYEx0527v+BLzK5d5BYZJ7mVWadO+mHR4?=
 =?Windows-1252?Q?jwTdPz0yCdC9xiVjL04LBm/VVK/6oBRTDMdymtHkkDpuIOF2oVZn1wJ/?=
 =?Windows-1252?Q?6rZzKvn2m7IwaPRD4PhCpBF5ID6d7p75rKYKk3UUEPll+A2HxJ10pJgO?=
 =?Windows-1252?Q?iiD51TLKKLHnSf8XiCEF2gTfYVCJuKh60ViNGQOP0P1+9K4udvqEGNKP?=
 =?Windows-1252?Q?Lq2D3oJyYbziLqA4OySXRXSveLA7ai4BMvzugjfwLfFScuYpwdasCLXO?=
 =?Windows-1252?Q?C5JOg5chgmXo5nFPi9LLlC7RzpE2hhmXFQFn3/NJshOa72kKvEktvs+u?=
 =?Windows-1252?Q?qWG/c2g0nGKlkunAfiycy9ICjjo+56Yt0274LlywoqUMUPVWGsYmgSO0?=
 =?Windows-1252?Q?MKWaj6rSLNhetBEjGQfYN5Daw/qIsRFHJf6vJAJG4bC6NrSYCmGVeQXv?=
 =?Windows-1252?Q?vKmAmIXySV7Tr+qeNXKY+EZPkAfSRQLq/pgdPuqHPGrNTO6HrNEK1zBy?=
 =?Windows-1252?Q?cAQdV1S7WIoo2VwN6lUkrJ8JigDYOkUYRq8=3D?=
arc-seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ax7d83uzM18w3dMWgFNJgjVUPRX3PCjJcgq5FgrLikqrYnCQwTfAnyEYnj6zLyE6iDEVbxYfZyd0KLWpIQjVuyEyHgYQH1T2yysWXBKjO+9LK4BePDxEHgQPqRPchdB4okRyQ3vRZDDmSRe0HHeVdQ4390vpXDBJhMkjuai1uA7W++lpyPTdOLNqmj05HIJcLtwrK44wHJVM6at9TRTwVz/2iVwirA/rDk/zc2y6zSh2BUwmQF1nMkLKMdwRzmEGwM3XqnJbusfJTP7Z4mEFcZ9ljIXzoSsuj9Y8aDPwbG8cz1mPOxiJqAst3t645uY3cxuj9cIALe8LXUB57KB3GA==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2besxlohBs9ken886ydc8vbPvpl2AuULaWC42SAXUhs=;
 b=btheEEpEJ/Mgclg26R6cIlTwnPuz55htcuABvaTbnFKletOWICQto/RejbkbGj2qXZhJMgKwJAKi3fgQZjjMBePaS3Zo5Jt400pETTpsOxFxRDWvIfe8N9IyVN0nPcOwAH2Loa+GJLzWvUk8JcGGWoWr30Hyqp0MHr0PHMTOL3q0Nyg+QpZ+FIFfieJ14cIpST/tRKkD7kThMpkyNe+Ah4KFWGmMx+T6aygAFdF/CDukpumsfnRuMiOHPTRZZmopAL0dL4qEnTa/3XTd4pxkJWkI2Mj0Cidtn+kxjLQ5YbFAYI+Gy0Ae7rb1vQyOlVsDxM3ATEMfWatHJIFBxwefxg==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
x-ms-exchange-crosstenant-authas: Internal
x-ms-exchange-crosstenant-authsource: BY5PR11MB4451.namprd11.prod.outlook.com
x-ms-exchange-crosstenant-network-message-id: 
 fe5b09c2-0ae1-43aa-a639-08d9ecb298ff
x-ms-exchange-crosstenant-originalarrivaltime: 10 Feb 2022 16:30:06.3923 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: 906aefe9-76a7-4f65-b82d-5ec20775d5aa
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: 
 sdLBKoUNXYHyi+a4eSeL4+RVssGmSJvdi92BOhWqM3svL2i7rrLgLvX3DfzX3oGiFdFJzdJ/m3XaMdEfsclIabjiRvH8tdrlAGdFGvhFlu8=
x-ms-exchange-transport-crosstenantheadersstamped: SJ0PR11MB5022
x-originatororg: cable.comcast.com
Content-Type: multipart/alternative;
	boundary="_000_BY5PR11MB44511B9570CD729185664770BB2F9BY5PR11MB4451namp_"
MIME-Version: 1.0
X-CFilter-Loop: Forward AAETWX
X-Proofpoint-GUID: pWxYkFEPsFDlj2h42TP-dqVAQiHwkjC8
X-Proofpoint-ORIG-GUID: pWxYkFEPsFDlj2h42TP-dqVAQiHwkjC8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-02-10_07,2022-02-09_01,2021-12-02_01
X-Proofpoint-Spam-Reason: safe
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Feb 2022 16:30:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56147

--_000_BY5PR11MB44511B9570CD729185664770BB2F9BY5PR11MB4451namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Can we then keep meta-agl for LTS and master only ? as it seems that=92s wh=
at it is going to support

From: tsc@lists.yoctoproject.org <tsc@lists.yoctoproject.org> on behalf of =
Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Thursday, February 10, 2022 at 2:45 AM
To: qa-build-notification <qa-build-notification@lists.yoctoproject.org>, Y=
octo TSC <tsc@lists.yoctoproject.org>, <yocto@lists.yoctoproject.org>
Cc: Teoh, Jay Shen <jay.shen.teoh@intel.com>, Mittal, Anuj <anuj.mittal@int=
el.com>, Michael Halstead <mhalstead@linuxfoundation.org>, Jan-Simon Moelle=
r <dl9pf@gmx.de>, Scott Murray <scott.murray@konsulko.com>
Subject: [EXTERNAL] [tsc] 3.4.2 rc1 QA
3.4.2 rc1 was built on the autobuilder. It didn't send the QA email as that=
 is
broken. I haven't sent it manually as we need to decide what to do with thi=
s
build. There was one failure and 8 warnings.

The failure was with meta-agl. As far as I know agl doesn't support honiste=
r and
the next branch has moved on for kirkstone. There is therefore an open ques=
tion
about what we configure the autobuilder to do there.

The warnings all look to be from SDK testing with sstate server networking
issues. They shouldn't break the release and I don't believe there is any c=
ode
side issue beyond the server one.

Thoughts?

[Yes, we need to get these things fixed, I know. They are being worked on. =
I'm
resorting to merging master stuff blind at this point too as the issues aff=
ect
that as well.]

Cheers,

Richard

--_000_BY5PR11MB44511B9570CD729185664770BB2F9BY5PR11MB4451namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Can we then keep meta-agl for LTS and master only ? =
as it seems that=92s what it is going to support
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:0in;margin-right:0in;mar=
gin-bottom:12.0pt;margin-left:.5in">
<b><span style=3D"font-size:12.0pt;color:black">From: </span></b><span styl=
e=3D"font-size:12.0pt;color:black">tsc@lists.yoctoproject.org &lt;tsc@lists=
.yoctoproject.org&gt; on behalf of Richard Purdie &lt;richard.purdie@linuxf=
oundation.org&gt;<br>
<b>Date: </b>Thursday, February 10, 2022 at 2:45 AM<br>
<b>To: </b>qa-build-notification &lt;qa-build-notification@lists.yoctoproje=
ct.org&gt;, Yocto TSC &lt;tsc@lists.yoctoproject.org&gt;, &lt;yocto@lists.y=
octoproject.org&gt;<br>
<b>Cc: </b>Teoh, Jay Shen &lt;jay.shen.teoh@intel.com&gt;, Mittal, Anuj &lt=
;anuj.mittal@intel.com&gt;, Michael Halstead &lt;mhalstead@linuxfoundation.=
org&gt;, Jan-Simon Moeller &lt;dl9pf@gmx.de&gt;, Scott Murray &lt;scott.mur=
ray@konsulko.com&gt;<br>
<b>Subject: </b>[EXTERNAL] [tsc] 3.4.2 rc1 QA<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:0in;margin-right:0in;mar=
gin-bottom:12.0pt;margin-left:.5in">
3.4.2 rc1 was built on the autobuilder. It didn't send the QA email as that=
 is<br>
broken. I haven't sent it manually as we need to decide what to do with thi=
s<br>
build. There was one failure and 8 warnings.<br>
<br>
The failure was with meta-agl. As far as I know agl doesn't support honiste=
r and<br>
the next branch has moved on for kirkstone. There is therefore an open ques=
tion<br>
about what we configure the autobuilder to do there.<br>
<br>
The warnings all look to be from SDK testing with sstate server networking<=
br>
issues. They shouldn't break the release and I don't believe there is any c=
ode<br>
side issue beyond the server one.<br>
<br>
Thoughts?<br>
<br>
[Yes, we need to get these things fixed, I know. They are being worked on. =
I'm<br>
resorting to merging master stuff blind at this point too as the issues aff=
ect<br>
that as well.]<br>
<br>
Cheers,<br>
<br>
Richard<o:p></o:p></p>
</div>
</div>
</body>
</html>

--_000_BY5PR11MB44511B9570CD729185664770BB2F9BY5PR11MB4451namp_--

