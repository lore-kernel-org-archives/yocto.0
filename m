Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6737C5B543
	for <webhook@archiver.kernel.org>; Thu,  5 Jun 2025 16:21:22 +0000 (UTC)
Received: from OSPPR02CU001.outbound.protection.outlook.com (OSPPR02CU001.outbound.protection.outlook.com [40.107.159.59])
 by mx.groups.io with SMTP id smtpd.web11.12095.1749140481243006295
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Jun 2025 09:21:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=fh2e0b2v;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=fh2e0b2v;
 spf=pass (domain: arm.com, ip: 40.107.159.59, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=wBjDjydhI5B2q5+8vUZ3sY3xkW9H6ysunf8ansBbAZTlEMrHH/GX4cD44rChxwDoAAyMWJymjimIrZn0NIGvdRw9MWtTGgw4ukw8yjO/zw7c/revglPNMNVNBJDDCALJrpfy2HgV92QqVnVqauDHsluADAo6+6hxUCdKEmgO7JPX+027PNk3vjiX6a8NBG2a68ND1gz7n7Ow/gPlBpXoXYc4Jc/qSxco7REl8HSWDafkHhtAh5NgQ1GpF2HjsufsrfK0W83ml3B2vntklpiRrsKu5hAGtdMswbKEfSTq6JoyE0WQEQY+10kSw/5H2V5ykNsgNTLtd468mvoibffAMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=80xGgN4X0OEWKB37GGMXxWBO1aBeft4FFvUZPYPRBDg=;
 b=PdZmN4PLleeuIw5v6GtId2ieGpEqvojtqaUldJBTCJFZlc9CpnkKp9eWFAJjMyFueuo9tAARo73FLZl/zntb6ug3rDpnkS4dpqNSarf5BkxHtqsrYoXnrC4+nIujZTBDlrxjLEJjtrNITWz0wa3et7GXZNBA4SLr0mECu9v+a+E1DT9V5cWERhpdcBADPwlvGXxHNWK7lQq49hcXRT6oO/KmT3ackk8wD+H4o0b+9w1t0jddowDznP4www0tF9KzXvyOBjgfEfNHO9ZQIT5yNxU+hPhsYOZPMXtz7yVacKWWNyg3d9R8Xs2kMnfSQFC/PgEVtVDzvpA15Abf7+h5sQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=80xGgN4X0OEWKB37GGMXxWBO1aBeft4FFvUZPYPRBDg=;
 b=fh2e0b2vkTb9nkLuKbY69Q+hh1T4odvFThpXXhOCscwY/l1E7aERmlfEYxdPc9/OG+ZXabiNYgfyhc+Ss1WavU3mTwGK4FTIa5RiLPEYXSd69XCyrVkjKz14UK/Zy3GsHw7QF/GY+wpWQ4Hi829Yk4s2MFHC2rlFPQc2P0FP0ms=
Received: from DUZPR01CA0343.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b8::23) by VI0PR08MB10631.eurprd08.prod.outlook.com
 (2603:10a6:800:20f::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.21; Thu, 5 Jun
 2025 16:21:16 +0000
Received: from DB5PEPF00014B9A.eurprd02.prod.outlook.com
 (2603:10a6:10:4b8:cafe::17) by DUZPR01CA0343.outlook.office365.com
 (2603:10a6:10:4b8::23) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8792.24 via Frontend Transport; Thu,
 5 Jun 2025 16:20:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 DB5PEPF00014B9A.mail.protection.outlook.com (10.167.8.167) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8792.29
 via Frontend Transport; Thu, 5 Jun 2025 16:20:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z9t35km0zGH2ipaJ4nGPlGRrx9iW9udhQ44OMXT3eZIWy0LjnilVJravpuhhcTtrZWBTb/o0XYE2KEsfvnC0GyQ/ansadWlQwY/9VGI5OWzEqVNDSYgWQkxV57jm0D8CqUyIVnAH6cKwNYGoa/YVv5j2MusSggY9u9w70zDmiv7KD1WeE2QCTsAXU5qhHotBauN44A+JEINXxIxxuGPJYZBvsBjkTVYjca9SuoGgPZpdUlRc6c7iwP+SooJehDLSfsjWgEFomXGUNez2ilEXDIPK8VaHhpgyN2/dAmLGldX8xVAy/fSfDSAtqgJ2kbHzzoGeRuIqmxpEVMiCGTxblA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=80xGgN4X0OEWKB37GGMXxWBO1aBeft4FFvUZPYPRBDg=;
 b=AKqC/zkB2MZPUvRl8dGp4F42e5k7KwjFl+6BErFYUzWs6rRDYjzoSI330uVLcNDzJrRShhB/eEYi5DrnCd4okpgWtvKORp1Rex9kv/MaeKSVwPzj0lkQGzh4j4KUHVw9qSLa1ioeqI1S+YxxkW8D/h8/J7k1wGxyXrH2Oyj3dARInqEyiGHEI7qNmL9agr5+2Gvlfb4wL7Ny1JY35kCP915v4hpFzYiUsPc4wwUS5LzUNSyQSUp/BFnhsYJFVyKQBmZ0/9KqZ4qjxHPQsyEMczFmZ3kitraMjc4q0iC+7ntWhkDVEYqt8VIRCCSlAk9Eegzaa6dQOLZy/CjnNTjzeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=80xGgN4X0OEWKB37GGMXxWBO1aBeft4FFvUZPYPRBDg=;
 b=fh2e0b2vkTb9nkLuKbY69Q+hh1T4odvFThpXXhOCscwY/l1E7aERmlfEYxdPc9/OG+ZXabiNYgfyhc+Ss1WavU3mTwGK4FTIa5RiLPEYXSd69XCyrVkjKz14UK/Zy3GsHw7QF/GY+wpWQ4Hi829Yk4s2MFHC2rlFPQc2P0FP0ms=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB5PR08MB10288.eurprd08.prod.outlook.com (2603:10a6:10:4a5::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.21; Thu, 5 Jun
 2025 16:19:43 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8792.033; Thu, 5 Jun 2025
 16:19:43 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"jguittet.opensource@witekio.com" <jguittet.opensource@witekio.com>
Subject: Re: [yocto] systemd - Failed to start up manager => Freezing
 execution
Thread-Topic: [yocto] systemd - Failed to start up manager => Freezing
 execution
Thread-Index: AQHb1jP63IBcyCb30U+obA7mKreAT7P0vtaA
Date: Thu, 5 Jun 2025 16:19:43 +0000
Message-ID: <434B4617-E822-4DA1-9654-FF07A0FB50F2@arm.com>
References: <sjc5.1749139658955197520.8O3a@lists.yoctoproject.org>
In-Reply-To: <sjc5.1749139658955197520.8O3a@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.600.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB5PR08MB10288:EE_|DB5PEPF00014B9A:EE_|VI0PR08MB10631:EE_
X-MS-Office365-Filtering-Correlation-Id: 86ba868d-92fe-4d32-4865-08dda44cdb0b
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?NGJqTmRYNlB4U1FHa2paa3YvMGE5Z2F6d3NITk1pc0sybDgzVlpONnEzYzF2?=
 =?utf-8?B?SjJtQWdQeFlkWkJlK0RaSlBXU3ZGbDh4eUlCUk9tTGpvWXJDeW91SDF0bnVJ?=
 =?utf-8?B?T2FwVUJSMXFyRG9yak91UzIvZ3RLTEY0V1g2aGVVWWxiSGdHSHdpUWpHS1RR?=
 =?utf-8?B?SWpFQUloTHFNeXVYVUZFbVJwQWswbG5zL0VqQWV2bG1kN2NRb3ZIK0l2cUZQ?=
 =?utf-8?B?aXdwejNQTVRiaDdENGdpRlhnQXVYcm1ueDZtZ1pnaTBqYWRmOWZtMzRBVEk1?=
 =?utf-8?B?RVFlVDR5Z3h0aWpnVm5KRTBhZktnVFczblNZM0lPdDBEZHlhRUMwNkVsNDJo?=
 =?utf-8?B?eHp2MmNFejdia29TQUVZVG9oV1BZc1hDQ0o1SFVqWjdTenZPaXdhMU9sa25s?=
 =?utf-8?B?bE9icXpKT29wNFphVjArT2UzU3A0bkMwUjdDL0xhdStGM09scHc0NGg3a3dB?=
 =?utf-8?B?UEtTSlF2WTdCTHR6eFdZdmQ5Mm5ZZDZISVlDN3Rya2luR0tuT21jK1pibHoz?=
 =?utf-8?B?WGk4d0o5Nnp0MjEzQmQ2RlgzRjlVMTZhYTEydTE2UHZ4MmJIaDJ0QWRMRVZo?=
 =?utf-8?B?SlcyM2dJVGZmako1ck12aWdrUDZVRVp2MVAyWCtHU1huRHdxcGppSGs5ckI5?=
 =?utf-8?B?RDdLSDd4Yzgya1llUzAzRmNHQmFGaXZyZ01WbWFyWkJ1VmR2cktpU1Z4MGZX?=
 =?utf-8?B?T2dOQ2p1WXpab2RuTDA5Ykp2MWhZOFV0NjdnVHRVZkVESFhsa2FzelcyNVZP?=
 =?utf-8?B?UUFQWjB5QXJ5S1ZQem1ZdC9qQjcreUlYMnJjN1Q2SVFlM291QjRSMGs2ZXU1?=
 =?utf-8?B?eHJ5THdpVVBROFQyNjVDZE9vbWZhTG5ISXlNRkNjTDV5aCtFeGg4bXZWK2hi?=
 =?utf-8?B?VHMxT0hoWi83cno5dWRkTVdyOWVGbVh4RFpSMGljaWt5d0JHcDRRU2hxY0xY?=
 =?utf-8?B?b3FGKys2bFF5Rys1T0l6TzhseFVPZVpia0RiaXR2Z3FLU1FVNytnT0M5OWU3?=
 =?utf-8?B?bUg2MjRYODFmRUN1Zmc4dVRqZ3RuaXJBampnaFhVUHBwTEpVSkd0dm1qa01l?=
 =?utf-8?B?bHhidHR5L25IMkxzd0puY0VCbmR4KzZqN2lRN3h4MkFNYmpVZlBVRXg3WVN1?=
 =?utf-8?B?T2RtWjJubllxaUVHMEYrSGh6N2dKaWxycjZ3Ny9VRXZTQmNLNHN6dmFEZ2Iw?=
 =?utf-8?B?emMwSVBEWHdiUEdPMlZ2R0NvVGlkcEpOTVdDekJCTnM2aVVidmt0MWpLYjJ2?=
 =?utf-8?B?aitpTTUrdXdZcVhzYVJCVUx2dFNxTmlRSGljbnRKd1RrYVUzTGJFZnR3Nlpr?=
 =?utf-8?B?Q2d2Y2pVd0JHQW01aWpNalpvaVBNdlpEOUtOYjBuSzJKNlduQXp1OFF0b3FV?=
 =?utf-8?B?dlcwOGpuMEhlOVdHSm5YZ2tIV3NmYVZFRDlQYUxFNWxBRnpxemY3RC8rTVhr?=
 =?utf-8?B?MkxXVVkxcFphQmtQSEtwU2gxcnlxTkRQdHZkTnc4bGs3UzdaVDV6Qkh6L0x0?=
 =?utf-8?B?ai8wZCsxeGxoR1g2a2NGLzJrUHFJaWlpY2dSSHp3cXNFK3puY3Y2LzdPOXl1?=
 =?utf-8?B?Mm51djFLTmIyYjJHT084SmRmVERkTG9RaFVJSlBNUlBXcTZuMFF4N3BhNGI5?=
 =?utf-8?B?M1YvdkNtSmlCbWxDcEFlVklDaVZZdUIwNW9PQ1k2dzdCanlRdTlRakFhUlFy?=
 =?utf-8?B?QUFMZmxLa1Y4Y1AvUzI2Tmw2Vit1TlV2VnR3OWdoMlVOTVdpZWZHbGFiVmdO?=
 =?utf-8?B?UThBR0xZN0VEcXdZZXFzTmFoMFNHR05QS1hJdmxDTHRnc3IyUDI0TmpXaEp2?=
 =?utf-8?B?M01aOUpuSWlDRlpySE9YdUNCZ3NJZVlaRjByY3lNMTVnYyt3b3lpOFYrUU9S?=
 =?utf-8?B?ZG5JR09qTnp5ZzVwZU1LNGtVZ3ZEa29nQmU3MFpWSUI1ZXFuR0ZQS3hEOE8x?=
 =?utf-8?B?d05IRzExWkwrd1RKTS9iMnhBQVgxZHR4UWpjT05TVU9rRmxGUG9aVDNPdE5C?=
 =?utf-8?B?ekFjNjFNTU5BPT0=?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <6C1F740062ECAC4182378ED3BA359A6B@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR08MB10288
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5PEPF00014B9A.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	282c58dd-7f75-4542-6ab4-08dda44cc7cd
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|14060799003|376014|35042699022|36860700013|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZmxCWmJNUWNPdmZvVXhEd3A2SDN5S3JVYm9ubFhjUWJGTGlxajkvUE5OZjA1?=
 =?utf-8?B?Q1g2TllZWnN6NjhOVkdnTzBjSHplcjNUSEx1M1ZHVjJ0cjdudEJja3lhcG1R?=
 =?utf-8?B?alBuK1ZOenJMYjNaakVhdmdHNWM4amtqYzZQQ3U1UmtRWlk2aW9IZUlGZEp6?=
 =?utf-8?B?ZjVIR2R3bDc1Z0ZaZlBPdmhmMGQ5bVh5ajVKTW1nTTdBdmhZeGhnREN0elhp?=
 =?utf-8?B?UEhQVUE3cS93QWxwQ21lM3FCT3pBTUR3dDVOOE9JVnBidkVvaldKYjA2S0Fr?=
 =?utf-8?B?QkRDcFBheG1hd1ZUUWpsUGYwTG8xNjVXNWNtYkhWRC9MbU9UblJiYWpaaExv?=
 =?utf-8?B?M3pHN1htVEZtQ1ZFWDJxUE5jKzVKbGRYNmh1aUVUM2dPMDE2TmpOc1N6SHM4?=
 =?utf-8?B?ZENYVUhWaTFuWmdxN2NRR3dyNC9UMUZYdEtSVVhmSHo3ekZ2NmM5Yk5jdk5C?=
 =?utf-8?B?WVRtUkZVdDcrM3BUUVZsUEdWbERiSXRoeWVFNG5mQWxOemE3WjB6eVBhSTVU?=
 =?utf-8?B?ditxbm5kei84NFV6aWV5T1I5a3gvUVhQaHNnU29RekhSRkpML2JERFF0dFcz?=
 =?utf-8?B?WXVvVFE3LzRrYWhVWCs2c3ByMG4rZGxzTzlyOVpKUTFEZEg3cDd6ak1DTEFF?=
 =?utf-8?B?bFdPY0o2RXUxL1FDVUl3VUs4SkFSM3lObjM3b1pUMW96d1Z5bWNWRHdweGVB?=
 =?utf-8?B?MnhmZnpQS1dJZWh2WGc5V0VqaHl6U2JpeGtSMDJsTmNTS21xbDNXVEpkdStL?=
 =?utf-8?B?dzN0Mlp5SkZLMytjdnZmbWg3SlN3Q05oWmp4R2pNZklPS3R0SThBcE9MQnZC?=
 =?utf-8?B?V3A2aTlmQXpjUnNsMDlBaU5WeE03VEpYLzAyV29ZeGlONVE5R1dqUnhBR0VP?=
 =?utf-8?B?TFBwZmg5WWJjUlRTd3FDU1RqSGpWanBoSVdYa0ZQaytCYnF1WkNxbEdCMUR4?=
 =?utf-8?B?dGVrZDQ4dGlUdkgvVjdvcitXOE5OQklqSEpuVmRtL2RxVEtqZmVnL3drelNi?=
 =?utf-8?B?M2UvNmdFOWpYUkc5MHRQU2dvSm5RRVFuSlh3MmZJMXVvUm1vZ1ROUzBSUW93?=
 =?utf-8?B?NFBKWHZEQ2xySE92dnh1c09XbnkzMXVCMDZsT2pQdVFSb05POHRWUTBuTWhh?=
 =?utf-8?B?aS90N1hmU2FxQWtzMmlTOEVLUXlRYnBSZC9YRDliVHFIc0dRWGVUZnlRcmpi?=
 =?utf-8?B?NzhqMWhBR2FkRGxpQ1EwTDBSQW1INXo2OVppR1MrUjYwVFUxSWczQ041Nm1h?=
 =?utf-8?B?eEtUN3BvdEhST1pDcUg3Y1hHOW9zQ090YWtWUGxkSXpieHRXeUdOckVSQm4x?=
 =?utf-8?B?dEtoWG91S2NBTkRaMkNpa1gxcXZTNGlXOU14b2x4VlA3TWMyYm9xT0lUTCtw?=
 =?utf-8?B?bWlnYStHMHZHcGM4Ri9hd3NKVStpb05DTDl4bU42VHZjaDdnemF4b3p2TDFZ?=
 =?utf-8?B?UzNkNlRxakhqS2hCZC9zRlJ2TzdhOHBZT3JHTExKRmlHNWdGZHIxWkc3RjRS?=
 =?utf-8?B?eGJwQnVMbXZiOHc3U2JPd2xzSjJKNFZheXZCUE01bUZEcWt3WThkWFhhS0Z0?=
 =?utf-8?B?amtUZy8xb1c1N0xkN2JQQmtEeTdsMmZMVlJSYlh6MVJRN1dENUhsMTVDRE14?=
 =?utf-8?B?TFNaS3pzR0VMZmNONEFydmpjekk0VzMzeTFLaHQ1N1V4WTczS1BsQ2M5RWJJ?=
 =?utf-8?B?NU9GQWp2U0NIb09qR05FejBBbzZtVG1sZEdueVR3SXdLR1ZBLzZVRkIrTWhM?=
 =?utf-8?B?d1FKUHE2NS9rTDhuOGtOUmw2VXF4bGx1UkErK2tvVlBDa2QycHZUTDlRbCsr?=
 =?utf-8?B?eWJibFlEUkZjWUd4ZkxVdko1Q3Z0V3BhUEdhVVN2UW1FTFlWWEpteCtnVlIw?=
 =?utf-8?B?UmlKb2NZZExsMWZTVVU5aTl2WCsrNy9kZzN4Z2d2VEVXZ1FqTmtyYS9iTFFT?=
 =?utf-8?B?R1dmNXFJa214Tk5zSXBHTlY2dnU4My9TVVFvYWlqZ0UvRlRvQ2pOL3pacmI5?=
 =?utf-8?B?OVgrTmVRVVhVVXdWemdmalZqQmowRWhEREFRaVU3NHBib0I2bWlZR3F1dFRl?=
 =?utf-8?Q?W70Kms?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(14060799003)(376014)(35042699022)(36860700013)(82310400026)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2025 16:20:15.5436
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 86ba868d-92fe-4d32-4865-08dda44cdb0b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5PEPF00014B9A.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR08MB10631
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Jun 2025 16:21:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65474

T24gNSBKdW4gMjAyNSwgYXQgMTc6MDcsIEpvZWwgR1VJVFRFVCB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8amd1aXR0ZXQub3BlbnNvdXJjZT13aXRla2lvLmNvbUBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnPiB3cm90ZToNCj4gDQo+IEhpIQ0KPiAgIEknbSBvbiBTY2FydGhnYXAsIHByZXZpb3Vz
bHkgdXNpbmcga2VybmVsIHY1LjE1IGFuZCBub3cgbW92aW5nIHRvIDYuMTIuDQo+IEJ1aWxkIG9r
IGFuZCBrZXJuZWwgc3RhcnRpbmcsIGJ1dCB0aGUgZm9sbG93aW5nIGVycm9yIHdoZW4gcmVhY2hp
bmcgdGhlIGxvZ2luIHByb21wdDoNCj4gICBbICAgIDIuNDczMDEwXSBzeXN0ZW1kWzFdOiBGYWls
ZWQgdG8gYWxsb2NhdGUgbm90aWZpY2F0aW9uIHNvY2tldDogQWRkcmVzcyBmYW1pbHkgbm90IHN1
cHBvcnRlZCBieSBwcm90b2NvbA0KPiBbISEhISEhXSBGYWlsZWQgdG8gc3RhcnQgdXAgbWFuYWdl
ci4NCj4gWyAgICAyLjUyMTUyMF0gc3lzdGVtZFsxXTogRnJlZXppbmcgZXhlY3V0aW9uLg0KPiBb
ICAyNjMuMTMzNDA3XSByYW5kb206IGNybmcgaW5pdCBkb25lDQo+ICAgQW5kIHNvIEkgY2Fubm90
IGxvZ2luIGF0IGFsbC4NCj4gV2UgY2FuIHNlZSB0aGUga2VybmVsIGlzIGFsaXZlIGFzIHRoZSBy
YW5kb20gbG9nIGlzIGRpc3BsYXllZCBhZnRlciAyNjMgc2Vjb25kcyB1cHRpbWUuDQo+ICAgV2hh
dCBjb3VsZCBiZSB3cm9uZyB0aGVyZSA/IEkgaGF2ZW4ndCBtb2RpZmllZCB0aGUgcmVzdCBvZiB0
aGUgY29uZmlndXJhdGlvbiwganVzdCBjdXJyZW50bHkgbW92aW5nIHRvIHRoZSBuZXdlciBrZXJu
ZWwuDQoNCkEgcXVpY2sgZ3JlcCBvZiBzeXN0ZW1kOg0KDQpmZCA9IHNvY2tldChBRl9VTklYLCBT
T0NLX0RHUkFNfFNPQ0tfQ0xPRVhFQ3xTT0NLX05PTkJMT0NLLCAwKTsNCmlmIChmZCA8IDApDQpy
ZXR1cm4gbG9nX2Vycm9yX2Vycm5vKGVycm5vLCAiRmFpbGVkIHRvIGFsbG9jYXRlIG5vdGlmaWNh
dGlvbiBzb2NrZXQ6ICVt4oCdKTsNCg0KTG9va3MgbGlrZSB5b3VyIG5ldyBrZXJuZWwgaXMgbWlz
c2luZyBzdXBwb3J0IGZvciB0aGUgQUZfVU5JWCBhZGRyZXNzIGZhbWlseS4NCg0KUm9zcw0KDQo=

