Return-Path: <khem_raj@comcast.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E84C636FC
	for <webhook@archiver.kernel.org>; Thu, 21 Apr 2022 16:46:08 +0000 (UTC)
Received: from mx0b-00143702.pphosted.com (mx0b-00143702.pphosted.com
 [148.163.141.77])
 by mx.groups.io with SMTP id smtpd.web11.8249.1650464131964943970
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Apr 2022 07:15:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@comcast.com header.s=20190412 header.b=H6nCox5D;
 spf=pass (domain: comcast.com, ip: 148.163.141.77,
 mailfrom: khem_raj@comcast.com)
Received: from pps.filterd (m0156894.ppops.net [127.0.0.1])
	by mx0b-00143702.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 23KDcLcJ014517;
	Wed, 20 Apr 2022 10:15:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=20190412; bh=RnTmRPrD4hOuHYWabDlTfhqx0CmVeygJxKhOmtbyhGQ=;
 b=H6nCox5DU4GMHHpVApkgVgj29jBfFcNkv8+OqGMMutkFpcj128aJYrv5+S1CWhtneuye
 LhSHRXRwOgi6lob350jfQFKZ/NSgFTz1vjSzqypPF+qEYG1CRHlMTiJZJ1m6a09DGhOB
 FFSGX2Rs/wnlRUVfjuO7Ftbo1G3ClpsLsZG6pt1szSG1G7kgx0G9mogAsLE0abkE0W5f
 bXzKl3bZqKUFnaK1jY2QlZh8NniWi6/xMd9/ytW8xFC7bwmMbdak1SqdITisJVP45+Ay
 Tc79YG5wkflLoUPVtFK1TQSTDf6+Y3Ln6730uaQOJuyFvcFkY3pNNmGIV4Vg6Q+zhum/ AA==
Received: from copdcexop05.cable.comcast.com (dlppfpt-as-1p.slb.comcast.com
 [96.99.226.135])
	by mx0b-00143702.pphosted.com (PPS) with ESMTPS id 3fhvw09fe1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Wed, 20 Apr 2022 10:15:26 -0400
Received: from COPDCEXOP03.cable.comcast.com (147.191.124.158) by
 COPDCEXOP05.cable.comcast.com (147.191.124.160) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Wed, 20 Apr 2022 07:15:03 -0700
Received: from COPDCEXEDGE02.resource.comcast.net (76.96.35.199) by
 COPDCEXOP03.cable.comcast.com (147.191.124.158) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22
 via Frontend Transport; Wed, 20 Apr 2022 07:15:03 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 webmail.comcast.com (76.96.35.199) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Wed, 20 Apr 2022 07:14:45 -0700
