Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC207C41513
	for <webhook@archiver.kernel.org>; Wed,  3 Jul 2024 08:28:24 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.107])
 by mx.groups.io with SMTP id smtpd.web10.45726.1719995288464419522
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jul 2024 01:28:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=wTemqRpN;
 dkim=fail reason="dkim: body hash did not verify" header.i=@topic.nl header.s=selector2 header.b=WeX2eWaA;
 spf=pass (domain: topic.nl, ip: 40.107.20.107, mailfrom: mike.looijmans@topic.nl)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=fail;
 b=AyHqr+at04InbIcfi8ZsKH6NfKNuh9kweA9dBRv51DBABxrlzcMSnO+3pYTppWWaCx/N3YaZbue891183Clzoge/iT+LL13QvXUT2HH0McnpZjlnVpiRsCGC0JAIyq/887OYp+SyJbc8XSAZAcbGlPM6EljaILHgfsdS2SpXtuzdygpkZcTI3qmRy5UmFkAnHVHb6rRH53FaoBbzpb9lpQk8072nW63q2C+CfsuLlWcR2lifof+mHlcVKn0xzOCVvdjSKUZHVCsuFwcDCG0cHu6JT9TCoAAIeV+0pFbBSIkzz5vuT6jZoyYBnu6EZuuCGgqYVVLk5Tz+mi84DzT1BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pTbJeI30IR2ureRxMfBWtvKcmunRfP65gm9SFSUm9cA=;
 b=n/kYcE7UnRF+saq3URqodFxH/9ZolSZanqUZVeMPTKW1yUAMphRonzx/bTnqXdY/9wylnT/yrjQFDp4xLTixwcMv5R+ayG8KK6YXhN+pG3YeLpLYNg3LckhEsp8+HFL98YtrMEYgaEd7jKzbDawf931DOPLnmH09BgbpVnOMdeOPIsymoXlVeDgfULg3eZer28rnJsJd8tJXfbd6zm6EJUt78QICej+4/eIUQOBOUBUe7/bHsCH8S65ncYRG0QLII7NyC71jpqV5Rvjir74OmLjE2PxngZuija97UrJ950LSdPdBsGShGwrjKbd2KuvDcDsEwe51iUGvgXd9D9UvIQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 20.93.157.195) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=topic.nl; dmarc=pass (p=none sp=none pct=100) action=none
 header.from=topic.nl; dkim=fail (signature did not verify) header.d=topic.nl;
 arc=fail (47)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pTbJeI30IR2ureRxMfBWtvKcmunRfP65gm9SFSUm9cA=;
 b=wTemqRpNFM+wPt4FQTeLlhjccnMCoXIAIcQKjQBSJ2yMSuveyxO47kWU8BRQKXtyBgJSZKfBKNehD8v1HQrRZHDlEPshLIyRB46HXXWicdgAV+VWf+ooPwvRkI7/VdGX0HfzBB6iVd2Hku+C71BaU0svQVClopHmFR8BMezRohNuuxdaQ/62wmZJlKYuO5UO4mt0wFx6NCkXey+BkWqCAfmrOBRZgDLdG6orK7ee8syo/RvzXorNIAkCfWDZkonz2Ph0uU5Y6BsRb9k2vEabyc5cZtD70K/oOO6SITavA56DifCgNcdImw/khBtR1zlsD9hjX369OZcrI451CNfhIg==
