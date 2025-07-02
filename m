Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC6AAC83F04
	for <webhook@archiver.kernel.org>; Wed,  2 Jul 2025 15:06:55 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.81])
 by mx.groups.io with SMTP id smtpd.web11.26244.1751468814733062731
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Jul 2025 08:06:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=VZb+frsT;
 spf=pass (domain: topic.nl, ip: 52.101.70.81, mailfrom: mike.looijmans@topic.nl)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KxnyZDeptGazRXSR94tgBD4rLvNuIu6HECcgJvPVONdCaCY2A9LLs4CehvBpVIppkKvKUYO7PU/92cxdLTrxQp25P8mQlovXW8PQy7CPQ8+LhObXL/X2HKYFPyrQsdiS79FdVKgATZjIjEDZStLBIBweEmL/8/7Z48JgCyKH/rFS9/ni+UzYJwAmrGK7YBH+w1caH+fNC5GzSqBp3RgCiirz60heKQJENaBbi38LxjF+W+o9CpySyArr4gb2zASHjb1U9Sn8bvWkiGCdIcxPRs0UwnyUWChU1hsIGqKM7sEX7hb5Qa54Oicfg5RzPmxM4XMRJSYJJ6uEhSUXMr53Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=64wPpF2oSbHb8ydhxrqPRHFtG8UgTMjYwXEWtUvWxVQ=;
 b=iTVptN4wD5nED+ncdoV0aNDahuiHcs36zQY1dugQ0Vcg1AcS7plly05xHNjn3gbDfULDleCLt6JHlKSE0zmC6fxr2Y8F4+ye4uXsA+zTeAqu3CPZ5KJH0F9zY1kRwD4R6fvDpbW3lbO5bStxQW5HyyT9RKYMbxm81xd9tNQ0n1TwXZQxwKj9GXykQSr34ublxp5bkD3tnEthmNAOfC80Q8L5HX4YDofzQVBpLnpNJxhqmxG77fppZYeut/RfppyiH20Y2WjfGCEgY8NNyl99JbXfD3iHdpcpp3Ip0Q3m+R5SbIlPjOV8eIGRLSJGqvJiC4gb20PvTzaSkZmg5RszSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 13.93.42.39) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=topic.nl;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=topic.nl; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=64wPpF2oSbHb8ydhxrqPRHFtG8UgTMjYwXEWtUvWxVQ=;
 b=VZb+frsTC6ym5/qTIFR09AS2WfFwDlmwwddB/9DpTFtIDJy0hQES2AHT0jMinRTy47rlT9W3IhgYbMr+6USwELz6xidrnX/TYLglz1b58MCc40Eq03bI8yf0vVNbzFMV1T3TOV07RFa2EsnbX/ss/+hDmK6t4tMw2kmidQ99j4XSaEPuBMcC6Xg38i28gHAELqvOzd4WO1Hq1ERjin5OzDhz5yxfQRA7DIO+JNO40e8cAYd/MgJ+KNKyFaKtJjpZQZiso7I7/kzHxs6Vm+TLBRlAFLSKfLZ+i6qr6kYRF2QfQWc1Ces77kzOzl2qALqU6bbaoRwVHJoNtW8+j/KYhQ==
Received: from AS4P251CA0026.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:5d3::15)
 by AM8PR04MB7923.eurprd04.prod.outlook.com (2603:10a6:20b:24b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.20; Wed, 2 Jul
 2025 15:06:50 +0000
Received: from AMS0EPF000001B3.eurprd05.prod.outlook.com
 (2603:10a6:20b:5d3:cafe::e9) by AS4P251CA0026.outlook.office365.com
 (2603:10a6:20b:5d3::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8901.20 via Frontend Transport; Wed,
 2 Jul 2025 15:06:50 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.93.42.39)
 smtp.mailfrom=topic.nl; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topic.nl designates
 13.93.42.39 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.93.42.39; helo=westeu12-emailsignatures-cloud.codetwo.com; pr=C
Received: from westeu12-emailsignatures-cloud.codetwo.com (13.93.42.39) by
 AMS0EPF000001B3.mail.protection.outlook.com (10.167.16.167) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8901.15 via Frontend Transport; Wed, 2 Jul 2025 15:06:50 +0000
Received: from DU2PR03CU002.outbound.protection.outlook.com (40.93.64.26) by westeu12-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Wed, 02 Jul 2025 15:06:49 +0000
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by PAXPR04MB8112.eurprd04.prod.outlook.com (2603:10a6:102:1cd::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.20; Wed, 2 Jul
 2025 15:06:46 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%7]) with mapi id 15.20.8880.030; Wed, 2 Jul 2025
 15:06:46 +0000
