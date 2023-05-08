Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30A31C77B75
	for <webhook@archiver.kernel.org>; Mon,  8 May 2023 13:25:19 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.83])
 by mx.groups.io with SMTP id smtpd.web10.107340.1683552311025169211
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 May 2023 06:25:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=Q0YQ5aIn;
 spf=pass (domain: siemens.com, ip: 40.107.22.83, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j12ajY3IC4E4sR2mgrX9EGrTe4/MpkXag3dD0iXSjJ5eR+0qWL3g21LT6mG/NIhV0ZEsPbr3AzkhEtQAMca4KR7WA1NUQfEJcI3PTKCrZ1EjPBdKPi98cJ4K6L5Cg0IE3CX/E33Ef01UmI2z9VbqxIpWwlj19JOZSR5PHE1J9Ok+vIwJQvrHZU3ektVas18Kb5psO3rNaH61hNKCHwCzu+UwpAEumC0agiOHBgeW7VOu/v4x6/HqR20grz4wSfqn5IbvXUdjodTuQznBw6UdJVgqWU+HtHxM6AXtnDz57LShr/R9oAv77PDz4Z3q9gFdt4ezbJSTYQE2AWKbJwBhnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iGXVRnX/C8CJ5SEGIROKAfkqk3e7+8ef9m0bkVi1JGY=;
 b=iilmjTrlEmHNehvJkZcDVEVdLaqIINMNdTgz0iy8NkKUhznmffrSm1Tub4D69kEZGiW2BPnsSnR1AeA7WpMNeMs1VwdU1yr9foXQnQu81ZE44y5ZA5j4L+qMiazR331KLxWY0/ItYT762ObRMEDlDLxsNxBM5hY++DcqEWKqI3opr2Tu+on5BJ2jxByWIfDPf11d5751I6DSDc5X+zwVe11y4NXnZi8fRAjyaLaOZaTpCNIyGXY6K8ae5wyYkKeo/8AvBnGqoBKjR1cg0H6tHOyKAbpQO7Mngz0wKU8CJRVCp3zG+kXSy0eaUNyoxqnIMMk/V+k1LGeRmK1c9J0iog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iGXVRnX/C8CJ5SEGIROKAfkqk3e7+8ef9m0bkVi1JGY=;
 b=Q0YQ5aInmHsQY57PbNcPa5z7wHRE8tcT2+fWmGr10GhTfhYvDHplNRyQJA5rqjvrlLgE1Gl74MemDQj/4iKw/h15weie3ZgJZqZL+WLQxwFU6g8vqKfuwjrile6P0TbDgzMr+LDcDhVKUlct3tYE1//Y0bXupW9pbzA/HuwoIkda7zCNcjBlX6/bTmApWrQ4p8GWhiAlUtDFu96sh45cIbQbQhqlxF0yV/FQi1c436JO2l0Pjb63Yp9pBCEXV4I7wiRh5ujKzapnzQhfAWxMEih4w1RfogfcS6qYBDDNejeCCPfwkYT/RHNiNfCn+urDEP0NjrpZN2zsPu1SLUUiTw==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by PAWPR10MB8283.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:38c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.31; Mon, 8 May
 2023 13:25:07 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::412e:af24:fb75:da07]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::412e:af24:fb75:da07%4]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 13:25:07 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] [meta-security][PATCH] tpm2-tss: upgrade to 3.2.2 to fix
 CVE-2023-22745
Thread-Topic: [yocto] [meta-security][PATCH] tpm2-tss: upgrade to 3.2.2 to fix
 CVE-2023-22745
Thread-Index: AQHZgbARiOMYOouZSUeAlmDjM7soWq9QXUvQ
Date: Mon, 8 May 2023 13:25:07 +0000
Message-ID: 
 <AS1PR10MB569716AF01F694AA31F33F03FD719@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: <175D2DBA2C700EE8.8669@lists.yoctoproject.org>
