Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1BFBC3DA6D
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 06:47:59 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.98])
 by mx.groups.io with SMTP id smtpd.web11.15126.1747723676581592781
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 May 2025 23:47:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=KpK7IDgM;
 spf=pass (domain: topic.nl, ip: 40.107.22.98, mailfrom: mike.looijmans@topic.nl)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IhKY7t0iIIs2JTQUsdUQHBDPZX90oRtcy975scXasL5YoC6zRbUXqvScrwHDU1jO3ZWB6n8oBl+N/W171NcBD1Z1s+8OfCgNq55KiH163DhaqrAIShiyE1swfTl/XqJC60NEbiuTzGN6tl4HTuiq+KjrzCCXd+g4FEC1AuU9iEelvP6M7MNAYaGrqZVAQzXjIVwYE4zV5VDcCUEh55Yrctm4nyCCaGdPjxOqsM9xls9wnIdXhUfmTfH2hqQ7e3UNYDUAcbTRJbnEdNLN25m8uRfJKWAiVPfaAK7PgyKCh+08qlvfQuo20lV3OQyw/iVisk92X4Shcnx/gfEvc/kCMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A9ECAncAaQm82Ye9/RIE4Sq4M9fbZSeXxY3Qfa6QUHE=;
 b=Gz0KdU4d8m48bEnfpn0l+c+WEr9q3393BT0ieqJRJg9uoML3BLSKx09JgImuNPMucNhZ4EvveON4kQUzPZB3kuSuuL7AK1E6Z9deH/uJFHShnAQgq6Dm9jIcHLYmtUg5PigjBZyk2rgOk3crtCgSkCWoidIHeAuxwy3VcYJx09rR9nxsf6Q3LHNxd3rmMLd09vx8Kp+nNN4IYn4nWzerm3EGDzdlipnGjqshH8dPKQRq65yw19BJVM6aPx1DbO7bJ7lUadzcRX5FFEGr3lt9MHL8HXfNgaMf14x/0+gGWYT+M96P7/XWvtdlWWDy2n+o+3geMyCQ5Z461i0DdsTOsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 13.93.42.39) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=topic.nl;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=topic.nl; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A9ECAncAaQm82Ye9/RIE4Sq4M9fbZSeXxY3Qfa6QUHE=;
 b=KpK7IDgM924IRaXOSaUzzZNaHyFpEmA9nj33dUkHWew2LQexYegOcRoRrJFJdpCj/CPn7lPh/jcQ0vXrMMauIGolqByrnxGFft48UroUDGM2lTb435jQAvQzWuettSjzGMR+LRrBnFzHr04xy/1EmfsIMS1vBwP4rXAU1BT8XOhBG5hXvpJOkS9COKuCKrdRwgMn/eeTs2UvVI/hN8+b067ZyQuTuklmw6rR0sGFOYpWyhfSyYXXRD1GLCyTA78RzGnzcM5uZzpBJMer0/Wipus8CYYiTGNebLFeg8Op7wVFm1pc6nj4mhwGQC1EALLs+gsITdvxZ+gDZwkktEnLGg==
Received: from AM8P189CA0013.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:218::18)
 by GV2PR04MB11096.eurprd04.prod.outlook.com (2603:10a6:150:27b::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Tue, 20 May
 2025 06:47:50 +0000
Received: from AMS0EPF000001AC.eurprd05.prod.outlook.com
 (2603:10a6:20b:218:cafe::29) by AM8P189CA0013.outlook.office365.com
 (2603:10a6:20b:218::18) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8746.27 via Frontend Transport; Tue,
 20 May 2025 06:47:50 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.93.42.39)
 smtp.mailfrom=topic.nl; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topic.nl designates
 13.93.42.39 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.93.42.39; helo=westeu12-emailsignatures-cloud.codetwo.com; pr=C
Received: from westeu12-emailsignatures-cloud.codetwo.com (13.93.42.39) by
 AMS0EPF000001AC.mail.protection.outlook.com (10.167.16.152) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8769.18 via Frontend Transport; Tue, 20 May 2025 06:47:49 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (104.47.17.174) by westeu12-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Tue, 20 May 2025 06:47:49 +0000
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com (2603:10a6:20b:42b::12)
 by AS5PR04MB9729.eurprd04.prod.outlook.com (2603:10a6:20b:650::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Tue, 20 May
 2025 06:47:46 +0000
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::e86d:f110:534e:480a]) by AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::e86d:f110:534e:480a%3]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 06:47:46 +0000
Content-Type: multipart/alternative;
	boundary="------------8tsS4LwOOf765o6hryxyiSIv"