Content-Type: multipart/alternative;
	boundary="------------Q4tsce2LIyTMePtHNr91PJK4"
Message-ID: <0e853cc0-f521-4a1f-8421-24bd6093f901@topic.nl>
Date: Wed, 2 Jul 2025 17:06:45 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Controlling host CPU utilization (avoiding building on
 e-cores)
To: yocto@lists.yoctoproject.org, akarnil@witekio.com
References: <HToV.1751453424466673150.avI7@lists.yoctoproject.org>
Content-Language: en-US, nl
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: Topic
In-Reply-To: <HToV.1751453424466673150.avI7@lists.yoctoproject.org>
X-ClientProxiedBy: AM9P250CA0012.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:21c::17) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 
	AM8PR04MB7779:EE_|PAXPR04MB8112:EE_|AMS0EPF000001B3:EE_|AM8PR04MB7923:EE_
X-MS-Office365-Filtering-Correlation-Id: f76ae853-b1e2-4f75-f3a8-08ddb97a1297
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|52116014|4022899009|1800799024|366016|38350700014|8096899003|13003099007;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?3FMYsGeLNROYLqlH6GpdWQynipd/etE+cblz8My4xpGOCAryzXwoFL288oa2?=
 =?us-ascii?Q?C5oBWr0l5OWrJA/dt2kYhdaaCYwhu+j2DIO+4sKbBtE0pxRHBrSTJbhp2v1+?=
 =?us-ascii?Q?KCrdX79JXUTKWWDuc+gbPj5+I2QmVxVki9rvDxnzIrz/z2N/e0b7dEsElFcn?=
 =?us-ascii?Q?b4z7oYbThX4M03AbK6XXzgLQZ7Q4qqHwOb5vk36flS53lS98VvFwezth3ent?=
 =?us-ascii?Q?g9Pcl6md5K4pfu4m9Kv9+g4M3ELzmD9SpOMyOBG/nZIjFiwKLae0JGHe8qi2?=
 =?us-ascii?Q?a1WMNKRay0nEKlQUoH9VQd1tDwrr6pJarvmKUMCU5KezYFD2RJg/pkt293SS?=
 =?us-ascii?Q?ur85kWr9I8Ri6f/DriIoXB/rIZ0dF3L6ZleLHXE//34c8NsW1rSCxWxNn506?=
 =?us-ascii?Q?pkWBlESxy7QiyrSYvd6JY1ZPHNFnYv7nXNG3nNiMo+vww+Tdsasd1BB45NWj?=
 =?us-ascii?Q?b54uOpDmzNuEnZkB5fjK3HKSgGkVJLYyPIV7N9jKX+HFep9aB7hUuNCYfpss?=
 =?us-ascii?Q?HqRXbc8cY+Ltzr7PKbeL0LbnDi6n2PM6c5XMWa4H22Zq/zS/qFgvd+Nwhz9f?=
 =?us-ascii?Q?dDceOJXe+gC1k+zqFjVgiQEcuG0V64+YcneubucAIZgUF2x478O2VFnZc8O7?=
 =?us-ascii?Q?vMlRUk4lPPqyzklsuCQKrALSoufPMkM1B9/qla3/F1so173275Kg9/sX7pfz?=
 =?us-ascii?Q?k6nWfTm/tX+SmqFlWSGFjCdnHoNuKOYkroGcT8jeTdnX2LBToSfIcDphuWna?=
 =?us-ascii?Q?/VEnIGqMWGmwJrD0OzZFbWbP1QXcE8eT9moXVnJ3g0iTxP6Wi5f4iqncfzUM?=
 =?us-ascii?Q?fFlLd6e/Na49QT7K+9+WUIC57tTwF0szb8MOZCl5y7rmWsea21gvCmG3k/rW?=
 =?us-ascii?Q?LWUaa7/ks0fWlnwtR4FtxllHNbesUcAcOpF6usC8Hep1/6kUEk5QZlUS4bdD?=
 =?us-ascii?Q?zFDo71+IA27gBjg8HkNoBib/7/LTAL1YFbcFVQmeJJCDWX3qxgNavGXLs6En?=
 =?us-ascii?Q?5xuMltvMOP1WQMqKSAYqRPKp9yrDR1ajHd3U7aSP/X5nXcq+P10ndoi/mMzy?=
 =?us-ascii?Q?2xqgpW5uwYvKh4REe9QB5YJCJcuMcs7ULZ6J8T7zxBCagPwM/aCG0kjXl7i2?=
 =?us-ascii?Q?n3TTLioXzyNxgO1VCKcDEMm+dpW5vbQUXGO8ckwLwr34BwMUwU6ed5LnJQv0?=
 =?us-ascii?Q?Mh4kwnv1CamppsoXokbDfhz1lIY5FVgHyuBcBzdeNMkoBmpOV6nmztanQ5HO?=
 =?us-ascii?Q?8q8WbCAIZmzbe03XypnjwD4me60xuDK8O/8AkGZCHXoY+Ea/5PYf3wvlFDqP?=
 =?us-ascii?Q?QUhO2SdIeclkMHSemWqQSroDzebY5EvOO5id13l9bB74RhuZtJI/ICgtf0MI?=
 =?us-ascii?Q?dyz4yj96u9oAv1S3IoYpnGaTus4JF2OEbW/1SUnY0500ULYuwGTpoFYN/5ft?=
 =?us-ascii?Q?5yRDWPU6MDU=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(52116014)(4022899009)(1800799024)(366016)(38350700014)(8096899003)(13003099007);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8112