Received: from BY5PR11MB4451.namprd11.prod.outlook.com (2603:10b6:a03:1cb::30)
 by MN2PR11MB3758.namprd11.prod.outlook.com (2603:10b6:208:f6::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.13; Wed, 20 Apr
 2022 14:14:42 +0000
Received: from BY5PR11MB4451.namprd11.prod.outlook.com
 ([fe80::b43b:462c:c2d4:a5a3]) by BY5PR11MB4451.namprd11.prod.outlook.com
 ([fe80::b43b:462c:c2d4:a5a3%7]) with mapi id 15.20.5186.013; Wed, 20 Apr 2022
 14:14:42 +0000
From: "Raj, Khem" <Khem_Raj@comcast.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
        "qa-build-notification@lists.yoctoproject.org"
	<qa-build-notification@lists.yoctoproject.org>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: Yocto TSC <tsc@lists.yoctoproject.org>,
        "Mittal, Anuj"
	<anuj.mittal@intel.com>
Subject: Re: [EXTERNAL] Re: [tsc] [qa-build-notification] QA notification for
 completed autobuilder build (yocto-3.3.6.rc1)
Thread-Topic: [EXTERNAL] Re: [tsc] [qa-build-notification] QA notification for
 completed autobuilder build (yocto-3.3.6.rc1)
Thread-Index: AQHYVIhlimFHyKmuNUqOkwwGlQkjHaz42Jdh
Date: Wed, 20 Apr 2022 14:14:42 +0000
Message-ID: 
 <BY5PR11MB4451216A387133B2C2BE9A25BBF59@BY5PR11MB4451.namprd11.prod.outlook.com>
References: 
 <0101018045908f0d-aec445aa-251d-4dcd-a10d-8d0ead780069-000000@us-west-2.amazonses.com>
 <36840f7431b8a53272a3f783d747807dde19967e.camel@linuxfoundation.org>
In-Reply-To: 
 <36840f7431b8a53272a3f783d747807dde19967e.camel@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7ed5bd58-a548-4157-5670-08da22d81d1f
x-ms-traffictypediagnostic: MN2PR11MB3758:EE_
x-microsoft-antispam-prvs: 
 <MN2PR11MB37585E25ECBCE15304F9827ABBF59@MN2PR11MB3758.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 jC77PX6ko4h+8sMBbk/0NPRi1b2CKT6n9a+GgG+Bgc0FiMSWBp65yFweo0/fNoS1yCaieAe8nAyQWu7G/evojICjMDMEZPzWFLtlhMy9nhhAX29vy7VFsnjjR8x4gpn9n4Wb8IxLPNpVmETniv7AbB56lmA/pULJkliplsfzgZT+rb+DxL7NIEv2c7+D5QC1OTAEIaCTlxSsRdEz1u57sZ3lj7bewKQprA9y4/Xw9UDUUL1x/UYVnd2fRcybWzcUEVjyd+EM7hiX0o3WyC/qvYdrvj0lu0gVH3aEnprnEz48za8YU1FLucOY+v2lO8xJJYVChIkwOjNjarwUfygPLHKMtLUoBerQMj3tLmp8t06GVlsTi/XMG+zAE4jzMCEJgXoTdxSI7EJwXemZRqoRhLssM1pNCGTaX7RChBnx8CtkHP0yCsC9bqsQi3MwigDX7QwR28vUa45yvFtpnXbxbk0FwLabfV1IZAeurVr9/RFmJMq/PiKstBuZx5NZ97O2ah7UCrD3mEJlPe2DSmb+vI00tHzhwaXK0UOPRRYzCgdYx+LkZonINGhckl04KYal32odSEjNk2ol2l8dTSrFkZ1ziWckbVNBN3kBmzgiPoJ0bjl/Y5ouuc0UQUfM2WW1Y6DSH6jj1LTKOBkBplLl+8Hj5m3Qw16fxoPH8bPTIvwnEaYecTNzs85nYWIMOdbGEOp+weJfl5pcl2z/OLQ8b9/T1nrwLDvWRtrd1mNvYT/Xwu2eJqqvBX//swn5PWU0+n0C/BkueIenFGmZrrebyaiXO2eXR1vPDsbxB2NQImI=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4451.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(2906002)(966005)(15650500001)(6506007)(508600001)(52536014)(186003)(7696005)(86362001)(9686003)(66946007)(66556008)(66476007)(66446008)(64756008)(4326008)(8676002)(76116006)(53546011)(110136005)(54906003)(71200400001)(122000001)(316002)(38070700005)(38100700002)(55016003)(82960400001)(166002)(33656002)(83380400001)(8936002)(5660300002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?WsAW8fWHaahF04NYTCMe4dxXxwPJO5qhs53B6QUkArMuWYwZpkgRv07M5Wc6?=
 =?us-ascii?Q?y0fuar0WvpRdCDGVxQwrv6TOGr0kItKlb3zVp8IeimqBdU87M2BRWADs9uiJ?=
 =?us-ascii?Q?QCg6Drnh+j63C91Vcoo6bQrW2nyJffDmsnjG3uGUdA9DHeoHnoy1ZqcdSer3?=
 =?us-ascii?Q?IfS4aMO2iVBAdGrRqt124ooMKO8eHQewi4VOqbzDW5P+AaZP/g7964XEf3sO?=
 =?us-ascii?Q?Hk+g1Sdgqf9BTFl2unIL3OHGWv1/Ei2rSTqtqZxpRUm6SAyKwwBCoqmmaWTj?=
 =?us-ascii?Q?xnR6yV0fzk3KpVKT72ZL0K728nnyie7CFvahvai3T1/jbY9aTUzCpJZpSjrV?=
 =?us-ascii?Q?KboyLoKLHKrR61Ch79U1ut+cjmpltmfzdAXEbzx3b9jTBIHJTMKbp6Xz7NQT?=
 =?us-ascii?Q?SPxgcqxbrdlUTdd+LqjrJMXin6Zv5IV8n02355RLXYKrK/v4DfiuLCoUTQr6?=
 =?us-ascii?Q?xnOxgPKgsnsd2+a0kqIcsheM03T0/QInTS9eh1t75hdCJp1P52vEJOhY+ctg?=
 =?us-ascii?Q?rK1It95nUdepTphLojv6gLUyOvK06UORDuTNoHxdNKDEMgbTinAB8gAfrqRN?=
 =?us-ascii?Q?7sXMpASHK9m5dVeLabYy7YpFWcdLxERkjO/hhly/o9zHK/I3ZTqAAeYEF/WK?=
 =?us-ascii?Q?0N1+jXXGiswGh07JjEthaWp8ECJqs6ql590eoxVuDP6DXXQbY2bqhbv4c6tY?=
 =?us-ascii?Q?hs5gpZWUHOtj+7krxa5sYDYzZk+ZvlcyGHGERIaTK10N2YuvxGhoNJ6/qRIa?=
 =?us-ascii?Q?Trs+NjY1DM/0cXv4S7cB6O7WbfHuavAT2V3pI6vezpOD3T4RxD6c+wOtoLl6?=
 =?us-ascii?Q?25bVGHA07EDbactxlf4UmjWtfLgDJKfT8EZ1JNTG63Y4tQ2ppouFtL1TFJ7a?=
 =?us-ascii?Q?PQ4F8acxG0hHezstT9oKOPBStL5r5fZUdVCs2kCT5BTFA3+FhoZrOhlAImja?=
 =?us-ascii?Q?QE/Q24VHVa+H9+AigtMCNaDagQmWkIqLKLk3288qfL2lI3eI6AvKzQXUZfbT?=
 =?us-ascii?Q?aWLyP21i+ioCgrRPiXVZlRzz0Ri44QWTyYRxijBx636gRgwouSZZUh27OLCN?=
 =?us-ascii?Q?7FP1PnX36Ia17vkJvG6y12NqMOF8JhPPi7nTXSx8ey7WlGfUqAXXbBC2JCtV?=
 =?us-ascii?Q?3cLjpbeDtQSiF39JOl2h7MASVJzdcaWKbNYMJZdy14bho63m2NIGjxBq8njK?=
 =?us-ascii?Q?rnOzxZYqYP+j8q/foQsoPRhNp0FTysVIwSpoHmh33hEoYJ1xGlMVxD8c+G4/?=
 =?us-ascii?Q?xKbI/8EnS++4OTQnSKM/RJZ2sxf/SXkHqvr54DPdmgacwbf57jL/1ISLneYn?=
 =?us-ascii?Q?lcyT8qWoD+OJ2WXiO4uUbw65ujLw5pA0m0i5wcYN6Ts8WMspubE10gwWeDjX?=
 =?us-ascii?Q?tQ3hHE9R3moY7XEUi0nsg3CIHTeaQ+8p/lgTwBbCWWVsXlgnrje6Jbblvhhr?=
 =?us-ascii?Q?3iqx1vqMPNA7rwuYIfWJqRasdap5merpYqywEUerQEW/I6Oq+KSoQRmBJz+8?=
 =?us-ascii?Q?5lobG1LfhrRkEGQRlWPC4NuWw+otoJOfO02qqz1k9f8FNRu1OLhogYxR0wqO?=
 =?us-ascii?Q?5b3u/MHQqOnk52D8rvu3YMOV57nj/HH54L3sxz8pYogUW8/yLBSxqJJ+iP0F?=
 =?us-ascii?Q?emHf7otG2Z8R2OR3/m53Ggpt2pkb/DCzOHurERflc/XoL26uGbGLZa/4nKma?=
 =?us-ascii?Q?lCIely95bOcguBdEKIZpy8wK/46Ucs0eeUWrYAvOcLwemtTAFddg9ywdjkAe?=
 =?us-ascii?Q?aRSCeD/ZuH+BFvipVUQk3HbjlowoExG1QNhT46oyErkuPc7uVoqZiuhvW1sh?=
x-ms-exchange-antispam-messagedata-1: 
 1MqnP7l0PLovEUFONQKM6V0xNv3Tt9qbFu/hHJ4mu9zddTxaIEM5RaWc
arc-seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H6J7Km7mgqU5lNUP+8xlXavZzVJD/xGnUHsEuoxBY0hxx3Cyai9M+KkOKKwzh6LmVK3uRYD7SPGNhoIaYKIyCFVQ7OZikbBKtHf1S8Eyvyszg9/LlhBTHucJp3U1yFpny0F9NNjsDps/rD7lndE1/Nya3s3dz5d4+8/Y9m+OMMrJ2PYCQMxwumKRkCjF9BoOzEuYIt48VKuE7gBXVg62HuiFAj2MYobEoX4C8zye/BkmV78YMpTiYcyMZcFzV20T1woZTrqkRiwJmN0NH/D/KH9M2Oz2pGoenqVtwol9wUMU6HwnQ5obtF1XAinHth3D9A0Zd1aZeGhy/DNGE62a6A==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sAISQwfGW7LytGxH/5AWMqc60SPnNHqiRy1cfoBcAuM=;
 b=KR86IYxXFZ6+sPqrj67wCdQS20s3tEOOBRJMYSt4tMUSS9GZCWWXlWkcqdSmGm+31HkoChe/4JVqV4enPlSfNmWz/4KmQlIls/mfazwhHrWAHOWcb2BbuGhotjPuUddVa9Fhc9/IAFAHrtkfZFKzI9yLP3NGeGmqYDA+UzDqEGYg2H7kVxR1QZ/xrNe0rbeTTqbQBfevvg/KYbGw9KIdg0UognfCw8Em/rLbldEtOQ5AWj8dKekzIAaNyWRx0za4vIu/xPJw68Pvh5PF9ukIg1U2lbnYVGzigybBt0p6vCWdX9S+bPHpCvAJEdOYdZRY8VV289xzQQqwJpMbfQ3OtA==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cable.comcast.com; dmarc=pass action=none
 header.from=cable.comcast.com; dkim=pass header.d=cable.comcast.com; arc=none
x-ms-exchange-crosstenant-authas: Internal
x-ms-exchange-crosstenant-authsource: BY5PR11MB4451.namprd11.prod.outlook.com
x-ms-exchange-crosstenant-network-message-id: 
 7ed5bd58-a548-4157-5670-08da22d81d1f
x-ms-exchange-crosstenant-originalarrivaltime: 20 Apr 2022 14:14:42.3063 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: 906aefe9-76a7-4f65-b82d-5ec20775d5aa
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: 
 ovsOBq4J5AsFg/Wq/iDu0JoeaaX2jq4h3TxYDbq18oaEQzG0KjM1uAL4PMWxYuTJMw3RgoOoJBMmmewp2rN1TGl0m+sGmdmNTkaRIy83BCs=
x-ms-exchange-transport-crosstenantheadersstamped: MN2PR11MB3758
x-originatororg: cable.comcast.com
Content-Type: multipart/alternative;
	boundary="_000_BY5PR11MB4451216A387133B2C2BE9A25BBF59BY5PR11MB4451namp_"
MIME-Version: 1.0
X-CFilter-Loop: Forward AAETWG
X-Proofpoint-ORIG-GUID: HLeYsy0VyXsgjva_8wtV542SNYY2lAPv
X-Proofpoint-GUID: HLeYsy0VyXsgjva_8wtV542SNYY2lAPv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-04-20_04,2022-04-20_01,2022-02-23_01
X-Proofpoint-Spam-Reason: safe
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Apr 2022 16:46:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56821

--_000_BY5PR11MB4451216A387133B2C2BE9A25BBF59BY5PR11MB4451namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Is the sato-sdk on qemuppc also intermittent issue
________________________________
From: tsc@lists.yoctoproject.org <tsc@lists.yoctoproject.org> on behalf of =
Richard Purdie <richard.purdie@linuxfoundation.org>
Sent: Wednesday, April 20, 2022 12:29:29 AM
To: qa-build-notification@lists.yoctoproject.org <qa-build-notification@lis=
ts.yoctoproject.org>; yocto@lists.yoctoproject.org <yocto@lists.yoctoprojec=
t.org>
Cc: Yocto TSC <tsc@lists.yoctoproject.org>; Mittal, Anuj <anuj.mittal@intel=
.com>
Subject: [EXTERNAL] Re: [tsc] [qa-build-notification] QA notification for c=
ompleted autobuilder build (yocto-3.3.6.rc1)

On Wed, 2022-04-20 at 06:02 +0000, Pokybuild User wrote:
> A build flagged for QA (yocto-3.3.6.rc1) was completed on the autobuilder=
 and is available at:
>
>
>     https://urldefense.com/v3/__https://autobuilder.yocto.io/pub/releases=
/yocto-3.3.6.rc1__;!!CQl3mcHX2A!XITvSVzpVXHE-hKopFwPzKrqpC-fi6MhLyNlACbodEI=
HW7S3PBGSenxMWW9GU4pG$
>
>
> Build hash information:
>
> bitbake: d01d8326331cfe59208674cfc53aa26c0028b313
> meta-agl: ca53308f8803fb50709b3f17bb1f9e476366bb62
> meta-arm: 878fabbfc720da7d634ed9a2c0e24d4b8845ea20
> meta-aws: 6801abf40bb255a31bce5061c5c6b72f5e2a8f58
> meta-gplv2: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f
> meta-intel: 16bfef2d1e0d0c8c596741d0bbb820541c432f6d
> meta-mingw: 422b96cb2b6116442be1f40dfb5bd77447d1219e
> meta-openembedded: a970ee45c2335c37041ad1658323481874bb4f0e
> oecore: fbbb689c8df7f82644b8a9bc5bb6884bc6516660
> poky: eee9fba7b4d5d7a268a495688039027390894e6d

3.3.6 built but there were two issues. One was a qemu boot test failure for
core-image-sato-sdk on qemuppc-alt. I did have a look for logs but there ar=
en't
any, qemu never seemed to start but nothing to indicate why. Since the othe=
r
tests for ppc passed, I think this is one of our general intermittent probl=
ems
on ppc and we should ignore it.

The other was some valgrind ptest failures. Those are known intermittent is=
sues
and I believe also not significant from a release perspective.

Cheers,

Richard





--_000_BY5PR11MB4451216A387133B2C2BE9A25BBF59BY5PR11MB4451namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div>
<div>
<div style=3D"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" d=
ir=3D"ltr">
Is the sato-sdk on qemuppc also intermittent issue&nbsp;</div>
</div>
<div id=3D"ms-outlook-mobile-signature">
<div></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> tsc@lists.yoctoprojec=
t.org &lt;tsc@lists.yoctoproject.org&gt; on behalf of Richard Purdie &lt;ri=
chard.purdie@linuxfoundation.org&gt;<br>
<b>Sent:</b> Wednesday, April 20, 2022 12:29:29 AM<br>
<b>To:</b> qa-build-notification@lists.yoctoproject.org &lt;qa-build-notifi=
cation@lists.yoctoproject.org&gt;; yocto@lists.yoctoproject.org &lt;yocto@l=
ists.yoctoproject.org&gt;<br>
<b>Cc:</b> Yocto TSC &lt;tsc@lists.yoctoproject.org&gt;; Mittal, Anuj &lt;a=
nuj.mittal@intel.com&gt;<br>
<b>Subject:</b> [EXTERNAL] Re: [tsc] [qa-build-notification] QA notificatio=
n for completed autobuilder build (yocto-3.3.6.rc1)</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On Wed, 2022-04-20 at 06:02 &#43;0000, Pokybuild U=
ser wrote:<br>
&gt; A build flagged for QA (yocto-3.3.6.rc1) was completed on the autobuil=
der and is available at:<br>
&gt; <br>
&gt; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"https://urldefense.com/v3/__https:/=
/autobuilder.yocto.io/pub/releases/yocto-3.3.6.rc1__;!!CQl3mcHX2A!XITvSVzpV=
XHE-hKopFwPzKrqpC-fi6MhLyNlACbodEIHW7S3PBGSenxMWW9GU4pG$">
https://urldefense.com/v3/__https://autobuilder.yocto.io/pub/releases/yocto=
-3.3.6.rc1__;!!CQl3mcHX2A!XITvSVzpVXHE-hKopFwPzKrqpC-fi6MhLyNlACbodEIHW7S3P=
BGSenxMWW9GU4pG$</a>
<br>
&gt; <br>
&gt; <br>
&gt; Build hash information: <br>
&gt; <br>
&gt; bitbake: d01d8326331cfe59208674cfc53aa26c0028b313<br>
&gt; meta-agl: ca53308f8803fb50709b3f17bb1f9e476366bb62<br>
&gt; meta-arm: 878fabbfc720da7d634ed9a2c0e24d4b8845ea20<br>
&gt; meta-aws: 6801abf40bb255a31bce5061c5c6b72f5e2a8f58<br>
&gt; meta-gplv2: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f<br>
&gt; meta-intel: 16bfef2d1e0d0c8c596741d0bbb820541c432f6d<br>
&gt; meta-mingw: 422b96cb2b6116442be1f40dfb5bd77447d1219e<br>
&gt; meta-openembedded: a970ee45c2335c37041ad1658323481874bb4f0e<br>
&gt; oecore: fbbb689c8df7f82644b8a9bc5bb6884bc6516660<br>
&gt; poky: eee9fba7b4d5d7a268a495688039027390894e6d<br>
<br>
3.3.6 built but there were two issues. One was a qemu boot test failure for=
<br>
core-image-sato-sdk on qemuppc-alt. I did have a look for logs but there ar=
en't<br>
any, qemu never seemed to start but nothing to indicate why. Since the othe=
r<br>
tests for ppc passed, I think this is one of our general intermittent probl=
ems<br>
on ppc and we should ignore it.<br>
<br>
The other was some valgrind ptest failures. Those are known intermittent is=
sues<br>
and I believe also not significant from a release perspective.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_BY5PR11MB4451216A387133B2C2BE9A25BBF59BY5PR11MB4451namp_--

