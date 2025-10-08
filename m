Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DAF9CCD186
	for <webhook@archiver.kernel.org>; Wed,  8 Oct 2025 09:58:04 +0000 (UTC)
Received: from AM0PR02CU008.outbound.protection.outlook.com (AM0PR02CU008.outbound.protection.outlook.com [52.101.72.3])
 by mx.groups.io with SMTP id smtpd.web10.12111.1759917479071390416
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Oct 2025 02:57:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=d1FJUzrk;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=d1FJUzrk;
 spf=pass (domain: arm.com, ip: 52.101.72.3, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=iHHNpotTmuU/S+egmtNaWPN3/qJE60+FKCpQ7oxipRqJEEBS5S+QqdalaLd4egxz7waGT6VLYmy1iNwiTgZW8YHiHXsm/gaZ4GLTykSbiZxqRz9xgZEuK37w4suH2acUvJoFUO5BhcREym2KaiFUd+hONYtAZvgkrsgPuKF9AlwNN81k12ZHpPrZP5rSk0jPqKJWqJ+WV0+Ym/x3w+rJhPdIT58jxAMghiKX0GKrFRfyIxtmf6mabZIaECWxeP67yNlDEED6Asv9SvqPgKBdyDMTra1pPFZ8O1Q+WvSFiEzc7Xobxjq9CN9tfhNbkY5XTK57wd/C5XS7j2hzwOZl8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xfV5UHwzrJ2j68SSDP9lJBrJNFK5+OxIcxlLIIrHdnc=;
 b=cketQb0+1SBZp8P4Nwh2Rrbd2PqShZ5q+pdxkwGhm9KE9yexzvlB19watbuLeR/Sw69JN83GkwmRn4o2kTZjTl8WghXjastIUllWtaeDbu9T+USMVrNSnWbkw/ywG6eQz1QLEfBzl83fWngu+Pb0vbT+FBWRQlZRdzu53Dxszrdc0pAMjbqTFdPmSdysrSvEWTl729fvYqi/8Frf4X8PDPC/juF/cSFS0wnFvo+lOKUapWpz3ieRmTRUZbW7CeZrWMcxx2/Qc5OUNGkdvsmPoVv3ytTwCbQFTC5GbK6cDXFqfThnWZB3IWT5lRwgI5/GSp9DkPK4BIrb8EWtwYudZw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xfV5UHwzrJ2j68SSDP9lJBrJNFK5+OxIcxlLIIrHdnc=;
 b=d1FJUzrk6AAw1iKSjcf9h/WqVWZEH+2fTaHSynHmCW5ShOkfotK+Q7OIvCf7ELTTqbzfm1KWiRJ45ZTrrgR60fQ1HpRRRC7H8vpf3twXl3zpMb4FB/8TV5IBxgYZ/Dd6LgRKJV1OsTAWqOywnSw2xcvKIjfSGjHxZgyVm5jshtQ=
Received: from AS4PR09CA0019.eurprd09.prod.outlook.com (2603:10a6:20b:5d4::10)
 by DU0PR08MB8303.eurprd08.prod.outlook.com (2603:10a6:10:40d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Wed, 8 Oct
 2025 09:57:55 +0000
Received: from AM4PEPF00027A67.eurprd04.prod.outlook.com
 (2603:10a6:20b:5d4:cafe::ab) by AS4PR09CA0019.outlook.office365.com
 (2603:10a6:20b:5d4::10) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9203.9 via Frontend Transport; Wed, 8
 Oct 2025 09:57:54 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AM4PEPF00027A67.mail.protection.outlook.com (10.167.16.84) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9203.9
 via Frontend Transport; Wed, 8 Oct 2025 09:57:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rixvtFvNt4Tx94M9yk8/YyE+rVJrYzlEJurFtaQy6KlPQ7VZn6TWsJlEEgSl3Q4Nd2nEkCzP3nf0YnzDKn3nys5HyEJspORPeUwSkJxfFZUQLr4yKNGUTSPuaNmJ6taNB+GQBxTFfnzMS8eqMxsND0aw0Rsr4ZbiHONJR4H3TqmmO5jhRCI6itzQ+T+CJRnZMaFMonwkJBuyEZ49DT4gmu/pVCNhMyzKAO6pw78XG3p+aviR+D04Hnp8PV/89aIVoj++31bloy1b00VqsZB53IupgEp41ZrniXSMafGdWEaNcISRg4a74/hsFy6srOL+4tdpKxCM1mZv22TIrZrgAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xfV5UHwzrJ2j68SSDP9lJBrJNFK5+OxIcxlLIIrHdnc=;
 b=WsEPl+2ZHtE/l85fJPg5ulngf/0LMNQ/7UgiM9uzSERHpN5sZrXW/2zMVxlmFPby5WK+vxyvSu/n1s26A+p/FERT+0ibH08M1zpLgvqyiN2XSGUoevD8Ukk/I0e+HQyWQCexWeG8Eci+txteqxAKUfkZc5DGYwSVjJDSMwWuyGdcZycHviRG+nFvDB/VSWeOq5ef23G89vpw5fxVa3D0+b5Rsn+Do3SB+n8nSITnbCWbP7KDd8pUYiY50C0jOHIXKljkriMLoAbXueuwd3E5+f/RWZYpwFhIrtkh9ABdI4GiZFH8SWare+gSJhFKz7RZDI13ewY6UUejmsRPFr284A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xfV5UHwzrJ2j68SSDP9lJBrJNFK5+OxIcxlLIIrHdnc=;
 b=d1FJUzrk6AAw1iKSjcf9h/WqVWZEH+2fTaHSynHmCW5ShOkfotK+Q7OIvCf7ELTTqbzfm1KWiRJ45ZTrrgR60fQ1HpRRRC7H8vpf3twXl3zpMb4FB/8TV5IBxgYZ/Dd6LgRKJV1OsTAWqOywnSw2xcvKIjfSGjHxZgyVm5jshtQ=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PA4PR08MB7459.eurprd08.prod.outlook.com (2603:10a6:102:2a6::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Wed, 8 Oct
 2025 09:57:17 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::7f73:806a:3493:7d50]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::7f73:806a:3493:7d50%4]) with mapi id 15.20.9182.017; Wed, 8 Oct 2025
 09:57:17 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"amit.vikas.warbhe@accenture.com" <amit.vikas.warbhe@accenture.com>
