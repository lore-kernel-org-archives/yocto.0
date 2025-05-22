Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A415C54E65
	for <webhook@archiver.kernel.org>; Thu, 22 May 2025 14:17:30 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.75])
 by mx.groups.io with SMTP id smtpd.web10.24868.1747923449272661989
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 May 2025 07:17:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=Y/YUA9Ka;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=Y/YUA9Ka;
 spf=pass (domain: arm.com, ip: 40.107.105.75, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=AjkcW1PI+giIqXXir2wnSxMWh7J/Ro7tdFILPjjyQDmfo3ad8ihhSkJ7Jpln3t44oBEJ28vOjvyoksJW7l1ViO26gVzgvYiFvV9lX++JE55O7VaY1bI9RbsYTdMYtB+l+4jqUNwd0ZUK8ftB5ZctbLnH96ft5YD8JTrSHzxxt/drafVBZ3D4qG3TOGYuOF5vBPNtlEudOVKsfNe7BVYtxr/TC3XyAnkf4WWnL3lRUDzutBKrOgRqD8JpCko1mt8ig8ekeHxPt85yah3CwOKqEvvvcDAc88EJtJTdBqebvha93YSdrAosKpDckkiCPsf0oo/OoifTsOfd6aMsyAtbJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XKU0dhIDXuzOWwpueRxEvtzZ4OU3JepVQppPf+B0RUM=;
 b=b57gnyz9AA6G7VD/zt32jLW3FH4/GbnhjO7jRjr3Ij59OFZrhk9k7AFn0Mew8WXZtuVIBisDBmqHuEB2jjPImC1lRO8rTcXJV6hdlc35n700ZfH+/mxDHPHZSepsoTu6ZG/x91OMvSG8fmjzWfaJ15EYrknmRKOsN0Bc6J5M9NYy4H6f2Fr8geD2N7RG79/4/UHtMOpGy/KxWG8LVDi/Ri4dZJnp6xjauL0RyUpwp66rp2k+9sdvRz6S1ssr49ZKhTRxIAdox0f5Dw1dW3on6sNzBo40LZi8LZV2X7gXIwu7bv1S6ullbPfpqUk+hib/hgof7LCKKrjcJ1KI+/etDg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XKU0dhIDXuzOWwpueRxEvtzZ4OU3JepVQppPf+B0RUM=;
 b=Y/YUA9Ka+VkX/H5KmROtSWDXuEbC7SBdhVlFbfJoPgbwNPdiy5wGv6kTrqyLQg4ESTK06ffIbNzAkVLgNmiYjOupaxLRM90lJz6h6IIpuTp1a1OSoapahhe/h5g5Y7AblNZt4wOC9AQN1fJZBLJvhyZzQpZlON4NQk7Ij7L69s8=
Received: from CWLP123CA0048.GBRP123.PROD.OUTLOOK.COM (2603:10a6:401:58::36)
 by AS8PR08MB6662.eurprd08.prod.outlook.com (2603:10a6:20b:397::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.31; Thu, 22 May
 2025 14:17:25 +0000
Received: from AM4PEPF00027A68.eurprd04.prod.outlook.com
 (2603:10a6:401:58:cafe::d2) by CWLP123CA0048.outlook.office365.com
 (2603:10a6:401:58::36) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8746.29 via Frontend Transport; Thu,
 22 May 2025 14:17:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AM4PEPF00027A68.mail.protection.outlook.com (10.167.16.85) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8769.18
 via Frontend Transport; Thu, 22 May 2025 14:17:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vsTvCLiVkl9af6zjaarO5mDiGlQqubAg+EnhgFz2HL6DBsBw14u29sKON9PIDas4ZUtF8FYBfwLVms28Jn+eICa4DCm/FFVdl1FayJS5eV4DiaDjA6lgv3HLB87ST+XT+3ONJctBtVWDemxtKfUyo8wd/GMdXYrjCS2dZRIKXIpLi8GnbCZQoM3dsZ7OVZTGHmLmo0GlgKp2QJBkWOo+F2/AtcXCFswZuI9tm3VwYYrGn7iiXWiSyCS/Wsu0xZV5aNjFut6WRmSzkLbbJ19md/vODk1JeLTUvAZXOir6F6ouoIo5mCRk7KWp+apxMXBNaY+wVRZeBp2EB3f6WYznJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XKU0dhIDXuzOWwpueRxEvtzZ4OU3JepVQppPf+B0RUM=;
 b=AnZd5ydoLHCy3Vn8Nh07+ZgN//IbOBh3yBicmooJdq/piJrlmjyKZbLiDr9/+lV+8owsO+Chu2l4hHV6SoQxn9h3xVhNSJoRH5lHHbXIpP2Or98QQhq5Qmn878z/rvaVRLPJAaQR907Q6OevXrrLD2X8UoK0eNveCbAht3+7MaTDdo1PJl5taPnVTQ4JK1KDy8kw03t4yIxRjqs8FEKicpzjaQspqmV2md2k4yKofP4bD60i+V08OUd6fcfTHKzq/2uJ7vVgZKUezYp5wKHwt2nUmHgpx1fY6s5T0AqTQ8RGeZT5ofuDuxtfdiIoGcYdQDj7Yb9C7ALBFUrhG98mPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XKU0dhIDXuzOWwpueRxEvtzZ4OU3JepVQppPf+B0RUM=;
 b=Y/YUA9Ka+VkX/H5KmROtSWDXuEbC7SBdhVlFbfJoPgbwNPdiy5wGv6kTrqyLQg4ESTK06ffIbNzAkVLgNmiYjOupaxLRM90lJz6h6IIpuTp1a1OSoapahhe/h5g5Y7AblNZt4wOC9AQN1fJZBLJvhyZzQpZlON4NQk7Ij7L69s8=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM8PR08MB5684.eurprd08.prod.outlook.com (2603:10a6:20b:1dc::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Thu, 22 May
 2025 14:16:50 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8769.019; Thu, 22 May 2025
 14:16:50 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"rroyce@textronsystems.com" <rroyce@textronsystems.com>
Subject: Re: [yocto] Do_package is changing permissions of files
Thread-Topic: [yocto] Do_package is changing permissions of files
Thread-Index: AQHbywS9SCVpHEOygE2/x0gkVxgwXLPedyeAgAAmOYCAAAnxAIAABw0AgAAD3gA=
Date: Thu, 22 May 2025 14:16:50 +0000
Message-ID: <DC928146-FF39-416F-A240-DC9C4D6659B1@arm.com>
References: <DC492DE1-8638-494E-8DBB-E865BBF78924@arm.com>
 <26223.1747922570855214978@lists.yoctoproject.org>
In-Reply-To: <26223.1747922570855214978@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.500.181.1.5)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM8PR08MB5684:EE_|AM4PEPF00027A68:EE_|AS8PR08MB6662:EE_
X-MS-Office365-Filtering-Correlation-Id: 38dd03c5-5e61-456a-7f35-08dd993b5f44
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?TnVvcUpad0RKUjdvVkR5di9DMXVnZ01lU0dMZC8rRFdmTGJIQmdwd2lrbmkx?=
 =?utf-8?B?T3lHOXZ0djV0WWIrYUl2dnBWVEFMdjMyUENCbXIvQnE2NlRqNER6SmpVRFNB?=
 =?utf-8?B?ZlBNWVh0ZE14Rmdlb3NXZlo1K2Zpc2wvNk1XZ2hSMDJpenNvYWk0NHNTMTF3?=
 =?utf-8?B?SGpCZmVkU3A3bjRoU3Z1L2h4WVVpMXVTemJ5dGk1K1ZlcjlsbkcrUXF0Y1JN?=
 =?utf-8?B?MFA2Vi9tc1M4ZTJMZ2pXeUMzUjRxclBOV3ljZDJneEtEeFhVZW9iYWFPMlNB?=
 =?utf-8?B?ZmZYV3hzYnpqSmdxWWJ3cXRUN2srazJ1bm9obnlKS25CRmdoODB2Q0ZtUkRs?=
 =?utf-8?B?YmZjWGlybTc3bUpmTGViVC95QXcyUUhIYjkweXNaSzgzb1FiNnhNMERQdnFL?=
 =?utf-8?B?ZHFUWE9QVVgxVSsrYkFMck5TeEo3R1UvVWx4RDVOeU9SQURhUFByUU1zUFg3?=
 =?utf-8?B?NFlGazE0T2dSeXdVNFNjbnFyVHZZdndpMGp1RHNRbElXVnBQZm5rRkRRalJ6?=
 =?utf-8?B?c09XMUpLKzZpNnRRR0JvZkc3aEtCUzY0YVVxdC9hREVBTitsWXFhYnBucU1x?=
 =?utf-8?B?RU5RZTB6M1U0d21IcjZkd2k5WlBFRlpWL1RXbTdldG1QN2c3cnNsbzZTWm9J?=
 =?utf-8?B?bGxvVDh4ei9HRHpGNzZCWkt5VDh4N0xIT25tTWNrd0xaY3FCd05rZSticEMv?=
 =?utf-8?B?bW1HM3gya25xc1FiNEx2TWxyYnppZlBhNlJTZWJydXJ1K3o0VkRMeC81aFpy?=
 =?utf-8?B?RjZiWUJGc1l0cFQ1VHYyaUQxai8zSDEyaVJFckM4UjRQTVpYVmN0QXAvNzN1?=
 =?utf-8?B?eUw4MUt1dTZZeFdYbDB0YllpMTNiMFQ1cFFTUUpnNkNUWmVJbVdZMU5mV2lF?=
 =?utf-8?B?UjQ5bk1wMVd6VHd3N3o5d2tlNFN2aU9YWGp4RFVjSE5tR2Yzc2hsU3FiWFpv?=
 =?utf-8?B?REdzaG5IU3RLeWJsc1Njd00yUldQTDhuNCs4WlZZQjhuMmdzeEVWUU8zZG04?=
 =?utf-8?B?cldKWnlOejk5cjJwTFpzTzBHOTFDaDh0eHlvd3o5RXRlRVVqbnRWMnE0bTZI?=
 =?utf-8?B?T0NqaGNQSE5Ea2MwT2U5dXppcm9lS24rR3hDNWtqZFRBNE1TTyt6UmloTHQz?=
 =?utf-8?B?MldQeWZtcGlYZTg0SEFDeGl2ajE4SVhDUGlCdEJIaitRVnNoWHRiL3dMdVVW?=
 =?utf-8?B?L0Z5TW05TE1rbUR5NDkvaWZRUklJSVFqV3RsRlpwRk13VDRsV3kzNFZRSGs2?=
 =?utf-8?B?dUtlV2V1ODVaVEZoNTd5aERZeS80VjdjM1pISlgwWitYTkVNVDk3Ri9GWkdY?=
 =?utf-8?B?eGNkSDc3OUFOQTNxT1VpeXNMQTJJbGtRSHVnQStIaUdxVGNrZzJpa25ZNTRa?=
 =?utf-8?B?WUY1WkYrUGhiMEFnRlplc215dTJ6WmEyakVaak5xQ2p4cGxMelgwSE43bzRC?=
 =?utf-8?B?ZEsvSnhzMUxtS1lqUkM2VE1EcDJUY2FpWWU5c2tvWmg3cXdCSldIbXpxMldj?=
 =?utf-8?B?ZzRDQ0RpUHgzYnJQUEhTVG5Od29FMXZDQ0JZdzZNYXdFSmRhbEpKZFU4LzQ5?=
 =?utf-8?B?dzdud3FNUDJ4Z1pIZzQrK1JRNjd6d1JuMHVjTlQ0dlo1SG5OM08xYzJ3NmRY?=
 =?utf-8?B?d3BNQyttM2dOOEdQZlh5b0F3b1h5UnNSTjcrYUtYM0JHVkt4ZUxWQXp3NFNm?=
 =?utf-8?B?dERhM0R1NXNSOFFDaVpURVh6YmJqc29kTkxkUEQ0bWpncy9maXplZktVUkhO?=
 =?utf-8?B?a1BsTmJlMDhSRTNHM3pad01FY0pkalNXeDhHN3JoRW1DN1lnTmEzSEVXZXhi?=
 =?utf-8?B?d21lbEtPOUpXUVlSaDBKd2RGRlNkMEt4akhUN1lJNGFWRU14cnJ5TG5LVUJK?=
 =?utf-8?B?anNWaWJoZXR4b2hxM3VLUzVBMGN4dHB0bXpMVDZ4UExTVTI0VWNGZGdLd2Zk?=
 =?utf-8?B?b0oxdHc4RmhIVjR6bkhaRWNUUTdCQ1ZteGdDSytWTVZEWG5ONzVWTG5FRjZN?=
 =?utf-8?Q?aMds7pbloNG9Rf5z+nftf8ts/43jmM=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <D6BDE95B6763E34A9100560DA36B6652@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB5684
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM4PEPF00027A68.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	a0d862d3-1894-4bc3-c24a-08dd993b4bb8
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700013|35042699022|376014|82310400026|1800799024|14060799003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?QitNWUxGYXZDTzBzcWdYZndGQmRHYjFualovdzlXcnk1RnRWRWZTNk1GTlk1?=
 =?utf-8?B?QnhVWG1HMmFheGZQNE9FaWhzZ1ZwMmI2SGUzWGU1eFZGd0xNaGNsR2J0SjZY?=
 =?utf-8?B?RjF4dUtuKzluTmZEYTQyNGQxQUE2QmdBd3l0SXBHWm9mQmdNU3pqMXNRQ0lI?=
 =?utf-8?B?Q0FYQXFCMnB6NWtyd3ZKUnFleXdtUGdjNzl4RnlNRkg5cS9jSnF1emNKTjFL?=
 =?utf-8?B?SlhsSDdoWUU2SzZ2TzRrS2FEWGNseG13b0xJOUFVRWQyc280c0dBQlJGazdL?=
 =?utf-8?B?M2ovaXMvV0RjUm5FNlYxWlZ6UmtKMWIveU9TakcyS1ZQbHlKdXJxT1g0VXJh?=
 =?utf-8?B?RldvTkZGZEZLMFFZYkEzc1lzREFBUVh4ajBIUmNFMnFUZUJjSGtMeHp0MXlO?=
 =?utf-8?B?S2xvWmNvU2J6MGdUQjlLMmFxUEtHUnFKQjJ2YTc5Zm1hTEUrb0hGdk9LWGRL?=
 =?utf-8?B?eUFBNWlORDZNMTQzNStJQitZeGwwenpLQzBnVzBDcTFJeEJZZWhHbnM1UVBu?=
 =?utf-8?B?YWF4dGhmL2lHMXd0M2RNeUxZY1ZwVytUckM3OU9iS3QxR3hqdlpLSkJtc2Nx?=
 =?utf-8?B?Ty9aS2x2SWEvTjRqaGhyQktmUHlCZWM0OENsWDE0eHhoOGtmdTB6RW1MUDZ1?=
 =?utf-8?B?VXhkTFk3Qzd5OGNBUjNQb1E4bzhRRWZRY1h1VjY3Ukx3TUdIZXY4QUFkdFF3?=
 =?utf-8?B?enNCdTZUZlNzZlZMN1F6NzFkYmpxSWsvZ2FIc2taKzBEdGdDaHYremVWN01h?=
 =?utf-8?B?cDVsTVpDWTVKSE1BVnlNdHJQTkM5R3VSYWNuZUx3Ym9OM1dvaW5heFJtMjI0?=
 =?utf-8?B?UzRRb0JBdDllV3lpclQyeURiL09rbUcybTV0TS9qZTN0SDI2MHJUbEIxcG1K?=
 =?utf-8?B?TFN4MUR3b2tYNFhVWVFZaEFjZ2VMYVlFenUvdWxVQi9zOWhjNGg0Tmh3Tndl?=
 =?utf-8?B?d3locjlRd0tybGEwWlV1LzVOejI2WmNpdXJtTU13SGpwdS8yREJuWURXV21U?=
 =?utf-8?B?SUUvamo0SEZEOXMyaEpzY1pZa1VUT09LazhJSjJIWXBST25KNjRkd0toYWg3?=
 =?utf-8?B?QXI2WTJwUUIxMTZKbERlN1VRRDRiTEl3Nit6Nm9FeGlpVUpFa3c1MFA4aHQv?=
 =?utf-8?B?VWo3dlI3R3RaS3MvNERMYlBqcjF3MUNRUzhMMFY4S3Y2YlhQblQ1MlBUY0Fn?=
 =?utf-8?B?cllObTZwcXFFUDdNNVUyT012dXNUdDBkY3ZmMmNBN3hlT2J1Qzk2R2lCSU9v?=
 =?utf-8?B?bnE4RjhIMVQyV2t5TldoclI4MlFPNzR4Y3JaaFBMRWNxUDZXQTFSMmVuRjNE?=
 =?utf-8?B?a21wcmVJVWRDbjBzbzV2OEZndHdGWFdvY2ZLaFlxWlhESHh0UktNK3pUWENM?=
 =?utf-8?B?eDhkVVUySjJXdWVVaGI4aEViSEF5MU5kQ0cxYjFVSUJqSEZWWXA0c3FUV3J6?=
 =?utf-8?B?WlBsTTFzNmcvTmNxZmpicHoxVzNjbkhwTmVMbHR1Vm9KRUpVVkFXK2h2RVcr?=
 =?utf-8?B?R3NHL1pSc3VORDh2VHFZME8zNHRzRDJRN01taWhYODZ1bEE1TldackpwaEVM?=
 =?utf-8?B?N0JkM3RjNUpSS1BUN0RGRWFwYUd4THhQZmQyS3RuZGk0Zi85ME5zTUN3T1J4?=
 =?utf-8?B?dWxINVRRMDFTRlhEa1RkSEErd0ozTUNXcVYyYnZ2OHBWQzBaTStDWGxSK0Zw?=
 =?utf-8?B?SE5FQy9GSEVac0kvSDBLSzh0NXZiYmZDYUpCSHNCN2JvY3k0Z0pmcWl0bVdQ?=
 =?utf-8?B?VlpSZ1dzOTdDeEJXaC9Fd3dOc0dNTXozSlpXUFkvUWlQajdFZkVLTVllYXVz?=
 =?utf-8?B?Z1UyRzJ2cGhtVlYvMFU2RDFGYmdSRTYrVG1Pc3RwdThoKzI3aVRaY2pybGt5?=
 =?utf-8?B?VHMrSTdpUDBvd0ROSGFwRnd3VDZoeDZjZGx6MkkybmNOZ2VCd2paMEZwK2h5?=
 =?utf-8?B?aU1ZZklUVldMTTBOR3dhYk5yZWZzN0ZUTG4reUJlNlIwekdGME1Cc0ZBMUFi?=
 =?utf-8?B?T1RuRnRES0wxMW5SUGFsbCtZNjZGVnBub1F2aUh5WWx1WFpYSVJJTERtb29y?=
 =?utf-8?Q?Gy3wxa?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(35042699022)(376014)(82310400026)(1800799024)(14060799003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2025 14:17:23.6550
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 38dd03c5-5e61-456a-7f35-08dd993b5f44
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM4PEPF00027A68.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6662
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 14:17:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65404

DQoNCj4gT24gMjIgTWF5IDIwMjUsIGF0IDE1OjAyLCBycm95Y2UgdmlhIGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPHJyb3ljZT10ZXh0cm9uc3lzdGVtcy5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zz4gd3JvdGU6DQo+IA0KPiBUaGFua3MgZm9yIHRoZSBoZWFkc3VwIG9uIHRoZSBoYXJkIGxpbmtz
LiBJdCBsb29rcyBsaWtlIHRoZXkgYXJlIGhhcmRsaW5rcyBmcm9tIHRoZSBzb3VyY2UgaW4gV09S
S0RJUi9wYWNrYWdlIHRvIFMuIEkgZG9uJ3QgbmVlZCB0aGF0IHNvdXJjZSBwYWNrYWdlIGZvciBt
eSB1c2UgY2FzZSBhbmQgaXQgaXMgbWlzc2luZyBrZXkgZmlsZXMgd2UgbmVlZCB0byBiZSBhIHJl
YWwgc291cmNlIHJwbSBhbnl3YXkuIENhbiBJIGRpc2FibGUgdGhlIGNyZWF0aW9uIG9mIGl0Pw0K
PiANCg0KSXQgbG9va3MgbGlrZSBzZXR0aW5nIFBBQ0tBR0VfREVCVUdfU1BMSVRfU1RZTEU9ImRl
YnVnLXdpdGhvdXQtc3Jj4oCdIGluIHlvdXIgZGlzdHJvL2xvY2FsIGNvbmYgd291bGQgZG8gdGhh
dC4NCg0KUm9zcw==

