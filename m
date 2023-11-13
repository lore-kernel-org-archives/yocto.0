Return-Path: <dave.hitchman@kymati.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A0FDC4332F
	for <webhook@archiver.kernel.org>; Mon, 13 Nov 2023 17:15:39 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.83])
 by mx.groups.io with SMTP id smtpd.web11.984.1699895732279332305
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Nov 2023 09:15:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kymati.onmicrosoft.com header.s=selector2-kymati-onmicrosoft-com header.b=kQ9gHXoo;
 spf=pass (domain: kymati.com, ip: 40.107.21.83, mailfrom: dave.hitchman@kymati.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aJsigfPE+nEmV75uD9Jnmab1T7aa9Bo2ZimpIPvyen4iSfMqMkJbavNTVXGOjnizLQfklwQ6ix+o/41IhBXkwv/ZVmlb02Mr3ibnDp2rzJQ4U9+AW9nBXEtn7STtCzszYLL2O25uRKTmGSokBd++fpVo79R6V6VLBxDYjlhtZdA+ke8Qad3EYpOvRd0gf9tPslHBe302ELAzTv5sF1Kx8etWO9GiuP67Qom/fGKdJIJCDIba5dzy7ZcElsoRZnOJnuJ1gx646zTWh4gYfIAuVGvTa9QkeJ60hGxYGfbKA+rsIXe//pUWXhxhnnhV5w3+nDdVsCrhb7Bas392anD1Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UzKboN+L1V3aWVzizpMapPENVTxSU3kVsoXd5keKEis=;
 b=oB/ViU8kfyGpCDixUBBMFQcMlXQ36pA2ef6Ggx8IySjUTm2Fu2MDsg4Z/3SrVa0RS1Z3A5vbCW1yhhVRUMi7Kdf9fLrGVXGPEyjcN6Wyzvn1neLU1PmAqQsDa//f2g5ou6rkIYgSAC8V1F5EqKlZg0uiKQlTWPwvyV0INibTIzUKWmi4K+80gYDReE5vEIdkdBeKm1HVsDivroXHpM26I9LjlQZcVrEfdxTNL474LjbkdtmLFmVtamDqq6qPxI4fryKwLLWeGVnEZE1zU4ieWmnhl7qgPQLzX7VD39b3K3rRuFrQVNoQ0UpiFCUEa6f7vqhCQJW6liWEawYOX3JdUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kymati.com; dmarc=pass action=none header.from=kymati.com;
 dkim=pass header.d=kymati.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kymati.onmicrosoft.com; s=selector2-kymati-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UzKboN+L1V3aWVzizpMapPENVTxSU3kVsoXd5keKEis=;
 b=kQ9gHXoor1YxEUF4/2IAZDzMSUGVxsB5oo/K6ZqL/jDiX5nh+tz9SOqiSJ2mqFhUKsrS1rxrLFYbDpBEb1YV0a4+9CxcrC8rxyUwB6sFMEy7JNO9AaFHB9razBeKIn8zLC36gNLCPQ1FBDwriJv8Gpb96GRHSGXkrx8+apgkCCU=
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com (2603:10a6:20b:2d4::7)
 by AM9PR03MB7217.eurprd03.prod.outlook.com (2603:10a6:20b:26d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.29; Mon, 13 Nov
 2023 17:15:28 +0000
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::5111:21b7:7721:9dd3]) by AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::5111:21b7:7721:9dd3%6]) with mapi id 15.20.6977.029; Mon, 13 Nov 2023
 17:15:28 +0000
From: Dave Hitchman <dave.hitchman@kymati.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: ublox gps
Thread-Topic: ublox gps
Thread-Index: AQHaFlODbWz0sjR4uEGaaJ7/FANkng==
Date: Mon, 13 Nov 2023 17:15:28 +0000
Message-ID: 
 <AM9PR03MB70129EA70FA7493EF2EB375592B3A@AM9PR03MB7012.eurprd03.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kymati.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR03MB7012:EE_|AM9PR03MB7217:EE_