Subject: Re: [yocto] bazel build system
Thread-Topic: [yocto] bazel build system
Thread-Index: AQHcODm0nosBFHhV70On1KwDEKwaXrS4A1yA
Date: Wed, 8 Oct 2025 09:57:17 +0000
Message-ID: <0132F121-9446-4724-8640-719EA7D080CA@arm.com>
References: <6kHi.1759917257811040239.dc1u@lists.yoctoproject.org>
In-Reply-To: <6kHi.1759917257811040239.dc1u@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.700.81)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PA4PR08MB7459:EE_|AM4PEPF00027A67:EE_|DU0PR08MB8303:EE_
X-MS-Office365-Filtering-Correlation-Id: f155fd37-5877-48f7-eafd-08de065126f4
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|1800799024|376014|38070700021;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?b2FvWnY4bmVSMjZlTExKSG93VEw5ZDQxUHo5dkVhcFovclJPbkhRUkJBd2lE?=
 =?utf-8?B?UVVrR0lmNXA2dUpOUENTcW81OHp5a00yWjdlaWlVTW9YV000a2RVbWZieVBz?=
 =?utf-8?B?aHdhVXNSSExEQTJDRDFFdEExRHRFSmh2aWZSVGdDTHJnR0ozTXMwYlVHWUZj?=
 =?utf-8?B?ZnNNeWMyaHFQbEczZTgydmJiazUzbzhYK05uMTk5UGRUZ25aanZDdC9zSmJH?=
 =?utf-8?B?b2QxNUZvOWtzZ2FLbEJXdk9VZW1XUVovdmkvUStIWHNEQ0RuQ0hreEdyaS9E?=
 =?utf-8?B?RDlsQWllNXpoMzlOU1lrZUtNYWpudzVsY2ZPc01sSU9zV1liYU9CS2d1aWY0?=
 =?utf-8?B?M0xZSVZnOEMwWEU2dU1IS3l0R2pRR0J0bHRkMVU1ZVpqTk8vb1FidHBPbFg3?=
 =?utf-8?B?d09KWjlWem82Zk5rdjYwN3RzOGR6UTAyNG5oWXphWEJCK2hOL2JPellOU3BB?=
 =?utf-8?B?dlZjbWl2VitlSnlueTJQdkJtNXpkdmovMm1pcndUM3I5ci8rbGFmL3FHVG4y?=
 =?utf-8?B?dEhxcUJKRU11bjlVU0JTL1FsUzJ4cUV0bmNEb0tJQ0tNZ1VOSTMvNC9KRjFD?=
 =?utf-8?B?V3BLSllJNzZoRVBQNGR3ajljblF2NDNFYkV5cUhHTllCTzZPdFh0Sm9wOGp3?=
 =?utf-8?B?eXlyZFVocWY2VVh3LzRheUpPRm5WVXVsS0w4RVh5Kys5T2NnN1dBU3lMaXJY?=
 =?utf-8?B?ZzdrWFNEcFBVZVkwaEFtYjZDT3FxQkt4S1NESFlQc3IvUE1QaDJaOUpsMkp0?=
 =?utf-8?B?UXY4eDBERVFCVjNCM0U5b3Y2cnB5MHgyNEoydWJkd1BycXpDdXdrWlU3NDgv?=
 =?utf-8?B?WkVVUVlFT3BudGhRZmY3SVdLcDJEQXJ6bHU0SUpBeWc1THNyaURoRWkyZ1JO?=
 =?utf-8?B?YmdQd296Wk41enhlOGdGM1V4dGJ0dnNQY1BPSklvNHV6WGhDV2RMcUY4d0Vj?=
 =?utf-8?B?M3AzV1lVcXU0WkJEZTVONjdhQ2ZEdTRFa2VKVW0rcldmTXk4OWdTYWlybWt4?=
 =?utf-8?B?WEJSM044cXJqN1BISEh4NG1mTnluZ0syL0F5MFJBeVA3TWlSOVZlUE1kS0tP?=
 =?utf-8?B?M0VXcWtXQmtjRjFLcE8wdUpvZWYycndEVUJUOVkvL0ZCanFsUmVMS2VnRXBN?=
 =?utf-8?B?U1liNEtPekxuS1lZbzI0REQvblVtY28wQ2tINmtSMnorWXR1RGQvb29JVEh2?=
 =?utf-8?B?MVR4c2NUdjhKWS9LVDNMbkRLWkpKeS9vK3ZIcC9aWWcraHVBbWNEdFZWUERv?=
 =?utf-8?B?QkRLeFdQeHRzdDJuVGs3Q0JuQWJYbUh0blY3VTRuWjBTWExZZDZxUlJBZHlH?=
 =?utf-8?B?cFkwc1FCVzJtTG5PZTBSRmlHY3JJVWxHQWdGRU15bEFzNzBJVnBpU2Y3bWNO?=
 =?utf-8?B?bDZiR2hDQmt6ZlY2dXBYejFuOWlHRVp6eXMwcEIwaS9mTUVnTEticXJRZk9K?=
 =?utf-8?B?RDQ4Vk9rZXlOUjBLL2wvNTRBMmRpQUpvd1hLb3VjczdIcVRDa1VkeFlMU0FH?=
 =?utf-8?B?QzQxZDVoMXo3Q1RoMXRQY2lGZkk3MklVd0Rka0VJSXRDWm9FSy93QjRIQjBs?=
 =?utf-8?B?elJjS2hDM0V6NDVwRVpjYkpQS2JibzczTEVYYndxZGNDRDA1dFgyblUyNmN2?=
 =?utf-8?B?c0ErY08zOTBIUWIxaWpvaGNWYXNKOCtDOXFvSGVralE4YVNnU0RkVjM4NTNw?=
 =?utf-8?B?UHhqbElYZTA1L1d4UUpYdmVOMVZtYWlINDhYbkF5b015Rk1GRFo5TTk1QW1y?=
 =?utf-8?B?U0Z3K3U1SmhlRDFrSnp2bU9EcHZCOFBaSGcxUnFEajJyc3prWkZTOVc2OG0x?=
 =?utf-8?B?VGRGVnYyWEJ0T2hReGo4U1pGcmRWYnlBMXVha3owb2hLYW90NUFLZ2JPdnA0?=
 =?utf-8?B?d3UrYWszTXlCd0dsMWxPcEZwaXh2ZXFKa2tvY2FXRGJKNWNrOFgwZ1hza3dB?=
 =?utf-8?B?ODF4Lzh5OHFvK2V4cndHVGRPVDlIcXEza0Q0SVo2M0VKK3VOTytqMHdaU1ZU?=
 =?utf-8?B?TWtEL21rY1pRPT0=?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700021);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <DDCB3C1097CE5F4EA73D8D79160A9BDE@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR08MB7459
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM4PEPF00027A67.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	5b0cbe03-c24d-4f57-965c-08de065110c7
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|35042699022|14060799003|1800799024|36860700013|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?VmM0V1Jzd1orVGw3UURVN1VWTktqeHd5cnJZM0lQRy8rNWQ2YmFqci9aVHFW?=
 =?utf-8?B?MFhkWnVaT04yaDhna3VuS3FXRmRYVzZMWE5yQnRJNDJHU1c5SGxmZnV1WTFu?=
 =?utf-8?B?YjY2TXlCYUpIVXpOZldvTVJkOUFoM1BQM2M1T2NHRjZOL3VVTWdZNUxUVW1J?=
 =?utf-8?B?TlNBZmx6VDVqcFdySnd2ekZJLzVaUFNwaEpwbFBCS3RGUTZrbGZrTVZFQlZR?=
 =?utf-8?B?RUFiVy9CVUVubG1HTXdGUFhWVXVNdjdqeWw3cjNsT0ZmN3V1T1ZTUDVHR2FR?=
 =?utf-8?B?eXNKdjluRzBFOElGZW5lRk15bW1mV3pJUnBsclN6cDM0NjVReXpjYzQ2UnJC?=
 =?utf-8?B?aHhDM3hza1pwOUxZLzZsajNVbFhmTENTTWZtTWx6S3lLRmdVN0tpa2tnRjFR?=
 =?utf-8?B?enNSdkxPZnlFSEpKVFphSkZtTS9xZld1V0ZyUTJvQlIyN0srZnRoYmxiRDk3?=
 =?utf-8?B?b0hreHhwY2xxVnRJYld0L2tHQnZwSGtFMFdjMFM3THNldHptcEtTN21lZFJw?=
 =?utf-8?B?VTIrSEpmY0g4OCtQc0JveFJaQkZ2UHZ4ZU1wOEdWV0sxNTN0WTNZeWpEZlFN?=
 =?utf-8?B?SGY4SE5rUUZ6N0c4YnNUTGpUd2NQQ1c2b2NVTHFicEVZc0FENlJHcDN6S1NO?=
 =?utf-8?B?cTY0U3FRd3VVMjI5OUdXS0pydFY1QXdlTXBFeFloaHp2dURLMTVzbHVTd0pU?=
 =?utf-8?B?QURtTWpESTJrMFZ1bFcya1NSMkljblg0UDZpS3FWMTFwTENwR3kxODMrNXl6?=
 =?utf-8?B?bklDUU5jcUNRbFFMVm1LRGdFdjR0N1g0Rnk4cmlCK2hBU1dZVTdxNXgxTkV5?=
 =?utf-8?B?UVo3dENhZ3dDRWJLUW9HTVg1YWtGNVJBbnRZQ3ZJNE5mUDZVaVJrNUtEbWFS?=
 =?utf-8?B?eUg2U1dZaWt5TkplZ2FjMVRTajZBdERjeEpxMTg2UVFRN2JFT0NxL0NBa1dk?=
 =?utf-8?B?b2UyR29hTXFnanhzb0RRTDl5aUYrMmV0QXR0eUhlTnhZQU5jcW1mUDVuQmhE?=
 =?utf-8?B?YXlrZzhlc3RsS09GWlM0bkZLTzQ3d3VMa1U5UUdDM2tYR0VhODhSN1FFajBB?=
 =?utf-8?B?aGhZYTFsTjMxV1E5SGQwbmhhb2o1WHFVZ0x1MmFUclBhcWd0VlpTRklQK2hU?=
 =?utf-8?B?aStEb01iV0M4cjBrd2NIU2tldUpTZEsxZ1RzUFNFSnRvakRiNHZMeTIySnBu?=
 =?utf-8?B?TnkxVy9SYmltN251ZnhJM3ZoS0Y5bmJha3BYRnh3K2xZeWkxZklvbnp3Vmd2?=
 =?utf-8?B?NjA5VkFER0RweThhbkdnNXBCbTJLVWZmRU1EZ2M2NDZ3TU8wc29DTjRhb21m?=
 =?utf-8?B?RFFiT0FJM1ZQUDFSUW1xOGxvZm5KcDdqM3BvenB5SWMySFJYbERUaEVqV0J2?=
 =?utf-8?B?TFpxb2wxU2VJUm14SFY2aWtMcHhaaGFUdUIzSlFiSllLWStaY0l4bmhDY0t2?=
 =?utf-8?B?MERMdmUrSldTdkt4SmhXVmNRZ1B3N04vaU5Gbm00anpBMmk4NHlsanA0YTdz?=
 =?utf-8?B?UXVmczlkM1FBTWJmL2lJQkxpVm80SjVTMnNvV3I4RjhQaU8vUis3OUlOTmVl?=
 =?utf-8?B?QVJ6OUw5eitkUTc0NmNodjJneGFwWlIvTEhDRUk5amI0cTYrd2gvWTI4YTJM?=
 =?utf-8?B?ZlZ2T2REVFAvN21xL2ZaM0l5MkxkVGl1RllQTHJ6MkJUQkVjdnJDRFlzck41?=
 =?utf-8?B?UGF1MnhOTXNBUXpxWVVjT2RLTzl2M2xKNGhxL0hJOFplS1h0MlMvM1NDYjk4?=
 =?utf-8?B?YWoxS1ZGQ0ZnQ2JGRGl4c2xXek53aFhDY1RGT0tkV2lrTnVIS2hRRGl2cVVp?=
 =?utf-8?B?R3JOajhxK01scUhJeVN4c3E1SW93VFVUbE1kaTJlQ1poRWhNWVNNN2lZWDZ1?=
 =?utf-8?B?cDlwRmpjT0RQS040aklDVHZPOHFuQzV6VENYcTVEbDkzd0pFTVNyUjNTRUh1?=
 =?utf-8?B?SW50OHVicFBkanBDb1FkY2ZXb0djaFVqbWlQbEJvS2dwYXgvUENuR1NOU2RY?=
 =?utf-8?B?WXJxQ090OWlEVEo2YnVwZlI2UVlPclloWXd5OEkyS3RhN1dWNDFXL2hFWGNN?=
 =?utf-8?Q?XG5C1Z?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(35042699022)(14060799003)(1800799024)(36860700013)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2025 09:57:54.8500
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f155fd37-5877-48f7-eafd-08de065126f4
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM4PEPF00027A67.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB8303
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Oct 2025 09:58:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65914

