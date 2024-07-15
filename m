Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00C8C2BD09
	for <webhook@archiver.kernel.org>; Mon, 15 Jul 2024 07:37:24 +0000 (UTC)
Received: from DB3PR0202CU003.outbound.protection.outlook.com (DB3PR0202CU003.outbound.protection.outlook.com [52.101.65.72])
 by mx.groups.io with SMTP id smtpd.web10.32867.1721029034171532755
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jul 2024 00:37:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=XPqX2ChA;
 spf=pass (domain: cherry.de, ip: 52.101.65.72, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i9U2udt2Z1ru7ZLphZK1UDIykNARgyEO6/OKp0dFDU3JeMK2rwldx3uijDtXvmXMPjgfJVRQuXlUDGV/BjvY9id6nZ5gIt7RWSOGg5+wEohlc4ZF82H66c11PJHmjE47M2LXZcxA2rIanh6I83BqS2IPKB2tJ6w9kbwTqmFkmgza6KEa9mb41y58t38VzQBQOVKElCi/txWuduTHHMhX4tdun7cjoLY04l2P0jVK7GYGzCNmwZ0yZEqI6zhOyySeJn0C83CsDv4b7+72b3ZpWmJuEyiRh8b5FJiDS4FY+n8I5r40deuU/sRYnVZ2l63I17reViRs0W1oIGPAp7NMhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2vT82vQEHbBh+TNHdxVaDuDg52bVc/U+8l0IyS7Ueb4=;
 b=nbrMGQ66L2RyMzA2L8VUmIKaFBuewodSn4YgJz8PPCQR58WnLTmZvrEZMJtjgAlbsz9QiaI1V31IgtxwByMH1ceqCk4cXTwUJA6tnjfy8/IUZP5EvFz4QLrMCnwlgx5t+A4FXk4d1VTffaijDQYKxxbklrVsRg0QUkJjE5w83BuNBf51En0g6XlhvjbJcao7rbGhL7+1ZBBgWTA7s2gOKET4S2JO8apKcQ5yj0uA0V+rntNh9J57T38ycw8sT6CTfIrfRpiAWb3iatMBTDDEiFimz5OdarPiCOx2fB7nbDxzap0S9pdINOBvH2I9lBR1N6U3B0UdTURcncIl8Ri+Gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2vT82vQEHbBh+TNHdxVaDuDg52bVc/U+8l0IyS7Ueb4=;
 b=XPqX2ChArHLoQvkM7yHZJxqqzz8EAM5G1BuXmuSR7tbtpmC5rQ4vBD0SPh/rEChkCjLn9+GstSbRi8BvnxX1bQTzc+DanDO1NOHGtG/12CEWvz9bPW28UHkusWryP714HpztfRyUxhRPAATus07pOpQS3Dtmy/VwKuQdfm8J0Cg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PA2PR04MB10309.eurprd04.prod.outlook.com (2603:10a6:102:41f::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Mon, 15 Jul
 2024 07:37:10 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%4]) with mapi id 15.20.7762.020; Mon, 15 Jul 2024
 07:37:10 +0000