X-CodeTwo-MessageID: 9dba1e5d-e4e6-429c-9917-7240399658ad.20250702150649@westeu12-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001B3.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	ddff9fd9-18af-4ff7-0f46-08ddb97a1014
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700013|14060799003|35042699022|1800799024|82310400026|4022899009|376014|13003099007|8096899003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?M1dCLzZGVDZ1SU9HcVlDUlg2NG5OemIxV3orenR4Yk9NL3RvQzIzNDM2TW54?=
 =?utf-8?B?NGtVVUM4UlZ3b2g3SjI0aXN3UEJMZFFLdTFvakpMUlBQYnVqZWkzVW9pODY5?=
 =?utf-8?B?VUNzK2hSczR6UCt3aUVpQTh4ODQzZGE2NjBxMHMwQnR2OXFmR0FHd21KMnEr?=
 =?utf-8?B?dVV1WUJSY29FMURMQm9tNEdldTdkZkVCK3NMY0NYUlBrQThVVnRZQUI2SXV2?=
 =?utf-8?B?ZjZ2ektLbUk3VXphZ2ZaSUp1RzhEVExvMzBCQ2F1eG9OTWFrbnZRZXlkY0My?=
 =?utf-8?B?U1pYNUk2TVQ4Mzd4VE11aUZFdkk1cHVxL2I3aC9oUUJCUU1tNVhDVmZYZXFV?=
 =?utf-8?B?STJhVFFkZ1VQL2JScUYvQ0pOYWp2L052UjAyOUZxdWMwc3RDWnAzQkNTRGp2?=
 =?utf-8?B?S1ZRaGhkT2Z2cXAxR0MreFQrYSt2TkZodW45WElaQkV6K04ya0poNC9XYWlr?=
 =?utf-8?B?QWVTS25ZdzVPcTk0aGMvYkNSY1VBeHVEUFVvTjUvL2FQMEgvblZuQWw0a09Y?=
 =?utf-8?B?anM3bkJPQzFCUi9lWkZMSFpoQi9hSVNaYkhEaHozVlBmQlE5Smw4Y05CNTR5?=
 =?utf-8?B?NUNUa3VqcStpb293YmI5eTBnUHBlQld1c3h4allsdVlUVGQxUXVUMzRiVDZH?=
 =?utf-8?B?ZVBFQ1J5RlhMYy9ZM2JlT2l6cVBFQ1hCcWxjTUJ1M1k5UnJRQ2phWHExdVVl?=
 =?utf-8?B?c1c0ZXp5Y0pUN2pSM21iVVduTyttaUV2MVdoTDFrYlBmdFNxTFQ5Y2g2S1VI?=
 =?utf-8?B?SmlMTjlQTjl6TDgwN25LSlZscklNZG5KZXpUcm1hYzQrbkV1OVA0WGQwbjYv?=
 =?utf-8?B?Z0JiZXNHQUt2d1NkbXlSZ3NVRDlkZ3h1MXcyQVZ3Vk5nNzBLTHkvYnVMK1Rr?=
 =?utf-8?B?N1RJRGFoZlgxaUpMeXlOUTlrb2hnQ3dib1ArLzQ4bzNraDllVWdRdnlDNkx2?=
 =?utf-8?B?bUpJbU5MUURsN2NXeFo3Tjh5V3RxcE5iTDRSbVBZaTF6ZUc3bWtGYS80U2hZ?=
 =?utf-8?B?ZjF4czhNdTEraktMQ3FsUFJ6emdSak1NcGwrbEM5RHBaMzJjN1hVVWQzUkFF?=
 =?utf-8?B?Z25EZ2pyTXlyWnltdHFOMWhLYzRRNjV2Q0g3T0NPdEsxVnhRZm8yRmJwaTJq?=
 =?utf-8?B?SkZ1b05WL0dqVGFCOEZZTEJIYzhWOXdmdWQzRWpHUTk0WElNWDVVdlorWUgv?=
 =?utf-8?B?ZnAzSHBLUkpEQjlKMGx4OTA3N2pMenVWb2VuYTE3TE1KQ01JNUJTRDUvbjIr?=
 =?utf-8?B?VVdEd1UyWmRybDFaUEQ5dSsrenZTYWUyS3VxdkUyUHNHb0Q1cVFES3owaUNK?=
 =?utf-8?B?c3hwNGFKTDZDRzlBbW80ZGdnRlRlWDU0UmlUQVRCVTg2aDF1NGJJb1NUWkkx?=
 =?utf-8?B?TzViRnl5Sk1hUENUZUxOYmdNV08ySTUwdmVNbU5oM2x2c0pQbCs4eDRMN3ZN?=
 =?utf-8?B?MlE3cW5LOEV5OXJsVE9FdTNlQ0g4cU5xaCtlL3J6YW9IbHQ1UjJ5ZXlBa01r?=
 =?utf-8?B?TmIzSHFlc1dwZE9IdFpMRlBKS0pyZjZGK2FYaDRCeXZzbkV1TjJ2YzROU3I0?=
 =?utf-8?B?VXZ2bDh6VUVRZWhQb0NBTW12VjU5U09UUG5ydU5mZ3lqQVB0bk1vWnE5RWxv?=
 =?utf-8?B?a1Jva3IvT2s5dFIrd0Q2OGR3bkt5WUVsNG9UR2RXRlpIL2kwOHU0bUl1N28v?=
 =?utf-8?B?QUIzWS90KzE2ZmJPZFplalRXYXVheHVkNk0vWUk0L3NLaXVYcGM4Z2tlNGpk?=
 =?utf-8?B?R3RCbzJ5Y0QrNTJSbGpQQlJIcUFsaGM4SVBpRlIwd0pzSmRmUHM1cUZwa3BO?=
 =?utf-8?B?Q1NpK0tLK3ZHUC9oQWRxekpmM0h4ZGM1TE4zTDJrWTdGWnJUSmZycTVkZjRm?=
 =?utf-8?B?WjVFS0ZEY1M2d0JrcW1xODBDdlBNYW94ZEk4S1JReW1rU0pkUHFUS09xUVlQ?=
 =?utf-8?B?U3lsRkFiZVNmYkF4eXJuK2Zsa3NrY3RlVFRTUXZzMjNhc3BPMUt6cDBoUjNB?=
 =?utf-8?B?SEc3WWtRRm53PT0=?=
