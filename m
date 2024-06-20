Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02BA6C27C79
	for <webhook@archiver.kernel.org>; Thu, 20 Jun 2024 06:55:49 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.105])
 by mx.groups.io with SMTP id smtpd.web10.41676.1718866539147078242
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jun 2024 23:55:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=DPOGqWQ1;
 spf=pass (domain: topic.nl, ip: 40.107.22.105, mailfrom: mike.looijmans@topic.nl)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sj10IBMV+FHS0bRWf6TfhsjsUuajMQ5dZ1BZxmHhzyC4ZOGuybEsA7E3Re4Y7m+xfQEgHddCl4c3H8AxJ/qUfCq7ZILWS3oaOudMXFXKJGWFKgp9FH20VbdqnrNmAsAgddLCC2cSalhQntemmZj3S5okMAwOgGA+emGEcsQDteBXEdNEPDcb1MkTZFTL0kagVDMJ+yXBMNcAaEGsREEOnMqPqfkCokRO/4hWJakhRxyIsFehAq4+FV/a3iN7Afcma0r0ipqqj79vSCA7gVD/Z/4gvglz3BmWHPFyP95Uu9GljHdXzUhD873M4JWbIK6G8YzOYLvUDZm0D20rZXnDRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sGy5Rgqqyd5kwDQ7dJWywwpX/IPsHcNPyoLYvh8vREE=;
 b=lMoNnL2HQZkHfZJEzvh+CuE++PZtcqLC8T8yBWUh4zxMv8201aA01g7mfnV8hbzncZ+2RtU+YFIQBQ+SP+ghve3YhomQmSjfHwnZzlAW0jHW1R3fozwoD1KOJQTiEprRZyGI+VXaPTYy22Z4A4VfefK+gW1QC/a8KPOLNWn3lGQUrpO+/N77OjitJgbhEj/DDow8fVtrRJmUR30mGo7/7DJ2QfE8DkP5cz0YZyEqVzpMBepJqZwitQRz5ZEA2wVjxqZiCTGk7S092proxRpH9cfjttWwtuMSPCAaVPVifQnH+ZrxBMFhzMsoWIq0tVbzf6YwIobDKjShG+uHGPcdKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 20.93.157.195) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=topic.nl; dmarc=pass (p=none sp=none pct=100) action=none
 header.from=topic.nl; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sGy5Rgqqyd5kwDQ7dJWywwpX/IPsHcNPyoLYvh8vREE=;
 b=DPOGqWQ1A/i+WE20/vx6eb2Ql/wt7NqagpJWK5gkNozufgvBVFq4rcUBE+8QbEodbkCHHjNff/J8DUVWOFt/IcpgsljuRAriEDcP1jGK9RP5nC7F2YpmmaRcUmWRUF5p0jZv5y5XHFnvxU/uNDRk852g09NdQ2VFbTlek7f7oL84A4MwoRK1tslpUyNWwZ2BVKxQe1aZ0l1yZqhiY1TLOKnDGWor7vaXQ2wTKrwjvbjNvDZ62P6yvwSe7Z3auzor5Tow2eUuZ/kRwMrzIL+3p9q0Uu+tKxwpHSnIuyBM6rEK84GmhcP45L7jkYBVpocey96jSbGhBSOFZFFWTSQkWg==
Received: from DUZPR01CA0343.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b8::23) by AM9PR04MB8620.eurprd04.prod.outlook.com
 (2603:10a6:20b:43b::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.19; Thu, 20 Jun
 2024 06:55:35 +0000
Received: from DB1PEPF000509E6.eurprd03.prod.outlook.com
 (2603:10a6:10:4b8:cafe::82) by DUZPR01CA0343.outlook.office365.com
 (2603:10a6:10:4b8::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.32 via Frontend
 Transport; Thu, 20 Jun 2024 06:55:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.93.157.195)
 smtp.mailfrom=topic.nl; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topic.nl designates
 20.93.157.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.93.157.195; helo=westeu11-emailsignatures-cloud.codetwo.com;
 pr=C
Received: from westeu11-emailsignatures-cloud.codetwo.com (20.93.157.195) by
 DB1PEPF000509E6.mail.protection.outlook.com (10.167.242.56) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7677.15 via Frontend Transport; Thu, 20 Jun 2024 06:55:32 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (104.47.18.111) by westeu11-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Thu, 20 Jun 2024 06:55:31 +0000
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com (2603:10a6:20b:42b::12)
 by PA2PR04MB10132.eurprd04.prod.outlook.com (2603:10a6:102:407::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.19; Thu, 20 Jun
 2024 06:55:29 +0000
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::e86d:f110:534e:480a]) by AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::e86d:f110:534e:480a%7]) with mapi id 15.20.7698.017; Thu, 20 Jun 2024
 06:55:29 +0000
