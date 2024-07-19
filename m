Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CCF7C3DA5D
	for <webhook@archiver.kernel.org>; Fri, 19 Jul 2024 09:19:44 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.44])
 by mx.groups.io with SMTP id smtpd.web11.15064.1721380778525757469
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jul 2024 02:19:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=l2m7blV1;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=l2m7blV1;
 spf=pass (domain: arm.com, ip: 40.107.21.44, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=Xj4WtD+7iEjIiTK/tpOc5aMbimiQ3Gg1Xum7douBkfCT9DzyJ4Ly9/P2LsnqhdvcgGyUGzD67aPTIfG9qqx0TcRtz1FXzWDxRfjqXjUYpKxF8TFYH6FWtPoQ5w3M12oRlahqUvaHpH6HPKsq7hKPIiGZWWfq9GrfRgDbGm9I32S4yaxb5i4nfi5pBt4/SJY7eucF24+pfrFBANOleP6rx89jil4KlYRvf5NXXs4JCESIM8xouSGcwcURhpnhFUnd5jvWmP7LNmCaLxuyNB5c/XAlpOTcMSRosWusa2TCcXIQ5AOY5IGJeB8Q0uULVMLcl7g1QnCaAZb2dVLsaAxlTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xibr3j+cl2oDydA3NkmZ++oOZKLfuHOypC9pL97/8GI=;
 b=Te0reytIyVYZKio33R5X38z9e934yqP6X6SqN+8Yml9tBazStACiefG4vWMgReSFx4732dnPSDIXDGudn8uh6qd9/iBEyq+3EwHv8CU/ZuQxlCC3mYgZWOlYuLgr63aaxNq2eCJIK7Eo4PO4WKvBEmgPXFG/PrbYfQuwCb+0vAo9kOn/oucQJCNiUCqQbGeMixAqHCY1Cw2WgODOZ8c7vrnkWspghF9wrWIlWCv6mb5W+f5Huk73J0Y2P1MF4/mjmPz+IvpY+UFZouuFxgGdKr/xL+7FABx5xQMEX8ckaeBeTLFdSZizbBajVIlzV7dDi4CIClT4OQ2MN8IDAEaWwA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xibr3j+cl2oDydA3NkmZ++oOZKLfuHOypC9pL97/8GI=;
 b=l2m7blV1wTcomdcDrY13fbvzfAbJfeLRJvaNZvN3+ogRh2T6R2e1y9mJPf6U+OGpBiCvCapD0mmNsbq4i4Yf74il8E+ezf2AQWazNFKmbpVn7QtxCbaiiu7xWhnR1wVLubgvdsG5R7gpRICoQEJIgnMlr5aZ1UZkDksgvdjjvB8=
Received: from AM6P195CA0027.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:81::40)
 by AS8PR08MB6151.eurprd08.prod.outlook.com (2603:10a6:20b:290::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Fri, 19 Jul
 2024 09:19:33 +0000
Received: from AMS0EPF000001A0.eurprd05.prod.outlook.com
 (2603:10a6:209:81:cafe::47) by AM6P195CA0027.outlook.office365.com
 (2603:10a6:209:81::40) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.19 via Frontend
 Transport; Fri, 19 Jul 2024 09:19:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF000001A0.mail.protection.outlook.com (10.167.16.230) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7784.11
 via Frontend Transport; Fri, 19 Jul 2024 09:19:33 +0000
Received: ("Tessian outbound ca5638866b89:v365"); Fri, 19 Jul 2024 09:19:32 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 8f62830cda779f2f
X-CR-MTA-TID: 64aa7808
Received: from Lbe2b8f501a02.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 301BBD65-0AE5-4AE8-A5C6-A7B2D3A641C6.1;
	Fri, 19 Jul 2024 09:19:26 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id Lbe2b8f501a02.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 19 Jul 2024 09:19:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Un+T8oJknIBOEo+mPm7b0y1q7nn6YAO+apKSMGwb3aBGTE36zGUnTzmcIQuI3kUy57SZSPo8/j6hfRccUem0kjdo4ptM/rafId1aUeTNz7zIpQ9PzVf8NPOU0db3IL9a4KxiGLkPuLoN81nybiXTxXHqDvt5XouTN6/JLq/OY9KxYHEo8uSj/adj/ASt/jMt7zaNFICXuxdNfPC863u4NGVN9lLCRKRAhuEGzf8LglZUVv6jeKhdiTgqxVHb0C/WW0bL3GzE0V86jzqUCtgQMltheo02XzDDZKRtD3lyK3OtA+HOAZlwgIYKWx01ebIOhyLKmZY521V9jws8doXuUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xibr3j+cl2oDydA3NkmZ++oOZKLfuHOypC9pL97/8GI=;
 b=XUo7N304ViJm6Vv+tPpvWLlHN3B+rOfXlGk1E8RfefEM4Kl9IJNpe+lM2cwSIq3l8qZ+Nwcf30ECtI/RTaCAgpwCF/hyVjSB1fGfQwfTKLrUPJKqzOIEIxwLc/5vZYxuN37rTY4BgRIupQbPykAwrrUurruPI88gpwlgcmkRRZMdFeKa110TX89OTRg776Z4Hr06b9XtNG+8WpJcPtwwvVaoJw/A6lQ7JAfaQDRIS8gkQV+30riUgKLaoeZBG3NFDbP86RvkDZM8BVPaNrtZwfWKNRryCRjZUETSZX/uo0lkz53qN5MeqjjRmZDP/7D2tnUsYdZrk143XEYTFJfriQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xibr3j+cl2oDydA3NkmZ++oOZKLfuHOypC9pL97/8GI=;
 b=l2m7blV1wTcomdcDrY13fbvzfAbJfeLRJvaNZvN3+ogRh2T6R2e1y9mJPf6U+OGpBiCvCapD0mmNsbq4i4Yf74il8E+ezf2AQWazNFKmbpVn7QtxCbaiiu7xWhnR1wVLubgvdsG5R7gpRICoQEJIgnMlr5aZ1UZkDksgvdjjvB8=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB8224.eurprd08.prod.outlook.com (2603:10a6:20b:52b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.14; Fri, 19 Jul
 2024 09:19:23 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7762.027; Fri, 19 Jul 2024
 09:19:23 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, "bartiszosti@gmail.com"
	<bartiszosti@gmail.com>
Subject: Re: [yocto] file in wrong format #bitbake #cmake #gcc #qt
 #raspberrypi #scarthgap #sdk #yocto
Thread-Topic: [yocto] file in wrong format #bitbake #cmake #gcc #qt
 #raspberrypi #scarthgap #sdk #yocto
Thread-Index: AQHa2a/EnD5CUqk5fEySigaUbBadwLH9xhGA
Date: Fri, 19 Jul 2024 09:19:23 +0000
Message-ID: <5C256CEE-2139-40B0-80E9-EDB821302275@arm.com>
References: <sAnC.1721375168210154927.Hbi6@lists.yoctoproject.org>
In-Reply-To: <sAnC.1721375168210154927.Hbi6@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.600.62)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB8224:EE_|AMS0EPF000001A0:EE_|AS8PR08MB6151:EE_
X-MS-Office365-Filtering-Correlation-Id: 41b69619-4a25-4a34-f1dd-08dca7d3e6e3
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?NU05ZzZtR0FEWjBsUGFhejNYSEI0ZzNEYUkvbERLRVJwVUtPUWdBM0hnRXRz?=
 =?utf-8?B?MVo1YytEaU1iRUNGZWxMOC83TlpEMktCdFpFLzNGMW4zZHdtTUNscmRPTU54?=
 =?utf-8?B?OWI1aDFsMXFsWnNyZGlkMHRtSjBMZ1ZVMGFmQzZzVFNaWUROZSsvMGZLcVcz?=
 =?utf-8?B?VnJhT0RjUDBsdnhydXV6SXJyS2RLVkt2R2MvdXBCcU53aHRMcTE2MExTeG5Q?=
 =?utf-8?B?WlAvaHNZdGpjeDVHdnFaQVl6UUtwenFDaGxjbkRYaFNTWGQxN2tiTk52NVRU?=
 =?utf-8?B?V2pmQ1VianFwTnJkbGZxYmtiNXBHQTVoQjdwWUg2Z0ppVW5qRVpwL0FYMWVM?=
 =?utf-8?B?dmNRTXlrYmRha2duczZnM3RUelZaY0t4QXQ1NXQwNXdyOFRaaXgwemxiZzJK?=
 =?utf-8?B?Ly9rZjl5aWFENVMza0tjZ3Z2UTdzNTNoSUMrZ0FjSjEzSFNFNnRRUzljeCtU?=
 =?utf-8?B?OGlFZXJCUzM5YTJwdUtJdTNqYThzQmxmaExmRmNtWkVFMTJuSnBXNC94TmVp?=
 =?utf-8?B?MjdRdEJCQkdQRDkxbFR5dU1JNVN6ZzRSSmtURXc3cm0wMFN2OUErZTRKWFU2?=
 =?utf-8?B?NjhMTWQwQnFnZnBMWE5SOUF4TVZoRUZyNW5qcU1LWWtVZWJib09uS2dRdjNL?=
 =?utf-8?B?bkV2S2pTQ1dMVmpUWTN2S3VVUURrME84RmE1UXp0c25kMG44S0IwalErVlAw?=
 =?utf-8?B?WUw3RjZhWS9YdXFSc28wTGlaMGhyRktrZE0zcVd4LzdzcWNheUM2bFdqMTA4?=
 =?utf-8?B?eTgyYTQ0cEMySUF5TW92dHpLSWtFU1Z0eG5qOWFhYktUQjFhaEpEcEJ0dGlY?=
 =?utf-8?B?ait1T21zbTdzTXU1WmtKOEdZR0FCWjJIN29uVVFYdFB4eGVVYnFOajZqSVRK?=
 =?utf-8?B?UHBzYVRwV2FTM2ZSaSs5MnBSamptUDR6UHFWbHVGSHN0WDljbFhTMEM3T2RP?=
 =?utf-8?B?UzI2MGlkUW54dnA0dGRpM0hlaUtzN1Bwd2VVTWNPMzVYckhvUVRyTmVYcGJZ?=
 =?utf-8?B?RHVXUnl6SFVad3NSRGNNU0JXNzZwaWNDUGNvSnJSU2N0TERuZHUxNm5iYTVs?=
 =?utf-8?B?Q0hTU2JvTzNoSmw4QmJSTDg2UXl5REt6S2I0aGwvNUwyNEw2SXUvT00vbk5G?=
 =?utf-8?B?RGxzbjBYWGJXOEhvTVc1RTd2MWpVSTBOc0FkOVkxT0NibmxSMWNvc3lKSjVr?=
 =?utf-8?B?dHZFWTdZNlhoc3NJdGVqWW40dElTZEZ0RDBPNmxZRE90YUdteVVVendvRjg1?=
 =?utf-8?B?Q2plOElYeWtLT1QrYW9jcWEvbXRTaUxKNTEwYytTdG9Kd0lxRWFDTlhFMkJt?=
 =?utf-8?B?VGoxNTN4b0E5V1RiWloxNmFQdWF6enB1SGMyQnIrNnNLdVg1bzJJNmxyUXh6?=
 =?utf-8?B?TnYwczlRZFd5RURpWUNwSFAyWmVjVXRwNFJKQXlOZEl6S1ZoOHlLSGtlOUMx?=
 =?utf-8?B?REZrUjljS3ZSSFUxMnNHWnBiWHZPa3M1U3dEZ0wwOXlhalFHVHNUb3d4dzcr?=
 =?utf-8?B?MUg3WWlvTG5lS2ZaelBkdzhhVkdkSDFDTitYQytUb1pzVm41Y3B1cGU4M1g4?=
 =?utf-8?B?Z2lYd29kKzFERGZyR0Q3cElRdlpLeStCeTRyK1V6VDBJc3IxN0lXa3BTM1NS?=
 =?utf-8?B?ODJWN1dTWVdZU3dPaVRVczhiNzk3T2VxZDZZeTdSc3hqenNWN21vUFRBWHdp?=
 =?utf-8?B?N3hOb09ULzArWi9rNmFGOHNkbSsrWWRKNFRsdnBXaVh2ZGR4L0Z4Szd4WWFM?=
 =?utf-8?B?Y01GNkVOb2h2TGI3RXZDUkF2bWxCWlJ4Ny9LQTdFQTFFTFBpYnNVUGhzMFR1?=
 =?utf-8?B?dGl2b1h5OFFXZ1JqdUloYWNTTDFzUDVBL0tVRXJ0QjdZdGhWZ0hNbjY5RzNT?=
 =?utf-8?B?SkgvNE9nd3NrTkF5LzZkS3BtdVNoUGVxcG8zanlNc1h5VlE9PQ==?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <7B5C25DA3F7EC14F93DA34EDB982A4CF@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8224
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001A0.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	7ed6d975-4505-4401-8bde-08dca7d3e0f2
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|35042699022|376014|36860700013|34020700016|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Nlp1K0loY3VlejJhSEZpUjBmMFBRYXJVbEpXdzRaZ29QSkNXUUxuZlFTZWdO?=
 =?utf-8?B?dndrOTBtN0tES0dpaUF4TUFEbWRhWWxlTDdwVlpHNE5Gano0S01NZ21ITTBD?=
 =?utf-8?B?L0F5RW1FMWpCZzlValNxWE1xeDRuQ1FocnZnd0dCVE0zLzR3dnNUL0Yxd25i?=
 =?utf-8?B?V2gzc1FYcTY2Q1FBb2xVMXk0dHVZUHk3QU9oSFZPVW14TmxGK29McHBDbkxF?=
 =?utf-8?B?Qno2UnhhQkRNRktQdk5CaTM5a01WQTJjMk5nUUdsRFRIWGplTFlFZGRxMTNN?=
 =?utf-8?B?QklTSE9kMmt0dnhtTG9BYldkK1l2dHNMa3hEUGNuanZwVUR6aXpJNFQ5RFhi?=
 =?utf-8?B?VkYvSklMQ1lqcUEySklhcEdtZDRjNy9HMnRob3NCOEhYQzhwS2lkQTBQbncy?=
 =?utf-8?B?OTFsejBNKzhTNGx1MXVYN2RtYXkxL09MQ3dSS2EyVXljczFodWdzaEtLS1Zq?=
 =?utf-8?B?ci90OVpURmRjaVo2UDluUVhQeGlPTzJFNklpSERtRjhXR3lvNlkzWlBSSWRJ?=
 =?utf-8?B?VlRHcWwwbk5IOGhRVkIvdjVyZlQ0OHgveXhLTWt5WGQwK2hEOWpaenZ3RE5v?=
 =?utf-8?B?VVdWbG5STTdSQTNIT3JHOEFkUmtQaGp2U1NrbHVmS0J2M3c0TjBGcTVNZlFS?=
 =?utf-8?B?czhEZjNQb0VJcVRydzZDYW5JaTVzTHQ5eVpybEhZcmRRb3Y5bFlZNDBZcEhZ?=
 =?utf-8?B?VlVCb1VSUVBaeGtmdUh4M1pwYTBOdXdVV1lweGVmOGc3dER2YkNwczUvK1Fi?=
 =?utf-8?B?SlZaYWt0dU5rRGhkckR5UStZbmpVSUR5K0JQNXEzQ3hmUVphaThRc3pjdDFt?=
 =?utf-8?B?Z25HT0F5MmxvOU9waVp4Q1ZKNHl6SVMwNWJ5SWVxQmtuaVZOTFlBOGl3d0ZN?=
 =?utf-8?B?NThxMURlQVZ4d1lyTno3L3d2UUFlWnBvMVRwWnJCT1JaRDFScy9HSW94ZFY0?=
 =?utf-8?B?NHI0N0V3MTE4eU5PMEVSRDIxUU14THQyb2k5dDZNbThjVlNDeWN6S3VPM1hM?=
 =?utf-8?B?YTQyVUhOOW02TTVoY3Q3VjF2aEJkRUhvNnNtd0lDTW45MzRmMEgxRFVhSTBv?=
 =?utf-8?B?am5zd3NwWm1lY0NaQ3NwZmhMSGVkSFZFV2hGcXdmaWwwU1V1b0JQcUhiMURY?=
 =?utf-8?B?MGNESWt6aWI1WnBWZVllaDdldmdXNzNNOGJ6d2kwYXU5bG54VyttOHpsRlVJ?=
 =?utf-8?B?NjNuamtKL2t3OTJ3cTdiRWd6alhtTTVEOGt5c1A0UmxLckhlZTBDSWZvM3py?=
 =?utf-8?B?akpWVHdCcUdBTFFsYUdaVVVIWWVLQlNVaS9USXZMa2Jic1ZycG1ua2YzVFcr?=
 =?utf-8?B?UlNUakZ0bUxvbUcreVNQVmd0dmwxdEFPb1E0R3RqbUVLVmRGQk5FeXd3UXQr?=
 =?utf-8?B?YTNIbDhRVUtIYUI1M0NGM2E5byswbWpOeVJ5QlR5SXZVeFJVdXNabllmck93?=
 =?utf-8?B?L1FDc3habXZNLzBRVXBDdWUvWTRJK0lwTnErU3B6Nko0cE4xekN0UktvRDd2?=
 =?utf-8?B?eE8yNzlmYXBlZmtvRFZ1TGtyYk1jMFloS2ZQeVUzV3RKN0VGYlQ4MzU1aGFh?=
 =?utf-8?B?VExSTXRIcHpYYnF0ZjhDSUs1ekNKT1JteUJBNWM5cFBVL2xYY2Q3Snh0UFhz?=
 =?utf-8?B?dWZWemh1WmlZN2FvM3dKL2VKc1VTT09vODJpanV4bnBsYTlMQThPdFNqSnFX?=
 =?utf-8?B?TjlZTTByc3hNc2NPbHRvcEM1dFBrWTlRYUpOYmppUEluNXMzQVdHaWpMd2o0?=
 =?utf-8?B?L1pTMGY2RUNaWE5DaTBQcG81K1hhRzlFTGFoS3o4NSt4ck9wUXp3a3U4RFNW?=
 =?utf-8?B?bkl2WTFBVUp0WUdUa3pSckh0RFp3aFZDU3NybWgwL2x1SmkxOHFHYWcwZ3RS?=
 =?utf-8?B?bDVPZGg4ditrSEhHdG9ydStqa1JhWENJRWNQdk00ZTl6ZFdZTFBNdVdIN0V6?=
 =?utf-8?Q?NBm18Twh2LDxVugoxQzu5egyr1XNFhFR?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(35042699022)(376014)(36860700013)(34020700016)(82310400026)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2024 09:19:33.2935
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 41b69619-4a25-4a34-f1dd-08dca7d3e6e3
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001A0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6151
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Jul 2024 09:19:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63535

T24gMTkgSnVsIDIwMjQsIGF0IDA4OjQ2LCBiYXJ0aXN6b3N0aSB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8YmFydGlzem9zdGk9Z21haWwuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdy
b3RlOg0KPiB8IC9tbnQveW9jdG9fZHJpdmUvcnBpL2J1aWxkL3RtcC93b3JrL2NvcnRleGE3Mi1w
b2t5LWxpbnV4L3F0Ni1leGFtcGxlL2dpdC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2Jpbi9h
YXJjaDY0LXBva3ktbGludXgvLi4vLi4vbGliZXhlYy9hYXJjaDY0LXBva3ktbGludXgvZ2NjL2Fh
cmNoNjQtcG9reS1saW51eC8xMy4zLjAvbGQ6IC9tbnQveW9jdG9fZHJpdmUvcnBpL2J1aWxkL3Rt
cC93b3JrL2NvcnRleGE3Mi1wb2t5LWxpbnV4L3F0Ni1leGFtcGxlL2dpdC9yZWNpcGUtc3lzcm9v
dC1uYXRpdmUvdXNyL2xpYi9saWJRdDZDb3JlLnNvLjYuOC4wOiBlcnJvciBhZGRpbmcgc3ltYm9s
czogZmlsZSBpbiB3cm9uZyBmb3JtYXQNCg0KSXTigJlzIGxpbmtpbmcgdG8gdGhlIHF0NiBpbiB0
aGUgX25hdGl2ZV8gc3lzcm9vdC4gIFRoZSBjbWFrZS9xbWFrZS93aGF0ZXZlciBmaWxlcyBpbiBx
dDYtZXhhbXBsZSBhcmUgYnJva2VuIGFuZCB3aWxsIG5lZWQgZml4aW5nLg0KDQpSb3NzDQoNCg==

