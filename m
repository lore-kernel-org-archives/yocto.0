Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C334C3601A
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 13:14:51 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.16])
 by mx.groups.io with SMTP id smtpd.web10.13004.1743686090438295937
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 06:14:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=WDw/6D1M;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=WDw/6D1M;
 spf=pass (domain: arm.com, ip: 52.101.70.16, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=KpWcomoxtZNQQGFeKJRezpia2I19jldfnSpAp9K+2E+z9spDW8BebjiuM0sjphqhE92Bz52FgeM7Mh3w613P49jd7Z5t2zZqxDR5nCUvlUoCIHq6PKdDODB2apYwkt/K+kYF11NqXVV27uDl7L6CYMTr3CONzLH7RDKVF+MfgFMeKWfKuIdr9WlyywfywibNdhUNy0MC9FRSXU/4vzCF6qlMTWqYyvCU3qifsygjnG7Slb9hyw2byV1+kdxFKIezcMPuVCVbl1xfoQYMmeBRCKMg4mZI+SqdPXCsQuYyYBUgoU3z5QCqEiZqvKJp3s8qHY7XfXPRgZ5KyF8AoGMlVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LWf/E/F1pKqlWbj3ikq7fBRQg2zLbKE6zxj+htE5Dgk=;
 b=i1yUtUR+aNofee0ir0FaPBcEliERz0MYxSBJ0HYEgNxBRN42ulv9u4SOZhE5ih8kUb2VHpgEMABFjpy9drjP2H8geSPmuw5EOvinzuOnJMiDJHeSjrlnZpFO6k8AAaAch3njmAbzIqcJdHBL9QooxQGDm/AmRsoSciQPaoMM6txBoBCuMsvPC+0Zo5LMn1du5RYJkLH1iA7lzAla9YKkdGwlVpv+WRMn6oqmYKFFwH2OFbb4byuSGPNKztK42muJK6E0dHKmqsBJISeYCudaHcOtYrrd8ho4WQ4ia5RdolGPwZYcF3zp3mVdDaQvGLCUDftalUH5P2XBlk66ZxpBaA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=fail (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LWf/E/F1pKqlWbj3ikq7fBRQg2zLbKE6zxj+htE5Dgk=;
 b=WDw/6D1MWyR2P9+uT2ziIJfFfJL4C0dfL+d9+CqXZGwxu+wVFw+/RNcba/F8w9htKdSrzgUUQ/IUsvAprRn1Uw/xhiLlV0/eqobdnJFOXvTzeTwMgvKRb/iltcn4TiUQ/exF/34SZ+HyF/iLg5yglqVJoYmhh2gK52YMg4ssS38=
Received: from DB9PR06CA0007.eurprd06.prod.outlook.com (2603:10a6:10:1db::12)
 by DU5PR08MB10753.eurprd08.prod.outlook.com (2603:10a6:10:518::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Thu, 3 Apr
 2025 13:14:47 +0000
Received: from DU2PEPF00028D0E.eurprd03.prod.outlook.com
 (2603:10a6:10:1db:cafe::1c) by DB9PR06CA0007.outlook.office365.com
 (2603:10a6:10:1db::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8583.42 via Frontend Transport; Thu,
 3 Apr 2025 13:14:47 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com;
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 DU2PEPF00028D0E.mail.protection.outlook.com (10.167.242.22) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8606.22
 via Frontend Transport; Thu, 3 Apr 2025 13:14:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QUv/sK/GQLkHhyrcemmN4IQKS+N+0UjPMfvXXLWbDtd1bVQn73xTHV4j+8O0AgcCbH49AHqchoLQGgPToTDZ7g4Ec5IoNAQwJ1d50YgwVfO/+lWKeEytd6OTwWMMs7H64AtTalVPxDUTVVAaV0nMsnXBecYOaju+nCCFNw9SQ5d5FCxiivkbEPsbrYBLNekpTcbtnhpGvD+ImqaNwJJW/YIYaZQrs6dCAmw07c4ngkcfbMIwNlzNDeDzFZfuQZTQOOpHaLJO7p421ZHQMMPuacB2nLHrAVv/BnDfhj3fGBbsTXfr1HkgCcrTo14bIIToSievtfsTlcnpzHQssgWIjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LWf/E/F1pKqlWbj3ikq7fBRQg2zLbKE6zxj+htE5Dgk=;
 b=qeBAYlqzxZTj/0xeCvyODY0zY8YFAu7LoN6CutWy290i97o9Q1Omh0ectJ94ddKG5sCPJeWQ3BSlUXQXoGUIySlt/yU5Mz/k585Pxw/LPL1hCvgNvww2kLeH19nAk7Z73vR4aP9vYVNpw+KAoPurofLfaDcrjgRNVjHl6uSIhp6jYNgpI5NKVo/kV8Z/JZ8HqsAEeg7WxK60zQSPbZElEXqRtCekk2M6wDXUU/KOe0H5UcvwBo7JrcolkQIEpnqNjOoj8fIpLnOJ/LUZQFdJD9RwOnvKcRCPUyDqzsoH00IZi0iXj/ncweQCsJtWcmz12VavhWYaVH6hWhDRlztOyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LWf/E/F1pKqlWbj3ikq7fBRQg2zLbKE6zxj+htE5Dgk=;
 b=WDw/6D1MWyR2P9+uT2ziIJfFfJL4C0dfL+d9+CqXZGwxu+wVFw+/RNcba/F8w9htKdSrzgUUQ/IUsvAprRn1Uw/xhiLlV0/eqobdnJFOXvTzeTwMgvKRb/iltcn4TiUQ/exF/34SZ+HyF/iLg5yglqVJoYmhh2gK52YMg4ssS38=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU0PR08MB9704.eurprd08.prod.outlook.com (2603:10a6:10:444::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Thu, 3 Apr
 2025 13:14:14 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8534.043; Thu, 3 Apr 2025
 13:14:14 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"sateesh0457@gmail.com" <sateesh0457@gmail.com>
Subject: Re: [yocto] Replace Bash with Busybox
Thread-Topic: [yocto] Replace Bash with Busybox
Thread-Index: AQHbo4KTQBaZVuNofU62gV3kpwu2EbOR7YYA
Date: Thu, 3 Apr 2025 13:14:14 +0000
Message-ID: <C198FB4C-838E-4396-A25C-993A8653AF78@arm.com>
References: <aHB5.1743565906612897283.clRm@lists.yoctoproject.org>
In-Reply-To: <aHB5.1743565906612897283.clRm@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.400.131.1.6)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU0PR08MB9704:EE_|DU2PEPF00028D0E:EE_|DU5PR08MB10753:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ee591b8-b528-497a-bd25-08dd72b181ce
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?ZU1vVjlLNlc5MkdxTi84L1I5MDNyM1JXTkhqd1M0eVNSNWFmRVNnN3g4YXNp?=
 =?utf-8?B?VVh2d3hMYmlZcDliaHRmTTBIU0dtUW5nR1g5Sm9UVWxrZmo3aXhINkozQkpS?=
 =?utf-8?B?OUlGQ0s1M0xaQ09xVzBvdktkMVZCdmhJWTVRSnlWVThGeCtJSXhQNzJKL2JI?=
 =?utf-8?B?UmVGSXZBU1JaRDlXMitnQXN5WmxEVng5cThGZ3lCbVk1RUI2OUc0V3F5dHJu?=
 =?utf-8?B?ajNwTlBrQmtFT3JIR1R6eUNSTzFyZVVhU3l5a1pYb2kzejBKSVdyZkNjd2Vr?=
 =?utf-8?B?cENSRzMrKzk3K2Q3c2NKMXlrZjFzTHQ5TFJmQnJxSnJITmVmbTVJWE5NZUhM?=
 =?utf-8?B?SHlDcWVVUEwrcDN0VHNleXVWT1I0T3RiOVlBSVRjeXJaVDVpOGRPOENPK1ZG?=
 =?utf-8?B?ZXVBVjVEdzM2bHBFK09LWERCMHRGNkVXWGVXbXhDTVE0NlNkODI4amUvQXgz?=
 =?utf-8?B?WFNZTllWbDZxVnpEeVNjaURLSjVDRysycFZxcU1JZWROZFJoVlhsR1laU24z?=
 =?utf-8?B?REZhZ3RUUE41WWJIWVhwdTFmUDRsVktyVFRmaExMTWJ6ZklwZkxvVmI3TkZF?=
 =?utf-8?B?YlEyYm5TZXpWRGlGcFc4VHptR1lHaFpoM1ZaVTF6R3BPYmc5ZTN3TVZtUXZI?=
 =?utf-8?B?dENuTEt0NU5mdWlQMXRpL0E2NUIzUVQyUXNkVWJhTEJ5LzJJemJVMUNmYXc1?=
 =?utf-8?B?NHNXQi9YN3dWcjRhcHFFRERmTnE1bmR0RHdjbEFXeE45cEFxRm9iam0vKzQw?=
 =?utf-8?B?cXdLSXJ4YkZESEx3am5vSy9tcDV1aVgrV2xSd0VMOXBmaFJzeFpiSjk4bVFY?=
 =?utf-8?B?RldvejMreVVmZ0ROMW43SXNXYjRIcXBKWFVsTHNFSWlyVUwrdytMRDRVMVlF?=
 =?utf-8?B?UlRrb2pMc0RKQTZrTkd3YURMZVR6eVJNU1orMHdHVWRzWUxnVzRnT3ZPbGZo?=
 =?utf-8?B?emg0T3o1NmpJQ3JOYnkraVFEbm9sOCsyYmlmTTBPMGdnTENNQ3U5QWVsZENQ?=
 =?utf-8?B?V2tSUkk0eHNZYmo5UURRc25LVXpSc25TaVlCck85OGdiMm90ZnBXcGlNaXZJ?=
 =?utf-8?B?S01CYlBlRjJreDJuYTJMZ1lTMExtTFhFWVBkdFZHdEJYM0o2SCtXQkNNcGlh?=
 =?utf-8?B?UVRkTEFKanJycEVIazhxT1BvbzA5eUZWN1ZNTXdJMU1hUXE0dGVscjQrR0ZY?=
 =?utf-8?B?TTRyMm1XcEVWMm9lUEdFalBwTk5Bc3FKZVBQN1lIeXdmWUlWNTY0anFxaEtC?=
 =?utf-8?B?WXhFZ0VSd05YL2ZWcFltbEtZQTIyTzVHWmx4MnduV2Z1dHYvSldBTUp4alVm?=
 =?utf-8?B?WVhQb3U4cCtMS05lVVU5RUNValY3NWQwaExMZFdyQ3BjNkhYeDBOWTZhSi9S?=
 =?utf-8?B?YXc2NmtydlFTdllNTktSMHlOZWVsVUZqRVZpWXRpSldEZzVadFB0eGg0T3hu?=
 =?utf-8?B?ajl0eUZ4M2Y2U1FpOUpaNCtxbnpRakJaenhvSHc0VDR3VHhkVVJ6VzM4dWp1?=
 =?utf-8?B?cGlZRG5EYmtMSmlHSWlFdDRCMnVEczhhSEdJd0tJbzBUWEMvUHZrVmUrQ1pU?=
 =?utf-8?B?bWd0eS9zT0w4V3FYVHBkYnozR2Q2VzlLTnVtVWdiUDJhdFhOaW1JcDYrM1Y1?=
 =?utf-8?B?Q2hhejhqSzRwemluc05JRHBUcXAwdVNjeEVUckZ2ZHVsVUw2eFhDY1YyRUNP?=
 =?utf-8?B?eUZTYkFJbjE0dGU4SXVPSkcwZ2FGODZzZGVBRWwvaklZUVE1ZHpTRWpjczhU?=
 =?utf-8?B?cUxzMTZpekUxbWsvNW01bkxlMFhmbmxKN0pISVdrYnlGZVdwVGtlbnZzZmxs?=
 =?utf-8?B?UmRMQjVNZXdPRXkvTFhoeFMzKzl2dWw5eGpNWVBZYjRqZnp4VDhCaUVrWkEx?=
 =?utf-8?B?ZFVleUFYbHdRcTVHYUk5ZnVHMlZNTzNBMmZOUHFKQmZEWlBIOUNjZjVCYXoy?=
 =?utf-8?Q?P7unOws24gu5vcXhP98aB3gkL6mLX+eD?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <DE33D126DD9D0E4694F493244F84CB8B@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9704
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF00028D0E.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	cc2400a3-2fd7-4764-31ae-08dd72b16e5c
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700013|376014|35042699022|1800799024|14060799003|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?VHlLQUQza21lL3RZemQxb2lGaXZISmxUWVV1UlM2UlV2dmFpL04zOElEeDdv?=
 =?utf-8?B?OU9hOXBhWURkSm9rNHdtQTBMRWR6dTQwU2lXaHRBaHFYQWlSWnl5bkJOa2xU?=
 =?utf-8?B?MUpYRkZtUW1YRUI0c01tNUlyWUtaN3YyS1hlVS9YUW5OVXRtNDFqOG1zeTlB?=
 =?utf-8?B?eDFQZU02WE5BQWNGWXFzSWo2SnB3SjRSejF6L0lDaFplTUVWOTJoSVBlRnR4?=
 =?utf-8?B?Y0FUSGRZTVRYM25HaCtxUGZCWmlXWjJPaDRlSEUycTJYaExONmM2cmRIREll?=
 =?utf-8?B?Q09iM2NHbDlleWJjQkhMbURhZkNYK3QyL2lWVmY1R1owNGZsS1ZWbXhJbk5L?=
 =?utf-8?B?a1ZIU1JwU0w5eDl2S21qSFB4eHB1NUd1VmpRWXo0c203ZlpiaEJYWlJhNng0?=
 =?utf-8?B?WUNFUXNzbE9JU3YxcUloZmZUZnZlQUMwdm5NT09QR3JDNWcrMFFUL2hEUXpF?=
 =?utf-8?B?Y0RKRStXQ1UyZGhJZi9JN0dVSlNuOUFnRnF3Z0k4RzROdHY1VVVhcXJETGt3?=
 =?utf-8?B?b01ISVJpcmI5TDN4V2tVUTMrRDVLaWZZaUlJRER0aDF5R3hGTzFoVmZmTmhK?=
 =?utf-8?B?c1B0VE4zSFQwaS9tSWRVcTJ5ZjliZjhwS3dHTVNkMWNRTzl4QTB0NkhMSHhV?=
 =?utf-8?B?Vm5va0twaHlkNEtkSTUvVmJZSGhweHFJVXltUEhFcC9KQW5OeWpYOW5iaDZw?=
 =?utf-8?B?OU9tMkJTUHp3dXFyM2hDR3NnWE1zTFJCTGJKcTV2andpbU9DYzRoaUJVSFoz?=
 =?utf-8?B?TFA1bWpEN1MwZ2l3V0Z5cDdrKzNnNWlQTFpzSmJNNWROZExuUWlFVnpiMnlO?=
 =?utf-8?B?N3c2b2dzeDZZRkZReDA4bkE5YWIrdDNvVXRYTmxzaGIvSW5xd3dyOGJkUGh5?=
 =?utf-8?B?YytldDNVTjk5d2I4Vmt1ZU1NcFMvK3RUTWFDNmhpSkRidUorMG55YW9qMitJ?=
 =?utf-8?B?RWZjK2JsV3FzQ1pOMEVVUmNkMXk0LzZZNTBZbVFnODZuNTZ0QXdtQWlPbU9H?=
 =?utf-8?B?YlRSb3pvcFVkaEdCMk8vdlVKU1RSY3VSSjg3c09lMzcyS0JGbGZRR1Rod2l3?=
 =?utf-8?B?MjU3Y2NQeXZua2dGMm83MUMyMEx3Z291NEtPTE1VVkE0T2dEcEJ1ZUFCa2VF?=
 =?utf-8?B?ZXNNVFFyaHFMOHMyc1JwWTRRNU9ZUnNYUGY5TEZnWDd0c3UxNFAvNGVJVWVI?=
 =?utf-8?B?bHAyR1ZsMFhPRTRtOWkrTEs3VHRiOWY0bGFZZnhkelFBd3lSQ0JnYnVwNlNx?=
 =?utf-8?B?blEyL1pLbXorWk93bitKRmpTV0JnSE9CNUNPQ2RjOVl2bzBuZnJaWlFjak5J?=
 =?utf-8?B?WUlLekJ6SU1IRzgvRXRidnA1VUxBVHhLTXYxTWRYblQ0c2JuOGxldjBJeTd5?=
 =?utf-8?B?Qk90MkN5UVFsM0RpREVZc0k2ejd0TzBwbHBpbVRaa1BpMEhGUnJ2d2h5SEMw?=
 =?utf-8?B?bW1zUkFoZnZUTXJpNmFnclJmb0pGSll1THdvQktscHpYS05LVlZLTVByYzJs?=
 =?utf-8?B?cEd2a3ByZEhwUU9mejJyTXFRT3Y5c21TQnRERjE1ZzdiOXhyR3d6TkJQT3pu?=
 =?utf-8?B?d2FLWm01RW56bnpMdXZpeFBiVk10ZTVCRUk1T2ZyTjlWNWp5S2oxTDIrYjBJ?=
 =?utf-8?B?dUQreFBlWXVVdTh4a2hxd0owRXZTcHc4Z2lleFBON1M0UmlrOGVDYXRrUzgv?=
 =?utf-8?B?bFgzdkJDRk0xWTBCNDBRam5WS2JDYWJkVXRCaVJiNFQzemJrNW90ZUZPWUNK?=
 =?utf-8?B?SFNpcFRDbzJFVHMvTUVLdldDQ2EwWGdtYnM5eURJTVg1ZUMzbmM4SGpDeS9Z?=
 =?utf-8?B?eTBTenNVWFJ1cDByaFk2cldHUnp3aFpWSmF6amkvY1NYQkFCdGY4dDUvU2Vx?=
 =?utf-8?B?Mk9rNFE0RGphcnpET0hEMmxFOVV5Znc3NmhiUU5XS3lXdFdkNDJRT2NyYzVJ?=
 =?utf-8?B?dzFTVTNmeVZpYk1FVlZFNEllOS9KS2pBVGlrdjRvcmZwZ0x3ZjRWQ3JsQVp2?=
 =?utf-8?Q?ypOmJ9GJw7m5GFN1IPukfq6rvICQfw=3D?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(376014)(35042699022)(1800799024)(14060799003)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2025 13:14:46.8597
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ee591b8-b528-497a-bd25-08dd72b181ce
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF00028D0E.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU5PR08MB10753
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 13:14:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65081

T24gMiBBcHIgMjAyNSwgYXQgMDQ6NTEsIHNhdGVlc2ggbSB2aWEgbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZyA8c2F0ZWVzaDA0NTc9Z21haWwuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdyb3Rl
Og0KPiANCj4gSGkgVGVhbSwNCj4gICBJIHdhbnQgdG8gdXBncmFkZSBteSBCdXN5Qm94IHZlcnNp
b24gZnJvbSAxLjMxIHRvIDEuMzUgYW5kIHJlcGxhY2UgQmFzaCB3aXRoIEJ1c3lCb3guIEhvdyBj
YW4gSSBhY2NvbXBsaXNoIHRoaXMgdGFzaz8gQ2FuIGFueW9uZSBwcm92aWRlIGd1aWRhbmNlPyBU
aGlzIHdvdWxkIGJlIGhlbHBmdWwgZm9yIG1lLg0KPiAgIEkgYW0gbWFuYWdpbmcgdGhpcyBhcyBk
ZXNjcmliZWQgYmVsb3csIGJ1dCBJIGFtIHN0aWxsIHVuc3VyZSB3aGV0aGVyIHRoaXMgY2hhbmdl
IHdpbGwgd29yayBvciBub3QNCj4gICBQUkVGRVJSRURfVkVSU0lPTl9idXN5Ym94ID0gIjEuMzUu
MCINCj4gSU1BR0VfSU5TVEFMTCArPSAiYnVzeWJveCINCj4gVklSVFVBTC1SVU5USU1FX3NoZWxs
ID0gImJ1c3lib3giDQo+IElNQUdFX0lOU1RBTExfcmVtb3ZlID0gImJhc2giDQoNCmJ1c3lib3gg
ZG9lc27igJl0IHByb3ZpZGUgYmFzaCwgaXQgcHJvdmlkZXMgc2guICBSZWNpcGVzIHdpbGwgb25s
eSBiZSBwdWxsaW5nIGluIGJhc2ggaWYgdGhleSBuZWVkIGJhc2gsIGFuZCBpbWFnZXMgd2lsbCBo
YXZlIHRvIHB1bGwgaW4gYmFzaCBleHBsaWNpdGx5Lg0KDQpJZiB5b3Ugd2FudCB0byByZW1vdmUg
YmFzaCB0aGVuIGlkZW50aWZ5IHdoYXQgcGFja2FnZXMgaW4geW91ciBpbWFnZSBuZWVkIGJhc2gs
IGFuZCBpZGVudGlmeSBob3cgdG8gcmVtb3ZlIHRoYXQgZGVwZW5kZW5jeTogZWl0aGVyIGRvbuKA
mXQgaW5zdGFsbCB0aGUgdGhpbmcgdGhhdCBuZWVkcyBiYXNoLCBvciByZXdyaXRlIHRoZSBzY3Jp
cHQgdG8gbm90IHVzZSBiYXNoaXNtcyBhbmQgdGhlbiBjaGFuZ2UgdGhlICMhIHRvIC9iaW4vc2gu
DQoNClJvc3M=