T24gOCBPY3QgMjAyNSwgYXQgMTA6NTQsIFZpa2FzIFdhcmJoZSwgQW1pdCB2aWEgbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZyA8YW1pdC52aWthcy53YXJiaGU9YWNjZW50dXJlLmNvbUBsaXN0cy55b2N0
b3Byb2plY3Qub3JnPiB3cm90ZToNCj4gSSB3YW50IHRvIHVzZSBiYXplbCBidWlsZCBzeXN0ZW0g
YW5kIHdhbnQgdG8gYnVpbGQgYW4gZnNsLWF1dG8gaW1hZ2UgZm9yIHMzMmczIHdoaWNoIHVzZXMg
YXJtIGFyY2hpdGVjdHVyZS4NCj4gPiBTbywgSSB3b3VsZCBuZWVkIHRvIGFkZCBiYXplbC1uYXRp
dmUgYXMgbXkgbWV0YS1sYXllciBmb3IgdGhpcywgcmlnaHQ/DQo+ID4gQ2FuIHlvdSBwbGVhc2Ug
cmVkaXJlY3QgbWUgdG8gYmF6ZWwtbmF0aXZlIHJlcG8gbGluayB0aGF0IEkgY2FuIHVzZSBhbmQg
dGhlIGJyYW5jaC4NCg0KUGVyc29uYWxseSwgSeKAmWQgcmVjb21tZW5kIG5vdCB1c2luZyBiYXpl
bDogaXQgZG9lc27igJl0IHBsYXkgdmVyeSBuaWNlbHkgd2l0aCBvdGhlciBidWlsZCBzeXN0ZW1z
IHN1Y2ggYXMgWW9jdG8uDQoNClRoZXJl4oCZcyBhIGJhemVsLW5hdGl2ZSByZWNpcGUgaW4gdGhl
IGxheWVyIGluZGV4IChodHRwczovL2xheWVycy5vcGVuZW1iZWRkZWQub3JnL2xheWVyaW5kZXgv
YnJhbmNoL21hc3Rlci9yZWNpcGVzLykgYWx0aG91Z2ggSSBjYW5ub3QgY29tbWVudCBvbiBob3cg
d2VsbCBpdCB3b3Jrcy4NCg0KUm9zcw0KDQo=

