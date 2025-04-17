Return-Path: <fabian.hanke@bosch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F46AC369B2
	for <webhook@archiver.kernel.org>; Thu, 17 Apr 2025 11:14:57 +0000 (UTC)
Received: from DUZPR83CU001.outbound.protection.outlook.com (DUZPR83CU001.outbound.protection.outlook.com [52.101.67.3])
 by mx.groups.io with SMTP id smtpd.web11.6162.1744888487785843655
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Apr 2025 04:14:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bosch.com header.s=selector1 header.b=uWJ8Bhr0;
 spf=pass (domain: bosch.com, ip: 52.101.67.3, mailfrom: fabian.hanke@bosch.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KscU4L3w0LRh5/SPCCYzP/X2DsPK3QVKDDi2U8QszLUgBLWGSYZkwdTwPas5RTnTxaPwHLuCGP8bySSEtXXdrF7GhbEyhx1c/LvxTMdPJvav7PIrx4y3YZb96YGcaIM8cTZSejm+RtLb6pqlwpqnFfj39TfbgdjlIeQxGtYlEfH+SowasJ5lqZX/P9ryTJfHE1tpuuaCrHDu48dNKWUIgT75H8Vi8kGRhb48ryc6yD5AA55HdwWyBiyhwc+v4bxzoyAxhHSe7AAQq+Y4t4V8eYnJx5QvAejQYuauD3H8KVC5IYjNejN1mhrkj5SZZhCokcn9TH/F9AeruLgSKeQ//g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+CI/tauzRNxoX7mWkNaF/E/8MavvH/vT13m4HYeZ0N4=;
 b=ms4bRZBGMM+QFpaMti8/MzDdeCzydZOEjNyMf0jfVJieEr1hVhnwqgSY/krXNCoXSvcrUuBFqjTgbNRwnBScfwXZ0PRZmdU6ynkqMh9ntCNI8JOzF8TD+5lrU1lNHT99njCx1c8lrUAtr159/GGKvK2Prnk/ssV1FMbY3a6yt1vuV/A9oAFk5bmCV8r9j85xSSB+tzIVeW0Pw02X4htiod3thfMv+3ZIZLl6kVng1jgjEmMYFyrjgYqDuX25brkA+WCyBcoDgYJ4OVwNFRhgq+Y4bvHJ5per7T1Y8M/D74yU55bcNgwmf1OWhzVyXC06HW6RSH0jT+Ticu8DgCdIEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bosch.com; dmarc=pass action=none header.from=bosch.com;
 dkim=pass header.d=bosch.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bosch.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+CI/tauzRNxoX7mWkNaF/E/8MavvH/vT13m4HYeZ0N4=;
 b=uWJ8Bhr0iKpOXJPUPuRazhiVxQwJFJVKTcib28NrgAgJ/6d7nJKEcf+myCz31I2KmJp0ktejrdRVxP5UPWJPz+AsCfoWnKF3FOBSd9fXoQowBnJHi7DjoDTI1WHPljEVq5IJrPtT1z2ouAFKyZd7ibEAT91ohh1QskiqlmvfoFuUOZdGGfP2XtRqkCzZISOCNnibEhiU7caSPwBvht+5ak+pJUsjWYUPRcDzRcwXKHiihuHh/uDZMswPbjv5uNl3aqi+deeZW0m1ryKcQnSv9DL/pa+hdqWraVzg83Bt20u7ZkvYRqCOguhq+a80D9+3N9uLsBvN8khGkFXfbTLijg==
Received: from AM8PR10MB4625.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:356::18)
 by AM8PR10MB4081.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:1ca::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.33; Thu, 17 Apr
 2025 11:14:45 +0000
Received: from AM8PR10MB4625.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::659c:52f4:cf5f:c5ba]) by AM8PR10MB4625.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::659c:52f4:cf5f:c5ba%4]) with mapi id 15.20.8632.035; Thu, 17 Apr 2025
 11:14:45 +0000
