Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37087C54E65
	for <webhook@archiver.kernel.org>; Thu, 22 May 2025 14:16:30 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.57])
 by mx.groups.io with SMTP id smtpd.web10.24837.1747923381168734173
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 May 2025 07:16:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=NsMLWPBz;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=NsMLWPBz;
 spf=pass (domain: arm.com, ip: 40.107.105.57, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=bXrXQxCPysYlC9/UYo4VyUKEsaY1V0I7K41E5f7w5gQWg6P424M2KOJPZjTjNleqxZnFA6wsz0drGXuKUCUMtIai+GRsu0MlzyxFq/T+DrUsV0PiCB1ow+yrX1uBNa4hvkqLCrKxHYHWjeP1TFEpePkp4Vj4+KuakFZUffjLS9Q6Srsvf+NA+TNp+iKh6Ox/E1vTKAfm/mLstlNGTF1423sgDIB2/uWNAUYBksRlERsWEZS8ZCvlsAlTwzWPbSdjQd/gAFcgru3UF4uM2Jbwc8Z8cgcnKpYSVgABDq6jyj4G9Fu+RpduqCtntdvzAblSYY3wWT0bXnS0aMksNEX0Pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z5jB3CkJ4GC/h+IjMra3wH3oQ0mq6yAemEvorhTJCQY=;
 b=EoBS2mpQzicvvSINgFuymGCjYDbRCMcJPVZa7gi1unJ7BTKCWPt9012EOIIEGjOxKsjwzzR3WyXwLii89guD9djH6yySgmUtzsyzTry5uaxWnXAY72U9aUah/9eH587+k/pQteUygi0pmqX9am4c3FbcPpeXEYMYEyThIPCblvfGlEFYE6gEhyTpmwKb68R4IaEp6B72Nz2Vb9sA8ASCQYBVblVcg4E3bkoyBWNHo0i9eSGMoKMlwwuI/wB4hAw7eCwgTM+YFpwUZxZSRaySUC/jpL8rTptucN/T4Ydkp/CZ889Pz3HB0Dh0ZGiWANKaTIKjF6+QqjspiOTvIGwoJg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z5jB3CkJ4GC/h+IjMra3wH3oQ0mq6yAemEvorhTJCQY=;
 b=NsMLWPBz3hQkvZ2QcH/OKQZ3McL7403c0cfzDVzyuxwG9qeN6oHieUxmDp9eqRU7nlah6vaAyiseFKuhZxc5a1+svF6ogP89FgF6Lx3dVOcllNkCp8DGBYG1060NIze/YW1i3cmouO6fI3eEaOLD0hDbTsqzjnviTPcdiEccHus=
Received: from DU7PR01CA0002.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50f::24) by PAVPR08MB9402.eurprd08.prod.outlook.com
 (2603:10a6:102:301::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.31; Thu, 22 May
 2025 14:16:13 +0000
Received: from DB1PEPF00039231.eurprd03.prod.outlook.com
 (2603:10a6:10:50f:cafe::13) by DU7PR01CA0002.outlook.office365.com
 (2603:10a6:10:50f::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8769.21 via Frontend Transport; Thu,
 22 May 2025 14:16:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 DB1PEPF00039231.mail.protection.outlook.com (10.167.8.104) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8769.18
 via Frontend Transport; Thu, 22 May 2025 14:16:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yChP0lveSZhlAGm/NJZewwYdkE2BIu2dGaqSigIJwIROPKP4ikNxCdNwZ0UAUJ+lylMME07IUNwOL+JTU5eQxhHAWgmRxZQUpitoHzG7mRqpjmE3MSo7Qb5kxjl5aBDAycfoJX9uLgKCSEjb4cXAFQI/2z7AOg5ASB7xRLQhU07oBBHWzZFkZwyAPuIh16rSm27LXfcLv+u0naUwew+nACd2WyCPTcUjQy6fp/D8W5kp8oldtMP03wn+/4gcE1OgIuNrHxzbmnN58Z93pZS5qB/gxNBEfWXjNnGS1LmyCOPMqRi/w3qQaNvDBm99ZV85srcLZsdFn2JxNKxenLfDYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z5jB3CkJ4GC/h+IjMra3wH3oQ0mq6yAemEvorhTJCQY=;
 b=BhRE4X9NH/it8jNVOnFdGL/2QHmFD9XKTBbL2rqFgfTAKNs63xHUZ13UzZ2JCfR/L2f9SEUCGR+QxBN0hg1XrJDZxVYzlfIiFX3931JWm2Dx1h/hPfy7oeQGTUk+F4hjVvvODWmuNsM/kk0Qi/3+KQ+wCGqXFM/TdbUKCjkqcN9i4aIPKTH7chSf+S6XIGaFPvYw6qoBl4zO7+F3x5VqGJpxtyQpgfAz8fI1I8x4SnqzOgVAZkKnE3tEGFtA5jPGnKrjqZNxPPV2C5/uVwM8iNWTZty7BH4TF5wBzMwhkLW1+EUlvG5Lamz6Y12CyQaf/TvWHmm47tzwc1eN3ZcWSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z5jB3CkJ4GC/h+IjMra3wH3oQ0mq6yAemEvorhTJCQY=;
 b=NsMLWPBz3hQkvZ2QcH/OKQZ3McL7403c0cfzDVzyuxwG9qeN6oHieUxmDp9eqRU7nlah6vaAyiseFKuhZxc5a1+svF6ogP89FgF6Lx3dVOcllNkCp8DGBYG1060NIze/YW1i3cmouO6fI3eEaOLD0hDbTsqzjnviTPcdiEccHus=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAVPR08MB9235.eurprd08.prod.outlook.com (2603:10a6:102:308::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.31; Thu, 22 May
 2025 14:15:35 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8769.019; Thu, 22 May 2025
 14:15:35 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"Joshua.Schueler@tesat.de" <Joshua.Schueler@tesat.de>
Subject: Re: [yocto] sstate-cache: Ignore ERROR_QA entry for local build
Thread-Topic: [yocto] sstate-cache: Ignore ERROR_QA entry for local build
Thread-Index: AQHbyu78mr0k/vN1QkaDrw71SpDI2LPecisAgAAJCoCAAAH7AIAAA8uAgAAxE4A=
Date: Thu, 22 May 2025 14:15:35 +0000
Message-ID: <24A3CFB9-A968-41B1-8AB4-AF7F2E42CA8C@arm.com>
References: 
 <CANNYZj8P8sP_CvqppUoU23XsepXRTWThoP-gAvz3K=Pza97eEQ@mail.gmail.com>
 <2503.1747912787150505167@lists.yoctoproject.org>
In-Reply-To: <2503.1747912787150505167@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.500.181.1.5)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAVPR08MB9235:EE_|DB1PEPF00039231:EE_|PAVPR08MB9402:EE_
X-MS-Office365-Filtering-Correlation-Id: 4560c929-8b9a-42de-04aa-08dd993b34de
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?Q1dwc2p4WHRJL3NTUVF1MTVrVmR5ZWtWS21VTUJCbGtUbENmWkVoK3gyKzdK?=
 =?utf-8?B?UkhCRTVYUHFPNi9lUVdvTUhzN2wycWRNZDFnUjNBMkpWS2U0N1ZmREpOMG1U?=
 =?utf-8?B?cHZRZnd5enFhQyttUWZrdy9UMFcvakx2MHhqNzUyTTc0NHMxSEd3S3dVOUQ5?=
 =?utf-8?B?TkFnZkJZUU9ETHdtRDBXU1lZM0cxV2syQnZia1RINEdoZzFXTDdKTi9qVUdq?=
 =?utf-8?B?cDFCbFBpUDA1Yjg2NDZhekRvTWZSL3Z1TUVmMlNvdE5MUkZmUWtXSnVVVG5B?=
 =?utf-8?B?bGRQRFpETVE3REU0STdmK3ZkcnpXZ0xRc1k2WmFERWJ6RzkyL3JrektkK2NI?=
 =?utf-8?B?N0RzS3cyNnU4dmlLamtKalQrTFU1MVRpUDh5TnlGb3ZDdis1d3gyM25nUTZ3?=
 =?utf-8?B?a0t4S2swaVRQWGRhbXhMY2c1QnpPQ0UxNEdmYXoyL1lqM215bWZuODNMTjB3?=
 =?utf-8?B?emdPWHM5RVlwRVhkQ01MZVFOcDlCWXpkRUhxMUNLWUdsM2JqNWlZdUVxRCtF?=
 =?utf-8?B?MzhCRytMdndPSzk2UUY4MEtydVpmOGQ0Q0pHS2c0MHIzUnF3bHcyQlI3aTNl?=
 =?utf-8?B?L3hkK1RYa1JiNWlnTjNHUkZyalZjTkhqNEFLWDVzR0JKQzV6dnZGdWlyT0lR?=
 =?utf-8?B?VThyYmlhVFJHcVlKbVRST3VVYkcxaE5PREkwdnM0SE9WcnZyWWxzL29RK205?=
 =?utf-8?B?MFRsNFFpcElDNU9URDh3T2lPOGZiQWpETFVOVEJvVkpwaTdNSXhLallnNTF4?=
 =?utf-8?B?WjJ3N29NQmJ2QzZNTTh5amZKMXIvVW4zUVhST3ZXNmhmeTJwU2diUzhnTlh5?=
 =?utf-8?B?K1dLTDFMRlp3eHg3Q1JxU2RHY3dNR1FZRUtJb0ZLeDVOOXpGMDF4NlNta2Vs?=
 =?utf-8?B?RlFtNkhLUC9WL3d4Ym9ncE5iR09aVFZHK1ZZRlhaWW5NTHBuaXhLVEZIYXps?=
 =?utf-8?B?cVFsWXpnVzlPaFJldEU5NFZ0K3lDakM3cnJyVmM5YnRNVmNleWZuZmsyNnY2?=
 =?utf-8?B?S1N0U2EyeThtNjB6SDZoNUJuL2FOemVLazRhQ1lVRmdRTkg1ZUFIV2NXOS91?=
 =?utf-8?B?NUpQVWprWmRGbklKYUdaM3ZyUXFZdXVzWlpGdm5waXF0bC95UXA0cmZFMnM3?=
 =?utf-8?B?WEV1ejVSUE15d2JsWG9rOGNyQWNTaitwbVFLdExnS0w1QmYxNFA4alAxZkdi?=
 =?utf-8?B?VXNrNzROUndRUnJ0RFd3eFhkZ1NmczE3ZTJmeU9tY0gybHFSdmRvOUdiem44?=
 =?utf-8?B?dXhqTVdoNzlLOVpGS1ZneVlROUs1UFE5TTN3Y1dNRC9KdFpZQmQ3U2tPajJj?=
 =?utf-8?B?SG01ZmpIVnNJVGVmWmhBeDd6WDBvTWdEMDNqaE9ZTzNPNVRFemU0ZVo2ZUpX?=
 =?utf-8?B?Q0pmeDk0cXFKMFRUMkJWZ1BXTlNhTWpMOHpMQkJ4bm5ucHcvU3QrMktHeXl3?=
 =?utf-8?B?S2pRU1ZqcEU2Zk1ZVElDNTViSEZvYmpDaU9rb29qeUt2UGpJNkM5d1VjYXZm?=
 =?utf-8?B?RERENzJna0dvTitqQ0hCTDdoa0ZCaU9jamROb0VnWFhKMjZ0SmgreWpkanhN?=
 =?utf-8?B?dHhwSUpGNFUwdjdJZWx1QkMvbHl3NFBOZTZheld2d3hyekE2SC8xN3RVdW9n?=
 =?utf-8?B?d0N0dS85Y0JuVTJ6TlFuRndXNTAzR29pdnh4eCtxK1FZczlMRDdwWkpqUy90?=
 =?utf-8?B?TTNtWHVkbkp0MWt4V2h5UEZvV2xHdjRJUko1Y1VHeXJ3ZnpuakhxTzI1WGJi?=
 =?utf-8?B?S2JpMlBaWkRRRmJiaW1ld0JUWEQxVHdzdXFaUk9OT0hZcmsrZVdpUkJaTFF3?=
 =?utf-8?B?ckJValFIMWhDcmY5aXEyekxMbjM0NkRZNkthUW9ETzd3Z3JpdEZBQnRxYUxa?=
 =?utf-8?B?c3lqZGtqeWM4MGdoTHZaMmQzbTIrdFZTUmhOVnI0R0M0Y0NnWVJ5Z3dIcUZU?=
 =?utf-8?B?ZksrZHFvTVNVU2U2K1BOK1MxSnZJUmRpVEpnOVlxeERucFZBT1B0a1dMazJX?=
 =?utf-8?B?SnV2eUpSU2xnPT0=?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <8EE59416CB557042B3A1432ADA555323@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB9235
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF00039231.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	f2ce1ad5-435f-4d08-1a36-08dd993b1eef
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|35042699022|1800799024|36860700013|82310400026|14060799003|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eDhqU2g3NlRyc0tubFZvNkVUWkNlSWUyR1RGUDdsejFPVnZUUHMwMk5xdTF2?=
 =?utf-8?B?UVBHRXl5bkpMV3RyZkhtVlNJTTVXemlRdU82bDV5MHU2TkxtbmZOMFZYZ0JB?=
 =?utf-8?B?czdvMjVOckF3NDBWWXpOTkZPWjZ3d2pJMnlTcjNSOUE1MTlBN0JrZXZldDkw?=
 =?utf-8?B?ZFBVc2Q5WW9uS2llRHJRK1hMU21xaWk1dThaRjNvVHFraWM1N1ZHZjRseTB5?=
 =?utf-8?B?MHo4NFVHeXhDb1ExS0xjVWM3Zklsei9wdnRhdCtKc2pLc0QrSGQ1YkkvWng0?=
 =?utf-8?B?ck14bGE5UkI4Z1UzVlBROEtic0U3VFpObVM5Rk1EM1hUcnZuVVZDU1phUHdJ?=
 =?utf-8?B?ZCs5MzdLN1JzZ242eCttV21xN3BlVFRNTjNpcDJKNVpXM2gxR3ZlTGtkZHhU?=
 =?utf-8?B?TEQ4Ym9FUHlFa2tTZjRDaDdnZmh2NythUDFVRzR4WCtjVkNxaDZIN3IvcnNU?=
 =?utf-8?B?WlJpZFlKYzhYOFRtTzFGdStmVzlLTUlpaS9rL0RjbnFLZlYzUk9WcHNRSXpX?=
 =?utf-8?B?Yy80UkZrVWduMnIxaWJiazJzMUQrRmR6REx4b1FRL0ZwSEYveXNvY0t1anZX?=
 =?utf-8?B?dmU4d3hvYW1ZU0QvMFBDWWl5NklVRktNN3AzbUxnbEVKL2I1bmk2c08ya2hD?=
 =?utf-8?B?Q0RHVWJmbDJydjlrYm1RMGhsbTBadUgrNkZmbU9qbEtsbFE0RHF6M1hVMTdw?=
 =?utf-8?B?MUVtZnc0Q1ZGa2g1UmgwSlFiRE1mL3laUmYvZjlBR1JwbXgxVWRpN3NVeHgr?=
 =?utf-8?B?bGxxMmkwaldpWVc2OTBJWlZiR2xBcmRLWFNaM2dKbSt0cUpHWU9uc0tqRVhM?=
 =?utf-8?B?bGowVFFmeDdSTFhXK3VxaDVIRmY1SVdlTVJ1ZkRpVlJpWk5qcC8ycGZOTk9V?=
 =?utf-8?B?ajBGZ29GK3hZdXlsZDV4YzNaV2NtREp0clY3SmJmeklxK0JBMkdLSTlLSFdQ?=
 =?utf-8?B?dTJmVXEwMkhHTUVPbStYQVFZdW1pZENsU2lrYjd5b1pKVEUzSzhrVFZlb00w?=
 =?utf-8?B?OTRiUWNJcklWV2tvYk9SakFDNHl0M0lNWEdRaUlJaGFCNTVBVnJXR1N0ajF0?=
 =?utf-8?B?UzRHRDRpNHdicE9jS3Y1V2JqeXU0bWdUMDB5SjErOFpRL0kzTzMwWmhVQkJu?=
 =?utf-8?B?THY3R053UnVONkY2V0d5a1IrZW4rWU41R3BWb1MzTGJzOGNsNWQvclZLSUx2?=
 =?utf-8?B?ME9IUTE2NEQzZHdZU2toTXloRG5mUFBmZnJCRnJuemRpVWcrMmR0Y3hUN0I2?=
 =?utf-8?B?VmFPdWxxUnk1aVZrT1A1Ymt2aUV6N3kvS2lMM0J6UE13b3NUS1JERVNEWWRs?=
 =?utf-8?B?eFhRUGtmZmNROFRYL2xhamlXUE44Q3R5S042RzhlN0pyMHhFWkk5YmZnRGJu?=
 =?utf-8?B?TG5Jak0rVk9WNWJaNmttb2RjeFArSGZVQlB1TDBVR0VsTGhZL3o5aUduMlRm?=
 =?utf-8?B?YVJGVHJNTjJ3MW01RmdlemEvZU5PcHNjZDhMME5sRUkwVjdGRHZuYjQvc1Nt?=
 =?utf-8?B?NzVkT3VVaUFmVU1BYjVtK2NJR0tUY0l1Rkh2ZnVFMy9JbFdGUGZRVTVOWnd4?=
 =?utf-8?B?WE1RNUVUOXg1OVROZXJmdk1MTC9LQTErL2NBd3Q3RmpyVkt3eHFWQzlrQ3FE?=
 =?utf-8?B?RkJKeFc5QTUxNlFKS2lSTHFSOTgwL1A3Ujl4dEJpK1pYYWRjelRONzZLQUNp?=
 =?utf-8?B?QmhNOUxVT0RweG5vSnZpcDNMVG9kRDRsYW4vcVRQbjNIdVBJMjRmRWFHV0du?=
 =?utf-8?B?dWdmTEQ0R0UybEZiN2ovWURTRGV0Kzhvc3lxY29wOVJFOGxCKytpTVFBRmd2?=
 =?utf-8?B?bnpVcnRFRDBKZ2l2cEpIL2JnbzVnWGtOYkJSVFkyZm1NSGVsV2dvK1R4RFNq?=
 =?utf-8?B?ZGFSbnZhRlk3Y3hlUmZSd2lSZVhKQ3BSQktCYTdicjVER010TlJVU1lwa3RG?=
 =?utf-8?B?K3dkUDFNWjR5dElwTFpzdUpNWHRvU2pTelRCb2djNllXalBwcXBKMmx1WVB2?=
 =?utf-8?B?N0JldWdQb1U1Z25nN2VBMWRrUmtWek50SWswVndSZSttV1FRQnlZbWNLS1NG?=
 =?utf-8?Q?MeU5jN?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(35042699022)(1800799024)(36860700013)(82310400026)(14060799003)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2025 14:16:12.5105
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4560c929-8b9a-42de-04aa-08dd993b34de
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF00039231.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB9402
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 14:16:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65403

DQoNCj4gT24gMjIgTWF5IDIwMjUsIGF0IDEyOjE5LCBKb3NodWEgU2Now7xsZXIgdmlhIGxpc3Rz
LnlvY3RvcHJvamVjdC5vcmcgPEpvc2h1YS5TY2h1ZWxlcj10ZXNhdC5kZUBsaXN0cy55b2N0b3By
b2plY3Qub3JnPiB3cm90ZToNCj4gDQo+IEhpIEFsZXgsDQo+IFNvcnJ5LCBmb3Jnb3QgdG8gbWVu
dGlvbiB0aGUgdmVyc2lvbi4gV2UgYXJlIG9uIHNjYXJ0Z2FwLCB3aGljaCBkb2VzIG5vdCBzZWVt
IGhhdmUgdGhpcyBjb21taXQgeWV0LiBUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB0aGUgcG9pbnRl
ciB0aG91Z2guDQo+IEkgYXNzdW1lIHRoZXJlIGlzIG5vIGVhc3kgd29ya2Fyb3VuZCBmb3Igc2Nh
cnRoZ2FwLg0KDQpCYWNrcG9ydGluZyB0aGF0IGNvbW1pdCBtaWdodCBiZSB0cml2aWFsLCBnaXZl
IGl0IGEgdHJ5Pw0KDQpSb3NzDQoNCg==

