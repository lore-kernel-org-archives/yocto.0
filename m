Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4BCCC7115A
	for <webhook@archiver.kernel.org>; Thu, 19 Jun 2025 14:50:41 +0000 (UTC)
Received: from AM0PR83CU005.outbound.protection.outlook.com (AM0PR83CU005.outbound.protection.outlook.com [52.101.69.16])
 by mx.groups.io with SMTP id smtpd.web10.1530.1750344635896515716
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Jun 2025 07:50:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=Z7OL7sWO;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=Z7OL7sWO;
 spf=pass (domain: arm.com, ip: 52.101.69.16, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=r87+STfuU6EhEVWIhcDtGQ1Jykg50d0Y4OMUHfnrHA7iDdOhR8k6cg3u5DtvztmejW/UAj267f8y+fJhJLuWZTe/jr3deYThn4q7yE5oLt3l3TPIpBmRy99i8jScwtW6koMV9RPX46M93lkqMnjkzI/Sh/GIdfpIiBDiRmNJAhlFAjJP/DsRGPhU71bp64Z7hOsLzuLRZmmPWl3rfUbvYe3S5HsKbv6RDF2wKVw5fvG9xzf7I+AQuy6d0VLco7UPH4eNTtuvkz+MDkedjy5K6zqCRxQlnowgW5qiTW5vD3//9Qts5eXPjPSLP4ALaQUzzhw99+DA4g7T3TxtAfhwOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SUpniiw9cqdEWEQTT2iMALYBwCice8sdO/oRXWPIZgs=;
 b=jA57+EylC5+DU/rpXRakX6NI10gP54c0vrAMBHgdFc45Z3W1ZPbL0yPjWtSICIPMkQ0xiXdOdV5u3MrCrr+7rf/hKYWzELnKXVQSeYbf6tAk1EfwoRpLybTktqhupIBBUvK9Lmr8tq0F/MIjGQfwCjv6eJTemV056n5MPn2Ot1ZIzAnH+I79d5QOnMWulFI4i6nSHrqqXPKN3QIAgYRx6GXk9XJZXE/I9aQakPm/SmH/bV67lDZBo2C24qiDRiYiIGzEF4GP0uwI/57ryCCFn3H1fjW0fl3lZ8Tz/ACnTOTSCiMAfWLqoec14CXSeNBcyUeVnxj9CPQPCeN4BSis4w==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SUpniiw9cqdEWEQTT2iMALYBwCice8sdO/oRXWPIZgs=;
 b=Z7OL7sWO9guf8RnDPEV9rZQ/OxUKNQTDPUfh4GBOOSNVFd+XpQTJR7pMW8N+e49v90tEB79p0lbybCHZOAMrL2bjb+D5zM589oSTAJizqr5m9iNABxblOxUU0Smlg2KCtZkLGLuu/9dwoaoEiWyjudKy6x04isijK6Xr4fvTAU0=
Received: from AM9P195CA0019.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:21f::24)
 by DB8PR08MB5452.eurprd08.prod.outlook.com (2603:10a6:10:111::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.23; Thu, 19 Jun
 2025 14:50:31 +0000
Received: from AM2PEPF0001C70D.eurprd05.prod.outlook.com
 (2603:10a6:20b:21f:cafe::86) by AM9P195CA0019.outlook.office365.com
 (2603:10a6:20b:21f::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8835.32 via Frontend Transport; Thu,
 19 Jun 2025 14:50:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AM2PEPF0001C70D.mail.protection.outlook.com (10.167.16.201) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8857.21
 via Frontend Transport; Thu, 19 Jun 2025 14:50:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YEvjy9tspJ6QmmHNHaBqv5846k75lgAyG6oTQ3rS9YOPgzh117ZFZn3luuZjnlQRArgLDk1jkQ/VCuKQMlLXTJsr6QsiLLdmS3AD4S9O+N9MhEPLYFJNuhkpW2Dwqj8o2iTFuxWFTm4av+zdeimOBKl94JnQvKVrX611wVSYwsJ6lsxnyXYsKlVZ3SAfDmj4DTEq+P8sle4H0SDAtNG5H8UAWfo55hdR9oDhFQXuNyeuowIyy+0sHfBMg5F3zib9s1rq4MhZaAlEV9ARSRn23+F1cneXA3mfEyT2tDb12j5o7smdlJ+w8FQlxCmjXZJopgviAAmZLcc7ANu4Sh36/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SUpniiw9cqdEWEQTT2iMALYBwCice8sdO/oRXWPIZgs=;
 b=RuzzEQNdoabp/ODy5HKzy0L5ZxxuFq6jWDxvkPM8axelWQRUdWliu29L6ukkXc/K+riHGvp9aUevbgmFz/R9O0HCm8vR1l81TAzaHOcCzdYQfO3Do5O3FeL51zgJN6Q45XPVanI+bxxIE3556BSa4Lm97v0ben/+t7iDVDSqv5EbJl/6TviM/22vToibMivwwBGOrfLOi8oD6ccuM3BAO+CnFGawNcwqhERCP/E4/9y1SnQGySJnUqlhEbHvbqWW880uY9lZRMqlwraHNvSV12XOADOrDCEoBNccA2ItIMr9EzH0K8c0u6/kb8PgIO+EYabUcwH4D+QNUvYb2p0NIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SUpniiw9cqdEWEQTT2iMALYBwCice8sdO/oRXWPIZgs=;
 b=Z7OL7sWO9guf8RnDPEV9rZQ/OxUKNQTDPUfh4GBOOSNVFd+XpQTJR7pMW8N+e49v90tEB79p0lbybCHZOAMrL2bjb+D5zM589oSTAJizqr5m9iNABxblOxUU0Smlg2KCtZkLGLuu/9dwoaoEiWyjudKy6x04isijK6Xr4fvTAU0=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB8014.eurprd08.prod.outlook.com (2603:10a6:20b:573::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 19 Jun
 2025 14:49:54 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%6]) with mapi id 15.20.8835.027; Thu, 19 Jun 2025
 14:49:54 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"H.Wulff@kruss.de" <H.Wulff@kruss.de>
Subject: Re: [yocto] do_unpack:append() with dependencies
Thread-Topic: [yocto] do_unpack:append() with dependencies
Thread-Index: AQHb4ScQLWXvH1vWGUikr1Th0LFfm7QKkHsA
Date: Thu, 19 Jun 2025 14:49:54 +0000
Message-ID: <11DCDA4A-CA9F-4D22-A6BF-D0FD45D75AE6@arm.com>
References: <3Kqe.1750343574923654251.ic4p@lists.yoctoproject.org>
In-Reply-To: <3Kqe.1750343574923654251.ic4p@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.600.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB8014:EE_|AM2PEPF0001C70D:EE_|DB8PR08MB5452:EE_
X-MS-Office365-Filtering-Correlation-Id: df6fb52c-1e8d-4e97-a2d4-08ddaf40a219
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?Qnh4bEUwYjlsbjMwWHV5RURMcmk4SHU0UDN1b2lwSS9qb3hYWnVkNlk5VzV5?=
 =?utf-8?B?SGdSRDB4U1RZYzRVVktrMjJ6SVI5Q2pTalhUL1pBeE1WbWtUT08zbFJkMVc4?=
 =?utf-8?B?N2dFWVhtRTNxVmVpd0pGWlZCZTMzeGVOcGc4VVgyOVZhNXhNeVc2ZU9CbVlF?=
 =?utf-8?B?bWFOUURkdnpXWjMzNFN3OXA2TUhwMExXZVczUU5ic3ZqcGROMm0yM0tJNkZk?=
 =?utf-8?B?aGMzOG11N3g0S1hadVFIcFRDbSt1dzIzNGh3S29xZVFrMHlkTExpZzFoc2hF?=
 =?utf-8?B?aE1MbHIxTE9ISU8rRUZUVVh2dE8rd25uZXM5Z28xRHhBMmtXYlNJUVJoMEo3?=
 =?utf-8?B?NDYwa1RZZXBxRjV0bUlFTGdpV081OFQzUHN5d1hpejFULzNLbGdjWWx2RlJ3?=
 =?utf-8?B?SFNLVTRVUWI3Y0hwd1lnbFUveWRhUU9vTzJNOGxTbHJTd0djNUpZZTdIemEr?=
 =?utf-8?B?bVM4VEtjTkdrdHkvbkd0V2p1NHg5TlFUTTRzZVZLNDN2WGIyQmxKeUluS3Qy?=
 =?utf-8?B?a25UMHdlcDRYQTB2Rk1OMDVzWS9tbHlydUJGWWtaMklXeVhIUmEvRGJCNmxJ?=
 =?utf-8?B?MDAyU2VzK0pqUlR1QStJLzRXZ3hFM1BYdTZSYUQ3Zzg3SDNzSGZlR0swYURG?=
 =?utf-8?B?S1pBRmJmNFBmNG52L0RRL3hxdmYwVHFlREJuOWFkOVVkWVpvcTYwWXJnTVp4?=
 =?utf-8?B?NFhNZ0V5elkyT3I2Rm5VaGM4ejlNTUE1bDgvNEk4a1BaQ1FEOWRaVVpUUzhP?=
 =?utf-8?B?SWdRUXZ0UFNwdWdxMUtGZXZGQWMzRytQVWFtV08xV3RXRUlYdnAweXVFNnpx?=
 =?utf-8?B?cEgrWnc4YmhwSTRGeGYxRmcyV05yUkdpR3F2L1VZSmx3TEJtMks1Qm9CcHll?=
 =?utf-8?B?ZU1ZZWFxVngrUU1qbW1YNWZWemc4d0JWQSthZ3gvdldXZ0hoRjlQWE51d24v?=
 =?utf-8?B?QWM4TENISWdIMnFnYitESTc2TzdOcGNWa0xQdkVtTlB6cHF3NE9xdVBGWWpL?=
 =?utf-8?B?YUFPTlBSTEcra29ucTNleE1mSVpDYzJmSE5VUmVWSUZVZ2s1UENqMFNXcWdy?=
 =?utf-8?B?Nk9hc1dXL21BOHpkNjFZN21WR3pWU0FtMTlYM3lIV1pFS29ReENkYjdUQXZr?=
 =?utf-8?B?ek4xckZENHBpTkkrTzBJNTA4Mnpmc1Boc0tsSUtMTHhnQUVrZWF3V2xHWXFG?=
 =?utf-8?B?bWl0UXh3V0xXT0llOTNqZXJZdzBVVVIwYlB4TnA0RHNNdUZxWkNpMzljcFZt?=
 =?utf-8?B?cUJPM29Dd1BYdmNjbEpzOExwcmNPcjBCN2xZVFc5N2JYamdmT2t0a3BVZk9u?=
 =?utf-8?B?ZmNIZzFTQ1Vqb1ArUUNGQ1BrR3BsRDdiajF5NjlIYzFGZXVaakJDcTdzbXBU?=
 =?utf-8?B?QVRRYW1uVC9OVUxZdEpZQzhTa2ZYL2FHbjBWU3ZWR3lVMzFaY0pTWUlaYWxQ?=
 =?utf-8?B?dXZDbnc5WnpHczZ4ak53TkZHZEJhSU83QTNmdFkwQ1o1VER5b2FjRTdFTUNT?=
 =?utf-8?B?cUcrNVlCYjkvMlEvZjhJaUlYRE5XVVIyMlFGbUtVWkVXOW55REJOc1BrcTRM?=
 =?utf-8?B?YjJkYjhhdGUrTkJWM2thMndHR1lnYUdYVW55WmNrUGtnN2hYcWxhV0RiKzdt?=
 =?utf-8?B?S2xpVDhSSlhvWjkxb3EyMmZ6RlJ5bm1RODlhWTlNMEp1TFlWYXlOY0k5TmJ3?=
 =?utf-8?B?VjhBSHJJUEF5Tk5VTXlwUkw3L0sxeitweVNzR3p3STdEeEFtTkEyR09leFhF?=
 =?utf-8?B?RUx6SEw1L0tSWnJKVmpIZTdhZnNUVDB4dmdwY2VyVUJXZzFYekxPdHBick4x?=
 =?utf-8?B?V2FoMmZjTWM5bFhwZ3NYNUFmTnNjZjdPTzBwTW1SUUg2aUNRM0dCUXF6Wks2?=
 =?utf-8?B?L2ZNZnBmK3o0cGN4V0RjVGFlV0x5TmhwM0N3dDhkVUVYaUs0aG45a3RBblVP?=
 =?utf-8?B?QldFenBNdjNNOER3TTVMS0RyT1JvcmpQRVFZMDY3NkRrUU90L2VsbjdoeXpT?=
 =?utf-8?B?bThNTGkzTndBPT0=?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <2F1AE68B3025B641B2CD9219316BF96D@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8014
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM2PEPF0001C70D.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	a40ef724-ad8c-4709-e628-08ddaf408da2
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|14060799003|35042699022|36860700013|376014|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SlVzalBlbjc0ejc1SWlXZ3E0SVBERFNhcU1zditTU0RadFVReC9zOWR5a0Fz?=
 =?utf-8?B?bUpNczV1RnVNYmlBMm8xSEt0ZUdqWEF4bjJoMnVSU2lwa2h3MWRqTlRQcndN?=
 =?utf-8?B?d1BTUGJCZythNENoOVVNdGNhUUNSQVhLM29UdE9BUUtmdG1FWmlvOXIxSVVm?=
 =?utf-8?B?RnFEbDBOUEZwckF5eVJkbWlpNk45eGFQSVl2Mjd1WU1RRnhwSGZMMHVzdmpa?=
 =?utf-8?B?bDM1UUI4ZC9RQWd4MjZQS1pXRTFreWVEZ3l2REhFMUtpamZTd0lKalRDYjNx?=
 =?utf-8?B?VHJPRUxTVlpyaUk3STlpZjVwWUZBNmgvRzE3bHdqYVRrNElhMS9KNUFjRUNU?=
 =?utf-8?B?dnpZMFMxY2JkT2x3aE51UkdJWW54Q2xRZjZuVmhORVdTbUNKUG94QjlNdzlL?=
 =?utf-8?B?YkROR2RnRjVUQ3MrMTd1VnRzeHVLQnk0enFVdDA3cHZzT2RSMHlNVnplLzVD?=
 =?utf-8?B?VmRUK0dZMWlIanN5WSttcnY1YmZKV29MY0FQNjFBRk1XT3gzdUkxZ1R1MFlS?=
 =?utf-8?B?ZmJOU1JFd0FQc00vNGVOajFmMHI1aTI2NGhsSyswT0RaRGVueDdOblA3VFNy?=
 =?utf-8?B?MXVnYTlkUXdLOU5nbVdXL0VoZEpiVEs1bW56RlpuS1hCOG5tQ1NacGZJaC9U?=
 =?utf-8?B?RTlJT3ozOGp4a0hTMm9rN2g1NmFXYVhPRXBneDVyR1JReXNtRkNxK3crdUsx?=
 =?utf-8?B?L3pUUk5EemRBRE5YaXc4UEhYQmJDYnBDMlpMS08yZUlrSXpnTkpjT1M1ZWk3?=
 =?utf-8?B?aHJXUlE2M3pGenphNENGTXQ3U04yc2x1cmprQysra3V2UmcxaDB5SWFML1RO?=
 =?utf-8?B?NkhSa3FlL2htTmxtWEpPTkpIWWxLN2VjaUl1MnFKL2QvNlB3a0NrdElqR281?=
 =?utf-8?B?UmF2dHNqNm1YL3VFMHEvejhXbmx0eWRIRkFQV050OU91N1NRc0p6MG9OWkxE?=
 =?utf-8?B?ZTdrajdnNjE1cFNKdzRmZ0tzN0JWWmxQZ2hOaXF6QjhBUjZNaU1NcjM0eFVI?=
 =?utf-8?B?WXExc0JKRjNrMXJXWEorSFMrRW45T0JaZTh3bFRiaDdkbUFnRGlrSWc2M05m?=
 =?utf-8?B?cEovMlNJMU9hbzk0THVJMGtjZG0rUllqNmJpODVlN2ZSaFAraFg0M3ZLenNw?=
 =?utf-8?B?VjFMSVIxZk02WDhXc0lzWG02NEJ2b1BnenMxYTJ0ZXZjV1JBWmZ6TkVjVkVm?=
 =?utf-8?B?THNhbFgvSERzd2lPSzhmc1hKZk1lZ0RGVVhjRjRXUWlsMXEzZ1pQVHdVdHhX?=
 =?utf-8?B?TTArYXVyY1VSWUVsYkRUNHZPa3RPUDJBREdTeGhyZVdJT3Yvajg2OEZQQ2NF?=
 =?utf-8?B?THR2bmR3dEVRTExHSkpFY2UxRW5BTUVHRDI5T1krZlJWd282dFpabE5oQ2pz?=
 =?utf-8?B?dXhLWHphaTlxMk15azBSSGpZY25UKzZmWVBUQXZXNTEySEZlZnlSUE4waHNT?=
 =?utf-8?B?QWl3REd4dG4wSGg5MW1TdEJrdXE4aEpXcmIybHYxTmpPL2RoejhsSkttZmpB?=
 =?utf-8?B?SVNTaDRPd3Vsc3BtMEdMM01Eemh3aU9xWlU3aTVrNXVocjhyVlRGa3QrWTZS?=
 =?utf-8?B?ZUJ0aklJSWFnUDU3UFZMNldHdjZCVm1LczdVM3o2ZlV5MWtUY3Znei9hYlAz?=
 =?utf-8?B?cHdIeDA5emlIQUhKYVpoNXVvWms0SDZOR0pVcHd0V0hiNjIvS3Z3MjhabS93?=
 =?utf-8?B?NkJna1kvRWFJUG1xYzhJMWFHNUJGamoraHBrVzdwOGRwRE5SVUhUdkdsbC9X?=
 =?utf-8?B?Mzg1eHRmSCtVNWpMOTMwVTB1WktrVGszZGtnMGRwS1dTTzNtTUVkTlpwRjcw?=
 =?utf-8?B?bWY1dmt5U3VqcnZZQWticVMyVWFJNDZzUkJQdTh1NGowZGllLzd5TU9NU3c3?=
 =?utf-8?B?QWdYbzNpdXRiOUpuZGNXYno1cXlqRy9hcnlVWGQ4akw3ZGwxeWdtWi9rcGor?=
 =?utf-8?B?THU3aHZXdkRiRHI1VTRXU0xVeldRNkpNMC9WVTN5UmZZZlhNS3I2MkxRRUxW?=
 =?utf-8?B?Vkp4c3NGT1hxNURkN3hRbktqQlJRQWc3aUFxd3BjenFhVjRzdmNzNDNuNlg2?=
 =?utf-8?Q?Snn2z3?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(14060799003)(35042699022)(36860700013)(376014)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2025 14:50:28.8441
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: df6fb52c-1e8d-4e97-a2d4-08ddaf40a219
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM2PEPF0001C70D.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5452
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Jun 2025 14:50:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65524

T24gMTkgSnVuIDIwMjUsIGF0IDE1OjMyLCBILiBXdWxmZiB2aWEgbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZyA8SC5XdWxmZj1rcnVzcy5kZUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4g
DQo+IEhpLA0KPiBJJ3ZlIGEgY3VzdG9tIGNvbW1hbmQgZm9yIHVucGFjayB3aXRoIGRlcGVuZGVu
Y3kuIE15IGZpcnN0IHRyeSBsb29rZWQgbGlrZSB0aGlzOg0KPiBkb191bnBhY2tbZGVwZW5kc10g
PSAieG9ycmlzby1uYXRpdmU6ZG9fcG9wdWxhdGVfc3lzcm9vdCINCj4gDQo+IGRvX3VucGFjaygp
IHsNCj4geG9ycmlzbyBcDQo+IC1vc2lycm94IG9uIFwNCj4gLWluZGV2ICR7RExfRElSfS8kKGJh
c2VuYW1lICR7SVNPfSkgXA0KPiAtZXh0cmFjdCAvICR7U30NCj4gfQ0KPiANCj4gVGhlbiBJIHJl
Y29nbml6ZSB0aGF0IG91ciBjdXN0b20gZmlsZXMgbm8gbG9uZ2VyIGJlaW5nIGNvcGllZCB0byAk
e1dPUktESVJ9LiBTbyBJIG1vZGlmaWVkIHRoZSB1bnBhY2sgdGFzayB0bzoNCj4gZG9fdW5wYWNr
OmFwcGVuZCgpIHsNCj4geG9ycmlzbyBcDQo+IC1vc2lycm94IG9uIFwNCj4gLWluZGV2ICR7RExf
RElSfS8kKGJhc2VuYW1lICR7SVNPfSkgXA0KPiAtZXh0cmFjdCAvICR7U30NCj4gfQ0KPiANCj4g
VGhlbiBJIGdldCB3aXJlZCBleGNlcHRpb25zIGxpa2UNCj4gRXhjZXB0aW9uIGR1cmluZyBidWls
ZF9kZXBlbmRlbmNpZXMgZm9yIGRvX3VucGFjaw0KPiANCj4gSSBkb24ndCBzZWUgd2hhdCdzIHdy
b25nLg0KPiBTbyB3aGF0IHRoZSBjb3JyZWN0IHdheSB0byBoYXZlIGEgZG9fdW5wYWNrOmFwcGVu
ZCgpIHdpdGggZGVwZW5kZW5jaWVzPw0KDQpUaGUgZGVmYXVsdCBkb191bnBhY2soKSBpcyBhIFB5
dGhvbiBmdW5jdGlvbiwgYW5kIHlvdeKAmXJlIGFwcGVuZGluZyBpbnZhbGlkIHB5dGhvbiAoYmVj
YXVzZSBpdOKAmXMgc2hlbGwpIHNvIHRoZSBwYXJzZSBmYWlscy4NCg0KVGhlIG5lYXRlc3QgdGhp
bmcgdG8gZG8gaGVyZSB3b3VsZCBiZSBlaXRoZXIgYWRkaW5nIGlzbyB1bnBhY2tpbmcgc3VwcG9y
dCB0byBiaXRiYWtlIGl0c2VsZiwgb3IgdG8gY2hhbmdlIHlvdXIgdW5wYWNrIGNvZGUgdG8gYmUg
YSBwb3N0ZnVuYzoNCg0KdW5wYWNrX2lzbygpIHsNCiAgIHhvcnJpc28g4oCmDQp9DQpkb191bnBh
Y2tbZGVwZW5kc10gPSAieG9ycmlzby1uYXRpdmU6ZG9fcG9wdWxhdGVfc3lzcm9vdOKAnQ0KZG9f
dW5wYWNrW3Bvc3RmdW5jc10gKz0g4oCcdW5wYWNrX2lzb+KAnQ0KDQpSb3Nz

