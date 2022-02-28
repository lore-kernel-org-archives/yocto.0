Return-Path: <kweihmann@outlook.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B7AFC433F5
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 12:58:52 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (EUR01-DB5-obe.outbound.protection.outlook.com [40.92.64.71])
 by mx.groups.io with SMTP id smtpd.web08.19735.1646053131314159896
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 04:58:51 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com
 header.s=selector1 header.b=PCWfagRR;
 spf=pass (domain: outlook.com, ip: 40.92.64.71,
 mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fqh7FKIZeL2JmADW056JEEBhL95h6Zf/xWNfsr0cMwTLV6Wqwo7cqr9SByq6YX1jj+YdNXJ086qMTZRCBCktrwD8wDiNOrr7v6a9zTxNRpDA2+QZQ2FMKZr/HWyEy/ubUms8irOjRvk2DHKiMFbUOM/d+FDVFuV8EfZToDo3ajBMP/aF/JB9I6q5ISxZ2/0HtIHV6UmsBXISldy7TkrvRwEO9ba08wVezkxniVkCgsz1VRT5IKxhAGxI7sGzSmTsJOV3cH3XKmQ6praoZCIswpJ6wQNTtaJzZxDrCBsBIVcFgxnz8v0PRuGWlT0WRP8JmWj/e1RAP5dmQCW55BHdsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lFsYhIU7Vw2Tjv53OdT2tP5FpchhZ5i4j4ZLlcE3iXU=;
 b=UrV4hCAT7GLVrdn55rAVScnSdnmbiiOVwvJUoo+XaTsSG7uO6gJRnqqcfrW2iK6rgvfBOi0bP20wDF/FQ2/ZctnSfHZdWYUBN0Muv1G5q8RTlInmtc8eAbqOWSqLEGz6UYQW/7GRPu9YlrTNTwL2Lld6bjIWqFoVZwy8fscmOeg3MjWbwD/m7IIoASbLp4klUBB2JCP/1DgqsBFytce+XMk0+k25lpSdfeYYrojXmyoICckIRdRA1B70J41Iw6zVQcUfygVzE3o0VSKxi7GxI47J70WppYxIN+JmcMvLQ9/ALthJDq554iwY734YFn+SyCluM1qlHPsSid6sC1XBYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lFsYhIU7Vw2Tjv53OdT2tP5FpchhZ5i4j4ZLlcE3iXU=;
 b=PCWfagRRdogbF0WbpWFzKNUdPMiyOzdg5tAwgPLr/V6CJ4XB4dA3yOD2fjH9SPmaFQKEieCNluPG9VCo0PgezfYMeA8ABEFDnfop6Boto/wKhGYh6skJQKsL9C+3cWUvCrsfYVJ9bJiaqkCftBROcL6uPusAYg1kN96CtUEdanjKZRDklXfADC0NH+mnFGH4kIWMN+719D36Z4PLJOqeH5jQCCMlz9QAwGOp8W1bQQZTQnDCLXFWFfH5c4sUNT2cBobo3DBe6XPEv46Th89JejgQXAMgu6PRon4+ylBMsXFipj9uhZLFlnqnqqIKkYAuJwGyyJOe5hwFPS2/YfVW5g==
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com (2603:10a6:20b:284::24)
 by VI1PR09MB4336.eurprd09.prod.outlook.com (2603:10a6:800:158::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Mon, 28 Feb
 2022 12:58:49 +0000
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::e8ae:b245:b019:195b]) by AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::e8ae:b245:b019:195b%6]) with mapi id 15.20.5017.027; Mon, 28 Feb 2022
 12:58:48 +0000
Message-ID: 
 <AM9PR09MB4642ED6A0F16027A770DD9AFA8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
Date: Mon, 28 Feb 2022 13:58:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: AW: [yocto] python3-smbus no longer builds - Does anyone have an
 idea?
