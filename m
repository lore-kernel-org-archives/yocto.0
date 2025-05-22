Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09D14C54E90
	for <webhook@archiver.kernel.org>; Thu, 22 May 2025 13:38:30 +0000 (UTC)
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (EUR02-AM0-obe.outbound.protection.outlook.com [40.107.247.87])
 by mx.groups.io with SMTP id smtpd.web11.24160.1747921103837059548
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 May 2025 06:38:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=BVgiyO/F;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=BVgiyO/F;
 spf=pass (domain: arm.com, ip: 40.107.247.87, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=D2Xy7d+p8lnb84YmMm/zqxsckmfyjT3mlcY5UcOs8pR6oqQVCOKiHDzI5bFxoXexSH6L+SBfO9K9l19zcIJmAcpUd7i2m0FzVeLTjWmPZtmLmi6DaNdoBEZ5S5ia0AsfnQaVdMWgJQpvgwqDY4Ad47M5GjGJVcS5Aek9AT8A6krivBdSfVGtYTaTzQ821sokxkZqM570+L63iKBaFCEnLFf1DPd4moybYH56SOje1SmPlTNhb6BRab6y9w6XOlHAFODArNMbmtYxqpGIcPQjWtMUwEineAjTjTEXwWs7TyDRfHOAe9FlXnroXYAGI9j9Bn1dTAYUjqo6wuWebu9Muw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E1v+OnaZBxS+rlhFqzBMm4OGbW9ezR3lJPzb87FEESo=;
 b=KQpbVzQTWVSr9ffSR0Al/5CUox/xQOOx5hRWi52Ue09ehh5pBX5SX/QviBOncFeZ1yLJ1SbfTmXHlKJGxhFcojSLHz6IAdktqiVrxT04L0M/AR90JFcvLuy4C89loJJLotFdvKfE5WnDT6H0oWwR4hV8kyFG0Obn2ShstNtW1yYo42MbrAnaVqvtSMbRmsqiYbkOAd0WgrSY50UfcDWHlEglwtpWgHsQdInC/ltmnl4YFRRIKwSn8oShthzoCkdStINRFQ5sN8WTNzu0bmfCniQiamvmUQvjC4KRn0Y+6o4jk02dSMxXFd8DvA55rWFCVwsI/vNWrN3lVjO2mihyvg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E1v+OnaZBxS+rlhFqzBMm4OGbW9ezR3lJPzb87FEESo=;
 b=BVgiyO/FA1iQC/hMmxi3bwcHm/TcGqB1/79+AFr3roJNn/MHBTfcs9eA5NB3QK7EXGnhiALl/YVnQeDX1YjXXaRIb5wbbZrPjfCnOEilrL2Jlz4WBYC+ykj950WurjYogFi2DEFakkrBu8VCS86QKmLs6nIRS0EfKjTfy9aU6TY=
Received: from AS4P190CA0021.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:5d0::6)
 by DB9PR08MB6729.eurprd08.prod.outlook.com (2603:10a6:10:2ac::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.30; Thu, 22 May
 2025 13:38:19 +0000
Received: from AM2PEPF0001C70D.eurprd05.prod.outlook.com
 (2603:10a6:20b:5d0:cafe::8f) by AS4P190CA0021.outlook.office365.com
 (2603:10a6:20b:5d0::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8769.18 via Frontend Transport; Thu,
 22 May 2025 13:38:19 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AM2PEPF0001C70D.mail.protection.outlook.com (10.167.16.201) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8769.18
 via Frontend Transport; Thu, 22 May 2025 13:38:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tI4PpNX6SQcmuM2yHxJHXjNRGfUMLsl36CWXG7D9KIymPX31+SgsNBGeLLSWFwqk4JtrBHBm3EjpLrBburHKH5eN8xVIaReS4QtSduVOGiNXDT0erwj0sDez0Y8iIyWktXzF4PtAbQi7b/fVd6Kq6Gi86yF1SUV5cCAozjMz1REfGJee9tNcIsOrHjv5FKbJ8Jm9Mn/wL5+j167gr7kSlTt5BNjAVKqnCJxPmNvBcDbAUNLL+q5ES3rsSIpHOxd7oavpCYj83YJyh+V/hmrjiE8d5R6wobpvRgY4+AiLLgNLhAdRTWezJVXNOCrraJ+N9BT0JB7lKkTex+YUeAqS7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E1v+OnaZBxS+rlhFqzBMm4OGbW9ezR3lJPzb87FEESo=;
 b=nMNqpz7gS3FN2QcAT8UCGn0PINtrBh0kiGt8Tma0GvKTWe4cSmIYrHE3DWo28NUwAEZ+78Lm8s3qr0Q9t2xoJVHexoOnYVnDnkUVqtNbMhbIa7l9tDxc4sqZ6piFdzYARmxiA3OC74Ac1H9BPs2cFrQWlzlUUwNjN8Od5Z2o8ZoHYz1IUWEiIQ8Vfle7Yv9nytpxrU48xoOgUhAndU13dKMUf2jwVx74FlyY+o2jfSC8SQo1WgoiRJL0SeDnsCugcyEMxozsa0NZ9X2/QDBpZZwSOzxVNL/MnyQ96nN8MHyqmyOz/hbU5BHZZboj1OAHgnM+ODHNzkofzxL1cgS50Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E1v+OnaZBxS+rlhFqzBMm4OGbW9ezR3lJPzb87FEESo=;
 b=BVgiyO/FA1iQC/hMmxi3bwcHm/TcGqB1/79+AFr3roJNn/MHBTfcs9eA5NB3QK7EXGnhiALl/YVnQeDX1YjXXaRIb5wbbZrPjfCnOEilrL2Jlz4WBYC+ykj950WurjYogFi2DEFakkrBu8VCS86QKmLs6nIRS0EfKjTfy9aU6TY=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM8PR08MB5602.eurprd08.prod.outlook.com (2603:10a6:20b:1d0::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.21; Thu, 22 May
 2025 13:37:46 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8769.019; Thu, 22 May 2025
 13:37:46 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"rroyce@textronsystems.com" <rroyce@textronsystems.com>
Subject: Re: [yocto] Do_package is changing permissions of files
Thread-Topic: [yocto] Do_package is changing permissions of files
Thread-Index: AQHbywS9SCVpHEOygE2/x0gkVxgwXLPedyeAgAAmOYCAAAnxAA==
Date: Thu, 22 May 2025 13:37:46 +0000
Message-ID: <DC492DE1-8638-494E-8DBB-E865BBF78924@arm.com>
References: 
 <CANNYZj-ee1PYLRvQY1KiNboHjD+yw3N6fVh6kBc0pLmXdSbW=Q@mail.gmail.com>
 <26223.1747918921618014153@lists.yoctoproject.org>
In-Reply-To: <26223.1747918921618014153@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.500.181.1.5)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM8PR08MB5602:EE_|AM2PEPF0001C70D:EE_|DB9PR08MB6729:EE_
X-MS-Office365-Filtering-Correlation-Id: ca7edbbd-da55-4553-cd56-08dd9935e9ad
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?U0N6Q04vQ2NYQXdQYm96OXZwbE9GU1lGaEZJblp2UW1JOS9DSXBQdmVRZU1V?=
 =?utf-8?B?NmdFYjYzZzF1L01WVjd4OWY1SWF1S0MxNWVDMjAwcHU4V1RHRDlBalFhTWMw?=
 =?utf-8?B?cVVENEQ0S05IaXFnSC9nbk1HVjhHQlF2SFZSYUt6Um5aT3NsaWQ1YWxtNSt1?=
 =?utf-8?B?OTlXZHNpT3F2VGdFaGRXZmYrTTZ0ejA5bGJWSm9aZEM2cHIvSmZXWTBaN3dx?=
 =?utf-8?B?d0tIRWFTS1hnZGN6M2JINnpHMmg5aytwUFlKcHI3cW12b0JOMS9OZzYzTExt?=
 =?utf-8?B?VWxKUHZHcDNhejNMREpUbUhuZkxMUWNySklJWDFOVzhHZWIzeXRMQjVyWVh0?=
 =?utf-8?B?alNSZ2tqUkV6ZEl0MFFPSlkxZk8rTStMQ2FJQnFIQlVFTU1zS3VUTXNweXdM?=
 =?utf-8?B?ME1uby9BckJrWHFPaERFTUNocEdaVkdEdXdiVU5zOVdjTGN6MEdVbllNbHdB?=
 =?utf-8?B?MWVjbGUxVDAybm9LeEszL2lGM2tBRGtyTCtBV3hiWWdVaDRvcDgxMm9HQzIy?=
 =?utf-8?B?eFUyL2VtdTFocGM4T0RON2RVUURscDF0WGEyVldRNGtHcHorUkhybDF4dDZB?=
 =?utf-8?B?UEVIMkJYVjlTekI1NVZzZTd5dkVVazdUY2F2QysycDBHMXowZ1FhTjBlWWl4?=
 =?utf-8?B?QkRXMWZyRG8rLy8zdnJENTQ2SER5djhlRm5velJtb216amI2U2o4Sy9Ra1B4?=
 =?utf-8?B?WndjWGY3SHhaSFZTdXkrRkhIWTVuRm5pb0t6MHIwUjBRcTVGVTFiTnpiT2xI?=
 =?utf-8?B?ZEhhQ0kwUGZ3cDhKRjYweXBZVjgvNkZFbWtQVkdVOHlSSnk1MHY4a3gyc2ds?=
 =?utf-8?B?cjJwTHQzK2s0RUZvaWgySGhWOXp5T0VYbHFHTysxSGRab3g5S0RvT1BBK0Uz?=
 =?utf-8?B?elpXOUFKV0FQallXUk1yc0lvVW93MnJtUk9Ebm1WU0xmanlVLzk3M25nc1V2?=
 =?utf-8?B?MzNBNFA5M0hreUY2bjN2SGM5alJDcGpENDhFMGkwT2EvcUpyNG9lWjJhcGVG?=
 =?utf-8?B?aGlOL0cxSEQzSTBDc3VTdHU2b3VwWTI5bW5vakdIZS9qOGdhSTlNZDNjb0Rn?=
 =?utf-8?B?cG95ZkFZWnZ4UU50SURFZHBsZUZsaTg3WEExOFlNSVo4VHkxbkNGcGkxUnJY?=
 =?utf-8?B?eXNrbWIyd1VqSzZRMDI1VjVERG1kMnFTOGVOU2xOVDVEMmdSdnFsYUQrUGxF?=
 =?utf-8?B?V3huUzJZUUNMY09GSHpUaDRLNUtCTWVFNW1pYXdabTl2akkzZWZhS3lxK1lH?=
 =?utf-8?B?T0FtZDl2SzF3Qy9sNkJhNHFid0VlOEF5aUZlNFlIbkVOWENqblY1aS9GT0N0?=
 =?utf-8?B?RmlJTm9uU1V3YW15bEE2Y1o5Q0tmbG1TYjhSVHhXdGhCZXdCRTRta0dBUW1J?=
 =?utf-8?B?VGl3dnp1dzU4YU9pNFVCMUNTZ0kwMmxObFl5QXBaWTd3TjJEOW9MTDdWbytD?=
 =?utf-8?B?QXpMQlExV2ozaWZ5N0hyYkFJUDE4WGhUTldWamZydi90OFVIK2tlZ1AzdnhG?=
 =?utf-8?B?bWd3cEVKMk1EbTJhdVptZUNMZTBCaHBSOGZEMWdSV00rQ21PV3ExSDA5UTNh?=
 =?utf-8?B?L3RtR3pmMjNaYVcxak1Rb1hSUGk2MWhWTWJvTm9GWVhXdzAxWmRMOHBGTW5h?=
 =?utf-8?B?WE5sUFArTkFHVmFuc3ozdjJ2S0tCa29MaUYydXE3djl0cmkyM0ZjMDJ6QlNh?=
 =?utf-8?B?dDJOMmMxVk5HTGphb3RBN3B4dkwyZi9aRHJBNVF4c1hQc3hkUU9CSUFUZnVO?=
 =?utf-8?B?RCttNXAyUHJrcWsyRFd0TGhjM0wyMjRlVUkrYTZVTVowMTZOc1lmL2ZVeUZ6?=
 =?utf-8?B?TEJUV2QzWEU0Q3F3WHh0L2hhOVlKUkhXb04vRDF5L0s0UDN0WjR0bndXbzRR?=
 =?utf-8?B?VE9va1lRbmVUaUpJdjFBVzY0M1RSVUhHbmJXQjQvSGR1MHVYRDZqQlU1bVZq?=
 =?utf-8?B?bk9oYUJDS0hwQk91VUNYK3dza1YxM2hxYXE0bEsvYnpWSGlXZWQzbkJ5bGZt?=
 =?utf-8?Q?+wSFFXQzhqlRcajs+jeW1LZzW9i8sU=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <2AF319A6D327DD42A5BB1FDCE5C6321A@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB5602
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM2PEPF0001C70D.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	983626e3-4327-4235-6fd0-08dd9935d677
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700013|82310400026|14060799003|35042699022|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cmdPUHZOTXY2TEtWMUdSY3U5cTFudlZadlJTTExiak16UDNOZWNvam9ZKzlT?=
 =?utf-8?B?YmhvQjExTEdWTUFKMmo1b0JhdmJQclNIUUFIYWZMRFY2UllFeWdTb1h5aU5w?=
 =?utf-8?B?MzUxUDgvMGU2bTZtQTI3dC9KR2M1WEpxcGYrK0FjTEZGZFhGUlZya2tUWUQr?=
 =?utf-8?B?WmpNY0hDbDd6alphWjlJQm1wVGZGVEFBb1I1eXhGRWgyZXlia2w2QjFxMWpQ?=
 =?utf-8?B?UU4ySzBqR04rWEloS2ozeVArMkZDZkYya0puNzQxTEw0NWVmTVpTekJwNkpS?=
 =?utf-8?B?dnhVOUFMV2lxbFRiOUlhK0dmWElIVHZrNCtyNEZ3WENBSGFORE1uV0RFQzM4?=
 =?utf-8?B?a3F2SzZ4aStzTGdkOG1LS28xOGRETjdBZ05qZ0djV0plUjB0Vk11bktqZXB6?=
 =?utf-8?B?VkVQeVFPTkN1czh3R3VHRCtmNVk0WGhuZHJGVktnazhkem9rSnh3cml3RE5h?=
 =?utf-8?B?RGRlKzVoSk91SXV1S05vV0FQNXJDUFdoaG5VbzUrbjN4QkxSTzRGazFuRGEw?=
 =?utf-8?B?VmczRUFKbWdPVjBKSzJHV2QzNTdxUXRCaCtCMkNQU2psOUQrcE1KTERQeXNs?=
 =?utf-8?B?YW1zS2wvbE5WRWwyeWFZVGR2Tng5Umd1NDkrYWhjYnVUamhoYitMelJDbWxJ?=
 =?utf-8?B?SWVkdTFZNmhBN3k2eUVNcHdFL1c3NmR6aFFmeHVkbXRONzUwK1R1NXFKSUtQ?=
 =?utf-8?B?amFvd1NUZFRYYkJGR1VuaVU5VWtXSTFDbnRLYXRvMUx4SmZQUEt4dmJoaWVi?=
 =?utf-8?B?eXBIcVJRbGNrL3hidURPVVVYejJKVW1YVGZ0cmFNWmpSZ2tBam9Vc2p4M3Qy?=
 =?utf-8?B?RHhXZkR6ZmJlVXBvbzd2NTRNdXFtTS9rcUgwbzNTZ0VVUUViUVJjMzRoaUV6?=
 =?utf-8?B?RUlMcHNvaWhJbnhqWWhKZkcrMUNscTYyc29hUWxXQTh4UzAybU8xTUhwQnhO?=
 =?utf-8?B?YmpQVjRkL2crU3VzWDF0WkdBVG5sU2xRTTFZbDNXY0F4SE42ZkFtMldUdEdS?=
 =?utf-8?B?L2tUWVE0ZWh4V0xLdWdzM1hBY2w5SWYyQXJlcWpORzZ1Qy9XZUdCbTMrUkRV?=
 =?utf-8?B?c3FOU2Vsay9jMHBaK1FJWCsrb01EWjhhSEhWMGF6d1JyZlpTV1NNNUdBRmRX?=
 =?utf-8?B?MStqdGU2ZmNnVVJvT05iNHpRY3hsSkZsN2ZaSVdBRXJhcHFzOFkwTG5UNWUz?=
 =?utf-8?B?U3VZbVI2R0dTQWpXaUxNcG4yRWZwbC9qR1FGVFIrNWhLUGlPL3NWREtQQTBi?=
 =?utf-8?B?R0p0dzA4THhWQzBTWEZXTWJhNXJLeUFVR01VeTFOTlk5Z3J4bFQ0M1hoeUht?=
 =?utf-8?B?elN6cHQrakM3SGFpYzBiVk1Gc2wrNGh0YlFwOXdPTXhoZDE1STdzVlFEc1hG?=
 =?utf-8?B?dlJVWUprQkZoNHlGR3RYVjFVYXRDUGYxNmVtV3dMc2xKM1c4c0pNdGRZazc5?=
 =?utf-8?B?VlFFUGxWWVMvUmwxVHorZkhVbjNKWUVMNXRld2lScHhtQWtta3hFQ3FWK0dG?=
 =?utf-8?B?cmJkcVhHNUpYZGh6eVZRd1JWT0xzRnNMSkhIU1JTaWJ2U25mN3N6Yk9BM2N5?=
 =?utf-8?B?TWp0Mm9iK0JLRjFXZ2l6R01LcmoxeDgvV2ZpbCtZUDVyTCszVEUramNGUUNE?=
 =?utf-8?B?YVY3c25uYmxSUUxBL0FYeW4ySEUrMEl0L3JnZDBOMGc3OTREdE5GTHVqNE50?=
 =?utf-8?B?UDNnMS9UZ2JERnZlK2FEKzlkME0yZ3k3MlE3RlNiMzQ1V1hXS1VZZXo0RDJY?=
 =?utf-8?B?VmVYMFZ6YmhSRVE3MDUyOFNXRXc2b2JLNm1heE45MjdwYTdKUWhKSkZzdEJO?=
 =?utf-8?B?MXJPQ3RMcHVNYlVOYndIY1R0SURNZlY4QiszdmRGRjA4REhRbDRXdmlrM2xD?=
 =?utf-8?B?N0ppSzVaZjRLNktldmRzR2p1cFpIMlFBc1NZa242aDI3YTVUQlBRbnNHOFdF?=
 =?utf-8?B?UklIV2hIeGVXRDRvUkRqYmtjWUU4QzZQcjhUa2luaTA4L3ZvczdhajBHdVFy?=
 =?utf-8?B?YWRSMkUzL1hxOW5rZUgvWHJmQ09UK1FLK0UwOTRna0NPZ2xOUytJM2ZON09v?=
 =?utf-8?B?cWZxKzY1YURqZUptZEt0WlZzWlF2VlJ1WXJzZz09?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(82310400026)(14060799003)(35042699022)(1800799024)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2025 13:38:18.8919
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ca7edbbd-da55-4553-cd56-08dd9935e9ad
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM2PEPF0001C70D.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6729
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 13:38:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65401

T24gMjIgTWF5IDIwMjUsIGF0IDE0OjAyLCBycm95Y2UgdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5v
cmcgPHJyb3ljZT10ZXh0cm9uc3lzdGVtcy5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3Jv
dGU6DQo+IA0KPiBUaGF0IHdhcyB3aGF0IGkgdGhvdWdodCBhcyB3ZWxsIGZyb20gdGhlIGRvY3Mg
YW5kIGxvb2tpbmcgdGhyb3VnaCBkb19wYWNrYWdlLg0KPiAgIEFueSBpZGVhcyBmb3Igd2hhdCBj
b3VsZCBiZSBjaGFuZ2luZyBmaWxlIHBlcm1pc3Npb25zIGluIFM/DQo+ICAgU29tZSBpbmZvIGFi
b3V0IHdoYXQgaSdtIHJ1bm5pbmcNCj4gU2NhcnRoZ2FwDQo+IGNyZWF0aW5nIFJQTSBwYWNrYWdl
cw0KPiBnZW5lcmF0aW5nIFNQRFgNCj4gdXNpbmcgdGhlIGFyY2hpdmVyIHRvIGNhcHR1cmUgY29u
dGVudCBvZiBTDQo+ICAgVGhlIGZpbGVzIGFmZmVjdGVkIGFwcGVhciB0byBiZSB0aGUgc2FtZSBm
aWxlcyB0aGF0IGFyZSBwbGFjZWQgaW4gV09SS0RJUi9wYWNrYWdlL3NyYy9kZWJ1Zy9QVi8NCj4g
SXQgbG9va3MgbGlrZSBpdCBpcyBvbmx5IGdyYWJiaW5nIC5oIGFuZCAuY3BwIGZpbGVzIGZyb20g
UyBhbmQgcGxhY2luZyBpbiB0aGF0IGRpcmVjdG9yeS4gVGhlc2UgZmlsZXMgdGhlbiBlbmQgdXAg
d2l0aCBwZXJtaXNzaW9ucyBzZXQgdG8gNjQ0LiBTb21laG93IHRoZSBvcmlnaW5hbCBmaWxlcyBp
biBTIGFsc28gZ2V0IHNldCB0byA2NDQgYXJvdW5kIHRoZSBzYW1lIHRpbWUuIEknbSBob3Bpbmcg
eW91IGhhdmUgYW4gaWRlYSBvZiB3aGF0IG1pZ2h0IGJlIGdvaW5nIG9uLg0KDQpJIHNob3VsZCBo
YXZlIGNvbnRpbnVlZCByZWFkaW5nIHRoZSB0aHJlYWQgYmVmb3JlIHJlcGx5aW5n4oCmDQoNClRo
ZSBzb3VyY2UgcGFja2FnaW5nIGlzIOKAnGZ1buKAnSBiZWNhdXNlIHdlIHdhbnQgdG8gaGFyZGxp
bmsgaXQgaW4gdG8gc2F2ZSBsYXJnZSBhbW91bnRzIG9mIHRpbWUgYW5kIHNwYWNlLiAgV2Ugc3Rv
cHBlZCBpdCB0b3VjaGluZyB0aGUgdGltZXN0YW1wcyBhbHJlYWR5Og0KDQpodHRwczovL2dpdC5v
cGVuZW1iZWRkZWQub3JnL29wZW5lbWJlZGRlZC1jb3JlL2NvbW1pdC8/aWQ9NDc1NzU5ZmRhYjcy
MDA0ODhiMmE1NjhiMmJhMWFhMzFhNDU2ZDExMw0KDQpTbyBpZiB5b3UgY2FuIHJlcGxpY2F0ZSB3
aXRoIGEgc3BlY2lmaWMgcGFja2FnZSB3aXRoIHdhbG5hc2NhciB0aGF0IHdvdWxkIGJlIHZlcnkg
aW50ZXJlc3RpbmcuIEl0IG1pZ2h0IGJlIHRoZSBwZXJtaXNzaW9ucyBzcXVhc2hpbmcgaGFwcGVu
aW5nIGxhdGVyIHRoYXQgaXMgcmVhY2hpbmcgYmFjayBpbnRvIHRoZSBzb3VyY2UgdHJlZS4NCg0K
V2FzIHRoaXMganVzdCBhbiBpbnRlcmVzdGluZyBvYnNlcnZhdGlvbiwgb3IgaXMgaXQgYWN0dWFs
bHkgYnJlYWtpbmcgc29tZXRoaW5nPw0KDQpSb3Nz