From: "Hanke Fabian (DC/PAN-St)" <fabian.hanke@bosch.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"vinhtruong.huynh@stud.h-da.de" <vinhtruong.huynh@stud.h-da.de>
Subject: RE: [yocto] GPL License Compliance - Automatically detect linking
 against GPL libraries
Thread-Topic: [yocto] GPL License Compliance - Automatically detect linking
 against GPL libraries
Thread-Index: AQHasnraGxtnFHUy2kSzfhf6ywFVYbGxX0h0gfhKnDA=
Date: Thu, 17 Apr 2025 11:14:45 +0000
Message-ID: 
 <AM8PR10MB4625642EA199728C718B868BABBC2@AM8PR10MB4625.EURPRD10.PROD.OUTLOOK.COM>
References: <1572b957-1e36-442b-885f-a4d575afcca2@denx.de>
	 <918.1717162801361364915@lists.yoctoproject.org>
 <a738afa77c76f1214e8cee06f3915931d7b13589.camel@linuxfoundation.org>
In-Reply-To: 
 <a738afa77c76f1214e8cee06f3915931d7b13589.camel@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: vinhtruong.huynh@stud.h-da.de
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bosch.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM8PR10MB4625:EE_|AM8PR10MB4081:EE_
x-ms-office365-filtering-correlation-id: 4908b6b2-bab2-4720-69a2-08dd7da10efb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|366016|1800799024|13003099007|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?f1PYJwTi9U497viOc+d7tBP+4RuqFxC1ttWUZIzdcIazTht2snOWbWqTa9?=
 =?iso-8859-1?Q?ITX1a/TCxYat0DbzwraN3jFbDlwAvrDm7hOWrWdZP3hU4YnfCU2W7yBiX7?=
 =?iso-8859-1?Q?l+tkEZKo/ePfFr5XWz5pk+6QHgmYXB46m7mfssBTA/3MBPH70QrCR6f0c6?=
 =?iso-8859-1?Q?HAGZ4yQcp5t1Jf8ZnEiyL2/7xCC5hgEo/U3kmaWkFeiz/1fAt/ku/qzX8w?=
 =?iso-8859-1?Q?AiBesR7zoIj85+6nsIwer+0O97MqF070dqIWXNCriZ3PNNOgLgupSJC8f5?=
 =?iso-8859-1?Q?VwUsFkEruhVnJWUWRG+FzauMw28IIjWbA/FPNqcLon596Otl6z2InsYc/p?=
 =?iso-8859-1?Q?a1t01+vylu/i18SlYAAfH9tFaU2a+Y7FY0XSDGX40/zePjaNTydBYmzakm?=
 =?iso-8859-1?Q?pPeYBSMvXbE8qPQM1PYV2kzTOZf0Qs3oDKp4+BTQHfWeyDp309eMS5g0LK?=
 =?iso-8859-1?Q?H9/6/HvZ1oHkNtu0stsxvbqk2HSGvJMGYJgQvInsqJg9OlfgZXcKk2O7B+?=
 =?iso-8859-1?Q?pzJzfSIgq9d2mAMZ1/HLviAeY+mqjWa2K/ToDTUhRMbwJqSmpVzZiITt05?=
 =?iso-8859-1?Q?3+CDy3H0qyhc1ze3J8/dwOUPpkkWISiZ8PGxLpNmq4H6DY2ORlSQy/mrg1?=
 =?iso-8859-1?Q?/Ay4O27cRwKL17/qSU+GU92NN7HLefX+26JBCUcFCpus8p5GEGnxyF34+M?=
 =?iso-8859-1?Q?21fcPo0NUvBATfMdJYBV8spW7neLRNgl+suwCCHH/uhKX6nUNY5o972gWl?=
 =?iso-8859-1?Q?U3UEdY7yeceh/toFSIWzp7NXWkYPckLWW2A4anDsjqaCxK5raWK7DY/K3J?=
 =?iso-8859-1?Q?VUwtL/HXWvuCYQNu5M4kpTJfRtvho996jlXfxuokZjRGzN0qyZyrr+Jyv3?=
 =?iso-8859-1?Q?nAb3401jFpTuGKCa5Nft5AAzilWaiI2dunIvkNvXup+wfEqLUgGWmhT7DT?=
 =?iso-8859-1?Q?3I4czMPd087d4JPCGtNG9m2+tIuI3OFygg05BtQuSvSxSiBBDMxXBsoeaJ?=
 =?iso-8859-1?Q?blZogN0OLq48plbKcy8fx/ufP2uIsH53lYAtDiNDoVx0GGF+NTE9nv/lPY?=
 =?iso-8859-1?Q?xAX/Q2DJul1nQH7QJlyyubKjnQ1FKH7cIurdV9z6LDFNS5ZZeTO/ZYgbAM?=
 =?iso-8859-1?Q?+PTf8vJfCbH4uqbrXgUOmow03amfvuiehI3Dg14t26YoEPgaD4TGKgZ6TX?=
 =?iso-8859-1?Q?fL5T3DSVgFtIvzC+VG1+5Ic0bDRx1sdbVUpH0WE79zhHG7Zn+UPK2X2E83?=
 =?iso-8859-1?Q?TUh3jVSFTPs84J6kWxzJU+3az6FcGQQ8Epiu3XlAo5m3DyB1k5pIZrEDv0?=
 =?iso-8859-1?Q?6PY9GlC16wqC65gxEIc68egNpIvSmCpwac/yZRMppTE7azsQpwEtsUCvB9?=
 =?iso-8859-1?Q?nvwM4hoxH6PKMHedUcIHImL5cv9MC8q3dqTl98eyeRgIcyLL5aPYCvLxmq?=
 =?iso-8859-1?Q?VNtVUwkEa0urq8v1hyKhUDoUp4oZ1RgIFp68DHuLNdQRmpXM6/cdtnIcKA?=
 =?iso-8859-1?Q?o=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR10MB4625.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(13003099007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?C6Qipg/r3lDB8qYc4oaBfXvIxe/0XcuzMN2NG9ddk1UOUKLyr01wufX+Tg?=
 =?iso-8859-1?Q?DSf/NKJ8iLxwh2iCW7csCtI53gHqW/umNCepjVgY07zIjR+gg0+kf2p10L?=
 =?iso-8859-1?Q?PBF5Yb3E8dLBpdtU9o7Eqk1gPmcHkI7XdMeKSzCLcZIPnbY5q89ZN4OzbS?=
 =?iso-8859-1?Q?ntxf6n/XTv3SR9M7hbFcOkNhDJ/N4pKDJUH2NlDkO7rORTc9Osy8iuvt53?=
 =?iso-8859-1?Q?ml3UB1TBNCpvy7bDtuK481yNyyuPuN9D95PEs3PxpkMS5eIjKH8BpY0w60?=
 =?iso-8859-1?Q?v4qrGzmUKR0CzkF5R8PWpTBO29lpx7RmEZ6ET1tT6zVIkzpBFHR9UGvTsl?=
 =?iso-8859-1?Q?Z3Go+XOBN1MpzBjBgHGaKFoq8sP/B6sduCSNKGV++GLLUKm3Tj2OcKybMx?=
 =?iso-8859-1?Q?lLiuDA0ulWXrMj+sa2+gB7ZMgcm0auYwJDFdXoAt2YWQrNI8r8F39NqUDX?=
 =?iso-8859-1?Q?FWzGhVqOxIwppTh21YFoSvdMwtNeuwdXN3FIk50g4IiA9PyG0lZFyLw654?=
 =?iso-8859-1?Q?0B/KtlX5txebzs53NcESPoH0N3vN4eETggBm1KrKu6gCIzeBJdsLXVy0sE?=
 =?iso-8859-1?Q?J6LbxLm8BRPmkt5RNfdEbd18JdAGi5NRv91q3VdZBhD/5rcT5wvRWfTlz2?=
 =?iso-8859-1?Q?CsJPu+8Qf5p3Z93Cv1QyEV3/y0oi9EtnJOd8xfH7lws0WBFBmCRp6Dzn6m?=
 =?iso-8859-1?Q?0U6rJb/WiZaRoESOa0q275715U7Y1P0JFVjUxUlfRGfMv85B9PINwNEkVB?=
 =?iso-8859-1?Q?+4OcQR/USYt6qYlUUAWykKk9Lg4rp9X9GKgGKaGQcrbkofWsocJb4jwV1g?=
 =?iso-8859-1?Q?2DKMtpCPwaHHqRsy2XqlKGjd0mO4KT8Y01x14KywyHvkrZdrcNlCqFK2G+?=
 =?iso-8859-1?Q?LPxkinm1GBWINSvKUs7EP9EO3ZpH3sZntA3Ut2pA50aYlO9I8icTEEpuou?=
 =?iso-8859-1?Q?kE832M79TjbrGgqdHDHUO7SNpeQNKJjPzJtMy6C99mQRYVJ4/V6nwmM14G?=
 =?iso-8859-1?Q?GhWJgp3wO1ceq3LUI2tFsKEVbxKI60PH+V4A6ToSGpZ+vTdJOabf6Mu2bL?=
 =?iso-8859-1?Q?F3V7hm7xO6iZzrBaeqOjvkOBgSIHXzAbOXkBmmgPS0I0byGDe0BY8PoNSz?=
 =?iso-8859-1?Q?ha35sZk5P2xz2gV5NYW5caUfd+i0LGtSwNuPVlwDxwv1VI2gRlgm/xJ7zX?=
 =?iso-8859-1?Q?CIASnesKNJ7FAxBFC80vw7TFqrdHZsvNGNkRQnKIOat4EXU2imvdMGlfuk?=
 =?iso-8859-1?Q?idZZqrErwfAaoecF1ccAgss5VJze5uSQdqb+3iim4OJW6m0zxYYx0dwl3J?=
 =?iso-8859-1?Q?eNRDBHddp3k6Zv9CpatSUU/tK3N6lUWBoxg4kNsPqI/kHucXBDpo/selRM?=
 =?iso-8859-1?Q?0wHqSl80Dh0A5fRL70sf7jLuwbbMNo316/ZfGJNsQ6tsCFH/ljNv+YicwF?=
 =?iso-8859-1?Q?mlaStSfc5lqvOqoj3aiQrq1n5brxBXZe7cOqfem9UzoDvxhOY6IB+pyt7Z?=
 =?iso-8859-1?Q?XOb+I2xSwwKJ/GPIWD3qqK1jdqYbjb2MdPJQy2Fqw7oqpqLknhdYXBoYyK?=
 =?iso-8859-1?Q?79X7K4OOk+8TbRpLy80oWeBjOzJvon++25nSsWZcPbt3oFmPgL3aF5CX+q?=
 =?iso-8859-1?Q?oVIIr6R5ZAaFQ=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: bosch.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM8PR10MB4625.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4908b6b2-bab2-4720-69a2-08dd7da10efb
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2025 11:14:45.1008
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0ae51e19-07c8-4e4b-bb6d-648ee58410f4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eGfpxKBbvWgsVnJ5TmkCnh0n/mqHnSlMiqTB6m3bZ7w3n8/a/LykLgFSNejiNb6fIeAULOXhCAIAT8oYINGGOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR10MB4081
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Apr 2025 11:14:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65201

Hello,

I would like to pick up this topic. We want to invest more time and effort =
trying to solve the linking compliance withing Yocto which we would also be=
 very happy to contribute. @vinhtruong.huynh@stud.h-da.de  wants to researc=
h and implement a solution as part of his master thesis.

We were wondering if there is some further documentation or helpful materia=
l about the architecture design of bitbake? Is there someone Hunyh could co=
ntact about this topic?

Best regards

Fabian Hanke
Product Area New Business Hub Stuttgart DC/PAN-St

Mobile +49 152 22843520
Fabian.Hanke@de.bosch.com
www.boschrexroth.com

Bosch Rexroth AG
Gr=F6nerstra=DFe 5/1
71636 Ludwigsburg
GERMANY

Registered Office: Stuttgart, Registration Court: Amtsgericht Stuttgart HRB=
 23192
Executive Board: Dr. Steffen Haack (President), Roland Bittenauer, Thomas F=
echner, Dr. Christina Franke, Holger von Hebel
Chairman of the Supervisory Board: Dr. Tanja R=FCckert

> -----Original Message-----
> From: Richard Purdie <richard.purdie@linuxfoundation.org>
> Sent: Friday, May 31, 2024 3:55 PM
> To: yocto@lists.yoctoproject.org; Hanke Fabian (DC/PAN-St)
> <fabian.hanke@bosch.com>; Stefano Babic <sbabic@denx.de>
> Subject: Re: [yocto] GPL License Compliance - Automatically detect linkin=
g
> against GPL libraries
>=20
> On Fri, 2024-05-31 at 06:40 -0700, Hanke Fabian (DC/PAR) via
> lists.yoctoproject.org wrote:
> > Hello,
> >
> > thank you for all the responses so far. I guess we will have a look at
> > fossology and fossas, but we would prefer a solution which does not
> > require an additional thirdparty service. We know that there are
> > different types of GPL licenses which bring different obligations.
> >
> > We are searching for an automatic mechanism to detect linking to a
> > shared library from a GPL package. We thought there might be a way to
> > utilize the build system's shared library resolver which is used for
> > the automatic runtime added runtime dependencies [1].
> >
> > For static libraries we found that they are disabled by default [2].
> >
> > [1]
> >
> https://eur03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fdocs
> > .yoctoproject.org%2Foverview-manual%2Fconcepts.html%23automatically-
> ad
> > ded-runtime-
> dependencies&data=3D05%7C02%7Cfabian.hanke%40bosch.com%7C7b9
> >
> 9b3a05dca4f3fdbff08dc81793e6a%7C0ae51e1907c84e4bbb6d648ee58410
> f4%7C0%7
> >
> C0%7C638527604970412048%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC
> 4wLjAwMDAiLC
> >
> JQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C0%7C%7C%7C&sdata
> =3DSLcY5%
> > 2B0gwkYYDv3HbgttS9B%2FFM1t9MlweJ1h7OLSFbQ%3D&reserved=3D0
> > [2]
> >
> https://eur03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fdocs
> > .yoctoproject.org%2Fdev%2Fdev-manual%2Flicenses.html%23compliance-
> limi
> > tations-with-executables-built-from-static-libraries&data=3D05%7C02%7Cf=
a
> >
> bian.hanke%40bosch.com%7C7b99b3a05dca4f3fdbff08dc81793e6a%7C0ae
> 51e1907
> >
> c84e4bbb6d648ee58410f4%7C0%7C0%7C638527604970422301%7CUnkn
> own%7CTWFpbG
> >
> Zsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6
> Mn0%
> >
> 3D%7C0%7C%7C%7C&sdata=3Dp1Q9TwRCgFDhHWI1yVYjdXbDJM%2BXxn8P5
> zWeqJ3LDas%3D
> > &reserved=3D0
>=20
> It can definitely be done and we have a lot of the information there.
> Our packaging code does already look at linking as you mention. Nobody ha=
s
> proposed a solution that could be merged to OE-Core though. I'd love to s=
ee
> one.
>=20
> Cheers,
>=20
> Richard