Message-ID: <079a7f0b-3bfe-403d-a465-a776e4751334@cherry.de>
Date: Mon, 15 Jul 2024 09:37:08 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Pokysdk-linux libc cannot find a version of GLIBC
To: yocto@lists.yoctoproject.org, diersen-hannes@web.de
References: <fAsZ.1720973163119081849.mXQ4@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <fAsZ.1720973163119081849.mXQ4@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64
X-ClientProxiedBy: WA0P291CA0016.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::28) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PA2PR04MB10309:EE_
X-MS-Office365-Filtering-Correlation-Id: 74e97899-6353-4642-64c7-08dca4a0efa1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Q2JpdytMNDdFeHBacXlSSjI0STFwcjZlVGhoM01wY0Y4akFnbThEdWNYaU9n?=
 =?utf-8?B?bTdlbGMzbkg4ZFE1Vzh6UE5iNys5OFBWMG5KUFdKNDZ6bTdFVG5sNEgrRDhu?=
 =?utf-8?B?b2drM0I4c3FRTUZVQ3VBVmt3Nitkb3V1ZVNPME5wUzVodUNqN1AxMlNaY3Q5?=
 =?utf-8?B?UGRCSXMzTDcxZ2hnTVB4cFZtRGRsM1BXQ1UrVUxCRTAvQk5nNEJkdHNLdDZx?=
 =?utf-8?B?VXZsVU9HSksyKzJVUEVUL2oxNER4L2RJcno3NDB1NHo1bkUzSzA3cWRGZmYw?=
 =?utf-8?B?c0R1UW5mMTFEaUVPK3psRHlLTkRPV2NKQ2Yra0twY0VTSkJkVGhSVCtwSlpD?=
 =?utf-8?B?L0hVMWNQaGkySWc4cWZGWEFSYi9PYXgvWExGZjB2SXFxSW9oQms5MS9IbmMx?=
 =?utf-8?B?cDZYaG5IZ2s4QW5PNEhpOXFnV0RKWE00eXQvamdMQTdxRSt6eGxrRGdKcnU2?=
 =?utf-8?B?Y3FHYURUSTRFekw2aDdHczR6d05Bc1lodzNvb0xyaHEra1p3MnVEQmQ5dHB3?=
 =?utf-8?B?LzEvYkxlcDZnanVoUDNYVW42ZHNLckhLQnQwMGFjSm1hV3dSY3lNdTJQenlM?=
 =?utf-8?B?bWhlN0dGYkJkSVQ1a2N2Z3NEM2hPOFdpZ3FpaW5mK3duai96bnRtcGxVVUFF?=
 =?utf-8?B?ZjQybUxER3ZjUDZlM2tPQXlMcE5WS0M3MG00c01JS2lzaDdqSmdrSjhUaW1K?=
 =?utf-8?B?ZG1ZL0gzY2dEZ2RkMTZoY2MrcW9Bd3Z1MEpZZGtEZllDbHloelhDMkNOZ01Q?=
 =?utf-8?B?YTFndXZrTHFkaWt0Y0ZDMFJucUNsYW1DKzd3ODREUnQvY20wUjIwL3BTM0pG?=
 =?utf-8?B?bWN5Zm1tL2lja3ErQ09WUmphelAzb1NHbVk5S1N0SFpiT1NuOVlTZUxMUHpK?=
 =?utf-8?B?UnQyaDZPNDhmaVpQU21DQVJjcjRucWRLL1NaQVVYZ3c5ZWVBUVJoYnRjbUw3?=
 =?utf-8?B?d1dOcXZKT0l2MXRFMGg2aW9MZS9uV2loVzM5U2tKYUpmUGhVQXpnaXZhQldI?=
 =?utf-8?B?Q2prL2NyTWNMbnYzVmNoNXhna3dSMkcvN0xyM0JrdmtjODlBK3F0N1pQTVBz?=
 =?utf-8?B?YWd5L0grOFVRVVNjRm5yN01lSDVXbm13VjJ6YUJRaUYwcGxFLzRlWkMxbHhl?=
 =?utf-8?B?eVBjN2djT2lvZk1kOCt5V3kzeVR2SEY3Y0YyT2d6bWFCak9RbGNINXBCNGpt?=
 =?utf-8?B?SHo2K0toOU02eEFDY2FjRTYvTUF4a2FGTVZVVHZ2OHBic052OGpYbXBNa2s1?=
 =?utf-8?B?cVlrSW9LZXlUSkoxbTcvajFVdXZ4UXE4b3FZdnBzOGtvc2ExNlE1T1VFSnMw?=
 =?utf-8?B?dG9pTjBwdHVVMWZHcWg2SC8vU3g5NmdicE9DQmc0WDdXVTQ2SGRXK2xMaGVh?=
 =?utf-8?B?ZUVEZFk3enBya2lCSytJSExEOXhsMzJOdXp6WFZGZlgrMGMzVXpFaEZXd3Iy?=
 =?utf-8?B?c0tQanVNOTZHeGRlV3BBYnEybTFBemhveVJydW9JakxsanJtNVBVU1BMeVlv?=
 =?utf-8?B?WWhXVWZybWZ0WTk1eEc1a0h5c1Q3SVI4ekFHR1lEellGSDM5MmhiYncxbTVr?=
 =?utf-8?B?Vnc0SzUyakI5VkVieG82UlN0S3VrdW1QR05ZZnJubEc0RU1vK0lYSHhrOGZM?=
 =?utf-8?B?VTNacmlUejRFenRRODhQdk1OZDYvTHZjeXo2cHRsS2R0Q20yV2dpWEl1VDIz?=
 =?utf-8?B?OUlObUZjOGlBVjcvVUNaeGM1d2JWK1pFQUEwcS8rUi9PQWRSL1pwMmE1cUZa?=
 =?utf-8?Q?S1ZUAFjsFDjoSx1bu0=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UzJGV0VDUklLY1c1VFFRR29rem41dlJOc3VaREY4VTIvVithNjNBZm50c2Ix?=
 =?utf-8?B?M3dMZnVQNm16SW5BZVFDRE1oMnBEMGliOTZURTdrcnZsUWZmNHZwUWM2UjVX?=
 =?utf-8?B?Mm1vNFF6M055ai9UY3UrSjlyY01SSnhWNEJueFZsVjBaRUcyRkg0V0gvWGo1?=
 =?utf-8?B?eExyRUZZWFlUc1BhbUc1TjVGTGgvUDQ2RmFaNS9ROW1TU25wdVFvZzdmMG0y?=
 =?utf-8?B?dW9mOTM5UldHbW5RQ2JuN1BnVndpb2ExdDBCVWRVdFpINEJ5K010SER3LzJB?=
 =?utf-8?B?SVFuS0g0em1Ya0dtTWJ6d0lHbFYvVFJLNmRLMXc3MVNBV0kwNHFBeVBFc2Jn?=
 =?utf-8?B?Y2lkc2tENWJKYVQ5K2p4ZHVUWkIvWDA2UEkyQzZwWWNNbS8yM05RdFZzMVI5?=
 =?utf-8?B?RVFPYUZFQXArWTRUUVg0bktGWXBWaVR2UFpyMzJKQWFydkpoMnFrejI5cWx6?=
 =?utf-8?B?cEN5cEY5T2RFOUlkdzZCNmU3aTBGTWlTK1VqMm94WHJpVWpXcHUrZjVLQlFC?=
 =?utf-8?B?VXlvZTFtSmg1UitPOGwvOEZpS0NqYkJ2bHRvTHBMcjk0QWxyT1Y3UStTMnJx?=
 =?utf-8?B?VGV4Zlk1UTI0Tk1mNGYrU0NEbk1QOVUwU3VLZjY1MlpaV3BIOUFzVC9HMFM2?=
 =?utf-8?B?Q2EwaVVJZG45SkliNWl2Lzk5eFRSNGlLUkV2RVg2WUdqM1JMb2dXK1ZNZ2RF?=
 =?utf-8?B?cU9KUytrK1IrMi9ONElxYXpYTmxTRXBkbEgreU5IV2pNdklmbmJOSnU1Y2VC?=
 =?utf-8?B?ZW9qWEwyczZ2dnpxWm85cXgxUGl6MTNaejJ5aDhQQy8wV0JPUEE0UTFtWTIw?=
 =?utf-8?B?Z1NqTWFFU1F1QlN4N2trMDZMU3lRSzY5TnlGbzQ0eXE2SDU2UEdmM0ZTS0JI?=
 =?utf-8?B?N1ptNTVYeEFjRC9BZ1gvKzlDS3NrOEZiNitQZURLajlmUkNQWGErT1doNUZx?=
 =?utf-8?B?ZkxLQ0lqSjEzdDd1SFZaSGFXQThqc3RzZzh6WU02Mnk1MXV1VGtLdUthblY2?=
 =?utf-8?B?ZDQrb011TzVJYlpyckVvU0liS0RUNFJ5RW5uZ1VzTm9UeWt5R1JIMW9PNmRu?=
 =?utf-8?B?OFF3Rnp0QVg1Uyt6bnNGRk1YaTh3cUlsMStQRk9rUUtGQlV0cHQvd1QrS3Bi?=
 =?utf-8?B?QThNMmdsMWhOS2sweHNpZTQrLytHMytteXI0SWVvdVB1ZWRjL3M5QXo0M3cr?=
 =?utf-8?B?MUthdFNhTXM3ZUhVcXcxR3ZVSWFvVkExU3lxMitVbk5SMjM5U3lLTGEzUm5G?=
 =?utf-8?B?UXlYZjVtOGhXWStxaWloa0VxVEhEclpIdnRSNnVrQWRiSlg1b3crVjNCcVZS?=
 =?utf-8?B?emJtdjl6aXdPYnM1b0RjaFl4RlJ5WHU3OEdnTHpIdXhkUjZrNlhqZ2NFdnll?=
 =?utf-8?B?ZWxOK2x1QUhtZVZEbEprc201TDMzd3BzTmlDazJqZkVlT2x2N21Ja3BMclcy?=
 =?utf-8?B?bWdFNnhZWEw2c0liMjB1Tit4TWNMRjcxYytwMjZzcWdaSnI0amQ3QjNOdlBr?=
 =?utf-8?B?clk3TmdOUitwVmFsL0Zrd3VKblhjRkh2MEpySHY4YndTWWpZMzUvUXNDT1Ju?=
 =?utf-8?B?YTBKMGUyNUl6K0s5Q3cxUjVCM2FtMTIxS2U2alZPMjJhU1BHcFdmMU41d3o4?=
 =?utf-8?B?SXI3NFU3ZmE2R1NDakkyc2trN09oZFRrMzJ6MnhZai8xeU5xL0xpTVhzTzhy?=
 =?utf-8?B?bktEeHZxTjY0UlpNSnY4dHlsc0doMEQxZ2RqcWJRakV1SXZZU2hDL0F5RDdh?=
 =?utf-8?B?OGhDWk9QcENnQjhMM2czak94NU1SZU8veXozTzQzUE15VEd2b0Q5YTFOdWc5?=
 =?utf-8?B?ejc0QVFnb0JTMW5PQkNwYUFPNnQzWTZyWW5LbGhTekxKZ1U0SnJlZmtONEVB?=
 =?utf-8?B?NnpVRklFbVZMeHhwUXZ4VlJEalhWQVNaRkJTazJVZWhGM3QzUUJYZjduOTR4?=
 =?utf-8?B?L3hzdldCYlhGQ29aTk9NMlc4VEZqaWxPSXJTUmZ3UjZGUzBXTDVZWHhjNHpH?=
 =?utf-8?B?bnJzZTlkSXdrckEwckdLeDlIRjBjNHNsZ08wbXdTaDJqYlRXaC8yOUFHVFRR?=
 =?utf-8?B?b0JmamwxQ3I5RDMyUWw1TVV3bm9DVGx1aCtmQjYrMEJ5dG1OOCtXUzI1bUpK?=
 =?utf-8?B?b0lmVVFBbjVOZkJJZm1hcGdBVXhWUnhva3pYd0UrRS9GZDNZc2RXUXoxWWUz?=
 =?utf-8?B?blE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 74e97899-6353-4642-64c7-08dca4a0efa1
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2024 07:37:10.3453
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p3vkm3Qirt8PpDhFoeasOOkePzjsy1HnjaQowiYP4RSxUfj40HjqGj6i/AOfNWtkckIoCwied23gRRaqeZTWDg/+3WQxZyMu1QI4wZ23Iwg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA2PR04MB10309
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jul 2024 07:37:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63492

