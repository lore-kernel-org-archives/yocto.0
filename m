Return-Path: <matthias.neubauer@sick.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B8CC3ABAC
	for <webhook@archiver.kernel.org>; Tue,  6 May 2025 14:31:45 +0000 (UTC)
Received: from mx08-001e4f01.pphosted.com (mx08-001e4f01.pphosted.com [205.220.185.191])
 by mx.groups.io with SMTP id smtpd.web11.77728.1746541896623126348
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 May 2025 07:31:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sick.de header.s=2021092101-mgw header.b=Sx5FPetB;
 spf=pass (domain: sick.de, ip: 205.220.185.191, mailfrom: matthias.neubauer@sick.de)
Received: from pps.filterd (m0277714.ppops.net [127.0.0.1])
	by mx07-001e4f01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 546E8bsE010443
	for <yocto@lists.yoctoproject.org>; Tue, 6 May 2025 16:31:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sick.de; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=2021092101-mgw; bh=ZVwBCVG0DG1vVRlzS
	BDAaGa//hGGm5pnjz619qsX1Tg=; b=Sx5FPetBjfbW/04W2E8bEp0uuAUSTS+yW
	CPE7YUQHQmTcOYzfQEcadT7HXlVYlnxPbyzoaETgmXO2T8cxolV1n5bvr3mD5v7C
	+WJEo8anJjR17FmxXc+MEoYAi3X7y22Efausg7koFIDfOYSgJ50MMCb7+xmB1C6D
	zgRDrXkMPIeC2DWQSpDlhhnh72JrK3GVZANr1PYRrbdq0GOqmqlit2wv4jRoS+Ub
	qR+Ag5MO0MAx5gQZYzg+MZGKz/4FnaaoBSpD1A0+OMX3SmFosE/OTx+TT8mvNpbl
	OlcibDMgc8Vz64lbIrN/8srP4PaM1L25Nfsc/DtqD0eNwR0E3xGdQ==
Received: from fr6p281cu001.outbound.protection.outlook.com (mail-germanywestcentralazlp17010002.outbound.protection.outlook.com [40.93.78.2])
	by mx07-001e4f01.pphosted.com (PPS) with ESMTPS id 46d9yk63n4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 06 May 2025 16:31:35 +0200 (MEST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F5IQ8TjwLI4OVPxWOSBrBjykueQ5AqZZu4diTlBupp4NU+919CP9hpPZyniDh2hEOMkKLn9Mdtc19gaanit5PSrtyak4LZhWkxh+u/Q3gtDqBU9OqQC0C1nyhRf4IqEXHEHRJSHfCICoZxr3OmugFcpm8jBn+/iLlRDp73PZVfcNhaA3VPbQYN5XurEbTZ/SAQxkO3NbCTN5DJE/MmTh4B8NO9vOvIvriBDTcAWoqsAleNDfILlVEsCiRvF+nIpBE7dSd1SMjizUXGWJQacvUu3KtIXAbSK16wVGZB2BGbxkyORI57qTQDc3AWBwuNTBQhboe6TnhRHRDVQT6crxTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZVwBCVG0DG1vVRlzSBDAaGa//hGGm5pnjz619qsX1Tg=;
 b=ZVjW7KOl8zcA5UUKtNNiux7KQ6XQVZe7y7IhrXRrpjJ/607skGQx2Jqh+m0SbyQ2VOxUp4J+NNCm0y+Oeev/SWeg9kcXTbXMYhoELmDyPBhYsILesXLSvEXnpQDFFDwOlW0jeABx0/Vg2zI4eHAFq+5AlDvztGiDrdIuXV5k1MYMjHMus8yfJCFIhmHo4Z87MXGBmVonb7XJm//EF5uD5oYpymBtJTkZXXkDGYCC2BC04mzbhdvWCSVoTP3DmNHg+NU5dkt9zovueaCIFfWhfMPkanYcue9RuYBqFVcWHAQKiGSzf/tsRF8JZLREivkCkqDAzQzxWgu2E17XVsWJlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 51.104.160.93) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=sick.de; dmarc=pass (p=none sp=none pct=100) action=none
 header.from=sick.de; dkim=none (message not signed); arc=none (0)
Received: from FR2P281CA0147.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:98::12)
 by BE1PPF2DED18620.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b18::621) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.24; Tue, 6 May
 2025 14:31:32 +0000
