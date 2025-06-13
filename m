Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991A3C71135
	for <webhook@archiver.kernel.org>; Fri, 13 Jun 2025 09:31:09 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.54])
 by mx.groups.io with SMTP id smtpd.web10.6476.1749807066924411451
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Jun 2025 02:31:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=FICEXRIW;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=FICEXRIW;
 spf=pass (domain: arm.com, ip: 52.101.70.54, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=Ubg9MfLMcd5NkJwO3ZhIWuwxTBPg3wtA/YLkkTe/VrRvNR7w15DxRzTm60a13thuObenZbtoGxsYQHxY9kvKUnhPpgFf315Ue2ysinMEalGnsmajstkhE9ncVUHhEohqdLv/mL1mJLCVg3DIpjtdYMOERHyGxa2XtSsMAQ8X1TBeUvsPlZGGG38C3uQEKt3k1v+ZE++KmfyNuJfuSV0MdXzLVLMDoNm/rF4jTfWiWwsf18iqU3st6u0Y0Pg6YzALyzJ+/QK5/CG0VP+Tugxu9JE9Oalr24bcSj8KGPApuLPulOXua9BGUlQsibTgcVLWKG40VN1sWV75INE0WIzc+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sw3QfiCMRVFqqHwa3ruR/N+i7UjYkZA0ssdMw6c6npE=;
 b=g7Ex5gwFaZIIE+sq3tSR08npHYkipcYDzbE9BoODr4l/KhCHzXHgsLVeW0fNHcjj4EuJGrAlud4LGLrpNQSAjdrMh1tl/1uu35cMq0kfgUvjrY6neQwOwhSXrAY40AOq9HMPAvQWqqsrJdHhw0bje3NoRGraj9V8uO6s32QDnxrZmMt58MCv/E4BSfr2PeHX5LjajyoCjsrhLLg3tBRIc9X0RaSrmre7Olv2rqoq47rShFFc/Zs8wlayZhkjROzQdcjBXR/dt7s4XiwqInMYYI0inp8T+f7n/CBRNukMgtosMen8oZt3pajm4rbQzKJGmK1vmJ8KFsp7JPbpsgRgZQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sw3QfiCMRVFqqHwa3ruR/N+i7UjYkZA0ssdMw6c6npE=;
 b=FICEXRIWUtGTnceYnyWA4Oq4WTdHgQjQYzNdE8VIoLPnWA9z4+zqWh2veUzlnarXmRXv+MNCiEGIs95n3XZ6elkCtP05TwazTje87ArUKfoZOAug1Go3gmzQweFn4RrSs0P4nt1gdSOeIzBpu5xJQgemiQsd7XnGyV4hq5CXAuY=
Received: from DUZPR01CA0345.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b8::28) by GVXPR08MB10988.eurprd08.prod.outlook.com
 (2603:10a6:150:1fa::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.19; Fri, 13 Jun
 2025 09:31:03 +0000
Received: from DU2PEPF0001E9C4.eurprd03.prod.outlook.com
 (2603:10a6:10:4b8:cafe::c6) by DUZPR01CA0345.outlook.office365.com
 (2603:10a6:10:4b8::28) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8835.25 via Frontend Transport; Fri,
 13 Jun 2025 09:31:04 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 DU2PEPF0001E9C4.mail.protection.outlook.com (10.167.8.73) with Microsoft SMTP
 Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8835.15 via
 Frontend Transport; Fri, 13 Jun 2025 09:31:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=noiyon5qvGhtAr2R3PK5241jcA4oVniCG5JQ9QK+ub0Uv9L3YLkhDV0BVsAyL8q2A5eJE7II9BdnM6GCpPUefaVb2pxp5INKOVJH2WJU74Jb/vWyDWqfKXcKRID4gT+llWVE+LXNJVMNqFNcAFk3L+kO5wh3tAiIpSDi6V2ZgzR1YbFwCXepkrfu35VkXPxSmc7+IzqOeDu3iZvmD8ko13rOl+E1li1xkLRjbCGoAd+m4iShs9WXpYUdPyaz5dVaSfUFtZKnrUfKqaqlyafZYky6tGMP9vhfbKLF77ykOjHwGu1eK7wklLlR3x+0ocLlib8s6usVmxVv5aKBBGrmCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sw3QfiCMRVFqqHwa3ruR/N+i7UjYkZA0ssdMw6c6npE=;
 b=NCCLI0mxn83hbdwVrCuF2jh42HulDaVuhowdypiHyR4bRBpEoP4gNmf59O2W4s0zDsEH3VZmyzYIKtKfo/ZglxA925yB+mcWxJfgvP949aHXSn1UpB7S0VizbWBwguirrashM9cZmnvbLRwYr0OQytl40egudv9HO3RQZL4ovdQymBRpb9maf8alvlUqLk1E8EzDh1wCfFPT8G4TcLD63TdzDqYq34Vli27zThuH58qjO8J352Nm/uBkAF78qhmYvyx4fOwTfVIVIdl7FJ8oeV7NNSwtn8cpUdydQU9oCEHbPWXQTVNQXjdju2/2v8n+H/58otbAcDgKJL6LpxnfJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sw3QfiCMRVFqqHwa3ruR/N+i7UjYkZA0ssdMw6c6npE=;
 b=FICEXRIWUtGTnceYnyWA4Oq4WTdHgQjQYzNdE8VIoLPnWA9z4+zqWh2veUzlnarXmRXv+MNCiEGIs95n3XZ6elkCtP05TwazTje87ArUKfoZOAug1Go3gmzQweFn4RrSs0P4nt1gdSOeIzBpu5xJQgemiQsd7XnGyV4hq5CXAuY=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS2PR08MB10294.eurprd08.prod.outlook.com (2603:10a6:20b:643::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.22; Fri, 13 Jun
 2025 09:30:30 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8835.018; Fri, 13 Jun 2025
 09:30:30 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"mauro@faresoftware.it" <mauro@faresoftware.it>
CC: Marco Cavallini <koansoftware@gmail.com>
Subject: Re: [yocto] How to manage linux-firmware recipe
Thread-Topic: [yocto] How to manage linux-firmware recipe
Thread-Index: AQHb2wCYeRv6mWXQiEeaZcx/wB5kS7P/GuCAgACPiYCAASskgA==
Date: Fri, 13 Jun 2025 09:30:30 +0000
Message-ID: <78E62099-4770-4850-B9F2-2F1C19E4FB4D@arm.com>
References: <e8b3ebf1-1636-4edb-af41-421464ff71b2@faresoftware.it>
 <19279.1749711955494286548@lists.yoctoproject.org>
 <5f9b2079-b6a2-4f8c-aa26-1827ed4aa252@faresoftware.it>
In-Reply-To: <5f9b2079-b6a2-4f8c-aa26-1827ed4aa252@faresoftware.it>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.600.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS2PR08MB10294:EE_|DU2PEPF0001E9C4:EE_|GVXPR08MB10988:EE_
X-MS-Office365-Filtering-Correlation-Id: 0bcda017-736f-446d-236b-08ddaa5d0360
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?VU13dHpMc1Y5WXNQelVlOVE2ekkyblB5Nmhsb3lTMVNWN0k3TlNNOWNGWi9j?=
 =?utf-8?B?VFpVR1hiYVphMi9pd0VjTzllQ3VodVN3VmZPUXlIQ2VtMm80WkllbVlsL0Yr?=
 =?utf-8?B?WVNBZXJWTlBSVURZRWU0czVORjBKTjhDNW1ZanZiZTFwNDRqVlYvdVUraFd3?=
 =?utf-8?B?WDlOTUZ3QW5iN0RpYm5jMTJLSnlDU0s3aS9rZGw1eFlRUHRmQS9KMm1oT09K?=
 =?utf-8?B?b2lBWEQxZTNMWnJjb0pXbE5rRXpaUzNIbjI2YUJMNTVld3BvWWxKVGJhbzVD?=
 =?utf-8?B?SjdJRjVWR3FjZjBkZStGK2t6V0daVFRseHRNdUFZL3JNaTVZbnQ2ejNOWC9J?=
 =?utf-8?B?a1pFa0doRk5Cam9TcSs2NzVNZ1NCOEd4VWI5RDJDeFUzTzNGYXJxc2w3Zkwz?=
 =?utf-8?B?Y2JBazhVTDA1NUpkTjhwMHY4eW5BQlc2QThhZ25UVjdvUE52YThwcnAwVlF5?=
 =?utf-8?B?bjAydXpIaXBQSThLQkJCamZUbnhFMnREcXFNQmdWSVY3c1hnb0s4QWJoNGRJ?=
 =?utf-8?B?VVBaUkM0YnFnMlU1RkRsMzZ6VkxtSlYyS3FrTHFwRHAwM0pwTUFVV0ozcGZQ?=
 =?utf-8?B?Q1ZBNUJRcmp4RVNTNm1pTTVoSUMrL0VDOVVqN0dkZkNrUElxemdXRHpxbHgw?=
 =?utf-8?B?UkwySkJGNnN2UDcxN08vRURzaTBpS0VGM1JNOVpSNVJUY3NRSnFsU0NETjBV?=
 =?utf-8?B?OEQyY0VkNjJacHJQbzRwem1WS3lkSG1QSzZsMERjNDJmVytQS21CMWJGbStV?=
 =?utf-8?B?N3YrMDdGTE9uSGEydUdRZ0pOZUMwK0NIc0lWMUx6Z2s5Wi9NbVEvSXJRd2d2?=
 =?utf-8?B?dzlRZjU4aFAraUhjSWNLeGV1dUo2UUpYRGU3eS84N05kMG9RV1UydGJkVVJa?=
 =?utf-8?B?YW4xZXJDVW1BemRERXU1aGhpNDV0TTF2MjlyZUlSVXIrbC9IRnlscXNCYW1K?=
 =?utf-8?B?b2dOYmtvcC9ZbDF5QnZQUm1SQ1BuZDhLUklWNlI5dExlWWlZZ0tHdVUxWVlH?=
 =?utf-8?B?bTltUTB3c0JhS3AxUE53d0JMNXg2Y215dnRpUUdxZDdEblExWDRpM2o4cWoy?=
 =?utf-8?B?RGZLaHpPbXlsVHV4WkhFS3ZZVjhQVnVUdlhKY09oWmRwQUg2NzZ2WnFMRkxv?=
 =?utf-8?B?V3NqS0s0Q0tqNkNHVU82eXRJYmgvNkRnd3p6RlFDbFhrdnc5NHJrc2F3dGll?=
 =?utf-8?B?Q3Nkc1I0Qi9MQkhMYThWWGpVL0VRdnZFTEJKZms1eWYwdTdyb2ZwL2YwL203?=
 =?utf-8?B?bjRjUzh2dktUL3ZiMnpIaW5VRS82ZnR6a3lkM1ZKaG1RakdGdlY5SWZybWRi?=
 =?utf-8?B?TmhxaUFUZ2hRcC9QcDA0YVhWbTZhbG4wUGtmTHJUMDM3NXBPN1prTDFPOXlP?=
 =?utf-8?B?Zy9KOUlabHV5MDI2V2c2T09UaDcyNlRmUURkN25QalpoRHhHWlVyWEZMSytv?=
 =?utf-8?B?QmFrNFg4S05wcjdRUVdIemRTR3o4MWl2TmJOczdENGl5VG5jSXNBVFNDWExL?=
 =?utf-8?B?bDlsa1VzdkthbkNmUUNrMC9xd0hLU0hueVhJYkk5T202S0tFQVFFby9KYWsr?=
 =?utf-8?B?VkFEZW5wcHhOQm93M1VBOUJpOGRSNGtDRFVqajhBc1hXVWdNTVBSS0NSMlFm?=
 =?utf-8?B?eVRueHhrS1dvN3ZORkZhY1hHQVlDRFFVYTkrUi9LWDY0OHg1RC92TnNXNFpZ?=
 =?utf-8?B?NVNQN3pFR0VzNldUV214dGF6amZ3b0dsTncxdXZyY0ZEZFdRN3k5ZGRJd2dW?=
 =?utf-8?B?eEprVG1wUytuUnFLb2NXeERldGtObVFmSFNwVkZ3Mm9adHJlR3BQNnRmS2l0?=
 =?utf-8?B?aFdZekU1dm9XUUk1Rnh3WWRHUUVRVmlwM1pXcFFWZ0ZKUHZqNUEzMnZxcUdM?=
 =?utf-8?B?eXFnRWFMc1c0TXhKVmJoTDVMVFhCNEdzR1VoenNpcm9pd2pGZ0pFbFFjRE9s?=
 =?utf-8?B?UmRMTWJSMm54VVlRb0d0MjJLL2dwZkpTdlhFY3Q5VHlJNXNYRWRSMXYxMjNK?=
 =?utf-8?B?cGdwK0p0eXBRPT0=?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <215EA99825C77646A139786625DB8BAB@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB10294
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF0001E9C4.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b00e901a-ac1f-4158-6e05-08ddaa5cf079
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|14060799003|1800799024|35042699022|376014|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?YkNXcjJvejNWOWZlZmd3WGdaNHZ4NXdndEZWdktNVXZPNlZVc3J0WEJrMnF0?=
 =?utf-8?B?elV6T2dNR3Z3a1JxdFkvNXB4cmZKNUZKV2ppNTNBRnB5MlN1UllPeldVVkh4?=
 =?utf-8?B?clQvcHB3SDZKMVFuM2ZrNVgxZ2RwRjhiVTVxbmRzY3c4bmtzbGxlUFRBSkFh?=
 =?utf-8?B?Rzhxck5NU2NPdDFDNytqaGg0RWNOa2ZZN1BEYnAyTCtXSHFKVUNDVFZTN2x6?=
 =?utf-8?B?YUJqYktsdzhLUWUwZ3hPb0s5aXkzWWYrMWdOMk92RGNpMGdydnpmYVhyTFVS?=
 =?utf-8?B?bkZiWkhGUXI5L0xNWEV6dWRVeFhDcytWdTBZbHgwRzN3VDRFTlRqMGdLZG44?=
 =?utf-8?B?V2k4UUVxUldiVjRWOXdtTFBuUmQ3OWJtRlB0Y05kVE5IdUh4dDZGcVhQK243?=
 =?utf-8?B?YmtNWXQ1bTI2Titrd2VjSWQ3aGZETXZVUkw2cVNEU0FDVDluMTBydzliY0xX?=
 =?utf-8?B?WUFjdlZFdjhqZVdtOGFHZUdVRUhJRTU2c3FVcFdjdlN6WTNXdE1jQWFPcm5n?=
 =?utf-8?B?VFJiaUpzRWp6elJ5cTFraU5yaDJrOERrcEtyQko0UFgzaUdML01xSmY0RkxK?=
 =?utf-8?B?N292UVliUlZsV015Sm1BdGNOZjEzZDI4SUVEbC9sWUFjQ0lKTEJHZENsZDRk?=
 =?utf-8?B?M1V5RmJMSkZZYWFHT040WUVYN1BMSXl3R1NNZjRvZ2dveEhicjgrT2NMWk1x?=
 =?utf-8?B?UkRYVWM4ZEFxb2VjcXhtVjVFdFdoWmJaOCt4SXdRejEyOWVQWEtmWkRPQmU4?=
 =?utf-8?B?enlNM041eVlSMzNwdUp1Y1ZvVUxndlp3azU3VDVYNUdrNUYvN0pLeW9wVVRk?=
 =?utf-8?B?blAvYkF5Y0JTUlNQQTlhSzV3VzVPbGVPUEszaTBtaVdBT3NhbzJOUkV1OEdq?=
 =?utf-8?B?MnNObFY4Tk50cmpVb1lZb1JUalhBQnBNRUZldFJ2NlJJcCsrQVQ3WGdibEpl?=
 =?utf-8?B?dE9hRFJJUm9Gamk5SWdnWkozc3hJcjczQnlMYk9XZ2p1blAyWEFUakhjLzF6?=
 =?utf-8?B?QTZQaG1uTG1ObkFYQTRBUUNVbVBzUmFIK3ppVVpFSHJLb1dLVGh0Wm05K2l0?=
 =?utf-8?B?UlI5SmpqOURlRFZmVmpzUnlHUS9iSmhQVFVlb0FJYlJFcE5aRncra3FZOXhX?=
 =?utf-8?B?SC9CT3puMldtVHdHZ05ZengxVVg3K0pNSU85T0FoRDJsN2puczdwbEhUaFRr?=
 =?utf-8?B?L0Nmdm1CNVVxUmJ5blZVWFV6S2orY0lZbng4VUFzSW80M0swOFBLWjRhT3pq?=
 =?utf-8?B?Mk1DbWJHck56bytZNWN2UUtnRHE2Qm13dVhaYnNYbGJYcmNWenA0ZUFWOVc5?=
 =?utf-8?B?dGd4QzJEM3hBZTgydjlEbkl1NGJIc2hGTnlqY3FKWnNJb09zUXFGWWhWRFc3?=
 =?utf-8?B?SUtsd0FEalhZc2JMNkxSb3NheWNQODNVS2JtVmZjcGhWSno1QXFsZVNERm94?=
 =?utf-8?B?SGxKYlR0bzlYNHlWdXJiY1hzM1lFT2ttMU5UWEEyckN1Q1hHUVdZSDVOd1pp?=
 =?utf-8?B?UlpCVnpQcjd5QW5sUS9ETWpLNExkcE5tMUg3SWVaRnl6eTZwcXdsSnAveFQr?=
 =?utf-8?B?Qkkwd2gva0tnZjRJZjdqVDFnMzB3VkFGNVgxYUIrbkEwMWtGNGRNcjZOMWJy?=
 =?utf-8?B?Ump5dnJRVGQ5cWY1WCtrTDlYTnNpME40cGlUUWFCRHh4L2pFaEFjbVF2WUtN?=
 =?utf-8?B?cDJnZzNnUTFWSkxEWGQ5bFlzanV6VktUWWpBZ0RVNm9kUHZJSExLaERXMWli?=
 =?utf-8?B?MkFYT3p6aUVvRWNjOHg5Wk9tb09XR0l1ODhEMitzNmh0WU9vT050bEhRa0g0?=
 =?utf-8?B?VkxiWDhkOWFtL1hGV3F2Z0xrRVNrRkhSam01ZWFJUGRYZlRQZXo0MS9iSDhh?=
 =?utf-8?B?UVpKYkJkL0J6eGNTelNuK1kzeGlnM1UwUHVlbEJFYjZOTHZlQ0MwQm42c0Q3?=
 =?utf-8?B?eFhVMndjd0FMT2RaekVvaGJ3LzNlMDNuMFprQ28reXNTOU1US0QzNHZYdXND?=
 =?utf-8?B?dlpwQ0MxRitCM2lBcEJ0bW1IalhWOU41SWJPY0Z5TU41b0hUNExSbzBHSFpr?=
 =?utf-8?Q?ddT1p7?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(14060799003)(1800799024)(35042699022)(376014)(36860700013)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2025 09:31:02.0735
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bcda017-736f-446d-236b-08ddaa5d0360
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF0001E9C4.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB10988
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Jun 2025 09:31:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65511

T24gMTIgSnVuIDIwMjUsIGF0IDE2OjM5LCBNYXVybyBaaWxpYW5pIHZpYSBsaXN0cy55b2N0b3By
b2plY3Qub3JnIDxtYXVybz1mYXJlc29mdHdhcmUuaXRAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4g
d3JvdGU6DQo+IA0KPiBJbiBteSBsYXllciBJIGhhdmUgYSBsaW51eC1maXJtd2FyZV8lLmJiYXBw
ZW5kLCB3aGVyZSBJIHRyaWVkIHRvIGNoYW5nZSB0aGUgY29udGVudCBvZiBPTl9HRU5FUklDX0xJ
Q0VOU0UsIHRvIHJlbW92ZSBzb21lIGZpcm13YXJlLg0KDQpDaGFuZ2luZyBOT19HRU5FUklDX0xJ
Q0VOU0Ugd2lsbCBzaW1wbHkgY2hhbmdlIHRoZSBsaWNlbnNlcyBvZiB0aGUgcGFja2FnZXMsIGFu
ZCB3b27igJl0IGhhdmUgYW55IGltcGFjdCBvbiB0aGUgY29udGVudHMgb2YgdGhlIHBhY2thZ2Vz
IG9yIHdoYXQgZ2V0cyBpbnN0YWxsZWQuDQoNClRoZSB1c3VhbCBzb2x1dGlvbiBoZXJlIGlzIHRv
Og0KMSkgc3RvcCBpbnN0YWxsaW5nIHRoZSBtYWluIGxpbnV4LWZpcm13YXJlIHBhY2thZ2UgYW5k
IGp1c3QgaW5zdGFsbCBzcGVjaWZpYyBzdWJwYWNrYWdlcyBzdWNoIGFzIGxpbnV4LWZpcm13YXJl
LWZvb2Jhci8NCjIpIGlmIG5lZWRlZCwgdXNlIGEgYmJhcHBlbmQgKG9yIHNlbmQgYSBwYXRjaCkg
dG8gc3BsaXQgbW9yZSBwaWVjZXMgb2YgZmlybXdhcmUgaW50byBzZXBhcmF0ZSBwYWNrYWdlcw0K
DQpSb3Nz

