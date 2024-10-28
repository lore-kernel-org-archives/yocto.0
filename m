Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F6BD1359E
	for <webhook@archiver.kernel.org>; Mon, 28 Oct 2024 12:10:30 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.61])
 by mx.groups.io with SMTP id smtpd.web10.50111.1730117426719941311
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Oct 2024 05:10:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=MREWrO/Z;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=MREWrO/Z;
 spf=pass (domain: arm.com, ip: 40.107.21.61, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=uREuM/bDaGYdV3cXKnX5I+aQXaCfJkZedle45QMGoA/iI1n134g5Nh0Qtp2715hpM54UuwN0+OQIIK3juQXacPpojKgqLfC6tlDBs2HSPGGvTUAEc6jOBFgccUnLI32HE56liOGWdn7MKfKcbUWrSPKcgid5L9Hl6I1rsgL3MIQpcdnDlzN7hQRaCqOKIbmH6OAZhdOOelgqNbaJzRRXcrajwz551qlm+NxLgWBtltGSRZRrqn7R3o4E+m7jLuroNAr2B5H1wAaCxCblZ5HsgDYnlGbgwKcaq3w9QndKyTauaNyieXMf4yyVk32/H5dD+ZNgqykUKRkF2gPp6vLQ4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tw1iUgwtjkw/jV+kZZEzE6yS+NFp3eVqi0D+HCW3Kpw=;
 b=aQn3SE/qkVDs4JnMrEEF2nMCaBLU7Zg68gk992tstjJSpCYF3HfZaTJY2kM23atUzZ8nFON5m1+AzMMv0uaikxofPzzVLDy+1ZegEXWbsH3MhdZbpxnNhmhi4q2rEgO/4t4l8bMBxaOG4LPgLBu8hQxiGC5xmPMF/8kLKHeeM9oBK0pzQXZjRLGU22WRW0Vu3UVtloXGATezzwK2EpshI9gNw8E/6O5OOWhc3+d+pr5SE0QaxLmW9sJcDhlXf2Pxs4TxArV8WfooqCBG82qMl3k9vwN/7P0IlenhnOwzUczrLwb9SjGqQhprcEIFi4F1wCBzyKb1HLxyJk10gXO3/Q==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tw1iUgwtjkw/jV+kZZEzE6yS+NFp3eVqi0D+HCW3Kpw=;
 b=MREWrO/ZqsIA7Qr76rnYoJubRW90aO6R1jKKMhPPE9XbT5K6Sx66W2rQu5imNCNOAnc7Z6+BP5imwDnKUb73pUUFJ5ruDP/anT9whO06rOTjkuVJbXOyKirsm0H7sOrx8X9/ub01aoYk3nS684z0+RzqWV9eO80zC+fz0b1J4jw=
Received: from AS9PR05CA0081.eurprd05.prod.outlook.com (2603:10a6:20b:499::25)
 by DB9PR08MB8578.eurprd08.prod.outlook.com (2603:10a6:10:3d5::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.18; Mon, 28 Oct
 2024 12:10:18 +0000
Received: from AMS0EPF000001A5.eurprd05.prod.outlook.com
 (2603:10a6:20b:499:cafe::e) by AS9PR05CA0081.outlook.office365.com
 (2603:10a6:20b:499::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.26 via Frontend
 Transport; Mon, 28 Oct 2024 12:10:18 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF000001A5.mail.protection.outlook.com (10.167.16.232) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8114.16
 via Frontend Transport; Mon, 28 Oct 2024 12:10:18 +0000
Received: ("Tessian outbound 4f9bb016c0c5:v490"); Mon, 28 Oct 2024 12:10:17 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: f818148b24288d62
X-TessianGatewayMetadata: yZpuGPwZhrTU3BDNAf8Rg6FvAbvDOT6wQaGfI/h4lTKTEXt4CmKA0h3BBC9oHvnudW7/eO7ilpl5eBhFzBQ2iBHXD53O0mc/V/v2QI6a2B60dQiEzgO/g2/vgd+jWVT0BYar0m2rV8UbOGEiGlYhshXFF+qDQsDcknOzwNlL0QU=
X-CR-MTA-TID: 64aa7808
Received: from L683b22c94987.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 394CA565-3E89-4AE6-B3F8-F1B468FC52A6.1;
	Mon, 28 Oct 2024 12:10:10 +0000
Received: from EUR02-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L683b22c94987.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 28 Oct 2024 12:10:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hd96Pm79kloZYheelRSsDCXCwYDBmv2XHr17KeF0M1ZC6AUwBXvmADzS7v3t6M8LWaUujUMZwSPi1wCMYoJs4xwLjy9rob7GxLKXL3hUHOHahy+TR0zF5p5OnY9PcGh1nSNeAzF5zYj20Ys3u+Ke9lzt0ePiBsORB9aFLWndGGoxiLT1W4lajq18dAG6C0xbOPyp71PEtX5kfQPEP4EsTi8VD+jMzSMA1itOrv485sRjg3I+NPcLwEBwZ3MvPySZ+7pDZN3QdtgVYMvfmanvUKCSRqGGy0DOld+SlJAmpJqXbwQEyzbfDNxfm40FMCDx+3OmI2WQ63NvIXVos5fugw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tw1iUgwtjkw/jV+kZZEzE6yS+NFp3eVqi0D+HCW3Kpw=;
 b=F0GV9+wgSe4z6maWffXXc+hGdlptEbAgFdHbvwHTbF06UpF33HlAuueHHNFRtgRNhr/y2HjouKJU1LJh2CPaF1S3NJUvKLYK3OMUNDGlcLiBlSFRBL6g7HfyII3t4RhqBZ7VNwFDKIoDiGaKEhYyeShjyCJf1QZV5BhLTdqGxnMlvgfkjbWnwabfKAIUB2EIHzAqu+fzO3djQaruQ7I1uEjGcdf/ECS2p2FKvt7p7Z5n2WMxWiTDVOJwfxSM190iQz021HCylP9MDzUUg5u0qBeBHSavLe2HNaNJdhxJuJ8lqky5dQshESkoWFgDtP5JiVaTm84FwAf8DCzGQLSjUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tw1iUgwtjkw/jV+kZZEzE6yS+NFp3eVqi0D+HCW3Kpw=;
 b=MREWrO/ZqsIA7Qr76rnYoJubRW90aO6R1jKKMhPPE9XbT5K6Sx66W2rQu5imNCNOAnc7Z6+BP5imwDnKUb73pUUFJ5ruDP/anT9whO06rOTjkuVJbXOyKirsm0H7sOrx8X9/ub01aoYk3nS684z0+RzqWV9eO80zC+fz0b1J4jw=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB7886.eurprd08.prod.outlook.com (2603:10a6:20b:52a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.24; Mon, 28 Oct
 2024 12:10:06 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%3]) with mapi id 15.20.8093.018; Mon, 28 Oct 2024
 12:10:06 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"aleksandar.nikolic010@gmail.com" <aleksandar.nikolic010@gmail.com>
Subject: Re: [yocto] What does LTS really mean when it comes to recipe
 versions and API breaking changes
Thread-Topic: [yocto] What does LTS really mean when it comes to recipe
 versions and API breaking changes
Thread-Index: AQHbKPzez1LS/ThlF0abq5PmdIOISLKcEqAA
Date: Mon, 28 Oct 2024 12:10:06 +0000
Message-ID: <A36312C9-E609-4C75-A9D3-FAEE3AEAD02A@arm.com>
References: <0M3K.1730094431599446009.TJNU@lists.yoctoproject.org>
In-Reply-To: <0M3K.1730094431599446009.TJNU@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3776.700.51.11.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB7886:EE_|AMS0EPF000001A5:EE_|DB9PR08MB8578:EE_
X-MS-Office365-Filtering-Correlation-Id: 2de76c95-160e-4113-c6a5-08dcf7497cff
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?cGRqUUxOK3ZmaHNPeU0wckdZRmxDcXRoakw0bXd4dHUwVyswb1FLT244cXZu?=
 =?utf-8?B?a0dmMGJuV2R5NXhFL2d0ZHgyS3h6eVJpU2ErZ0l6UzAxeExOeDJHcjAvQUk0?=
 =?utf-8?B?S0hrc25SelBCNTRUK2ZvOEdXQU5vWmxWUUpxenUya01jTjJIWTNETXhXcmJB?=
 =?utf-8?B?WktFdG9lK09PSTZEbVViclQzaWVuUzRkdTFHUldVSnM2MFBYU0FBMHlWVG1p?=
 =?utf-8?B?bFpEN0lxWXhKemtWUitORFEvYTZuUGdLb2Y5WFFsbGhvUnBkUFFDbEtWd2lE?=
 =?utf-8?B?WWVuYUR4MXd5WkJRSXlkU2dLQml1UFpvZWlEU0lwQmV4MFBWVkF6NUwrTUp3?=
 =?utf-8?B?NWc4N3JieGVaV042SXdFMHJCWUxqU3F4RVdrMEp5NW5zdDA4T0RnRFpsZGNr?=
 =?utf-8?B?UHRTMmR0K0ZNV3M3VUtiNk1HWWhKVEJIM2NXUjJBK1REakhSemtlaDVtV29G?=
 =?utf-8?B?VzRmU2pTWGU2NUdBYlliQytpeTF1aE41YXhMTTFUN29udXFhZjkwbTVqKzkw?=
 =?utf-8?B?eHBNUjVLVEM3T1RPRko3NHV2elJwOXY5MVJBdHpmVnl2bk5hK0RVSFJUY2M2?=
 =?utf-8?B?emtGbHhUWjdIQzRMMG1rZjc1VHlva25nUzF2RXVRclBDc1ZHdFU1N212UmFD?=
 =?utf-8?B?Si9SZWVxeGNXT2JleHRiaUNGb0cyT1YxaHhuRXpCTjllenlpbXBmQWJrVmNv?=
 =?utf-8?B?VXdGN3FMQTYyaW5XYUFuWjBxVmtIZm1zRHZXWk5mTDljQzJIUlpnajdxSjhz?=
 =?utf-8?B?cXNJQXNGd0l0bE13dUlNRFZzRi9MWTJGZllzSGo5Rk1EQW01ZlJ2cVlFKzlF?=
 =?utf-8?B?UUNSRzN5TXhRaDdXczZxZlR3Nkl1YWxYN2dVYm9kUTFYbkpHSGZFU09aMlFo?=
 =?utf-8?B?ZUUrOFdzSDNTYUFJbHM1N0h1UHZMSWlBY1Q4V2JmWUdJMXBOTjIzdm1NUC9K?=
 =?utf-8?B?aVpDcjlRV3ZrQTRwTHNEKzBCbGwxaTRxNHVyQlhDOFlLVWxkTjQ4VjJKUE02?=
 =?utf-8?B?L1F3cm14bFRBTkd2eDlIL0QwTjR3MnVTM1UzcDRGbnNwajBKVFVQZzIxNDJB?=
 =?utf-8?B?dFBxVVZmcjdNTmphbVU2cDlzbmtEZnhXWkFldWdKeHJCZW9qY2R0WmJ1UnJJ?=
 =?utf-8?B?MUJKTHJOSlFTVGp0bkFwaEc4N2FmMnl0ZFhSSlRGY2NlL3hyeU9Tek1sRGc4?=
 =?utf-8?B?aUF2WERXNGVIWmYyK2lYVExCMEpvTkZSYjdQNHdIMVNEbmdFczN1ODBpZkhD?=
 =?utf-8?B?eHhYMDQybXVpY1pwRmpnVmp5Z1ViQU5EdmlZenM3WFZUdmkvR3Q4VytEOWtZ?=
 =?utf-8?B?YXE4N0lRQ2pweWp5dnlLOWt6S0FUSUk2M2RLOUJUYzl6SHdmMzIwWmwyY3Mr?=
 =?utf-8?B?bnhXMS8yWlFPZUVVM2xlRmZNSUt5UStpR256TGZveHB4T2xHRzh4ZHIzSS96?=
 =?utf-8?B?YnN2NXFJUENuZFZESXVaZXUrUXc1OGQwNFl4ZUVkanB6Ump0ckRKa0c0NWVN?=
 =?utf-8?B?RFg4SEI4ZE1wUFYrcngxbkYrTXg0dCtXaGtLY1JnMVVlZ24rR2w1TTBRUTRv?=
 =?utf-8?B?Nkg2ZFhYQmg1ZUcvVTRpSFZ6UCtQVDc4cEg5VUxJQVN1Unl2OEhJOFl3cVA4?=
 =?utf-8?B?dmNRV2NuRnVJYXpFUTBDaGluZmJNWVdBTElhUStPaERSamlKWXNJZDJrNFBK?=
 =?utf-8?B?dTVDS3o5YWNscHk3cytEWnhrWnFnZmxRNFA0NzVNeVY1dm1XdHBGQWllSlRH?=
 =?utf-8?B?QjBqVE1GbzN2UzFJMStNQ3YwNHRzTlBxTGNoMUx3TTFDTlIxS3hlT2xOZUFj?=
 =?utf-8?Q?jmGtaB3M5/VEkfP0DbRTbaPloRBlUVr4ZDxBU=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <5C3A5C7D156CAE4586A0B20C00D110E0@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB7886
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001A5.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	80e624cf-39a6-4b99-c247-08dcf7497645
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|36860700013|82310400026|35042699022|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NWUrZXJpVytIM2RVeXZYNUI2b0wxSytXYXJRZnkwK2YxZGIwazlvYmVyeEJ3?=
 =?utf-8?B?bHZqSDFYckhJTCtnSXYxK2hiVHB1YWJFYnF5WVYzajFHV3A4UThoMWhCczI5?=
 =?utf-8?B?Vmc5UC9QRm1PL2tUTUlpRFg2QnVXZUUwZUlWUmJIb3U5MmVsVStLMzRqWk43?=
 =?utf-8?B?c1c5T0JXNWRydGtPUk9sckd1aFI0aTlkRkdDNWd3MFkzMDZWRmVUckxvU2xT?=
 =?utf-8?B?SUgxd3JvZmRFQ0pTWDNya3ZjTGM3OURLN2s5UlhXSFQrOHM2SGJnMEZCYUNQ?=
 =?utf-8?B?dGRrWEs5M3BZMTJFb0pKWndXdEZBaEEzem9oSkdhcTBMMEFtMDRrbHRRS0pM?=
 =?utf-8?B?Yjg0Nk45WTJ5QXdhQTNNNER1TWh4cUprejFLMGFHWUhqUkJtUDdzdTUyVTdO?=
 =?utf-8?B?Ums0dzhUVE5DWmoyWFNCQ0VqZk9zZzRyMHVjL1J0dHRUVy9QV3Z6ZDE2dUxp?=
 =?utf-8?B?aTVGZDJUTFhxbzlaeERpN3NoS3o5STJBaEljbGJsZEhENzVYZ0hDVDNDeUpl?=
 =?utf-8?B?N1BsUktnRzIvU1hCd29qMDdKRUdmR3oxQ2Z3WGZsc1p4YVJnd1N0d0xLdytP?=
 =?utf-8?B?UGNNNTdJeEdXNzlKb0VaQ1d3VksxYUhlNEk4cGhuMG9ndVlwTmVaTDV1WEI3?=
 =?utf-8?B?dVJ4TWJ4Mnoyb1NWZDNlR1B0enlSZzhxam5EM1YzdkVkNFNzdndmdmdzRVlW?=
 =?utf-8?B?RUhqc3RmUktqM09rZEdFV2Q2MkpBSjVPK2ZrakkxK2wvMUNJSW04V3pNTXQv?=
 =?utf-8?B?V0NTbXR6dE5UcVg3SENqRDNaZHlXNEhMMkorb0VhTDZLb2EwcmdHVWxmeFpE?=
 =?utf-8?B?eWxncUt2OHNLYTlFOVhUVElwMEdESkxNTTUyVkNydU16SjJCaVZGVTNjYnZU?=
 =?utf-8?B?SjlBUUZNOUdLUHdJTUVQcDloU29sYlJXRFAzQ25JK3ZFMjNNU1BSTUlZUmwz?=
 =?utf-8?B?Tmg4RHkrbkcydHFQZndZNi9QOHFUTFZzeExFbEV4aHJpQVh3b0hicnNyRjlZ?=
 =?utf-8?B?eHpmLzcrNXp6VGVIWDJYL1E5NjN2V25iSERVVnhrVEliN2plVmcrU3Y0OW81?=
 =?utf-8?B?TnFHeUU5NlFCdzNwcnRaQ1dIRTdaOE4veVM4MHIzSWpSQWNaeDNmZXJwY2xL?=
 =?utf-8?B?MmVkU0h5eXl2cTdwdXA5dzhHSEQwR0tVaVRkVnEvRGV4UlZVdWJJQWQrWWo4?=
 =?utf-8?B?ZzdhMXN1WDdxSVE0QTlIMDdleHB0cmpENXpoWGhlaHYvK0Ftd2JiWFFodFA5?=
 =?utf-8?B?cDM2UmFVazBHWERxV1B2emhaOXduOXRvWEFiMnQweXlLTGNwOFBJL1lSZDJk?=
 =?utf-8?B?SlNIcWtZUVI2K2tEUGtmcFBkYkNPQVAzZTNWNlNIZVF5Si9TdmRpQmdkMFdG?=
 =?utf-8?B?SFZTNVVzT0ZIZnpvMEJFVmhSZkRDYkozczRCTXVMaHlEcGhuQnVhS2tBaU1r?=
 =?utf-8?B?WjBJRWFlYnhKMHZ2WUo4anlRU2lRS09XeDhValBVVmlSdDRaMGRrL1dGNE5k?=
 =?utf-8?B?eU5YZk9JSHlibU4vSXVlclpJY1BiYk1lWkVXMVg5RW1lWnh4bVhuV3c5c2d6?=
 =?utf-8?B?SzhvNktPMTVORkdjRW9WeVRtWHNqdy9RM2sxZmZMYUdZMmpob0xLc1N4Yncr?=
 =?utf-8?B?L1JnRDFLUjNVb200VHlBcURuRTBkTjI4d0FreExiV1BIVUlGQXNNYS91Ly96?=
 =?utf-8?B?bEtONkFrNndCQjNRN3hqMlJoTGNVVHRBNnQ4bWZQdmpuR3lJbDlRdzNRQkN5?=
 =?utf-8?B?SElzYkxCVHIxWTBOblFwZk42QTRYb294M1h4RXMwTExrRS9zUElOemVxcXlN?=
 =?utf-8?B?MnhBV0pvbGNNRFZZUGY2eWpMVkFsZlVtTVM0NFhIZ3lUY3dFRVZRekxiY2dn?=
 =?utf-8?B?UUdQRUQzdmJmZUc2ejVjUk1ENk1JZTBCd2Nvc3p3TGJBTEE9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(376014)(36860700013)(82310400026)(35042699022)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2024 12:10:18.0484
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2de76c95-160e-4113-c6a5-08dcf7497cff
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001A5.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB8578
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Oct 2024 12:10:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64155

T24gMjggT2N0IDIwMjQsIGF0IDA1OjQ3LCBBbGVrc2FuZGFyIE5pa29saWMgdmlhIGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmcgPGFsZWtzYW5kYXIubmlrb2xpYzAxMD1nbWFpbC5jb21AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZz4gd3JvdGU6DQo+ICAgd2hlbiBpdCBjb21lcyB0byByZWNpcGUgdmVyc2lv
bnMgYW5kIGJyZWFraW5nIGNoYW5nZXMsIHdoYXQgY2FuIG9uZSBleHBlY3QgZnJvbSBhIFlvY3Rv
IExUUyB2ZXJzaW9uPyBEb2VzIGl0IG1lYW4gKDEpIHJlY2lwZSB2ZXJzaW9ucyBhcmUgdXBncmFk
ZWQgaW4gc3VjaCBhIHdheSB0aGV5IGRvbid0IGNhdXNlIEFQSSBicmVha2luZyBjaGFuZ2VzLCBl
LmcuIGlmIG15IHByb2dyYW0gYnVpbGRzIHVuZGVyIFNjYXJ0aGdhcCBub3cgaXQgd2lsbCBhbHNv
IGJ1aWxkIHRpbGwgQXByaWwgMjAyOCAoU2NhcnRoZ2FwIEVPTCkgb3IgKDIpIFlvY3RvIHJlYWxs
eSBjYW4ndCBlbnN1cmUgKDEpIGFuZCBMVFMgbWVhbnMgdGhhdCBvbmx5IHRoZSByZWNpcGUgd2ls
bCByZW1haW4gY29tcGF0aWJsZSBidXQgbm90IHdoYXQgaXQgYnVpbGRzLiBJJ20gYXNzdW1pbmcg
aXQncyAoMiksIGJ1dCB3b3VsZCBsaWtlIHRvIGhhdmUgYSBmZWVkYmFjay4NCg0KVHlwaWNhbGx5
LCByZWNpcGVzIGFyZSBvbmx5IHVwZ3JhZGVkIGlmIHRoZSB1cHN0cmVhbSBpcyBrbm93biB0byBo
YXZlIGEgdHJhY2sgcmVjb3JkIG9mIHNlY3VyaXR5LWZpeC1vbmx5IHJlbGVhc2VzLCB0aGUgdXBn
cmFkZSBpcyBjbGVhcmx5IGp1c3Qgc2VjdXJpdHkgZml4ZXMsIG9yIHdvcnN0IGNhc2UgdGhlcmXi
gJlzIG5vIHJlYWwgYWx0ZXJuYXRpdmUgKHdlYmtpdCBpcyBhIG5vdGFibGUgZXhhbXBsZSB0aGVy
ZSkuIA0KDQpBbnl0aGluZyB0aGF0IGJ1aWxkcyB3aXRoIHNjYXJ0aGdhcCBvbiByZWxlYXNlIHNo
b3VsZCBjb250aW51ZSB0byBidWlsZCBpbiBmb3VyIHllYXJzIHRpbWUsIGFzIGFuIEFQSSBjaGFu
Z2Ugd291bGRu4oCZdCBiZSBhY2NlcHRhYmxlIGFwYXJ0IGZyb20gaW4gZXh0cmVtZSBzaXR1YXRp
b25zLg0KDQpUaGUga2VybmVsIGlzIGEgbm90YWJsZSBleGNlcHRpb24gaGVyZS4gIFdlIHJvdXRp
bmVseSB1cGdyYWRlIHRvIHRoZSBsYXRlc3QgcG9pbnQgcmVsZWFzZSBpbiB0aGUgcmVsZXZhbnQg
c3RhYmxlIGtlcm5lbCBicmFuY2gsIGJ1dCB1cHN0cmVhbSBkbyBub3QgX2p1c3RfIG1lcmdlIGlu
IHNlY3VyaXR5IG9yIGNyaXRpY2FsIGZpeGVzLiAgQWxzbyBhdCB0aGUgdGltZSBvZiB3cml0aW5n
LCBvdXIgTFRTIGxpZmV0aW1lIGlzIGZvdXIgeWVhcnMgYnV0IHRoZSBrZXJuZWwgTFRTIGxpZmV0
aW1lIGlzIHR3byB5ZWFycywgc28gaW4gdHdvIHllYXJzIHRpbWUgd2UgaGF2ZSB0byBkbyBfc29t
ZXRoaW5nXy4gIE1heWJlIHRoZSBrZXJuZWwgd2XigJlyZSBzaGlwcGluZyB3aWxsIGhhdmUgc3Vm
ZmljaWVudCBidXlpbiBmcm9tIG90aGVyIGRpc3RyaWJ1dGlvbnMgdGhhdCBpdCBnZXRzIG1haW50
YWluZWQgZm9yIGxvbmdlciwgb3IgYWx0ZXJuYXRpdmVseSB3ZSBoYXZlIHRvIGRvIGEga2VybmVs
IHVwZ3JhZGUuDQoNClJvc3M=