Received: from FR2PEPF000004F0.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98:cafe::fe) by FR2P281CA0147.outlook.office365.com
 (2603:10a6:d10:98::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8722.20 via Frontend Transport; Tue,
 6 May 2025 14:31:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 51.104.160.93)
 smtp.mailfrom=sick.de; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=sick.de;
Received-SPF: Pass (protection.outlook.com: domain of sick.de designates
 51.104.160.93 as permitted sender) receiver=protection.outlook.com;
 client-ip=51.104.160.93;
 helo=xwaresmtpservice-6f457cb4c8-5bmzr.xware-eu-k1-north-1.o365.crossware.co.nz;
 pr=C
Received: from
 xwaresmtpservice-6f457cb4c8-5bmzr.xware-eu-k1-north-1.o365.crossware.co.nz
 (51.104.160.93) by FR2PEPF000004F0.mail.protection.outlook.com
 (10.167.240.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.18 via Frontend
 Transport; Tue, 6 May 2025 14:31:31 +0000
Received: from FR4P281CU032.outbound.protection.outlook.com (40.93.78.48)
 by xwaresmtpservice-6f457cb4c8-5bmzr.xware-eu-k1-north-1.o365.crossware.co.nz
  with Crossware for Office365 id f7d18d6e-e76e-4a49-aba4-6781e2245655;
 Tue, 6 May 2025 14:31:31 +0000
Received: from BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:38::9)
 by FR6P281MB4490.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:12f::14)
 with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.8699.26; Tue, 6 May 2025 14:31:30 +0000
Received: from BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM ([fe80::1dfd:14b7:f7b7:e15])
 by BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM ([fe80::1dfd:14b7:f7b7:e15%6])
 with mapi id 15.20.8699.024; Tue, 6 May 2025 14:31:30 +0000
X-MAIL_SIG_CONFIGNAME: SICK AG
X-MAIL_SIG_CONFIGNAMEPLIED: SICK AG
From: Matthias Neubauer <matthias.neubauer@sick.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Install externally built .ipk packages during image generation
Thread-Topic: Install externally built .ipk packages during image
 generation
Thread-Index: Adu+k26Ukj981tFsT5+wLQYfqajvRw==
Date: Tue, 6 May 2025 14:31:30 +0000
Message-ID: <BE1P281MB19077BC8D4D9AF1D12514B13E989A@BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-MAIL_SIG_CACHEID: 59383
x-ms-traffictypediagnostic: 
	BE1P281MB1907:EE_|FR6P281MB4490:EE_|FR2PEPF000004F0:EE_|BE1PPF2DED18620:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b17cbac-4cb8-4bbf-1729-08dd8caab234