Message-ID: <e5b84c06-1814-4755-a049-e36c47a99f90@topic.nl>
Date: Tue, 20 May 2025 08:47:45 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [PATCH v2 0/3] Add support for index files in
 SSTATE_MIRRORS
To: yocto@lists.yoctoproject.org, denisova.olga.k@yandex.ru,
 "alex.kanavin@gmail.com" <alex.kanavin@gmail.com>
References: <20250425060119.5092-1-denisova.olga.k@yandex.ru>
 <CANNYZj-f+LsCv=Ez-NPo4M-vh1V4nK2t3tFh3X38pZXYmJnuZQ@mail.gmail.com>
 <12851747494093@mail.yandex.ru>
Content-Language: en-US, nl
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: Topic
In-Reply-To: <12851747494093@mail.yandex.ru>
X-ClientProxiedBy: AM9P195CA0029.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:21f::34) To AS8PR04MB8644.eurprd04.prod.outlook.com
 (2603:10a6:20b:42b::12)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 
	AS8PR04MB8644:EE_|AS5PR04MB9729:EE_|AMS0EPF000001AC:EE_|GV2PR04MB11096:EE_
X-MS-Office365-Filtering-Correlation-Id: 52d7fedf-ec58-43b9-7d3b-08dd976a3cc4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|52116014|376014|1800799024|366016|13003099007|8096899003|38350700014;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?sP9HLcbn+aREAL1Rfg+jXLdYMQLeLe8HiwvJnlSeUOmVBOh5CkR5Aqf94PRj?=
 =?us-ascii?Q?9EvgO0nWMYte5hzsk9l8UnSPEiZJ1nQCZfFyl/9ilUgfSOFupSbSeZ2DU4AN?=
 =?us-ascii?Q?qoZsPXFVMSZgOz2x45nSROwTVAGrI1sbqsEu6rQ5dWpLCABe+I9mmx7iRE/f?=
 =?us-ascii?Q?/8BMcvBcLyy6LVVFuTQsBTgGqo0GfJO0u3m/onUfJVu8ERsFF3PoM/vlUkXc?=
 =?us-ascii?Q?egi3EQ8zAdsA9L+xsTjw0sK7f2A2+O2bug/EE38NfMzdZ07AucYmv9iewTyt?=
 =?us-ascii?Q?B1cESyGJKkPrVjLlqk+KGgJ4ta1VCRMiLKjFx8aRZyxv7af85iOaf8C1LW0u?=
 =?us-ascii?Q?U5s7mW8jnC9O9v6s3TqAxnC9rKyXVafWPpHb9sHEkWSApaFv0jrzDZjfEpVq?=
 =?us-ascii?Q?/sZH2wzo5QcEJd5odCzJVEYcbyQ4/7ty3xk5q0rB1T0Jm4HLLR5hltAEQLhO?=
 =?us-ascii?Q?lyuyNZsY8Thd6wRwm/yiaaQFyur7/9EewXN9XY8LY5aH6bGmXJClMGl9K9NM?=
 =?us-ascii?Q?ebj+O9Nd9nX0qN6NlGY0qKpHxin1zUH7h3x48IKJWGVgCo/ibyXh35o4/nef?=
 =?us-ascii?Q?CS73R2xXYMRCkhPMhwnLNkSIUqnnMiYuCk7yR0GHCLazdjCH3U0mXocL68Ni?=
 =?us-ascii?Q?k0U42nJUrWSEi//cC9tW1IseWTXZmyww7iDwU7A0RhZCBuqw/1QbHxNx9Fxm?=
 =?us-ascii?Q?xdXebYmKzHcXd75j9NzFQkF8ycP0A+KCSy6jah1xe77I9Ue7St9DegH1kADr?=
 =?us-ascii?Q?Dm7Ld83eA6m2Phbi2JYaUPO9/spM9FK+LXI2v3GT3T2SSDGkqeDYHtVNngPt?=
 =?us-ascii?Q?RNQuS2Hr7filnBWRN7FlcTX4v5eTJTp3Zl50kMYpRYkt8Gatl/21KS7EVYNL?=
 =?us-ascii?Q?fFsRu77VOHLYxA9HBXJAeKmEKCBbYarM9cyxxOtdQOCOj8bpQ51LVT5ubNd4?=
 =?us-ascii?Q?YFuwE15BA+t6LbkCK/jMTLpCVkpUUuJpErKhCGo2Lr783CYXXgPT6rN2Ymv6?=
 =?us-ascii?Q?gHuvu5UWxwx+Muy0JdWH4Hbh3rkT/DOZRnI0KyjmpFnlKGmU2BpoLnqzbcVw?=
 =?us-ascii?Q?Ey978R4SwPEZHo67RwvGf7YMBdQmsz/O7P2VueLXrFdXay799TM7dr/VvyTC?=
 =?us-ascii?Q?skGV0rNSrpyD3MmtRvBP1FrRuyIhqEo6+M2Sg/hfLdBGGvlUujNDFEPqF5ge?=
 =?us-ascii?Q?KLtKUkYnHd7Sy5aNO6OkujCwNIuOTeinbFGPih2mZX0UE4DlscjsaEiSHGw6?=
 =?us-ascii?Q?tHRK7ZXJTJdY7uNCKOCgF4IjpmGjcvH3fBW8jxmVg2wwAwIG2ndBD4DMqRtZ?=
 =?us-ascii?Q?lCZ8g/4hLRjZT5zV7Lwu+VeY6wZvHzSVulkr/aoVEIzLaWSUZKfmpXQGBxLo?=
 =?us-ascii?Q?m8teMU0h2CN28kEPtGDZ2vSbCIZwYqp1xlXavuQcwcZk19VRaH9VJ+utEDIp?=
 =?us-ascii?Q?fHoLdDZcAWg=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8644.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(376014)(1800799024)(366016)(13003099007)(8096899003)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS5PR04MB9729