Message-ID: <0b5dfc61-07f9-4d3b-8bbf-26da76f09f52@topic.nl>
Date: Thu, 20 Jun 2024 08:55:28 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Dropbear and deprecated ssh-rsa issue
To: yocto@lists.yoctoproject.org, mehmet.fide@gmail.com,
 'Alexander Kanavin' <alex.kanavin@gmail.com>
References: 
 <CAA7J33X=Zydis3=9AMxgA4vWOKYhgySq8tPoYwPhT0vh7WMYDQ@mail.gmail.com>
 <CANNYZj9w8tQSWCLERavC2NXMdS5i=QrimoZ1vGoF=8LNP0wVdw@mail.gmail.com>
 <000001dac26a$bbe3a070$33aae150$@gmail.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.9fe0f4e9-8124-48c3-a0ce-1035f32eea8b@emailsignatures365.codetwo.com>
Content-Language: nl, en-US
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
In-Reply-To: <000001dac26a$bbe3a070$33aae150$@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AM0PR10CA0039.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::19) To AS8PR04MB8644.eurprd04.prod.outlook.com
 (2603:10a6:20b:42b::12)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 
	AS8PR04MB8644:EE_|PA2PR04MB10132:EE_|DB1PEPF000509E6:EE_|AM9PR04MB8620:EE_