X-MAIL_SIG_ADMINUNIT: none
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?QktnNTJBTUZsTFZMaWdwREhpN2h1Z21pV2c5OTRCdFN5K1htMU9NbjFiSVkw?=
 =?utf-8?B?YlVFYU51Z3BjVHRtanFUTWJPL0MrSjYxRWM4blYzMlBtUWpsS09vMERSa3pX?=
 =?utf-8?B?bnpDZzk1T3VTZURHeHJ0cy9IR0pPNGRwUGloSmJESjF3RDkvTTI3a1hNcGNj?=
 =?utf-8?B?eFpuRFJzQjdhZkp0ZG8vQ1FxNjFiWWNtK2Rsb2JXcmtiWnZ1a2tsSzJPVlRj?=
 =?utf-8?B?bFkzWks5bGpja2hiLzZzREF0bTFYQW1ZVmlzMzNWYVNWY2VzODVpNktqbTlD?=
 =?utf-8?B?MTNZOXNkVTlBcVAvVjIvVnNFVXdZdU1mMFNJUklyQjV4QzRSdjlzcFo5Vmwr?=
 =?utf-8?B?Z1UvaFBUZmhGTzRqRTNleCtLSG9DeU5EdG50by9NQ3o2WlRvcmkyZ2tSUEgv?=
 =?utf-8?B?aWhGQ1JwdTluaURqN2taYWVyRGJySndCNjlFb3cvZURvQTNrQjNOYkdqNE1u?=
 =?utf-8?B?aXl4Mzl4Q0ErYUxWRVBDREQxSU1XNjRzSjVyT0YzQlgzQ0lmWkJWZThRMFF0?=
 =?utf-8?B?VDN4dVBqei9KR1hyZjZ6N2VrQ1pCY1U3TVpvakFxU3VLQmxrRHhQaTI1MGl1?=
 =?utf-8?B?Z3QwQjdZQ1BRWm16aHNlbXFBNVJrb3FubW1QZ2hlR0dNdkp5ZlAzWlJvWjRs?=
 =?utf-8?B?bDBraExTUTlUbjQ4VGhzT2c2SVViYWdFRCtacFZoMkpCenZsS1I5YU1JVzky?=
 =?utf-8?B?UnRaajI5SnhhaEtjc2lFSW5FV0cwQ3pKN3dJdUZ4NXp3VGFlWEQxRjFmVFhi?=
 =?utf-8?B?a2J2ckRYeVIvalduUkNlVzYyZWpuNUR0QXloNmxwWlJ4NnlKdHV1c0RqTnZw?=
 =?utf-8?B?bDcyT1RjTlB4Rm1XdnBvZ1VxUEk5UUd6M3F2VFJzR21TZlVEUzRlS1Jmck9w?=
 =?utf-8?B?S2hCNUkwYU56Z2d0eE5UZVNwc3JEZW02dkxEajFiRjA0enZrVnVqQmtHZkkz?=
 =?utf-8?B?MGcrRGQwRjduajAxMWoxNzlnRnduK1RYbk0vZFcwWkVlZDBsVjBmL3p4TE9h?=
 =?utf-8?B?NDJ4ZW9DV1NoUVdjU3ltb3c1RkxOUkxkc2JoU1Z0dURSM3N6VzJuK0Vyem5m?=
 =?utf-8?B?N2NaeldZRkY4MjFpc2J6ZHpmcU1vYTNBSmNzdGlmcEUycEtnaTFBeVk0MEZ3?=
 =?utf-8?B?S205N2NhK1kvWmNBamk5eXBKckZJYUdiZng0bHNhUE1SUVhBd0hyRVZBTXp1?=
 =?utf-8?B?N0hLUUM4YkFJQkt0STlCNXpjMGo0TytwVVNGWmRkUVhONUZMMDkyKzByUU1x?=
 =?utf-8?B?T2NXdU9HL3FOTmVQZHBvemlVZ25VZmFmVnFaQzUrZUdLWW9QWUFISllYVlFl?=
 =?utf-8?B?T3V1RVhrc012TjV5UFBRVi9QMk1ZT1Q2K2oxWC9oOTdLTmhuM09GdkQ0Q1Fo?=
 =?utf-8?B?STZxRGJDSXZLbmdsME9TMnFSWldZUzVnaHA5NTR5T1VxcCszRUtoT3M3Z1Fr?=
 =?utf-8?B?MFNPc0l6aFU0MVJWZThuVi83Ylg5SXhJeTBnUUFsS0V6Vk9EclRxM2N3V0RW?=
 =?utf-8?B?M1BCWGJ0Rnk4S2h6R0lXZVIzTGlwVTRYR3lETGxXRk1IcXNSbTNsckloS2lP?=
 =?utf-8?B?NEQxSlQyTURsNlB0Znh1bTB5ejdRNDNXN0V0Zkl4V2Rya21yc3VoelhKeXc0?=
 =?utf-8?B?Smc4VzNRZVFjUEh1ZkxrM1JtdFZmdUVRYlI1bm1nL01jczhEZFdIWk9oNUlV?=
 =?utf-8?B?ejVWQUdNZXdZWE5GQU9sd0dZMTBRTldFSUIvV1FWQkV6K2ZaR1pQTkM4dTZ4?=
 =?utf-8?B?LzZsbnErYkJVOWZUSS9TcWZMMXEvUGhPeElMdHJSZE1hTmptSExoMmwrWE9j?=
 =?utf-8?B?VGUvdytzTm50R01KYkJUVjBkN0NNcDZnQmZCMC9FdjhLTnVnQVUzdHVVN1p0?=
 =?utf-8?B?cWhLakhySG00ZjluVW1vVWMyd01WYXd2VmFHUm9HYjkvUFluK25Sc0Rick95?=
 =?utf-8?Q?78FgBXmQZH4=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