X-CodeTwo-MessageID: 3a7be16b-845c-4f3b-94cc-bcdf4b55d1d3.20250520064749@westeu12-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001AC.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	817ff9d5-769d-409d-1c53-08dd976a3aaa
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|1800799024|14060799003|36860700013|82310400026|35042699022|13003099007|8096899003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eEUxOEVrTm1mYW05OU4vdXNKTHNleUlMNDNQMU9PeDJrU3hqNVJrem5xc3ZK?=
 =?utf-8?B?MURRLzhSbEFpQnJEckpkY1U5UnNLNk45OFk2V21GbDBpeGhnN2ExQllIVXkx?=
 =?utf-8?B?Yy9lSUx2TWg0cnIzMDVoK0xlTFVWenVGVHlPOEU3N1VRTVVoTnZsTm5tWHlh?=
 =?utf-8?B?VEo0NHVEVjh5TXp1b2E2NzZLVk54YTZQTkp6dTdjZ1lxMS9HQks1cUhTeWZp?=
 =?utf-8?B?OUhtN0hTVG4xNmFPNjR1dTRsY1RnbklrV2FxRS9HRDdsSTZUYVJsditSb0cx?=
 =?utf-8?B?eE10aDJFb1VOZDNuRUFIOGMyS01FOXBNQ0FsSGFEQWkxQUcxRHhLaW5hRE4y?=
 =?utf-8?B?d1JoUlpHd2lhQlNLOFlLTTNsMDVVdi9xa0VCYnZsbVlsNExPWmZWdUVUM3dv?=
 =?utf-8?B?OVFGbm9BU3YvV1lmd0VJa0JYcHVnTlk4RWpiYUwzMFdYbzZhUE1veEE0b21h?=
 =?utf-8?B?TWY5dERsL2h2b05KVUFZNjc4Z1RxOTFtV3FZemlCV2g4VzdHemdvK3cvZmZN?=
 =?utf-8?B?eGFXSFp0bzZ5WWdaSTI1eTlMV2J5ZGkvSGsxNUY3L3NxdnFWVTVJWm1KVU5n?=
 =?utf-8?B?NS9wclptQVNuWEdaOHRwNUlGU2xhRHRVR2FIK0hUOUlJSG5lSFJDOElYeUE0?=
 =?utf-8?B?T0RYeGEzeE1nYzN6RE5sT1NYNjROSldUNnByNTdxbkd3UkJqb09TaHIrRFl1?=
 =?utf-8?B?YXdORW5kaVFPREliNXdkYUNuTGowT0VJWEp3MnNhU2tzRW5KUmlneDArQ1JK?=
 =?utf-8?B?R2doSjFWb0ZZenRTMTh0VXlicjVndFNLeFJtUTE3Ni8yNHR2NGtFQ1lucUdR?=
 =?utf-8?B?M28zWWxqeDNKaC8zK05IZnJpNnZtVlhFRlJRdllxRkJrVWZZL1REaHVFdDlz?=
 =?utf-8?B?NzJVa25ISGpKTkw2b3I1dGxRQWU0UnZORUM1ZWFrQXNlampEeEE4VmVRUllv?=
 =?utf-8?B?L2NycFQ4S1RkNWdJZ21RZ2wvcE5XQ0YzNVBLdTNrVm00S2tLUyt2QjFvL09Q?=
 =?utf-8?B?RVdLTGQxdWZCL2pxb2M4ZUgrRGJ5WEEyM2Q3TTRtTzE5dzJJYU1YTzUwT2Yy?=
 =?utf-8?B?STVsbTNuVS9abTd4V0QvNmEyc0Zwa1ArY3hXOVRHbzNrdWJOdXVETXE2eUlL?=
 =?utf-8?B?V0kxUExJNFJ6QmpJQlJ2K20yMDVTeG1xOVg3SGZvWFRUeUZCcU92QjFGTmV3?=
 =?utf-8?B?Vkh2ZzNyOHFpc3JVSWhEK2dOWERjSXZtK1MyNGl0UDNlYlJFb09NdVNreXZi?=
 =?utf-8?B?dE1pT2RoR2FJem9NZzVnMFVsc3IwbkJHSFlEdGhnQUFreUtROTlYMHcwU1lK?=
 =?utf-8?B?RmtoSzVUMWV1bEhDUk5SSU1JWkNUM0hDckRFMi9ERWREdkdsdFk4TlN1emda?=
 =?utf-8?B?MGN5TEFnQmswaEhLazA4WEg3NlNqYXhibWlWL2xTOUVYbWQxZVIxcjFWMERO?=
 =?utf-8?B?MUpqSnVWRm1PLzNpN3FxOTNFQndZTEo1VlF5dEZSSHF0ajRNMENWRElTUEdY?=
 =?utf-8?B?Um1EL3ZOcFpoU3JqT0EyOFFGZE1mZ3BEc3JwclhuQkpyczdvU3llbFVjaTZM?=
 =?utf-8?B?bnRmc1JkSDFNWHAwcE1JaUM0cDVQU0FyWTBMME1wcVB1aFVxbS95MEVHUGlX?=
 =?utf-8?B?bDRxczl1aUFndDNFY0w1VlMxNmxFUTZqUnhycW9Yam5rV2NBNzZIUDNYV1RE?=
 =?utf-8?B?ajkrZUNSN0UrQVl1d2I5WSs5alloK2l2dVhqVE94amh0cHlBWG03ZExRcjBQ?=
 =?utf-8?B?emJNZXpsZWVwcTlKNmE1cE9kS3FPRjdKaUp4R09neFBPZEdWRVBEL2tzR2FG?=
 =?utf-8?B?R1FBVW1Ga0hyU1NkZmhjRW9vRVZIanBlcTQvMUxQWVpHTCs2K0R5WForbjIz?=
 =?utf-8?B?TmpQaXV4bXgvZ1ByOEwvOE1sZFpiaEpSaXNxTVU3OFd3YzV2NklLemZ3aFdL?=
 =?utf-8?B?VU5LbVJWeHFhUGpHZzh0TFgySUJxM2dTK00rdi8xck5ma0JzMzVYS3d4bHVQ?=
 =?utf-8?B?aSsxdHZSV0ZBPT0=?=
