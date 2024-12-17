Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D121E7717F
	for <webhook@archiver.kernel.org>; Tue, 17 Dec 2024 13:34:38 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.49])
 by mx.groups.io with SMTP id smtpd.web10.81277.1734442474005395406
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2024 05:34:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=apOv/Ynf;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=apOv/Ynf;
 spf=pass (domain: arm.com, ip: 40.107.249.49, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=TFuxbchwgBon8LhucTKAyTAAw2BFMu55MwGwena4Qr/G4wCRRep9XfTTaJU8JUwB4Go7pKyn+CC4YfwNtbpu7dJbgUWjI3CSSScR6/7aTH2YCNAwXQ7/puGNPPtJm/jGjxJa6lZOFbyA1gHq8p/U0XagZmooeqetMJpQk29vFYWM7Oxy/9mVzQzcYE3cpIMosANVSQ3mZLL+YmvrWLQNl5/9gEAdYWit/ISmgHF3yjbjVpM1tQXZEovRajG25xcqGf5H59cXhh9msApOIZteT+w2dAkb+Io1+QiOzlWhVPDpmqZ1Nl30LXwH47QaWwsNeM4TiF3K0JVfvIGhYKtGFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uovXYw4eVORwYwPLpC4kKDfWu1oGwm+A8hWhGqxdQNk=;
 b=BT4ghonF1FwMDEF4lT4ZMKVJN9C4irHAt/mX5yzlVvo0nhhdoRO8NP41+COD41ckHLy10NFfZqjmBjnI/xFDtR5+/2TATLnfrJ7/GsMYeOtoKrK1sBeIcr5lanxnVYTCi/wXZ/gWkAk8jm86NML6/4vbeVzXUfJXgbUTEqSX5FatDgtKPeF+hmSQKblTogYA4uLS/I1uRYPWV5iG3R2iFWIDALKBkSaA3KDt9APm6Ww2CTGArrpc6FgUhkZOxKVDZM7ftsb1QezgsEkUTg9WdUxVUr+wJO0RAtlDRe2oLp+bMLCXeiRZpH6Q3oguNWm/77g2fiC3J8VSYrtffSYlUw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uovXYw4eVORwYwPLpC4kKDfWu1oGwm+A8hWhGqxdQNk=;
 b=apOv/YnfFTu6DVKXQRJrqY7aDCyClDmlAXLquT9alTPztPFP0+I8s9QTjU3+HXUX5GCSpRO7Fqp1OXQZZVTrh5uFCTWpaRQJqscu+0Guo/07GnqwHNSokrNWa5//LwbrzJbWrV5ATsrMIBmCSNuc853NyMSpNhOtNP/N8ZhHLM4=
Received: from DU2PR04CA0190.eurprd04.prod.outlook.com (2603:10a6:10:28d::15)
 by VI0PR08MB10757.eurprd08.prod.outlook.com (2603:10a6:800:1b8::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.21; Tue, 17 Dec
 2024 13:34:23 +0000
Received: from DU2PEPF00028CFD.eurprd03.prod.outlook.com
 (2603:10a6:10:28d:cafe::98) by DU2PR04CA0190.outlook.office365.com
 (2603:10a6:10:28d::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8251.22 via Frontend Transport; Tue,
 17 Dec 2024 13:34:23 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU2PEPF00028CFD.mail.protection.outlook.com (10.167.242.181) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8251.15
 via Frontend Transport; Tue, 17 Dec 2024 13:34:22 +0000
Received: ("Tessian outbound 7d3f896333d7:v528"); Tue, 17 Dec 2024 13:34:22 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 954b8261e6456cf4
X-TessianGatewayMetadata: 9udQ7pi5leYWvpPzjI13QHprgxNfVuaVW6whKovCRwpcacjHXb6zq2nb6tDJzcC92nhI/oDm8MZHoBHWfyW4W8Cn+2HVqEO/JlmDRshWgYox2DVMQ1K2Xe8uG7M6QDKZ/To+gQzXHohzJBIsPBkOX6WCYGA4S33QDMqMVaN/UoQ=
X-CR-MTA-TID: 64aa7808
Received: from L82f44fa80f48.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 7EDDBCA4-F1B9-4194-819F-B81ECED8FC20.1;
	Tue, 17 Dec 2024 13:34:15 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L82f44fa80f48.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Tue, 17 Dec 2024 13:34:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l8tK58o63VXLlZtuWg5Iv6Q01gEacFnuPYvbjKtJeWA6CiSzobi9CfMH7uuyUAWxtQjnQa8Dy6VRf6L89au/4dKcJCPKm0R1UFkdGOS7oK+22U+U1LKHi6i+PsNOk/KwBBH9jRTf8kZsGThhOUjLE1Osqox1rtJ9gSsHprvVqDMli2rblpzgwtN67S1QQdlw+YtnFmSwIlhmZaeLei/NbASehM9wau7Oj5AnjP9pnRonULJ5awJtGiga4fBGPIrouSn/OQNZYZb4DzjPx+0FbfzcYXA1Kcs92b/7K0T8z2h7VbMM/l/pt/nutcEZx4NUtjZzLo+g+ywn3J6uSADyxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uovXYw4eVORwYwPLpC4kKDfWu1oGwm+A8hWhGqxdQNk=;
 b=cDFe9/MC92BL2SvmPHyA2w+vEj4KV/34IkG0rkkzNJ29nD/9+M29CF8Yp/EgOaUE7V9CerpinziBcyoxzuCkeMzg2mi4md/eOnTEf+RlwMvzTmA72Aq6wI4XuHzAyy+NqIEBMXqDPJu391YG/5D/z9f1tOLBcvjcgX+HffKXrfMWy0CQwYGcpoh/2B7sU+uaiNraJrY3tTpQ3rj2ml9Od6N5FBfUW/o9XdtgvBLDST+4OyOG+4mQKa8SJ4mdL5KWUFMoOKp8msYDsVwTdj5XRyAJ07DXi33RgQZMxkvflbPgZHAe0uPTVogm9NYnn4Keo7yB0Cy9kcHZI07rWJDyRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uovXYw4eVORwYwPLpC4kKDfWu1oGwm+A8hWhGqxdQNk=;
 b=apOv/YnfFTu6DVKXQRJrqY7aDCyClDmlAXLquT9alTPztPFP0+I8s9QTjU3+HXUX5GCSpRO7Fqp1OXQZZVTrh5uFCTWpaRQJqscu+0Guo/07GnqwHNSokrNWa5//LwbrzJbWrV5ATsrMIBmCSNuc853NyMSpNhOtNP/N8ZhHLM4=
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com (2603:10a6:20b:4e1::9)
 by DU2PR08MB10159.eurprd08.prod.outlook.com (2603:10a6:10:46f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.21; Tue, 17 Dec
 2024 13:34:12 +0000
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::8db5:7772:a426:2afe]) by AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::8db5:7772:a426:2afe%5]) with mapi id 15.20.8272.005; Tue, 17 Dec 2024
 13:34:11 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"kontakt@daniel-kampert.de" <kontakt@daniel-kampert.de>
