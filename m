Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C456BC83F25
	for <webhook@archiver.kernel.org>; Mon, 21 Jul 2025 16:58:44 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.59])
 by mx.groups.io with SMTP id smtpd.web10.46467.1753117118822575514
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Jul 2025 09:58:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=h2LofxPa;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=h2LofxPa;
 spf=pass (domain: arm.com, ip: 52.101.70.59, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=nLcUL15jvdmpBUWuDoBrT1DGBfZkBoFMB/5Fw9/e9gpshYXywJyHBs97sXPwJwgXz2nTI6BCONIe78lEN1CUoKr217NSI0WCAJUoK63HKuQsEim+hz37DidmlNROSX60aueFK6LbN6zKXWUAekcr+qQtrUdqSQyTfH2bo8lNSrB9H9KrDNSQ50v1CCVEtrK7OUugyx/v7RijtvS0KTvtFa45rYagFgSbEdgSVtFzUlAfE+0GRSvBvZjL8t8NqU9qt6l11RaC/67F6WM2dXdSKqis3pcati/IG/Xr652n6xZ143+Hi2fS9y9/wTq/c8FlG3Dh172cBDnEjQC2jX8vIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FUiJP5MlRqDOB661fzslGn2WUelvenvhZUbesMEYZkE=;
 b=DjhcFKPXIMXPyifBp1hhUUY12UY8doVgTWcVyTYvdLG9vLcL1b9DRYvwCDPvyV4ZqfKRtxJM5FRiLDKXTUwT6bJgLmH2CLKX1RvKxPA1k1aQ7AcN2UVUde2lDtfeJS2ayqZbCueVrMoiucSuK86Ym5Sh4jdm1JhFOmnRZmyMd8CDvxLl1d/XbVkiJOeiqXp6hRNWKKz+5lpDsMNTlKr2pqciZRmNft0L4QBYozJ3pL8w8qilhzeTwRvf5uQEvQlpoANrzt1r/qd5yzbNBb93XM+S4Uw1ESt0kpb7vtSSexMP4tnj703XmKL94iVl9I0rQ68n0ppIHT6OMVKxDPaWoA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=seagate.com smtp.mailfrom=arm.com; dmarc=pass
 (p=none sp=none pct=100) action=none header.from=arm.com; dkim=pass
 (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FUiJP5MlRqDOB661fzslGn2WUelvenvhZUbesMEYZkE=;
 b=h2LofxPao37qB0cz8BqQnjhBg9h/rBjr5320TYhAPp6uLsTmpeo1asSHnrc+KpDdKHMxbfj8bac7TjWY/afeKTz1dvdstXgwdAi1XoTYavCz/PKRtxEHAMmamDuMPE/+6obMd88Z19bPkvoyG3xHss+LM8mLuX5miUCUII48bVA=
Received: from DB6PR0301CA0068.eurprd03.prod.outlook.com (2603:10a6:6:30::15)
 by AS8PR08MB8735.eurprd08.prod.outlook.com (2603:10a6:20b:563::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Mon, 21 Jul
 2025 16:58:33 +0000
Received: from DU2PEPF00028CFD.eurprd03.prod.outlook.com
 (2603:10a6:6:30:cafe::e3) by DB6PR0301CA0068.outlook.office365.com
 (2603:10a6:6:30::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8943.29 via Frontend Transport; Mon,
 21 Jul 2025 16:58:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 DU2PEPF00028CFD.mail.protection.outlook.com (10.167.242.181) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8964.20
 via Frontend Transport; Mon, 21 Jul 2025 16:58:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JobVCkBBbt1jHlR1g5ufQFlaT2mmpzQ0ShqNK3IKXtQUmNcL7iUFzMby9jlyTNrQHHysBxua+8sarTuphEqSQAfhyFt5i23gO1OSTfmvaX/giC0AWd9vEVE35K3+8F4QmJkHJW5/6IkdKPV65fmtVBJt7IMzl7Azc5WbH7TH9SS5RKyDmfqlEuradaq5mD2LNO2gsqYiHPDw4C6/Q2EGMCImGA8rrqzrOLvMkbSa0eccYDs34sfQjp68svwtZdAZ2A5fKiIHYnE8vRf8fkv9ntgfaojsexX6FoR6P4skmMIWsNi5DyMTwscsItmscuz9dn6NdM93L0CIpRb2+bpiaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FUiJP5MlRqDOB661fzslGn2WUelvenvhZUbesMEYZkE=;
 b=K9Z8JfMDwXX+qNQ7pTlUaKsoXDHgjCWiT+IIlnAfk083m/6ygcurs1ugjsUpdzQLSBWQcM0N+33Ouit49HFLMDET5BAOOKoOEQoWjNQtLvSh/Xz0PsVTQBqzJuUd1XbmZT8gQA4DdMAr7cqAwiUF5xZR47t+Srp64Yqmx2xm63eRu9YcsiwDOIF0x1h2jljH105lZWkHLVeCbrhk/ZanUPVMNV6fQ8nSiRsin/NVYEdfzfD11A5ndoJNyAGIfgFMacf552vp/pOZYta+Rd+Z1n6fOu3FKIfcc8IijXstegS8PQuaugdcXwhfXjaaPFmeSsZSNpJAJyB93N0wq5pnLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FUiJP5MlRqDOB661fzslGn2WUelvenvhZUbesMEYZkE=;
 b=h2LofxPao37qB0cz8BqQnjhBg9h/rBjr5320TYhAPp6uLsTmpeo1asSHnrc+KpDdKHMxbfj8bac7TjWY/afeKTz1dvdstXgwdAi1XoTYavCz/PKRtxEHAMmamDuMPE/+6obMd88Z19bPkvoyG3xHss+LM8mLuX5miUCUII48bVA=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GV1PR08MB11025.eurprd08.prod.outlook.com (2603:10a6:150:1ef::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Mon, 21 Jul
 2025 16:58:01 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8943.028; Mon, 21 Jul 2025
 16:58:00 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "joseph.maniaci@seagate.com" <joseph.maniaci@seagate.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Generating 32-bit x86 native lib while MACHINE is set to
 ARM(essentially) #bitbake
Thread-Topic: [yocto] Generating 32-bit x86 native lib while MACHINE is set to
 ARM(essentially) #bitbake
Thread-Index: AQHb+lIfXF/azRNGOEiJoPuoIhDaLbQ8uZEAgAAC8YCAABAIAA==
Date: Mon, 21 Jul 2025 16:58:00 +0000
Message-ID: <C4DB5DBA-1425-4B17-8F0D-5516A889CC74@arm.com>
References: <3F6BCBA6-5354-4CA7-81DE-9F7E967681E8@arm.com>
 <23575.1753113627850759573@lists.yoctoproject.org>
In-Reply-To: <23575.1753113627850759573@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.600.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GV1PR08MB11025:EE_|DU2PEPF00028CFD:EE_|AS8PR08MB8735:EE_
X-MS-Office365-Filtering-Correlation-Id: e1d7a61c-ded1-4b1c-f784-08ddc877d371
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?NTZqVjAzOVBLcm5QMkZqRnNYZ2kxNXVqeGVTWlU2d2tKaFppeldjS2ZYS2ta?=
 =?utf-8?B?b21FSnZJSjVRdlh1TURFU0ZCU1VzOW1Pc0c1YlBrK3pkMW1JOXBJOFN0ZDlL?=
 =?utf-8?B?NUV6ck5jQTJ1N2lOUjlYcU5QeC9FQUxOam4rMTFSKzFqaHhTWWtJY3pNeWxU?=
 =?utf-8?B?UVl2cnJCUnJOTXRJdFVpMWFxRjZDUTlreVBkWFZVNTJFdDNGQlVVdVhDVnIx?=
 =?utf-8?B?WVNkb2RCbUFMWGJWSzJ2Slk2NU1FaGdkdW1NOGRVQVNJWjljQTdEWFEwZEFI?=
 =?utf-8?B?TGdKSDZwSmRXWXpYSWpLY1ZoQm83NHhrbU1ZY24xNTYxVm15dXg3S2N2cDVQ?=
 =?utf-8?B?YTNmeXNPU3kwNWlIK3FKTTd6cVlFSElyYTdkQnRjM250Wk5haHhNTFA1Qm10?=
 =?utf-8?B?QmJTbjEwNXZVSVM0elhkV1JLeXRZU3VRSXhFTmYyZm5DMnBMbWw0aXppVmMr?=
 =?utf-8?B?Zyt0N0ZxSVBuUUhEMzVXdytCRXZsZlVDTitScW9zVkJzeXdnZHM4aldIWkYz?=
 =?utf-8?B?QjBnVHFMamRaQ1JTMmFyQ1ZjL3ZQR2c3MEJmSGd4TGpHNlBiNjBxNUlLQkVx?=
 =?utf-8?B?c2tGMlFZSDlySWdqVlN5dXRoVzBNMzQrNWZpQmdEUUxKYUxieWdNR1NxdG5k?=
 =?utf-8?B?a1VZa29LWFVzUE16bitCSDBuTm1pQm9Ub0tSNDMyd0h0R0EyV3lLTHlEdEJS?=
 =?utf-8?B?UG1mVFc2NWhKT3BkNGZXNTN1ekwwS2dDTHZCZmxMdGUrSFBTMkU2Uit0TVNz?=
 =?utf-8?B?di9tL2p3TnNVdDFQejRiRm1rMnRVMi9CYWFSOG5VQSsvMWVFRy9RdzB5STM1?=
 =?utf-8?B?bWIrK2tYdStIdFNZckY4M1lhUERUSmRXVjZPOVM2NXZYZWtPY2wyazJRbWlV?=
 =?utf-8?B?UnRFK1VHZzFPTjFGeEVNUnNseDJlLzAwQlExOVNPdW1Hb2hVYitXczFKeTVG?=
 =?utf-8?B?djRINmJxWDNTOUxvQ0tzTDRZZG5May9KdUdvY3p0MmY2NGdGOTdrN051bXo4?=
 =?utf-8?B?bWxhR2R1ZXhsUWYwNERvS3JQem56QTRYMWc3ek5PK1g1WnFxS2tJSDJna0dX?=
 =?utf-8?B?a0wrOVZ2NktBdzEvdm9RTkpMdFczZnFPWXYyQ0RobzFTQy9MdWd1dGxJUHVh?=
 =?utf-8?B?bUtPTkxjellhcWpTWEpIdVBaZit1T3ZoNzJkRE93QkwrWDlKVEp3cHUxOTJZ?=
 =?utf-8?B?OUhaWGZEQml5ZUpudHRvOXUxdnhJZUNPR2QvUEQ4T2RpV2x4cElRS1Bib0Zq?=
 =?utf-8?B?aStHNWppOXJIdHhWVkhyd3JSZnVCOE1YNTVFOTBBLzl2UDljLzhrY1d0ZG9h?=
 =?utf-8?B?aHBoL0xpZWFMemVoYm15T05tam02Y1ZWSm92a0lhRkxicmVNb05YekYyWm9q?=
 =?utf-8?B?TlZxeE9LSE5id2g4ejhmOW1MZVRkdGJKRzJSWGxYR2ZvMWxVQzJOdjVVVnhp?=
 =?utf-8?B?UVJqQlNtRytHRDIvb1p4NlR1RjMwcGRDZDhhbnh6bGxDR2lHckFrUUE1V3F3?=
 =?utf-8?B?UERxcGNpZjVVbldRbldiNGxIWkZCdzZ4TmliUVJGeXFEeFRVaTN5L25TcHRF?=
 =?utf-8?B?enhucUozTjZQajI2NUxWVlN4bGZDMFlZZVhWV2hjc3NPNUprRW9KZXUvaE5t?=
 =?utf-8?B?Y3ZVTnc4Z3Z2c2tXTElyRWRhSG9TL1dDTkhLZmhESVRLNEppZHA0TmNIUlZU?=
 =?utf-8?B?c3pLVUg0MUhDNTBJZWxWeENuSGMrZUFETTBwSkxSVmJMOHpSd1c0U3pFRExE?=
 =?utf-8?B?M2VFY25NcGFOQWg3MXBaY3ZrMmpNaUl2N21UWVBZcGVZd2FPeHNpQ1hJdlpD?=
 =?utf-8?B?bXcwZGpFWGNBVG9vM1dLcG5jc1dBcHUra3E5VVZYcGRjNHB5cnNNZEkxNXlB?=
 =?utf-8?B?UXgzTk1XWDIvT2pySVRDSjFVYWJwV0xlNlVibGt4TjVyMUlWWDJqcVpOUjk2?=
 =?utf-8?B?MklIYW5ZYmxTeHl3V29rcGc3dkcyN244cUNWYjl6NktXb042eDdJYTI1cXgx?=
 =?utf-8?B?bmcxcHBDRVJRPT0=?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <89E09FC106A173419F3E907792971F14@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB11025
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF00028CFD.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	99121fd6-b68e-40ae-e56f-08ddc877c03b
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700013|82310400026|14060799003|376014|35042699022|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?V0IxQUxBQVp0VTV6TGpZQUZaSEdRTnY5N1dyb1NsZGlZMGRJc0Q0SU1jcFpK?=
 =?utf-8?B?ckpUQWpMbUlGQ1RETHRXeHZBSU4rL0N2UmhsaUNCbXVCREpoWThHeW5HbXdR?=
 =?utf-8?B?UGFjVEdmQXdUTDB4UVROdXZOKy9UYm5aLzhEZkFHdkJQM1NuMmF3VmZkelUy?=
 =?utf-8?B?c3RvZVlZcjUwZXdKKzEwYXFiZSttQzgvY1dRK0lyc3FlY1ZVb0tUQnNmZjhH?=
 =?utf-8?B?Vmxvc3lZbVNnenI0VnNuRmVhZ0R6QjJuOXdSellnZThPS2RRVTNqZ1JUaXJ2?=
 =?utf-8?B?b25xUUhoU0xyc1dZb1lzTUtmS1ErcW1mTXNVZTZ5QlFid3pkZmtCN3FScjZu?=
 =?utf-8?B?RjRNa3c0Y0VXNGpwbkQ2SzNEeUlQR1hiNFhVR0lHejVLbGpRcU9lSFc3Q1FB?=
 =?utf-8?B?ai83WmhldnNpcEh4U3RraHJwcG9ncDdJZ01IaU9SY1BJdGIvTEJ1bENJOFd0?=
 =?utf-8?B?VlFvQkxBeTdEUjNwMmQrQzZkMUZKNVcyUW9iWmszeVBOMDh0TW9mcGtpMXF3?=
 =?utf-8?B?MkhxZ1FTT1BuR1pMWEE4ZkRBSW5zRnRtZWR0b1Rhanp2aDd0czFESTJ3SzMy?=
 =?utf-8?B?KytLT1B1Z1VtZGlscWxFbzk2RlNuNEgwU25JTzdGc2tCeDA1RzIvOFY5WERH?=
 =?utf-8?B?YkhIeGNVSTQyNEhsK3ZaWlY2V3hLbkdXd05GZHVOZVNWOFJ2aU5BenVlOVlR?=
 =?utf-8?B?SUUzakh4T3pjYS9CSjg5RnliN1JrSDNDRlVSeG03b3JrelJLakR4eXJMQm9j?=
 =?utf-8?B?SVV0L2NGMmFYaXNqTjlLTUtOZm90UUN6aHJBSVZ2REZRRXMzM0o1ZlFuYlQ0?=
 =?utf-8?B?Zm1EMjZnVzFTYUt6WWtjOHFJdVR4Z0VFM1J0dHdhcU5GbnNlQkhhWUdGbldh?=
 =?utf-8?B?THNIblVBaWJ4U1ZKc3NUS2xXZFprUjhOc0RzWkZkQjBBUDJMakZrVmcrSlI1?=
 =?utf-8?B?VzdncC9mMmVtM2pOVld2SUpwNHBvR2JNb0g4bThuN2g3MDY5bVZMOEtsVzY0?=
 =?utf-8?B?NlAzb3hQQXZzTlZiaWF3NWhrbTY4YldCdDR2Y3BkKzd6WGxHUWErVnM4VjMw?=
 =?utf-8?B?dW03cGMzaytZZ3IvQWlQUkFTVjF6QnYxeTBMUC90SnB1OHp5d3JZTkU5eDEv?=
 =?utf-8?B?aXU1TnV4U2JjbzU3RDZVeitJTjNKdURDd3BmWkp1Um1vYmUyZ3V4U1FtMDlw?=
 =?utf-8?B?emovNDhxZkVXVW5hN2RrNU5IM05JaFBhenhTdlI4allJNHhweXkwdzlNUWg1?=
 =?utf-8?B?bTFBZWZmZGhuWUJHVVdqTmtPQnVFYTZqM0dIbDMvVnNrSnhLSzBNdHdtOHFL?=
 =?utf-8?B?eDVRTFM5L1ZMVGh6WFByVGREL3NDL0FUdWkwNE8wQnN5OFU1cWE1R2FMTWdR?=
 =?utf-8?B?YmJaMzNQRnFwNFcvK0F0M043YXZIVDAzTUg1UnB0QnJ4S2ovWEV1Rzk3T0hQ?=
 =?utf-8?B?WlJTQ1Z5L2k4dnlobzNoNVExaCtIQmgyTndRMmxkbDdpekhUTm1LcmZOL2dx?=
 =?utf-8?B?Z0NzM29UcVpmV01vcVoxL0VwUkVJMG9wczF6NUphdVN1KzNKTXA1ZDhIbXl6?=
 =?utf-8?B?OWZLUlNqV0c0T2tiQXpWazNaTHBzeDREdXFvMzc1NlVhSHhYbW5oR2Y1SmJY?=
 =?utf-8?B?SkdGZGd0ZDhISnhxTjEvZWwwamV5d2pTb0xXNVo4MyszWGloOWhvWWxvYy9l?=
 =?utf-8?B?b09udEhYWWdmZE1JRVZsQkMzUnlmdGxCU0NrdDRIUHFOWndmcE11blB2cFQx?=
 =?utf-8?B?UTBudEtWallLc0oxT0pkb3dISDV5RzQ3T2lhYS96M1E3dzE0bkx6UDByUEc5?=
 =?utf-8?B?MllkQWdOMnQyTGxNMXlvaU1JMUIwYlJsbit0aTgxQjZJZjNZcmV6WWJROWhv?=
 =?utf-8?B?M2RDLzl2emFLam5pK2xDekFiNTFZaVBob1d6dmpQSmVkeXdHTndUVzU5aU5Q?=
 =?utf-8?B?MlBMaEs0SHFsSkdyd1NRaEN6MVcybS9wdVk4SlVKS2Yxek1CNmY0YnVVdnlL?=
 =?utf-8?B?NXdManlNR1gxZmFqVlFvZE9FNDRYbDlVbVZFSDZrbUJhWmtNV09SRjk2dlls?=
 =?utf-8?Q?QXF2J7?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(82310400026)(14060799003)(376014)(35042699022)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2025 16:58:33.0033
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e1d7a61c-ded1-4b1c-f784-08ddc877d371
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF00028CFD.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8735
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Jul 2025 16:58:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65693

DQoNCj4gT24gMjEgSnVsIDIwMjUsIGF0IDE3OjAwLCBqb3NlcGgubWFuaWFjaSB2aWEgTGlzdHMu
WW9jdG9wcm9qZWN0Lk9yZyA8am9zZXBoLm1hbmlhY2k9c2VhZ2F0ZS5jb21AbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZz4gd3JvdGU6DQo+IA0KPiBJIGhhdmUgc29tZSBuYXRpdmUgYmlucyB0aGF0IG5l
ZWQgdG8gYmUgZ2VuZXJhdGVkIHRvIHBlcmZvcm0gc29tZSBjb2RlIGdlbmVyYXRpb24gYmVmb3Jl
IG1vdmluZyBvbnRvIHRoZSBvcGVuQk1DL0FSTSBwb3J0aW9uIG9mIHRoZSBidWlsZC4NCj4gICBG
b3Igb25lLCBpdCBoYXMgdG8gYmUgY29uZmlndXJlZCBpbiBDTUFLRSB2aWEgc2V0X3RhcmdldF9w
cm9wZXJ0aWVzKGdlbkV2dCBQUk9QRVJUSUVTIENPTVBJTEVfT1BUSU9OUyAiLW0zMiIgTElOS19G
TEFHUyAiLW0zMiIpIHRvIGJ1aWxkIGluIDMyLWJpdCwgbmF0aXZlbHkuDQo+ICAgQXMgb2Ygbm93
LCBJJ20gbW9zdGx5IHN1Y2NlZWRpbmcgd2l0aCAnREVQRU5EUyA9ICJvcGVuc3NsLW5hdGl2ZSIn
LCBidXQgZ2V0IGEgJ2xpYnNzbC5zbzogZXJyb3IgYWRkaW5nIHN5bWJvbHM6IGZpbGUgaW4gd3Jv
bmcgZm9ybWF0JyBlcnJvciBiZWNhdXNlIG9mIHRoZSBpbmNvbXBhdGliaWxpdHkuDQo+ICAgU28g
SSBuZWVkIHRvIHNvbWVob3cgZ2VuZXJhdGUgdGhlIG5hdGl2ZS94ODYgMzItYml0IG9wZW5zc2wg
YmluYXJpZXMgYnV0IHRoZSBNVUxUSUxJQlMgZG9jdW1lbnRhdGlvbiBkb2Vzbid0IHNlZW0gdG8g
Y292ZXIgdGhpcyBlZGdlIGNhc2UuDQoNClNvIHlvdXIgcHJvYmxlbSBpcyB0aGF0IENNYWtlIGRv
ZXNu4oCZdCByZWFsbHkgc3VwcG9ydCDigJxidWlsZCB0aGlzIGJpbmFyeSBmb3IgdGhlIGJ1aWxk
IGhvc3TigJ0uICBZb3XigJlsbCBuZWVkIHRvIGJ1aWxkIHRob3NlIGJpbmFyaWVzIGluIGEgc2Vw
YXJhdGUgbmF0aXZlIHJlY2lwZSwgYW5kIHRoZW4gdGVsbCB0aGUgdGFyZ2V0IHJlY2lwZSB3aGVy
ZSB0aGV5IGFyZSB0byBydW4gdGhlbS4gIEnigJltIHByZXN1bWluZyBub2JvZHkgZWxzZSBoYXMg
dHJpZWQgdG8gY3Jvc3MtY29tcGlsZSB0aGlzIHJlY2lwZSBiZWZvcmUsIGJlY2F1c2UgdGhpcyBp
cyBhIHdlbGwga25vd24gbGltaXRhdGlvbiBpbiBDTWFrZS4NCg0KQWdhaW4sIE1VTFRMSUJTIGlz
IF9lbnRpcmVseV8gZm9yIHRoZSB0YXJnZXQgYnVpbGQgYW5kIHVucmVsYXRlZCB0byB5b3VyIG5l
ZWQgZm9yIG5hdGl2ZSBiaW5hcmllcy4NCg0KUm9zcw==