SGkgSGFubmVzLA0KDQpPbiA3LzE0LzI0IDY6MDYgUE0sIGRpZXJzZW4taGFubmVzIHZpYSBsaXN0
cy55b2N0b3Byb2plY3Qub3JnIHdyb3RlOg0KPiBZb3UgZG9uJ3Qgb2Z0ZW4gZ2V0IGVtYWlsIGZy
b20gZGllcnNlbi1oYW5uZXM9d2ViLmRlQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcuIExlYXJuIHdo
eSB0aGlzIGlzIGltcG9ydGFudDxodHRwczovL2FrYS5tcy9MZWFybkFib3V0U2VuZGVySWRlbnRp
ZmljYXRpb24+DQo+IA0KPiBIZWxsbywNCj4gDQo+IEkgYW0gdXNpbmcgWmVwaHlyU0RLIHRvIGRl
dmVsb3Agc29tZSBlbWJlZGRlZCBzb2Z0d2FyZS4gSSBoYXZlIHRyaWVkIHRvIGluc3RhbGwgaXQg
b24gbXkgIm5ldyIgbGFwdG9wLCB3aGljaCBpcyBub3cgcnVubmluZyBGZWRvcmEgNDAuIEZyb20g
bXkgdW5kZXJzdGFuZGluZywgWmVwaHlyIHVzZXMgUG9reVNESyB0byBjcmVhdGUgdGhlIGJ1aWxk
IGVudmlyb25tZW50IGZvciBjcm9zcy1jb21waWxhdGlvbi4gSG93ZXZlciwgSSBjYW5ub3QgZ2V0
IGl0IHdvcmtpbmcuDQo+IA0KPiBBcyBJIG1lbnRpb25lZCBpbiB0aGlzIGlzc3VlIG9uIHRoZSBa
ZXBoeXIgcHJvamVjdCBwYWdlIChodHRwczovL2dpdGh1Yi5jb20vemVwaHlycHJvamVjdC1ydG9z
L3Nkay1uZy9pc3N1ZXMvNzQxKSwgSSBlbmNvdW50ZXIgYW4gZXJyb3Igd2hlbiB0cnlpbmcgdG8g
YnVpbGQuIFRoZSBlcnJvciBtZXNzYWdlIGlzIGFzIGZvbGxvd3M6DQo+IA0KPiANCj4gL2hvbWUv
aGFubmVzL3plcGh5ci1zZGstMC4xNi44L3N5c3Jvb3RzL3g4Nl82NC1wb2t5c2RrLWxpbnV4L3Vz
ci9iaW4vZHRjOiAvaG9tZS9oYW5uZXMvemVwaHlyLXNkay0wLjE2Ljgvc3lzcm9vdHMveDg2XzY0
LXBva3lzZGstbGludXgvbGliL2xpYmMuc28uNjogdmVyc2lvbiBgR0xJQkNfMi4zOCcgbm90IGZv
dW5kIChyZXF1aXJlZCBieSAvbGliNjQvbGlic3RkYysrLnNvLjYpIC9ob21lL2hhbm5lcy96ZXBo
eXItc2RrLTAuMTYuOC9zeXNyb290cy94ODZfNjQtcG9reXNkay1saW51eC91c3IvYmluL2R0Yzog
L2hvbWUvaGFubmVzL3plcGh5ci1zZGstMC4xNi44L3N5c3Jvb3RzL3g4Nl82NC1wb2t5c2RrLWxp
bnV4L2xpYi9saWJjLnNvLjY6IHZlcnNpb24gYEdMSUJDXzIuMzMnIG5vdCBmb3VuZCAocmVxdWly
ZWQgYnkgL2xpYjY0L2xpYnN0ZGMrKy5zby42KSAvaG9tZS9oYW5uZXMvemVwaHlyLXNkay0wLjE2
Ljgvc3lzcm9vdHMveDg2XzY0LXBva3lzZGstbGludXgvdXNyL2Jpbi9kdGM6IC9ob21lL2hhbm5l
cy96ZXBoeXItc2RrLTAuMTYuOC9zeXNyb290cy94ODZfNjQtcG9reXNkay1saW51eC9saWIvbGli
Yy5zby42OiB2ZXJzaW9uIGBHTElCQ18yLjMyJyBub3QgZm91bmQgKHJlcXVpcmVkIGJ5IC9saWI2
NC9saWJzdGRjKysuc28uNikgL2hvbWUvaGFubmVzL3plcGh5ci1zZGstMC4xNi44L3N5c3Jvb3Rz
L3g4Nl82NC1wb2t5c2RrLWxpbnV4L3Vzci9iaW4vZHRjOiAvaG9tZS9oYW5uZXMvemVwaHlyLXNk
ay0wLjE2Ljgvc3lzcm9vdHMveDg2XzY0LXBva3lzZGstbGludXgvbGliL2xpYmMuc28uNjogdmVy
c2lvbiBgR0xJQkNfMi4zNicgbm90IGZvdW5kIChyZXF1aXJlZCBieSAvbGliNjQvbGlic3RkYysr
LnNvLjYpIC9ob21lL2hhbm5lcy96ZXBoeXItc2RrLTAuMTYuOC9zeXNyb290cy94ODZfNjQtcG9r
eXNkay1saW51eC91c3IvYmluL2R0YzogL2hvbWUvaGFubmVzL3plcGh5ci1zZGstMC4xNi44L3N5
c3Jvb3RzL3g4Nl82NC1wb2t5c2RrLWxpbnV4L2xpYi9saWJjLnNvLjY6IHZlcnNpb24gYEdMSUJD
XzIuMzQnIG5vdCBmb3VuZCAocmVxdWlyZWQgYnkgL2xpYjY0L2xpYnN0ZGMrKy5zby42KQ0KPiAN
Cj4gVW5mb3J0dW5hdGVseSwgbXkgaXNzdWUgaGFzIHJlY2VpdmVkIG9ubHkgYSBzbWFsbCBudW1i
ZXIgb2YgcmVwbGllcy4gUnVubmluZyBsZGQgLS12ZXJzaW9uIHNob3dzIHRoYXQgSSBoYXZlIEdM
SUJDIDIuMzggaW5zdGFsbGVkIG9uIG15IFBDLiBJIHRyaWVkIHRvIGNyZWF0ZSBhIHN5bWxpbmsg
dG8gbXkgbG9jYWwgR0xJQkMgaW5zdGFsbGF0aW9uLCBidXQgaXQgZGlkbuKAmXQgaGVscC4NCj4g
DQo+IEluIGFueSBjYXNlLCB0aGlzIHNob3VsZG7igJl0IGJlIG5lY2Vzc2FyeSBzaW5jZSBQb2t5
U0RLIHNob3VsZCBwcm92aWRlIGFsbCB0aGUgbmVjZXNzYXJ5IGxpYnJhcmllcyBuZWVkZWQgZm9y
IGNyb3NzLWNvbXBpbGluZywgb3IgYW0gSSBtaXN1bmRlcnN0YW5kaW5nIHNvbWV0aGluZz8NCj4g
DQo+IEkgaG9wZSB0aGlzIGlzIHRoZSByaWdodCBwbGFjZSB0byBhc2ssIGFzIEkgYW0gdW5zdXJl
IGhvdyB0byByZXNvbHZlIHRoaXMgaXNzdWUuDQo+IA0KDQpaZXBoeXIgU0RLIHNlZW1zIHRvIGJl
IHVzaW5nIGEgcGF0Y2hlZCBwb2t5IGZyb20gMy4yLjMuDQoNCjEpIEl0IGlzICoqVkVSWSoqIG91
dGRhdGVkIChsaWtlIGhhc24ndCBzZWVuIGFuIHVwZGF0ZSBpbiB0aHJlZSB5ZWFycyksIA0KYy5m
LiBodHRwczovL3dpa2kueW9jdG9wcm9qZWN0Lm9yZy93aWtpL1JlbGVhc2VzDQoyKSBGZWRvcmEg
NDAgaXNuJ3QgYW1vbmcgdGhlIHN1cHBvcnQgZGlzdHJvcywgYy5mLiANCmh0dHBzOi8vZG9jcy55
b2N0b3Byb2plY3Qub3JnLzMuMi4zL3JlZi1tYW51YWwvcmVmLXN5c3RlbS1yZXF1aXJlbWVudHMu
aHRtbCNzdXBwb3J0ZWQtbGludXgtZGlzdHJpYnV0aW9ucw0KDQpUaGVyZWZvcmU6DQozKSBUcnkg
dG8gZmlndXJlIG91dCBpZiB0aGVyZSBpc24ndCBhIG5ld2VyIHZlcnNpb24gb2YgdGhlIFplcGh5
ciBTREsgDQp0aGF0IHVzZXMgc29tZXRoaW5nIG5ld2VyIHRoYW4gdGhpcyBhbmQgaG9wZWZ1bGx5
IHdpdGhvdXQgcGF0Y2hlZCBsYXllcnMsDQo0KSBEbyBub3QgdXNlIEZlZG9yYSA0MCBmb3IgYnVp
bGRpbmcgaXQsIHlvdSBjYW4gdXNlIGNvbnRhaW5lcnMgaW5zdGVhZC4gDQpDUk9QUyBjb21lcyB0
byBtaW5kIHRob3VnaCBJIGhhdmVuJ3QgdXNlZCBpdCBvciBrYXMtY29udGFpbmVyIChubyBjbHVl
IA0KaG93IHRvIHVzZSBpdCBvdXRzaWRlIG9mIGEga2FzIHNldHVwKS4gSSBkb24ndCBldmVuIGtu
b3cgaWYgd2Ugc3VwcG9ydCANCkZlZG9yYSA0MCBvbiB0aGUgbWFzdGVyIGJyYW5jaCB5ZXQgKHRo
ZXJlIHdhcyBzb21lIGlzc3VlcyByZWxhdGVkIHdpdGggDQpHQ0MgYmVpbmcgdG9vIHJlY2VudCBh
bmQgYnJlYWtpbmcgeWV0IHVucGF0Y2hlZCBwYWNrYWdlIHJlY2lwZXMgKHdoaWNoIA0KaXMgY29t
bW9uIGV2ZXJ5IHRpbWUgR0NDIGhhcyBhIG1ham9yIHZlcnNpb24gYnVtcGVkLCBzb21lb25lIGp1
c3QgaGF2ZSANCnRvIGRvIHRoZSB3b3JrIG9mIGZpeGluZyBvciBzaWxlbmNpbmcgd2FybmluZ3Mp
KSkuDQoNCk90aGVyd2lzZSB0aGVyZSBtYXkgYmUgc29tZXRoaW5nIHRvIGRvIHdpdGggZGlzYWJs
aW5nIHVuaW5hdGl2ZSBhbHNvLCANCmJ1dCBJIGFsc28gaGF2ZSBubyBleHBlcmllbmNlIHdpdGgg
aXQuDQoNCkNoZWVycywNClF1ZW50aW4NCg==

