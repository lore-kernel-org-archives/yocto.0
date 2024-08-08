Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D98FC3DA4A
	for <webhook@archiver.kernel.org>; Thu,  8 Aug 2024 10:53:17 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.49])
 by mx.groups.io with SMTP id smtpd.web10.57208.1723114389981214965
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Aug 2024 03:53:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=BMCwii8Z;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=BMCwii8Z;
 spf=pass (domain: arm.com, ip: 40.107.20.49, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=QtXP/hWI+BW11OO8f/nW/+WkdfzNVXXqoxdo/JjB91+xwo8kHKi+LorApV72RzTDZsrwshqg6dVE++GiB4J3Ufym1LhH/CrF1DkBPbVfDC01XNt0+vIaV6ECPQ2WPdkK7jEPwlCjpL6ks6girJf9lwsBr5zFfTA3RH6E1KqCnZQahvS1lUZ5Ex0RZECLcudUDyc7PWwNeqQ6WAjf5T8w2+/T+TTgxmFimC+ezOKsUtdStlOMEDqR4vB1hJJX0a0VML9S3BOeIPW9p+C6YcWz4PB+QkyR7/Lh0VuJ6dydhqxA/IrPuWbwOXYSm3QQbv8GBkyP7OEfdWWk2Z7Sv/BmBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C86P5+o5t9Jku7nKqyqn9zAI0or04A7wRkVSNODm+M8=;
 b=m7mkWAzNlrqZuFugJS3a/EIkUc+5VEWR7C5Dw9vTU3k87fL5aU2eJdUSJxXBtTYNYfBX5Grbkhunswx6/6YDaT4eR54umarDzUN9bPM2TZyD0hbujydpUSPrcTSYIJBBn0wd5fcLCeTEWjCoZOTdQeoJl075nfGnTu2elPz7MOMd7Xb8KcBuTONAvmE+rrrRiI2TTuY5fTMcjNhJhZeCErp+ukcxALuo9MVWJcNHtDMAG2z5ud/y01oY+3ox1UPmvPvVr1pQoFo/C/PxinmDfkT1NUMsz3z0GC7gelkJ8fFssEZIvVsbilUAGV1Eq9SppcpCL3FQtabCZliSWwxjZQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C86P5+o5t9Jku7nKqyqn9zAI0or04A7wRkVSNODm+M8=;
 b=BMCwii8ZpuOtSnUiVHLGu/9CiGJwZHJANM6jGOeMX7XL5WpuOF5IC11STM4V0eaZgo55E5qotedCk7d+o22tj9XZ7JItpnX7IPNLGuSiDPDCnTaPojxz/hHPRFqy7eoPrQBDrwoa00al86m6hhnRR5lfMaX2j6t2TXZ45PBC4Lo=
Received: from DUZPR01CA0012.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::14) by PAVPR08MB9403.eurprd08.prod.outlook.com
 (2603:10a6:102:300::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.26; Thu, 8 Aug
 2024 10:53:06 +0000
Received: from DB5PEPF00014B88.eurprd02.prod.outlook.com
 (2603:10a6:10:3c3:cafe::48) by DUZPR01CA0012.outlook.office365.com
 (2603:10a6:10:3c3::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.14 via Frontend
 Transport; Thu, 8 Aug 2024 10:53:06 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5PEPF00014B88.mail.protection.outlook.com (10.167.8.196) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7849.8
 via Frontend Transport; Thu, 8 Aug 2024 10:53:05 +0000
Received: ("Tessian outbound 0842327a015a:v365"); Thu, 08 Aug 2024 10:53:05 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 09c6c166341480a2
X-CR-MTA-TID: 64aa7808
Received: from Ldd220a41185a.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 91CA33FE-6F19-4C60-92DD-0641B59B0081.1;
	Thu, 08 Aug 2024 10:52:59 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id Ldd220a41185a.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 08 Aug 2024 10:52:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZMEY7RYl2sVz2BPyjWTgiRA8gsYw4wqRHijKRW/gU9OSbvHEmoReqfk4nu0WJ8z1FPhjBFmrr5Kurs1fsO51yTpJe48SdS7wcH3tEt8ElGl2KY5CU8a1eYKmNWTjzekuY9PYL45WWpGXUjoz2Ok1Hy/5wEcliWrjVPpUFj8jsRwRKMx90/qH9j4//ncX/LQWg0okyQ19ZuBIexgaXhJXu4e/4UOY1HczrTY/hgjlP8NxEtvvz9JwgGTStZvoafp0qEtcxAK9IVzInYfy7+Et+tCSjqZDqnqFLbk8koVPg/zCfpxIUqPUz3V9P1XZtNYGACuLDqcRoWUjGcFng/UQvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C86P5+o5t9Jku7nKqyqn9zAI0or04A7wRkVSNODm+M8=;
 b=s2BtBc4mQj+/U4RA3ytCteCq9ecB7WxvAsKvWGGpyJFwVRyEWdPsnx2N+IT6mKVcQiEegj/TqLNM2P6ZCDFB9+jgkbtatsOHlewvTZm9Tb8hryTOx5lrfm5KffHi8lYUmujhsT1jsG++0LBwBnAi2DNDE1myAV7Yicni9REkC6bHNOrrDNLZkjmmWQAYfjOuEKKf587qPmKX2w98Ok3efw3NJ24jQsmmU5fQ54ftOOwXIkwRLNE6wzqKDc78pRW3LA+9D6oLnQVjWaj7zlWVf3BkYjQoWK3Oq1sucVJXOvFBITupoWVrNPQbaNs71sX0VB57pl0KB3JThzDEAj+jUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C86P5+o5t9Jku7nKqyqn9zAI0or04A7wRkVSNODm+M8=;
 b=BMCwii8ZpuOtSnUiVHLGu/9CiGJwZHJANM6jGOeMX7XL5WpuOF5IC11STM4V0eaZgo55E5qotedCk7d+o22tj9XZ7JItpnX7IPNLGuSiDPDCnTaPojxz/hHPRFqy7eoPrQBDrwoa00al86m6hhnRR5lfMaX2j6t2TXZ45PBC4Lo=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM7PR08MB5496.eurprd08.prod.outlook.com (2603:10a6:20b:de::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.27; Thu, 8 Aug
 2024 10:52:57 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%6]) with mapi id 15.20.7849.008; Thu, 8 Aug 2024
 10:52:57 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"dipansusahu99@gmail.com" <dipansusahu99@gmail.com>
Subject: Re: [yocto] Query regarding removing unused recipes and components on
 a Yocto based build
Thread-Topic: [yocto] Query regarding removing unused recipes and components
 on a Yocto based build
Thread-Index: AQHa6VU+zX48ox0D00ugQnwyHZzdt7IdL4uA
Date: Thu, 8 Aug 2024 10:52:57 +0000
Message-ID: <14D61D8B-1F88-464E-B400-92E882E9EEFD@arm.com>
References: <DdEe.1723095507250120345.oMcA@lists.yoctoproject.org>
In-Reply-To: <DdEe.1723095507250120345.oMcA@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3776.700.51)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM7PR08MB5496:EE_|DB5PEPF00014B88:EE_|PAVPR08MB9403:EE_
X-MS-Office365-Filtering-Correlation-Id: e2cbd24f-8b83-4084-d3d8-08dcb798486b
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?UnloLzhQSVQrbkpGbXNQK1B1L0RwaHl0cGJxOGVLdHRuMHU3Um9nbFkvQmFR?=
 =?utf-8?B?QXRGb29LRzNZUjZ0NzRnamd4QkJHcngxV3dOSWtqanFVRVI1TDVOU1gxWGRT?=
 =?utf-8?B?TFlSK2xoVkY1RjkrRUhIcWMwNHlDNE84VjY3Mk1JQ2JzWUliSkRMN3hQelJn?=
 =?utf-8?B?L0lIZUlIMHJVVE5ueUNUUWJ5WXRYTHo2Mm9BaWdjaWNvY3hvRlRBKysya1Y2?=
 =?utf-8?B?VUlTYXBiT0RWZjRPZXdkVUR3WWx3ZTFzaExiME9ZbWZLd2hrdTB3MlQwZm9q?=
 =?utf-8?B?ekQ5aENyRDVVQ3RYZ252aUdCelFDVXRxY0hxdVF2STZ6bDJMVGVIZ0E3N2J1?=
 =?utf-8?B?MGFrT3lxOFhSQkdQeVR2Q2I5L05mVnEwOGFYU0MvTVFDajlmYTZLV1FzeFAy?=
 =?utf-8?B?cnFNYlV3U0g5dTVzRUNMV1RONVlLNDRuVytMSkhPb2VnL0JRbzBVVUZCSFhy?=
 =?utf-8?B?cFIyVWNCanU2RU4zQk8yNW1zd3dYVmdWbnlzanQ4aElyMlVQbjBESEliMnA1?=
 =?utf-8?B?Y3dKcll1V0VGd0FKN3VJbHFEVkxzVXN4S2pHUlRXcUFUTnl4YTFrYU9KTVo3?=
 =?utf-8?B?Y2lFRW1zbTBLRkRjUzJpR1ZXUldBYWk3L1pNKzAwR0FWbXQzTEQ4UWFyWkZ5?=
 =?utf-8?B?eE9KMWlrOWxCOUtvRDBIelN6RU5FL3l6dzZIMHRERTNoQk1RU2JZTHNBTXJj?=
 =?utf-8?B?TlJTQTgrenNzQmF5am5naXhaYnRwOXdwZWVtcmQrSDE0NWxHbEZROFhqTVhD?=
 =?utf-8?B?Nlg4Vm55Yk0vUFExd3grR3ROa1F3OTIvNlpPeFdNMC9aeDIzWitqVXYrYy9C?=
 =?utf-8?B?MVRkcHd6ZTdDc1JzQW1BK0N6YTlwOVdiNDJrN0gvSWNUdzFKNXRJV3REMEZQ?=
 =?utf-8?B?dGZTczU2eDMxSGVpYWw1UUN0OFlONkxDV1BlQ2VxSGE5aXQvQ3lac05xdWFk?=
 =?utf-8?B?WEFEbmhWbjkvN21ZejV3cE5XQnprWHJhRlhzYjVXMWNQc0ViRWxHaGdlSVU5?=
 =?utf-8?B?YzVENXVmWXo3WDE2RmtIOFhuTmpPa2xMSkRrS2IzUG03M1pVaStwWGhQbDRD?=
 =?utf-8?B?MHA3YUw2OHhGcVhzajJVdnpOamlRQ2szVHFMMDFJVTJYM05zYUV1VFBWeFF3?=
 =?utf-8?B?Y3dzZm41bHlaQ1BGQ0FKTXVwd1lkeTNVRU05a01HR3hNSHAvU2pSeUJBNlZQ?=
 =?utf-8?B?OXlWak5Ickx5TDh2STdyczVjMmZxa3VEcXNEYTh2d1pnSnVXSWV2Z20rVDN4?=
 =?utf-8?B?QkdhUWhENzU4Ui8wemhWZ0pFUzFoZ2sxNmNQS1ZSRmVieC9jVHRXUHRvTUxq?=
 =?utf-8?B?WlkvNXdUbUNuTXlac25ONU13aEdxUnFGc0FPWUVCNWdSb3FyRG0vTmNwMUJm?=
 =?utf-8?B?STQyR3Jta2QyakJGLzdvd1ZsNEFvckxkUm0zYVI5VlVMQ0JKa2h0UTQ4Z1Fl?=
 =?utf-8?B?Q2owVUgrb05TOEZTdllhUUtRUTg3OTUyY3J6UThkOHZwYnlDTmU0a2ZRUzdU?=
 =?utf-8?B?aDZwRTNaMTZDUUpZY2pBQTMrSkUyWllPUXh6eEFNRlBJbzJPRWkyQ3FWdHZh?=
 =?utf-8?B?ZjV6V1Q4M3NKSHg2eGpQYmdUa0xYWkRJS1JGUkp4RkdBbVZkVk1zczdVWWtm?=
 =?utf-8?B?Y2gxZEpnYTFKV3BvZnVUTDBVSVZOOFNHZ3IzcEk3OWlRMFZHUnZpYnhhVG1U?=
 =?utf-8?B?bWpPOU1lZzdKUjkrTkdlOCtNckVRbGQzcTZqODUvOTVvTWJBMEZBN25uYmtV?=
 =?utf-8?B?dmFscWt3QVRDT0RNdUhnTlF3VDlBaFVGWU9jWGRRRmtYSy9JeXJjRWpTNGx1?=
 =?utf-8?Q?v7j85XO9UpESeUkRnKGT3oQ+kxebulVJ8Wf0U=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <B248355407EB5D4BBACC271EF8954948@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR08MB5496
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5PEPF00014B88.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	7a8d1c50-8fb2-4348-ebee-08dcb79843b3
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|36860700013|82310400026|1800799024|35042699022;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZUtLRldBYkg2ZW1ldW5nTXlXOGIrWEFEUVl4b21qVVphb3NCVGN2eGlhZUhZ?=
 =?utf-8?B?Y09lREE0STFKbDgrcW9vWlNPSUFWY0w3NEVDTDh0UTFYUzZRQWFhcU41Q3dF?=
 =?utf-8?B?bFByZkx1bTl6UDZrKzQ2a2lPK1d0YmtSdnFRcUIzcnFxNkRIMFd6aDFtWEZt?=
 =?utf-8?B?TmNPMjN3VTVFbkMveFl5Tnpkbkp5MzNmcVpDdWVDckpVU3JPYW5kSmc0NHFG?=
 =?utf-8?B?QXc2aUlGR0o4ak1WNVZXckVFd1RMa2dCMkx5WjdCNTc0MmNUemJ3b2IwbURt?=
 =?utf-8?B?cmhNVEFnWTFWcFVTaXNSNTErcy85a3lPTklHYmYrN0ROQXNtbU5hcFAzMGRw?=
 =?utf-8?B?RkUwN2NPaXdod3AwZmMzb3JDQVpsMUhWdTQxVGRMQnpmeVBWY2xSK1VNZ1Mw?=
 =?utf-8?B?UjIxdE9ob2hWM2ZBRUJxc3ZuY25iUGFZZzc2TjNPL2VnRGlqdUR1L21TUlU5?=
 =?utf-8?B?RlRQOGtCSU82b1h1bDVUNFhMajMrTTNwejhJYVJ6eitUNDJBRDdiZnFaUGdj?=
 =?utf-8?B?ZlEzcG9NUFBiRWd3K0NCUDI3eHJrU3pwbzk4aUZLK1YxUE5xU2tZNWplV2Ru?=
 =?utf-8?B?NHovaXdPc2QzQmZoeUtpSmQyWmZaTHhPQmVVT2NsdFNBcVVEVlRScjJJbWNr?=
 =?utf-8?B?aFhJTnBVSzR1d3JpZWJISlY0L2twZFBZazEyZ3hlMHV0MzM0ZVJNdUROTjVi?=
 =?utf-8?B?OUV5VHluRTdUZHBvbmN3QUFNNHNRdnc0UENzV2RJSlhMN3Boak5qWGFvaXlL?=
 =?utf-8?B?SlRMNGtXOWNVenViTi8yLzNmWm5lVHVHNlF5Q0ZnbDdTMllHNkI4RVp2MEtu?=
 =?utf-8?B?ekJpK3FIZ29ydkxBSTZPTGNqcXBDVEQweFlJS2J0d1lEMFlzWXlUL0dGY1pq?=
 =?utf-8?B?Yk8rbjhHV2RnQXBYRkYrekFaek9hZG4zNXBTL0hML2JaNmlVRFFtcnFjREVQ?=
 =?utf-8?B?NFc2b0tXTlFsWENEbHd5dGdVVFBXZ1JFemFVb2hjWmxQbWFSQ3FyQVpqWFVB?=
 =?utf-8?B?ODhXU3ZQSEh0QUFSVE05aVQvRzhKVzAyUEphYlVzaWZsd3FMNUVPdkp4Z0tk?=
 =?utf-8?B?WCttcWx0a0lGVjgxVVZmcEdBZE1jWUNzMDBsM1c0ZG5zYTdDYmZpSnNRdmJn?=
 =?utf-8?B?MkxrVU9Qejg5YXdJZnlzSmloam0xMTZpVWVXYUE3MkNLcVNrS1pHMmRPQnMv?=
 =?utf-8?B?SWV5RHVnN3R6WURYcUdhMmw5NGNkWGlrQThPaGMwTWhHM04zT0VCNVJsNUE2?=
 =?utf-8?B?NlFtZ0l0WDVVZWRONXVXekR3N0tVem5WTW9pdSswOXZYUHI3bHE5QW1DdUV0?=
 =?utf-8?B?Zy9WbUZqK2g3STAzejh3Y3Z3OFpzVHliek9TWDNDMGVuQVhyT2NROW00enpt?=
 =?utf-8?B?OXNTRUh4cEl4NWs0N2l3WUMzMnk5aEk2NE1HalVxZDZ3QTI0RzRIWjI5U0dD?=
 =?utf-8?B?MGUrMUtjTkxUTFU3T1BGSEpFQ3VPVW13dEJoem8vQ042M2Z6TnhjYkNpMWc1?=
 =?utf-8?B?bGJLQXJRQm1xTWFkWG5CV2liYlh5SEx6eGJCL0NmbUtkWUVMYnNSMVJJV0xU?=
 =?utf-8?B?d1VRZzUxZU41YS9mUHdCM0JEQTZwRnN4Rjdzd0NuSVhXQzVMQWVhVVdEcGxk?=
 =?utf-8?B?SUI0eFZKSUNJczZ5bXNYejdLb1RHZmZYWUdVNjM0cWgxRnBIcWRsYjJHMS9Y?=
 =?utf-8?B?dG94czJwMmdQejdpRDdGc1BqUDdMcnJOZ2E4TWxjWkJieWRZaDZQWDVtYVNn?=
 =?utf-8?B?WGtEL0JEOElnQ0l5cU5GRDRwRVpScTFIcHlLTXIwby8rRjN1Z2FlMDJLL0hU?=
 =?utf-8?B?SGxId3NFOWc0cnJNWlFnVTFYdUNDM0NFMW5RQVJqSnFvTFMzb3ZQTU5CYktU?=
 =?utf-8?B?YTlKZ2poRjFSTkZnSGhhRnRVQWhCYjdlOGVBYy83U1NyZ2c9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(376014)(36860700013)(82310400026)(1800799024)(35042699022);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2024 10:53:05.7705
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e2cbd24f-8b83-4084-d3d8-08dcb798486b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5PEPF00014B88.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB9403
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Aug 2024 10:53:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63677

