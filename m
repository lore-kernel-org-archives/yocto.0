Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68AF6C3DA4A
	for <webhook@archiver.kernel.org>; Tue, 20 Aug 2024 09:18:00 +0000 (UTC)
Received: from DU2PR03CU002.outbound.protection.outlook.com (DU2PR03CU002.outbound.protection.outlook.com [52.101.66.3])
 by mx.groups.io with SMTP id smtpd.web11.14472.1724145472905458674
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Aug 2024 02:17:53 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@cherry.de header.s=selector1 header.b=nkqW2FwZ;
 spf=pass (domain: cherry.de, ip: 52.101.66.3, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iMUVFv7nj9/rnpk7W67l0KB+UQzEy7roHkkVVU7N+WqMzD5JbUMItdSNhqMY9Dzo69/At7hmsuDOARmXsilRGZlX+4RH8Svogs9ceRG9fGu2LQ4VVYiR3i8bRCqJRnujiPu76zrb4Nl7RbpguTVrA5oFLCRd9hzk6pyIX0HlHlTzSjUrO0vZ4GNd86dePCMuWfTZUr7pOuIw1IzSaoSNkyfeq9kwX2VcllH5kAIcF0eSF4dFFwVOuUC+FtF6h8S2X/7KgzIlE/uQ4r9rXif781gfL3Sw1GmRrDL7yf1E55NulklaMfk6SkNy3ZZwFpnFMhNHamrxpPg7R54iBduTag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cET1HgQtFL8Bsv5aDTxQvLmaCkx/kY/1aBm4j0fSm3I=;
 b=IZ2pGrxhhlD9hQUJ8lHNge/6yFqc92VqyRXuQ/wSpBd6nx5ddEB4B83DtJPgfTND3MjYIDdw15W7V/R9FiB4o6PvUnzkGjurNvD7p1QgiYkF+b1nzfyc7et7zwlB7Kf8ow2A/bOe2kOLo1tJ8lEMHvf8UU1YkTGpGWgGwPLbgTnjIZQl2LmQ1JX/wgSxBCl7T3fXaBtFVCHvJglxDzloJBVZq0EiPXB2aSPZcYRkx9RICEzO8QuoM1Ncz4nUgCNSo5yV2pgq/LtPvETuBTQ8zbpX8M6EtLi2Rahy1QrbnD95h2XjnW+M7V98f2LWnSjBliYoqlx+H/brr5kqxpwMyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cET1HgQtFL8Bsv5aDTxQvLmaCkx/kY/1aBm4j0fSm3I=;
 b=nkqW2FwZxqj9gCvsGpcATgLi4eFcLNVqHPIt5NOegILdw6f/F80yPNgLXrv5RR1L+bgL/qmwl62mVRf0NEs0IbL/IFyDvTczOQBpN19DmpEXut+mORX7WIetriuvPxCgUngMx/8O9WMJ4TvwJvy39FVHR5PT6013U1uBnR1udoc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PA4PR04MB7821.eurprd04.prod.outlook.com (2603:10a6:102:c5::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Tue, 20 Aug
 2024 09:17:49 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%5]) with mapi id 15.20.7875.019; Tue, 20 Aug 2024
 09:17:48 +0000
Message-ID: <b95d72c6-6104-4f71-9aa5-86ce235c8ca7@cherry.de>
Date: Tue, 20 Aug 2024 11:17:46 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Where to send patches for ptest?
To: yocto@lists.yoctoproject.org, quaresma.jose@gmail.com,
 joerg.sommer@navimatix.de
References: <i47theeraamzdqpvz4ks4zequqwvzrghomunhwnmkfymui4y2x@m6fblppgsank>
 <CANPvuRnNWOGhFKvyckz3opw1CyrAze6MM+P4A29GBRDpgeYsDA@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CANPvuRnNWOGhFKvyckz3opw1CyrAze6MM+P4A29GBRDpgeYsDA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: BE1P281CA0304.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:85::11) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PA4PR04MB7821:EE_
