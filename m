Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D367C25B74
	for <webhook@archiver.kernel.org>; Fri, 24 May 2024 11:02:20 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.48])
 by mx.groups.io with SMTP id smtpd.web11.13255.1716548538721467917
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 May 2024 04:02:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=g8UnrNWJ;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=g8UnrNWJ;
 spf=pass (domain: arm.com, ip: 40.107.104.48, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=QWAeYJK9K+zxaAkgCrR68+bQCYCw9SKKJn4pbBWo8WVBMdJMg8JFfTKUPEN+IncYiTJg/ZouTpD7IElPRx4XH8GcEeevvYqlh4x5bLPa0MLoGIWnWfSwvd1SXifDFtcpejiNJG/+9jNhAtZo2X9q8A4F4X+JoNYVwYkPt/kyCUsAMlq68pp9ZX1Tyx1CrceD3oivOYp/gXxnLL74HKivYUCvvdXe3m17rGnnyhQknYnLTWZqbIWDZ+sV6awBLuIUjUMh9xoHe/otEPYQQtWQcOF+mp/Bx+SR4mcXu7KjR/eQCv3Ys1t/UVLhjw6Ccby9BJ1TvLl/NHY5eQj7ksP4HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cMkhecQLdNdY5Owz6Qga7CkYwnDMEcyYYVGmn79KTmk=;
 b=byfgQfyeu3QwoHhzHkA2gLstNI5nuJ3Gk4gZMCPHcSIsJpLZU3JWIdZYxVjlTQkIBGE27KzKjUnOEgttNq79hJCNRGFK3tbBNy+L7BwNBlJ8oL31Qu6TCiWx63UtXkcnFVGM3Q19si7E9JAnztvT5cKJMr2PAkKRPfKmOlFDKkuoQphwqPTroAVSHTIp5bx7EvIZ+KxxRDRM8/BtyXUmA8QK9HXw/UjnT/MaQrsoJm/pcgUi/4VgGQ7t0KQJgmVFjEiOahacz2cPan07+V6f5CMtdRfmmjYWrjDjFmaFJp//ZlP8IxArXdJ/geAGPZ0xh7AQSqCoNB+Mwk+1NsQy0Q==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cMkhecQLdNdY5Owz6Qga7CkYwnDMEcyYYVGmn79KTmk=;
 b=g8UnrNWJ1rNBwYZym1AUslGuAE6WETmuYgQFJ7vBg+5q7qM8RjzOGLRbtN/sWnWwucw8txIYl6KjFz5oKFsHmL5Ka5tnJpa40y51ph09fadFm72LjXiugQz6tbcjdbRb2SuRt1Pu0cqHMT5M0fQuBZg8G87pHFpbioey5nwRhIE=
Received: from DU2P251CA0014.EURP251.PROD.OUTLOOK.COM (2603:10a6:10:230::15)
 by AS8PR08MB10004.eurprd08.prod.outlook.com (2603:10a6:20b:63d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.22; Fri, 24 May
 2024 11:02:14 +0000
Received: from DB3PEPF0000885A.eurprd02.prod.outlook.com
 (2603:10a6:10:230:cafe::b0) by DU2P251CA0014.outlook.office365.com
 (2603:10a6:10:230::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.22 via Frontend
 Transport; Fri, 24 May 2024 11:02:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB3PEPF0000885A.mail.protection.outlook.com (10.167.242.5) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7611.14
 via Frontend Transport; Fri, 24 May 2024 11:02:12 +0000
Received: ("Tessian outbound fffbb209f6c2:v327"); Fri, 24 May 2024 11:02:12 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 19d83b27e3bd3ecf
X-CR-MTA-TID: 64aa7808
Received: from df77e7e42b57.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id AAFD6C59-69EF-434B-9EC8-55B734A69FF2.1;
	Fri, 24 May 2024 11:02:04 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id df77e7e42b57.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 24 May 2024 11:02:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Imzk0TNBCOy76L4+F/Y2ebiuMNFdqHusfYmeTK3uUqsm2OJNBosSQGBK8F1PvepjlsS2/VQaiZEVtz8d9WzgBj+HjqT24PDxG7UfXGON4+uQeoQyUfTCiW9uHxMDQemjP07+fephRLuIrpD4YGhUtECEH+BtQdT45VRX6VCR4hzkxuQiVdEIgJdaTHMhOBZlbr1tJP7boSWqTLe2S7e9+ERjc6YcpJjfMfe2muZb2k+259K2uZ0D9giPxhb4iFEeeQurX1OiIwJnV6mGZh2wUoWjxMGPXKOyyYHX1P/3GsVIPRoXIxFQvP+s9538lCfGNyo5pRK0DZZ53o8nRbf2hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cMkhecQLdNdY5Owz6Qga7CkYwnDMEcyYYVGmn79KTmk=;
 b=lilHNUqNZPAh4ieWbhAaVIAIeXFiCns0Q/rhgDAqhuSorGRNkPd0HQf5ugLLsMcMl62vFdsXT6Ruq+Xv2WcYRhMlRGiJQuXIaILx11ne1/KJbEZVKowT22b3UWWSQphVG5xJAa3J9uYVqbN00drBLjSFRVeY6XZp1GWa6wHLXOpQWUjqXbDuaN+jl6SV2VMr+iUHCsDIhGrHcLQKSAXbVrnG6UDTRcWc53ShdoGEa/sgluk4+M/ASsBkxTXtIkN85s6Emu7SqtilxPKQ5QoeDm2hS4UFvPJmYolxobf7Ry+lBhWDpYAB6qEfOTZA81JIMdH2J9W5pzSH/vOVFS3KSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cMkhecQLdNdY5Owz6Qga7CkYwnDMEcyYYVGmn79KTmk=;
 b=g8UnrNWJ1rNBwYZym1AUslGuAE6WETmuYgQFJ7vBg+5q7qM8RjzOGLRbtN/sWnWwucw8txIYl6KjFz5oKFsHmL5Ka5tnJpa40y51ph09fadFm72LjXiugQz6tbcjdbRb2SuRt1Pu0cqHMT5M0fQuBZg8G87pHFpbioey5nwRhIE=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GVXPR08MB8212.eurprd08.prod.outlook.com (2603:10a6:150:16::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.22; Fri, 24 May
 2024 11:01:59 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7611.016; Fri, 24 May 2024
 11:01:59 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, Zoran Stojsavljevic
	<zoran.stojsavljevic@gmail.com>
Subject: Re: [yocto] [Openembedded-architecture] proposal: controlled
 deprecation process for oe-core
Thread-Topic: [yocto] [Openembedded-architecture] proposal: controlled
 deprecation process for oe-core
Thread-Index: AQHarU6tT4JQpoq9JkqJjYy6mQJLb7GmFuYAgAAiCAA=
Date: Fri, 24 May 2024 11:01:59 +0000
Message-ID: <DA4472B0-C469-41DB-951B-293257EF46D1@arm.com>
References: <EB772314-DE2E-4782-8D5C-87699453EAF0@gmail.com>
 <CAGAf8LwAfEGUHtEWOpATj1Tt3u6W=QEuQFBBGztCmDyr0yq1Pg@mail.gmail.com>
In-Reply-To: 
 <CAGAf8LwAfEGUHtEWOpATj1Tt3u6W=QEuQFBBGztCmDyr0yq1Pg@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.600.62)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GVXPR08MB8212:EE_|DB3PEPF0000885A:EE_|AS8PR08MB10004:EE_
X-MS-Office365-Filtering-Correlation-Id: c0291350-586d-466e-14d5-08dc7be0f6f3
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230031|366007|376005|1800799015|3613699003|38070700009;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?WVBRdE1BWGNGZG1LejZ3bEZNc052NGlpOGdDWTRWUW44RkVOU1dLOFJ4Slho?=
 =?utf-8?B?R3F6RTdsNlk3dnNQVTZrd0dCMURhanM1MkdFdU10cmM0dlJIU3hvNkpEbnlr?=
 =?utf-8?B?TFQvRVBlZGlsYjI3Y2cyQnhLZmZwdlgyTlFZV0VGSm9VVVM5YXNwQk9EVFN4?=
 =?utf-8?B?MkxidXJ5VmNJamJiWVlWQlhhZWlnNG92WmU1ZHZYaDJMUFcxM0FacS81dUU4?=
 =?utf-8?B?RVNOYjV4MlhsU2lmYTMvY1YwVGUvUm1NY2JzOHZtUDdORkZKMnBSRzlRaEN1?=
 =?utf-8?B?cm9MTnFtWWlzSzEvMm9PdGVDbldtYlZ4ZzJ2V0lrRkM1YlFKdVNZTENwYUNZ?=
 =?utf-8?B?b3VwTDQwUzEvSDBtVEdXSHR3NEFwYVhjNlVLN2lvZ1pqd1RtNmJSTklJOS9m?=
 =?utf-8?B?UEJrUHlTK2tReGZnelZRZnJpZDhVQWxCajl1TklzVHU2MmdYTzFmN29OZ3hC?=
 =?utf-8?B?YmFmelhPekh5TXRZck41ZUpRaVF2NDQ0RVVKblc4Y2xSZlZxK1R4VHBmRUtz?=
 =?utf-8?B?dlNFMHdzQitCWU1hdjBmUHJHdHorWHdKaVFteDhrWjVzRmlCcWd4S2d3c0NE?=
 =?utf-8?B?VjRhSXJmYmwyOWNvSzZHL29PQjBjR3UrQ0FNcndzMnNmQlpXM1FGZDY2UmUv?=
 =?utf-8?B?RWJZNUdNTXpybjFLT0ljNWxYbHRDbGpJSTFsRGFoMUcydGp5aXR2S0cyZTdr?=
 =?utf-8?B?UmFBUU9raUE0Qkw1VEI3ZCtFeC80SUZnVDRRc2ZLenpvWXZsNEdiQ1B2clYx?=
 =?utf-8?B?RzVBOVRsSDBTbExId3NYMUlXNHdUTGtsYTdGcFAvYlVJY2NhK3V4ZVpYTTcy?=
 =?utf-8?B?UE5RNkNzdEFkQmgreG9xKzJKYjZVdzV6ZHZGdml0MDg1ZEFuVmsyOEwyYkVJ?=
 =?utf-8?B?cDBBZGsvdjlnYS9QaExDejFyTk9rZ2Y3L00yT2M2U2EvUER3K2dpcE5rUWkx?=
 =?utf-8?B?L28rVW1PdVMwdzJWbU5PbGJ1VS92bjBMQ2dUR29ZYnlESWg1b3RiYkMzbWxx?=
 =?utf-8?B?QklZb09UdFFLUWZZMUJid0xjaWJVTXJPQkZHajJIRFdNSFJVM29iUWk3cFll?=
 =?utf-8?B?TkVHN2NaWGJYUGNSeXdFalR0UTFDNWJDbGo4Uk9LNjIrSnRPT1dKeW9kZ3hM?=
 =?utf-8?B?Szdxc2tGclNvMlIzZ3lybXZzeUdYOWk3c0JoT24ybGU4RUs0UkFKN3ZWNnBu?=
 =?utf-8?B?anllVDk4S2c4a2ZlVXVXSWpmVlpTY3A2cC9ZdVFtY2FoUWU5K0VLQ1pRM0gx?=
 =?utf-8?B?MUFocTM5TmVNQUFIWTBUaWlMeTlja0hob2duWlNtZWE0SUFqaDdjYW8zMmFS?=
 =?utf-8?B?UituRzdUVEJMeGJ1Qm5XUEtCZEMxTlEzUUNnMjlUSVljazRDbS9HYmpQOURD?=
 =?utf-8?B?anBnTHZzcmRhdkR4TjRUMlRSek15NFBtLy9iZVA4UFFiVWNaemR3Yms5VEU4?=
 =?utf-8?B?d3M2SDlBa3ovYmhDbG5EcGdXSUJoQ2FsNjhUNytYK29vWUdkcHE2OXpnUmR3?=
 =?utf-8?B?bUx4ZEJQUkJCd0p6M2NSUXo5eWs0dTJwRGtvRXhHaVIvZHo2eEV6RlRKdHpO?=
 =?utf-8?B?Wmt2Nitmd1lPSi9YQ3hYbUlXMFRXc2hPa09oZWRjVmRvQTMza2s0UnA3YWov?=
 =?utf-8?B?Lzl3MUhTK1dVRnVXWjhYeW9mRTlVcTJhVEpRSVZFdVVMUlFDVFhtSFlvZEtG?=
 =?utf-8?B?TGt3QmhBaHJ3M2tveU9qWlptb1BtVWp6ZkZlMG94WE5jMGJ3QUhNdFZ6ZGNB?=
 =?utf-8?Q?xPzhoy1yTEQtycTRYjM8DF9ma1w/LUMznt8JKxw?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015)(3613699003)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <D84107D119CF314C9040C1AE65F0F878@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB8212
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB3PEPF0000885A.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	65a2ca6d-4769-428f-b512-08dc7be0ef10
X-Microsoft-Antispam: 
	BCL:0;ARA:13230031|376005|1800799015|82310400017|35042699013|36860700004|3613699003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Y1o0L2diVGJOWU1UUXdhTkNQWjZXcTBrbHVsVVllVE9BeTFyUUEzeUhLYXBS?=
 =?utf-8?B?LzdwRkRMdXNVcXhKNlJWRytmZEhxTFVRTjlKSng3QWpMWmVmbmh5bXlTejBP?=
 =?utf-8?B?cnhMTVlhWGRpbURScTN4QzJLL2oyMjBuOFd5NkdtT0xTV1RJWmVLTEVDR0lL?=
 =?utf-8?B?UjJJZGNlSnF4QVF0NHVmM2VFN0Y0aWh3MTh3OWIxbkhHUlovazgzaFd1ZTFn?=
 =?utf-8?B?TkdDaW1rMVJHdEkxWUJ2aXNlOXljTE51dHQrQWFpeHlpMi9BcG4vTVZqNU1o?=
 =?utf-8?B?THk1UXFsa3NyRmxlYUQxdy9UQzI2cGRrS2ZLTUozQkRIVE1xMnBvOFdSeSt2?=
 =?utf-8?B?T2V5ajNEZVdPU2haeE5xdzVRMEdvNktReFdSeisrWFl0aEtQdjVoUHg1UWxj?=
 =?utf-8?B?T3RXV0QyNWFOMlAzZkE2ekNUa1prN3dkeWV4LzRQckR5YVZvcyswcWZaUTh4?=
 =?utf-8?B?bVo4cUlrd0VSUlRlejd4MlV4L0xaanhJYWNGMmJNTTZ5T2tKMUJuaDY4MEFW?=
 =?utf-8?B?bUhkRkJIWExWM3BzYTAvZkdXT09UQlRWUDltVXZ5LzBtN0daY1hiYlc3Sm5r?=
 =?utf-8?B?LytXTm95N3d5aVE3bUQ5elIyRDN1d0h4R3RvMm5aSnVYUXdWNklKMkJOV3hP?=
 =?utf-8?B?WTZrNXhNNkw4VmZWUlFYUGJhY285QjFyRkdVWU5TSllUZGZFZ1JlRzd4c3VB?=
 =?utf-8?B?Rk1qUEVUZjJtN1lKQ1o0TjZwZlRnbEFDUFZIWTMyU1BwZ01CVWMzZHl6d1pz?=
 =?utf-8?B?dnZ5Zjd6Z0FpZFhNbm5JSE1CZ1hiWDVqak00RjR2ZmFMbzFzWEFaT0hDdGNl?=
 =?utf-8?B?S3l3Rzd4Zy9uc0xoZUgycVdodGpWbkk0UUdUWjFZWElHK1p6bkk2bnBQbzFC?=
 =?utf-8?B?azN1eEhYRXdCQjVBcUJFdURoanNkYnREWDNYRG5ML3NDOXpXWFA5K0JMZFVt?=
 =?utf-8?B?blJKdlhkQi9IUUszV0xtUVBWczNZSXlMeEJMeWh0RXVETi85eHVtRlBNU29O?=
 =?utf-8?B?WWg1d0dmZHQ2ZE5obEpFTFBlMFdTM09BUXR4b1hwSlRYbkU1WW9TTlphdEdL?=
 =?utf-8?B?cVZVVnN5M1EweDhHZWJzek80Qi9nRGhRaXJndldLZmpvTnRhOHc1K0RZeXRB?=
 =?utf-8?B?cHhIa3dQckcvdUhXZmFLZVRweDFiUTM0S1FuYlpEaXZuVGJ3bTNmRWMzaUk1?=
 =?utf-8?B?WUxwY3l5Ti9DY0ZLRDYvZEN2NnJMcGhZRElESGdLUnZlYzFXUVdLVHFtTHpG?=
 =?utf-8?B?bTNlWXVzMFFCMkZuSE9DYS8rbnlNY0RsejhiSXpiQzhTdCtaV0dsS2JzZE95?=
 =?utf-8?B?bkpMak9VVk94QXJieWxpaytqZGFYcVQzZ0hReHNsbGtvWkRCaitEcmRhekd1?=
 =?utf-8?B?Vm56UjhRYWp6c3hjVm9DeEpjT0tXSTQ1SHdUU1V2S3lHZm13KzMyUEZWWlIr?=
 =?utf-8?B?MXB0dlpXRGNSY3hBa045TGhtbDE5NHZONHRaU1BBMTd5ampKdGJQc1ArLy90?=
 =?utf-8?B?em9WWmVkUEhCOEhuVnRtd3lab0ZGYnR0ZFQwVGgxYytOVUs4alVWNjJFeU1H?=
 =?utf-8?B?cjJRemV1TDRrWExsaGhTcHBjT2tIcmo5U0E3RHg1dWJITnEzUEdPRTBiVFRo?=
 =?utf-8?B?akNabkFVSHA5OG1pb3ZpYk1TZmVOcWNxdmpvWktuY0VRTHJ5d0xKRzIydkxI?=
 =?utf-8?B?cy9rczJBL2NqeE0vejJHVVRuZVVUU2V4NDlOelM2cHdxTmMvdWtaQnkxek5D?=
 =?utf-8?B?TGNSbW15S2p6a3orNGtrMFExMmxwUEJxME9xZGI5M3VLckh1ZzBObUpxOHlR?=
 =?utf-8?B?RkJDQVFiYXdKcDhBeU5odz09?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(376005)(1800799015)(82310400017)(35042699013)(36860700004)(3613699003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2024 11:02:12.5627
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c0291350-586d-466e-14d5-08dc7be0f6f3
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB3PEPF0000885A.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB10004
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 May 2024 11:02:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63192

T24gMjQgTWF5IDIwMjQsIGF0IDEwOjAwLCBab3JhbiB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9y
ZyA8em9yYW4uc3RvanNhdmxqZXZpYz1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4g
d3JvdGU6DQo+IA0KPiBJZiB5b3UgYWxsb3cgbWUuLi4NCj4gDQo+IFRoZSBsYWNrIG9mIHNjYWxh
YmlsaXR5IHdhcyBhbHdheXMgdGhlIGJpZ2dlc3QgcHJvYmxlbSBvZiBZT0NUTy4NCj4gDQo+IEl0
IGJyaW5ncyBhIGh1bW9uZ291cyByb290ZnMsIHdoaWxlIEJ1aWxkUm9vdCBpcyAoYWxtb3N0KSBw
ZXJmZWN0bHkNCj4gc2NhbGFibGUuIEl0IGNhbiBzY2FsZSBkb3duIGFsbW9zdCAyMHguDQo+IA0K
PiBMYXRlc3QgRXhhbXBsZSBmb3IgWU9DVE86DQo+IC1ydy1yLS1yLS0uIDIgdnVzZXIgdmJveHVz
ZXJzIDEwMTMyNzg2MCBNYXkgMjMgMTc6MjQNCj4gY29yZS1pbWFnZS1taW5pbWFsLWJlYWdsZWJv
bmUucm9vdGZzLTIwMjQwNTIzMTQxNzIxLmNwaW8ueHoNCg0KSSBkb27igJl0IGtub3cgd2hhdCBp
cyBpbiB5b3VyIHJvb3RmcywgYnV0IGh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9qZWN0Lm9yZy9y
ZWxlYXNlcy95b2N0by95b2N0by01LjAuMS9tYWNoaW5lcy9iZWFnbGVib25lLXlvY3RvLyBoYXMg
Y29yZS1pbWFnZS1taW5pbWFsIGZvciBiZWFnbGVib25lLXlvY3RvIGFuZCB0aGUgdGFyLmJ6MiBp
cyAxMk0sIGFuIG9yZGVyIG9mIG1hZ25pdHVkZSBzbWFsbGVyIHRoYW4geW91ciBpbWFnZS4gIEFu
ZCBvdXIgY29yZS1pbWFnZS1taW5pbWFsIGlzbuKAmXQgZXZlbiBfdGhhdF8gc21hbGwsIGFzIGl0
IHN0aWxsIHVzZXMgZ2xpYmMgYW5kIGhhcyBhIGZ1bGwgaW5pdCBzeXN0ZW0uDQoNCk15IGd1ZXNz
IGlzIHlvdeKAmXJlIGluc3RhbGxpbmcgbGFyZ2UgYW1vdW50cyBvZiBmaXJtd2FyZS4NCg0KUm9z
cw==