X-MS-Office365-Filtering-Correlation-Id: ba58b130-620f-4a3a-9c2c-08dc90f5faac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230037|366013|4022899006|1800799021|376011;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?WVp3UHVZRWI0L08zc016Z2FNTkR3bTh0ZUprc3BUZWJVVDJ0RGFqWHZlZzdM?=
 =?utf-8?B?U1hRWW91d3RtQk1rZXpoaGpSZUcxQ01aTWJBTFdWdFAwR05DZWhHQ3BJV0lZ?=
 =?utf-8?B?TVBqTDRlVjIrRVJHdnRvY0JrR1Y4ZmFncEVUaU9jdEpick9JQm9EejRFRU5w?=
 =?utf-8?B?M2RnamxOcGVtUVdCVDRsdzMra3g2dmtjVThIVFJ0ZEdab2FUVk8xZi9hVTJG?=
 =?utf-8?B?ZjBLZHZiclpwRHUvS0JGNHNnZVpIalFtTktvNmM4WndHMStRbVFlWXJkYTJr?=
 =?utf-8?B?L0RzY0Jnd3hlcHE3a05sY3Bib3lObkV4RjZ3NVJybC9HY0d2dTVGbllZazF5?=
 =?utf-8?B?cmRwNEw4K29FaHI1KzJjYys4c1R6TTlUSXJzam1iNHBhYWh0ZWtXSjQ3UXRo?=
 =?utf-8?B?UUN2R3h1a1puemFwVitHK3pPakQ5TFhwS2dxT05uQnhnb2E2REduanR1bVNu?=
 =?utf-8?B?RkcxaU1wQ2N3ZU9Jc1lFTmpYbkNNQVVpelVPVm9qVEJWbmpIdlRlQnhPeUZt?=
 =?utf-8?B?Mm41a2JWMnNWam5uMXRldVgrVlI0eUhsRFVoY1ZRdm5jUUFTMlJlZUhPNXJN?=
 =?utf-8?B?czBkTXFjWVQvckdOWGlrcVJxSldlZlRwaDdKMUlmZmZnenI0YWpjM2FTYm9D?=
 =?utf-8?B?d08wYWYyUUttYUtCQkFVNjhNWWJuNTVIZVBHdEtRQS9neDkvM2pFRVN0QkNH?=
 =?utf-8?B?QkpzMDlCZEtncUdFTkMzeDlmY3V3S3BCVW11TlkzOTNkZS9kL0xXQlBRMEtR?=
 =?utf-8?B?emhUWFdIbVBNNWxNd3lLTXlBSEpTZ095U1hvbTZNaVpqcWR4Ny9WY3pIS3ZX?=
 =?utf-8?B?M1VNbjJNWDhhQU5iMGdDd1dvN29QOTNjd1VjWmxlSWhCYUpQYkZDU0p0TFR4?=
 =?utf-8?B?ZHFkNXZUNjFIQUhxT3p2dURaSFZpbG5qUnpac2tDZytjSDhINDVZc21ac0gy?=
 =?utf-8?B?MnlEbmIyVm43dU5QRDY3NmJxem1acmp1VDVFbld6NTdVM3QvWENPeEUzdkFp?=
 =?utf-8?B?S1VPb2lRajlWeUpSeEVUcHRVcTZUVGI0amNXOHB3R2U3M1MxTGxmajVQaWYz?=
 =?utf-8?B?QVQzQ1RNcUhvU0dwRUJ0SWViVEdCbndwS0IxNkxISHF6dTBIMWo5NHZLaEgz?=
 =?utf-8?B?STlRWE0wOGtrdWNyUHdBVmZwWXVtT29UTmh4eFVncU1QamZtU3cvMVd2K0tY?=
 =?utf-8?B?SXQ3aytHWE5FUFRMVzYrOHBpM254QVlvM0thcTkreGxlYVZObk1rUzRzTDAx?=
 =?utf-8?B?ZVZwSWtpbmRjazFqRzh1b3oxanFzQWtKdnpvUEVacFdxeXU1dHVsSUxiWVJM?=
 =?utf-8?B?czVydzc5U2U2VHlUWlgwNllEUmJCVnEyc25qb2VNZStaZ0FsZWdSTnJDM0xu?=
 =?utf-8?B?RnQ1QzdUUFN5SDNvOGxNUnFMTnBQZHdETUtZSlI1aVhTdTR1czhPUzRSWGk4?=
 =?utf-8?B?MmpmNFJ6dVhFSUc0L0JYVTdMdlBUZFc2eVo4WkNKTXhYWmNDNlF3VEVoakdt?=
 =?utf-8?B?SEtybFMrdSsxUlJ4S3BaaGtKYmMxSENRd1ZBbXhPSWhvRDJ4VkIvQUx3dHhq?=
 =?utf-8?B?djg4Q2RubURneG5MOVF3dDZmSG1RM2FnT0NsT2ZUK1FoVCtFRVQvK3NXRGRx?=
 =?utf-8?B?N0xMdmNLbGFkQUtTRVpJZEtBd093RVI0R25kOVNBQUZWbXZjbnNFU0Z1VUhZ?=
 =?utf-8?Q?R3HHKwxeD3aiovO4uBOt?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8644.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(366013)(4022899006)(1800799021)(376011);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA2PR04MB10132
