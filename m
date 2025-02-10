Return-Path: <cmoore@hanoverdisplays.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBDFC02198
	for <webhook@archiver.kernel.org>; Mon, 10 Feb 2025 08:54:06 +0000 (UTC)
Received: from LO3P265CU004.outbound.protection.outlook.com (LO3P265CU004.outbound.protection.outlook.com [52.101.196.100])
 by mx.groups.io with SMTP id smtpd.web11.46385.1739177639088247286
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Feb 2025 00:53:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hanoverdisplays.com header.s=selector2 header.b=SzHAvuIL;
 spf=pass (domain: hanoverdisplays.com, ip: 52.101.196.100, mailfrom: cmoore@hanoverdisplays.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RMmwviKYZi/38mmpj81GKAlA83EBcZKaW6tGqPhQKGhMYWRaOyioRCkr/G7SHaHNoEWnfMnAy8hxUmDaxgh8W9V9I0a/yskXyau2HUSYO7Ym5BOEf92UmHAwjk6k1FMuKkxdCpi0l5kBVlYEIopCSaZOpgklToj4RENCUNGzgEdbNg/oQajP1BJ/tMfeQDSN4iP98xagcKytic5kf1t7rUDMPYG7/kMb6sAYS43eEvm8hm/Lqpph3R2ozmgf48xSRDlSj3DqrqSVS2hq7Wsjxg5e7+z0eeW7+9EjU6XvU20vM0IvuxZW8WIkoRzAdcsuQUZo1sDRLi4lOU9DCfZCwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dPGfPpu5Dxqhbru4gmbECcX6jRak9ZKCtQEs9kERomM=;
 b=zPt6Eh8I8hxqjTklAPSva3MhMmgK0VkeRCPPsDH9AbE5Fs7oN4zUTfdE/bs+Y838xAb2owL9xHdBL0N6N37g/VsVWEHJW7gsUB4eMikPmr4CTOSv0qHz413nIUqrYEbQm9DRmN5Rbynf7kIrPk5KzrRFy8/Atq0/k/1/JUTii1cbJ39xerIqpzYd6pJw2aYhJX024mfxXYRcU6WS9QGC9Nc5RX4hArkP+P7Ai6N0L1W9bdZou+HkDpwX1oEMihrXMyNsx6PVSy/LHxxGlDUZQuhif5wdgMpy3auZIMb2GlYB7tZsSLSy7+qQdivWusACequZchZGptl0LsjnChNkAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 51.104.147.18) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=hanoverdisplays.com; dmarc=pass (p=reject sp=none pct=100)
 action=none header.from=hanoverdisplays.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hanoverdisplays.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dPGfPpu5Dxqhbru4gmbECcX6jRak9ZKCtQEs9kERomM=;
 b=SzHAvuILCvcol7nsUz2dWKLkhKaK3RdElKwPFA9WnPU6OfE6b4YaT+LMba5qQf/JS2pU6St5npUD1Ds7qZx+BNaBltBBC948JLxJQAPqX9eKn4V0baKkCidtBToAeozV4o6U1SMCUoLe07noU1j4DBsoWNRk2U0g7yAU6XfSI1eZJbqOfKL0WyJY/kQHq3JH32EJVG4UvMQMfFW5uBWsOO07iCgX/XBJg9D+1mhZR38FBVj4kWx6aXUjFsBErI+4hL+A16fDjvPFAXYhh/88lV521mYsH6dsQJvgZDeknkdCbEl9EsRT3tFOLYTJfEn48Uz2kaXCGF6Fq6r2B4JD1Q==
Received: from DU7P195CA0016.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:54d::23)
 by LO9P265MB7790.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:3b9::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Mon, 10 Feb
 2025 08:53:54 +0000
Received: from DU2PEPF00028CFF.eurprd03.prod.outlook.com
 (2603:10a6:10:54d:cafe::66) by DU7P195CA0016.outlook.office365.com
 (2603:10a6:10:54d::23) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8398.31 via Frontend Transport; Mon,
 10 Feb 2025 08:53:54 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 51.104.147.18)
 smtp.mailfrom=hanoverdisplays.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=hanoverdisplays.com;
