Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F795C3DA7F
	for <webhook@archiver.kernel.org>; Fri,  2 Aug 2024 19:40:51 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.86])
 by mx.groups.io with SMTP id smtpd.web10.532.1722627648417979521
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Aug 2024 12:40:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=rWOxYxaY;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=rWOxYxaY;
 spf=pass (domain: arm.com, ip: 40.107.20.86, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=LjGvA21O+l1zsp0yfwf1mCmge9cGQaIqhqEFht4Uf4X7hVBX8qndNEZUtr/PVz5Ec8QFfawFLJm/0+XYI1H95WUcfVILB4fcsoWlM2u+P/Lacwb6RF4aTd2co0wFLGn+f9j7uKUPqy2uq9TMCTx/CV/VpVovZPEuO220UIxHwPIaXhM5c0RtpecSo48XLaUtq55yArSULMQGeXkvZQkOM2SyDviSVbjfAGUKJo3Ua9x+N8cF9bkcwerDndXb6JNDR5jKYP4WCVZB35IHULzWQjNZMAiTPE+egx5traIG12nEin+Fp0VFNYfb0IGla/BV8sbBz1VdyaHWwMMJUm5zjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Axc9bbFQVyiv82Ycra9MFD7F09wNiInA8//3VA/+lD4=;
 b=TTBjs/BX7XA7SbnmTxftzYuyHfXt1V5r4kfyj+ixJQcw6PkiBlNAevjT+rlehagHwaPsid+LC8ZQnFrSxN5gPUMQJ+RHpl6hIekTBa1+Qp8pKU75qxcjuiheyNJ3MfOmXm+rYS+hbedvEd6QH2nKEc3AOqMfNE4jRv/PLXNdVrOPX2NPivRSlO3Sf4l5/b9Je7PHJrmbrVj+Df2PIw6VdqgFqvjTAeKOMnZSpc1XXXD6fO50tZQesjECBQKnwQ1Bc0iNkjwXXAu5KQF8GzKw1SafQ69jYfVj8uTJstoIEo7uWc4ApCLpbKicc7I9yd/wHLN5eqM3r7OafIGhjpZQsQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Axc9bbFQVyiv82Ycra9MFD7F09wNiInA8//3VA/+lD4=;
 b=rWOxYxaYoc+tLehJxM6hNXjPQHB38A1izXH9W7pn5eYU1kSq96dufet+UN4/ZUgPMfTwsNEt9DDNfVIlL8DCOwtyrMRijMwwX7qQlhKlAMxbWZeozWaNcO2Etg1bwmcaOGtBoFplX9uFm21poGTxOcR1oDrijjZqXZ1eL0cb8v4=
Received: from AS4P251CA0013.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:5d2::18)
 by AS8PR08MB9648.eurprd08.prod.outlook.com (2603:10a6:20b:617::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.19; Fri, 2 Aug
 2024 19:40:44 +0000
Received: from AM3PEPF0000A78E.eurprd04.prod.outlook.com
 (2603:10a6:20b:5d2:cafe::9b) by AS4P251CA0013.outlook.office365.com
 (2603:10a6:20b:5d2::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.23 via Frontend
 Transport; Fri, 2 Aug 2024 19:40:44 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM3PEPF0000A78E.mail.protection.outlook.com (10.167.16.117) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7828.19
 via Frontend Transport; Fri, 2 Aug 2024 19:40:44 +0000
Received: ("Tessian outbound 4bc87b8a8d84:v365"); Fri, 02 Aug 2024 19:40:43 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 489d226c608507e4
X-CR-MTA-TID: 64aa7808
Received: from L1f20c9bbc843.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id B8421F4D-C3D0-4B4A-B652-293C153152A7.1;
	Fri, 02 Aug 2024 19:40:36 +0000
Received: from EUR02-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L1f20c9bbc843.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 02 Aug 2024 19:40:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M/yTQLDKkzL/gEECEV2XCRpyOT78qY9WaK66r58qeu5albK9OFz4xk7QBFvZWaxbt3yy3NPD4AZsQJh3GDUcCZyzFmTLHhGkyu+wu7neRfGjOXNwy1vXQrkdjlfvAvI11XGqIzvf1x7glAKeGWqidKNQ6Idlm/Sf+/Jh+dDJ4E5D6P0k6h3tbeq4u6B1/9x0CHPwJEIQIxFMbO5h4Ejup8ytCh4aDm1mh75fdVlJURf6APTnJ2Lpurk1eTsWSju7s1Gn9vW72N1RYAa3hkbSoS9dWAYdNhnxuFJwdsBXWwR23CfdpO5vZrppzxJxfy5mgGZQgrt+NPjTys7Qf0hAnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Axc9bbFQVyiv82Ycra9MFD7F09wNiInA8//3VA/+lD4=;
 b=wXXIOFUPcaurMuNplqDM4CBcbcEMr01jXK0WbfzQReTQyEOGIDu4YVt+/eWw7Vwa6pmc8KbbWc/x12pEpeIycn1JviAcYD00JwjSjTCrM2mICG+v54SOkrN6sRjl2ZixbhwprcbMaFkfl5B/1H+gzfJZEZPsMUvTe7izqHWvDTiMFpn/oJcCOc/5sgTwozpfYQnGIqXXMOOmoZFFEGo3yFVwd+IUzOUQI2pbl7BCtH5K3TL+FB2T/x4LqWlcmTY2RsoTnCVEWUxatY+FgYyj8NsnPUxOaH4Df0a2LhZzhx/zgEhfD+ml/oFCzYx4DNrMHrQYXkq28JpGZ6Xr+Tmp1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Axc9bbFQVyiv82Ycra9MFD7F09wNiInA8//3VA/+lD4=;
 b=rWOxYxaYoc+tLehJxM6hNXjPQHB38A1izXH9W7pn5eYU1kSq96dufet+UN4/ZUgPMfTwsNEt9DDNfVIlL8DCOwtyrMRijMwwX7qQlhKlAMxbWZeozWaNcO2Etg1bwmcaOGtBoFplX9uFm21poGTxOcR1oDrijjZqXZ1eL0cb8v4=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM0PR08MB5395.eurprd08.prod.outlook.com (2603:10a6:208:188::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.23; Fri, 2 Aug
 2024 19:40:33 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%6]) with mapi id 15.20.7828.016; Fri, 2 Aug 2024
 19:40:33 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, "bartiszosti@gmail.com"
	<bartiszosti@gmail.com>
Subject: Re: [yocto] Use the plymouth instead of the psplash #bitbake
 #raspberrypi #scarthgap #systemd #yocto
Thread-Topic: [yocto] Use the plymouth instead of the psplash #bitbake
 #raspberrypi #scarthgap #systemd #yocto
Thread-Index: AQHa5N2N13gBt8SUI0+DhPCbG5lyGrIUXeUA
Date: Fri, 2 Aug 2024 19:40:32 +0000
Message-ID: <7CC61A0A-6FAB-4FF0-8755-F46122FF16F2@arm.com>
References: <6fqG.1722604299137529258.5jxc@lists.yoctoproject.org>
In-Reply-To: <6fqG.1722604299137529258.5jxc@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.600.62)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM0PR08MB5395:EE_|AM3PEPF0000A78E:EE_|AS8PR08MB9648:EE_
X-MS-Office365-Filtering-Correlation-Id: 822a67a5-1a19-4966-c343-08dcb32affdb
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|4022899009|376014|366016|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?V3J4VmlPeGg3c0xGRCs3VVl1UXhTTEEyWVB5NUFZN3pZdm9LdS9mdk1hWS9j?=
 =?utf-8?B?c2ZVNjd1M05pQ29JdHNESTBxSTZXRk1oeDUzMTZiSFZja3YvVEVFZmw1MXFn?=
 =?utf-8?B?N2hVaDU2MFphYW9KZTRGd0s2VUJncnlxT2IxWjNoMzVnSHh1SGxuTlhWTmRn?=
 =?utf-8?B?TFRMbjZCdjZNZGdaYkE5SENycGtCaTU5WVpoRDJzb0lNYk1VSTllbVBUWG1q?=
 =?utf-8?B?UUlobnJBRi9rdXRXMnY1VkYvNXowZzZrV3ZPaHJxWFBnMk1Gd09TV2hYTjZk?=
 =?utf-8?B?QUxVOFpmWkFhUUJiaGxhdm5kNm9YZmxHYklpS2xvOXppZTh4WGxVQ1JCUVJH?=
 =?utf-8?B?SUNrSDRVdGFxcWpvOWlOT2FNSlpJZEtzaXg1bmpRRytJcTUyOGIxR3ZFeEJV?=
 =?utf-8?B?K1N0NmFFQ2FpSFVWNFg5SkRCWGQ0dmNYRU1NdEpaK250YWlOK0dDTXVldm5X?=
 =?utf-8?B?RlVJUmhtWk9Ca1BndlE3bGtPZWNoeXZPeFlTS29JZTdQNGFBN0NzZ1NaR2tG?=
 =?utf-8?B?Mk5GNGFNczY3RDlhYUpRVytUUDRjZlFQaTM4aGRQeXBCRGNrT3E4YnYyd1Ez?=
 =?utf-8?B?S3pic2ErbXlBZ3Q4Q0pUTVg1aVg5UUdtU3J6OG9IRGpCNC82UDY2dWV2QTRK?=
 =?utf-8?B?NVFObkc3Q3NzZ0V1ZGYrOFNlcklHZ0d4K28vNWhvU3pHcEZmV2J2WHo3cGNp?=
 =?utf-8?B?ekh1U3JrYkc5T3Bya055bW5SbE1XQnF0ajFmakhDZ1RhcUJZcHA0UTNpNE5N?=
 =?utf-8?B?MnFqWGptMk9VVjNyTVVVN0pHM3pDVmxXbWpDYXV1bEs3U3I4MHIvcTVHNnJ0?=
 =?utf-8?B?aTJuZUx2ckY3cTNvNHg2eWZUTWtLc3BOUWlZSnZkcE9vNUs0R2hLSjc3UlFq?=
 =?utf-8?B?M05FS0F6ZG82d1lWUS9hZ0FOVFozM3NUWmVxWWVQVXJHMFVBZWUvVWJjMk1N?=
 =?utf-8?B?dHpLZU80eEMvc0FQQzJXeTMxOWlDdDJlOUlOS01ML0NYUU00SGtCR05tMTNt?=
 =?utf-8?B?ckFtTFRJQlhGR00wOXdEL0tqVkxzb0prNU1HZkN0Y0ZPOVBWVVRKQVJvVGR4?=
 =?utf-8?B?bU5qSWpxUUFoQ20vWHdwM1BkTDMxNzc4L2lHbWFUN0Qwcyt2SjgyMUdJd2lF?=
 =?utf-8?B?dFJhWnh1VDU0NFE1Q1BlcnVwYjhGbVVSOTZJMjJ4Z3ZHSzlWSEFXeStjTDMr?=
 =?utf-8?B?NW5ySWFKUks1VkkwYWNsNVdDd25PUlIvQlhjZ3lScDNlcklqZG5ZQUcyY1pv?=
 =?utf-8?B?WElDZU1OZ1F3bVI1ZkJBU2RVbzJ1MC9pWnBqTm5YZ3JzRUs3SUFZNno2RENS?=
 =?utf-8?B?RitWZ2tydnM3a0p6WFM5N0M3WGhzL0xRNVNJTXdSTDJFK0oreUdUWFBNYm5z?=
 =?utf-8?B?OFp1L0gzb0x3Wkh3OHM5bjBjSDQxblI1K2xYM3FnZ2dWWktMQ0NWQmgzYXhB?=
 =?utf-8?B?clUxM0x5K1JtR2YzNEFrMGduQmJZdG9mRVI2YVd4R3pQYUwvNUxrbld6SzRP?=
 =?utf-8?B?U1NTc1NENFNtNGtLaGZsQXlaQ21Ga05sUlBBczBLeERSVU54bk1GbDhGcm14?=
 =?utf-8?B?MU15bWQ3YXNtUDVwS0svSXpaLzExS1duelFDTWxqUzBuVUlYK1pjZ3AxdjEr?=
 =?utf-8?B?VUgwVkIvaVlmbzFCekZrVXQvNXMvSnhEZ3p1ZHRqTStnL1VlMGFlMHZRV2k1?=
 =?utf-8?B?K2dmUzcxQ2lVRXp3NWloWVNGY1VhTDFnRisxRkVSUUdPNTVOU0swRmFBRVp6?=
 =?utf-8?B?MmFDd3BrVmdnVkZWM1RxMmdYVy9HKzd2NnV6Q20xZldSQTZ3bGlBSTZJaGpP?=
 =?utf-8?Q?ySBn5AucBbqKBtqJ8mcxB1Fmd4x9VXnluLsPM=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <A3B93FA20F0B614D80080C59C3A55A02@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB5395
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM3PEPF0000A78E.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	a8ff39e2-d22b-49b3-a0ea-08dcb32af926
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|4022899009|35042699022|36860700013|376014|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SUtPdU5KWWtNbnExTjR6VXJkQzNLbEdFRWtlUVBHZVpxU0tad1ZHM1R3UStp?=
 =?utf-8?B?bi9LSWlROE02MWhEdUY5NkFCMnFJdlBTQzY2UXNTRWJwSGFiblFFcjNEN2FH?=
 =?utf-8?B?SGMzejRjNzl6UmNwaittZDFQZGttR0psZTc5azEyMjA1bEVubDF6cVBma1Ur?=
 =?utf-8?B?MDZKQmg1SnFXbjZ3K0c2VUlpa3VFUXZJMWo2M0ZLbXFDd08wWE5OM3JNejdt?=
 =?utf-8?B?MHNGVVRiRGNkdmVjbDluVFV6ejQzUXZLM21ISXRHdHBWc0xFVXU1QVFKUmVm?=
 =?utf-8?B?WnpjZ0dLMERHNTlvZDFwdzlWREE2aFdTNXVYWEFXMy9TZENueVBOZENpcUJH?=
 =?utf-8?B?V1plQTZ6Y045VmJ6UVE5NC9YcVZFTlhLMThWZ1ExTzk3akRxRUtMeEZUaEo4?=
 =?utf-8?B?SHQwZTdXYzgzT0M2UGl3TDdCdnkrMEh5amZMb0FnWWtKZnRYbTN2SzdQbzNo?=
 =?utf-8?B?UndueGdnUmlwSGpJUUVEcXFsQ1RBaFBCU0NrK1p0Z2thcWdUUk0xZWdjbnlD?=
 =?utf-8?B?NEVHL2NSMFlpYy9hbDhmUCt2dmU0WFFJdFF3TzJIUFFRMmFtZEsvVWdkdlhr?=
 =?utf-8?B?cXM3NHVrWE9nWld0V09MQ1JYYzBGMHlxUFQ1VmEzWVl0bnFlZ09KbWI3Uk5L?=
 =?utf-8?B?RkROMkw3UDVRbUNXQnVOZmkxRHRGSnNtRlBybmZTaG5ZelhZUWowNXVNOGg5?=
 =?utf-8?B?b3BlSmNvVDl5MXhqQUdFZTQxaFUxWkh1SGRobmpPWnRMNnJOaVFUR1dOVzNT?=
 =?utf-8?B?aDJlcFZJKzY3dlVYTWp3Q0JXQzRpVm5OZDlYaC9ZOGJraTNpS2hwNDBITldI?=
 =?utf-8?B?Y01vUE8zcGN5cGRUekhKZXFxb1h5Mm5VRUl1eWs1a2RpaGUxQWF3cTZTVTJB?=
 =?utf-8?B?MkVxeXR0UllCdU55S1VSd0wwSEg4THV1YW1IUFN4bVVVNnNXOWJNTlNPNkRo?=
 =?utf-8?B?UTJ4ZVFZanN6RTU0ZTVtRlgzM0MxdnhHWm5nMXlrSjZJcDlRV2dkUkgyZ3Q3?=
 =?utf-8?B?TW9nT2VmZ0NwTkZrRWpjSGlrbUt5K2pKajBndkFtMDhXdDNXM0Y4MlJZVmR6?=
 =?utf-8?B?REZ6TWt2YWhaK3JDSDFGU3A4U2xSZHZnRWF4NVI4OTg1VnlYQ2duajJuVW03?=
 =?utf-8?B?WUYrNU1wVngvYllmMUhpZVlyUHRlZ3A5ckdkT2k5clNkdThmUjZyU1VnaUJ5?=
 =?utf-8?B?NkZqOHp4Y0Nnanp4UGlveUFkVDRFenhsWTFnMTVGc1ZPUnBwQ1VqZWM0Nmla?=
 =?utf-8?B?c3JhbUVkNGI2SW5GdjN4OFAwZ1hSTmJ1d0o4T1YrN2JCZWlsYUdjdFdYZ0lk?=
 =?utf-8?B?TFI2a1pOL3ZpUXFtR2N5RFVkNTQzYW5DaTBsSlFMV0txcDRUUnoxNFljTXZC?=
 =?utf-8?B?YlIvY2IxcWY2VSsvcEhaTG9tM05vNVVtKytlMEhHKy9xUlIrRUdzeUo4Y3Jz?=
 =?utf-8?B?Q3FhSDJkb1F1ZkJvNHB1eEJ1RTJoRXpJVks0bXQrNzBqamRtUXgzVzgzejF3?=
 =?utf-8?B?Yk54dXJjNHBnbUM2d1JVWUk1Wm1XVFBRcS9RSDBGSDJGYzFEanpmT3lTWHJn?=
 =?utf-8?B?WkltMjUzL2t4UWxaM3RsWjFxWTVTeFh2cVBXYWlnL1FUdjBzUkJXemx5SGw0?=
 =?utf-8?B?TU5UTXN5R2t3SHNNanNPclpRczZ4Uml5S3l0MjE4QXJEdGJrQ3pLby9BNE1x?=
 =?utf-8?B?K0NpbW0zemMxbW5OVkNqMVR2ZS84ZE12dmdjQ0VlTHYvdFIvZlJIWFE1N1lv?=
 =?utf-8?B?T0IwMWx4QmNCaWVpclpURFBiWk50TWlMbi90WkhyZm5ySWRTN3JVVFhkMW95?=
 =?utf-8?B?SGwzS2Q4Wkx0L3RwV0lFTERRWW43REtoYkQ4UHhJZENrdU9EWStTQWhXNi9l?=
 =?utf-8?B?akljMXBYMWl5SDlyTGJTaXpGK0U4UnNUa0YvSmlQYXl5YXc9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(1800799024)(4022899009)(35042699022)(36860700013)(376014)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2024 19:40:44.1889
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 822a67a5-1a19-4966-c343-08dcb32affdb
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM3PEPF0000A78E.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9648
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Aug 2024 19:40:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63645