X-CodeTwo-MessageID: 1f6940f6-2635-413e-bdb0-9dea47c48d82.20240620065531@westeu11-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF000509E6.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b4890a06-bbd2-4f66-abf1-08dc90f5f8ec
X-Microsoft-Antispam: 
	BCL:0;ARA:13230037|1800799021|36860700010|82310400023|35042699019|376011|4022899006;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?RW5kTzdZMlNmQ0RmZnZ1ZDFycnJ3Y1NucXRWRzJWM1JDMDF3TjRDK243UmxZ?=
 =?utf-8?B?RTZsRTNobExpc054SVlHNEJDYWdkQnpHQ0ROL2VhMlhidXJRczY1VWU3M3ht?=
 =?utf-8?B?c2JFdWVMY1lGTjJETUZMdGE1bVljcCttR1o1aHNSUGRuT1JFWVBQaEpCcVhr?=
 =?utf-8?B?N1hTRmhONTlIZkQxYmZaa3ppU1FvQk9oOUNDRDlsUGp6L21WdUMveUt3VmRr?=
 =?utf-8?B?bmJyRkhhTFQzblNRSTBlR2ZCeFcrdi9ZdzgxUFowZy9sM2xJN3dTV0NvendD?=
 =?utf-8?B?OXJLb05vbGZFNkZtVS9pQmFNZmVxR09Ba29yYzY1ejFpUW9sN1d4alZtMTUr?=
 =?utf-8?B?V0NrQ0N1cTFmUHV3UWdsb2pCcGk5WTRTeWdhdjBPRkhMS0hHelg0N2hwMm11?=
 =?utf-8?B?VHNRamt1WTgyc05pSkw1YXI5TktxaUdUOG5YeWtnaDFISWJsOU10MXlFQVZH?=
 =?utf-8?B?VGxURisrazAxQWNjMG9yLytiSzdiaGVKY21iMGQyMW5oV3k3R21ZWGlFa3JK?=
 =?utf-8?B?Ym9wWHpaYUQzK29XVFE4eUxmSWdiUWNvY0czZ1gva2NzRXJkRk1lTDVMVUZl?=
 =?utf-8?B?OGtyOGpkVm4yanZmOGg1bDFRNFB3aDhFUmIwT1ZJMm43L2RVQnRNbHdDYnlo?=
 =?utf-8?B?cDEweDlpd3JlQ1B1U24zS1pqUmwyRnVGVSs1SjZpN2NGNW45YXVLemc5Q1ZN?=
 =?utf-8?B?d0prSHMwZGZSTng4ZTAwSFo4MU0rbDlBWUgycjk1ZUxYU1dMWi9PaHVuMEk1?=
 =?utf-8?B?bHpkdHMvTCtsenZsbllzZFF3NlUwQ3ljdkVoSnlpUDl0dGxFRndWeVhDQ3Ru?=
 =?utf-8?B?QmgvYnpwektxRFE2Wkgxc3R4Um45cjl1aFIyV2JLOXFMRkg5aTE2S3hHZXRu?=
 =?utf-8?B?bVRqZ0NTc2pQRDRtdWx2RVlxcW5MdDkzVjdiay9OTG04OVdkaHNKeVM1VHdV?=
 =?utf-8?B?MnVoVlRTcDVJN1Z6K0JzZzc4RDlmcGpYREhFZVRrNDFwUU1UWWlPM0liZzZY?=
 =?utf-8?B?QnA4VnRGVnRYMHJpQi83LzcvdnU3ZFRUY1lVa3JjZmhQaklkVHBJakZ3YUFN?=
 =?utf-8?B?U0R5ZGZBelRxdUtIcmpraUtKYmZneFBRMVIxWGJWbDFiYTg0UjF0S0xOOWth?=
 =?utf-8?B?YTk3M3UwaEF0OXQ0alBDVTZSOC9DSjlDdS9xN1BhZUM2Zng1VXlKdG01YlJr?=
 =?utf-8?B?dnYzV2oyNXZOaGN6SUg5ZTFTQ3N2ZE9QVTc0dVNVUG9jM2ZoYWo4bVVVYlZR?=
 =?utf-8?B?T2NVZ3Z1ZzVWUVdDcXpjMVJiUWRrdDluSGxYZkgxVWtnaE1ZWjF4ME5meDNF?=
 =?utf-8?B?aGEwQ0JURU10Q1Y2Z2NCclJhaklqeDVFNVA4NE9ITFF6VnByZ21tM1JFeHpM?=
 =?utf-8?B?cTJDbjBlcWMxM1dXVUNVNjBHMGZaY0p4cDBnOFh5eWNjSmRFQlVmQ205MWFj?=
 =?utf-8?B?bVJkQ0pJU1dyTEhzajg2ZUNzU2hFYVlrdjk4ZUZ1R0NtcEJ0S2daWERNNUZx?=
 =?utf-8?B?ZldaM1cwSXRVTnBaYmNrNnlFY0ZNb3ErMGdJOWV1YjdRZnB6cDZNMi9UNVll?=
 =?utf-8?B?dzhPWTRtaSsxRHRwdUhBcVF0eXRIUXkzcVB0TTZiSnc3NjFEYkhZckNLUE9n?=
 =?utf-8?B?Vko4bHlIRW9KSWpjMkJJYWRjZzhpMmZybTZoT3lrVmhLengrbjd6cnVwNTNG?=
 =?utf-8?B?YndodlF2Z0lXT3lTNHlxckQ5SGJ5U09ObTkwbWVoSHQrRW52S2lXZlpHd2d1?=
 =?utf-8?B?RHRHd3pCMjFsYkZSME9ES3JTZGhzZXpTMFVsekVOOXRwUEtGYXpncms1bVRO?=
 =?utf-8?Q?NCK+bbfJC7lVmJ/4Sn6HoyCWigTOoHt2veLEw=3D?=