Received: from DU2PR04CA0283.eurprd04.prod.outlook.com (2603:10a6:10:28c::18)
 by AS1PR04MB9237.eurprd04.prod.outlook.com (2603:10a6:20b:4d1::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.25; Wed, 3 Jul
 2024 08:28:04 +0000
Received: from DB1PEPF000509F5.eurprd02.prod.outlook.com
 (2603:10a6:10:28c:cafe::c4) by DU2PR04CA0283.outlook.office365.com
 (2603:10a6:10:28c::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.25 via Frontend
 Transport; Wed, 3 Jul 2024 08:28:04 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.93.157.195)
 smtp.mailfrom=topic.nl; dkim=fail (signature did not verify)
 header.d=topic.nl;dmarc=pass action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topic.nl designates
 20.93.157.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.93.157.195; helo=westeu11-emailsignatures-cloud.codetwo.com;
 pr=C
Received: from westeu11-emailsignatures-cloud.codetwo.com (20.93.157.195) by
 DB1PEPF000509F5.mail.protection.outlook.com (10.167.242.151) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.18 via Frontend Transport; Wed, 3 Jul 2024 08:28:03 +0000
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (104.47.51.233) by westeu11-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Wed, 03 Jul 2024 08:28:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MSInn13BtYjN6YKsn/hZIzDuoE6zHagJZTC4Aa+Wb9VavXdpibB8X11wC/1LVDV1KVJ1Jdoq3mwZtkc7K00MJHn0OEu1uihNeI8Qu3v0wdLZ/bgESdcS/IsC1+akUW9bntNz/QCRX3+MmX6JvR7AEi+0j0R6C7r4X4RIAi+RZF/EMcEqkIMg+Mj7g1trAfPJ6Qs0n8Hyc/+wXKd5C5pL/cBzDFrCpuH5Qzh7ouCSpzsDxL7fbp64KdgMNUck1dTAx40QAIustkYC+NXkAOq1TiNq2sP/iPhihwbm1QwTAzcsubItWR4v3vgtp7J6zOaZh5u8kUMiIqEvSekT8Cuxtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cE9Qjbl0n6D7/pZ8LaoThcScIFTznfxMMNgHSE59OAM=;
 b=SXzB5QE5aUw8dT59oZa9gwui8aBr5X8q7jOZNFmz2JfGgKREME1A9wb8PyEXWTksaAZ7Fw9jnvVJb3U1WwKIGS8G+DeJ8dpA4A8432woK/k5AXPfpZQAu7qYFz9cpqPgU64PAPaiG81zEtGvWX937zJcxGgDjS0vSWoVpTIuqW3aDmCWRRCqdwJ/i5jpTqKBALEAUpAIkCoVHUrnRLIWqoBLAlSs9FTlkiTuq1JOIoPy+0D7PKsuNdgVcVOG+0azfmdYW/x8jOA5iifUqLdAaL1pIQOJ9TLrpbL798toMjko3Zf7mhktCZz5u6PeMCkAr0ubWd4XE0nUh+LhTyjS9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topic.nl; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cE9Qjbl0n6D7/pZ8LaoThcScIFTznfxMMNgHSE59OAM=;
 b=WeX2eWaAlhRKx+K/BLIeSuXMkv3JZvAn1Sh6vl1abqdulCWTSd6U/OJEMmrn6DPjs3K38vOVagh8ixXJV+ZTWsTpx2/Jf+5IGeknPRNmerN4kG6JiJ0M1G12vRKer59y3VkFhaUh6+enzRFaTVDG4m+3dLKtMwC8uzruoo48uJnPW8iiPmiT2EcVFsvuISDt1ypE6xZBz3/UrDYIgSObJjTNZr0n5yueGJkfvekGRJlybAiIzVtR7+yoNINv6Dy9dMuHOMOcY3CMJsgvKprBMoXqYitxnInf6HEX3M6wR/mwui92Degn5Jzbd8zQ7V5v5dX3pXFiuCSiL5KDED+5qw==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com (2603:10a6:20b:42b::12)
 by PA1PR04MB10700.eurprd04.prod.outlook.com (2603:10a6:102:48e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.25; Wed, 3 Jul
 2024 08:27:59 +0000
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::e86d:f110:534e:480a]) by AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::e86d:f110:534e:480a%7]) with mapi id 15.20.7741.017; Wed, 3 Jul 2024
 08:27:59 +0000
