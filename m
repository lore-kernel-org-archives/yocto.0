Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B42ED58066
	for <webhook@archiver.kernel.org>; Mon, 25 Nov 2024 11:19:23 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.60])
 by mx.groups.io with SMTP id smtpd.web10.16554.1732533557020454112
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2024 03:19:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=ErSBdHYY;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=ErSBdHYY;
 spf=pass (domain: arm.com, ip: 40.107.21.60, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=G4EGSgNswDfKitUiO2Zg22qwr3PE2YXS9aKnc70FZx9JsuVhKhOQREk/tnpfTm1UPGYbxz6p4eyjsedsV1hbyUiPJFVPIfQxuJpXcVWnurIUW9SAR5HQdeYFF4WhHxh7OvyvRXD8zwN+qEOvOOuNA69ECVv7bldwn7vS8EtipqK/BWj43mPSa/K+g2DbvHikVZsLdw7ZIBQ3rskvT8ZmetaKzPc5RhMNh3J5ulaMmau30EblcRNYBDRcYJszLAf9YCLPHQSa7Rj3hnWmVNi9//FTvVBu7+atb5BGW8Gq8GPZAWSmAv6QBQdnBJUu+VJ2PceYgUIPWChE+08NSJzaew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C3z8oP4YUtwLlYpwNwVkmJBHw579tSkVV5O3xKJttE4=;
 b=RrQTpzM+FfIxkaQfoOP5nSFJ29xp0azWXOT0i8aKDwql0OoGQybAJQXN/6X8BF/Veo0gqRB87TXrS1p8GVUBlI53KVzh41HrGvRP4ElcxWEnNZxf5KtX7v6Blwy5nxxCQhBqtqBdk5izdXHkN5gLiMOlrP/zCspnRk5vWQJqnbVFBbPju2zltnSBRi1ZsLfjOSdyvOotwM+yW/zI8JDENVg4MSOXzPxhsnQEZEocRuskUhwbInsDixj37AGDuNHi5E9wIvv4SJ2ZJJXlS3OIRaX5Oesd6eLYsTv+EUvCu5Ucz3tozHrAsjk3JopE9NwtMlHJPSskVegqop9jJFmwTg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C3z8oP4YUtwLlYpwNwVkmJBHw579tSkVV5O3xKJttE4=;
 b=ErSBdHYYOyiV/IlsPTeNOzNMqt7SlfoTo3gBZoJ71bDrs7n0wElFaYkpI7bQPUAZUYm4WCBdeuuNVokut+EqX8wqQ/QJSd8Tu8PYVW8KUtfAQE+yuDpWvcl3YnJOa2r6UaXpZUlXR1KDmQ+vQ7FeDU20G1ha+WSrTxJmQfdQjzY=
Received: from LO4P123CA0222.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:1a6::11)
 by FRZPR08MB11189.eurprd08.prod.outlook.com (2603:10a6:d10:13a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.22; Mon, 25 Nov
 2024 11:19:11 +0000
Received: from DB1PEPF00039234.eurprd03.prod.outlook.com
 (2603:10a6:600:1a6:cafe::17) by LO4P123CA0222.outlook.office365.com
 (2603:10a6:600:1a6::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.21 via Frontend
 Transport; Mon, 25 Nov 2024 11:19:11 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB1PEPF00039234.mail.protection.outlook.com (10.167.8.107) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8182.16
 via Frontend Transport; Mon, 25 Nov 2024 11:19:10 +0000
Received: ("Tessian outbound a09d3701ea63:v490"); Mon, 25 Nov 2024 11:19:09 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 8440733f74a047f1
X-TessianGatewayMetadata: 1Adyym8yeSRkh/RZGX0XxcLu6i9EFxrHErYgqQ1pHC5/mw72K4fPWMWXCCq9Xv0pUf35GH9OKDnUGJ+BPsW5xE4/VCD+7NYhLPDW6rMwRYChmZa8CHNhJz+VyJSdDdIihjD/F8PsEmN7EtKak+TJplrsqK5SNlk7dcERKBOD3cI=
X-CR-MTA-TID: 64aa7808
Received: from L3d1c51ba9ae8.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id E1EA2AF4-AFED-4437-A973-C580066A8B32.1;
	Mon, 25 Nov 2024 11:19:03 +0000
Received: from EUR02-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L3d1c51ba9ae8.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Mon, 25 Nov 2024 11:19:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yd5Iqkp4Pr2nomvoYZR934pealEbeJVqF18uyGfD0GhgN/I9q5fAYOR0OC9IBqjxpdB7WyVb6rNfnODOx8t8t5MXKiZjNZSGAwxW2BsPrho+SvaUKtz1BYAoWatoYpFq6mGUOUoVqKTJg+NIF9Ppru2e+rUGmAIEwX1YmIJ8gL6sK3ouKOX7GwjOQ/ZqrRurVOmflQjt+w19HtqRLG6eItWDMSMeRUm4HmCg8cYzQM1DCCbKlgyBtm0dggmKS/ZgN5eoWus9wr/15JFmABtj3i/TgEjEvnupuRi3Rnno3HT2zF3bv7lpJfRMbT/Vl5pfoZy623xTy5HgLmG9WjLLLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C3z8oP4YUtwLlYpwNwVkmJBHw579tSkVV5O3xKJttE4=;
 b=cThDqgGr/iJZR4boMm8fsoWdBy0AVD2WrNe1n8Rx10IXXfze8W3k3N+D/5cpEhz+Fypc4nK8BM/EpcSa8URJdwBkPYIBLr4NlTynVlDmKHjL0uZz8/zZgphe3uXll3V/+q9UVtVA1+ywhYrUC8lc88LSEp5T/dniIS3NMV3z7yapRIUg5RtMRQnIQKN8avT7UYtn2CJljLSYrc33Mkl1i2EwsgENOsq4Cg/bFH2Pc4r/oGYwbPG/17Oh4WMpPsy0H8iv7soXRr3ArJK7eqJjFmHYwcZSwoBmNrLzfDLlwMle6pghbBQUAsUbg2QWrVCFDVYnGyWW3cLzu/y7weL5SQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C3z8oP4YUtwLlYpwNwVkmJBHw579tSkVV5O3xKJttE4=;
 b=ErSBdHYYOyiV/IlsPTeNOzNMqt7SlfoTo3gBZoJ71bDrs7n0wElFaYkpI7bQPUAZUYm4WCBdeuuNVokut+EqX8wqQ/QJSd8Tu8PYVW8KUtfAQE+yuDpWvcl3YnJOa2r6UaXpZUlXR1KDmQ+vQ7FeDU20G1ha+WSrTxJmQfdQjzY=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DBBPR08MB5929.eurprd08.prod.outlook.com (2603:10a6:10:208::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.20; Mon, 25 Nov
 2024 11:19:00 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%3]) with mapi id 15.20.8182.018; Mon, 25 Nov 2024
 11:19:00 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"penguin@epenguin.net" <penguin@epenguin.net>
Subject: Re: [yocto] Seeking documentation on the XDI format #yocto
Thread-Topic: [yocto] Seeking documentation on the XDI format #yocto
Thread-Index: AQHbPgAHpL+RgY/0g02cJCt9cL4q37LH25oA
Date: Mon, 25 Nov 2024 11:19:00 +0000
Message-ID: <24086BEA-9742-4FE7-B268-BF752EAE29BE@arm.com>
References: <vavX.1732403539325561798.ciHZ@lists.yoctoproject.org>
In-Reply-To: <vavX.1732403539325561798.ciHZ@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.200.121)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DBBPR08MB5929:EE_|DB1PEPF00039234:EE_|FRZPR08MB11189:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a53f3ef-fbf4-4a1d-db4e-08dd0d42fbe2
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?MVJWMklhbWQramNYY0l5QUwrY0hoNWNXOEdxWnYxTjRFdGxZb0RjNTh3cWMy?=
 =?utf-8?B?Z1Q5R1d0blRqMU05V2RiTFlhN0x0M0ZzemhsbUwzRktUVzFCbjZwR1dDUExT?=
 =?utf-8?B?bWV2bGlORjhGNktPVnUxMkxjMFQ5WUZQVVk1TXB3STF0b292aWt2anU0MlA2?=
 =?utf-8?B?My9DcTczaU5xeHRzOHRZdlkxZzNGTGtPRmR6RDBNWTBNSm9BMVJvb2pacS8x?=
 =?utf-8?B?TlZGZWVmS3VKOHRuTzFvTXVKU3h1T2ZjbGgweEsvaTFNeGN0R0pVRGM5emE2?=
 =?utf-8?B?K1dHM1J1TW1qQzdpTDhTdHdBcnRaVHJrazdBTjRoRCtUczhBTmpVVlA4R3Yr?=
 =?utf-8?B?T1ZRTFhwZWtJSlhPRTNKSXFnTHVMV3ByV1AxT2oxMEdybERCaTZJcm9jdTRX?=
 =?utf-8?B?TVlLejZwZy9IK1YvK3JQa1ZrNllOZXBxcUpFZitqaVFOMnhqSFpRK09yanll?=
 =?utf-8?B?Z3plYkU3V1ZyRFpEc3pCbzRyV3pyZHFtQm1mTHhYV2RNa3IxMERxWStreEhw?=
 =?utf-8?B?UUg2MXZYTk1yQ3AxbmRwaTNBUFp4MXo1MzZ4KzgxK01NR2pjTldXU0wyK1o3?=
 =?utf-8?B?OVdUa0xjV3FFRDIwVXlMRDczZE8rRFVDdi9QejdGN0oyQ0drN3I3QXVHdmpZ?=
 =?utf-8?B?S1hhQUEvZXZlemxjMlc4SFZIZ0x0L1QxU2R2eUVFNDkxRDZQa3hlOEhQL0ow?=
 =?utf-8?B?dGNWc3NGaERScUQyZkJJSG5aSUpkeEMvS1Y0d0dlZjRpMThhQm9FSWl6by9L?=
 =?utf-8?B?RHVvTmJ1VHNPVjY4dTI0U3BTWXBmcmNKRHNKS2ZYRlhnR3BqMkJyQngvZFln?=
 =?utf-8?B?REJYb3lIY1NrTndpZnRUN2FiZkhkK3QwOTBnS2gzUnE2VEk0VUt4R1pJSUxB?=
 =?utf-8?B?dUIwREJLNHBpK1A5TC96bWdoVUNydUdQRWh1ZTZmMWVMN2ZTMFVsWFM5bHNo?=
 =?utf-8?B?OTQxR3lucTZ2MkdxT3ZnV0dzNGFtY2ZyNGVpRDMydnRxZlQ3a0dpb0VZamJF?=
 =?utf-8?B?UWNTc1p4d0RKdzh4WXF6SFluOFB2NGRDd2NMOEVBU21BOFZjUzg3b0V1ZHM1?=
 =?utf-8?B?WWd1TGN0N3BmTTdrdXRjYWNBdnJlRzdlZFhXOW5oQ01JMDFoZE5taktsVzF5?=
 =?utf-8?B?d1NZZFNzWjlUajhYL1VTS2JldGtaRm1qSHBOVXVBdElDQ0ZvSmlXQUVvNzUy?=
 =?utf-8?B?TklGem5aVmpQVWVYSFBJYnBrNjFYM281dkJwM0dQVWxJN2s4UmNlUzgvRkFj?=
 =?utf-8?B?akxzcUxQRTEvVlZhMnNlU21jOTdHQnpBcWVFcWVUMjFlaytEQTVpa0VrdjJS?=
 =?utf-8?B?VFhVRUprbk5TSUtleUVHVlo5Y1dMZjY4M25UYk5Yekw5Qkk1QktiY1I4LzJ2?=
 =?utf-8?B?bVJMTmdzMXEwNTh0Vk9lOENtV3VBbHF3dHNqaGdFUkZOdWNXVmxBQWcxNzI2?=
 =?utf-8?B?SVd3Y2I3alZ0MjBrUzBKVFVUMWUzYUU3YmoxN1ZVTCtPUTFjZW5QSVJBZHc4?=
 =?utf-8?B?YVlOZW9DZWpXQS9mMFJWKzQ2MjFBZkZ6ekxCWEszZktld2tqMzIrUktSRUxu?=
 =?utf-8?B?YjVmaDFxUUNzdHJOeWF5TWJmK0oxeE05TGxBSnVXb2R4N2kzZHh1NWtqeHg3?=
 =?utf-8?B?TS9DYnVGMnNERE0wQTB0OWdLMHFVQnlUREtYMGpXQm5QckhLT0tGWmYyQVFy?=
 =?utf-8?B?V2RTVGdEWis4bU1rTjljWnBuZktDck1xWkJWNVFrcmk0dWEwY0hPZEc1WHV6?=
 =?utf-8?B?SmVlSGQ2aGpPVTY3Yk5mYytjU0Vvd0l1ckY5dCt0MGtSWW8yWEt6WnV2Rjgw?=
 =?utf-8?B?OE5Kd3FtWFhHRlptMjZwdW0ydlNRVnUxcENWbTRTZTQrV3FhMjVoMWtlZFVl?=
 =?utf-8?B?N09RdHFEUDl5QnYvTlVkaVJCWGk5dGFiUHRzTURCSDIwdXc9PQ==?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <2042E24600473C4580DC8D755BDBDA05@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB5929
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF00039234.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	9e1c4b75-29bf-4958-8e93-08dd0d42f642
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|14060799003|35042699022|82310400026|36860700013|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?dEhhaHRGNnZURHFJSCtJVDkrcVp4T1gxSHUxNndMUzZCTUxhT1MzalArOFIz?=
 =?utf-8?B?WjNQQ1hKbUdCM2JYRlZxVHhuMTdtelQ0NUQrS0U3V0F0ZDl3UDFNUEx0cmY4?=
 =?utf-8?B?emhLUXh0SzRmb2JYYUJ6dU9GVWdBa05rSWpHSytWa0NPNzFBUEVubFdncjJF?=
 =?utf-8?B?QXV4Y0ZURFFZdGVSbmR0Y2lyalFoc2NjZVJwV3U5c2pVYlFBVFRnN25KMit1?=
 =?utf-8?B?dVhFcG1LbzVMWEJnVUg4MFNCT3A4YWlka1orYnk5QWJTS1JMRkRMbktFOGE2?=
 =?utf-8?B?ajIwSDB3ZTlNaXdJSk80cHpLSmw0cUNGeHFyeXJiNmUyTnhMaDMrV01IdGk2?=
 =?utf-8?B?bTRydnlYeDVaM0ZtSzU4Nlp4ejg3VStCT3Z5eTMxQVJIcDlXbXVFdG1nQXVY?=
 =?utf-8?B?MG5VekI2YytQbjNpbHdCMTBlSTB0dGw4Ky9DZVJFSWQ5SHdNbmR6UG1OOXI1?=
 =?utf-8?B?RWMxNFpQd0pzczVKTmFER3lLT2RpUTc1MFhia0l2dnk5ZnpzSU9HMGYzanBT?=
 =?utf-8?B?by84MVAvOHY4bGJmMk9Fajh2RXd4a3RudUlQeXBSdmE2cTc4VGlsb3JNZytZ?=
 =?utf-8?B?UCtDNjlhaDN5cTE2UHlWRlpOZmtWYjVFbkRSMFFkNFJkVENQS1NZT2VmbE5Z?=
 =?utf-8?B?UDBOQmV6UFR2WVFmSGVBVWF3ZDJHd2NCQmgwbjZ6V2Y5b2JJb0w2M203VkVO?=
 =?utf-8?B?TGRETlNtRk5CcE5xUjUxblZadVJIUXRsb2NhRm10aTQ4UWtGOExHQzNzZ1Bz?=
 =?utf-8?B?YktpOERBVnBNMmF5VDNjRVhCeVhHTlYxN1hxd1pic1p3Mnl4V2JidkNsNzlK?=
 =?utf-8?B?Wm1OMVFRcjdJM1F5ZHlzbStETGVkcHJEcjVNV3F5U2dJTmpvOUVYclVsVU04?=
 =?utf-8?B?YjZrWEsweUtxR091SXpydmVNTGkzaWlBR1ZtekhGanZWMDFQYlJVb3VTN3VS?=
 =?utf-8?B?MFZqQkM2V2VkRm5ZTnlWRjdaWTZtQjgzekE3aENPRXR4bUpHMk5oQUpHdWxE?=
 =?utf-8?B?dWVpaG4yTWladnNBeG53QXNQT20rK2ovUGxvUVVaK3NyQ2JDYk9wYmNKL3dI?=
 =?utf-8?B?YjE2RGFMY052U1o1UjJyTmJXNTgrbk1KV0N4Qko0SEd6eGgrb2EvV2xaek4v?=
 =?utf-8?B?T3ZuUkdnRU5PTTlSOXoxVmwzaXU3N09xRmVweUdCd3UyZ3hXS2ZCeisxenFq?=
 =?utf-8?B?ZmtIMHZJaEdUWUtNUUNTUlNoTG1SblRDbzlzbDI0N3R5UHVOdkhHcWI1Vm5h?=
 =?utf-8?B?UjF3NmFXcEswSFZ2Vjd0eDRpTE1yQkVnTVEwRStPeSt4VlU3VitvbUtkVVdR?=
 =?utf-8?B?UzJQemlBM09JQ2N2M1FjMUxYdkQvNEs1SWlKSDNvRmg2WHlyUW9wS3hRWEFK?=
 =?utf-8?B?bWpleThFQkVLVkMyTEFHMnN5VnhoVjhJNG50cDNKZXlxYi9SRWR5TWw2aWww?=
 =?utf-8?B?TzhFLzlYdW1hMFIrRjVIQjE5Z1VrQlBSc3lodHp2UjJwQVgxZFB0TEI5aDkr?=
 =?utf-8?B?SmN2Y0NqT0JxZy9CS0ZRMXM0V1pUcHgydEZmQ2lWNFlPQWk4Tm1ac3dnejFH?=
 =?utf-8?B?M0FyRUZqOWNZOGpuZXdoQjRrUDU0c2lndGV2NDcycnZURFIreDZrcG9kb3Aw?=
 =?utf-8?B?TUN0RCs2bU05VnNJcVFyN1NYaHRzWDRnUWVXaGNQNis3MjdsWHExak1oMG5n?=
 =?utf-8?B?a0lINzl2d2lRV1d6Qy9YV2Rlb3ZXY1dRVUxuQ1k2SFEvQVg4bEVWRkkwUHhV?=
 =?utf-8?B?KzlSNEhlQ1MxeFFMM3YyL2hka1dDRVVZNWxTQzJtY0dDWmRYSkJneFdEdDF6?=
 =?utf-8?B?UFdDVHovMGRkVklDbWZ1T2kzVzkwYjhxQkRpZjZJa25kN2V5MXUxZjdRWEVs?=
 =?utf-8?B?eEFvQUdXdXhwUGVzUjlzdmhabzd5RW1XaEFxZFJDRFgxVkV0SmhYbkxXYUNo?=
 =?utf-8?Q?qW3KhPS3LK8HEYbTPMyqhbI6V8yhmaBV?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:64aa7808-outbound-1.mta.getcheckrecipient.com;CAT:NONE;SFS:(13230040)(14060799003)(35042699022)(82310400026)(36860700013)(1800799024)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2024 11:19:10.1117
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a53f3ef-fbf4-4a1d-db4e-08dd0d42fbe2
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF00039234.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FRZPR08MB11189
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Nov 2024 11:19:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64337