X-CWesigProcessed: Y
X-MAIL_SIG_VERSION: 0.2.855
X-MAIL_SIG_SERVER: xwaresmtpservice-6f457cb4c8-5bmzr.xware-eu-k1-north-1.o365.crossware.co.nz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR6P281MB4490
X-EOPAttributedMessage: 0
X-CrossPremisesHeadersPromoted: FR2PEPF000004F0.DEUP281.PROD.OUTLOOK.COM
X-CrossPremisesHeadersFiltered: FR2PEPF000004F0.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 FR2PEPF000004F0.DEUP281.PROD.OUTLOOK.COM
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	5a1376ea-261c-4a69-4c54-08dd8caab13f
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|14060799003|35042699022|376014|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UTFyREtaRmJ2aXJjbHFWY2I4RGxxd1RlQ1dOMzZxcklZd2x6bmNTMFlpL2I1?=
 =?utf-8?B?ZTcyWCtpQ0E4bXJ2YkpPZ0I2bUI5YWdkUWlwd1JpMUFTd3FBZFlJSE55UHRu?=
 =?utf-8?B?WHNEM0EvcUEzTU1OdFlQa3EvbEt3MVNuRUVxdTE1clRJQVRFR25QZENGRnVR?=
 =?utf-8?B?V1VBWlMvNFdUNEJRWXRqOVFqTmQyUEphUmZNM1I0cGFleG16ZTZIVTJnQkNr?=
 =?utf-8?B?U1pJRnYrR1FMNEFOZG1XcWZXSFdYRHIxM1BtQkJOWUdNYk14NHk2N21OdWoz?=
 =?utf-8?B?bks4UUdzaXZROUczYUVWdXBxZDl5WTk3U1UzTnBOVE1qM3A5OHg5QXRiZDdZ?=
 =?utf-8?B?WTlGbStBNWkvZWd5dFNxMWtmc3EvWWlSMWkyRWhTT3loNHNUbVJWclk1QVlt?=
 =?utf-8?B?RmlPbklmZysxSm5wd0gzd2RpZkR4RDJxZmZZZmduak1Ya2hEMjdic0o4S2JH?=
 =?utf-8?B?K1dQSVVqNHdOd01jQmhlVk9CR2QvTDRmcmw0c1JXdzdtM2tyajdQNEMrcjc2?=
 =?utf-8?B?WUtZSENRZCtiUExvYldPZmJ5UzE0WW9IalMzM3FGbUhHQVRJekE0RVB3anV2?=
 =?utf-8?B?b3lLd0c0Z28ySUd3MHI1YmpqMzJlTmFWTTd4ZERNQjZJYUhSNEtvZ1d2ZEhl?=
 =?utf-8?B?TElTVXNHZmZJSGluaDR4azg1Zzl1bWNUZEtERTE2SzlVL2FnOUZnL2RjNzJa?=
 =?utf-8?B?V0ozOTd0YnJaZWJQODNvak94aCt2WGtSeHQrRXZuVXczSXpNK3lXYWpScytT?=
 =?utf-8?B?YnRMd0liSlR0NFpRaU5qUjNpWXBZNWovUlJJS213VTdRZE5wTytuNVdhcm51?=
 =?utf-8?B?Z3ZwY04xbS9GMHRSYkVhd0g3bllHUDFFd21OYmRlWjl3U2dOZ05hSDRpS2dI?=
 =?utf-8?B?SDJBakNQaHRTWDZ0VjBNbE1kZlNNU0krMkx0djlZZWs0SHJ3a0I0UG10T3Nj?=
 =?utf-8?B?OEpFSlZ6SGJjcmp1RWNrNmo2YitsUlVRYnVhZnlYOWVRNCtYWlFSbTljYVRm?=
 =?utf-8?B?VFBmWmlSeG1QdUg2dWY0b1c2UnFtcUR4d0ZnTDgzOUpCVWRHRGpONUVoK29k?=
 =?utf-8?B?NEZRUDFubFk2L1MzL09LQy9EbncrY0Q4b09wYnFQdXNwOXRaUUREa2I5akh4?=
 =?utf-8?B?YjdsWDJrRkZHTEtmVHMyWmRWSWUyRUliSkhTSi81Q1BldTVQNGhhRTB6T1VV?=
 =?utf-8?B?dkZrSUU2MlN4UXF0SVdTQ0tXZEFubVdBajlTRm5nWmFtYmdqbjlaZERhTGgw?=
 =?utf-8?B?V3BtWmdpNlhGZFpTTmszZmQ3b1VUR3d5K2lsTXVCWjVudHBwZGdFSWM0TU9X?=
 =?utf-8?B?SkhtSVFWVzJGZksxb3dEbW1yUS96clMrMm1ZVTlLcTJ5ZmorQWV4a0JsOVVS?=
 =?utf-8?B?MS9GaFVrbWU2YUZTcDRIeUxMRmpJeWxrMDVnSzk5Uk44dWpaNWo0OWtZYW8v?=
 =?utf-8?B?dnRCb2lUWHM2aVRYajFjdVhjVjFKdjA4WHYxeDRLa0RJeWp2NHhZOWhySTly?=
 =?utf-8?B?NWIrdzRsRWtiRXZEbVdCbUxVZW1XQ0hDNWdqbjBUZE03R1pvNktqZXpvMkFI?=
 =?utf-8?B?UU9sYnFUck82Z3lhQnVKT2l1eWV5MVlxUUR2OUhReWZBVis4K1lhaWFCVEov?=
 =?utf-8?B?NUlCZ0tJanUzOGY1a0htVk43SlJwRlhtOE5lU1YzNkNRNmp6akMyYmJEYzdZ?=
 =?utf-8?B?eGJ0U3RBYi9EYzBMcy9lRTk5bkJrTWdmK2ZxTk5pYjZ6RFpzTFRjSmtIUVJo?=
 =?utf-8?B?Z3hPUU9Kd2JUV3lhTEpPcWdrUTlUVUhmNXM5R3FOWlFoNEUwUEd1Y2NaSDYx?=
 =?utf-8?B?dmZ1R2JUWHpFS0JHMXNoRU5UZ2xzV1FlWS9PZWx4TnEzTjl2ZHIwMklhWFJV?=
 =?utf-8?B?WC9yMGFodlFWcGN4SjRScUdaaEYwWUJmWG1kbUQ0UEVkM2Y0T0l2WkxaV1Yw?=
 =?utf-8?B?azRMQWFrUXZUaHE2T3dORFV0UnVHVmpDWURzakhObG90UUduUm5MM3FwQmlT?=
 =?utf-8?B?TXYrZThsR3d3PT0=?=