In-Reply-To: <175D2DBA2C700EE8.8669@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2023-05-08T13:25:06Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=3df0afce-d318-42bf-8cc8-523a35c58c60;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0
document_confidentiality: Restricted
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|PAWPR10MB8283:EE_
x-ms-office365-filtering-correlation-id: aa3e08ab-6042-4112-da17-08db4fc7a440
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 yQbe3J+y5jVdHZDBNm67oOlGQluB/mIu4rThyo4ZeB+7q7B+XXgiZG14D1CP0IQXdD0FTQ1E3DZrQOFdvXK7twLbxLN5Jmh30HioEaUxvyuoGcLDIqNKxW0zyDmLs0htiGtkrst5cCclX+1Huro1U9Jkho4VfYJTZgkT2V1933qNBIPy3uYPARyiqGSGhinih5micwhGIEfIdxncknF9iryo9hvofI0IjmC70u7A1lZXDYxrLHrOaAofIdibv80fiTT3OJxrw6Ke8OSCelU/RVma8NqkYus3EJNJqL/fgOJGniPjkb3+obRVfZEqwxO5NPEvlWRpF/a7zHj41SVb+jWh6CgFFcN64ohI35N13sekGvXcuE3zuv8grmVbgRVkD5LhZpGW+9RTzqFGXhV8vSmZ/3tNTaNTyerzEmJB9P14bPUdi4wxUKy3BYmHXN9h/LxK9k/ziq07STJpx2Wr+Twd1DvhyYRVPhi+U1eGklNYTSgmhvlVGZatVL60pSJTREs3tgeRLTddXBW11wsq5oXjryrH1HqpaymLIDzK+UQN8cTgr2j/irUI0Dz1QZxOTDbBjpHRuqd8tIfuEZGpQ5PWHy6Suv0qyLPtxwJgMKDQMgumRxFK59VXM/wAPy+E
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(136003)(376002)(396003)(346002)(39860400002)(451199021)(66556008)(66476007)(66446008)(64756008)(6916009)(76116006)(316002)(7696005)(66946007)(86362001)(478600001)(558084003)(33656002)(6506007)(55236004)(9686003)(26005)(71200400001)(2906002)(8676002)(52536014)(41300700001)(5660300002)(8936002)(55016003)(19618925003)(38070700005)(122000001)(4270600006)(38100700002)(82960400001)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?XgkO+Ck4AIzQlEeYpOUyBS0Aha/dLUJr4IpmsKMCqNqfI3Et0IvZfBDC8VzH?=
 =?us-ascii?Q?FClhkuqvVKFMEO322zjd2sfcokFcX4EUkUAg9pBkjXuJ5bkf22F74jiq/Ccv?=
 =?us-ascii?Q?nk+i+6lc4Hi5pqDFJRTOs9V6Ef60jxD2XZEj8Q3ruoJf8+odIsmOxZ+jQJwj?=
 =?us-ascii?Q?FDOqFRiWHKpyBfmI+A3SBIeFGL2XY8a3PEdgXb9oNscH5RTZMbUEH1DbXwjy?=
 =?us-ascii?Q?jQyx82nbUIJC2KGb+bXi7LDrOHoZWy3lHWkJ1Bpv3ASyrzvGQrVeh9o8hQNr?=
 =?us-ascii?Q?Y5LFWDKrBTaG1wd33lbvb4HJ5p9tvFkGNUcZNwUAOqchAEDeVVDlUOwTmZAA?=
 =?us-ascii?Q?Q1QIpy4o3Mz7OnyradF7SZEF0gssk2fxg7HX5oth3FXGHoM7JYSrtRVEKMC8?=
 =?us-ascii?Q?iBxehj/JQ9u51XQxPZPc9qXFH+I4SDGSzQnfb+6C8e6wRhS0mDakirzFvzeR?=
 =?us-ascii?Q?N6z8IeZF2iF7im296TF/8BP8+tz1Ok1Z2O9vfjhs7S0MsMsN2x9dPAOeoofh?=
 =?us-ascii?Q?bl7ttEJUqFueTfFwkCGwZX5ifgAc1WWrcY3AkJ2+vUySkAnI76qJdyir3p5z?=
 =?us-ascii?Q?VhbJ1e6Ig9/VWJ1gVdBNflZxSQq6I/R3tMn0hue5UTJRi5zYrFba4NApcihp?=
 =?us-ascii?Q?jtQkX/ubX0wkCTVN/A1spaHJhTYAsKQPXP09gEzwGxzuVW1iBrLZdEOMB0ii?=
 =?us-ascii?Q?OzCCXnfVT846p2hHqqojbsof9fVhml4zoeiLgpAgga28j9X0LrVid/K2lUB9?=
 =?us-ascii?Q?mJ/fVLg3mzJze/oJUQxvP+Q7mNcBZeObEVH/IhS1MMWhfzImRmjTE5Q6+3z1?=
 =?us-ascii?Q?lY6iaLXyCMfyYkFlCH4bF3dayq+7ow6CJPHuP4vawnKO8s+g5HPMWmo7YoQ0?=
 =?us-ascii?Q?7dw1phjuzSeOrZLLtzkGDG2AnD9Zuc60k2DYa0mNwbrnEHxNzyCJEcrt7sgI?=
 =?us-ascii?Q?2OLoAk8XjB6fx6GFkARppxVzSLhNFA69vmy17n/hngCBkRHmA+wZEDzkhYkU?=
 =?us-ascii?Q?naQ2NMpcye5rOyBDtusyuWq6K+emB7IJNEUKjyL3XwTZgh1gP6TT+RsHO9kx?=
 =?us-ascii?Q?J47M88w08pdnA8aNQjscdw5IhVnGnibscerzpkDCQxbW1PBJn3dmjHMc8biK?=
 =?us-ascii?Q?5U1pZgdPACuP50Z1i971I5d9wHP26uTBqDi4hvFjXdxT9QHgnfztHjQq590i?=
 =?us-ascii?Q?+hGOdH6kGMhsKjSuQXWak9dq/VaQfbPAurQENtZG5H69JhrTom/BWE4gcbYi?=
 =?us-ascii?Q?gguvjYtwzUFy3BhiFLY7Fq9Iygqrccd5REK/IOqpSpRsY3Y3hD4yEMtDA9/k?=
 =?us-ascii?Q?JK0Bc8i4Wh7pyDNZJBU9TM0ULYjDjZdIjGLwsIuhAie4S0sVfyYGkiWvbb7u?=
 =?us-ascii?Q?WeVOsyP5MgFi/HFecvCczROnECaKW7JVmbTRQNF0Bxbc3V1mConPM2IsWn8T?=
 =?us-ascii?Q?9AcQo5lb9j2KY9o7gLoQ8O4kXY236A37nO3wBWH0lv5EV7B12r636URS8yn6?=
 =?us-ascii?Q?rQ6iKm/uC/Q9PNnHmjoOzwd0wZK85SrvetBBz/lij0pOfaAhTctdLUyzbuIe?=
 =?us-ascii?Q?dAPri501K+bTHbkwcrHpXB2xmxEWCdey8O3Kt+bQ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: aa3e08ab-6042-4112-da17-08db4fc7a440
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2023 13:25:07.5534
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z6o9nP7t4e9NKcx3fzuOvlBUAmQNGT3vJVfTLyrcg0v+iqKBe6icLYZoSWfWMsRRBlVtND2QzQ5+NQQuetT3Kw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR10MB8283
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 May 2023 13:25:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59903

Forgot to put kirkstone prefix, so please ignore this one.
Peter

