Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73797D0E6E9
	for <webhook@archiver.kernel.org>; Mon, 21 Oct 2024 10:29:57 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (EUR02-VI1-obe.outbound.protection.outlook.com [40.107.241.41])
 by mx.groups.io with SMTP id smtpd.web11.42852.1729506590409006938
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Oct 2024 03:29:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=j5nO9qUn;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=j5nO9qUn;
 spf=pass (domain: arm.com, ip: 40.107.241.41, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=piuJY828BqyyMWHRavIEzdxPL3ZE2/NMywt8H/tv4WDqQGfQ296x93VCTlau/7eRFZwZ/CZoiMRkGbUNOwTWou3lJnIdWThIwcoHAi/za0ZXlFV+Q80jXiZe6t930PSin8bZiV2IUh3knJaHqgDr7RnXhxLSmk9OKfeQ8vnMCp6ooqr1Ol2VnAd3GDemxBdoAsoWjwLNYDuW225gTAm4LUKXB0KS3JwLCl9MMmPhAl23mkyybaXWNxynOIpSrjLBli4JWhDg0IqPsA/d1Uwq2OEHLamGndevq2iSPc4QZoKX8MUAI5hHgdX6QMwQf+kwCNRuE7PpNNYmrqlIHJtcXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nY9KQvt01H5EqgQR4c5d4NB+BY2rds0Qb+wcgVf+fII=;
 b=ygd2Q0/20vJ1iCo9A/4pz4gEwxld3HP8Vn29ZSDPawtrv3nfJGCmu3X+UfW2LIUJKGq0MlXnR0dBOX0OwuZtV/dB5P/JN8YewiaGMmCaqj3I3A+XbHEpdQxU0bGXOJ42LDmQxMWm6IdBGDt9GlPCUogANIY6xbht6moCmszD/fG4qaSZ7ZceifoH+ErYrEpy/G5qIDwSKmS7XNZGJwLo0e8CC0CvAZdQhxOsPu+Rb90YGr3+LyNSlgDpSPzfQhMQs1dt6URqnkQpFGZ2yJxGpUFCNslO1DQhVT6euZ66CpB+eUC9kl6DKQ9eA34JjxmF+n3VfGVShhNx7sO1XYJalw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nY9KQvt01H5EqgQR4c5d4NB+BY2rds0Qb+wcgVf+fII=;
 b=j5nO9qUn0C9OBgwyyPsFtm6m6wUp5Va8stKk2QqJfUKn/3aRmUXXo3bZeapQi7atVAAkQqFeq3AH4FEhLMycvIJP8mYJccWLgrM7+vUt6FK63N2SGFBscoF7fjURndWqXp9iz6Hyvg26hb+qfW8l5qMsPOg/dMZE8koS6zWw72c=
Received: from AS9PR05CA0250.eurprd05.prod.outlook.com (2603:10a6:20b:493::28)
 by GVXPR08MB7704.eurprd08.prod.outlook.com (2603:10a6:150:6a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Mon, 21 Oct
 2024 10:29:43 +0000
Received: from AM2PEPF0001C712.eurprd05.prod.outlook.com
 (2603:10a6:20b:493:cafe::2a) by AS9PR05CA0250.outlook.office365.com
 (2603:10a6:20b:493::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28 via Frontend
 Transport; Mon, 21 Oct 2024 10:29:43 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM2PEPF0001C712.mail.protection.outlook.com (10.167.16.182) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8093.14
 via Frontend Transport; Mon, 21 Oct 2024 10:29:42 +0000
Received: ("Tessian outbound 60a4253641a2:v473"); Mon, 21 Oct 2024 10:29:42 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 03f5fec1fbf552bc
X-TessianGatewayMetadata: QALmjG9MVygAj8s5khqTpFFvflKKXmcEfOK+b74LiU+1ac41ZiMubx8f4vdWrTcfXj8QI9blVm96bhRNyvvYWrIE0lf3r/WpMfcNuv7KiqakiUm8MTGucg9uQhLnccamP7dYxPdk+wFtVHt5cFCPhkIap2uAWCZdCpxpGCDmkCg=
X-CR-MTA-TID: 64aa7808
Received: from L85c2dceb9c4a.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 12C319B4-D50E-4F60-99E5-FEFCD8F72D39.1;
	Mon, 21 Oct 2024 10:29:36 +0000
Received: from EUR03-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L85c2dceb9c4a.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 21 Oct 2024 10:29:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ltnOdWMKTmhxz3boNf3ahibj0znwPRGgfq6Eo1EEjO42SNwIomA5ePO9AmnzIKLSfc3wVD3it0E3EJ4RaAkiMNwqnYLk9EGwN0ixI5SpHpZ9M9l/w/CbblnGm6FPKUCKN9Lh+p8H/5iSrRWNVfKZLKMElsebLOGAawbgMr2igBqwaqD7BGHNAXRUiSZKOExIANdrG7Do+q6/ySQsVJYz0USMZMaxMQNrHUDcHS0EIChDrvzMJUPC1iLwDFaYb+/RAmN7L6+eIFORG5MeT4WRcz8O3JX2X39Krwj1jW8hOCKVJJyBfjV5jyS+gCBJ/3XGCwppSQ3SbzT9+l4j+kWFPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nY9KQvt01H5EqgQR4c5d4NB+BY2rds0Qb+wcgVf+fII=;
 b=m9kz9wRFKIZMk+90eueNrxbaM+pEJdPut6rQh9CnQsgqbEisvayFNwkkrL0jOpbZfqoeD8vyXOi7dTezPkBy2X2gApImenhri3SbgJ7me+NrE/z0yy7yXqtQ0kzZK6X/GmuYaNRGjD3LZp1sWbbc89WHJc7NVP40JQb4JuCVNgenqMlkbPim2YG7JEC0cJQtbVODawvyBWo9j0pVLzb3PeCzxsV1z6IAu9+wOkrZAVPV+rQgrGhEUoww2yt+c0vOF1iR5oIZmcQIffyOWgrwFuRQLweboHB9T97eRRnRsP+VlUTlaNXyuzxFHWkZSw4U6YnAJQdskjifx12KnxnSqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nY9KQvt01H5EqgQR4c5d4NB+BY2rds0Qb+wcgVf+fII=;
 b=j5nO9qUn0C9OBgwyyPsFtm6m6wUp5Va8stKk2QqJfUKn/3aRmUXXo3bZeapQi7atVAAkQqFeq3AH4FEhLMycvIJP8mYJccWLgrM7+vUt6FK63N2SGFBscoF7fjURndWqXp9iz6Hyvg26hb+qfW8l5qMsPOg/dMZE8koS6zWw72c=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by VI1PR08MB5391.eurprd08.prod.outlook.com (2603:10a6:803:138::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Mon, 21 Oct
 2024 10:29:33 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%3]) with mapi id 15.20.8069.027; Mon, 21 Oct 2024
 10:29:33 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, Zoran Stojsavljevic
	<zoran.stojsavljevic@gmail.com>
Subject: Re: [yocto] ERROR: Nothing PROVIDES 'virtual/kernel'
Thread-Topic: [yocto] ERROR: Nothing PROVIDES 'virtual/kernel'
Thread-Index: AQHbI6L3YMb9jmqgc0+drIjjGo0j87KRAOuA
Date: Mon, 21 Oct 2024 10:29:33 +0000
Message-ID: <24D459CD-39FE-4164-AEA5-A2FB14C047EE@arm.com>
References: 
 <CAGAf8Lya5tRX6CabEYHyMumvahpmd5AUBNERVz2sUyFaLcLUPg@mail.gmail.com>
In-Reply-To: 
 <CAGAf8Lya5tRX6CabEYHyMumvahpmd5AUBNERVz2sUyFaLcLUPg@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3776.700.51.11.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|VI1PR08MB5391:EE_|AM2PEPF0001C712:EE_|GVXPR08MB7704:EE_
X-MS-Office365-Filtering-Correlation-Id: aaa525b1-4100-4b3f-8ffb-08dcf1bb46d9
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?MlBQZEFHTEZFc29DK1BrcVkrUkdOd1dtUi9xcnhORG9maE9CK1R2RlpwQWx6?=
 =?utf-8?B?aWhqZmlmZDYzcVdRdUVPbll2M3VUL1BMbXdXKzk0eU1GM0tXTWM4SngwTmFZ?=
 =?utf-8?B?ZHJUOEsyYW56ODhkcjBLYnhTZEdtWTNVaS9zMnoxcVJhZXZsQ0N1UExIYytR?=
 =?utf-8?B?QWh6UXVEVENmdHYyRnNpUGJBalUvaE9YbU1oTVRCcVRFMlNmbzNtZngxbmo4?=
 =?utf-8?B?SGJjRjZmMk0zZHNZcUo1MmxXNE1LRnZjRndnU0lvWHZQZGlaY2gzV3pvTzhy?=
 =?utf-8?B?STA1NkRyWFRDb0xVTXRDWEJEM1NYT1p6bGVxOW9PUTdOZWNjbTdSb2NjbHVD?=
 =?utf-8?B?Z2VEbVF4TUthMVp5TS9oQkhOSkJEOHl1NU03QWhtVEpreCttVVQ3dU1KekdB?=
 =?utf-8?B?VHJpQkZZanZBZ1dGZ282Qy9QOVhPSDliaE5mak4vakF2a3hMR0ErYVl1b1dT?=
 =?utf-8?B?anQ3NGNXYmlSd1RFOGk2OW8xSVFic0hmT0FqWFg1MENxT3FuTFhPekowTHdO?=
 =?utf-8?B?OVVTb0JYOVp0ZTFvd0JyOVVOY3IyV1lKYm50T01FQWZ2UWh1ZUZYK25xTHNk?=
 =?utf-8?B?VWh5ZEtCS1VWYitBY3VaTFovWlp2NXg4ZGt5L25KcGgxM0xCbnVqemZNSGN5?=
 =?utf-8?B?R1NzS1VJTmgrYzNOWlJDYUZscWxTRjJna24zQUg4bVNldkJHNG40QTU0SEJo?=
 =?utf-8?B?czV1K2E0M25EQWMyQ3c5Mkt5SFN3ZG5UZC9pRkxVVTZzR293WVJYNlRoSElR?=
 =?utf-8?B?QnhDRXZRc002cXp6eU90SmhHR3grTUdUOHYrRG1GUGVyTDBOK3A4VUpEQ2c5?=
 =?utf-8?B?bHZtekFacVR4azNMUFpsZFd0TThDVUF3L2syS1dFTjlHL2lQMHdxcnBMM1Nv?=
 =?utf-8?B?c3czSzREN2pRVDlsT2REbHdNOU9KbkR0R2pZeldiM3BtQkppbGVaZTJqYTB4?=
 =?utf-8?B?VWgxMHBDdDdHOTNjU282TTUvMTl6K0dwQ0xqenNyYVlPMWIxVXNBWnUyeWpM?=
 =?utf-8?B?Rk8zbmVCM25tOU5ZQmpsMDRCTVUwYkhuMkpNaDY2NWVLT2ZxSkd5SGEwaDFP?=
 =?utf-8?B?ZUw5SjVyamN3bnpaL3I4Y0FGUTBmYytOSjRuS0h0Y05XUEs2T25qZ3l6QUtD?=
 =?utf-8?B?WVovRHZwT1NVT25YMlU0enNCQUYxeVpiQ3lUTHpGaXhHbDh4SFZKRnZBT2tz?=
 =?utf-8?B?K3RXbGNSci9iMUw4Q291bWpTM1RLK0FKeDdJTi8wd2N6Y21NbnBaWVZzajky?=
 =?utf-8?B?L0lSVzZDQVRiRjFUOVBmd1kzeUdjMitZMHJac0J2UXZiS0wxQnBZL0JBWlRu?=
 =?utf-8?B?NS83MHBjMitZSHRRZG11bTBxa3oxdjc0c1E4VEZDbDJneHpPdWdVcWVSbVJS?=
 =?utf-8?B?UC9qTFk3TUNtdUJkTzBrR3NzS1hjOG9TYWVoemZPYkZEcVVwU0ZEcXhwazVn?=
 =?utf-8?B?S0FQYzJoUDZ5VXNxZHF3T1o4bW4xS1N4NGJxWVlPSVA5Q3N5MVp6RE5paUNG?=
 =?utf-8?B?SXo1VVBtZzJXSEt6ZDkxVHVONXRxR0V6MmhMWFFoMDlJamV3WURHUXpUZnNC?=
 =?utf-8?B?eEJUMmNOeWJBV1RaNmVVcDNtdDVab2hwc3UvbDc5L21HdWxGNzEyNW5TT1h2?=
 =?utf-8?B?cWRFdTVKNHdpenJ6SHVvcXVLVi81Z0QvNWxNVEgycXBQQmhVTk03UUxEUTNV?=
 =?utf-8?B?RVczL3JNckRQb1ZMN21DTkR0OW9ta0wxT1JZdG9HRzN0b3JwMG9udklBQVlm?=
 =?utf-8?B?YnViWStXS2tUcXdlWllvS3NQc0dZc2s1TFhhcXE5K05zQkttYmJsU1NVZTQv?=
 =?utf-8?Q?xangveomue8gziKnigNCzQOztTTLsipEuYoAM=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <C14591F1D9D63C4D98C68391D3B12EAD@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB5391
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM2PEPF0001C712.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	0b24f327-a569-422f-3ef2-08dcf1bb416e
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|35042699022|82310400026|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZHJVYnFMMms0YXNvUEIybmpadGNobXFiK2JkVVRsV28zTXd3OUNJeUhXVnE2?=
 =?utf-8?B?MmFteFBjdEVQRGdSbCs5SnNqWkJDUjRlQlczMTVPU1Y3STI2OGxCWHhvMEha?=
 =?utf-8?B?VWo0TGlKVmkweHBxVEVhcTQrNTFvY1gyQ045Z3NvdThDTEtaSnV3K2JMZ2ls?=
 =?utf-8?B?ekQyY0Q0bHRBREswNjFqODZEYm1MQVNlcHovZlVMVlQ2aEJwb2YzMlVPZjBD?=
 =?utf-8?B?Y090RGsvTGVuc0l3a3QxVEVkUnlka0x0TkdEbWcvQVV2N29HY0wyZHp0eFZz?=
 =?utf-8?B?L1pBLy9SNDNYeEorVHp0WmhFTlJBWTRjblo5R1ljTGp5TGF2cGR1NXZzNDRj?=
 =?utf-8?B?TG1RWWVUMzJNNEdKTE9ZdUMzMjBPbWdPUDZza0N0cTd0aDlwcE1qNDlHNTBo?=
 =?utf-8?B?N01aTWd6Rm9xamUxZ1g0R0E1U0d6bnNtTVpwWlhwQVRNeUtHOEpkWXBsMmVq?=
 =?utf-8?B?dmtUcDVvdWFKVytUaTExZlR3ZmxEV2JEaW1rNXZrK2ZMTSt2NHFXWkFRRThW?=
 =?utf-8?B?RDhueGhZV0crbVd4V0ZqL3JsZXZ1dzMyc2J1K0drQkdWVER1b2dLcG01MFVD?=
 =?utf-8?B?OEdLZi9jSmpvWnVEc2hXcFYwSVF3bmdRRWVpRFVmS1hIazJIZi8yL3JCOGcx?=
 =?utf-8?B?OVI2d0R0L1ZmQUVlY0ZaVzRlZVE3aFVUMnFwN2xQR1NHc3NiZ04zVVF0eklE?=
 =?utf-8?B?dnVJTkY5L25iWU9TNW52L3cvTklySzBWOTJSdDVyNnROdTcvcXowQzR5enpo?=
 =?utf-8?B?akdqTjdxT1lUc1FMSXBUTjBjWTlZMXhTT3Z5aGd3bC9VTzFWaVNWeVo0TXE2?=
 =?utf-8?B?N2IzbGgvWVRkVmJqeXVaMXhKOW9HQTZmdENESGhaOWhPc05IWTZoc3dhRjEr?=
 =?utf-8?B?OUZmaWpJb3kyS0hzRVJhckZNSTJGaVk5Q3EzY0dwd3g5MVVZekpHY1BYUnhn?=
 =?utf-8?B?VnYrYlVFUC9ydGVaYURDVUJyZU9GNjUvOElWdXdyYkxQQzNJd3RkTWszaGtT?=
 =?utf-8?B?WnFPeVFsU1h2UFhiSmx2TUdLbjU2blFuR0dWWUp4S3BqdnFEb1Z1dU5vUE43?=
 =?utf-8?B?NzVVTXZ0aTJpQS9xS0IrbithMFBWWEs3c1NYVzFGNU9PdTZlYTJXd2xobDE1?=
 =?utf-8?B?ZzFYc0wyVkdsbS8rL0YyekxIRTB4ei82V3dKZTlrbmljMnl2RTBmZUwyRFJj?=
 =?utf-8?B?dE5qYmVGMFdzY1krcUgvY05USGEzbDRlUTBMYjdjcFdGeW00cEFEUDlhOGVL?=
 =?utf-8?B?OVgrUWNxVHBrQlc3NEZsT0NvZFJrc1RBS1pyQWx0Skwxc05SeTZmL0NSaVN1?=
 =?utf-8?B?Z3ltMXhsd01QcDFWaERWMzk0RnJqajhvQzFGSmNXV1lxd2dCUjVDYXFPbVRm?=
 =?utf-8?B?M29xSlFBSFN4UUw5VjZKZEg4dGdrRTMwVDdqWDlVNjFwY1VBQ252L3Y4VmdP?=
 =?utf-8?B?cnZGL0xVaUxmOThXYXJDVnB0MmlUcDRrYUtwSW01MFptU3U0VUhPOEQ3aVZW?=
 =?utf-8?B?V2dOd3UvcUpoZ0x6bjExdWtuR05Gc0Q1OFRUTzMrYjlVc3orUWVmeDhhekVS?=
 =?utf-8?B?ZklhbitVb253NDJqTi9WTnVZOUpYRDlrWjR4Q3g1a1hYV3QrbHpIaGZCTDF1?=
 =?utf-8?B?U3BqMUpOcHQrdWNRWFp4U1ZSSmNoWDY2SlYzbEwza0dBTklxZ0Q2TTBEU29w?=
 =?utf-8?B?VnJ5MlZSbjExcTdNYzlicEowcVF2b0gvY1kveHJmZXVGQUl5MnlBUVFpN0ta?=
 =?utf-8?B?UlI3ZlNMTFFFeHU4ZjhoNi9MWE5BT3FnYXV4RkVQYitESW92cTdUNTk0VXZK?=
 =?utf-8?B?ZytNazNpSjZZbTloV2FGeEFSRFlSQUpQS20xa1g2ejhoQTR5emtjaUlmNWE0?=
 =?utf-8?B?U2JqdmpnYWhGWWptYTJOMHY4UklHeFNtVXQ2SUdGdE93MHc9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(376014)(35042699022)(82310400026)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2024 10:29:42.8515
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: aaa525b1-4100-4b3f-8ffb-08dcf1bb46d9
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM2PEPF0001C712.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB7704
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 10:29:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64065

DQoNCj4gT24gMjEgT2N0IDIwMjQsIGF0IDA4OjI1LCBab3JhbiB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8em9yYW4uc3RvanNhdmxqZXZpYz1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZz4gd3JvdGU6DQo+IA0KPiBIZWxsbyBZb2N0byBDb21tdW5pdHkgU3VwcG9ydCBUZWFtLA0K
PiANCj4gSSBoYXZlIGFuIGludGVyZXN0aW5nIHByb2JsZW0gdG8gcmVwb3J0Lg0KPiANCj4gUGFy
c2luZyByZWNpcGVzOiAxMDAlDQo+IHwjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyN8DQo+IFRpbWU6IDA6MDI6MzAN
Cj4gUGFyc2luZyBvZiAyODI5IC5iYiBmaWxlcyBjb21wbGV0ZSAoMCBjYWNoZWQsIDI4MjkgcGFy
c2VkKS4gNDgxMQ0KPiB0YXJnZXRzLCAxODg1IHNraXBwZWQsIDAgbWFza2VkLCAwIGVycm9ycy4N
Cj4gTk9URTogUmVzb2x2aW5nIGFueSBtaXNzaW5nIHRhc2sgcXVldWUgZGVwZW5kZW5jaWVzDQo+
IEVSUk9SOiBOb3RoaW5nIFBST1ZJREVTICdxdWlsdC1uYXRpdmUnDQo+IHF1aWx0LW5hdGl2ZSB3
YXMgc2tpcHBlZDogaW5jb21wYXRpYmxlIHdpdGggbWFjaGluZSBiZWFnbGVib25lLXlvY3RvDQo+
IChub3QgaW4gQ09NUEFUSUJMRV9NQUNISU5FKQ0KDQpUaGUga2VybmVsIHByb2JsZW1zIGFyZSBu
b3QgdGhlIHNvdXJjZSBvZiB5b3VyIHByb2JsZW06IHRoaXMgaXMuDQoNCkZvciBzb21lIHJlYXNv
biB5b3XigJl2ZSBtYW5hZ2VkIHRvIGJyZWFrIHRoZSBuYXRpdmUvdGFyZ2V0IHNlcGFyYXRpb246
IGEgbmF0aXZlIHJlY2lwZSBzaG91bGRu4oCZdCBjYXJlIGFib3V0IHRoZSB0YXJnZXQgbWFjaGlu
ZS4NCg0KR2xhbmNpbmcgYXQgdGhlIGxheWVyIHRoZXJl4oCZcyBxdWl0ZSBhIGxvdCBvZiBjcnVm
dCBmcm9tIG9sZGVyIHJlbGVhc2VzIHN0aWxsLCBzbyBJIHN1c3BlY3QgeW914oCZdmUgYSBiaXQg
b2YgY29uZnVzaW9uIGluIHRoZXJlIHNvbWV3aGVyZS4NCg0KRldJVywgbWV0YS10aSBoYXMgYSBi
ZWFnbGVib25lIEJTUCB0aGF0IGlzIHN1cHBvcnRlZCBieSBUSSwgYW5kIGxpbnV4LXlvY3RvIGlz
IHByZXR0eSBtdWNoIG1haW5saW5lLCBhbmQgaWYgeW91IHdhbnQgX2V4YWN0bHlfIG1haW5saW5l
IHRoZW4geW91IGNhbiBqdXN0IFNSQ1JFViBpdCB0byB0aGUgcmlnaHQgYnJhbmNoOiB0aGUgbGlu
dXgteW9jdG8gZ2l0IHRyZWUgY29udGFpbnMgdGhlIG1haW5saW5lIHRhZ3MgdG9vLg0KDQpSb3Nz