X-Forefront-Antispam-Report: 
	CIP:51.104.160.93;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:xwaresmtpservice-6f457cb4c8-5bmzr.xware-eu-k1-north-1.o365.crossware.co.nz;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(14060799003)(35042699022)(376014)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	pzGJ98iu8xcueovDKXsBfvGTZKa5T9MU2w6t1B92GqZUYRfPyrooJwxFRL9uIgr5pfKN+cC+KED7tOALj0vk9cyY++o9oTCS3+VTn2/A1zM7BBuLbuKCbG3F4zfS7LAmantcL2oExpNp31a0u+ujUC/Ar1+XLB1MMxvoQ4gYAFlMIncgCbnLTAEJp5xUXFkXpMXazRUl5clHDqUYpBZ8Zq8mR2XLX7zvhJB5Cf1k4mWTYlFvj6R+UKfAeaCN6b7UsOOTxJjF3WbvkhQZLhvOWkC7dmDJDh5O89e+d2ktkrX/nnIqLJuWKYyLgImhXeyAZdNdJzEZJolp7jt7xm2MFvveyxquEdq6MqnIESErhK20nQWbuskwAlNamSdhKmB+80/X+g7maRiFIb9fKqV/jVozKR3QqadiSjNhqNo34KS53rB6I5YQv35uXkCA3++mVvaemjEw4mV6mUDNzBIJ9AsMw5zY/b1VtFxVMhH3O+K0KFP+6FZ5qrV1FnK5B3LSlt3uyC1etpq12eIhiic2gWXtWtLf3GFzAJ7hfgYZ9itGsHNTVgChA+D6FTowx3rosQECtj6UIxYjY2RzaGAX+zv/0kayNzCRT69FElgAfb+uRPK8rjTBU7BTWjSHAzej/Qu52BjG4xEwQIGsqcARZQ==