Received-SPF: Pass (protection.outlook.com: domain of hanoverdisplays.com
 designates 51.104.147.18 as permitted sender)
 receiver=protection.outlook.com; client-ip=51.104.147.18;
 helo=xwaresmtpservice-d98dcc5ff-hxwv9.xware-eu-north-k1.o365.crossware.co.nz;
 pr=C
Received: from
 xwaresmtpservice-d98dcc5ff-hxwv9.xware-eu-north-k1.o365.crossware.co.nz
 (51.104.147.18) by DU2PEPF00028CFF.mail.protection.outlook.com
 (10.167.242.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.10 via Frontend
 Transport; Mon, 10 Feb 2025 08:53:54 +0000
Received: from LO2P265CU024.outbound.protection.outlook.com (40.93.67.29)
 by xwaresmtpservice-d98dcc5ff-hxwv9.xware-eu-north-k1.o365.crossware.co.nz
  with Crossware for Office365 id a65dc135-905b-44e9-af20-d24f07fbd803;
 Mon, 10 Feb 2025 08:53:54 +0000
Received: from LO0P265MB6550.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:2d1::10)
 by LO6P265MB5935.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:2a0::12)
 with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.8422.19; Mon, 10 Feb 2025 08:53:51 +0000
Received: from LO0P265MB6550.GBRP265.PROD.OUTLOOK.COM ([fe80::ec79:86af:7924:68d3])
 by LO0P265MB6550.GBRP265.PROD.OUTLOOK.COM ([fe80::ec79:86af:7924:68d3%5])
 with mapi id 15.20.8422.015; Mon, 10 Feb 2025 08:53:51 +0000
X-MAIL_SIG_CONFIGNAME: Hanover Ext (All)
X-MAIL_SIG_CONFIGNAMEPLIED: Hanover Ext (All)
From: Chris Moore <cmoore@hanoverdisplays.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [psplash][PATCH] psplash.c: fix crash from length becoming
 negative
Thread-Topic: [psplash][PATCH] psplash.c: fix crash from length
 becoming negative
Thread-Index: AQHbe5lOwKT3xjOyckCzMsAokKcyUQ==
Date: Mon, 10 Feb 2025 08:53:51 +0000
Message-ID: <425c68c49ab93d982c494417ce6573f7dd330c36.camel@hanoverdisplays.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-MAIL_SIG_CACHEID: 9838
x-ms-traffictypediagnostic: 
	LO0P265MB6550:EE_|LO6P265MB5935:EE_|DU2PEPF00028CFF:EE_|LO9P265MB7790:EE_