X-Forefront-Antispam-Report: 
	CIP:13.93.42.39;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu12-emailsignatures-cloud.codetwo.com;PTR:westeu12-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230040)(376014)(1800799024)(14060799003)(36860700013)(82310400026)(35042699022)(13003099007)(8096899003);DIR:OUT;SFP:1102;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2025 06:47:49.8141
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 52d7fedf-ec58-43b9-7d3b-08dd976a3cc4
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.93.42.39];Helo=[westeu12-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001AC.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR04MB11096
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 06:47:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65359

--------------8tsS4LwOOf765o6hryxyiSIv
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Performance wise, what struck me more as odd recently (on scarthgap, but I =
suspect master will have the same issue) is that the sstate-cache mirror se=
rver gets queried for many items that the buid doesn't actually need.

For example, I change one application recipe that nothing else than the roo=
tfs depends upon, but still bitbake spends over a minute looking for stuff =
on the mirror server (which I access over SSH over VPN so roundtrips aren't=
 exactly fast) saying "Checking sstate mirror object availability". Looking=
 at the apache2 log, it receives HEAD requests for hundreds of objects that=
 have absolutely no relation to the changed recipe.


On 17-05-2025 17:06, =D0=9E=D0=BB=D1=8C=D0=B3=D0=B0 =D0=94=D0=B5=D0=BD=D0=
=B8=D1=81=D0=BE=D0=B2=D0=B0 via lists.yoctoproject.org wrote:


During development, we used a configuration that included multiple SSTATE_M=
IRRORS, which allowed us to repeatedly perform rebuilds using cached artifa=
cts distributed across these mirrors. However, this setup led to delays, so=
metimes lasting several minutes and, in some cases, over ten minutes. While=
 such delays may be negligible for other members of the community, they bec=
ame inconvenient for us. As a result, we conducted an experiment aimed at m=
easuring the time spent checking the cache mirrors and identifying possible=
 areas for improvement in the interaction between the build system and the =
mirrors.

...





--
Mike Looijmans
System Expert

TOPIC Embedded Products B.V.
Materiaalweg 4, 5681 RJ Best
The Netherlands

T: +31 (0) 499 33 69 69
E: mike.looijmans@topic.nl<mailto:mike.looijmans@topic.nl>
W: www.topic.nl<http://www.topic.nl>



--------------8tsS4LwOOf765o6hryxyiSIv
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">Performance wise, what struck me more
      as odd recently (on scarthgap, but I suspect master will have the
      same issue) is that the sstate-cache mirror server gets queried
      for many items that the buid doesn't actually need.</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">For example, I change one application
      recipe that nothing else than the rootfs depends upon, but still
      bitbake spends over a minute looking for stuff on the mirror
      server (which I access over SSH over VPN so roundtrips aren't
      exactly fast) saying &quot;Checking sstate mirror object availability=
&quot;.
      Looking at the apache2 log, it receives HEAD requests for hundreds
      of objects that have absolutely no relation to the changed recipe.<br=
>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">On 17-05-2025 17:06, =D0=9E=D0=BB=D1=8C=
=D0=B3=D0=B0 =D0=94=D0=B5=D0=BD=D0=B8=D1=81=D0=BE=D0=B2=D0=B0 via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:12851747494093@mail.yandex.ru">
     =20
      <div>
        <div><br>
          <p style=3D"line-height:1.38;margin-bottom:12pt;margin-top:12pt">=
<strong style=3D"font-weight:normal"><span style=3D"background-color:transp=
arent;color:#000000;font-family:'arial' , sans-serif;font-size:11pt;font-st=
yle:normal;font-variant:normal;font-weight:400;text-decoration:none;vertica=
l-align:baseline;white-space:pre-wrap">During development, we used a config=
uration that included multiple SSTATE_MIRRORS, which allowed us to repeated=
ly perform rebuilds using cached artifacts distributed across these mirrors=
. However, this setup led to delays, sometimes lasting several minutes and,=
 in some cases, over ten minutes. While such delays may be negligible for o=
ther members of the community, they became inconvenient for us. As a result=
, we conducted an experiment aimed at measuring the time spent checking the=
 cache mirrors and identifying possible areas for improvement in the intera=
ction between the build system and the mirrors.</span></strong></p>
          <strong>...</strong></div>
      </div>
      <pre wrap=3D"" class=3D"moz-quote-pre">
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

--------------8tsS4LwOOf765o6hryxyiSIv--