Message-ID: <1fbb3be6-5e50-48a5-bd2b-becf6ddf9e59@topic.nl>
Date: Wed, 3 Jul 2024 10:27:58 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Fw: Inquiry and Proposal: Method to Identify Package
 Containing a Specific Binary
To: yocto@lists.yoctoproject.org, christopher.weronski@protonmail.com
References: <xhZK8E4f1CnnMzyvih8DWjZYUqf7fpE_8KolmZp0UKSabooljodh4TxTDefDuDZ09uBEhbx_4mlIEyr3y_c6zYZqL39W5d9w_vhIb5aGrQs=@protonmail.com>
 <mQZDRmo5uaTC98_QPOomYfc7OvVAENC3YX9gFT4h4LPL3wuQMwrQ6533-hYbjM77iHRuQpZLgbI8w4bNNRu33O7nqlSQ0AnMLEnCjnEnjIs=@protonmail.com>
Content-Language: en-US
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
In-Reply-To: <mQZDRmo5uaTC98_QPOomYfc7OvVAENC3YX9gFT4h4LPL3wuQMwrQ6533-hYbjM77iHRuQpZLgbI8w4bNNRu33O7nqlSQ0AnMLEnCjnEnjIs=@protonmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AS4P190CA0028.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d0::17) To AS8PR04MB8644.eurprd04.prod.outlook.com
 (2603:10a6:20b:42b::12)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 
	AS8PR04MB8644:EE_|PA1PR04MB10700:EE_|DB1PEPF000509F5:EE_|AS1PR04MB9237:EE_
