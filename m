Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96376C5AD49
	for <webhook@archiver.kernel.org>; Wed, 28 May 2025 11:54:07 +0000 (UTC)
Received: from AS8PR03CU001.outbound.protection.outlook.com (AS8PR03CU001.outbound.protection.outlook.com [52.101.71.34])
 by mx.groups.io with SMTP id smtpd.web10.13796.1748433244202608099
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 May 2025 04:54:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=XDtraI/V;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=XDtraI/V;
 spf=pass (domain: arm.com, ip: 52.101.71.34, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=ReBpF+7qvG5hrCGnwzRExE/ILzsugiMSMFGyz63hVgOH8y5MJsjQnsWJR3TFP3E5JxhKHLAHiFOzvY00sWg1oDkMCwOMqDX0bKopnb5L/bIu5aKstvS85CMVHIlcwQlJ0GO0VJX4Lb6YY4NGwUs4YGQol9RjwebBNKNGA/wCn2HfxyoZ6xLsNTELjlKYH/0Ocinb7UEgZWD/1DjfbQr7i8lKgXLJWoUhqwPrjZsLUzmR6P7/Toqsq7dcuuMHdgPDY3YWmnG386FcuUa3I+v+xL0XFtCx71Llr3E6rG73Xh1EyUZyEkiEDUk6N1h2+PHlACghpnVrOkbKpcJlRa7Kgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OV7Iat862xU3f4I+FO7MQCf0dGusjS+h7HGCqi+fgvU=;
 b=x5ElnnTzgiIKKIKCuecPBSCAOXJ0mY4+V5Cx1uoIbi8WUmWAY3DBzyS4DLb3yV0uvqhyQ4gFvUZjpA1jLgoWLK4r3XmNB3MJy1hg5vh+qX9XQEe6kqcjTS5uiIl+zpKNXO3a7HL/1YIQ1/pd4b311QAKFG/dyZ8+WSBL/FcUzIJkq2A+LEVVQIVwVNOVxZ2YXWL5EnHKNly6jTj0dVm9+G9pAbQF5hI1CrtB4Uz6mxE+gahD5snMCUfDrsdjVcVIzaLOt5Wh24EMnts0Fd3ZXWa3xUkVDKI3B181P4jQ4RnHg0hIYemgzIYYzV4q9nXCp6jEOhT0cBdR7MFG9sKGJg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OV7Iat862xU3f4I+FO7MQCf0dGusjS+h7HGCqi+fgvU=;
 b=XDtraI/Vfhew9piZhbKk095DYtKrujtwcbDrEIvqMPgAZxDBe3Tb64i1l9Gku3+xpBCgJa6nfORpJV3We0qIcPSlKO8QtdV9NDfSOZABPEfAO6UAbGgkDhntkuoZW89svCaLX4hbxNpMIYGwxQbyWxZHXAlTFRc/cQbpcN8T9B8=
Received: from AS4P190CA0058.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:656::7)
 by VI1PR08MB10299.eurprd08.prod.outlook.com (2603:10a6:800:1bf::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Wed, 28 May
 2025 11:54:00 +0000
Received: from AMS1EPF00000048.eurprd04.prod.outlook.com
 (2603:10a6:20b:656:cafe::cd) by AS4P190CA0058.outlook.office365.com
 (2603:10a6:20b:656::7) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8769.27 via Frontend Transport; Wed,
 28 May 2025 11:54:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AMS1EPF00000048.mail.protection.outlook.com (10.167.16.132) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8769.18
 via Frontend Transport; Wed, 28 May 2025 11:53:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C+8IIdG+iAOX2I0nHHghnTshhIuzLZn2z5g7ae4uwpYs5MrydeTa664uwYv4h+CuHcF7fyv0x+I18WW3boaswNgSdyPH8D8jTsUku8AGiQXHm07kM3wPfFr1ajV46QVdOogVmt5br4tdMosm40swzYpDZhnUanWuopM6t4Q+inWptCN6IHut2dNVQdGNdafsXNrtaIWmESobADPk9m6NW2MeQRabpzhABwFFwhpBtcOTYMnE28SXX8iKF33HcHwlE5eki2j3kD8HPK+dB+BZY/jmB5Pzu2CJ4Bg7p+aCgQgOL3kfp6LF+NI1qWYr1UwBAYbO5WvypB6VyKe57g4u1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OV7Iat862xU3f4I+FO7MQCf0dGusjS+h7HGCqi+fgvU=;
 b=R5wvioin8ktScUaczMz5x7JOTE3nFxhqy4l1MSrXDCxyHhs0JsJAZUAhXMoimSzVxeE5QyNnZpoWmMJ1Jq0tqo69jz2TW+qNQ9kXdDA8fzatyK9ixhGA76aqVsFwB+pOkLLUenwb+M+dFr1Uqa5BadJkfgjjy/sE3rWgNzWIPre21C5YWkLFJ08VPWtKx8r70Be+zi46MfGXkLXSaweuMOlcKVqeMLSRz8hPzqA3cFaaIf5dZ9nFtAIGVqBqtcESUBflwKinmgVPZHEjk3Bx/2rYizzSrobo9gIBwCaUXydw+SKkrLSSP4nfVXQzHarB0XHK/uZ2Gz3IHBr2tHDCkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OV7Iat862xU3f4I+FO7MQCf0dGusjS+h7HGCqi+fgvU=;
 b=XDtraI/Vfhew9piZhbKk095DYtKrujtwcbDrEIvqMPgAZxDBe3Tb64i1l9Gku3+xpBCgJa6nfORpJV3We0qIcPSlKO8QtdV9NDfSOZABPEfAO6UAbGgkDhntkuoZW89svCaLX4hbxNpMIYGwxQbyWxZHXAlTFRc/cQbpcN8T9B8=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAWPR08MB9966.eurprd08.prod.outlook.com (2603:10a6:102:35e::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.26; Wed, 28 May
 2025 11:53:26 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8769.019; Wed, 28 May 2025
 11:53:26 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"jdowd@slashdevslashnull.org" <jdowd@slashdevslashnull.org>
Subject: Re: [yocto] setup tools error reporting about the version of a
 package
Thread-Topic: [yocto] setup tools error reporting about the version of a
 package
Thread-Index: AQHbzw9ckn7i6MsDNEuxNK14GJ3RJ7Pn8BIA
Date: Wed, 28 May 2025 11:53:26 +0000
Message-ID: <59BF0621-7230-4494-990C-3379E8015F76@arm.com>
References: <BVUW.1748354270739849153.rCnq@lists.yoctoproject.org>
In-Reply-To: <BVUW.1748354270739849153.rCnq@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.500.181.1.5)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAWPR08MB9966:EE_|AMS1EPF00000048:EE_|VI1PR08MB10299:EE_
X-MS-Office365-Filtering-Correlation-Id: f13ec88e-cee5-4087-d17a-08dd9dde548a
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?K3NrOG5tSFdXRHBhUGloaHhid2lVSUkybDJtNFRWUno5dEl2SVhUYkNxQi82?=
 =?utf-8?B?VWJwaXVSc1JLTXFRaVFtSzIxTEJYazU4MUh2bU9BMzczWEk2c0hDNDFjN1U1?=
 =?utf-8?B?Z2tmYVVTWVR2U00xeWliN1lXYWNySUxEVlJlWTVydGxwQ0ZUTzdIYUo3WjI4?=
 =?utf-8?B?MUhPS1QwNUMxN3pyY3Z5SzVJNHZMTWtqQSs4eVVEOVBkSzkvNGRwZzZTUWFR?=
 =?utf-8?B?UWVLM0lENUQxRDlMb0RzZGIvdlVwWmF2NzVvT3lZUlhHd3h5Q2Q2Sm5xOWVs?=
 =?utf-8?B?NGZoTUVQbHJub0swUEpNSnd1STNvck4vNWRxVHVzVURnU0pieU5keHJkNWtH?=
 =?utf-8?B?U044TVp1U3M2NjFEa3BrQlNFNDBmTEp0dlJURmszdFhBVWgyNU5GcUNWWDFL?=
 =?utf-8?B?eTVDa3ZicVUvc0NLTGpKNFFQUTV6Y0hvM1k4WjVPSmxFN3ZmdDgxZlNVTGRy?=
 =?utf-8?B?UFJYL3ErcDg5NlZLaWJRMmNBeGRwZnpxMHZSVFdHUytST0ZMRjJoUExic1VQ?=
 =?utf-8?B?YkJpNjJWMVBDWUNuZDNXSXhtZ2M1ODk3aTFrQmlRbVlNNEkzZDRYM3F2RzlR?=
 =?utf-8?B?K0M2LzFMb1ZWUmNLZHpBN1dtMFVOVUpGQnlqVjR1TkFFS05rc1R6eGx5M3l5?=
 =?utf-8?B?WDdQaVhuQzNtTDF5dTlCQ2tzdGF5ZUwyWEV6emplMk1EWHE2QXdoK2orVEhV?=
 =?utf-8?B?b3hNWkQ1d1M4RDBXQkd1ZU5XajBsUzkzemVrVjdVY2w2VG9UNFEyM2xWKzBN?=
 =?utf-8?B?dlFQbERqMGMvcjU3bU9KS3p1U3VraXIvcWdXWUZ6VmpSdTIrWnFwUGx6UDlS?=
 =?utf-8?B?RUl2OFNhbHArK09QZGppUW1PbXlld0hPZXpoOFJleXFoc3Nxb3dzMklkd0lW?=
 =?utf-8?B?dUQwRGZWMkN2ZlBpbjVyeVc0UzdmdkNnSDVROVNNc1pNYTEwRmZobTM0bGQy?=
 =?utf-8?B?QUpTUE1DVXI1RStzQllNM1l2Q3dzNjV0MmZGNW0zSVcrcjlWNFJjVzlyQ3Rr?=
 =?utf-8?B?dVB5VWJWMEdRWm1ldjA2a3Vpc2RFNmFpQVpQVGZSa080ZnNlWjhvbVBFT2oz?=
 =?utf-8?B?MjMzeDRKckJNczBSS1VycUE3a1dLM1lBM2xvUVhrL091MDcwbGE2ZlMvaGRp?=
 =?utf-8?B?WGw2VG5ybmZwTXNmUzVzcE5tZytWa0hZRnZNZW8zSnZSZ3VKMGZzMkFYRWNE?=
 =?utf-8?B?Z2IzclBQOW9UNjZhS1FndjJsMTZ3SUl2TTZZL1JjMC83dTdtbEZEMzVXRHBQ?=
 =?utf-8?B?eUFnU2hra3dQY0xmNlQ2NEFKZUhGQUQ2d2p3UWJRZ1pBTkRNWW5zTkNvSVE3?=
 =?utf-8?B?U0tKTm9hWTBlT0k2N0F0Vy92Q2lGV050V3RkZ2hrc1VtTmxBckFmZW02bVNj?=
 =?utf-8?B?TEFJQ1FxNWgzZjRrMEtVNU10b1RUR3crMldrRUlxU2tXYWxvdnR5YVdyVkxl?=
 =?utf-8?B?eWJMNEJsTW5Jb09idkh5ZVhEV3Z2S3FPY3NJV3JmNCtSMGVhR3lZbFhQU0M5?=
 =?utf-8?B?QldGMWhWTk5OQ2VvN21pUkMrV3FHRVZrQ1h0L21RWjVRSGpCSEdnYzlWMmhF?=
 =?utf-8?B?Y25kMjZKV0d1Z1JyZUtCUEgzVlZja2ZBN05wUEhsOVJmNytJSzVvL054TUZk?=
 =?utf-8?B?T0FTR1VMWFcvelE2cG4wZzg2UlhLSFcxQlJDZ0pkQ1B5bEpKR3dUSjBZQmkx?=
 =?utf-8?B?azFvaDY0U25YUW40V2NGVThMNWpGSVg4TDFqb0xkOVFOK3QzUnFWcm1aWnk4?=
 =?utf-8?B?L1ZROXBxMDlvYVhLeS9LLytkbmJtcjdET2tCQWEvUndBSmU0cFJrV3VUSTlM?=
 =?utf-8?B?Z05ISkdTcTByYWMwSXRBbkZmd3BadVdGWjhtUERzQU5ZNjVtYmd6dDZOd0U3?=
 =?utf-8?B?dkJhTjQvczFIVlpFMHBDcU9kaVlySjBqWEdvUjRTRXM0enpXYStRM3FlS25G?=
 =?utf-8?B?R2J4Wm4xVnZRZjJ2cklIQkhGV3VHeFBCbXREL2ZPVjBOcExMa0hIMSt5cGEy?=
 =?utf-8?B?bFpTb3R1dXlnPT0=?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <1BF2F13B80580940A98BF921487FE8D6@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB9966
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS1EPF00000048.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	88a75886-64ef-42aa-1f20-08dd9dde418f
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|376014|36860700013|35042699022|14060799003|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?d0dNRk5IbkUwTzhKQnJRS09oS2tQSFRiSVhHNUh3eWl5a1ZVUGcvQTNLUVVv?=
 =?utf-8?B?Z0YrWlZ6aDhEaE9STlVWYlQ2dkZhUHlCY0NWQmVEQXM4VmdKSmx2Z1c1cHlt?=
 =?utf-8?B?ejlpMFA5Y003ZlFLbmVQdXNiK0VYWHhwR2FvNmk0MEFRNFFTOTY1amJTWFFL?=
 =?utf-8?B?RHVPMmpOVmZKeXlzZ1BQZEY5ZG5HSDROY0hRWTJvWGV1VG1zNDVjNHpxWEtW?=
 =?utf-8?B?VytxWE9lSnA3VmdSWFdla0paY1NmWGlvM3NoenVhRmh4TWl1WXNQZUpyVnFK?=
 =?utf-8?B?MXBlWGlCUmQyMHFGVzRDU09ubExzYUtwYkozUVVDUnU2UnFGZ3M1VmZ3WU9W?=
 =?utf-8?B?OEMrZU1ZZkJjWUx5ZFVwLzJoUU1jRmdPa1RIaVd3SWNpeHN5L0p0OE9Yd1dq?=
 =?utf-8?B?Rzltamh1cXdSQmpsRnN2OGpyaVNxVU9oSURyaG81VzhnTmFQMGNSYVZEdXpQ?=
 =?utf-8?B?QVhOb3J0aGxxWXdwd1AxUm12YU80K1V6QnV6Vy9IdVNsbEVRbEtWUW4ydjhQ?=
 =?utf-8?B?elhJWlZxVEpjTUNKOEZDclZUL0RqdUNRSlRkUWhqckJXejhiNUppVU0rUWhy?=
 =?utf-8?B?d0dSOVJTdXFqYjlBN3RYMDhra1lQM29HcU9BYlVzK2dVNm9RK0p5U2FQR1lB?=
 =?utf-8?B?b0tyUXpYTXBYRjZVUktBaFpiQnJWcTYraEFXY3V4SnIrcVNTWTRjWTJaTHBn?=
 =?utf-8?B?QitQc3FERklXanFUUWRnZ3N3bjd4S0pPQzVMcDdFZFdHaFV6ajQwUUZ0L09m?=
 =?utf-8?B?ck4wKy9NSm01UGs2dXlBQk1xWUZSeERSODZqd3dJUVVlZUlpRkR6amNldlRu?=
 =?utf-8?B?UDk0eDQvUWl2dk4zNjkzMmUyaDNPcUIrTWlUK3hpUjFiVFNpMFhNbkF5aWsv?=
 =?utf-8?B?eHgvTG5Ra3oyeVM1bEYwYWxrQ3Zibk1NOWlnbGZXU2w4QVo0MUt2Mk14VUYw?=
 =?utf-8?B?aStaN1NwUHdFRDJIZzZDZFNjczlzWCtXZDEveVhCeGw2UE5qWmoxanV4QjMy?=
 =?utf-8?B?Tld4NnJ5Y0gyN1ZYYzFXYXNRTno0Q3BzT0piUkgvU2V6dnJuZFVzQ25Dbk5z?=
 =?utf-8?B?QXN5aXIrNS9qRHQ5VVVhTCs2dDRyN3hHTzFuMmRkVlVkai90ck0rcXFiNVBN?=
 =?utf-8?B?UkQ0M3F1OXVQNUFkUmRCd0V3cmphQVpQc1JFRWRJUWF0b2hTOU5wQldPN1Bv?=
 =?utf-8?B?YWRFUGEzS21KWjZ4Tm1qZnNab1ZCT1JUK2I2elhoeEpiY29FdEJmRmx0d2VY?=
 =?utf-8?B?RlJ6NXRreCtmYUFBRjJsRENuYnh3eFZ6QWtkY3U0REZDYjgrQXBYUTFyTkZR?=
 =?utf-8?B?aFRKR1hWVnF5VEd0Wlpqa0RoYzRxWmZPU1lzY1VSNFpFMzBVQjd5eGRaYzdP?=
 =?utf-8?B?SU8wc29vbmJtZGpPVHN3clpCbVlUdzcxYVhHMk9lNkhJa2VGUVB2N0lkUG9x?=
 =?utf-8?B?ek1KSmRFVlpMS2x5MHdiUkR6YkZjNFlCVEFGYTBWZjlIUW1La1JKam1vdzVj?=
 =?utf-8?B?Zi9PWVgzakpMSE00d3hGUk13Z2pJdGN2K0o3VDNVQ1JMQW5YNnVFS1E0VzMv?=
 =?utf-8?B?K2FaSGFheDB5eWxSL0pQRXVzd09JZXh4SHlsbGM2cWg2M0gzM3E5ZmhtYUlR?=
 =?utf-8?B?RXlpNURYUC9sSXE1K3R4TGFnU2x2TFQzZWM5NEpyUTdNYXRnUmpJekwrK0Rv?=
 =?utf-8?B?NHNVVTVGZjF4ZXBaN1hIN0lVNDYrWkQ1NldTNGZXR0g5MXc2V1diaDE4bW9I?=
 =?utf-8?B?VThtVFNMbDFlN1pqb3NGb2I0QkVUUWU0N0RseHVQUHZWZStGdmpTbjFwUDhJ?=
 =?utf-8?B?SzZ2bVE1NERQcmtRa1ZpaVB2OW1pRXRvUFBtYTc4dW1aUlVhbW1vWE12dUZw?=
 =?utf-8?B?Q0pFUDJQZDJ0bjIvT3k3VHNFSjhDM0xLbENlVmVjaENZVjczREw4bkRFTnRU?=
 =?utf-8?B?akJ1amFQcG1zNTlwNTF0UEVHcVhzV09maTNOVS9ZNUFhR1JWRUcvaThYQ3Yz?=
 =?utf-8?B?TTAvRDd5YVkxc0hMaVVFR1ZHNU5KTGw2SFhOeWhDYnNPVGh3SWNKREVwbTda?=
 =?utf-8?Q?4M2Jw4?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700013)(35042699022)(14060799003)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2025 11:53:58.2804
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f13ec88e-cee5-4087-d17a-08dd9dde548a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS1EPF00000048.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB10299
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 May 2025 11:54:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65432

