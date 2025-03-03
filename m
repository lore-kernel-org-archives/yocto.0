Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB7F0C282D1
	for <webhook@archiver.kernel.org>; Mon,  3 Mar 2025 13:51:45 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.83])
 by mx.groups.io with SMTP id smtpd.web11.53262.1741009896787200596
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Mar 2025 05:51:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=MWMjRdOT;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=MWMjRdOT;
 spf=pass (domain: arm.com, ip: 40.107.20.83, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=RPWjzWuOAjwEC0itsAksAFqpF+xCk34YTCyIndoqzKxaVckSF6Hc9XVV+phrMLalSBh0VabMf3WTMaVNWYjDBkdV0rYSMFJSPJ4JCHu3bzzvTXf1OCCy2eyMyjJNOcxBEXId/0MaVPpvYdPCX5ZZi56v35IpqYCN98SKQ4C5PzOdXg1mG4lDgSdaEoD/wNrwVfUYfpKGB4pkykDCrdpT8GaTtqIn7cOwDN0gdHs7E/X1ZN0zTDMn9u/ZDId5/2xP8VeMQu+boZsRt5IOHeMsvcyNxbbOHPPZ+eEOagG4fDuQ94LsAq4wr8VPc3S3xFQ7ie5rRCOWYSvtLOzw0o720w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g+rom2ZRH8asZM8le+d3WMAmq5ZM5VWTs/I+cTlVnjk=;
 b=Qg3NUcxcpZZXRHMuGWgT8LBVg9IN2n6+p56CHjywdrz1qR6G1ZTPj8pDqm326WLOefcmFKKgg1fkr75Lvke9p3neKXfFlsIl5td6lkATcK4ljOtHieq93eK9IgrLDxw8rsoOEUyCG7NEpM5/WO8Gdh3OiPNv2Pg2RzYgNtpLvyI/KtapzRyyl6CEe59zAo2w16I+Tv7c76HYNetXJJLTabyRV4T/o90CZ10fO8ORVaXCJKZQ98c1d8kyyHXF0h4sUuHhfJfN74rujmqLxcSrW/vUFTM0EKtbdual4xnkZfy3Uc4HjNJL3xIps5HwaEYoVkuOJPqgCpOm3Bbcgwr9Xw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g+rom2ZRH8asZM8le+d3WMAmq5ZM5VWTs/I+cTlVnjk=;
 b=MWMjRdOTRjuQIeQamLHtF89NfZQuKWZDrT9wind88vHAiadTBuYuXRVtePDdIyv3iOZul/YVxtGDaGnQ1lzsnTQCDeaIjA9bTw7G98lYoBELBVQlHGnGN7NiHwTtTU75VAyq8xF2kyMKEVDvXWN4ZUTsA8FODf3Orvc3TuuBTbE=
Received: from AS4P251CA0015.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:5d2::17)
 by AS8PR08MB9672.eurprd08.prod.outlook.com (2603:10a6:20b:614::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.27; Mon, 3 Mar
 2025 13:51:30 +0000
Received: from AM4PEPF00027A5E.eurprd04.prod.outlook.com
 (2603:10a6:20b:5d2:cafe::e1) by AS4P251CA0015.outlook.office365.com
 (2603:10a6:20b:5d2::17) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8489.26 via Frontend Transport; Mon,
 3 Mar 2025 13:51:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM4PEPF00027A5E.mail.protection.outlook.com (10.167.16.72) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8511.15
 via Frontend Transport; Mon, 3 Mar 2025 13:51:27 +0000
Received: ("Tessian outbound a81432d5988b:v585"); Mon, 03 Mar 2025 13:51:27 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 37f991821f8e1f7b
X-TessianGatewayMetadata: y9H4NUE2UrIXoMoUf4zPT9WYxDJx7MC054KdKB7s/asmfSvmD63Ty/5N4lI61/fTobVHtebw3KGbhfMper3GyGcp5vCza7o/TWWSAP03dyMWnjTQd2WE0ESuLTePepE4lnc1ejn2yWBS5u3qs8i/1y5NddV0XttGSqlJhxSj7SE=
X-CR-MTA-TID: 64aa7808
Received: from L58f90d2d020c.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id A8E8415E-83F8-4836-91F8-B088619F074A.1;
	Mon, 03 Mar 2025 13:51:21 +0000
Received: from DUZPR83CU001.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L58f90d2d020c.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Mon, 03 Mar 2025 13:51:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kykLFsCVpcvUBKlkhVXjkzNpqatV7XOUtmgwB8cFOt9s53tfqhe8PTlJsXE/xaHWh/DHP9C2s7YiqeJMnAR5igkBlYVCv8qu1T69zeKKKNgKxFNkbqloPTQZbPwFJA+iklEFCg92pD02rng0ooVFD5tBTr4XOFFe5HHjPdHLEbYYHhGh3ZdTz6/j+JAsHvDnU+VEvDFP6xdA//vL6eB/p1l8ge6Q+KxDZLKuhKUzFGG91M/6sfSYH/fJzyGH9x0n5jIdKVDeTGK+veis4+kWC8lDUeryGiCnfw6mD7meAoKeTbsYLZ/+6iaVh4GWZDfUF+B3rArIp/Ya2RsSnc9X0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g+rom2ZRH8asZM8le+d3WMAmq5ZM5VWTs/I+cTlVnjk=;
 b=G1XCVBuFJs5N3oVm82HcfbciyS75jAWqZ0MH98GkQk/htvICYJ5qStMGGeryat9Tsfzj6HUnA550A2GB4gmev0zs2pwz+7fGzEH0OFIXo/7hgxkWRuLwekExkdJQ7a9iUna+2JIr6+eNQCHpFRpMmInbBgdhFNa6o39BGYcHicoHmw0VHn7lHkGv5da0QGSCgxsIuNhkkXigdcoBpOLzJLQ1M67fwTK5HmWbnN35IaxQz2v8agGl2oHgPVYF/QoByWZ+yZXzP8BTLv7YV6jDqobMhfEZCWTtfNDw0X3H8ccnHPn1rRh6W0v6TPNLF+CSUN+RsELr46AbMkSboxdFdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g+rom2ZRH8asZM8le+d3WMAmq5ZM5VWTs/I+cTlVnjk=;
 b=MWMjRdOTRjuQIeQamLHtF89NfZQuKWZDrT9wind88vHAiadTBuYuXRVtePDdIyv3iOZul/YVxtGDaGnQ1lzsnTQCDeaIjA9bTw7G98lYoBELBVQlHGnGN7NiHwTtTU75VAyq8xF2kyMKEVDvXWN4ZUTsA8FODf3Orvc3TuuBTbE=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB4PR08MB8029.eurprd08.prod.outlook.com (2603:10a6:10:38b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.25; Mon, 3 Mar
 2025 13:51:19 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8489.025; Mon, 3 Mar 2025
 13:51:19 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"emailaddress.ashish@gmail.com" <emailaddress.ashish@gmail.com>
Subject: Re: [yocto] Remove dev packages from core-image-minimal
Thread-Topic: [yocto] Remove dev packages from core-image-minimal
Thread-Index: AQHbjBjoee9vxxquw0myzwXNJFx7ObNhbnCA
Date: Mon, 3 Mar 2025 13:51:19 +0000
Message-ID: <28A796AA-0C9B-4B73-AAA4-1AC23B57C055@arm.com>
References: <J0LL.1740991645051830981.9lJ2@lists.yoctoproject.org>
In-Reply-To: <J0LL.1740991645051830981.9lJ2@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.300.87.4.3)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB4PR08MB8029:EE_|AM4PEPF00027A5E:EE_|AS8PR08MB9672:EE_
X-MS-Office365-Filtering-Correlation-Id: fffc113d-e011-45cd-f3b5-08dd5a5a7ef9
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?Z1M1NGZXTmk5Y0xFYjgxb1Z0Mm5JUWpyTmZmMEFKbDhEem9aazM5UUJlRkM5?=
 =?utf-8?B?VjlDWFBKR2NLU2xuc0g3TXlBZ0lSL1d5ZW5kZHd1bHc5ejJyQW9JeUdranVY?=
 =?utf-8?B?Y2lmWE1jdi95T2J1RmcxMEh2cnFpSW1EeUNGTHFPZkNucE8zZ0xpUjFma1Zo?=
 =?utf-8?B?WEFSQXZwb2VBRDJtb0ZxVjh0NmszY2dOOXJ6eXp4N1JYMFhpM0k1OUZIOGsy?=
 =?utf-8?B?eS9rRTFRTEtJejdmVktMOGhQT1M2dlh5Rm9mR2QwWkVDRmNIRDlFWW0vdExE?=
 =?utf-8?B?a0JSSVZvWjR5KzFuRjNMNTNzdVNRWExFeGdQbWZic0s0RVFqU1Q3OXZoSjVn?=
 =?utf-8?B?WC9rRnU2OFVES0xSNnY4VytCVUI3cDMweGQzdnVXZ1lERStsNGQvM2NtcGFD?=
 =?utf-8?B?TTR6bGF6VnRSbFY1bjZYSFpCZ1duODc0a0d2R3hZZnVjYi9xcEdSa3VUcUVP?=
 =?utf-8?B?R2J5Qkk5QWhHejRYc1k4S0YxVXhocTNjSVlRUjlPN00xK0RwQ3owVFgrY3l6?=
 =?utf-8?B?bE85YUR5UHUwTS9ZNGxrdmlmSGxXQTdKSm5ERVdmekFieG50T0RORzlEYXNM?=
 =?utf-8?B?cmlvb0xlcVJ6R3MrYnc5TWlsM3pETS9BVVBmK3pMNEthRk90UWJJR0c1U3dI?=
 =?utf-8?B?T3JtVmhsV0ZvNzJiYnVzbWUwalVLZks4dkxmS0JjMEdac05SMEttdzY4bnZh?=
 =?utf-8?B?WkRwMlUwVEp6dTZ4bU5BRUhnWnpHU01kZHd5UE9xMHZRYVZvcDhiRzlUY2xr?=
 =?utf-8?B?aHpUeC95ekVFdzVEbmtFcUdBY1BUa3M4dXpCWGNROXh1THhiVmJzWFlBbVJv?=
 =?utf-8?B?amJhdmdMeWw4WnpQMmRpamVsbWhTdjk5QnF1UVdhMWtLVUNwQmY0YkszbTk2?=
 =?utf-8?B?eU1jWm1MWHNuV09iaGFwWWVyK1JISTVGZUZ2eDdiYTlGNjZ0MkNZK1pvRzBT?=
 =?utf-8?B?UCtGZnoyQWliYW1CclZ5NU1Vajk5SFVCQUtMSlRHaWVPMFFJN2pmbzNncTEz?=
 =?utf-8?B?WENBUFIvK2JSbzNvYk15UERXU2xZdUdhV3cyeDBuTmZSbGxDMVdzQkRjVjBi?=
 =?utf-8?B?anJldWxlcjlVYk9yOHU0elhnK0ZmbHVLaFRHUVJieUk3Q0h6U1RNdUJXVGhj?=
 =?utf-8?B?QXBGZXdDQXVCNm1teU9DaFo5SXV3NU5rK0FDcjJQa2xtOTBzdUdnWXpPeSt5?=
 =?utf-8?B?VVMwSHlRL09TUVRCejlKUWs3b3ZJa1NkSmJBc1NpcVh5WGJDUDV5VlZZdVpx?=
 =?utf-8?B?TUJRQ0daemh5cmYxRCtza1gyaThIWm16cWtzOXZTL21UbUJUU0kxNFZmL250?=
 =?utf-8?B?dWVURnpOYk40VktmWlA4SlZyMXo4bVE3OW5SVlN3bDhaYVNINndsZWZXamxZ?=
 =?utf-8?B?MnFwUDBrZzJxem0zV0lPRVFrSHlSTE5XeVpSSlNQc2FoN0JFVWpxMDhWT1Jh?=
 =?utf-8?B?NTZRdEt6UmVhU2U3MWtsY2FTT2IzSWg3MC92eGxPWWlUaWszZXVVTTYyYytl?=
 =?utf-8?B?czFaZ091dk51bmZhZDg4eWhTOSt6aE9nUFJjYkZIajFrTXhoa21IMmtnOVhV?=
 =?utf-8?B?OGM3UHZsWHVqU01aNTBHL3F4WEplVHEvTXNuUS9kQUZGRVFuc0I2c01mWEVI?=
 =?utf-8?B?cGFWTEJHbXRudjhaSjNxSEV3MDNjOGJsWm1yNmovZFZYTEVkdlpQbWpNRm9y?=
 =?utf-8?B?QTkyL1hOcTFnRk1GQXkyZ1cvb0dUOVJkZTdvZzJjbDBDUzhKOGxaY0hKUjdt?=
 =?utf-8?B?c2tPOGtUNlI5VDVCWlpIMjUyNFJCQWNnNG8xYXhXTHprckhMclEvNTFYNCsy?=
 =?utf-8?B?WE5rQ0FjeW5vL3dPeG82ejB2d0txVzRac2VVeEF5TUVSSXBkaDd6R2VIVXlW?=
 =?utf-8?B?VUVyeHNiQm1JRzBrRGF2bkY2aHpPMHBGVHpYWVNINXZhU1B3ekd0QmJPUGdn?=
 =?utf-8?Q?JDoTLNs+YvZjlttpaSMACOGhFVgwuo0f?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <4D3A3CF7A9E41A42BF2C82CB8C790C74@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR08MB8029
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM4PEPF00027A5E.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	216c0cbd-6c3c-4df6-924b-08dd5a5a79d9
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700013|35042699022|82310400026|14060799003|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bmxzQ3VSUGpNSlFZemFFbUJnVFgxYS9oWExzajBkNmpCSkZrRTBkOVFaWFhC?=
 =?utf-8?B?WEIzYlFoYWozWjFXSGJHM2lWYk1lVGw5cE9DWEkxUVdFbXMwYVF3N05RNUlW?=
 =?utf-8?B?Q3J0eUVmaVBXVlA4OE52bklUSXlMY2RhREtGZHdGektWOS80YUpScDdFRHZh?=
 =?utf-8?B?ZzRxSW1uUkJZTUg3ekppUGd6SVFTOXFRcmRMd0FjSVFFODBWVjJ5ckROdERZ?=
 =?utf-8?B?dWk2ck9sK3dsOWxETklnaEx2WFNSV3N3REJROVpIUEZNZEZTUkxGc0g1RGRC?=
 =?utf-8?B?dWc2ekxoM3JBNjN0MlFBMnptb01CallLOWxoVm9RT3hLSy9BbVdIS3lnY2ZI?=
 =?utf-8?B?SXZwcTRXaWUyc0hyR2JGNVFIRFlkeHhXcFNGT2t4VTZGajhxUmRJYzNVZUNY?=
 =?utf-8?B?blE4aEYrYWo2MzhGRVJqMmhVanB0ZnpJaHpKMHU1YkY0elR0Q1h0TWZrcFcx?=
 =?utf-8?B?Q05uM3ZmTGRoUC8yTVE2eDRnWVpqU2w3b3hGSldwNU9SQkMzWWw0RTRGMng2?=
 =?utf-8?B?Tjg5aldhMUI1TzBFRXd3aUpKeGNucWlmUEd1Y3lXMFd6Ui9DMnRSZnVoSjBo?=
 =?utf-8?B?SUNQRCtoS25tdFpNS0R0Y0pRVXJMSFZUU3pscUlLVVB3Zm5DeHlVSXdKSTJp?=
 =?utf-8?B?L0hDTUlKMHRiMWxHN0dmdkpxeGpvZkFoSDFNdTNjU2EzeW5ra0lNcUhTMjls?=
 =?utf-8?B?YTQzUDl2bFZLR013bnpFbEY2UGZORVJpSVlEd0FXZkRnLzU0TjRSVzFwMHBY?=
 =?utf-8?B?a3pieTYwVFJmbVZFR3ZFaURNUTJoem5RbzZ6WmROWFVwVE93RDJhWUhXdDB4?=
 =?utf-8?B?ZnBpYktRTjl3cDhXT2lYMkVBVlpCb0xhZE44SEVPS3dpa2YrUmpWWWtlTHdw?=
 =?utf-8?B?cXFsRDU2RlpkMUZGYnVBeFNMUjZMc2pNZVJwcThuS1ZsZzdvSXFVbDU5VXpY?=
 =?utf-8?B?QUY5LzJjVGZhUXFFL1Q0L0VqTHloZHhkZEY2YytzVUw5ZnVuL2tzQXdJd0pn?=
 =?utf-8?B?aFY4b3hRY2JBVS9GQ1lhTkh2T211d0NOSDMxYS91Tkp2QXFrY3NMWE4wOU5x?=
 =?utf-8?B?T0ZGS3NMU21UYmV5ZUk5Qks2VHJTMjJBSEhRQjM5R2xRalJ4TVl3MDhqbXh2?=
 =?utf-8?B?dTNBVEE3OTRqQmwzL1k0SzBIbjh4QndlRDEzN2tYdXJpUXlmRExQUzZ3MTJP?=
 =?utf-8?B?bk91bjY2OGhWYnVveCtTQWVmcXFNODVXRFMzZ1p4b1RKVENjcWZQRWdQb1Ew?=
 =?utf-8?B?dFZqRFFDUkRyNTVqcS9IanR1YVZTYiswZGVjNEhOUmpqQ3JqSEhtc3hSUW9o?=
 =?utf-8?B?dGdxOGFwYWxNZzdSQkRPL1VDZHkyL1lBMGhEQnJ4MlBQYnVjSTRsME9qeWpL?=
 =?utf-8?B?Tk5rU0lJV2xsdnl2M01yM2xJSFBVbVlqQzR0REw4NEcvREMvZEhDWWFTTFEy?=
 =?utf-8?B?alZmc3NCNkg2cXlRZEtNZlEvSUpveEM2YWtpcllTbHFlblEyVHh1Y0xZTk9F?=
 =?utf-8?B?L2I4dlU4bnR2cUx5WUJTK0J0L2NnQU53QXBQY2xRZ2FVRDFvQ0M1VXVpalE4?=
 =?utf-8?B?Vlh6N1liOUNLUjZGSHZIdzRhLzVEUER6TUdhdlNaSUNHZkdEbnFKTVAzQkRO?=
 =?utf-8?B?QnJYdzFVTEtwWllTMG4rTm1xbmt3S1EyWjI1WWNaekVQM0l1S3FJM3lJN3VF?=
 =?utf-8?B?aDdjRFNSN2RxUmQyVlNVY1NYdmxpc0FtTmo5MjBmL2IrSWpMekpMdnN6ZzBx?=
 =?utf-8?B?RnJFRlNHTVlZZ0oyRCt2KzlYRkNtZTJTeVZZN2FreHVuaG5td2FtYXpOb1pn?=
 =?utf-8?B?OG9rdjB6M1RqRHoyOFlITHhjSjFWbmQxQkpyM29wN2FpRkJXWDhOMGRLTVJN?=
 =?utf-8?B?MkcvVVkvdllvK0duWDFxZGlQbVVNTHlVbTIrTmdFbjhZOXVyWGQ4SEpvSVF1?=
 =?utf-8?B?ekgxb3RuMm11bTA0dG82SGk0U09OZEVOTG1QYjg5d2VncmpQZlNEV2NOdWtH?=
 =?utf-8?Q?SES91jlOHbTlH2bS6MUXKvbJLTcXS4=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:64aa7808-outbound-1.mta.getcheckrecipient.com;CAT:NONE;SFS:(13230040)(36860700013)(35042699022)(82310400026)(14060799003)(1800799024)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2025 13:51:27.9876
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fffc113d-e011-45cd-f3b5-08dd5a5a7ef9
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM4PEPF00027A5E.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9672
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Mar 2025 13:51:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64911

T24gMyBNYXIgMjAyNSwgYXQgMDg6NDcsIGVtYWlsYWRkcmVzcy5hc2hpc2ggdmlhIGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmcgPGVtYWlsYWRkcmVzcy5hc2hpc2g9Z21haWwuY29tQGxpc3RzLnlvY3Rv
cHJvamVjdC5vcmc+IHdyb3RlOg0KPiANCj4gSGkgTWVtYmVycyAsIA0KPiAgIDEpICBJIHNlZSBs
b3Qgb2YgdW53YW50ZWQgIi1kZXYiIHBhY2thZ2VzIGJlaW5nIGFkZGVkIGluIG91ciBpbWFnZSB3
aGljaCBpcyBkZXJpdmVkIGZyb20gY29yZS1pbWFnZS1taW5pbWFsDQo+IGxpbnV4LWxpYmMtaGVh
ZGVycy1kZXYNCj4gbGliaWNhbC1kZXYNCj4gbGliZ2xpYi0yLjAtZGV2DQo+IG9wZW5zc2wtZGV2
DQo+IHB5dGhvbjMtZGV2DQo+IHhvcmdwcm90by1kZXYNCj4gbGliZnJlZXR5cGUtZGV2DQo+IC4u
Lg0KDQpZb3XigJlyZSBpbnN0YWxsaW5nIHRob3NlIHNvIGhhdmUgYSBsb29rIGF0IHlvdXIgaW1h
Z2Ugb3IgbG9jYWwuY29uZi4gIENhbiB5b3Ugc2hhcmUgeW91ciBpbWFnZT8gIERvZXMgeW91ciBJ
TUFHRV9GRUFUVVJFUyBjb250YWluIGRldi1wa2dzPw0KDQo+IC4uLg0KPiBpcyB0aGVyZSBhbnkg
c3RhbmRhcmQgd2F5IHRvIHJlbW92ZSBzdWNoIGRldiBwYWNrYWdlcyBkaXJlY3RseSB3aXRob3V0
IG1hbnVhbGx5IHJlbW92aW5nIGVhY2ggcGFja2FnZSBoZXJlIC4NCg0KVW5kZXJzdGFuZCB3aGVy
ZSB0aGV5J3JlIGNvbWluZyBmcm9tLCBhbmQgc3RvcCBkb2luZyB0aGF0Lg0KDQo+ICAgICAyKSAg
SSB0cmllZCBnZW5lcmF0aW5nIHRoZSBncmFwaCBpbWFnZSB0byB1bmRlcnN0YW5kIGZyb20gd2hl
cmUgaXMgdGhpcyBhZGRlZCBpbiBSRlMgdXNpbmcgIi1nIiBvcHRpb24gDQo+ICAgICAgIyAgfi9U
RVNUL3Byb2plY3QgKG1hc3RlcikgOiBiaXRiYWtlIC1nIC11IHRhc2tleHAgPFBBQ0tBR0UtTkFN
RT4NCj4gRkFUQUw6IEd0ayB1aSBjb3VsZCBub3QgbG9hZCB0aGUgcmVxdWlyZWQgZ2kgcHl0aG9u
IG1vZHVsZQ0KPiAgIENhbiBtZW1iZXIgcGxlYXNlIHByb3ZpZGUgYW55IHBvaW50ZXJzIG9uIHRo
ZXNlDQoNCllvdeKAmWxsICBuZWVkIHRvIGluc3RhbGwgdGhlIHB5dGhvbiBnb2JqZWN0LWludHJv
c3BlY3Rpb24gbW9kdWxlLiAgT24gZGViaWFuLCB0aGF04oCZcyBweXRob24zLWdpLg0KDQpSb3Nz