X-MS-Office365-Filtering-Correlation-Id: bafd8dfc-bdd3-4c8e-1480-08dc9b3a0e7a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|366016|1800799024|3613699012;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?Mm5acEFVNUZsT2grZCttZkYzeXF1ZFhGdDZOYmtwSlNtc1BQMHE3L0NPYXJP?=
 =?utf-8?B?dlVqcDAvTXkrd2hUNnRSSXR1aDdTVzlKNkt3V0oyaTBMN2ZHM2hEYi9Jb3dm?=
 =?utf-8?B?NUg0T0JaOGx2OFZrMXIrL3VFUy8vSk9nSWh6NUNyRVZpeGtvVzdrbTJIdUd4?=
 =?utf-8?B?a2ZJcUVqV1ZQb3UrUy9ZYWFEaGx6d1FndXlmTjR6dSs5Q3R0UEthSnFlZ0V4?=
 =?utf-8?B?SFFZanJkK2ZKYVNTeU91UDJjNGFYUHJQS0JnM2tIZE1vd01NRU02MGp6ZUhB?=
 =?utf-8?B?UlhSOTcvVEllV1ViU3ZxRFg4Yyt1elNkVzUvZXZ3S016UEVJOHgvd2lWa0FK?=
 =?utf-8?B?V1VLSDcxWmFZVjN0ejEzVERReXNPTUFyWEdMUGJNN2VVNHB0bENZRHFEeitE?=
 =?utf-8?B?ZEdpd2xSMVE2ODFrT3ljVFhVUmNTbTV4RzNycnlaSjFHZ0pGZHd4bUo4djlX?=
 =?utf-8?B?R3FvOVdIOGRaMmhPYVJYU0RQMjJOWmpVb21XNXEzY0xpWDdVVmVFZjFIVFNn?=
 =?utf-8?B?WkpGS0FxcnNaQWtTSnppclhiOUJMWThEcXd6TzNTNGFzTzVZOHpKaWQ4RDJ4?=
 =?utf-8?B?VFFhd1VDSU8yTk1BNllSMndhMUxxdTd4QWpXMHFZV3MrWHZKWmRCMkpqTnky?=
 =?utf-8?B?bzJTelNYWTdmVmNCUnB1MjBVcHVQcVl4djBkS1dzWkRjRGo3NXlrTlZNL1dD?=
 =?utf-8?B?TXRGaTc5UzRpWVVnTkxCcVpLd0pOZDJaa3NiS0M1T0liWGRieVY0cmJTdGNv?=
 =?utf-8?B?YWIxdGtGYVdJakxaWTgzSWhNa1RPVVZIN3RsbDZLQzQ4b1g4cWpaUUlqWGNs?=
 =?utf-8?B?bzRFZjcydGZZQXBPR3hUUmFaQXkzalhVODJ0YkpZaEg4cGw1b3NIVnc4bDY5?=
 =?utf-8?B?RTBvT1RkT3V4MXIxZmNvTUFKdWVCZG9EYlM5V2VieTVoc3E5aElTNFVNeGxB?=
 =?utf-8?B?QkxSbi81Q3RtcERleHloUVZNcmFiM0M0L2hORFJDdFJwRTRGN3RCaEgwcGVv?=
 =?utf-8?B?c3UybmxualFHdThINmxZOXo4WEpGdy9hU2hYdktJZnFiVEdkM1crRlp3c2tU?=
 =?utf-8?B?a2RoUUFVTXpCRTkvaTZRemFwK3gyazlKZEYzK3gwaVNseVd3djQ0THE2d3J0?=
 =?utf-8?B?SnBuY3hqTWdhTGJvLzgySzE5U2tHWkFHZzFCSEI0R2tQTk9ZaTcweXY4bWxC?=
 =?utf-8?B?c3lpclh5NC80WkJLUExSVlV5RVBSeTN3RmZHc05tQWFYOFJvUW5VMnRyR3dV?=
 =?utf-8?B?UDNRaHBiMk5ZZHE0Uld4YXVscytZcUZybnU3bk9hNno4YVM4K0R4dW5mblI4?=
 =?utf-8?B?SXVPQ3BGZkM5dVFnVkxtZGR3MG5DRkUyaDdWeEwyaVBWZmRzTjc0SE81cWVM?=
 =?utf-8?B?TDNWczdVY1M1UmVLaVRWRkhJU25HVzVTd1o1VllhSUZsYTdETU5scDE0OHNW?=
 =?utf-8?B?amJHcGFiMG40L2NndmsrMkRRVkxMekNLUTJLTVRBL0NSOFFJKzlTWkpDdDlR?=
 =?utf-8?B?K3VKdFNFeDNOMzBnZ0VQeEhPbWMrVVo3NzA5cENDME5uZEJPMWNEQmpxeWJh?=
 =?utf-8?B?RHFuQUNqb2FONVhCbXF5aVVCem1GY2VxU1JRWUlSOUJ2Q3VMY0YxNHBIVWFB?=
 =?utf-8?B?aFRRZTZobW9MQWplRzBpK2dZOFNsRG9VdU1sL2VsckIrTTlKTGRzQjl3UHpC?=
 =?utf-8?B?MG0zMEhRYVFnVDRVcGthR0lleEgvR1ZwaU9uZ1RFWXNhYTlOWnZ1L3lKYVB6?=
 =?utf-8?B?WXdSMUMrNzFIeHRWZ0pzT09OMDFydlVVSDZoYnRVdEpDY2hTeEtZZm9TZFlZ?=
 =?utf-8?Q?Ep2Z5JxD5i+PUe/DGy7T+1uDd4xHaIFtu2lJc=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8644.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(3613699012);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10700