X-OriginatorOrg: sick.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 14:31:31.8064
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b17cbac-4cb8-4bbf-1729-08dd8caab234
X-MS-Exchange-CrossTenant-AuthSource: FR2PEPF000004F0.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Id: 149acf93-d7d8-49e9-aea4-e48d6d0dae68
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=149acf93-d7d8-49e9-aea4-e48d6d0dae68;Ip=[51.104.160.93];Helo=[xwaresmtpservice-6f457cb4c8-5bmzr.xware-eu-k1-north-1.o365.crossware.co.nz]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BE1PPF2DED18620
X-Proofpoint-GUID: hniHkEDpNOX59hMVURZualcjoqPwj1fV
X-Proofpoint-ORIG-GUID: hniHkEDpNOX59hMVURZualcjoqPwj1fV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDE0MCBTYWx0ZWRfX7NvxPUO7u1oP
 DLyUIlcwy6N3VK4YOVtmCsNo2JkTzliUMdej32vQox3F6930mzXTcd7srhOsEJDdI77ZMvYxrHS
 qAKNgD9rbpd4vtrz9cbhfsLpGabCYVa+3VOfaZdjONTRM5KSrKMH+S1u3oRDM+odubALlq8T5nC
 NuY1TLJ6DummCB8g4wZFb/fUi0N8PUDaLxaYH/ivHxlFHrfqYqyRt+zAsFJT1IsijH5a5xG2Eai
 j8YqPBWPlKugHV7ocXNlk1FnK5vsD+6d8d+VgQQ5xWpHxa3klZFoZRbnGwJBuLoh7w7AYL6ScLj
 wN/9iXmz8+mukc/n9ZMoOj+cLAS9LePfugolzQ2Rq2ofPrmbgFF8qJUdW0GRKLxZHB8a1/KfyN1
 n2MnDf/I+7MbnxQ0XI8V31sPDt7qJVH/vHJQPyEUy1JDRfre55hZewFopsgA0IkIBw85pJ5x
X-Authority-Analysis: v=2.4 cv=ObCYDgTY c=1 sm=1 tr=0 ts=681a1d47 cx=c_pps
 a=0LZ7NR+NqZo5cK6wyl/Gqw==:117 a=c1ZRfG1RmQFzPXQupEc97A==:17
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=s63m1ICgrNkA:10 a=F08PkAPK9d8A:10 a=iGHA9ds3AAAA:8
 a=__reGKuPAAAA:8 a=kE0grCNpuVR5lPmLDF8A:9 a=QEXdDO2ut3YA:10 a=XM2Ojvwjc1kA:10
 a=nM-MV4yxpKKO9kiQg6Ot:22 a=ZWq3DkvqUpLo1-QMl0b1:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_06,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 mlxscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 spamscore=0 suspectscore=0 bulkscore=0 mlxlogscore=999
 malwarescore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505060140
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 May 2025 14:31:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65285