Subject: Re: [yocto] Building wmbusmeters with Yocto
Thread-Topic: [yocto] Building wmbusmeters with Yocto
Thread-Index: AQHbUHvbTRU8NGlkjEu4vPDQCK9/OrLqb7KA
Date: Tue, 17 Dec 2024 13:34:11 +0000
Message-ID: <00D01491-DA14-4808-93F5-E08DD1E55F95@arm.com>
References: <157388946.2878646.1734437074279@webmail.strato.de>
In-Reply-To: <157388946.2878646.1734437074279@webmail.strato.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.200.121)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	AS4PR08MB7429:EE_|DU2PR08MB10159:EE_|DU2PEPF00028CFD:EE_|VI0PR08MB10757:EE_
X-MS-Office365-Filtering-Correlation-Id: eb5afaad-b86f-4c7b-4b30-08dd1e9f8453
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?VzVldXRmSnEzUU9qOExrblVieHgyVDJacXhRY08xVzJ5dVpZU0F0SkJ2a29C?=
 =?utf-8?B?Um51YjRrL21yN0RwcTFsTHZmbEdJM1dPVjVVWi8vaUZ1b3NIVmMvK3pvTGxO?=
 =?utf-8?B?VXVBZTYwcUVOM21Bbm41RlJnM1hicGdnVFNFMy9nTUxhK1lSbWZZR1ZManpo?=
 =?utf-8?B?allkczJCeDJmZHl2KzBFVk5GSWFtTFdrOGxvOUpDWmpTcUtVR0srQXNZbW9u?=
 =?utf-8?B?V3VYS3FrVGpMelQ3TVhKQzEzTUkwVEhPZWtiVDdhS3p5RzRQMFZlY21nd2Nq?=
 =?utf-8?B?eTRSYXo3ZGdrTHBBQUYydVA4K2hHM0Y0Y2ZjY0tLaGduZmQ0WktQTm1kakZi?=
 =?utf-8?B?YUFacWhhS2UybUhqOG00TkV1UVdmQXFrVHJRUkNnaHpscXd5TExabjh2N2Fx?=
 =?utf-8?B?Q2txR3ZZblBDSmJ1Q3lpNnR0YlZVMTVsbTNScDNwU3B5ZWNHZmdCczlsRFNT?=
 =?utf-8?B?QlBsTEFPQmJoUThQd0kxZGRweUNuMW1mODhYakRBWDRNV3pnWWtNK25sZjVk?=
 =?utf-8?B?cVNGbXZhYzF4NkViam4xY0VBZTNDeTYrdHVSd1k4MjJ1dUtldzBDWmNTQm5L?=
 =?utf-8?B?NHJkYTZnOUoreVZUcllWMXg4clpUMmdJb0JvZFhWMmpvMDMxVTdJWUdBMDJR?=
 =?utf-8?B?MXBscmYrY0MwdGJVQ2ZhVmZwOW5RSzRqZTA4VXZNTWN3U201WU1ER1FMakRy?=
 =?utf-8?B?dWZkZjJGK0ExNlhwZVlnbC84WENoZS9TaUk4RVR0QzZ2OHhoNldqWUJ0cUZh?=
 =?utf-8?B?VTkwaWthL0IrRWIrK0htSVdDMUxaT1lPMDlzckJUaEpyUUtzVUd1a3ZQRGRL?=
 =?utf-8?B?dTZVdzVCY3RiQTAyN0xqNkgzMmFzQ0dXTWYvWE9TL3VJNFdvZDdTNlROazlS?=
 =?utf-8?B?d1BUTlArY1NSMmJtQVdNVlZJVDd2R0p2TVczdVBsU0FIam80ZVZiTkh0L2FC?=
 =?utf-8?B?Z256TkkrMUhNOHFYNi9Ca3NKUEl0M0t2QVNEd3JVWEhleVh3cXo2ZHdyZm1q?=
 =?utf-8?B?bHRNZ2szRUtzVms4MjV4VzBwd1MrdCtNR3grRUZReDBybDB6SjF5bmNrNnJl?=
 =?utf-8?B?cDhDRzJ2U05rTWdsc3dpamF5bVBpdktsditUMEVqOEluU0VleDArZ0Njcy9T?=
 =?utf-8?B?b3FIaEdkOGUrRTk1OHlTUGcvdFJtcWtiWlJIcGlFb3JuMTZwTkZ0eC9VbEdR?=
 =?utf-8?B?ZVhOaXc2OVl4YnpYN2s5RE9RNW4ydGdTVmZCMTE5S2NmdGlRWDIyZkU3aHJr?=
 =?utf-8?B?b0sySjRGMHBrY1l1NlFZTmY5cDUrbTg2cGsxVG5xNlJ5NVdFSVNCcTg1dUVV?=
 =?utf-8?B?ekduSzh2UUdndHI5bVdSUlpnalo1VjE3V0JvY0JoWXFJVVpUTUdJajBDWWlD?=
 =?utf-8?B?ZFhWK3B5WS9lUFlMV3FXMjgyVjRpdmRTQWczRXh3NkQ1SElSbC9hODJ4NkFD?=
 =?utf-8?B?U3l3V3RXcHJCMVhTT3ZDTEE4TkMxeHFrc0dwQjJyM1ZOQ2s2M2hqU0JrSlFa?=
 =?utf-8?B?OU5XWmpGejFURUIvMVgzcVZ5RlR0TWNDajJLTkFwQnIxUHdUbE5PMjEycWVS?=
 =?utf-8?B?WkR5Y0JpWENXK1dydWVUU29VVlNoakQ3YXBJZE1EeFpvU3RTUGNWS0YrYzRJ?=
 =?utf-8?B?OFUvN3doNTMrSzgzdThvM2QwMlhtRnFaaktaNjBXd3VGUmJ2NGJDdVFCalE0?=
 =?utf-8?B?SHRST3lJVm9rVzM4eVVnakxwZkVSOUNrcENqSGNkZlZFalh4YXNHOWZ3V1lS?=
 =?utf-8?B?VUtNUGhRVjBoYldRbFkra0t6Ry8vaExraTNMcFREK3MydjFFWGZzcW5IaGVC?=
 =?utf-8?B?cWVjZ1hqUFlSRjU5UlgxeVg1YllVckhvM2pnWEk5RnlYOU9VWWlBd052ZTVX?=
 =?utf-8?B?RTlvUUl4ZS96NEtPWTI5Y2Rkbkx4UzRMbm1kV216T0czSkw0R0dpRTZicmMv?=
 =?utf-8?Q?w/LBzA2DGfJ7cxAFjOC9utnbdgUuTzjf?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR08MB7429.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <7F7B8C882867B54882A7928E53DBB077@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR08MB10159
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:20b:4e1::9];domain=AS4PR08MB7429.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF00028CFD.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	22894a45-0d6e-491c-e4dd-08dd1e9f7df9
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|35042699022|14060799003|1800799024|36860700013|82310400026|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NDJIU0tJS0FzS2l1WjM2QmhLVnhMUEMrb0k2eE9Ga2RVQzUvVW1FSHN6RXFt?=
 =?utf-8?B?bXROK1FkUGl2T2JxSTZtWjQ0ZDdkeUM3Yjh5ajN6QU13SFBaMStoajd6ell5?=
 =?utf-8?B?ZWVac084RXNlb0p2MjViZ0FtYmVLdEVCMU9WS1UrMFRveDZkenF6K0o2Q2F4?=
 =?utf-8?B?RFNHREloaTRTZjRFeitJTSs0OStYbnNraEJtYXRnODh6WWZ2T25xSWdmSTZ4?=
 =?utf-8?B?ZDlKRGR4QjlPaWhGT2oyTDAzTVdGaVRGYVhUTEQ4bVRjZnZGWFJsUW1DdXl2?=
 =?utf-8?B?bzNjNEkyMDYrNE43SktIb2NuVThuekp1VzVhd3R1WnhDdlRqcVduV3hkdDNa?=
 =?utf-8?B?bHVFMkpweXFUYWpBbk9rYlZmQWwyclYrOURlVkVxSGVudVhzbDRkdU9qTFln?=
 =?utf-8?B?R010U3VKaEFOUVZVRU5NL1J0d2RZajd3R0x2OWhaaHYyZlhoK0VlVkt3ZGpH?=
 =?utf-8?B?aGxNb0xxQjk4OWM1QmQ2QVg5ZXEwUnBJU244aHJtUXkxMG1HMGRLWWxYSkEy?=
 =?utf-8?B?WmJjZSswakdJN3N5NVNsQVZFS2dBWFlPcTd0ampKYm1aZlBxRjVBRGFtQ3JY?=
 =?utf-8?B?cmJSdU10VlN2eUplbFBlSzQ4Qjlma21MOGZMMzdLSUtsSkMxQlFwMi9Majkr?=
 =?utf-8?B?eThKUEM5aXZKTW5TMDhuYkh3ci8xK1ozV3gzeUExcVRWQXhqZVBpZk9GTGlY?=
 =?utf-8?B?d2NFNEt0QlJ4TGgvVU8vbkFiY1IzNGhLdUNtUVBBeDNXeGc4K2xzckFuRVlk?=
 =?utf-8?B?YWY3aDVYdExIRWN5V0hOUUFGYVRNK3J3RTNFYXdGcGtESUh1VlRkSk1zSStS?=
 =?utf-8?B?aHczM1dlWFU4KzlNUG9GUXhQN1J4VVNOSmlrTnVJWFNOV1c0bzAyMGJhbGpY?=
 =?utf-8?B?Ym9nSVR3eGd0R0IxSHc1aHJSOEprOXhOUncyYkU0Q29OWHdPOG0wdUhUYW5r?=
 =?utf-8?B?R3gweU9EQ3lLSVVNcnIyNVhyMXphMjNYb0lOajB0Mkpob3A1Q3BobVBoS0dm?=
 =?utf-8?B?RUZFWXV5dTFQcndYdG9rQ1o1UXJDRktBdC82bWVoZUlGanU0bnVFVXBuRGJI?=
 =?utf-8?B?WkJJdldQVnNXWDJlQVZqTWYyS0Q4b3d3SWRGUVZob1lpRFVUSTBTOUl4YXlI?=
 =?utf-8?B?a1gvVHoxZ24vQmdzUFFaOTRBRy9TMnROUWVVdkNtc0RIOHBQdm5QMFBucmFY?=
 =?utf-8?B?eUREeGpzcjlHaitwODl2R0FxRkZycE53Y1hMZE5CVWdDRURYa1REbFhjTmQ3?=
 =?utf-8?B?MEJybkpkb3JTWjdPSFB4dUJDZm1LVGhQWEtuNHUvdWg3emlYWkNId1cyT1k5?=
 =?utf-8?B?WU5HZjQvZDYxdGo1dHpFMkhTelFveHBJeXdMN1RBK05zNk1JRWw2S3RldFMv?=
 =?utf-8?B?UDkwS0N4dnZHS1E3dUNqejhHWUVjcVZ3eW9uSkhGNC95SW9PaDVaRlhXYzlr?=
 =?utf-8?B?dmQ1Z1ZJWXB3UmhudzlVd2ZQNENZVlRDMUpJRWV5aFBWSWFwMS9sQ1VGTTlq?=
 =?utf-8?B?VzloWklkSUhOMjF2VTVXOFNJUDFtVlpsRm1RVHlPNTVFQWdBdTJkRGZ3TXN2?=
 =?utf-8?B?bEV5RHR4Y0cvekwrWlFoR0NrMmwwWnByQzB4N3JaWUExYU5WUWVMYkdIanJl?=
 =?utf-8?B?TWRhUWtic1Y0SUpIbDNmdjhZWGswSDdwRVp2WnNVMXRVOUUwRzdJVDBmeFps?=
 =?utf-8?B?UFJWeElBY3Z4M1JXODdhL1FBa2loVFdNdVJPVmVkUC9hNThiR0Y2eVlyR2NQ?=
 =?utf-8?B?dFJUUytjU0szT1luU2xBQzB5cC9xVUxaVkpPKy9OWmxkVTJ1aUxSdnhoOU9l?=
 =?utf-8?B?NnBlUEJGai9CN2RMM2IrdzE5eDNpRUVFc3RvaDQ1OVM5SDZDVU9Ia2pQVW9U?=
 =?utf-8?B?a1lreFpjWW1BNllwczVtYm5IS2JtdDVzVmozRlh2dFZNelJpU1VQT2JTRk9O?=
 =?utf-8?B?L1ZzcGtOSXB1Y0Z1Sm9VTFJTRitCamZRVnVsS1gwaE1GV3VwekhpYjhWd2JN?=
 =?utf-8?Q?MmmCDVZPfMCsD8IB1NGZ5+T8eFDYhg=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:64aa7808-outbound-1.mta.getcheckrecipient.com;CAT:NONE;SFS:(13230040)(35042699022)(14060799003)(1800799024)(36860700013)(82310400026)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Dec 2024 13:34:22.4538
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: eb5afaad-b86f-4c7b-4b30-08dd1e9f8453
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF00028CFD.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR08MB10757
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2024 13:34:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64458