x-ms-office365-filtering-correlation-id: a2365c27-c394-4d64-8c68-08dbe46c2213
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 jtXErLmIKzCOLhKhz0RxP8xrhg+iXKf028UKrZ7lVcE5dr/Ym8HGGI6RX2hb/FhGeSBzQ7JmxiJCCKl1fdIQHDuJ8Fx0b0/BMFiFzI2N/3phbgBPN4Tm8No8zXs7zSI06aV90noAtg25DsGyMOrV482D8xVrsscCYwXfFoqtSsYwRMuUqhcO4THJzwN8U0dqm10nqDGLFFTnVI0cnCtS2zuXVY4LJxVFEIfX1nCByDwl9v5lkonPsKd2ROeAcBBSxhFJeoyUPLJ7v4uT9hXzI5dK603uSLYStzKX9HiG0Yv48fJf8tgnIy9vwcmQKneX2UUKNYr8ek9jEYsAnOQHfk2hEQkmLdh+s6pr+RYU2c5DxrJVnRXqnVjfok+cfGjqMYeV1MP6ptwLv1voQJL6LSO27jUKu2F4WX5rOBgu41H2MYNfLUYX53tsrbrC05JvB6j4fHWIvFWG6npsA4VWIs6/fi9AT21hmzf3UoXHbqtXKZ3ehGjhPrclTxop4+fPSFxnR7ydTUmVNLPiPmsEGaRUAAkdmxj5jrgKXzi2KuX9TbSUN2C0dnLuC4s8g/rjdQv8NXJ9REwIXp72TAodLBDNHzsjrUj0Uih2X1D0J6KODzkKXv1VCrEsb0FJthnQ
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR03MB7012.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(366004)(396003)(346002)(39830400003)(376002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(91956017)(64756008)(6916009)(76116006)(66946007)(66556008)(66446008)(66476007)(316002)(478600001)(71200400001)(86362001)(5660300002)(41300700001)(33656002)(558084003)(38070700009)(2906002)(52536014)(8676002)(8936002)(7116003)(44832011)(26005)(19627405001)(122000001)(38100700002)(3480700007)(55016003)(9686003)(7696005)(6506007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?8n4csUaiH4SMu7BbW2s7vQf/Qb2n2CR07CFEG/I8bbKQjKgEopZ3bGq90a?=
 =?iso-8859-1?Q?m/ubKpbUcgVShhbjXaBBGgXAmB3THfr81yrs85K2vT4BVS6au3Xlq6x78B?=
 =?iso-8859-1?Q?DSsI0brgL0jlHtulgWV7Pdv8ExUlofDairL1zDw3Eu78JPT/2gdj9ESHCS?=
 =?iso-8859-1?Q?HQSMp/yv2Ij9/CQJCcpON6egQZ1kHG555YnY8/BfMQk4D5ZeDemD33LaUc?=
 =?iso-8859-1?Q?5UbwEBpidULb6c4Zwg9Y0myLwPKntHMVTCdr5WPgfSPZndfxffT3C0z5j2?=
 =?iso-8859-1?Q?DI41554tNzSNvvm5sDj+jv7OuiqxBrQ4AwkHnbLvf52kxCj5DMiKNyGlHT?=
 =?iso-8859-1?Q?RKHxFYDzVdz+H9l1aV1+npNwDTaZVEw4BR6G7E537OLtD6/UPk713Cpf8W?=
 =?iso-8859-1?Q?6BymJNZMdjaV7G2MXaG/uR9DHd0RoK4hvDwro6ahKcag0fS9ZUSFaR1VwW?=
 =?iso-8859-1?Q?dJ5FhpL8GfqoNx0lfFi3CgJydqO/4BFTBuzjJy6vApeYVIrCWj1nrbogBc?=
 =?iso-8859-1?Q?u0l91u14NUpILP4ktHnNMUyp09oCF5DGZbOryzVfThW3r0PpleuSn6szxu?=
 =?iso-8859-1?Q?eq+N/yoUK5yBX4sOnUmalZYqVItT7QDjy6J9vdFCc1c8EEl3wr3PUqCoU9?=
 =?iso-8859-1?Q?EX20QV/+UMPKHpe+yf51uCOA1NKpOeNPATfHf0CGADTlKXdDk2UAn8HR5x?=
 =?iso-8859-1?Q?x+KAWlQAOGAYvPSVgSVNWMH5InXCW74Nmr0O7hdbwZzEcbbhTS+4s37cKC?=
 =?iso-8859-1?Q?DRSVs1/+lbMYIO2lCaxS/fYXab3rxhIlIplZfgQhtkWExbCsKjGDJBlaZc?=
 =?iso-8859-1?Q?dxBPOxJM7+lMV6nDTjK8iulB/2fL2I9SR4yHs0bH8Tm376wbGQ8DHa4jt9?=
 =?iso-8859-1?Q?qrVVFUTzMfaUpZzliP7wQBasWwGaz9uZ70LgI8+4gb6FUIt+BTHLg3DVhc?=
 =?iso-8859-1?Q?yX8eiOvNpIow8hwGzrIr7VpdIyL6cyzxWgUT8Rvu7mVu4Tl2h0o2TTJOHx?=
 =?iso-8859-1?Q?rVJZbcjODM6W9dJwe406GQvVuLs9y5QZ3co7TMTh1tjavXgp5roeEcpgGx?=
 =?iso-8859-1?Q?f/H1STynf4tqroHvwtDam/s7dEsOsoTvgfjsqrVto571Q7Uk05vtuykF5X?=
 =?iso-8859-1?Q?OJ77ykkGKXcA+85bb54L39a2ePYpZCz9ba7uNeS5dTr+xi3f58/t6vkpS6?=
 =?iso-8859-1?Q?os6fWqoBdJn0mHJFaMfndrfxsnWkXHwHT7GjEDcTsGqJ76RX3vk992r5Y8?=
 =?iso-8859-1?Q?T8mvGIscF7131vx6yGps676MrG4C3s0Kcli5mDNCbltrmDLfRPodOTJhfI?=
 =?iso-8859-1?Q?U+z7xbeZ5Rz/cMt/U45ExcYp+YKmonpRkY/FdUdcy02L4OKQLpuvZ5t00V?=
 =?iso-8859-1?Q?IvXMEyVzllySojIcizHsQ5VF4TJWxqj8qZeO7cQoruuUsxm11raVSf1HmO?=
 =?iso-8859-1?Q?7xUtbyJ1rc/X1rsC9l+p+2yvbe0B6uCVO9uethZRxy+yIcFyC4Fpj7PSw7?=
 =?iso-8859-1?Q?fp7xyPiXXk5kVIeb6mMAmG2Ka82cteAZGsAO9Bou/XgpJr68SszUW9Trsp?=
 =?iso-8859-1?Q?4pUWGi+hwCwE4v9lMv6FQsWa5J6bcmGwQbDpLSLPjHvt5G6lhPig6LViFH?=
 =?iso-8859-1?Q?+X+CIke5ax6vgOPGxFDphJHenfDot4XJu9?=
Content-Type: multipart/alternative;
	boundary="_000_AM9PR03MB70129EA70FA7493EF2EB375592B3AAM9PR03MB7012eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kymati.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR03MB7012.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2365c27-c394-4d64-8c68-08dbe46c2213
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2023 17:15:28.2070
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f445f429-656f-441c-a343-dbb97855be01
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y+UuJ8BY85mB7ACcYZxoZ/kguXb1kEM5keyUZEurj6IGogMEyIMIcqEpLG/BXZMlsQqpQUMH3fjzl0Pveq0PRazW4fDp4g3/btTJWq/M4ak=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR03MB7217
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Nov 2023 17:15:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61668

--_000_AM9PR03MB70129EA70FA7493EF2EB375592B3AAM9PR03MB7012eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi there
I am trying to connect a ublox zed-f9p gps to a yocto i2c, I am bashing my =
head on this wall. Does anyone know of any starting point recipes that I co=
uld grab to look at and modify?

--_000_AM9PR03MB70129EA70FA7493EF2EB375592B3AAM9PR03MB7012eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hi there</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I am trying to connect a ublox zed-f9p gps to a yocto i2c, I am bashing my =
head on this wall. Does anyone know of any starting point recipes that I co=
uld grab to look at and modify?&nbsp;</div>
</body>
</html>

--_000_AM9PR03MB70129EA70FA7493EF2EB375592B3AAM9PR03MB7012eurp_--