T24gMjMgTm92IDIwMjQsIGF0IDIzOjEyLCBwZW5ndWluIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnIDxwZW5ndWluPWVwZW5ndWluLm5ldEBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToN
Cj4gDQo+IEkndmUgcmVjZW50bHkgc3RhcnRlZCB3b3JraW5nIG9uIGEgcHJvamVjdCB0aGF0IGRl
cGxveXMgaW1hZ2VzIHRvIHRoZSBYREkgZm9ybWF0LiBJJ20gdW5mYW1pbGlhciB3aXRoIHRoaXMg
Zm9ybWF0LCBhbmQgSSBjYW4ndCBzZWVtIHRvIGZpbmQgYW55IGluZm9ybWF0aW9uIG9uIGl0LiBS
ZWFsbHkganVzdCB0cnlpbmcgdG8gZmlndXJlIG91dCB3aGF0IGl0IGlzIGFuZCBob3cgSSBjYW4g
d29yayB3aXRoIGl0LiBBbnkgZG9jdW1lbnRhdGlvbiB3b3VsZCBiZSBncmVhdGx5IGFwcHJlY2lh
dGVkLg0KDQpUaGF04oCZcyBub3QgYSBmb3JtYXQgdGhhdCBpcyB1c2VkIGFueXdoZXJlIGluIGNv
cmUgWW9jdG8gb3IgYSBCU1AgdGhhdCBJ4oCZbSBhd2FyZSBvZi4gIFdoYXQgQlNQIGlzIGdlbmVy
YXRpbmcgdGhlc2UgWERJIGltYWdlcywgbWF5YmUgeW91IHNob3VsZCBhc2sgdGhlIHN1cHBsaWVy
IG9mIHRoYXQgaW5zdGVhZD8NCg0KR29vZ2xlIHNheXMgdGhhdCBYREkgaW1hZ2VzIGFyZSBhIHBy
b3ByaWV0YXJ5IGNvbXByZXNzZWQgSVNPIGZvcm1hdCBnZW5lcmF0ZWQgYnkgV2luQXJjaGl2ZXIg
c28gSeKAmW0gZ3Vlc3NpbmcgdGhlcmUgaXMgbm8gZG9jdW1lbnRhdGlvbi4NCg0KUm9zcw==