X-CodeTwo-MessageID: f99800c0-fc35-42fb-89fa-36fc0e4f8db0.20240703082801@westeu11-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF000509F5.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	ff25a876-d34e-4171-5236-08dc9b3a0c10
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|35042699022|82310400026|36860700013|1800799024|3613699012;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eCsybUQ0eHlCWHFwWGV3VmtTelZ5aHBkdWt4TXRENityQkpBczZSeGVJV0Vw?=
 =?utf-8?B?SWM1Y0YwRThmUGk5eXZVTWpXR3hpQW9oVVg1UTcxSWwxTzRjVnMvSDhFd1hk?=
 =?utf-8?B?czYvUmdLeUF0UG9aZi9NUUtMTEd0TjA3V2JYNU84VnNBdnFZZFZBeHdFdXpq?=
 =?utf-8?B?Rlh0VGNvU29JWVkrZ21YQUI3QnYrS3djMTNlUm0zRWx1TjhuWjYrWk5TdmRY?=
 =?utf-8?B?Zmx3V3BzeVdZdGNIL1g3NnpBb3Q3Q0RieG91eVpNaUdUb3dndjJ5MnN3S05I?=
 =?utf-8?B?bWV4TklkOTBXNHpOOXk5L2krQmJvVFFzWkVTenB3cmlacEJKQkluVDd2NG1G?=
 =?utf-8?B?dlVud3p0TjRMM2hiOWJBbDduYWlSNUMrT2NVdHdEcDRFRVljcWdiWHVmcEdy?=
 =?utf-8?B?bCszOFkwb1RqRStFMnRoWjJ3VGhjZ0hxVUcwcHRURGs5NzJpUlNPczJHKzB1?=
 =?utf-8?B?akJuWVJOYkVWcUdPT2RLWFBKclRvTVEvZ2JVNUIzd2pPYXdiQTZCUTBjUFQ4?=
 =?utf-8?B?QVI3dE1qQ2dTWVdXdHUwd2JpZmljNTFLR2tHU1djV1NVeTFUQ1F2YkpEaDhK?=
 =?utf-8?B?emQvczMrUUpTNzIyM2M5clU1RkVxUE1ibVlMakloNkdSalJ6bWJ3TkpBaG1Y?=
 =?utf-8?B?K1o2cjNvY3VWUVV3SGpIUXovVEEyUVRjUklHWmlmS3JWYW9RMHMxeWgybENT?=
 =?utf-8?B?TzdVWkMvZ014Zm5aTWxSdm4xTUh3Q2xBSDAwMWZIMThQazVaR215Y3NoVDZO?=
 =?utf-8?B?TWxWQ2QxNlVDYUJBenFKMWE0clFsWlVCTVN3ZndCRzR5cGhGQ1ErSkZhUDhN?=
 =?utf-8?B?Qy96dWFSZGRYSzhmcXpxdjl2Y2FLVWljTDJ2b2loYmZjd1ZKc3gzbW9kVFc1?=
 =?utf-8?B?RXF4bzFXUUoyOTVpNzBtMGJrYkpJSnk1aS8xYVludzgrcVRnS3NOcW1ERWF4?=
 =?utf-8?B?Qm9Ub2JkYTdtcE95K0JrUkVGVDlyc3VjSVZpZ1lYTUcxWS9QS0VhZEhjSEcw?=
 =?utf-8?B?SGFDeVV5cEh5WExQaDUrMkxCb09VbHk0ZVI0ZmJWenNiOWZSd25RV2FHckFt?=
 =?utf-8?B?TjJSV3Rla3o0RkxGQ0FyUjlLcHFHZFNRdXFDVGk2d0l2UTZZYmtrMmIrMHY3?=
 =?utf-8?B?aGFVRXhsTUpQbktuK2hBOU5tYzhaNk5UUlRkbUxSUXFRaWxtV1ZUWm0zclk1?=
 =?utf-8?B?SDNaN2ZhTm9SQXZvcUREUnhYYURnUWNkNk5wM05FSDZjZ1RnZ1NNZEVtN3I1?=
 =?utf-8?B?cTEwSjRnVmJoN05CQTBRWHg3eU5CaUpXd3R6OGdzTlhNeWsvTHFjTDBGc1BG?=
 =?utf-8?B?aDF6NjR1cFR5UkhiNGF0VFNSQThucDV0a3c3WVNrUDBMQ1daRVRaSnRyRlU5?=
 =?utf-8?B?UTdjOXRucUdGMzdpRjdyVGxDZzA1ZjJ4QmtPVEF2c0FYblIvRHAydjk5d0ZE?=
 =?utf-8?B?d1QzeDlWNTgzRjF1cFJZNG1EVm0rV1J6M2h5NEM4b2I5WE45clhmRzdnT0RM?=
 =?utf-8?B?OHpDUGVlZm1yVXRCenJGL3lYZS93Rm5jYTZjZXpHQ3daU1RkNWpRZUtZTEFl?=
 =?utf-8?B?ZXRBQ09HekFPVlhqMmZLOGUyaDE1SDJ0L01MUXhLdldwRFVNemRLRWQrWXNs?=
 =?utf-8?B?T0NhNnM1cHozRkRTQWpNdFBGeFd6K3FmTmo4U1JiQTIvcGtZM3N3TmZqMmRH?=
 =?utf-8?B?YXVRSEVGbUlqOXUzSFFDZEJQVTFZTEVWMGJZTHg0dmE3RWhwMmgvZDVYL0tV?=
 =?utf-8?B?Mm1XODBzSjN5M3JYNGRBV1c0VmxkVDNqTG1WWGIrYTNtbkVGQU80MWYzeTkx?=
 =?utf-8?B?VVZ2OHJ1bG51VlBTOEpQOVVpTjJER2pRL1ZnNTFqdGlNQ2VIVXN2L1BiK1dW?=
 =?utf-8?B?dlcveFJlWlIySkFjbVlzRGJmOUszWEhKWXVlMmhGOVVKcHdCUUdRWXNjM050?=
 =?utf-8?Q?SeNk4U9L3AI=3D?=
