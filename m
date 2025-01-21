Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D055C02182
	for <webhook@archiver.kernel.org>; Tue, 21 Jan 2025 17:37:54 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.57])
 by mx.groups.io with SMTP id smtpd.web10.21799.1737481073668858766
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2025 09:37:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=J8gtVzqG;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=J8gtVzqG;
 spf=pass (domain: arm.com, ip: 40.107.21.57, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=eeLMJ1Ku3VDDs8XVpmKTERT+qRMKTV689nrwQZ1yRCEjD50tQ9nVL/odV7TVWiZmvgWSTXX6cYJusAUrq7onxImHyZMyafCAJzvpAflGmQMgI8r0z2sku47otLRSKztyc/Lrb3w/q95vpLHwU1bDLno20bV09NJMvLO7wRK8X2ZulLxcP7/uRJnKA7WRS2xsvxyXspS7PwAOfkb1+t2lmySE3YXTUw6BPd+1CjdywDOk/A4ukknqZIPk1ZyJ68uMs7mgbmFWZRGdgDIrvtiiWvDG9FwYwWbzTOyVXmPwjnP+wBMFArdcjuas8p54q2XH7JXSqY1zDO+CY3FJ6gLs9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MXa8OFLfArnZHGOBQpN6MQ4zWQ3+K2bg55nnJftK6X4=;
 b=CMukF9G5ZsKriVdVaGsLWTTiiiEDijX3TsfjaP6OuGWzbWWkIWAHaOChrmA/56zYmj/STN4ACUegqMEXHDpne1fyF7m7ZcR2gvzynQ1pwiP4IzepGh3DYSQAk6LQx11Oib9kp/wDc1HReefiZCjP4NVEHnbVKtas9LP5gLFFj9OYjVC3IwVSbIdIOgyVWxgvj36syIRvfdZI1CCsYX3WYdrhHdDsKICmbbBdIIjjJ6pcTmaea3u2nsFakD4amkIGt8c4j2g5yBtDzvaFiXX7ak1XGdZORAk8eM39T7gzNygQyMr2HZJIWnk6LkiNWzK6qIYBzy3CAVzS8pN5o3BrKQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MXa8OFLfArnZHGOBQpN6MQ4zWQ3+K2bg55nnJftK6X4=;
 b=J8gtVzqGQAFbBCCOqDCG9SJQM0r7FDvw1XuVFlkJyoAp3w4h8rSe1KGzX+OXZU3f8EBmstYYQ0r4MglJtrFOp3rctgk39YzntfPKTTd9us4TpffZ9n9pK4vxIAnQ8WWV6RS35kzBP+xpUrTRn34K0t7/79A926wedNrgZK03NMA=
Received: from DU7P189CA0008.EURP189.PROD.OUTLOOK.COM (2603:10a6:10:552::10)
 by VI1PR08MB5376.eurprd08.prod.outlook.com (2603:10a6:803:13e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Tue, 21 Jan
 2025 17:37:46 +0000
Received: from DB1PEPF00050A00.eurprd03.prod.outlook.com
 (2603:10a6:10:552:cafe::54) by DU7P189CA0008.outlook.office365.com
 (2603:10a6:10:552::10) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8356.22 via Frontend Transport; Tue,
 21 Jan 2025 17:37:46 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB1PEPF00050A00.mail.protection.outlook.com (10.167.242.42) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8377.8
 via Frontend Transport; Tue, 21 Jan 2025 17:37:45 +0000
Received: ("Tessian outbound 5faa93a968f1:v543"); Tue, 21 Jan 2025 17:37:45 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: c636e73acf9a2a14
X-TessianGatewayMetadata: La9B8jXooAoLpKkp/Sk4GEO3ot/9j6gPYOv6ZT5oWCubO4NtdaXwlCCGOHBqr9j34enIYAJWPIW3mVDrwQBILXuwmHaSEcjiytP8Nd4d/ohhx8OpM/mxzac0SjSWUuu1pRLLj8srfHBjKP2o8ZxI0eDDjDvCnk406HwJWCkJCvA=
X-CR-MTA-TID: 64aa7808
Received: from Lca8b805230e7.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id A196A68C-CDF8-41FE-951C-C5F3DA89D4BB.1;
	Tue, 21 Jan 2025 17:37:39 +0000
Received: from EUR02-AM0-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id Lca8b805230e7.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Tue, 21 Jan 2025 17:37:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uj82bUi3ISYJnvr7mhZlVbypGePRvRy3/sxvgBE9ti2JgO2NNAHkKTPBECg/bhawMqy4Uy2hyOQL/M/ln8KMzBJE6WoY8y0qZUs+EcOnEePoA6ugawHWBVFQf4FEJ25cAz8B9gr18oQfWWpuwLR8JjyDtv4PMFZVoul8N/Kb184Jc7IFArNbbhwq7458pRHW/LZfYoAiXlFYxUACpy8Q7bADckQW6MfZn/dGLPNkwM/8DI/rDod7bGY8diRH8xH1XC4FkSgs1sWPYKggxwkaF7Urvzbt+eQ6nkfsZhPwqRxx1lKB1re2Ixl7OjfmKt/I5Lxx8y+8UKnUeI6m4o/E8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MXa8OFLfArnZHGOBQpN6MQ4zWQ3+K2bg55nnJftK6X4=;
 b=qsS8Nln4FK7ypT6xktlooUfjjiA1R1WHElxN+eDfJkWqVnw8Mfw0StpTnSSKv6TXKMC3QQAoZt6gMEF9VF5gWzK14x8r2SzmHLVep4CSKh9jIEsp2uRLtX4SmvfQmQLqXjS6pfqjthLDkYn49DqNhunEVXAo38yXnYvbeRJU6OkAvjTED/cLCsCutMOVvM5MOzqNG6/5f2BpTz+PX8wKz/VG/aCx7WXQ531JUMs0IW5JpqExHMxOxOqUMb3X90VSWDr5/hJUtBmJXU1KtnHa/nhjronVjVv67L5inhZbDo4q8RyE0xYs2GnctO5RQ5BE3mlMqf7zg0I468PR1G969A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MXa8OFLfArnZHGOBQpN6MQ4zWQ3+K2bg55nnJftK6X4=;
 b=J8gtVzqGQAFbBCCOqDCG9SJQM0r7FDvw1XuVFlkJyoAp3w4h8rSe1KGzX+OXZU3f8EBmstYYQ0r4MglJtrFOp3rctgk39YzntfPKTTd9us4TpffZ9n9pK4vxIAnQ8WWV6RS35kzBP+xpUrTRn34K0t7/79A926wedNrgZK03NMA=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GVXPR08MB10890.eurprd08.prod.outlook.com (2603:10a6:150:1f6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.20; Tue, 21 Jan
 2025 17:37:34 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%6]) with mapi id 15.20.8356.017; Tue, 21 Jan 2025
 17:37:34 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"throos@amazon.de" <throos@amazon.de>
Subject: Re: [yocto] [poky] [master] [PATCH] gcc-sanitizers.inc: fix for
 aarch64
Thread-Topic: [yocto] [poky] [master] [PATCH] gcc-sanitizers.inc: fix for
 aarch64
Thread-Index: AQHbbCTAwEuHTOs/y0ypTwfUvyuv2rMhffkA
Date: Tue, 21 Jan 2025 17:37:34 +0000
Message-ID: <3469A2E8-B686-441B-9658-D1FDF4B4BD1D@arm.com>
References: <20250121165115.362609-1-throos@amazon.de>
In-Reply-To: <20250121165115.362609-1-throos@amazon.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.300.87.4.3)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GVXPR08MB10890:EE_|DB1PEPF00050A00:EE_|VI1PR08MB5376:EE_
X-MS-Office365-Filtering-Correlation-Id: f73c6556-386c-4c97-5c69-08dd3a42511b
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?MVJpUXVhRlVYaGQ2MDFYdXVxVTd0ZDg3N0w5b1N4QWluZG1NeTRYN1hhRld1?=
 =?utf-8?B?U0U5d29MTkpJdlRkcTJmTjJuV3d5Q1o0UGFXdW1WQVJLQnFMS0FOUlB5Z3ZD?=
 =?utf-8?B?S1gvQ25DR2xTM3crYVI3a3o4QWxKT2RLYU5WVXppNDdpdFZDeG5uRWxxRmJp?=
 =?utf-8?B?RERrZjdlRW96RllIclErb2V2RWJER3cvYmFuS3lVcGV1UjFLM1ZWT3pSY0M4?=
 =?utf-8?B?cXBjYytJd0RMWVNOQ3hCVUcrOFdKK0Y2WlBvVzlySlplK1IraVFER25VLzhx?=
 =?utf-8?B?WlR2MWlBRWg5RitoemU3WUN0Sk5tRzlDcEVpYTBEd2RaME9HRFBEajVlZFk1?=
 =?utf-8?B?R0ErUEtnejBpeHdodTg2Vm9nSUI0QUhKYkhQZjZva2pPV09UcGM4cTg2aCs4?=
 =?utf-8?B?elorcFY3eEpyWnRMSWFaN0NqUVdoQnZ3TmRORnVydG9pME4xRE5mTm1DdERQ?=
 =?utf-8?B?T3ZieTNMcFo5WWR2emZHSVliZDVhMkRrTWlHcGR5TENkK2ZSbGpWaDVDbThQ?=
 =?utf-8?B?aENIc3h6ZFozZVJITno1c0NHM2pVRXJxK2JHN0U4RFlxeTdhSDY2VzFSMWhi?=
 =?utf-8?B?QzhCWnArS3E0N0pxdi8rUEgwMW8yd3RRbXRwejZPUDJNcjMrMG5PdzNBL0dC?=
 =?utf-8?B?K3RDL1BmWEl3bUorTUVHRzE5RmF6K2xNaWNDRkRVRlQydFBtT3hObWJmajFa?=
 =?utf-8?B?OUIwK3haczRmbDdJOWZ6b3lSdGc4TG54WGl1ZXNoeVhoSzczaFZyTlJDcUM1?=
 =?utf-8?B?Sjhsa1FRNDlhZVhuOTlWb0NIYjRQNUE5WGJ6dkd3cGpBRDFsWmRZUnhGSzdp?=
 =?utf-8?B?bUVkY2J0Qk9ZVTl1OXIvalFvOE9OZnEyNGZtbm84VUdZWW4yVEtLSUo2Y0RX?=
 =?utf-8?B?eGtLWG5UMFZIMi8wZmwyM3pQakZmcXRlYUQ5NHI3QnVFMFdIazVlalhtYmR0?=
 =?utf-8?B?UHR6QVdvK2FNZU83aW9HbXRBVW9jcnFmSWR0amhJMVJOcDJmVHNab0dMVkJM?=
 =?utf-8?B?RmVzNDVQQWdpaFVwbjV2Z3B0TzNBUmMyUHpUN2RhUzJRYmNNMnRJOHVPZ0hM?=
 =?utf-8?B?UDF0cUVxSzVKN2N3SnhWWWphYTVJMExoRVFGSlE5anZ5amtRbEx0dmtqRGh3?=
 =?utf-8?B?YWh5MGhtSndwMktNUi9hbGhGK3FuUytaY29wdGRzYTdWMmZ5TkdsdXlGdFJr?=
 =?utf-8?B?dUpHeWFyODRxZmhIbW5jRFBva2tVYVByUmZJdzJVUFA5eVlVZ3NHbVVxa2U4?=
 =?utf-8?B?cVNhdDQ2a3phSDUrWEF0SWpOWkt0Zmg1RGVSa2FQRXYzemtmQVhDam9xc1Iy?=
 =?utf-8?B?eVRkSWliRGxPaUxTZ0NrNk01OXVpc1AySTVGZFVyOHBVaGdhUFhUOXo1M1By?=
 =?utf-8?B?dnVXS01MMjhWR2Y5eWZWaUFnMkFBMWVzRE96YUFyR3hyamdlb0RYS29YTXc0?=
 =?utf-8?B?bFlrMWVaSHIwbVVaR1VGRFBjY0gzWWR1aVgyZlRHTFM5TlhxaG9seWsxV1BO?=
 =?utf-8?B?Q2FvWjNpWXM0dW0rT3J3SUtSc1NxeTlwSEh3Nk9GQ3dHYUgxUHZNLzdEb1g1?=
 =?utf-8?B?MWpvUm5UQ0JnTGoxZFJNRGJzUkswWm8rcVA4aUR5UnZONmdHM3dmNU51NkMy?=
 =?utf-8?B?SzNtZW1sMnJWRmYrWHJLazZtRnE4MHV6c1orMGdGc3pveG9hR1F3dUJzVHk0?=
 =?utf-8?B?Slg4MlNOeTQxdVE0cVdtVWNyaVlMMnhqM2pDczVQN2tjb1NZK3pRRVI5Q2VL?=
 =?utf-8?B?dXV5ek5EV1QwR1JKcE1kdGNicGVadEZ4bHFBd0VTc0VYTERJd3lvTHhYUXoy?=
 =?utf-8?B?ZFEvVmJlMVRlNjVoUERrN1l3bGpxVjlkQ0IzSzRpdlFNWWdHNHRRVmVvUEQx?=
 =?utf-8?B?UjZlSldRTUNGU282U0pyRVVqTlFXVGdZMCtldjk0R1FpYWwyMTlheHJxQ3ln?=
 =?utf-8?Q?T7OOGp79kfRaK58ZXVT22bOb20YUFU6p?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <1355C36E1AE97445A99CD5AEE11942F8@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB10890
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF00050A00.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	e12551d7-e952-4eac-c79d-08dd3a424a80
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700013|35042699022|82310400026|14060799003|1800799024|376014|13003099007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bnVZOVllYmhHZmhnN2JieWNkMU1mV2ZnSVF5dGcvbWhQQjN4K3RISHRmK0ZP?=
 =?utf-8?B?L3ZUQ2lKTDZBeDFYNGVWT0hzYm5aU0poNFkrTTFFRXlwczNXSDRHSjkrQVlu?=
 =?utf-8?B?YnlMNHo5ekkwS01CcUtwTFovYXhyc3RjNkJqNzUvczJQc0lFSC9RMUFmOHlh?=
 =?utf-8?B?RG56ak9FeExtakpOWmR0ODFqMWdKbERGNWc5ZmNKVnV2dU5yV0tZa01iQVpw?=
 =?utf-8?B?OGUraFExNzFGM0thNlVQWUdSekdZWDNRZlZERTVpMEQ5SjJndmxxNVBhbjla?=
 =?utf-8?B?alc3M1RHOU4ya1lsKzRzR0F5eTRLTDRGRURBTEFEZUUzM3hLWGIyc1A4eGNN?=
 =?utf-8?B?ek1MWENxVlMzU1ZKVVlvYno2ZFJjY0k0ajQvSkQ2cHJ0WjhFakpKV0ZrSjhC?=
 =?utf-8?B?NGF1VDByTmo2V010czRESWJGczZQMGZCVmcyZFFMREpMSzc5dUlHR2VWa2xy?=
 =?utf-8?B?TjRIZlNiNTRFNGc4TnBDWFBQZDVmWUYrclRONmNISWRiTHJrSnNuaEhiMERE?=
 =?utf-8?B?NlVRM1dNWnlyTHhod1pVc2dZYmF4T1dIYmtGNE11RzdyeStSL1ZGY3ZQQ0s2?=
 =?utf-8?B?VEdZMmxDYTBVN2NhV1FLSm1wYndKSm1vcHBQRzJYcXNMNEVaWjMxSDlxZTlp?=
 =?utf-8?B?Q0dPcGtNQXNsZ1p6TnF5YWpQZFVEVzZURUdZZEE2VVV4WmZySmIrWmF0b1Mv?=
 =?utf-8?B?dWU1TXhxbmN3TXM4T0UvbkJaR2w4UTZCZXhOUGo4cXdtbnFsUmRObGcvSFNy?=
 =?utf-8?B?WFp0NHZNZmd5VVBBQ3NacWN4VUhSM3pqa2xQcEUwcmtDakxya0N4ZGZmdDRr?=
 =?utf-8?B?RURkbmpyMU5IZXhhckNKRmkvdU9XMmVZZDZzR2RyT3dBb2dJK1d2aVJtNVR2?=
 =?utf-8?B?bTJzeVdQOGU1aHJvc05GWUR2RitBZjA3ZjhaZ00wQWdzRTFIVHVsQnZKZUN0?=
 =?utf-8?B?MkFWTEZ0K3NkS3B5MDJHK0sxTTc2WlpsZ2tPbW5NeURlT3hyRFBVRGdUVVV1?=
 =?utf-8?B?K25uaC9tR0NlL0IyWVp3WEJsTGpOV1lpekdBSFJaRU9VaHVnalhieGdTSDRI?=
 =?utf-8?B?dnFRd1g4RVNjUm9kS0w2NGEvZUNDYm1uakhyQlpuR0djbkNybUlPRGpDeitR?=
 =?utf-8?B?eExHTWo3SWNUMkFLOUdpQWVTdHNMcXNER3BpVXVrUzg2ZFlnei9NN29MTDA2?=
 =?utf-8?B?YW55NERGRGRTZWs1aWVua1JXUkllaDJtK3NmYjh6WlVGSWs5RzlNUERUeXoy?=
 =?utf-8?B?UDZJUXpYT3RIU0RLTFZDUlJ4K0NuTm9ESkg3QXhZWU50RjljYmJiRmRQQXM0?=
 =?utf-8?B?OHY1bkFINVVrZkJTdHBTVHFZRHhtVWJwUXhkTDhUS1l0NWRnSnM4OTVQcDVi?=
 =?utf-8?B?eTMwaVZmUWNNd2Nwd2NCL0VvNEdMQnZrUHE4Wmt0eTJrM0d3YUNmVlE4NXVP?=
 =?utf-8?B?NmlBSlJDaHlONXJIcTFobTVEVnV5b3doZmw3NmlTZWNDK0RUV1ZNaFBkRCsx?=
 =?utf-8?B?T1ZmVGRFZlh1bmxEbnAwenNMaitQbVZvMmJNVWtsaSs4NG9qdVNnSUI2S0ZS?=
 =?utf-8?B?TC9Uc28zUktmZU1WQTdWQ3BhMnhPMnM0Z25zNmhDTTI3bnJXaWk2aDJxRUlD?=
 =?utf-8?B?NE1vWTUzVEs4c25YTXRHQ2h3QjhRTVZzMEVHK3NxKzQrTWxYWHJ5RU1Dd1lu?=
 =?utf-8?B?dy9ucUZ2WWMwMW4rVm1qRnVxU0lEZWY4cTR5amRZZ3Vvelp6NkFWMzlVUm9I?=
 =?utf-8?B?eHAzRUQ1aEJkek1hTUxvNSs5MkdVck93NU9aU052aDE2SE9CdkN1S28xd1FC?=
 =?utf-8?B?czM2UkpkSUowTHJIK05xMVV0Ym5KV21Ha29USFRyOW9kOThzZG1JMkxjMmln?=
 =?utf-8?B?eFRBb1dGK0lqZHg3Q2NMQTBGL3Vwb1lFSEJSSURhRE96K3p5Sk5nSWNVbGpj?=
 =?utf-8?B?bEVIaWo4aWtqZ0hpYmR3eU80ekdZMWxmSHNHOUR3VnZMUmZuUGtidU55ZER4?=
 =?utf-8?Q?Jtvt/fGnqFvAb1eOXoWlaXvGRVrsG8=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:64aa7808-outbound-1.mta.getcheckrecipient.com;CAT:NONE;SFS:(13230040)(36860700013)(35042699022)(82310400026)(14060799003)(1800799024)(376014)(13003099007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2025 17:37:45.9478
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f73c6556-386c-4c97-5c69-08dd3a42511b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF00050A00.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB5376
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Jan 2025 17:37:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64604

T24gMjEgSmFuIDIwMjUsIGF0IDE2OjUxLCBUaG9tYXMgUm9vcyB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8dGhyb29zPWFtYXpvbi5kZUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToN
Cj4gDQo+IEZyb206IFRob21hcyBSb29zIDx0aHJvb3NAYW1hem9uLmRlPg0KPiANCj4gVGhpcyBp
cyB0aGUgaXNzdWUgZml4ZWQ6DQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9sbHZtL2xsdm0tcHJvamVj
dC9pc3N1ZXMvNjUxNDQNCg0KSXMg4oCcZml44oCdIHRoZSByaWdodCB3b3JkPyBMb29rcyBsaWtl
IOKAnHdvcmsgYXJvdW5k4oCdIHRvIG1lLi4uDQoNClJvc3M=