X-MS-Office365-Filtering-Correlation-Id: c6381912-620a-4a40-fdde-08dd49b07287
X-MAIL_SIG_ADMINUNIT: none
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?WDUxSDJJT096bjFxcHh6SzZUK1Y0Rk9SMXpDNHlZZjZhNk41M2tRZ1lsdlp3?=
 =?utf-8?B?SzFiYW15VXJ6SUZiR2pqTFBkSS91anpZY0cyQjBvNGw2Rzgzb2JFazlWSHJa?=
 =?utf-8?B?ZGZRcCszeXBWWVNpVEczOW1FY3BweWxuSDFFYUt6UXBBdmwrMHRoZHU5cEwr?=
 =?utf-8?B?UjFvckswZUIvQzZZNjlnTzI4M2I0UU82MmtDRWVlRnFnZS9SVkc5SEFRNW1m?=
 =?utf-8?B?a3dUOXhRNCt0ckxCV2pDd2xwcWV3aVJ2NlZDT2FOUVorb1BZdGFPVnBZVTYw?=
 =?utf-8?B?TU5rM2VwSElZZnYwNEJ2cnJyMEowNGQ2VzJLRGppWkZHVGVCYXB1MlQvcy85?=
 =?utf-8?B?cVRTNUMrNkRKaHFlb3hzUHpkL0RNMzJtRHRDYU0zbGxKdFhsbFFIMGJ3bndB?=
 =?utf-8?B?OUpaVkVaN2JjY0tCUWh4RG1DbW5hMUdKdEg4SmhhcHhRMjNSK0hPcXJiOVdO?=
 =?utf-8?B?ZEsrRmQ2THhSb28vZnZ6RVVlWjBsUTFZL1R4b3VVVFdseit3WExmcUs3SmN3?=
 =?utf-8?B?L3hmMk9HYVF3QTIxa1puWHdyMXoyQ2w3VjJMZW15dTYzSW82aW9Eb2ZqaDdu?=
 =?utf-8?B?NDJMc2VvVGpSZ1BFYWNNQVJMb2xuWUlYc2JmdTNITXZTS1JoWk1hWkU2TlZ2?=
 =?utf-8?B?UThDdkhPZEZQbWo2eURuYnExMXJjYUxGeE5GVkxmTmM0WEhmL2cvTnI2Mmlw?=
 =?utf-8?B?NW1kWHdkdGlVVnBzTWFFNkZSd3pWT2toNTdXTGRQMEMzOUd6VXJRUnZuMjEx?=
 =?utf-8?B?cTBOWHhSd1dKTkRaMHVoazA5K2xKVFJ0TFgxMERFSDFVS3c3Smd3RUgxOGlR?=
 =?utf-8?B?WnlieW9BSnMwQk80eXpYdVhOMkJaR1R2WmQvTmdweWQwcWE0dy9renl1ek13?=
 =?utf-8?B?VmRJSUhUSXpQVFdmVVY0VTZyWDVXSUdmd2pzVXNlM3ZiRGFBZkJ1ZjE1QnhM?=
 =?utf-8?B?dGFZbnk1bHdtY2Rta3p6NHRvejhLS2NyaFBkNThLZjg1R2FjNFVYaE50RlNy?=
 =?utf-8?B?emFEbUQ1bXRJYXhSZG5ndjExZi9vbnYzMGFlVGc4RU5RNVpEelVCZ0xucU5Z?=
 =?utf-8?B?WVRsNUVkRCtHWWtoSW1CT2NxYlJ3MSsrck9paGZJMHVBTEczZXZxWEE0R3J3?=
 =?utf-8?B?NUgwRyttNWxEYUd5OTQwb2diaXN5WmkrcGdHS3ZoMTZCaVJpZENZWGxoZEZ0?=
 =?utf-8?B?ZkZVSjJOR0VXZDl5M1pZS0lCNk5YczRxVk9IZjNua3BCRjM4cTdraUJOU3FC?=
 =?utf-8?B?U0lwZStlR1l6TDJoMmxZME5vdmtndXJFUmpYRTBwL2Y0WlFUZ2U3d3hRMHc4?=
 =?utf-8?B?ZU5xZlhVNUFUU21mWElZYnBXMnlNLy9ERER6aEg4Sk0xVnNSS2Z2a3F5NDhF?=
 =?utf-8?B?V3Z5Q3hjYytUOTRtZGt1SE5xclc4R1NRakkzbVovc1c3NGhoMzRpRzBVMEMx?=
 =?utf-8?B?ZnZ1TmVkeldMZEcyMG9GNUZ3U0JGVUZ2WGx6UmlzN0R0UlVmTnRVdDRZWnBM?=
 =?utf-8?B?L3V1WlV1eElGcEZDbkN2Sy9XNXM2WHRGSXdPS2NWTGpwZ2NxekU3QXl1T1o2?=
 =?utf-8?B?MnZvU2xFZUVQeVc4dDFBNmNlMzBiMks0elVuNTZHVmcxT24wcWo3d2l2VlBx?=
 =?utf-8?B?SWkzL0h1eU5MY2FMUC85NENCaGFhb2FvUTJYUi9VT21MTG9YRVUvTFQ3U3o3?=
 =?utf-8?B?aVV1eVJvWUxyYmhvVjZka2NyYlZqdFFNZkIvZ1d1UHI1Q0dybC9PbXI4T0Q1?=
 =?utf-8?B?UE9TQU9YcGVIUStQSFBJS0dnQ0E2dSsxQkZSUXlzYjg1RjNtNDhZMGdyOFJ0?=
 =?utf-8?B?VVRwcXlGZWRQc3M0SEg4S0d6dXc1cjVVMEs3cG0xblBCMVJlVkxGWit0dmJv?=
 =?utf-8?B?WUFWd2NHRnN6clAwblcvbmpGTHNmNXBkUHo3NEpYZUJRK1Y3VFZPMkswSVJK?=
 =?utf-8?Q?qtmc3Ea2DpG8exNmR30RxmVM7g2aGEnw?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LO0P265MB6550.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1102;