Content-Language: en-US
To: Matthias Klein <matthias.klein@optimeas.de>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: 
 <AM0PR10MB31073672E30DE783EABE13FE99019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <AM9PR09MB464256F2947816A73AA0CC9DA8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
 <AM0PR10MB3107024590B74E59994FCDD399019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: Konrad Weihmann <kweihmann@outlook.com>
In-Reply-To: 
 <AM0PR10MB3107024590B74E59994FCDD399019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-TMN: [UyRl890qy/RSoIlgpK9zytvKhSMIKpWUAChXnS9QFgVjShEM6jG9/vwf1kTLKJHh]
X-ClientProxiedBy: AS9PR06CA0279.eurprd06.prod.outlook.com
 (2603:10a6:20b:45a::11) To AM9PR09MB4642.eurprd09.prod.outlook.com
 (2603:10a6:20b:284::24)
X-Microsoft-Original-Message-ID: 
 <2663b533-2cc8-9f52-4120-ac6fc498acbb@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3e72d456-767a-419b-b9e4-08d9faba0fe7
X-MS-TrafficTypeDiagnostic: VI1PR09MB4336:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	GoQrSUAGTZCxjPj0B/HYLVxgD0KV5jRLwU12GN88oFjMM77U4V7NJ4mZHZMMcu0l0qERUikY1KFt3h3eHY9QuKL4p2Q667sJxniu0y7omOWQeZZDqbUpz+Cgh+uithAFgYp6g9BiHgx6sKICwnv1oCReJy1KsVAwXw71jDiQrcdF0AbMuAU2VH939us9mh34fsZs7ON9F3P48vavk1LLeh7+Fin8PaSDOLg6QotnbkfRwaeRktPa07ocxtl/1hbWz51rGOYvbgckWT2IgklllQWYJ+snrov86csy5TfC+v+CZHGmrFj6eE/o5kOJ70SK50RJ/o6dLaSpHuaRzGFwAiVBLgdoM1++nBehRYKOyALNJzbmI/GAzPzayGWHg9BXj+neYje9RKl51yMqLI65MLSR1eXYnXC3nNtFatPRd73PZs3U3YXK3rcRoElSeXNHTY97D/BRZOZOvhHk/yke/sje/6JhxnNV9m8hqmEgNOO3zcGCZvpXTZ0ZG11L2wqUtZxpe79R2N+F8b5CqnIWwGtP+51bKsAaLR9Q6kthLqiUHjuWRV9YmKCtmi24lYzaYzooyr3ReiHCl7cgRlBXhTSM2r7MVQQoX+TOLxkUw+WIchCIh7MUQFXq9PSku81K
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?4utFmtVhfZSZc2Oquo/NYnymlf+DmD9xFaKxcZCvAolPDPgNhXOKj+LuuCu/?=
 =?us-ascii?Q?cciBpnBJ9iy0cuIqi5cijA9iReiJxmb7vHxNWeiKfQ/xrwR7SKqFR2eTjuY6?=
 =?us-ascii?Q?QtPeaE80ViK/RvhbLYhOz9CmbIfT0Py1MkCBET3UNxIjc9u1fu8ljiT6BDgT?=
 =?us-ascii?Q?sdC5Umtn88PSqT60pelL5AmWMn3GrcTiJgH6bZS3xcNvl9X6q06uMEfVtTIc?=
 =?us-ascii?Q?z1jV+KWGBTwZtIJlrwpRKZo6In1HAbzxPnGOOI6Hb/5VbNZLOwry+7uJJezN?=
 =?us-ascii?Q?stscbxjp4d9X0KNkTTvnJ9ts8faE3uIMC8gUrkjhRNmfU6DDG6yf6g3p5RyM?=
 =?us-ascii?Q?LXHha9+Mdf46ebKKZPPMW5aAnNz+rJtQHHsQaFKt/x4WuU7QL9iBRrxBA/2d?=
 =?us-ascii?Q?yALGwdAkbFvcrJCioSTGYqmrwA1K71J7mTWKDFzC7FPERCVT1iQtOE4SDyy/?=
 =?us-ascii?Q?gigcTNyH6nZ2ZpdT7HLojniwCRrua6sW/Xd5egpftWdtd+CES3eLLTAeN6+L?=
 =?us-ascii?Q?r/08VeoJNAOwV+cUmPvG3jkPKbN4rJydpPud79z0AEEs5rsGYbboNo95RTIn?=
 =?us-ascii?Q?t/wG9Jd75VYdsfyHqGnqx2fkRYk9gNQQKbVWhMs+paYYGmq6rA4uuJ29/w78?=
 =?us-ascii?Q?ROf+N6uFPyiYYPvTZvcsRVca/vLCwAdkM7vaGRnQnctPb0jaBiFr5fVVE77R?=
 =?us-ascii?Q?RmXbcu7f5GrHv5ZhWK3Z/BSdrmpckPbq5eQ6QM6QgO0h1oulmudXX/LByy4W?=
 =?us-ascii?Q?mJyBA0oAw5xYh2xjJlgJleWcTULwmezZrNO9tEofY3VzmNEvD94v+DoqW9DM?=
 =?us-ascii?Q?0M+eeW5vqqxPz8fYlFsORzCjdTWqXZ3LU8BXhMXRv+C8B0b6378RTla5pJDl?=
 =?us-ascii?Q?ge3Rsr7ffDYpI1nOaKPQ4JLlt+7RgW433sgDgKgDuhC8izqa5LIaX1O8XbWY?=
 =?us-ascii?Q?gkeqRMKT9Wm8wnvkIywVaAGCmxwCMIEOIzpcEXgwxw4Tr41sCSE1t78EObwC?=
 =?us-ascii?Q?W31NG1nHmnOCQXh0J7OZRzC61w=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 3e72d456-767a-419b-b9e4-08d9faba0fe7