X-Forefront-Antispam-Report: 
	CIP:20.93.157.195;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu11-emailsignatures-cloud.codetwo.com;PTR:westeu11-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230037)(1800799021)(36860700010)(82310400023)(35042699019)(376011)(4022899006);DIR:OUT;SFP:1102;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2024 06:55:32.5989
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ba58b130-620f-4a3a-9c2c-08dc90f5faac
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[20.93.157.195];Helo=[westeu11-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF000509E6.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8620
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jun 2024 06:55:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63370


Met vriendelijke groet / kind regards,=0A=
=0A=
Mike Looijmans=0A=
System Expert=0A=
=0A=
=0A=
TOPIC Embedded Products B.V.=0A=
Materiaalweg 4, 5681 RJ Best=0A=
The Netherlands=0A=
=0A=
T: +31 (0) 499 33 69 69=0A=
E: mike.looijmans@topic.nl=0A=
W: www.topic.nl=0A=
=0A=
Please consider the environment before printing this e-mail=0A=
On 19-06-2024 19:04, Mehmet Fide via lists.yoctoproject.org wrote:
> Yes, I believe I can do that. But there are couple of options, I'm not su=
re which one to be followed:
> 1. Replace rsa key with ecdsa and continue with ecdsa support only. (this=
 disables rsa mode)
> 2. Keep rsa mode on and also activate ecdsa key next to it therefore they=
 can work side by side simultaneously
> 3. ??
>=20

Keep in mind that there are millions of released and installed systems out=
=20
there. Their owners will get very, very angry if a software upgrade locks t=
hem=20
out.

Desktop distros may be able to bluntly disable some protocols, because ther=
e's=20
always a user that has access and can patch things up, but embedded systems=
=20
often offer no access whatsoever apart from the SSH interface, so there's n=
o=20
way to go in and "fix" it if something invalidates the keys on the system.

Hence my vote is for option 3 and please ignore what the big distros do.

Four years may seem long to some people. For embedded systems, that's just =
a=20
normal number that "uptime" would return.



> Thanks.
>=20
>=20
> -----Original Message-----
> From: Alexander Kanavin <alex.kanavin@gmail.com>
> Sent: Thursday, June 13, 2024 3:28 PM
> To: yocto@lists.yoctoproject.org; mehmet.fide@gmail.com
> Subject: Re: [yocto] Dropbear and deprecated ssh-rsa issue
>=20
> On Thu, 13 Jun 2024 at 13:20, Mehmet Fide via lists.yoctoproject.org <meh=
met.fide=3Dgmail.com@lists.yoctoproject.org> wrote:
>> I was silently following the email list for a while.
>>
>> Today I have a question regarding dropbear and its default recipe provid=
ed in poky/meta/recipes-core/dropbear.
>>
>> It has been 4 years since ssh-rsa is deprecated by openssh followed by L=
inux distros and Visual Studio 2022 as of 17.10.
>>
>> As I checked today, the dropbear recipe with the master poky still uses =
ssh-rsa instead of ecdsa mode which is widely accepted today.
>>
>> Don't you think that it would be appropriate to change the recipe conten=
t to use ecdsa instead of ssh-rsa one?
>=20
> Yes that would be much welcome. Can you work on that?
>=20
> Alex
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63366): https://lists.yoctoproject.org/g/yocto/messag=
e/63366
> Mute This Topic: https://lists.yoctoproject.org/mt/106649419/3618446
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mike.looijmans=
@topic.nl]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