SGVsbG8gZXZlcnlvbmUsDQoNCmZvdXIgb3VyIG93biBZb2N0by1iYXNlZCBMaW51eCBkaXN0cmli
dXRpb24sIHdlIGFyZSBnZW5lcmF0aW5nIGFuIFNESyBmb3IgZGlmZmVyZW50IHByb2plY3QgdGVh
bXMgdG8gdXNlLg0KIA0KQWNjb3JkaW5nIHRvIHRoZSBkaWFncmFtIHRpdGxlZCB0aGUgIk9wZW4g
RW1iZWRkZWQgQXJjaGl0ZWN0dXJlIFdvcmtmbG93IiAoc2VlIGh0dHBzOi8vZG9jcy55b2N0b3By
b2plY3Qub3JnL3doYXQtaS13aXNoLWlkLWtub3duLmh0bWwjd2hhdC1pLXdpc2gtaS1kLWtub3du
LWFib3V0LXlvY3RvLXByb2plY3QpIGl0IGxvb2tzIGxpa2Ugb25seSAic291cmNlIG1hdGVyaWFs
IiBmcm9tIG90aGVyIHNvdXJjZXMgKHN1Y2ggYXMgZGlmZmVyZW50IHRlYW1zKSBpcyBzdXBwb3Nl
ZCB0byBiZSBpbnRlZ3JhdGVkIGludG8gaW1hZ2UgZ2VuZXJhdGlvbi4NCg0KSXMgdGhlcmUgYWxz
byB3b3JrZmxvdyBzdXBwb3J0ZWQgc3VjaCB0aGF0DQoNCiogdGVhbSBBIHVzZXMgdGhlIFNESyB0
byBkZXZlbG9wIGFuIGFwcGxpY2F0aW9uIGFuZCBwYWNrYWdlIGl0IGFzIGEgYmluYXJ5IC5pcGsg
cGFja2FnZQ0KKiB0ZWFtIEIgY29uc3VtZXMgdGhlIGJpbmFyeSAuaXBrIHBhY2thZ2UgdG8gaW50
ZWdyYXRlIGl0IGludG8gYW4gaW1hZ2UgZHVyaW5nICpidWlsZCB0aW1lKg0KDQo/DQoNCkkgcmVh
ZCBhYm91dCB3b3JraW5nIHdpdGggcGFja2FnZXMgYnV0IG9ubHkgZm91bmQgc29tZXRoaW5nIGFi
b3V0IGluc3RhbGxpbmcgcGFja2FnZXMgZHVyaW5nIHJ1bnRpbWUgKGFrYSAicnVudGltZSBwYWNr
YWdlIG1hbmFnZW1lbnQiKS4gV2Ugd291bGQgcHJlZmVyIHRvIGluc3RhbGwgdGhlbSBkdXJpbmcg
YnVpbGQgdGltZSB0aG91Z2guDQoNCkJlc3QgcmVnYXJkcywNCg0KTWF0dGhpYXMgTmV1YmF1ZXIN
Cg0KTWl0IGZyZXVuZGxpY2hlbiBHcsO8w59lbiAvIEJlc3QgcmVnYXJkcw0KDQpEci4gTWF0dGhp
YXMgTmV1YmF1ZXINClNvZnR3YXJlIFBsYXRmb3JtIEFyY2hpdGVjdCB8IEF1dG9ub21vdXMgUGVy
Y2VwdGlvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
DQpTSUNLIEFHIHwgRXJ3aW4tU2ljay1TdHIuIDEgfCA3OTE4MyBXYWxka2lyY2ggfCBHZXJtYW55
DQpQaG9uZSArNDkgNzY4MSAyMDItMzk0OSB8IG1hdHRoaWFzLm5ldWJhdWVyQHNpY2suZGUgfCB3
d3cuc2ljay5kZQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQoNClNJQ0sgQUcg
IHwgICBTaXR6OiBXYWxka2lyY2ggaS4gQnIuICB8ICAgSGFuZGVsc3JlZ2lzdGVyOiBGcmVpYnVy
ZyBpLiBCci4gSFJCIDI4MDM1NSAgfCAgIFdFRUUtUmVnLi1Oci4gREUgMTQxNjUzOTYNClZvcnN0
YW5kOiAgRHIuIE1hdHMgRyZvdW1sO2tzdG9ycCAoVm9yc2l0emVuZGVyKSAgfCAgSmFuLUguIEVi
ZXJoYXJkdCB8IEZlbmcgSmlhbyAgfCAgVWxyaWtlIEthaGxlLVJvdGggIHwgIE5pY29sZSBLdXJl
ayAgfCAgRHIuIE5pZWxzIFN5YXNzZW4NCkF1ZnNpY2h0c3JhdDogIERyLiBSb2JlcnQgQmF1ZXIg
KFZvcnNpdHplbmRlcik=


