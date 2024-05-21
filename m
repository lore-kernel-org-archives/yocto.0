Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 592DAC25B74
	for <webhook@archiver.kernel.org>; Tue, 21 May 2024 08:19:43 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.53])
 by mx.groups.io with SMTP id smtpd.web10.14794.1716279579305071193
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 May 2024 01:19:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=HV8OHHuo;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=HV8OHHuo;
 spf=pass (domain: arm.com, ip: 40.107.14.53, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=fnpzfvJKfGlVefgaG22OXsqMC9sC1nqitMwmJKaLQYxo0CfPiHwKEOyY9wb/RGuGBf6KMzAYCPaGX9EmWNSc70mtzUqKGVVbVScge1ggkG/K3aF9TxOGgpkzw+3aAJEXEjG9Ml5DX1qfGMFpiz7HJYC452QrrOdJ0dXp8YpMePWevNu/yD2Nj+3frK+3AuUswnX1vTOClrs+vBDuX7ubRfZwHiT7nIH5jt/MxqcTSefsVymCbYUrCxcy+ruCQGzT4a5CA/X2xEDzdDpYLsd4hBlHIsuUUpO8Kkhap2YaVHL6DAjnlyFjcB9/dRpgUCrfxaxJPFmxJlrqq2uqbWSOvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/dFoJySJIKRRsGX59dfbhOR4yG2h5VO08x2/KGWLHBE=;
 b=nbGBWrRi7vKn60ON3q+bvNeqREIiWXgUBn/960vecCgI5kdJiZJYkYuB2J7POx4hTOgWZyTv9NlztI2o/vJndok3yu2NUlTeFtFHBBzxdMjljUi6nrHAAh1+MlmpjHLdk7aWrukZitQoFt/lGs3IKBoXaCH55Z9VtKjTJb5B/PrMp5iqK8n95eu1dNfioE63RxEXfoBspaV9yYYuW7hqa0DhGNrO2I2wkREgnnMPFD5+D2SN3qG0X2Xz83Ch416VEgH6s1pEnV0lxP4hm4nFLCGmX3OiZ6keRIkWbCnuoTJy7EhG9aMf5AHBN13hhhcTPcyiAZ0Zr0vQBI/8XyAXfg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/dFoJySJIKRRsGX59dfbhOR4yG2h5VO08x2/KGWLHBE=;
 b=HV8OHHuoTIsljErctVzygetIbU7tw4W8FUQXJUYkMQJ+o8HhvC35MkwsB3vRXNlFIj4yA/eiP3At7sSj4imjjLzv6jud5dkqNbPbq7tc9aBax7f1/B+1mSidcTN5+q6VsTslxDz12f4tg8TEcsvygIZUGK32ru2iMS3jbe8OnwQ=
Received: from AM0PR01CA0083.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:10e::24) by AS2PR08MB9320.eurprd08.prod.outlook.com
 (2603:10a6:20b:598::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Tue, 21 May
 2024 08:19:33 +0000
Received: from AM4PEPF00025F9B.EURPRD83.prod.outlook.com
 (2603:10a6:208:10e:cafe::9d) by AM0PR01CA0083.outlook.office365.com
 (2603:10a6:208:10e::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36 via Frontend
 Transport; Tue, 21 May 2024 08:19:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM4PEPF00025F9B.mail.protection.outlook.com (10.167.16.10) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7633.0
 via Frontend Transport; Tue, 21 May 2024 08:19:32 +0000
Received: ("Tessian outbound ba75727f6dca:v315"); Tue, 21 May 2024 08:19:32 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 006a1516d920b273
X-CR-MTA-TID: 64aa7808
Received: from 99a2762c1a6a.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 07F5BAB1-28BB-4963-B7F0-735129B7C32C.1;
	Tue, 21 May 2024 08:19:26 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 99a2762c1a6a.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 21 May 2024 08:19:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mYDsiDzV3bw5mQkZSKmR+YGiTLmCVGTmcAfnGf4YIa7MmK4K6jCQNsUZkUoPvHESY227nnohITAfZr/ViGcpKYk+N7jN1mt/XvnNearX9pbIxXbZq9zp7lK00EEH+nyxHyQNAggWAvfKw2NpIoNms18kGZjNdkMswUXctnA1sLlsRLiKZhO813aE+JYTkbhnJG+OYwhSAIzt5NoV7p0PKsvTfR1Y0zxRwMgAk2gRk/KhMRh247ktgB/A/fNqsmDE0waYCA284gbMsyYaDrf9VgiV4sctlIejd6yunIZrEyAGfD5azTszeeVWcLnqdQVDRP3IW2zqq3RUohHylhkA6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/dFoJySJIKRRsGX59dfbhOR4yG2h5VO08x2/KGWLHBE=;
 b=lPu2IYKuxfbPSYeLt/loCZEUUKyWuKYQ54xumZtFlCUmOKEoTNL8eKWlK4WVxTF+3fNrQAj2c+gYmMwzOQ0+X95sKQ5cDQmeIYMkwfdeMTHLtEooJo/QgX6+pSdorcY4lbCyR+0vOHrCeBj75bCDxym3DYeJe+xG/a7K5F0Zc72rdeXlNTK4gM0k0YW217VeFB10gtz1XduK7NXVGD2AMvv9qza/EMBQUhWRyv+p2/wSspL+Cq9LfsdCecO2GvKC2T39UIpRgCEb/z58jTD2p5//0iqhBCYPFEp5nU4GQ6UeNd1+290frE5CXVR3ZQuDR+H7CjEu/u/fgeVdk1nbgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/dFoJySJIKRRsGX59dfbhOR4yG2h5VO08x2/KGWLHBE=;
 b=HV8OHHuoTIsljErctVzygetIbU7tw4W8FUQXJUYkMQJ+o8HhvC35MkwsB3vRXNlFIj4yA/eiP3At7sSj4imjjLzv6jud5dkqNbPbq7tc9aBax7f1/B+1mSidcTN5+q6VsTslxDz12f4tg8TEcsvygIZUGK32ru2iMS3jbe8OnwQ=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB9838.eurprd08.prod.outlook.com (2603:10a6:20b:615::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Tue, 21 May
 2024 08:19:24 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7587.035; Tue, 21 May 2024
 08:19:24 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Strange errors while executing
 poky/meta/recipes-devtools/gcc/gcc-cross_13.2.bb using scarthgap release
Thread-Topic: [yocto] Strange errors while executing
 poky/meta/recipes-devtools/gcc/gcc-cross_13.2.bb using scarthgap release
Thread-Index: 
 AQHap48DnV+qrqTYRkGxGSlwaI24RLGZz32AgAAtiYCAAAI4AIAABVsAgAEx+4CAAAopgIAGF6mAgAAHnIA=
Date: Tue, 21 May 2024 08:19:24 +0000
Message-ID: <59CC144D-482C-4305-A577-71B43289FB66@arm.com>
References: 
 <CAGAf8LwEkmPWUi+B3BotJy0g2AhfBRyVfO4jUBkhRXVtNS1aww@mail.gmail.com>
 <7a55c302-24cf-463f-831c-889c2fa0d168@cherry.de>
 <CAGAf8Ly=jt9WusiC3PEHakxZjjHHnd=gV1yYonTdQRRE5qrtZQ@mail.gmail.com>
 <35A42455-17EC-48EE-A140-6B42B23C80CB@arm.com>
 <CAMKF1sowdVbtY7ipA44GzMDcWUVY-qejW33UDB6Q75zfwh-rTg@mail.gmail.com>
 <CAGAf8LwTKLZq00Jf16gcwkbYieKXDGoQC4BQAmH4-ZVaYRmB7Q@mail.gmail.com>
 <CA+chaQfmJAQUWkEfX4Qd8veV+P+AYqui2vr26cgnrAEjMoYt5Q@mail.gmail.com>
 <CAGAf8LydqUeMGXCMh4nmnTKzZ7Dt+3noeJYCrw4kRuPMX32V1A@mail.gmail.com>
In-Reply-To: 
 <CAGAf8LydqUeMGXCMh4nmnTKzZ7Dt+3noeJYCrw4kRuPMX32V1A@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.600.62)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB9838:EE_|AM4PEPF00025F9B:EE_|AS2PR08MB9320:EE_
X-MS-Office365-Filtering-Correlation-Id: 7cb9b2ff-7900-417a-bd89-08dc796ebe7e
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230031|376005|1800799015|366007|38070700009;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?cTdSbU9PbitlOU5iWE9nKzVVWVlBcnhjT0t3d29tbERPOWp3YlEvdnJZQ3lk?=
 =?utf-8?B?RHdRVkN1ZGhxSzlBZXNMbS95b3FaNDl1THhxcURxeGIrV3M2OGd4bmc0Q0t4?=
 =?utf-8?B?djE5a3VOZldtbWVmRENXa3dDeHdPdG1HbGx3ck84a2VNTVBWbDNjd0ltZDVU?=
 =?utf-8?B?eXB4SzNuY2RLWGlybUtRb09OYVNSVFNsMlp1TlN0SVF6MkVMcWxmcm9qS3Y3?=
 =?utf-8?B?ZWNrOE9Bbk9WNTVPM0RWQmZRbkNLQnpKRWhGazBpUFlHSzJWUnJxSkFIaTZE?=
 =?utf-8?B?Y3h6WjF3Sjk3Sm02a1lpb1FOTUJscDNTOHh0THAzaGExSC81SlhrVVgrbllI?=
 =?utf-8?B?MmcwclJ4aDA2K3JaN3ppU2dlQ1c3dFNTMHBjTUhPQ2M1SFFHQkloWUV6R2xO?=
 =?utf-8?B?NEgvTGoyWDhlNUFkNFZ3d3ZXUkQ5Zzdzcm5DNzhNYnEwTlQ0UGFaSXFiWnNH?=
 =?utf-8?B?cjZSZkRTTXBXUXBqelZXOEthQ0hPOURVbVdCazg1TGs3YjNBZitQUWtySkpq?=
 =?utf-8?B?RGVpRldqaWVxWjFqeVk4RkJJazIwSlF1NHRxNGRSTklqRkc1eThyUDFPRWw0?=
 =?utf-8?B?NnlYTHNDS2pZQUFrb0tYbWJzUkhDY1VOTFpNOEpGWFNGWVk4U1d3SUtLcWNn?=
 =?utf-8?B?Q2tNRW1hY3V3SFp5RVBNeTlyYlZUNkk1eFVZZlpTR1kwMlFJTFl4ckJaaTg4?=
 =?utf-8?B?RDlzL1dGYjVIQStMUmNVam84T284Zi91dUFTbFZhL1JhcXRvNEQ0NEtsOEJP?=
 =?utf-8?B?Yy93ZXBiMkpyWDhLTWFtSktOVUgzeVAxcUNiSVVSL2E1RHg4MnpHR09saWhz?=
 =?utf-8?B?c3lBbnJ2ZnJyeFJLclozdEExa2FMUXpYZ2ZEbmkxTE5hWUgraC81UFQyMUhB?=
 =?utf-8?B?MmJ5ak1udEtxZUZXUy8yd3I2VXJUcWNFcTZvYm81TENGMCtWc1ZDeldwdk40?=
 =?utf-8?B?TXJiQ2N6VktTVk1BWDlmSVlqVzUrOC9HdjAyRkdNbDJ5blM5ZWJQamh1bzBL?=
 =?utf-8?B?UGpzRWxGa3YyN0JMckFHbW4yakNYQU13VEdpSWZJZlczOStPMklHWFM3TlZo?=
 =?utf-8?B?endKNks3ZWpEVVdRZXkxTmpHQU54U1V0TWR6OHNFeGZxaW9TTzN6UG9QMkxX?=
 =?utf-8?B?R0p0UXEyTG9QMHhCZm5qYXhnVjhOdmhtTHZ3YjBzNURKY3M4UVZwOFByaGcz?=
 =?utf-8?B?WmMzZTZZdy9ORzIvZEpvZENOZ3hKZjJJWVpZSkgwWlpCNnhBWWtkdFlnWlEv?=
 =?utf-8?B?T3BNcm1kakwweDArRmlHVGNNTnJ2K1I5YllmR0N3aTZKTDBBUWd6RDh0ZEFR?=
 =?utf-8?B?QnpGeWFOdFpwUEhBTFlCekw2dHRGeWdPTHVWUVBBaFg0OWZmWE1VTkJUbXVl?=
 =?utf-8?B?SlVBNXlrVjRCbEUzeG9kVkE0UHZzVURzeER1RloxOXVzN0xqODRLYUFlNHFa?=
 =?utf-8?B?V3FyeFlWZVZQRXlUN1gxcG4zWWx0ZWxSTXN3SERJYkEzMzB4RStKb0QwWUg4?=
 =?utf-8?B?Mjlpa2c5VGUydEVNODRYL3licnlEbGtDeUdtUHVGczVnSWFGVjliL1pHdXZV?=
 =?utf-8?B?STJvVGwxTUhrUkY3d0JORVNVWTcrRk1WTTZWZnd1UnlUZ0syQWVNa0xBQXN3?=
 =?utf-8?B?VEpWOTgrR1BjOUpjbjFuN2ZKN29LODcxbWR1bmVBdlgvVnRqa3ErTENYTFdz?=
 =?utf-8?B?a1RFZDVTWEltdFJQd2gyMlYrd2l4R2hRUFNXbFFEZHovM3VtNk15MXpXUkc3?=
 =?utf-8?B?RGoxM3lScGErbXlrWDlTbEF6a3FleHluNXgzem1GNUhBN1NISnJqc1FEUWxP?=
 =?utf-8?B?ZVZZb3lDYzZYZEphZUkzUT09?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <5FCF108E102F044E9F4F9D72FF6D8D3D@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9838
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM4PEPF00025F9B.EURPRD83.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	42c1672c-119c-4dca-5bf9-08dc796eb963
X-Microsoft-Antispam: 
	BCL:0;ARA:13230031|376005|82310400017|36860700004|1800799015|35042699013;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MXk3K0lNRWhrdkQxdUZjbzB4Z2JTeURLd05Lb3Z4Y0wzZ09iaEZVRXlUOSta?=
 =?utf-8?B?UllnKzRKZTNmVUNtV2xyTHhOQUUwaWJWWnp2am9sMmFPbzAvV1JNclpXQXdX?=
 =?utf-8?B?cXdrU1kxNytWeWNpcUdJM1A4ZVZ6d29SOU1ZWjN3d3pRTUw4WTdKb1dWY2lQ?=
 =?utf-8?B?dVlhcU9JdzdEdER2aHJGSmY5dzF5ZFc2OGJDelBYZFpCdlRHdmY3UHJ5aHk3?=
 =?utf-8?B?U1hoS3Bnd0dXZlRXNUFKZUwyaGlpNVNFeXlkK295ZloycFB2RXp5dDRWUll4?=
 =?utf-8?B?RVg2dmFNT2xCbDIyd3V1YWs1Z2R4REFRek9UQUJ4dzhIQndQZWw5M3VLdG1l?=
 =?utf-8?B?blZZS3ZCQ01INDB4eEVaYjg3MjdQTFM3eEYwSUFuVnJaZ1U0ODMwYlNkMEE2?=
 =?utf-8?B?bUpPVVhGdlZUYXVsZHRZelMyV1lGMVJueWpnVk15NGxpTHRmME5CMXlKdERG?=
 =?utf-8?B?bmRXN0xsc2o4allWaEtMVTZiREJueFRDWU5UQlRRaGxTOU9OZFR0dE0vci9k?=
 =?utf-8?B?ZkNNUjBVSy91U2pTL3ErNkZlUmYvbjlCU2NtVFd3ZWMrUyt0eHg2em1hVmRx?=
 =?utf-8?B?Q1JHQUFweUVTdDl6TmI3WmljTXQxK21jRm92cUhDVHMvc0tiSy8wU20xM2tD?=
 =?utf-8?B?V0w5djBydWNucGpTK0d4SE1WZ3IxOGVxMXdOTkpaQnlGdmNBNHYyblBWQUdF?=
 =?utf-8?B?bCtwd3VycEJISlVCdmNOS3ZwbVhoaVg3QnRIWjBhUzIwZlFtZ01oS2tKRUFn?=
 =?utf-8?B?eXAxaWxyNHh4b2hCMUN6YlFlRHFYenp0bHhwd1FiSnAxeVBOYW1YR2JqdjYv?=
 =?utf-8?B?MCswUzJlOTJuNlZ2S3JhTWNvcXhWVk8zNk9JS2R5cWptYUZGdHlOd3dINXl1?=
 =?utf-8?B?SFZ1a2czNkxmaU1NdG5uRXA3NjQ1eWFaVU5MU0VNd1FmaGpoMFVDR2IzT3pw?=
 =?utf-8?B?aHlRM0pFVFAzc0JxS1daaDhBOHA0TUErc29OenNydCs3azdOb0VzSytHZjls?=
 =?utf-8?B?WENOT2pyZ0J1L1NXcGtESWpnWWttRUJ6eEFaTDRMdklkeGlxZ3llT2NNbzg3?=
 =?utf-8?B?emx1c1lPbGo4QWJZUzlZQjg4Zldrb01JbU1OT25wa0xHdC83aVVydWxsR0VB?=
 =?utf-8?B?WFQ2N1FiTkFmVjZuMTdxN1F0U1VDR3FYa05qSmNWcDY5QWFyc25iRVluTTNK?=
 =?utf-8?B?MXlzdVNHejNzcTNYRHI3WG9ZYkZPWE03T2sxUHNLaHBDUXAvWWEvTlVMTm1Y?=
 =?utf-8?B?c0J5b2dQcHZuVDdlQkNDT1dhbll5ZTd5UEhOU0VBbXY5SmVIOTJPRXVXNkhh?=
 =?utf-8?B?VERHU05iWExyR040TUY3ZmJ0c0JJbjVuZ1B4eUsyU0FxT2lQeFprQTBZa3VB?=
 =?utf-8?B?NSt6UDhMZ0cxQWl3bWZRL0RIcFRMYlVySVhrWWw5K3NsM0cvcVNmZjkvaUNJ?=
 =?utf-8?B?bm5URllwclVReEQrNjNtOGFWMDVaaERnVTBLRG1QdDBTZTdyMUZiTStwazBs?=
 =?utf-8?B?Mk5zWTVROFk1NmY4Z3dpc3NwTFFRbmFwNm5QS1BNWjBveWJwSUIwNVQwQzly?=
 =?utf-8?B?WFdpNklzNktVM1ZQM0o1d2FpanBNdlVYdEJqS2xTUW5nNjNmOVdVUk9wdXlW?=
 =?utf-8?B?MlZ0QVhzeFp5ZjJ5L3JTTXI1YWJmYm1MTG5PMVlGd1R6ZWJCSkZVTE5tZ3Vk?=
 =?utf-8?B?R2p5SDZPSkVPbXdYWkxyalhtWmwwWmJGQU0wWkg1WitlQTU1c1prWk55cTZa?=
 =?utf-8?B?amlNZTdsVWVDc3RzV2F4Q3dwNTlJeUFnSktsRjRmdk4xUmZBblRuQ0c1Sllv?=
 =?utf-8?Q?Mo+dJLQ0UQkrPxXuPZi91IWdcpl1CJnkoVjvo=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(376005)(82310400017)(36860700004)(1800799015)(35042699013);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2024 08:19:32.8639
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cb9b2ff-7900-417a-bd89-08dc796ebe7e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM4PEPF00025F9B.EURPRD83.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB9320
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 08:19:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63145

T24gMjEgTWF5IDIwMjQsIGF0IDA4OjUxLCBab3JhbiBTdG9qc2F2bGpldmljIDx6b3Jhbi5zdG9q
c2F2bGpldmljQGdtYWlsLmNvbT4gd3JvdGU6DQo+IA0KPiBIZWxsbyBNYXJ0aW4sDQo+IA0KPiBU
aGFuayB5b3UgZm9yIHRoZSB0aXAuIEl0IGRvZXMgd29yay4NCj4gDQo+IEkgaGF2ZSBqdXN0IG9u
ZSBxdWVzdGlvbiBmb3IgYWxsIG9mIHlvdS4NCj4gDQo+IFdoYXQgaXMgdGhlIHRpbWVmcmFtZSBm
b3IgRmVkb3JhIDQwIHBhc3NpbmcgdGhlIHZhbGlkYXRpb24/IEZpeGluZyBrbm93biBpc3N1ZXM/
DQo+IA0KPiA1LjAxIHJjLTM/IE9yIDUuMDEgZmluYWw/IE9yIHNvbWUgNS4wMiByYy14eT8gV291
bGQgYmUgbmljZSB0byBrbm93Lg0KPiBEb2VzIHNvbWUgc2NoZWR1bGluZyBkb2MuIGZvciB0aGUg
ZmVhdHVyZXMgVE8tQkUtSU1QTEVNRU5URUQgYXMgYW4NCj4gb2ZmaWNpYWwgc2l0ZSBleGlzdCBm
b3IgdGhlIG5ldyBZb2N0byByZWxlYXNlcz8NCg0KNS4wLjEgaXMgaW4gUUEgcmlnaHQgbm93LCBz
byBpdCB3b27igJl0IGJlIGluIHRoYXQgcmVsZWFzZS4gVGhlIGJpZ2dlc3QgYmxvY2tlciBpcyBh
IEZlZG9yYSA0MCBtYWNoaW5lIGluIHRoZSBhdXRvYnVpbGRlciBjbHVzdGVyLCB3aGljaCBpcyBp
biBwcm9ncmVzcy4gIElmIHlvdSB3YW50IHRvIGhlbHAgRmVkb3JhIDQwIHN1cHBvcnQgdGhlbiBm
aXhpbmcgYWxsIG9mIHRoZSBpc3N1ZXMgeW91IGZpbmQgKG1haW5seSBkdWUgdG8gR0NDIDE0LjEs
IGJ1dCB0aGVyZSBtYXkgYmUgb3RoZXIgcHJvYmxlbXMpIHdvdWxkIG1lYW4gdGhhdCB3aGVuIHRo
ZSBtYWNoaW5lIGlzIGluIHRoZSBjbHVzdGVyIGl0IHdpbGwganVzdCB3b3JrLg0KDQpSb3Nz