X-Forefront-Antispam-Report: 
	CIP:20.93.157.195;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu11-emailsignatures-cloud.codetwo.com;PTR:westeu11-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230040)(376014)(35042699022)(82310400026)(36860700013)(1800799024)(3613699012);DIR:OUT;SFP:1102;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2024 08:28:03.2432
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bafd8dfc-bdd3-4c8e-1480-08dc9b3a0e7a
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[20.93.157.195];Helo=[westeu11-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF000509F5.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9237
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Jul 2024 08:28:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63434

On 03-07-2024 08:02, Chris via lists.yoctoproject.org wrote:
>>   Dear Yocto Community,
>>  =20
>>   I am reaching out to inquire whether there currently exists a method w=
ithin the Yocto Project to identify which package contains a specific binar=
y. Recently, I encountered a situation where I needed the sfdisk utility. I=
nitially, I installed the util-linux package, assuming it included sfdisk. =
However, I later discovered that I needed to install util-linux-sfdisk to o=
btain the utility, after searching the mailing list archives. A similar sit=
uation occurred when searching for the package that contained the mkfs.ext4=
 utility. Eventually I discovered it was the e2fsprogs package, however I f=
eel searching could be improved.
>>  =20

Been there, done that, yeah.


>>   If there is no existing method to easily determine which package provi=
des a specific binary, I would like to propose the development of such a to=
ol. This tool would greatly assist in adding dependencies to recipes, makin=
g the process less cumbersome and reducing the likelihood of similar issues=
.
>>  =20
>>   Additionally, if creating such a tool is not feasible, I suggest addin=
g a "Provides" section to the recipe pages on the OpenEmbedded Layer Index =
(e.g., https://layers.openembedded.org/layerindex/recipe/XYZ). This section=
 would list the binaries that each package installs, helping users quickly =
ascertain whether a given binary is included in a package.
>>  =20

It's not feasible to create such a tool. The list of binaries a package=20
creates often depends on package configuration, machine and distro=20
capabilities and other things.


>>   I believe these enhancements would significantly improve the efficienc=
y of the Yocto Project for all users. I welcome any feedback or discussion =
on this matter and look forward to your thoughts.
>>  =20

My solution is usually to run "apt search" on my desktop PC and use the out=
put=20
as a hint to find the package that provides it. That works for fdisk and mk=
fs=20
and tools like that.

What would be possible is that if someone did build "world", one could publ=
ish=20
the resulting package databases for other people to search. That wouldn't=20
solve everything for everyone, but it would at least help find most of the=
=20
common things.

M.