X-Forefront-Antispam-Report: 
	CIP:13.93.42.39;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu12-emailsignatures-cloud.codetwo.com;PTR:westeu12-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230040)(36860700013)(14060799003)(35042699022)(1800799024)(82310400026)(4022899009)(376014)(13003099007)(8096899003);DIR:OUT;SFP:1102;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2025 15:06:50.4721
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f76ae853-b1e2-4f75-f3a8-08ddb97a1297
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.93.42.39];Helo=[westeu12-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001B3.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7923
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Jul 2025 15:06:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65594

--------------Q4tsce2LIyTMePtHNr91PJK4
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

On 02-07-2025 12:50, akarnil via lists.yoctoproject.org wrote:
Hello everyone,

I got an Intel 13700H with 6 High performance hyper-threaded cores (so 12 t=
hreads) and 8 efficiency atom cores, the 8 efficiency cores are useless but=
 I still want them enabled for background tasks, I am on Kernel 6.8 which s=
upports the scheduler for this processor

My office machine is similar (i7-12700)

But what you should want is the other way around - the hyperthreading is ra=
ther useless for Yocto, it's the "efficiency" cores that you want to run th=
e compiler on.

The high performance cores have fancy instructions for floating-point opera=
tions, encryption, gaming and video decoding stuff. These are utterly usele=
ss for running GCC and similar compilers.

Just let the operating system handle things for you, it's smart enough to k=
now which tasks should go where. CPU's are also easily shared, so even if y=
ou're using all cores, other processes will hardly suffer.

I've limited BB_NUMBER_THREADS to "8" on my machine because of lack of memo=
ry. When compiling C++ code, each compiler instance may take several Gigaby=
tes, causing swapping and usually leading to OOM (even with a ridiculous am=
ount of swap space).

I use my machine for lots of other things while building. All I do is just =
call "nice bitbake" so it basically gets only idle time. I put a CPU meter =
in the taskbar, other than the "100%" there I don't even notice what is hap=
pening as other applications all run without a glitch and get plenty of CPU=
 attention.

The "hyperthreading" doesn't do much, the 6 fake cores only add a few perce=
nt extra performance (gcc tasks in general don't stall much). Linux will pr=
obably assign the big cores first, then the power-efficient cores, and the =
hyperthreading cores last. Chances are that if you run complex applications=
 (like a browser), Linux will tend to move the compilation tasks to the pow=
er-efficient cores and run the complex stuff on the big cores.



I've used
BB_NUMBER_THREADS=3D"12"
BB_NUMBER_PARSE_THREADS=3D"12"
PARALLEL_MAKE=3D"-j 12"
PARALLEL_MAKEINST=3D"-j 12"

in attempt to limit the number of threads available to bitbake in the hopes=
 of the scheduler putting everything on the High performance cores but I st=
ill see my entire machine maxed out even on the 8 e-cores

Is there something I am misunderstanding or is there another way to set the=
 affinity of the bitbake environment to just the first 12 threads.

Google on "cpu affinity" will probably yield some suggestions.

My advice in general is "just don't touch it"...



I am probably overthinking this but it never hurts to ask

You sure are. Let the OS people worry about which taskt should be running w=
here :)



Thanks




-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#65590): https://lists.yoctoproject.org/g/yocto/message/=
65590
Mute This Topic: https://lists.yoctoproject.org/mt/113945507/3618446
Group Owner: yocto+owner@lists.yoctoproject.org<mailto:yocto+owner@lists.yo=
ctoproject.org>
Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mike.looijmans@t=
opic.nl<mailto:mike.looijmans@topic.nl>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-




--
Mike Looijmans
System Expert

TOPIC Embedded Products B.V.
Materiaalweg 4, 5681 RJ Best
The Netherlands

T: +31 (0) 499 33 69 69
E: mike.looijmans@topic.nl<mailto:mike.looijmans@topic.nl>
W: www.topic.nl<http://www.topic.nl>



--------------Q4tsce2LIyTMePtHNr91PJK4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 02-07-2025 12:50, akarnil via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:HToV.1751453424466673150.avI7@lis=
ts.yoctoproject.org">
     =20
      <div>Hello everyone,</div>
      <div>&nbsp;</div>
      <div>I got an Intel 13700H with 6 High performance hyper-threaded
        cores (so 12 threads) and 8 efficiency atom cores, the 8
        efficiency cores are useless but I still want them enabled for
        background tasks, I am on Kernel 6.8 which supports the
        scheduler for this processor</div>
    </blockquote>
    <p>My office machine is similar (i7-12700) <br>
    </p>
    <p>But what you should want is the other way around - the
      hyperthreading is rather useless for Yocto, it's the &quot;efficiency=
&quot;
      cores that you want to run the compiler on.</p>
    <p>The high performance cores have fancy instructions for
      floating-point operations, encryption, gaming and video decoding
      stuff. These are utterly useless for running GCC and similar
      compilers.</p>
    <p>Just let the operating system handle things for you, it's smart
      enough to know which tasks should go where. CPU's are also easily
      shared, so even if you're using all cores, other processes will
      hardly suffer.</p>
    <p>I've limited BB_NUMBER_THREADS to &quot;8&quot; on my machine becaus=
e of
      lack of memory. When compiling C++ code, each compiler instance
      may take several Gigabytes, causing swapping and usually leading
      to OOM (even with a ridiculous amount of swap space).</p>
    <p>I use my machine for lots of other things while building. All I
      do is just call &quot;nice bitbake&quot; so it basically gets only id=
le
      time. I put a CPU meter in the taskbar, other than the &quot;100%&quo=
t;
      there I don't even notice what is happening as other applications
      all run without a glitch and get plenty of CPU attention.<br>
    </p>
    <p>The &quot;hyperthreading&quot; doesn't do much, the 6 fake cores onl=
y add a
      few percent extra performance (gcc tasks in general don't stall
      much). Linux will probably assign the big cores first, then the
      power-efficient cores, and the hyperthreading cores last. Chances
      are that if you run complex applications (like a browser), Linux
      will tend to move the compilation tasks to the power-efficient
      cores and run the complex stuff on the big cores.<br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:HToV.1751453424466673150.avI7@lis=
ts.yoctoproject.org">
      <div>&nbsp;</div>
      <div>I've used <br>
        <span style=3D"font-family: monospace;"><span style=3D"color: #0000=
00; background-color: #ffffff;">BB_NUMBER_THREADS=3D&quot;12&quot;
          </span><br>
          BB_NUMBER_PARSE_THREADS=3D&quot;12&quot; <br>
          PARALLEL_MAKE=3D&quot;-j 12&quot; <br>
          PARALLEL_MAKEINST=3D&quot;-j 12&quot;<br>
          <br>
        </span>in attempt to limit the number of threads available to
        bitbake in the hopes of the scheduler putting everything on the
        High performance cores but I still see my entire machine maxed
        out even on the 8 e-cores</div>
      <div>&nbsp;</div>
      <div>Is there something I am misunderstanding or is there another
        way to set the affinity of the bitbake environment to just the
        first 12 threads.</div>
    </blockquote>
    <p>Google on &quot;cpu affinity&quot; will probably yield some suggesti=
ons.</p>
    <p>My advice in general is &quot;just don't touch it&quot;...<br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:HToV.1751453424466673150.avI7@lis=
ts.yoctoproject.org">
      <div>&nbsp;</div>
      <div>I am probably overthinking this but it never hurts to ask</div>
    </blockquote>
    <p>You sure are. Let the OS people worry about which taskt should be
      running where :)<br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:HToV.1751453424466673150.avI7@lis=
ts.yoctoproject.org">
      <div>&nbsp;</div>
      <div>Thanks</div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre wrap=3D"" class=3D"moz-quote-pre">
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#65590): <a class=3D"moz-txt-link-freetext" href=3D"http=
s://lists.yoctoproject.org/g/yocto/message/65590">https://lists.yoctoprojec=
t.org/g/yocto/message/65590</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.y=
octoproject.org/mt/113945507/3618446">https://lists.yoctoproject.org/mt/113=
945507/3618446</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+own=
er@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yocto=
project.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a>=
 [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:mike.looijmans@topic=
.nl">mike.looijmans@topic.nl</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Mike Looijmans
System Expert

TOPIC Embedded Products B.V.
Materiaalweg 4, 5681 RJ Best
The Netherlands

T: +31 (0) 499 33 69 69
E: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:mike.looijmans@topi=
c.nl">mike.looijmans@topic.nl</a>
W: <a class=3D"moz-txt-link-abbreviated" href=3D"http://www.topic.nl">www.t=
opic.nl</a>

</pre>
  </body>
</html>

--------------Q4tsce2LIyTMePtHNr91PJK4--