Q2FuIHlvdSBleHBhbmQgb24g4oCcZG9lc27igJl0IHdvcmvigJ0/DQoNClJvc3MNCg0KPiBPbiAy
IEF1ZyAyMDI0LCBhdCAxNDoxMSwgYmFydGlzem9zdGkgdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5v
cmcgPGJhcnRpc3pvc3RpPWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToN
Cj4gDQo+IEhlbGxvLA0KPiBJJ2QgbGlrZSB0byByZXBsYWNlIHRoZSBwc3BsYXNoLCB3aGljaCBp
cyBkZWZhdWx0IGFuZCB3b3JrcyB3aXRoIHRoZSBwbHltb3V0aC4NCj4gVG8gZG8gc28gSSBhZGRl
ZCB0byBsb2NhbC5jb25mIHRoZXNlIGxpbmVzOg0KPiBQUkVGRVJSRURfUFJPVklERVJfdmlydHVh
bC9wc3BsYXNoID0gInBseW1vdXRoIg0KPiBTUExBU0ggPSAicGx5bW91dGgiDQo+IElNQUdFX0lO
U1RBTEw6YXBwZW5kID0gIiBkcmFjdXQgcGx5bW91dGgiDQo+IGJ1dCBpdCBkb2Vzbid0IHdvcmsu
IEkgaGF2ZSBhZGRlZCBzcGxhc2ggYXMgdGhlIGltYWdlIGZlYXR1cmUgYXMgd2VsbC4gQXMgSSB3
cm90ZSBiZWZvcmUgcHNwbGFzaCB3b3Jrcy4NCj4gRGlkIEkgbWlzcyBzb21ldGhpbmc/DQo+IA0K
PiAtPS09LT0tPS09LT0tPS09LT0tPS09LQ0KPiBMaW5rczogWW91IHJlY2VpdmUgYWxsIG1lc3Nh
Z2VzIHNlbnQgdG8gdGhpcyBncm91cC4NCj4gVmlldy9SZXBseSBPbmxpbmUgKCM2MzY0NCk6IGh0
dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL21lc3NhZ2UvNjM2NDQNCj4gTXV0
ZSBUaGlzIFRvcGljOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbXQvMTA3Njg0MzIw
LzY4NzU4ODgNCj4gTXV0ZSAjYml0YmFrZTpodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcv
Zy95b2N0by9tdXRlaGFzaHRhZy9iaXRiYWtlDQo+IE11dGUgI3Jhc3BiZXJyeXBpOmh0dHBzOi8v
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL211dGVoYXNodGFnL3Jhc3BiZXJyeXBpDQo+
IE11dGUgI3NjYXJ0aGdhcDpodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by9t
dXRlaGFzaHRhZy9zY2FydGhnYXANCj4gTXV0ZSAjc3lzdGVtZDpodHRwczovL2xpc3RzLnlvY3Rv
cHJvamVjdC5vcmcvZy95b2N0by9tdXRlaGFzaHRhZy9zeXN0ZW1kDQo+IE11dGUgI3lvY3RvOmh0
dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL211dGVoYXNodGFnL3lvY3RvDQo+
IEdyb3VwIE93bmVyOiB5b2N0bytvd25lckBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IFVuc3Vi
c2NyaWJlOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by91bnN1YiBbcm9z
cy5idXJ0b25AYXJtLmNvbV0NCj4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4gDQoNCg==