DQoNCj4gT24gOCBBdWcgMjAyNCwgYXQgMDY6MzgsIGRpcGFuc3VzYWh1OTkgdmlhIGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmcgPGRpcGFuc3VzYWh1OTk9Z21haWwuY29tQGxpc3RzLnlvY3RvcHJvamVj
dC5vcmc+IHdyb3RlOg0KPiANCj4gSSBoYXZlIGEgYnVpbGQgZW52aXJvbm1lbnQgdGhhdCBpcyB1
c2VkIHRvIGNyZWF0ZSBhIGN1c3RvbSBvcyBiYXNlZCBvbiB5b2N0bywgc28gdGhlcmUgYXJlIGEg
bG90IG9mIGNvbXBvbmVudHMgYW5kIGxpYnJhcmllcy9yZWNpcGVzIHRoYXQgYXJlIG5vdCBiZWlu
ZyB1c2VkIGluIHRoZSBwcm9jZXNzLCBpIHdhbnQgdG8gZmluZCBvdXQgd2hhdCBhcmUgdGhlIHJl
Y2lwZXMgYW5kIGxpYnJhcmllcyBhbmQgbGluZXMgb2YgY29kZSB0aGF0IGFyZSBub3QgYmVpbmcg
dXNlZC4gSG93IFNob3VsZCBJIGdvIGFib3V0IGl0PyBhbnlvbmUgd2hvIGhhcyBkZWx0IHdpdGgg
c3VjaCB0YXNrIGJlZm9yZT8NCg0KSWYgYW55dGhpbmcgaXMgaW4gYW4gaW1hZ2UgdGhlbiBfYnkg
ZGVmaW5pdGlvbl8gaXTigJlzIGJlaW5nIGFkZGVkIGVpdGhlciBleHBsaWNpdGx5IG9yIHZpYSBk
ZXBlbmRlbmNpZXMuICBEZXBlbmRpbmcgb24gaG93IG11Y2ggeW91IHdhbnQgdG8gY3V0IGRvd24g
eW91IGNhbiBlaXRoZXIgZGlzYWJsZSBmZWF0dXJlcyBvciBidWlsZCBhIHRpbnkgc3lzdGVtIGZy
b20gdGhlIGdyb3VuZCB1cCBpbnN0ZWFkIG9mIHRyeWluZyB0byBjdXQgYSBsYXJnZSBzeXN0ZW0g
ZG93bi4NCg0KSGF2ZSBhIGxvb2sgYXQgdGhpcyBwcmVzZW50YXRpb24gZnJvbSB0aGUgWW9jdG8g
RGV2ZWxvcGVyIERheTogaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1TdnhaM010cmFT
QS4gIFRoZSBiZWdpbm5pbmcgdGFsa3MgYWJvdXQgYnVpbGQgcGVyZm9ybWFuY2UsIGJ1dCB0aGVy
ZeKAmXMgYSBzZWN0aW9uIGFib3V0IHJlZHVuZGFudCBidWlsZHMuDQoNClJvc3MNCg0K