X-CWesigProcessed: Y
X-MAIL_SIG_VERSION: 0.2.733
X-MAIL_SIG_SERVER: xwaresmtpservice-d98dcc5ff-hxwv9.xware-eu-north-k1.o365.crossware.co.nz
Content-Type: text/plain; charset="utf-8"
Content-ID: <DE92ADD0F9947A40AE2B24628F22C459@GBRP265.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO6P265MB5935
X-EOPAttributedMessage: 0
X-CrossPremisesHeadersPromoted: DU2PEPF00028CFF.eurprd03.prod.outlook.com
X-CrossPremisesHeadersFiltered: DU2PEPF00028CFF.eurprd03.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF00028CFF.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b3d78928-d877-4bc1-6fdf-08dd49b07120
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|14060799003|1800799024|376014|36860700013|82310400026|35042699022|13003099007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?S0YvYjdYbEd0YVN3a0h1Sm1oVzJmeEFrdjNmZVp3OHBJTzVwZTlqR21iRlVV?=
 =?utf-8?B?NjFVUXBhTUlqMVFSOVhRMU5xblhTM2dxZ09KTDRqWU9uMXdSRjRJdzQyQ0lE?=
 =?utf-8?B?S3hFaGdKQzFhOENkVzI5SDUxQkx0eGl2Z3BoY3k3blpvU0ZSd0J3SWUrdVhy?=
 =?utf-8?B?Mk9sdlFuT1A2b3hqUHQ3d2EvcGtFa2ZIdVMvcm5nSjA2bm9uZEJidy9IQzlO?=
 =?utf-8?B?YzVCKzB1YXVzNEI2RU4rcmdxTUNkdndqTHdQUzlKL3VQZi91ekdQTXU5KzFN?=
 =?utf-8?B?TEVZcnhVMFNvcktqcFJwZnliY3VhYndQU1ltOEV5YU4yd1U2Y24va3pzRzhy?=
 =?utf-8?B?ZVI3V3ZnMTl1NEpoU2VtbnFVWlhhdzZWNmJid2gzNERWeGM5T0p5dW13eERC?=
 =?utf-8?B?Z3JPZGdYY3pRTWJFM3BMNDJQeXdJaEh3bjhtVEtlZWNSbFpUUDVOYVBNa1ph?=
 =?utf-8?B?L1MrQXpxWFFsN1hZcExTNGZXQW9oY2o1bVpSRFg3SmtIRDgvU0E5eEdSL2Jv?=
 =?utf-8?B?NWIvYWRhS0NLanBkNzkrRTREMjFmNnk2dGkyV21XSTJqK0FJVm9yOFJ3K0hw?=
 =?utf-8?B?WDNKN2RRR3ZHUmc5eHB2NW5rZ3FwS2FSNkp0dTF4RkpGNW9LY0xVYXJSRDh3?=
 =?utf-8?B?c1pzbitNOUJhTjZsSDFJQ0VhOW9XRWw5TW9CWm4vWVVqQmMwald2OTl5NjRy?=
 =?utf-8?B?aXNJU1JvYTZxWGtlUVVhSm43VTAxOUZHbU1SS3Iva0czM3loZDRCMDBRMU1T?=
 =?utf-8?B?OFUrZlVuMmZrTGg2Yi81eHRFR2F4TkhqbkljVHQzNnEyMEpMbFRMRHJ3YVVS?=
 =?utf-8?B?K0pLV2dSYkpCY1JQcjR6RkljTXloVEt1SEcxaEthTFd6RGpPNFA3L3FzS1dh?=
 =?utf-8?B?NjN6TC9ZZkF5anZrWXZpY2hrUG5GbzlPdW9NSi9UVXNQSklOanh5dFZRZWR5?=
 =?utf-8?B?MW1kdWhBMTlFMWQva1R3N2lmVVY4N2crZGJrN1pCcnUvUjdEcjM0VXpydks4?=
 =?utf-8?B?TWZtblAxcUcycVh4RWFCNFlSVEpIVk9CcEd2UC9QcXhZL1dTMC82dGtJK21M?=
 =?utf-8?B?byt2UjlNMUJVK05VZm9RMWhGb1piS1hiS01mL2FneWlmRCs3MUlzVDZMaXpp?=
 =?utf-8?B?SDJ5WEw1UzBnbUxWUWc0REV3dVRLWjJsTm1UYndHOHR5Q0R5d1FNcEVDNHh2?=
 =?utf-8?B?MnNtY0xleFBLcTg4S0J0R3dBUDhoOU53Z1N5RGhjYmd6cTE3QXBRcStJeWVI?=
 =?utf-8?B?NlRhZmMyVnBWU2U0ZXQ1TE1rRXJHSmFQNVptUmVsbXJ5NkpkMTlGaitPRWE4?=
 =?utf-8?B?RzFEMFo4ZmhWY3BZR2UraXZhZW9zbmtxelpsemU3YTJRNDUwSFA3TUdWbTI1?=
 =?utf-8?B?QUJHV0pGY25XOFVQOE9OU2tBdnNjY3ZjenNPSnJHTTRHOWNWb2ZNdXNVYi9J?=
 =?utf-8?B?RXFhSlVwTmd4ZWdXeE5HRG0ySU05c2dUVy9wQVU2SEhkaGUrbHdOOGxSNjE4?=
 =?utf-8?B?ZWJSUUJKbjl0VHMxSUZlU3I2dFNVbzd5NUdQMlROSjVVc2Z2MEd3NHlnNk1L?=
 =?utf-8?B?RkVzSjI0blkwSXRpbUxldS85WGhIYWJwTHpnU2tmOHA5RkIzQXoyZUtUeGVC?=
 =?utf-8?B?ZmJiNzhCQlFrdS91V0FJVWdhUityRDN1QUduZmE0YTkwankybXFXL24vUjJF?=
 =?utf-8?B?NHF0dERWUWpDSVVmZHVKdUpzeS90RVp0cEI3enlGRHlLcXZmMWpnSW5nWEl2?=
 =?utf-8?B?d3UxQ3dhdnZ2VUdwS1VJYzlrYXREdHU0SFFSWEZuWnRCdEwrRlRGMkFtd1J3?=
 =?utf-8?B?OW96YWlOZW85Sm80eXVZaGI5VDhhK0Z4M2Y1eGdtTkpBbXpZaUNvd2hYSG14?=
 =?utf-8?B?VFV2eEZ5dlNISGUxZmpmaC9OTUxlazZEMURndDdxQmFmUzR5K2V0cis0SThE?=
 =?utf-8?Q?6rD40J/LeQg=3D?=
