Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB75C83F1B
	for <webhook@archiver.kernel.org>; Fri, 11 Jul 2025 14:57:08 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.45])
 by mx.groups.io with SMTP id smtpd.web11.15937.1752245819736649521
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Jul 2025 07:57:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=G9OsLWT8;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=G9OsLWT8;
 spf=pass (domain: arm.com, ip: 52.101.70.45, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=ad0P+Ff8DrKwmfowdl74rvQj8cH18R+O/MRSF1/SBLasebqTbNSjfkkhhReRykpQRe0j33bSafrjGEaL9b1draU1qBCRpAQ19FAYwwi2FCGBc9mbz3zIDpg9B98Q4aNk5MA4aboD2HIRIuHgpwsw/FPIwReUpJgHLur+o/KhiSFZEteUHFhus6h/uaRtNpfmZk0YflszhxS2aJlXIw/efoHLcxJezNWMGniTbF2wRVs6ziX5ZdE5j1iqyl7FIwFkNXWhC/Wg6wP+n8Xp1pgTOQwkgffpiaF5yAVr3/LP6KhIVFHUmfhbVD7N9FoxAj/Kr2NapCSXFhDon+RJHA3wYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C7ZtslJV5VApJ3P1JK0YvU/fFSWT4u5+N3LVCQ7qaQQ=;
 b=ez3Ok7Hx0xiSLTjeBS4HKlGUBG+4qQI/hxQ/igXyAt3oOQw14+4i02wwgJfSUoitB5hUgb52BFxeCmM8SGGsauEdYhZCGtfOLZitHblZvWHieKMrBoZByLoKEWJrnlY2zFTfyB+byij90VBx08FVR2C3dtAKPMFCy7RDhZkaSXlSkgwmJteu7LmkJSoZF2GxvjSzEYNqFdGDcLCI2yX+gONNsLV2osgJMbF27X70M7v07DkGBDp4mNewJ0oqhZsjgpK+cTgfQiG3i2ERMMPDT+CHQRhRDiifx6+mnygFNDc4Wo6B9RXpnFD5fvE5CluR9y9QE1Osxg9DTpmIlZAjQA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=crashcourse.ca smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C7ZtslJV5VApJ3P1JK0YvU/fFSWT4u5+N3LVCQ7qaQQ=;
 b=G9OsLWT8/AxTaboiuByjyJ722d1RPak6eR0FOJZXLepJSI+aDLbJZdLEoGVlJ+Ro+Zdy7EaAPTOxWqjpmJJO/sGn68Iy2lB6lFcpyOc6ReTpVmg5SWv4kqn0ql7w/G/8rYUqPHrc073daq+gFHmMCclIdQuZetmdJL0ZzPfuC/M=
Received: from PR3P189CA0023.EURP189.PROD.OUTLOOK.COM (2603:10a6:102:52::28)
 by PAWPR08MB9807.eurprd08.prod.outlook.com (2603:10a6:102:2ee::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.29; Fri, 11 Jul
 2025 14:56:54 +0000
Received: from AM4PEPF00025F9B.EURPRD83.prod.outlook.com
 (2603:10a6:102:52:cafe::b7) by PR3P189CA0023.outlook.office365.com
 (2603:10a6:102:52::28) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8922.23 via Frontend Transport; Fri,
 11 Jul 2025 14:56:54 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AM4PEPF00025F9B.mail.protection.outlook.com (10.167.16.10) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8943.1
 via Frontend Transport; Fri, 11 Jul 2025 14:56:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=agjyVwxnVVIQls9biRU0/zFv6bjXJN9iSjnrLi5hxOqa/D43+NeAgqSQb+9rh/ignluonzwSOsTyaNo4XsYrLrFd+FSBXTkZArXrwu+HDXQxT83KUxkmEq3akwd1OCXNbVQSEMDK5ex9okTLQ0bwvB4wyjTK+zVaS2ZwQs8a+y4OToyyKbV5yONWZkmfrfIgLV3EFaVqydjLE+MeRF9e1o12p89a81226U6ouePCdWFdfh2tGfs0kyDatc+mqslnjFrA+OMHpcbPM8mnAFY054q7BhmOfc3hPzSWBOMaqBnOps+VZD0DVGekREoj9Am3TsPSlAzRhYkDtfQ/R4ur2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C7ZtslJV5VApJ3P1JK0YvU/fFSWT4u5+N3LVCQ7qaQQ=;
 b=IUdO6Za7MdjKsB8g792nYxzRxCRWo4UbQZaAX4QvOmzW3SZilWoQ8pM7M6xTJKH1r3BTojV3rjywGSjWzBrADfJ8u9Ew/Vy4FnyHoTBqO+sJsNY4ioDeJm00Ncsepfe2C17WjgbMacQfwFcbcRKkuZp9ocYASzzttoolNtSyJR+6tgh69X6Z4Anbbu9tIH0CoSDrjmoKdyLkIOl/tOKXmWcjucRG+vBW+dqja/As9UbK56KzncgQfkSLo88pAuh3TLagOZtFuYPjkv0qwwkUvHvSqOe2zzzm4c/Lt0dbUKGiDBWchBNPuWmjK59BajLAAItzLpe6ddLdik1ecWr/bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C7ZtslJV5VApJ3P1JK0YvU/fFSWT4u5+N3LVCQ7qaQQ=;
 b=G9OsLWT8/AxTaboiuByjyJ722d1RPak6eR0FOJZXLepJSI+aDLbJZdLEoGVlJ+Ro+Zdy7EaAPTOxWqjpmJJO/sGn68Iy2lB6lFcpyOc6ReTpVmg5SWv4kqn0ql7w/G/8rYUqPHrc073daq+gFHmMCclIdQuZetmdJL0ZzPfuC/M=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS2PR08MB9547.eurprd08.prod.outlook.com (2603:10a6:20b:60c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.27; Fri, 11 Jul
 2025 14:56:21 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8901.024; Fri, 11 Jul 2025
 14:56:21 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, Josef
 Holzmayr <jester@theyoctojester.info>, "raj.khem@gmail.com"
	<raj.khem@gmail.com>, Jeffrey Osier-Mixon <jefro@redhat.com>
Subject: Re: [yocto] Is there a YP RISC-V specific mailing list?
Thread-Topic: [yocto] Is there a YP RISC-V specific mailing list?
Thread-Index: 
 AQHb8MHysXa/Q/VCgkiNnLWDxoXz87Qp1TIAgAEuq4CAADRhgIABxlkAgAAE/4CAAALGAA==
Date: Fri, 11 Jul 2025 14:56:21 +0000
Message-ID: <D0E0DED9-A7EB-4BCE-9DCC-80625EED1C24@arm.com>
References: <7df607f8-189c-bf7d-c131-d2025e0293ad@crashcourse.ca>
 <CAMKF1sobdeYnURWOuHEqaEv_AtANnRb1K15rSkzZ-rrrP6nfOA@mail.gmail.com>
 <CAEt6NwpDEcFXJDHF7QhkV63k0D6sXOSErEuYNmiEt9TSPwOcJg@mail.gmail.com>
 <5600b61e-0170-b159-e31d-729ba350d0c4@crashcourse.ca>
 <0924DCB8-B1A3-431E-84FD-6A428B9F3950@arm.com>
 <e95f463f-0165-44a1-d386-4c3f0cccc087@crashcourse.ca>
In-Reply-To: <e95f463f-0165-44a1-d386-4c3f0cccc087@crashcourse.ca>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.600.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS2PR08MB9547:EE_|AM4PEPF00025F9B:EE_|PAWPR08MB9807:EE_
X-MS-Office365-Filtering-Correlation-Id: ed7342f5-a6be-4a41-3500-08ddc08b2ca3
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?czlXZFhXMFNSK1B1VXJWbHZUNXdGK1NtKzF6YTVlWEdEZkVHVTZvWHFONk5q?=
 =?utf-8?B?a1U3dmVvdHg4M1crTFNxUElxVmZnZUNPeXgyTkR0ZS9qR0xoWXQrQlF3dCsy?=
 =?utf-8?B?QUxsTU9jeEczYWtGekp5WFE3VEYwZ0Rwcm95R0ZqRVJDTm4vS0NGSEhYUEsr?=
 =?utf-8?B?ekFab0pReHJDNXFqZ3NlL1d1R3VKbFZmb3A5dm1HOHRmQkl4eVA5SkFhTWJ0?=
 =?utf-8?B?N2JSd3o3TW1DZXFmek4rTmZiY050UjA3RklFejRjT3lZUG94U0VOWWxCMi9i?=
 =?utf-8?B?VWQ5YnlTSmxxbm5lQ2k4bUYvV3VpYXBNaGdlMU9RcnVQKzMzL09YWld5UGQ0?=
 =?utf-8?B?VEdsQ3JHM2xqSk9Vd1FSbVBIZysvSFQ4L3kyeUx4c2dnY0xWVzlMbjVOWkdy?=
 =?utf-8?B?V0xTY3p6bWZwRktmTEk1M1hGbFJlZjcxSXV4RUVwcGJtVHNXVER6Tllmd2Vo?=
 =?utf-8?B?c0VkYWxjVVdidUNVdTk0U1E3UkE3blQvR0ZqVTArb0ZnU1V3bTRhcDNOTTFB?=
 =?utf-8?B?a0tzSnFKVVVlTTBLOW52UmIzQmdRdy9JcHU1WExrc1ZRRitaRGthWnNFdFp1?=
 =?utf-8?B?dGNqS0RvbEpDNmk0ZTlGVDdCc05ZaDBFWVVoTHFWTHdhRkJmMmEvRGZuVTRq?=
 =?utf-8?B?d09JekdmY2loU3F0dkFPV21ja0F0SEJzTm42am1BK3lMQUxOdFpWMmhiQjlj?=
 =?utf-8?B?VlR6ZHJDTiszYkJqbFZhU2lmTnd1RWVDR0xyb21zYW9TZ3I4YjZjcmZtUFNS?=
 =?utf-8?B?ZGVhTVlNL3lwdmx3T3Fyd3JDU2xBYW9ITXJVZlB5eW93clJkVC9rUnNxamtj?=
 =?utf-8?B?aDRKYlZMU0tMamZPL2dJWlNhNSsxN0h1Vk5NbTZxU1BTUzk4WGgzU0tURHdL?=
 =?utf-8?B?Y0xNUkxSSXVxK1lhR052UzYrTmFIc2lnN0JjdTNYcE94VHg4TGJpQ1hSb0FR?=
 =?utf-8?B?VjJ1OHR6TzR5TnNBcUJjbDB3azZ3RkZ2MmhTTHlZems2SUxYWGVCMDlTUEZS?=
 =?utf-8?B?OEtmS0VhT1VybW52SXNSSkV6aFB3L3U2T2FCNVNHNmEwbHV2bEpoS3FJdVp1?=
 =?utf-8?B?QjBMUEovdTMxQ3hHSll0cnBmRjBvaGdXOVhqRmtHWGh4TjhDeFZMY3l6NGpv?=
 =?utf-8?B?WitTZlFyTE54MjhHWlNyZWVRN1poMXZjeXpXVDkxeXdHN0hhVDd4aTd5QVRk?=
 =?utf-8?B?SElscVFZb2hLUWFPbW9sOER3eFIyTjVmYkw1YTUyRWQwc1hLU0J4dy8yMWox?=
 =?utf-8?B?dGhSRkRqeXJCMU1jZEJyWm9tWGZmcTMvUVNyNEZGQks1aHN4ZTAzMG5IM084?=
 =?utf-8?B?aE9ZTlBCaHQrQ2NqUmIrVWx4ZjA2YXhRSGFsblVHZGpLT3VPaWVJYVpMUTJx?=
 =?utf-8?B?WXdrMWdVL2tpanFnc2liM2xPOTBEb21acmE1cWU5azNxVVRJSzVKUEp3bi9I?=
 =?utf-8?B?SnVzVFhlejFPck0vTms5Y3VlWllMKzlZR3ZabXhNbTNVTDNoNk9TbTU5L1BB?=
 =?utf-8?B?SFVFcnVmazdJZjY5T0JvNURvd1VEd0JIVTdYMVp3U2IzemdxMFpjaDkwRnYx?=
 =?utf-8?B?OUxtYjhnSjZEZVhieHY5UUVNaUdNRFllY0tBUHVST2w3OXFzM2xnclJSNzBp?=
 =?utf-8?B?a0Jyd1NKREU5YUU4NnNuSUVoZmM2NmIxRjBRK3EvRUxFcUEwOU1yTzJvZDF6?=
 =?utf-8?B?cS9sTTk0N0RxclBtNGZ0R2kwMmsxRit3YzY3MDA3M0V2ajVTRDBnWTRtSGs2?=
 =?utf-8?B?NnFkUnJGRWZSbGxxcWNlNWQya1NNOTV6VElVTUhBbWZwRzUwUkwrN0h6VlNE?=
 =?utf-8?B?YmJzb3U2NTF0bnpBOHBOekZncS92dmN5UUFzZGRWbkowcnBxKzFXeCs1b3cy?=
 =?utf-8?B?eUM2YUdwK21sV0YwMGJpZ1JQMW1BL2NDUHA1RVZhWGhyWHhEUnRPdnUwQ1c3?=
 =?utf-8?Q?ammBjIthvI8=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <7603E06A28755843A860B0349380F711@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB9547
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM4PEPF00025F9B.EURPRD83.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	c42ebb25-4f7d-42b4-16cb-08ddc08b1953
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|82310400026|14060799003|35042699022|36860700013|1800799024|7053199007|13003099007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UFBpcXRReXJYMFg0MWMrTHdmUUtSZU1meERKU05qUUJmY2tQUUR0MFB4V2tm?=
 =?utf-8?B?ZVdoTEtVSVJ2eEFULzIwUnhNMFlMTE0zQ3Nabk5VMk9IL2VaaSttekJNbFpC?=
 =?utf-8?B?MWtPUmRlUFNUOWRCNGtnRHVNcGlSRUsvLzdUOStoNWxTUEYxa2VpbG5JblZX?=
 =?utf-8?B?Tzl2dytzRDdWb3UxWUU3MVVJbjJROFljaXRMVGdnREFURmtqdUFPUEJFaXhV?=
 =?utf-8?B?QndoMVdlblJaUjRNeHppdG93U290UHNNdUVUZG10Z1ZlclRTZjlIYld2clQr?=
 =?utf-8?B?ZWUzMW1yZmVvMnVZakE1dHh4WWRnSWxaVm1UZUNmRlhlN1dZTUdHMEE1MVhv?=
 =?utf-8?B?UGs1YS94ZDFGWTE5aHRpV1BadEJicExQYVFqWWJaWjBqdjlIaGF2c3J4M3V5?=
 =?utf-8?B?WWpLVURJWks1MlhyMmI2Nm5Xd2gzdnl0NVhxelFLOUpjN0pQdElHUGdoa2dF?=
 =?utf-8?B?Z29xRTNkNUZwYmxvMVNQL2ZMV3lvYVRERGpNSmdxNU5KcG9nZFpBUDFSU0F6?=
 =?utf-8?B?SWlWcGR0cXZwczJJMktSZWhwbjdXQzNNQkpacEN5bHhFcFphTnQ5a2toTmJr?=
 =?utf-8?B?MWFrRnY4blFzTVI5WWtVR1hURGZ2VDQzWXkyanUyckJ4OW1KTy9Fby9IaHdG?=
 =?utf-8?B?Z0xxOFg2VTRzMWh4RXUwZXVGSWtIRjlwZS8vRGNBUm9KbXc0ZkkzSVV0L0k3?=
 =?utf-8?B?bGhNYnpHbGhReUJZa3pIM3dlMDNhVE9uVG4vRm9nOEpzNnNoT0s0MDZsOFFo?=
 =?utf-8?B?c0EwMjh5Q1JjeUNmOWc0UGxXL29DazcyOEZvbmpTRFhKSXh2aFQzc3ZVWDRr?=
 =?utf-8?B?eThWcE1XZWsvbTRTQitaakZnc0FuT2ZGQ3ZKR08vSENmbkxRTHJhUk1PUUhy?=
 =?utf-8?B?ekVkeTl0V0ROWlNPV3lVZ1UvaWhlaXh3enpKTmNsUmwvbjd1Ykh2d3U4TTZ3?=
 =?utf-8?B?N1BBc3QwanZpaXZoc3piT1RRQVREUGpDRWhqK1h5Y04yUUt5T0c5QTAydHlR?=
 =?utf-8?B?QlpQS2RxUm9UUXF6ZExLcUlFeGhyYUhka1I5SlNNYm5KSHUxcWJIYWJMV1dT?=
 =?utf-8?B?dmllOUd5WDhwZ2VHTVNaZFhieFFJSTZkbWpReTZxL0oreGRIRXBiUG8wT2Ro?=
 =?utf-8?B?Z0p6SXROUnFQRU9Gd0JWUnY2YTdUSG54RTZDNmNtSjNhbEIyUmtmbDZKOFpZ?=
 =?utf-8?B?NVh1V1VER0xVd0VuK2w0T0NpSlFOenk2MXVaTkk4MlNSVzJhUUw2VXBHbUpx?=
 =?utf-8?B?K3NmMm5XQzlhS1dsV2tMVGZtWmoxOHdrcUtuelM1VkRJQkFKajdpWUFZZ1JY?=
 =?utf-8?B?NXVjNzdBNU1mRVY5VU1Gc3huZ0xRK3Z5Um1NazJ3TmwzcjJkKzMvSlZjbHVK?=
 =?utf-8?B?MmJRV3o3UWI2cGI3aDBkWmozOHJwMWNBQjVSWEo2QkNXNWlScHRHRFpFR0l4?=
 =?utf-8?B?WkFzTy8weEV5U0lxYWZoR0haRFhpRlVmaWlva2hmanBiRFcwLzkxait2OExj?=
 =?utf-8?B?UUVEeW9zRmdoN2V3Vi9YN0pKaUk4RlRNdE12a3Vsc0htYlY4bHNJcnkzRU84?=
 =?utf-8?B?ODR4ekdiUW5QTHBUQngwZFQ5dGRONVpnK29kRGRrK3dGbFNiMXUwRnc2TTFN?=
 =?utf-8?B?cE9NVlB5c09kN3VTbjRvSXBnRzh1dVRTSEM0Uld3SWpBRDh3QnZndjA1OS81?=
 =?utf-8?B?NXN1NUhRUTJYRGFLWjVJeFJrK3Y0ME9EdWs3M3RsZEJ5aXZLWmY3cGwyamlP?=
 =?utf-8?B?akRDd2s4c2UxWHNpWjJxRm5PaGt1WWhvL1NGVnVGUVJUcTV5Y1N2d3g3dVY0?=
 =?utf-8?B?elQ5T2FzN29HNkMzcFN6aHY2TVpOeTBsTmZGazZGS1dWM2xqMDExZ1VXRmdh?=
 =?utf-8?B?LzgvZXVDNGVRQmo0TmhtZ0NYM1lMSTBHL0ZCZTcyL2NJZDZoRnNvMVY4NlVS?=
 =?utf-8?B?cG5lTzZWUDB2WlVUL2hXTW40WTJyVGgyTVlFd05SMEJXRGEvOS84MU90aVMv?=
 =?utf-8?B?NjBtRExjeFhBPT0=?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(82310400026)(14060799003)(35042699022)(36860700013)(1800799024)(7053199007)(13003099007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2025 14:56:53.7436
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ed7342f5-a6be-4a41-3500-08ddc08b2ca3
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM4PEPF00025F9B.EURPRD83.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB9807
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Jul 2025 14:57:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65644

T24gMTEgSnVsIDIwMjUsIGF0IDE1OjQ2LCBSb2JlcnQgUC4gSi4gRGF5IDxycGpkYXlAY3Jhc2hj
b3Vyc2UuY2E+IHdyb3RlOg0KPiAgYnV0IHdlICpkbyogaGF2ZSBzb21lIGFyY2gtc3BlY2lmaWMg
TUxzOg0KPiANCj4gaHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9jb21tdW5pdHkvbWFpbGlu
Zy1saXN0cy8NCj4gDQo+IG9yIGFtIGkgY29uZnVzZWQgYWJvdXQgdGhvc2UgbWFpbGluZyBsaXN0
cz8NCg0KVGhleeKAmXJlIGZvciBzcGVjaWZpYyBsYXllcnMgKG1ldGEtaW50ZWwsIG1ldGEtYXJt
LCBldGMpLCBub3QgdGhlIGFyY2hpdGVjdHVyZSBpbiBnZW5lcmFsLg0KDQptZXRhLWFybSBpcyBz
cGVjaWZpY2FsbHkgbWV0YS1hcm0gY29udHJpYnV0aW9ucywgd2hlbiB3ZSBkaXNjdXNzIGNoYW5n
ZXMgdG8gdGhlIEFybSB0dW5lcyBpbiBjb3JlLCB0aGF0IGhhcHBlbnMgb24gb2UtY29yZUAuDQoN
ClJvc3M=

