Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A7FCFD344
	for <webhook@archiver.kernel.org>; Fri, 11 Oct 2024 11:01:59 +0000 (UTC)
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (EUR03-VI1-obe.outbound.protection.outlook.com [40.107.103.43])
 by mx.groups.io with SMTP id smtpd.web10.8908.1728644515526791005
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Oct 2024 04:01:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=nHiUD+Ww;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=nHiUD+Ww;
 spf=pass (domain: arm.com, ip: 40.107.103.43, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=FuTOhn5ly1ooWil9YveZ46saIXNdMqz5sYjftgnu1Pn15HRkdbINFccKdv6KlxzNIGE8cQ8KRnJybJSL1CxgaTaLiiOTylTQIfRb/TqEpjHkb/gUC+D+JSN51BV48hp6M5uUrzwJ71DIAnNLjY4/rbq1QBkSLzG1n3/VfbHKJsEZRVPs7ikVs28hH6GW2O4nnRVlBs5e9ebW7paipUdzCU5Sr13/MI18xkg8ycAoyVgw+2ehp32esTkXeG7pMTsqAARZAiquHVPS/iLayvbv0Og9taQMMGNucadhffnPc+6vjsSuEgIWwoEBNNTqBVG3uOi2LM8PCSC7aWoEAUW1eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uaSBqJeRnP3v24uu/OrMjXCMGrNhjluiekeBf2k1kJQ=;
 b=JZ7nrvSL24tcl8G3PL3gqrRZHly9RDhpFA4d5KgACTBaHYT2veHujfAxKZGzXu5MFUrjzmOurC3wXyiieOgqoWgxURXC2Uh4eLD5kY8gsgSltDaEbWpjD8DgWybLTJ2liKaIJ04bAZoPMLtX0E2kmZyIqTNrbl8ecaTa0XK4L3fQgMrRrBynOktKl1OMvNXFnpiHG8OURog2J5uGLeOlEJvFfx8IPnLRUsk8iQUtOp1qmN6V/crAi9nXr45gsk+ZeZL+SvJ2SnYjMjJWJ5Gea7h6PdlVCk3KQeakBFVOh5ABLPF3Q0WOd6a46R40Co8hhgU5gp+M0CniO1TQuiAHVw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uaSBqJeRnP3v24uu/OrMjXCMGrNhjluiekeBf2k1kJQ=;
 b=nHiUD+WwtScHGfScgreQ7GCqna3hgLolqfbVyhXR++fKJQiv31CEPmcompkP90CdqCvz6xuFE+8qC+F+AeM4xyFZYG4q1rxRVxoHKteKwzUJgpcv2d81JhDfexZzNnJZqpYLKdK/uWmrE+0xQX5xlWtdBdlemo74pny+xPKXSO0=
Received: from DB8PR04CA0022.eurprd04.prod.outlook.com (2603:10a6:10:110::32)
 by PAWPR08MB9783.eurprd08.prod.outlook.com (2603:10a6:102:2ee::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Fri, 11 Oct
 2024 11:01:50 +0000
Received: from DB3PEPF0000885D.eurprd02.prod.outlook.com
 (2603:10a6:10:110:cafe::32) by DB8PR04CA0022.outlook.office365.com
 (2603:10a6:10:110::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18 via Frontend
 Transport; Fri, 11 Oct 2024 11:01:50 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB3PEPF0000885D.mail.protection.outlook.com (10.167.242.8) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8048.13
 via Frontend Transport; Fri, 11 Oct 2024 11:01:48 +0000
Received: ("Tessian outbound 60a4253641a2:v473"); Fri, 11 Oct 2024 11:01:48 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 7334a5b7cf156174
X-TessianGatewayMetadata: K4b8BCOEik1zn/zDavewvWlq2v/JAYmU1a6hPt1L6259E2PAg8/32sfzVX0wYpGQJPPYJKBfhz+vFIjKRfnNhf8Jo6B5TZYb7ZpT26+Yyg278LOUcQ8L1HxZGupbMho20dwq2M1nqYb1t5mnTjfZmyUhc0UUZx5sWrpCqYK7mPw=
X-CR-MTA-TID: 64aa7808
Received: from L9318257fc3e5.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 448BAE14-7C82-43C5-922A-AC027E9A207B.1;
	Fri, 11 Oct 2024 11:01:42 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L9318257fc3e5.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 11 Oct 2024 11:01:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hLLBwXuurfNSWseT0/RFmNtKx8525CuOy1dhc7+WJVnAdJwmY64qrue/bLdI0B00lD24hYDaK7gjtQudHwlwqNdDk6clg5wDxUD19jmPjf6fWB2/P26fQteJo+iQR36uQveRaerKOpXWdhzocf9tRxd+Bq/detdK0N6SpOQzngnQbfenujnjDsQGh+6i6LfZNgnB79OjIWR6MHxIwyXXjA+Azw5Ey9bsRNQtQ1VJlCGEXurCD2wMDsG8rlw8VKp4Nf07xItQHdHpCyNCxZlZshBIChTmuX+cr7uCh0/u/vMRtd3Bj4j2VyPF33ECrBQkAvPKxWMXJ6t694YXvZVm8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uaSBqJeRnP3v24uu/OrMjXCMGrNhjluiekeBf2k1kJQ=;
 b=ynSThZj6b9niLSSeHoDEqHJ52H8EKGuZjQ75p/OG1e/4ZlDh1ukDid3fGylETl4voXyAa70HOlNHoEj86JcYoRtJsjXOFxvPBILUvAFbnAvzUEOZwU+6JfIRxZdtpXXdDlHlHOg4z/it6djhWhdj6gKyE3NH7Wg4Cge/ZlnfD+fno5SgnbElKNxSkyLfRtscadCXIxyLcJIpySEDJFeIBL8+wK53G4xxBLqaZdw3VKmJALbyXzgmaWdkFwR34rPKwmD6S6ZAZ1j6TohtLltz31ol2vOvfiUTY0qKqEA8Cm6F5kz7xBTLbPSrNjitr/TAS9ejFRVSRGDYQmC2CujQLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uaSBqJeRnP3v24uu/OrMjXCMGrNhjluiekeBf2k1kJQ=;
 b=nHiUD+WwtScHGfScgreQ7GCqna3hgLolqfbVyhXR++fKJQiv31CEPmcompkP90CdqCvz6xuFE+8qC+F+AeM4xyFZYG4q1rxRVxoHKteKwzUJgpcv2d81JhDfexZzNnJZqpYLKdK/uWmrE+0xQX5xlWtdBdlemo74pny+xPKXSO0=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU0PR08MB9632.eurprd08.prod.outlook.com (2603:10a6:10:447::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Fri, 11 Oct
 2024 11:01:40 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%3]) with mapi id 15.20.8048.013; Fri, 11 Oct 2024
 11:01:38 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"aleksandar.nikolic010@gmail.com" <aleksandar.nikolic010@gmail.com>
Subject: Re: [yocto] Currect usage of pkgconfig / find_package(pkgconfig)
Thread-Topic: [yocto] Currect usage of pkgconfig / find_package(pkgconfig)
Thread-Index: AQHbG57omYWnA7hiC0u9z9dE0XKxzLKBYpkA
Date: Fri, 11 Oct 2024 11:01:38 +0000
Message-ID: <6AF5B7D9-5BE5-4262-B252-E912285BD591@arm.com>
References: <OALp.1728624711064142758.LruR@lists.yoctoproject.org>
In-Reply-To: <OALp.1728624711064142758.LruR@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3776.700.51.11.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU0PR08MB9632:EE_|DB3PEPF0000885D:EE_|PAWPR08MB9783:EE_
X-MS-Office365-Filtering-Correlation-Id: 021f7001-05de-4d22-df5c-08dce9e41a92
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?alFMaEVaeHhuc0dzQi9YT2w2Z0ErclV6NnVsaXVkamhyeVZUdmxHY2ZrTWZp?=
 =?utf-8?B?TWlUcm1MMTNQTkRGUml1MHp5akZjbVlVMDcxTHRYUlZwS3JMOTFNSnNTYVF5?=
 =?utf-8?B?U1FxQW5ESzN5WWdnWmVrY3VKeGp6U2szNk1HMkpZSm5neWliRFdqVDRwM0pO?=
 =?utf-8?B?ZnNJQlZ3MHBjZ3Q2QktsRVlEQXJmVXBEcThjODVCZDkxZ3BoOFM1b0cxTDR3?=
 =?utf-8?B?bTdRR3BoOGxnVDIxOEp4NmZBWmZqQTZxa3k2UG5taEdMTDJ6ZENpSHJybW9E?=
 =?utf-8?B?SUdhZm5nK1VHakR3N2ZyVEpuSDNrOFQxSS9pSHJGdGQ2KzJJbStxN0R5VUtn?=
 =?utf-8?B?SGtnUmdFTjBocHZ5V1FadjhBUjYzVG93Y0NZUU5PMlQ5QjE0Rm5Db0M1TWF2?=
 =?utf-8?B?UTNMZncrcWt5YmoxSno0WTR0bTV6UWFVdVZjQ0d5cmxFb1lKK1MzVVYxa0Jy?=
 =?utf-8?B?eHVBbHp3Q1d4Ujg2QnQwN2lWTlJvVCtKbWF4OFg0QXFIMHQ3cnNBV3l3SUtR?=
 =?utf-8?B?Z2hnRFBjMGt3Smd0bE1ZZFpjZjg2ZU1sd2p6WmZoSyt2dWdkSXFleDF1Y0Q1?=
 =?utf-8?B?NG5QUjVDeUUyMUFoZlZXRnk1OE5TYjRtWDdlc0Nra256MG9abUwxMW13aDM2?=
 =?utf-8?B?YzBQeGVzekZOcmRWalR0ZE1Sc3FJZ0pDSkR0c25rc2JkZDUvdlJaa2o3aU5Z?=
 =?utf-8?B?bVJNZDBzeUtsdGVWSkpRTkwyTGo4dDFoSTNSUFIvU2ZPODlFTWxPNkxZc2h0?=
 =?utf-8?B?VmU2Zmpoa1lzVTlKN09PVUlGejVrRnZ1NzF5VXdmQUZCTzVYOGVDeWZERUdl?=
 =?utf-8?B?QjdCSE5YQVVmK25tM3dQSHZSMkpNTkQ1WXNoT2lISTBmZWZOZnBWWStvci9Z?=
 =?utf-8?B?NGhRUUYvd3RuZW9QZXV1cjBmTGJNbndsNHZUeVdWSUpnK0F5ZWFtR095K09Y?=
 =?utf-8?B?TkZETGZXbVI1ZERzblVqcHkxTnRqTXNsK3NpbEgrVGhQZEhOd253eG1oWk9j?=
 =?utf-8?B?U1k3alFULzVlSStLUzI2Q3dMZzF0NU9rOVlETmwrQm4zQzQzR0RFMVc3TW83?=
 =?utf-8?B?UVhBMEtBeUpNdnQ3MlFqTU95c0J0UVlXK1E1MkJ0UlJ2MXBNcDZpOGtKbHBD?=
 =?utf-8?B?NlAzc0dtZzlqQXRZczNVMGEvSWtNbGhraytzS2hSeDY3SHZqZ3AvVFZkcnlz?=
 =?utf-8?B?Nm0rNHFaUWF3a3NCREFBRm5BRDhDN08yUDN3dkppbzRhaHhYTkFxYU9GWG1P?=
 =?utf-8?B?VmJtU0owb2wyd1RUbGZua0NrSCtmZ001R1BYYkxHN1JqQmlQZGV2Ly85MEJh?=
 =?utf-8?B?eHlabEE2Z2NpUHY0cTZ0VitXQnJoTHR6UlFpSDkyU2VPTDJqMlhnNjE4cUV2?=
 =?utf-8?B?MWNuaERJOVRSb3B5Z2JKQUJMRi9OL1BqcXc4VGpuNVpRZnNZSUIxWHBweGlj?=
 =?utf-8?B?bUlzMkY3MW5tSjJSSU42SVZxcXAxeGZCNjc4NUxVMlFUOFpiTkVRTnM1SXpw?=
 =?utf-8?B?NHpxMXpQYmdQWFNSWmxndXJLb0RZSVZZdHdVdE41dk55UW9BQTcvUjJlaUgw?=
 =?utf-8?B?czNMcVdrTkUxUTQxNGlia3R1c0VSa0RGdTlweGhuYWM4ZlhXSVdIRVFCd2hm?=
 =?utf-8?B?bGh5Z3V1OU95Z0F1NHZqRzFndmhJZmNBRVdrcHdmQVV2TnVhUFQ3a1NIYkdk?=
 =?utf-8?B?OWlGNzRkT0NORUhaWmxaVTNzVUpQMjRXbHhNMWIrSkQ2RUJ0WDBzYk5jeVJw?=
 =?utf-8?B?OWZaWTE3ZFBpYXAzQUYzUTVQakVyN1FBclFoYWR6WFlIbG5DZ052dzJ5UnVD?=
 =?utf-8?B?bkY2QVpOWGtmSjRrTGg2Zz09?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <1F6833819369B44DA3AA7E92361961F3@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9632
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB3PEPF0000885D.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	1269cf71-8087-41d3-5265-08dce9e41483
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700013|82310400026|35042699022|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cGJVc0VsMS9LaDh4TjRVdFZSUnN6V2E0RmE3aC9OYkV0T3orRjJwSExJYVY2?=
 =?utf-8?B?TGxFUzlOeEY0dEVSSVBxNDdyaGFnYk9tTnN5b2lxUTY5NDBGUjg5aERNbzN6?=
 =?utf-8?B?NGJIb050aHl6SjA5eHNQVDFCcnNoRWpPTlByamhueldscXlDUjd4MHIweEVV?=
 =?utf-8?B?Z1dEYS9IQ0g0TzBoUTNVTjVHbnR5OHFhdzBHR09SYXhVdmt0T1RiS1ZPZDVy?=
 =?utf-8?B?NXc0eXRUR1Z4YlhUODJCUkk3eW1pQnBIZ253VEJmaXpLWWJPcW5oZWZoelF5?=
 =?utf-8?B?Ulh1T2EvRlJSVzNrdmZKZllDTTB2cUtDNkJNSDVaeWZBTmZna1k4eTRJWFNn?=
 =?utf-8?B?Z3pWNldnU3NDUWluelV0dXZhYW9hTTFOTU0yN0ErR2YrVFZ1V0xPSW1Iak1Z?=
 =?utf-8?B?ZEJSd2FZWWowNloyT3d4dnVqTC81RU9KNW1jWHpXckd6RVlJdmJ4eGtLdEVs?=
 =?utf-8?B?ZWRNQ0s2SEpCZnZrT0hZVTU3c2pUNGdrdUpMOWp0azNlVlZTQzlJZTh4Vlg3?=
 =?utf-8?B?ZEphQ2ZWbmRpRllBdGpUMGtjcUNUZGZkYVdrYTlJQXhVMy8vTCtGbGNIOCtG?=
 =?utf-8?B?YWZKNUd3aytNalEzb1liV01WbHQ0dkZrU0tDWDI5TXlpRHpUQ0xVQXcwbHAw?=
 =?utf-8?B?SUY3bWl1WEVTWWRpMFIranVFb3kwRnFvUzY3cFZ2OEw0YVdxRlNuQVMwQ2NN?=
 =?utf-8?B?eWErSzBEZktGbm0yYytXb3NtUGFRNGtCZHlRZnZvUWRHdllxSHp6aFZ1Nm53?=
 =?utf-8?B?djlvcTdXMzlWMUYzc3ZDdTN3dTRwazB1ZHJ4dC9qb1hLSWVkd0tJV0trMlV2?=
 =?utf-8?B?QkpNaDhzbFR3dzdJMXhGL2VhNXRRdVNNMVkxZDczNEJFL1hiOUhPaUJBTXU1?=
 =?utf-8?B?NFFWdjdBRkMrZmQvZlFyeWM1b1FYcU1iMEkyQjZHejNqVExrZ2lOTWgwVGFv?=
 =?utf-8?B?Q0JheENCQUVBcC9VWm5xNUFicXlYWC9wUnkxWkhIczByNkJjam5BeVJETExZ?=
 =?utf-8?B?VStyTEQySGF3a0M2d29JN2FRRkRTdk9vdEcrdU5PVWFqWjRiQ2UyTldRN2tE?=
 =?utf-8?B?T0ZQRW4ya0dZa0g2a2FqS0k0d1kyb0orWFlhRzBvaUpBd1lMSWpJY1pETU9L?=
 =?utf-8?B?UXQreEtFblJrTjkrZjZiUFVpRmFNOUl2KzA3TmhtN3lmN3pJMnk2ek92L25C?=
 =?utf-8?B?MjAyKy9uU3RONWRod2VWL0h4VUdHamJJN1pUbXV2VTY1aW5MNmd3UXJMcTl5?=
 =?utf-8?B?bllUbTlkRFRWR2RmSFd5THhRSnl3clNqYWY2bmMvbHZrU0RqL3phMU5Rbzlj?=
 =?utf-8?B?KzBPVjREcmRVL0dGU1AyTmVsUFVBRHE5NjdDL3lZRVJOc2xHOFpkNlRZT1kv?=
 =?utf-8?B?UVVnOGlId2tTTkJqQnRPYmNub0Rpa3dJY1Uyb1duVzNyMG9kQ09lMmF5eFdG?=
 =?utf-8?B?a05qVkdVU1dVSCt1TFlyTGZkUFhNb0tGVlBXZllEVmh4dEFyaFpES0hlb2Fp?=
 =?utf-8?B?ei80N2RDU1hlNmxKUHVnNDF2cFVKKzY2dTN6VExvV3lOOWZSSkRMUkZ3T1pa?=
 =?utf-8?B?aXA1Z08vUHdwVEp4c1VCWEI5SHNFcG85UU9RNHo5K1JDOUJlZ3U1NmVwV0Fm?=
 =?utf-8?B?OGkzMXZCMVVUZ0lHaUFtOGtobHNnSHloaThGTGtaNTFNM1hFRTB4djA5RUZo?=
 =?utf-8?B?WVhUMWhkamFQTXloUWxSSGNXcTJuSWZ6aERreWIyOXYwUEhzUDBwdDJGWTR6?=
 =?utf-8?B?a1BxdW1XS3VhWEpDa2YrRlRRRGJNQnRiWEpSdjIraVFlTGd2a0hvNjhxNmda?=
 =?utf-8?B?YkZ5ZTBpdm5YOGhsNzJGcElIeTI2S0VEankrdWNVNGQzeFhCS3dCYjRPNStL?=
 =?utf-8?Q?IWYBoG8vV+U0a?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(36860700013)(82310400026)(35042699022)(376014)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2024 11:01:48.7259
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 021f7001-05de-4d22-df5c-08dce9e41a92
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB3PEPF0000885D.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB9783
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Oct 2024 11:01:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64008

T24gMTEgT2N0IDIwMjQsIGF0IDA2OjMxLCBBbGVrc2FuZGFyIE5pa29saWMgdmlhIGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmcgPGFsZWtzYW5kYXIubmlrb2xpYzAxMD1nbWFpbC5jb21AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZz4gd3JvdGU6DQo+ICAgSXQgZ29lcyB3aXRob3V0IHNheWluZywgd2hlbiBJ
IGluaGVyaXQgdGhlIHBrZ2NvbmZpZyBjbGFzcyBpbiByZWNpcGUgQiwgZXZlcnl0aGluZyB3b3Jr
cyBhcyBleHBlY3RlZCAoYmVjYXVzZSB0aGUgcGtnLWNvbmZpZyBiaW5hcnkgaXMgZm91bmQgaW4g
cmVjaXBlLXN5c3Jvb3QtbmF0aXZlIG9mIHJlY2lwZSBCKSwgYnV0IHRoaXMgaXMgYWxzbyBub3Qg
Y29ycmVjdCwgYXMgcmVjaXBlIEIgZG9lcyBub3QgcmVhbGx5IGRlcGVuZCBvbiBwa2djb25maWcg
YW5kIHNob3VsZG4ndCBldmVuIGtub3cgYWJvdXQgaXQuDQoNCkJ1dCBpdCBkb2VzOiBpdOKAmXMg
Y2FsbGluZyBjbWFrZSBtYWNyb3MgdGhhdCB1c2UgcGtnY29uZmlnLiAgSW5oZXJpdGluZyB0aGUg
Y2xhc3MgaXMgdGhlIHJpZ2h0IHRoaW5nIHRvIGRvIGhlcmUuDQoNClJvc3MNCg0K