T24gMTcgRGVjIDIwMjQsIGF0IDEyOjA0LCBEYW5pZWwgS2FtcGVydCB2aWEgbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZyA8a29udGFrdD1kYW5pZWwta2FtcGVydC5kZUBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnPiB3cm90ZToNCj4gfCBjaGVja2luZyBmb3IgeG1sRnJlZURvYyBpbiAtbHhtbDIuLi4geWVz
IA0KPiB8IGNvbmZpZ3VyZTogY3JlYXRpbmcgYnVpbGQvdG1wL3dvcmsvYWFyY2g2NC10ZHgtbGlu
dXgvd21idXNtZXRlcnMvMC4xLXIwL2J1aWxkL2J1aWxkL2FhcmNoNjQtdGR4LWxpbnV4LWdudS9j
b25maWcuc3RhdHVzIA0KPiB8IGNvbmZpZy5zdGF0dXM6IGVycm9yOiBjYW5ub3QgZmluZCBpbnB1
dCBmaWxlOiBgL2J1aWxkL3RtcC93b3JrL2FhcmNoNjQtdGR4LWxpbnV4L3dtYnVzbWV0ZXJzLzAu
MS1yMC9idWlsZC9hdXRvY29uZi9zcGVjLmdtay5pbicgDQo+IHwgTk9URTogVGhlIGZvbGxvd2lu
ZyBjb25maWcubG9nIGZpbGVzIG1heSBwcm92aWRlIGZ1cnRoZXIgaW5mb3JtYXRpb24uIA0KPiB8
IE5PVEU6IGJ1aWxkL3RtcC93b3JrL2FhcmNoNjQtdGR4LWxpbnV4L3dtYnVzbWV0ZXJzLzAuMS1y
MC9idWlsZC9jb25maWcubG9nDQoNClRoZSBwcm9ibGVtIGhlcmUgaXMgdGhhdCB0aGUgTWFrZWZp
bGVzIGFyZSBub3QgYXV0b21ha2UsIHdoZXJlYXMgdGhlIGF1dG90b29scyBjbGFzcyBpcyBmb3Ig
YXV0b2NvbmYrYXV0b21ha2UgdXNhZ2UuDQoNCllvdSBjYW7igJl0IGNvbnRyb2wgd2hlcmUgdGhl
IGJ1aWxkIHRyZWUgaXMgd2l0aCB0aGF0IGNvbmZpZ3VyZSBzY3JpcHQsIHNvIGluaGVyaXRpbmcg
YXV0b3Rvb2xzLWJyb2tlbnNlcCBpbnN0ZWFkIG1pZ2h0IHNvbHZlIHRoaXMgcHJvYmxlbS4NCg0K
Um9zcw==