T24gMjcgTWF5IDIwMjUsIGF0IDE0OjU3LCBKb2huIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3Jn
IDxqZG93ZD1zbGFzaGRldnNsYXNobnVsbC5vcmdAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3Jv
dGU6DQo+IA0KPiBJJ20gdXNpbmcgc2NhcnRoZ2FwIHRvIGJ1aWxkIGFuIGltYWdlIHRoYXQgaXMg
dXNpbmcgYW4gb2xkIHZlcnNpb24gb2YgdS1ib290LiBJIGhhdmUgdGhpcyBlcnJvcjoNCj4gICBz
ZXR1cHRvb2xzLmV4dGVybi5wYWNrYWdpbmcudmVyc2lvbi5JbnZhbGlkVmVyc2lvbjogSW52YWxp
ZCB2ZXJzaW9uOiAndS1ib290LTIwMTkuMTAnDQo+IE5vdyB3aGF0IGV4YWN0bHkgaXMgdGhpcyBy
ZXBvcnRpbmc/IElzIHRoaXMgYW4gaW52YWxpZCB2ZXJzaW9uIHN0cmluZyBhbmQgbXVzdCBiZSBj
aGFuZ2VkIGluIHRoZSBzb3VyY2UgY29kZT8gT3IsIGlzIHRoZXJlIHNvbWUgbWluaW11bSB2ZXJz
aW9uIHJlcXVpcmVtZW50IGxhaWQgZG93biBieSB0aGUgb3ZlcmFsbCBpbWFnZSB0aGF0IEknbSBi
dWlsZGluZz8gVGhlIGJiYXBwZW5kIGFuZCBiYiBmaWxlIG5hbWVzIGFyZSBmb3JtYXR0ZWQgdS1i
b290LXFvcmlxXzIwMTkuMTAuKg0KPiAgIEkndmUgYWRkZWQgdGhlIG91dHB1dCBhcyBpdCBoYXBw
ZW5zIGluIHRoZSBiaXRiYWtlIGNvbXBpbGUuDQo+ICAgQ2hlZXJzISENCg0KTG9va3MgbGlrZSB0
aGUgdmVyeSBvbGQgdS1ib290IGRvZXNu4oCZdCBwcm9kdWNlIHZlcnNpb24gbnVtYmVycyB0aGF0
IG1vZGVybiBzZXR1cHRvb2xzLmRpc3QuVmVyc2lvbiBpcyBoYXBweSB3aXRoLiAgU3BlY2lmaWNh
bGx5LCB5b3XigJlyZSBtaXNzaW5nIHRoZSB1LWJvb3QgY29tbWl0IDZiMDhmYjVjYzQ0ZjhkMzIy
NjBhMTdhNGYwNGM1YmZhOGRkNWYxOGYgZnJvbSAyMDIyLiAgSWYgeW91IGRlc3BlcmF0ZWx5IG5l
ZWQgdG8gYnVpbGQgc2l4IHllYXIgb2xkIHBpZWNlcyBvZiBmaXJtd2FyZSwgSeKAmWQgbG9vayBh
dCBlaXRoZXIgZGlzYWJsaW5nIHRoZSBidWlsZGluZyBvZiB0aGF0IHB5dGhvbiBjb2RlIGlmIGl0
4oCZcyBub3QgYWN0dWFsbHkgbmVlZGVkLCBvciBjaGVycnktcGlja2luZyB0aGUgcmlnaHQgYml0
cyBvZiB0aGF0IHBhdGNoIHdoZXJlIGl0IGZpeGVzIHRoZSB2ZXJzaW9uIHRvIGJlIHB5dGhvbi1j
b21wbGlhbnQuDQoNClJvc3M=