X-MS-Exchange-CrossTenant-AuthSource: AM9PR09MB4642.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2022 12:58:48.9528
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR09MB4336
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 12:58:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56313

On 28.02.22 13:56, Matthias Klein wrote:
> Hello Konrad,
>=20
> Thanks for the quick feedback.
>=20
> Have you been able to build the package with the change?
> I get a similar error with it:

Dang - that's the second issue being open in this series...

>=20
> ERROR: smbus-4.3-*.whl is not a valid wheel filename.

Try

PYPA_WHEEL =3D "${PIP_INSTALL_DIST_PATH}/smbus-*-*.whl"

instead - and it should really work

>=20
> Best reagrds,
> Matthias
>=20
> -----Urspr=C3=BCngliche Nachricht-----
> Von: Konrad Weihmann <kweihmann@outlook.com>
> Gesendet: Montag, 28. Februar 2022 13:51
> An: Matthias Klein <matthias.klein@optimeas.de>; yocto@lists.yoctoproject=
.org
> Betreff: Re: [yocto] python3-smbus no longer builds - Does anyone have an=
 idea?
>=20
> Hi Matthias,
>=20
> this is cause by merged PEP-517 changes.
> To make it build again just inject
>=20
> PIP_INSTALL_PACKAGE =3D "smbus"
>=20
> into the recipe or a bbappend.
> Mainly the python3-prefix of the recipe, makes the name guessing fail, I =
suspect patches to be incoming soon
>=20
> BR
> Konrad
>=20
> On 28.02.22 13:45, Matthias Klein wrote:
>> Hello,
>>
>> the python3-smbus package no longer builds.
>>
>> The install step ends with the following error message:
>>
>> ERROR: python3_smbus-4.3-*.whl is not a valid wheel filename.
>>
>> Does anyone have an idea what is the cause?
>>
>> Many greetings,
>>
>> Matthias
>>
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#56310):
>> https://lists.yoctoproject.org/g/yocto/message/56310
>> Mute This Topic: https://lists.yoctoproject.org/mt/89449220/3647476
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>> [kweihmann@outlook.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>