X-Forefront-Antispam-Report: 
	CIP:51.104.147.18;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:xwaresmtpservice-d98dcc5ff-hxwv9.xware-eu-north-k1.o365.crossware.co.nz;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(14060799003)(1800799024)(376014)(36860700013)(82310400026)(35042699022)(13003099007);DIR:OUT;SFP:1102;
X-OriginatorOrg: hanoverdisplays.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2025 08:53:54.1065
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c6381912-620a-4a40-fdde-08dd49b07287
X-MS-Exchange-CrossTenant-AuthSource: DU2PEPF00028CFF.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Id: a8520dec-67a9-412e-9a33-fcd2b3b5963b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a8520dec-67a9-412e-9a33-fcd2b3b5963b;Ip=[51.104.147.18];Helo=[xwaresmtpservice-d98dcc5ff-hxwv9.xware-eu-north-k1.o365.crossware.co.nz]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO9P265MB7790
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Feb 2025 08:54:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64753

RnJvbTogQ2hyaXMgTW9vcmUgPGNtb29yZUBoYW5vdmVyZGlzcGxheXMuY29tPg0KRGF0ZTogRnJp
LCA3IEZlYiAyMDI1IDE1OjIxOjAyICswMDAwDQpTdWJqZWN0OiBbcHNwbGFzaF1bUEFUQ0hdIHBz
cGxhc2guYzogZml4IGNyYXNoIGZyb20gbGVuZ3RoIGJlY29taW5nDQpuZWdhdGl2ZQ0KDQpGaXhl
cyBbWW9jdG8gIzE0ODA2XQ0KDQpJZiB0aGVyZSBpcyBhbiBlcnJvciBpbiByZWFkKCksIGl0IHJl
dHVybnMgLTEgYnV0IHRoaXMgaXMganVzdCBhZGRlZCB0bw0KbGVuZ3RoIHdpdGhvdXQgY2hlY2tp
bmcgZmlyc3QuIFRoaXMgY2FuIGxlYWQgdG8gYSBydW5hd2F5IG5lZ2F0aXZlDQp2YWx1ZQ0KZm9y
IGxlbmd0aCB3aGljaCBldmVudHVhbGx5IGNyYXNoZXMgd2hlbiBtZW1jaHIoKSBpcyBjYWxsZWQg
d2l0aCB0aGUNCm5lZ2F0aXZlIHZhbHVlLg0KDQpUaGUgZml4IGlzIHRvIGNoZWNrIHRoZSByZXR1
cm4gZnJvbSByZWFkKCkgZmlyc3QgYW5kIGhhbmRsZSB0aGUgZXJyb3INCnN0YXRlLg0KDQpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBNb29yZSA8Y21vb3JlQGhhbm92ZXJkaXNwbGF5cy5jb20+DQotLS0N
CiBwc3BsYXNoLmMgfCA2ICsrKystLQ0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9wc3BsYXNoLmMgYi9wc3BsYXNoLmMNCmlu
ZGV4IGVlMWFmNmIuLjBkYjBhYTQgMTAwNjQ0DQotLS0gYS9wc3BsYXNoLmMNCisrKyBiL3BzcGxh
c2guYw0KQEAgLTE0MCw2ICsxNDAsNyBAQCBwc3BsYXNoX21haW4gKFBTcGxhc2hGQiAqZmIsIGlu
dCBwaXBlX2ZkLCBpbnQNCnRpbWVvdXQpDQogew0KICAgaW50ICAgICAgICAgICAgZXJyOw0KICAg
c3NpemVfdCAgICAgICAgbGVuZ3RoID0gMDsNCisgIHNzaXplX3QgICAgICAgIHJldCA9IDA7DQog
ICBmZF9zZXQgICAgICAgICBkZXNjcmlwdG9yczsNCiAgIHN0cnVjdCB0aW1ldmFsIHR2Ow0KICAg
Y2hhciAgICAgICAgICAqZW5kOw0KQEAgLTE3MCwxNSArMTcxLDE2IEBAIHBzcGxhc2hfbWFpbiAo
UFNwbGFzaEZCICpmYiwgaW50IHBpcGVfZmQsIGludA0KdGltZW91dCkNCiAJICByZXR1cm47DQog
CX0NCiAgICAgICANCi0gICAgICBsZW5ndGggKz0gcmVhZCAocGlwZV9mZCwgZW5kLCBzaXplb2Yo
Y29tbWFuZCkgLSAoZW5kIC0NCmNvbW1hbmQpKTsNCisgICAgICByZXQgPSByZWFkIChwaXBlX2Zk
LCBlbmQsIHNpemVvZihjb21tYW5kKSAtIChlbmQgLSBjb21tYW5kKSk7DQogDQotICAgICAgaWYg
KGxlbmd0aCA9PSAwKSANCisgICAgICBpZiAocmV0IDw9IDApIA0KIAl7DQogCSAgLyogUmVvcGVu
IHRvIHNlZSBpZiB0aGVyZSdzIGFueXRoaW5nIG1vcmUgZm9yIHVzICovDQogCSAgY2xvc2UocGlw
ZV9mZCk7DQogCSAgcGlwZV9mZCA9IG9wZW4oUFNQTEFTSF9GSUZPLE9fUkRPTkxZfE9fTk9OQkxP
Q0spOw0KIAkgIGdvdG8gb3V0Ow0KIAl9DQorICAgICAgbGVuZ3RoICs9IHJldDsNCiANCiAgICAg
ICBjbWQgPSBjb21tYW5kOw0KICAgICAgIGRvIHsNCi0tIA0KMi40NS4yDQoNCg0KQ2hyaXMgTW9v
cmUgDQoNCg0KRW1iZWRkZWQgU29mdHdhcmUgRW5naW5lZXINCg0KDQogDQoNCg0KQCBjbW9vcmVA
aGFub3ZlcmRpc3BsYXlzLmNvbSANClQgICArNDQgMTI3MyA0Nzc1MjggDQoNCg0Kd3d3Lmhhbm92
ZXJkaXNwbGF5cy5jb21IYW5vdmVyIERpc3BsYXlzIEx0ZC4gU291dGhlcmhhbSBIb3VzZSwgU291
dGhlcmhhbSBMYW5lLCBMZXdlcywgRWFzdCBTdXNzZXggQk44IDZKTiwgVUsNCg0KDQpSZWdpc3Rl
cmVkIGluIEVuZ2xhbmQgTm86IDE4NzY2ODQ=