X-MS-Office365-Filtering-Correlation-Id: 124b763b-5378-4a5a-16a7-08dcc0f8f54f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?26ytk7OQYzHGnqegRbYZNdJ/PGBYZ5fywf2Id+hD6KFubBg2Y5yLSFfHu0o/?=
 =?us-ascii?Q?qncAItsoyHLkaBjmT3QjSLLlK53Md/Didk46PZr56sAsjkxohKAlfIrmrVqU?=
 =?us-ascii?Q?pZWlLI7bVBDQScVjjDDYe2vkjwUCB2Viqx4PpWcolfCvdlwi0tuX12cyXsM8?=
 =?us-ascii?Q?RMsQMyMcUJWxzEayDYEqI46HJDjIjwKbzW5nUSDyVxhYiqrhFNPXUY6PrCI9?=
 =?us-ascii?Q?hsTsk7cSzY2Nn/fedtd0S83FxbHUIHRyRqRR1DYMMf8TKLEoS/7e2NnLicPV?=
 =?us-ascii?Q?o/Jm6GCLLy1r8oBg/jyOTH3GILHLQjqHShH1mInXAUTmh55g0tmGl4YmiLjE?=
 =?us-ascii?Q?3IpmfXtaiqKAkxVq/IUt5adJFCtESS8E1f3I8slb6ly2MaXw1l5Q543fpbSp?=
 =?us-ascii?Q?XOAzEb7mmQhZ3vjXbyVXm7zQlr6pTWjy8yIleuXFSv7nWFuC9SK9fpk+SXxd?=
 =?us-ascii?Q?8jM47FYRdGxfFOHPYB1GJX9pOzQOgg+KvJzOMAWSkF4174qTeuYoP4J9m7qY?=
 =?us-ascii?Q?bgy2JYLpqfk+LXfMMQv0f7sSlT/8Nsip2Gl5lw8TGWpR/7xzpmg4JUoPaL+n?=
 =?us-ascii?Q?jTu06VGjOS5+O08M7bucA6Rd9g6Gqeu60FuZTjii2LXATPZ7APWogK+VRc5u?=
 =?us-ascii?Q?3Yj3k+agrwDHdB19mJK7CrsmPcPRFibsh5tEWmUQ2vHo/or08M5KX91dcSGs?=
 =?us-ascii?Q?I5VAAsgDU4CXjK4E27YKR85N2ZLOHIsOl8UXD1bQCS4WIZ7UizkAAM7j+c6h?=
 =?us-ascii?Q?LpQipaurdEqvkeK06irv6dPokh1yDVzi7HfnBV3m+xqGXFS4z5JuWGiY+1tD?=
 =?us-ascii?Q?AaSTXimuduR1fhz7F2p4mO4V/uWJ20eJNJ9dAt6awqRhbQTib1chCYDVUNUn?=
 =?us-ascii?Q?ZlxdLtvH7V72S/joZE+1NZm6CjBpgvg5BCcoU1NxlGFnxoIYGDwl7Su5vVj5?=
 =?us-ascii?Q?BOOISLVQ5doJJYPjzbw3/4y9nVfmOHzXbXTHzM1d/X6c349IPfu3hxHdi6az?=
 =?us-ascii?Q?tn6u9Eb3psYnwIFUGW9Twgm6GZU2Dmg7kUERx4AsoDcQOHs9LIfjJ2zg7KVK?=
 =?us-ascii?Q?ca0p3IExEwRzjQyo15R32vU/NhM//SeR7hDvWB1FDKA7xXXeeHTY9sONNCVK?=
 =?us-ascii?Q?AR4BfKeP9nRrO/yq6kE2OAP6ZpfVUgdCeuOMncq8h5a4ZCodkLej5SHMJwyh?=
 =?us-ascii?Q?/btHsVDSr0laGcpJt7VD1q1OvkAxuJC0KrMIsKVp1wzvpCe+KBDAn0J2mZTf?=
 =?us-ascii?Q?ugr5LqsUZ5cGCNojiLhhEsLOkWxGRNr2PvmI+T0QUdK7GFmUznaNmW/vGrbe?=
 =?us-ascii?Q?Piw=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?KGpZYAgnKhMkFFa3BLIoBnaiZiiW55u2ptgMf1ytrsFHtTtUa+4Ahs0TyfyK?=
 =?us-ascii?Q?+33bnxBh9IQreldlpyutrkfi6Gb1tdWhN45vAfRTdzT63oZB0fVwNxHPDzD5?=
 =?us-ascii?Q?ov1bpTX4JRI7VWj/wzHYS0L0D1MjTMj172aWXQTaHyDoYpnhjtydjTF4GtKF?=
 =?us-ascii?Q?k92gR8MhFt/GavbT4/yUFQ7D+fLoWXW7s0LCYQvKzRVt1hce5GsqZTGatM6G?=
 =?us-ascii?Q?4SDqGl4+X83WHpguXMGuIbd9UGBmFSVJGtvb4CORL/PYrIhvhqVvgXUC43/+?=
 =?us-ascii?Q?KVIZHF5ctz3nx/aX2fAV7tVRceyEXENQV/lxhxA9UdwvF9MGnpVFx4ZuUrSX?=
 =?us-ascii?Q?UvPUcNayMNkLspHLhRndZ38XYnu8uO2K+4EEt/fAChtlaMOoiGRvbGADwQtb?=
 =?us-ascii?Q?B4To9mmqtXaR6SgbQyoUZEXY3Ddl/eNa1fPmMOk6sX1doi9aHWYcIRRqdYm+?=
 =?us-ascii?Q?uhrNfGBClWjaL4otRiUkscJ1GidPOKotwqIFs2S3YHbKYsqULusAeTWmbN8h?=
 =?us-ascii?Q?juLIGkBaMnrhhVjLmUvaiG0pxR+DPJpr/Dh5/7fwtyFkvMd5+2khN2W6z/1e?=
 =?us-ascii?Q?LJZ/xMjdSkN+M7jyXcFVoGOm/DPwXNfnV7X6FJgRFrEPuStSjQFqvv78V1O1?=
 =?us-ascii?Q?rA+WaF9DyHdwQiuxOC29P43qRJL3nr8Qvf/lZYuzWYzUbqpf6UKXP0hsS4eP?=
 =?us-ascii?Q?nN4B/7M2kUNNAZ64jvtGusayvwwL0zOZRkamxvs4s8epQM1b30CN37mGPHGG?=
 =?us-ascii?Q?g2x/KP94jhRUcUOd91BHhbO+G9J0Gbz16hxl0EgZsMCnh2pqcwL1zaokyDmJ?=
 =?us-ascii?Q?r262n+9ZqUPhCxE8IIEJ5KUjdGqXEM5cDNY30v9Vq7PRSodfm0lOo0jDUlDx?=
 =?us-ascii?Q?zWN7XmV9IF+vCBTwKjKpFX1cQzuJg9hz8pGp3qLCfre9c9EnokmEDMHTToYW?=
 =?us-ascii?Q?h0BTuZAluwTTCnUOytYTT32iT10E1wAGzee8jF1WzyhABZJz+cZTsiYOtUYa?=
 =?us-ascii?Q?wzGKaoVuy5qj1cCD1sSX2Hp112nIKkvNw3t2nfFFkxgNRvZTijVr2kFALxYJ?=
 =?us-ascii?Q?Ardb+CDKYrD2nXjAvv1oeb6RlUKWkbjpTcrHRr74zrmkInEGczccC1WDok0c?=
 =?us-ascii?Q?3lJn1tD931oRCWN0HdH0VUl3C9NpTGe64Ja13Q594yXuASlZWLZG94AxN0Dj?=
 =?us-ascii?Q?gWWsiT2Hycfps8ZLiEmX/yZ1So8/foMETdtoPIABt/vLGMsPy3QGCPbzW2Te?=
 =?us-ascii?Q?1KVrF6VrAQ/eLxq6y6S8XSlj1dE/Y3BE6CJK+y2SrAaEtAU/4520lvuCGGkr?=
 =?us-ascii?Q?R62RB5HZxfyvPogMsjShbWsdPEVk5sNlD2qR0I0AfMWN1ZZ9WFUMnKQGSFyC?=
 =?us-ascii?Q?wN/lyaAkxyTMvcSzNHliHN0qP3ubtBHzoVm7mnkWnIyXWaRRawa2qGGTBr+C?=
 =?us-ascii?Q?tlRIoLNTIJc+isPbaNhfLjaOGLdjGq+FJsd3GYRs4Zx2qNHPvVqrWtzrGc3Y?=
 =?us-ascii?Q?fv0IQb0m/xTFqtzm3aSVqb2oCJnBSHHy6MbatJ14KHKYrHX0uvqND50UlPeq?=
 =?us-ascii?Q?LDcQr+akqgN1dz/X0pkvLqDEPzdH8abVQqyMeKNb3S8ywtJgsLZNBHFCHrQZ?=
 =?us-ascii?Q?Yw=3D=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 124b763b-5378-4a5a-16a7-08dcc0f8f54f
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2024 09:17:48.1336
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6VV4UC2sWNqlS2zBsUBoG8A5WVKP8Bg7JNDcWwhWmdqrkKhKUZtp7YQljZMbVBQfziMhgbN0OfFIbyZTqDTW6YfhOsLGNjNUCNZYtPLkK9Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7821
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Aug 2024 09:18:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63727

Hi Jose, J=C3=B6rg,

On 8/19/24 6:19 PM, Jose Quaresma via lists.yoctoproject.org wrote:
> Hi J=C3=B6rg,
>=20
> J=C3=B6rg Sommer via lists.yoctoproject.org <joerg.sommer=3D
> navimatix.de@lists.yoctoproject.org> escreveu (segunda, 19/08/2024 =C3=A0=
(s)
> 16:48):
>=20
>> Hi,
>>
>> where does the development of ptest happen? What's the right place to se=
nd
>> patches to?
>>
>=20
> The git repo was available at
> https://git.yoctoproject.org/ptest-runner2/tree/README.md
>  From the README the paches should be sent to the
> yocto@lists.yoctoproject.org.
>=20

Actually, it should probably be yocto-patches@losts.yoctoproject.org now?

c.f. https://lists.yoctoproject.org/g/yocto/message/62856
https://lists.yoctoproject.org/g/yocto/message/62858
https://lists.yoctoproject.org/g/yocto/message/62859

Maybe send a patch to update the README as well?

Thanks!
Quentin

