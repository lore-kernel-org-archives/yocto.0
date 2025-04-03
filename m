Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B4FC3600C
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 13:17:31 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.83])
 by mx.groups.io with SMTP id smtpd.web10.13063.1743686247959686258
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 06:17:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=TTInw4wa;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=TTInw4wa;
 spf=pass (domain: arm.com, ip: 40.107.105.83, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=kkyBGTLhz6IBhus8gZF/fkeU5q0GOGL5IikY6ZiDRytnXeyze9hK0LukYuWjftsfNQuBIdcZBRFn6wwT0SEmDf1YeJIb8PkoKZAIswdfuEblo4fBp8s12SdIfTVr25yEyAc4yhDMVA5C1Z8ZJqr43n3i5NKAhNaJPnvj7BSwbEmHGDtCVFCdYSHc2MMAtvZ7p/vUVzS9Lj0Sbz2xpKMgirY2djjQ9uVH5g097gzWBadGfNdwIRZR72RniV/kcNBvXmSZsbKMfPziYY6IrAQABLcTCbk3oSs0BP7xn5L2Rt6XQ1xFRhQsBcxFmq5X8hRM49bUYe7BbydWnfA9Ldd2NA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5TALQo9OEqtjL/y0rV6IBAihenrvXVpwiJO78hHzPMM=;
 b=Ka4yW9l5U4Aq9QmD5aTH40KD939mxWFaDRkuJEUgYUzi5GeHvCJet0na5yRaV+/vMpevzPldhh0i8eKC6Pz4P3P7hK41W1b5K8XdLjRyZXEaQGR2mpPD12Mkzp+yiKts2oKSuib301Af8rNX+Z83qkGDxXNQusrN+OTA/x319rMCIEhumusZL3jlDfdgZi+1Vp6vIT73GMIlrTbBeAHR7hKtKlohpardb8+1BhYfL3Ekpzb3gju609KCLaXCDuYWp6MkL1K+lPDC9GDv5QpX9HG8sHWfpDBtGreOPDErVuDkvWWRQ7rr6+YTDvVTdbfEU7rXjlyUOgY8m/DdomP/KA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=fail (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5TALQo9OEqtjL/y0rV6IBAihenrvXVpwiJO78hHzPMM=;
 b=TTInw4waXPLfZPqIN00sjSYDAiOM1ZqDwNC1ZywcDYuspUsjkGwSSLYdfwZTZ6aMtVwswd3nj6ySGE7zbfRfD1c4W8ERiXQT8x2GW4OiohsAc8TmAtZXhT43MYfY8uTfg1y2lCBNsiplnDb+q/rKoGWYXg3vHbhYvUk4wPmPNkM=
Received: from DU7P189CA0008.EURP189.PROD.OUTLOOK.COM (2603:10a6:10:552::10)
 by AM8PR08MB6500.eurprd08.prod.outlook.com (2603:10a6:20b:361::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.52; Thu, 3 Apr
 2025 13:17:24 +0000
Received: from DU6PEPF0000B61E.eurprd02.prod.outlook.com
 (2603:10a6:10:552:cafe::f4) by DU7P189CA0008.outlook.office365.com
 (2603:10a6:10:552::10) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8606.26 via Frontend Transport; Thu,
 3 Apr 2025 13:17:24 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com;
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 DU6PEPF0000B61E.mail.protection.outlook.com (10.167.8.133) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8606.22
 via Frontend Transport; Thu, 3 Apr 2025 13:17:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jMlTVEHgSLc4evHqaKD3oIoRpt4F+TMrkXuLyp9Tfz0eQswBd2tQRlDyJUNAS9xAOLzCixQsEkiRvgrAugTpjHjccllr/mXw1C527tqW7+acf2baGXTri4BFraMBD1DUIfpdqL04RmIWdcBi0nMdUVUuqAwRkH9C7kFvKmUIUTE+xRDMi5Gs7pRn1w1HYseFN8EnSMtrk8OzH2Tytocw3SwIc930Dv5ug8JxhxXSL74rAWTtifHJmcfPdFFENf/8cMRKS/gKK5udV0ZCBT1VtthAI3sVFfvtSJUkcb+tyRa6PuiKju0DG5YyIfzAlbe8M06cNd2gq6IaYCOLiRcIyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5TALQo9OEqtjL/y0rV6IBAihenrvXVpwiJO78hHzPMM=;
 b=e2iF3h21r5YJUNMmCxOcv5i2uF+jdBG8gFhrd7j+CoCuGe/BDLTEEaOzBxk1StwoWSDEa3pjmEUvhag0xM7Vce0aDXObJNkyYO/BuyMX2qqceuVp69VqDbK8iDMUkvJsqVjocIkIK6VoTq9bJHHOVU1c8qGpNtX/jy9IaxbJAP6RgOhluXub6MHe6rUvWn4eITyzq8749oNyb+43klm3WWiYUi4PCOwzuIdH/wZnpWWDdnL0J3p+WXCKqFsVSq+U8qUjVDGXhjS7/4XdRMRf5WmHkEmyySJWrfcVHsiMVHQnOcucBUbsPAI6YpPOzUafLG3pDwwwUsrkrXtv5Y9yug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5TALQo9OEqtjL/y0rV6IBAihenrvXVpwiJO78hHzPMM=;
 b=TTInw4waXPLfZPqIN00sjSYDAiOM1ZqDwNC1ZywcDYuspUsjkGwSSLYdfwZTZ6aMtVwswd3nj6ySGE7zbfRfD1c4W8ERiXQT8x2GW4OiohsAc8TmAtZXhT43MYfY8uTfg1y2lCBNsiplnDb+q/rKoGWYXg3vHbhYvUk4wPmPNkM=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB9292.eurprd08.prod.outlook.com (2603:10a6:20b:5a7::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.50; Thu, 3 Apr
 2025 13:16:49 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8534.043; Thu, 3 Apr 2025
 13:16:49 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"kasper.sloth99@gmail.com" <kasper.sloth99@gmail.com>
Subject: Re: [yocto] Adding custom SDK tests in own meta layer using
 sdktest.bbclass
Thread-Topic: [yocto] Adding custom SDK tests in own meta layer using
 sdktest.bbclass
Thread-Index: AQHbpJoTS0UWTk40j0uwv1gGBJAjw7OR7BCA
Date: Thu, 3 Apr 2025 13:16:49 +0000
Message-ID: <0531B2C1-D596-43F5-B8C0-C0C268AA8BBF@arm.com>
References: <aZVV.1743684767767275410.7UVc@lists.yoctoproject.org>
In-Reply-To: <aZVV.1743684767767275410.7UVc@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.400.131.1.6)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB9292:EE_|DU6PEPF0000B61E:EE_|AM8PR08MB6500:EE_
X-MS-Office365-Filtering-Correlation-Id: d9b76ea8-bd57-4ed6-c522-08dd72b1de80
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?UTUycGM0dzRzS0VBbXlXc2FPVVhsZTBFV05IVDZyYnFJUWdGS1VMUDRMK2Va?=
 =?utf-8?B?eXhoeDJmV0hpLzdNZWF1STBvbmNMTEF4TWkyNkh6eFoxMnBNZWp1WVdIY2VB?=
 =?utf-8?B?dlQzNktHQTg2aWJDbG9qZnZXc1RWTmo1MnlwWFVNMVZxcTNCeUNlUHdBMDRr?=
 =?utf-8?B?NkRpZG5jSlBrd2k5Rm1rR25WMEpHK2p5MzdoTWFBTEdSUU9TNXFRNHdoZkFZ?=
 =?utf-8?B?dzc0R3B6bXZaOG41SG80aTk4YzV2WDFtS0dnUkFGVTd6QXpERTRYemdXdUl5?=
 =?utf-8?B?L2FXNlBCclBGK2NyQW1KMjRLNkhIZUxVdFZyT0Z4aVNhYlMrancyQUxRL1pV?=
 =?utf-8?B?WkIwNzRnSXlZUHIyREtNNmptTnBxQzdLZmRkTmZUUGNURENoOWZUbVJKRmlZ?=
 =?utf-8?B?eWV1OGdiYnlyRmhFaHJDK2JsMFFsWDhjSGpyYVY1blJKUUVnUjQwQVo5UmJN?=
 =?utf-8?B?U0F0a0tpeDVwdzZDM253enlYYkRyRWxjK2Z3M1grSXhDeGYzL1NoazFLMTFr?=
 =?utf-8?B?VGhOWElyMGFIQUNWcEp1YjM2Y0FWSGp2aTEwRndSbWJlclNRODVLOHRRQjQz?=
 =?utf-8?B?N20rNDA1MTBKamdZTkVnRjlYMHBLdU96TktEMS8xWGpKNDF5b2VZcjg0Qmw0?=
 =?utf-8?B?VVYrdHBGNHVDWTh2Uml6NkdiaU96YnpQTjBFa3hvVEw0V2M2Z3BIdW44aDBl?=
 =?utf-8?B?ZUJBak5IRFZGeHVJbkRjZzJHVjFCMGNaMzczZmRkKy9pYnFSRDRxdmNPVmk3?=
 =?utf-8?B?NEh6VGxOT0lDQzVKamxFVGw3OVBjOFdRKzdSa1p1aHQ2aGgwamJWT0tDMmk4?=
 =?utf-8?B?SHlpNXFXWm1vd09telFtUUI1d2YrZ3lSVGpPSXJNN1M2R3NURlBUYlREMlc3?=
 =?utf-8?B?Z21JSE9SZ3RUaUVrRXpIM1c0N3lFS25RWEJTYW02cFR4RmEyZEpwYXRiSndl?=
 =?utf-8?B?ZUZudSt3K2EzQWdrK1JaQmVmdDNzTm1SS1U2SUFFZ0syTFBEWUJmcmJRUmk3?=
 =?utf-8?B?N3BiUW5WNy9ieDZMM3VVOEs1bW8vVWh0S21RYlRhODZudFh0N2NrSi8zbWZO?=
 =?utf-8?B?V0JJM2VOalk2WHNuY3JxOEdRZWhkeVB3a3pLdXNHbXBBY0tWUjVwOEx4T1lU?=
 =?utf-8?B?TGQzV3FzSmN6TTg0Z0UzUHFOU2tSTVp5NFB0M1JEUFozTHV4c2RKUVM4WGVU?=
 =?utf-8?B?VytwdXU0a2FqNUdqRndpQnJWMEh5blpwbWR6STlySXNsVGljcHJIZTdsdkpG?=
 =?utf-8?B?anFXL05BaXVxWlN1TEF6c1NYY1lJd1dMNmw0MS82UWtzRkFEOGcrdnQ4amVl?=
 =?utf-8?B?dmJCMG1BZWJrdHV4emwwRjg1WEs5Z2VuUjM3NkN5amM1eU5EVm12Ynp6REFX?=
 =?utf-8?B?VUpWKzM3em1ZdHVDa1hJUkhiZ3lBNXVYWEovSWRzUW5XZmJCREVCWnFBZGw3?=
 =?utf-8?B?TlBvSFU4YnJxTDJkdldUWXBnd0g0dDNFckRLb2dBUEpVZDRDM2d4UnMyNWlt?=
 =?utf-8?B?ZERXVTZoTGtnc0NzRGg3OUZzdHRJNjZYUUU4TjRkbFJpQ0w5VjUzWXJtTHVL?=
 =?utf-8?B?Mlk3cU5YWkJtQVZxNjVydUhLVFdLQzE4bWVpalpHNVhWMXRraWVpbkF1TjNF?=
 =?utf-8?B?a2xQbmVmZ3ZtZDhhUU0weUM0OHc3dDVpWnBzZ3dKaGNDMDJRYWFyOERWQ25S?=
 =?utf-8?B?SzF3UGhZUnFHREg4MEFobDArUE5aZFdYNlpIUDh3T0RDb0c3QTF2T2FBU1hL?=
 =?utf-8?B?dGEzVkEyUXg0NXowY0g5NjVVdTFZcE5UeEFCRTYrdWNIYmg1RUVnVitRL0dT?=
 =?utf-8?B?OG5oeWg0Q3h3U3pTbWcvTFVuNlFzdExrY3RkL2xlQm9nTFZRd0QxYzEzUkNt?=
 =?utf-8?B?SkU2dmRTVXh6eTBVQ2JtcERKVDV2MzI1LzBBUlhvVStJVGpuLzRWYjU2U0FZ?=
 =?utf-8?Q?Lf3i5/fT63vIP7r4qPvJvTjxcozQHcWQ?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <27AA773F1392C748A0902FDAB7CDBAA7@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9292
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF0000B61E.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	2715e08d-fd27-4cfa-8498-08dd72b1cb0b
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|35042699022|36860700013|1800799024|14060799003|376014|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cTZSb1FuZFg1NXBtL1JKK3FUMFNydFZjUmRVNDl3R09QZ1hhUDJwbHhMRXdj?=
 =?utf-8?B?QVUwazFnWG9paGJ0Zk5kYUNBV21ENzdqenlJTlZQb3ljUk9kWlI0SVZYM1pv?=
 =?utf-8?B?OS82N1hNUE0zSU9PR1NUYmgyaEtpV0hMdy9UU001VjFJQnVKMDVuR25KV1BP?=
 =?utf-8?B?azBDb2c4YlplK2orOFlGQmo0TXJNTE5KNGRGbHBPcUhqejM0dVdIdWFNWGpT?=
 =?utf-8?B?K2tkb3BKMXpGNEkyVzEvVWIrNWNIUjVWT3h6VExTblNTeTZNa01RQUx5cjIy?=
 =?utf-8?B?UU1qVXkxTmhrL0VwbUs5b0FJRktnbzd1T2gxcTIrS2ZFK2wzSkgxM3BITGQy?=
 =?utf-8?B?R1JFYXFMeFBkUE9MS1ovUkNMbXlQbFNHWnNpOGJNdWIzTmtQYVgrdC83NHJn?=
 =?utf-8?B?bCttQ3A3cEpZT01BejdxeWppZG1qek9GS2FTbDFiM1d6VytLQmZXREZIcENx?=
 =?utf-8?B?VDVLVm9xLy9ueHBlaWRnUGtvSHIyYUR2cmdGRmNHd2tCbVNVMXhmL2pKZzll?=
 =?utf-8?B?OHhTVGIvZXc1UlJHVHFkNjZ4bExCNTAwRWFlRG40UCtTSDVQM3YvV2ZIc0xQ?=
 =?utf-8?B?VGt0WWxNdjZWRHpVVk83RG1XenNpTFR4L2tuRWUrSmhLZ3RPL3BPZDk2UmFj?=
 =?utf-8?B?Vi9kSjFaMTFVUjBYVGs2dTc0YWx1V1c3ekV3K1hlQ3ljTjhSd3ZreEJ2cGZz?=
 =?utf-8?B?UFBIcytNaHdWeXYwbjVLTE03ay94VzZRb3hXTy9DaTNEeENESGw0WG9Yb29X?=
 =?utf-8?B?aU9obGt6MjlsNmdQV0cvNGtNNlRRdE1rb1huR1dGNHhDN3pkZlRrYjJsR0lJ?=
 =?utf-8?B?MVJnakJsQ2F3UE9FNi9yMlpwblJsQ2IwR1J4Mk00c2lOMXhFYktLUEY2SVNk?=
 =?utf-8?B?aE95ZzBoNkRvUEozSnFzTi9PUXJCanl0bGRvVkprckp3Qml2Y0h6ZVlOa3hm?=
 =?utf-8?B?dWtDSldwRkcyc0JQWDE3TWV0Z08vZzZ3MHI1U1FreC9SQnBXYkFWaVlyR3lC?=
 =?utf-8?B?ZVNGZW9BQ01qdFRqaFhHM0hmWnVORWxvU3U1blBCbklRaTJTTnNHK0htZnBB?=
 =?utf-8?B?STFhVWdDTTh4NXVDYnlRN2k0bWFVUndsS2s0NG5xK2tVZ3pDSkVjeU9hREZW?=
 =?utf-8?B?UytBUll3UnhCL2hNNmJzZnErQVVHOEJCSUp5bGhrbkVLeGxESklDbUNSYmtC?=
 =?utf-8?B?bFA5STB3YTdZeE9sWTJxeTNMbnA4NDJ6NTJGMjJ4ODNiYlhKWUNqT3ppdkZa?=
 =?utf-8?B?S09ZRHhoTmpobkxQY0RnUUlPcml6dmx6cXNnMW5wQUtoeTFrRjR0YWc1SlhJ?=
 =?utf-8?B?cDJKV0FZeGFlUy9ZUTM3TnovTlBGaEhOcWhkVjh6UHpwNm8yekIrVWxBWTVO?=
 =?utf-8?B?cTBBSXU2Z0pkdk03bWlRcGg2R2ZGbjVDSkhLSlZZb29iQ2ZQN2hNbXU4eTEw?=
 =?utf-8?B?Wmd0QURVczZ2ZFBpQVJ1N3M5dWNPeC9pODVqMC9mWTFKUjYvNmJXYVRPRG0r?=
 =?utf-8?B?a0xMYmFtMFJWaGt5UnpGYXlBN2FhMXcvalNRU3dTZlBoZG1nSkI5OEFLM0Zx?=
 =?utf-8?B?TzV4WWVLbThkdjVrZFpTQVhOSDVFbEYwaVNFSjlIa2JNVFBvZnd1S1ZRYUR5?=
 =?utf-8?B?ZDVxRFhNSjNoM3BBVGVxYlhMN1dtNHlhTDlDRVBUTHBwbXVFdUpkaWdZLzZl?=
 =?utf-8?B?V0lPQ29HRnF3THB0bnJHNHl2Um5LenQrZjlENk8vZkR4RTJlOHlYWjNsRHl5?=
 =?utf-8?B?dmpDa1JOKzBLcjJ6U1VEL2htN1RIWTlOcWtzNXVCcXpIb1VPb3lCMEFGLzha?=
 =?utf-8?B?ajV3WjJZWStqM1AxdGZEcEx3a0ZpRVNnb1ZyR0trQXFPbEFnYVhFVDR3b2Nw?=
 =?utf-8?B?b2xtU2M4ejZsRWhhNS92WmE3Y0ZOZkdVbjlqVmJ2UHgrd1E3SzUyRUxtaUlV?=
 =?utf-8?B?UVZ5TW80Tk15UW5EZ1lVL21uSUowYU41OHA4WHZUeEx1aVp6U05SOUR3MWRW?=
 =?utf-8?B?dS9ZTEJJK1o2ekF2N2lXeitKUFNsSkFpVTk3L3ZTTjlOT3U1alcyR1VsYm8x?=
 =?utf-8?Q?lpm5mH?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(35042699022)(36860700013)(1800799024)(14060799003)(376014)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2025 13:17:22.3768
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d9b76ea8-bd57-4ed6-c522-08dd72b1de80
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF0000B61E.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB6500
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 13:17:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65082

T24gMyBBcHIgMjAyNSwgYXQgMTM6NTIsIGthc3Blci5zbG90aDk5IHZpYSBsaXN0cy55b2N0b3By
b2plY3Qub3JnIDxrYXNwZXIuc2xvdGg5OT1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zz4gd3JvdGU6DQo+IA0KPiBIaSwgaSB3YXMgd29uZGVyaW5nLCBpZiBpdCBpcyBwb3NzaWJsZSB0
byBhZGQgY3VzdG9tIHRlc3RzIGluIG15IG93biBtZXRhIGxheWVyLCB0aGF0IGdldHMgcmVjb2du
aXplZCBieSB0ZXN0c2RrLmJiY2xhc3M/DQoNCknigJl2ZSBvbmx5IGRvbmUgdGhpcyBmb3IgcnVu
dGltZSBhbmQgc2VsZnRlc3RzIHRlc3RzIHNvIHRoaXMgc2hvdWxkIHdvcmsgZm9yIFNES1MgYnV0
IEnigJl2ZSBub3QgdGVzdGVkIGl0IG15c2VsZiwgIGJ1dCBib3RoIG1ldGEtYXJtIGFuZCBtZXRh
LXlvY3RvLWJzcCBhZGQgdGVzdHMuICBBbGwgeW91IG5lZWQgdG8gZG8gaXMgbWlycm9yIHRoZSBk
aXJlY3Rvcnkgc3RydWN0dXJlIGxpYi9vZXFhL3Nkay9jYXNlcy8gYW5kIHB1dCB5b3VyIHRlc3Rz
IGluIHRoZXJlLg0KDQpSb3Nz

