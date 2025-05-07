Return-Path: <matthias.neubauer@sick.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38D07C3ABBF
	for <webhook@archiver.kernel.org>; Wed,  7 May 2025 09:50:42 +0000 (UTC)
Received: from mx08-001e4f01.pphosted.com (mx08-001e4f01.pphosted.com [205.220.185.191])
 by mx.groups.io with SMTP id smtpd.web11.4751.1746611431850419530
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 May 2025 02:50:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sick.de header.s=2021092101-mgw header.b=key8/Hxb;
 spf=pass (domain: sick.de, ip: 205.220.185.191, mailfrom: matthias.neubauer@sick.de)
Received: from pps.filterd (m0277714.ppops.net [127.0.0.1])
	by mx07-001e4f01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 547101Xe026981;
	Wed, 7 May 2025 11:50:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sick.de; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	2021092101-mgw; bh=cPQjeZPGJBPPYxxfUTgKDWtnUtfb7vM2Ja9G2gE2kpI=; b=
	key8/HxbXEw2fHI+AO07/V2/+S1gW7E6K1boo4tWECGWAVAkC9hyPuZlNDUJT/MH
	FMCY6Zx9s6Z7jF21rLixEZOQyFDM36zFrVJlJSXgdD1yokEIuSFkuwxy1m+F3pow
	BFjBjVpsvUpWczgyEZutv+A++LcFykwVlKgxqytLhN4Mz17BfhkjOVxmZUj6zS8b
	QPn4QfoXlJMtQgDWf0hFX0BvkXa3rFlu406tqyNATBbAT/hRboU+l+gFQ7W2b9F5
	Z8ZOpIoID2HpI7JT8aXeGqBpZ82OohJ5ot8EgrPOblN3Cf79PPgUas2ZRrNZmJ2T
	HRRyy/ty7yZTnGDreo1IQQ==
Received: from beup281cu002.outbound.protection.outlook.com (mail-germanynorthazlp17010002.outbound.protection.outlook.com [40.93.77.2])
	by mx07-001e4f01.pphosted.com (PPS) with ESMTPS id 46d9yk82n5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 11:50:29 +0200 (MEST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HkAL1s8Jqm5ZAMn4AGPo0iMnHT6bZjP3/t4HSB75TyoS/X+duzrPgUhwGpVfDpSBFop4uQpCfw8R0J5Y1BXSbpdArNMa7TrqqW4gzgK9X5gcAh5L5u6KOPlIK774cRhLWzRpFdMElcF6Xv3zFtGGEld9pUIjyEUIvG0kLZMjBsCGXKCOcAGqqz6dfzPKLE5iRcsVJfKJZWxpXrHQgPJltxqRaC5ybrI626Ct6M2+XN12moLx3aoZ11cPKuv5TQQNOQPImvDqvcAXMdFZco/cmB6ydTpaH1LmcDJaGMvZ4QcvgGktMzUnFGpC5CzvpB8GOgKRLd3gMpv7llnQSBBO2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cPQjeZPGJBPPYxxfUTgKDWtnUtfb7vM2Ja9G2gE2kpI=;
 b=vLvDc5rPiq/OR4Z4u34/YNNEYWN2slecPG4Lujp5f4V/hBRALSU0mO+ZDhQ1/Wxqg/hdic3y5reQjsJG8bJGPETET7Epobkgd12Co4a6PjXkMHkYTd7f5hXp8cxwPU/G94GyWUmJKQ8XSBSmoigdoXttynGCVw3hB/cN0zo52Y4CNf5DtIFldLF1IBNL7hqt2opU9m3fgCDOb7ekLyyb6PUH6djHU65zvfayOGjWmr1ZJoUZc17Fp1ihb4w2ufLlaxy5trNWyen6Zg+HGkrtm0No17e7kupbBfyYwlzWOIPDeiwh7tVOkNwiNUeclGfiAiQpfdiwUYqIS3e5g8skFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 51.104.160.93) smtp.rcpttodomain=gmail.com smtp.mailfrom=sick.de; dmarc=pass
 (p=none sp=none pct=100) action=none header.from=sick.de; dkim=none (message
 not signed); arc=none (0)
Received: from FR4P281CA0165.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:ba::20)
 by FR3P281MB1790.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:7e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Wed, 7 May
 2025 09:50:26 +0000
Received: from FR3PEPF00000486.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ba:cafe::6a) by FR4P281CA0165.outlook.office365.com
 (2603:10a6:d10:ba::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8722.20 via Frontend Transport; Wed,
 7 May 2025 09:50:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 51.104.160.93)
 smtp.mailfrom=sick.de; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=sick.de;
Received-SPF: Pass (protection.outlook.com: domain of sick.de designates
 51.104.160.93 as permitted sender) receiver=protection.outlook.com;
 client-ip=51.104.160.93;
 helo=xwaresmtpservice-6f457cb4c8-cscvb.xware-eu-k1-north-1.o365.crossware.co.nz;
 pr=C
Received: from
 xwaresmtpservice-6f457cb4c8-cscvb.xware-eu-k1-north-1.o365.crossware.co.nz
 (51.104.160.93) by FR3PEPF00000486.mail.protection.outlook.com (10.167.240.6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.18 via Frontend
 Transport; Wed, 7 May 2025 09:50:26 +0000
Received: from BEUP281CU002.outbound.protection.outlook.com (40.93.77.2)
 by xwaresmtpservice-6f457cb4c8-cscvb.xware-eu-k1-north-1.o365.crossware.co.nz
  with Crossware for Office365 id 2adbf813-36e6-4b22-bd9b-3397abcd71cc;
 Wed, 7 May 2025 09:50:26 +0000
Received: from FRYP281MB1914.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:2f::11)
 by FR3P281MB2000.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:36::10)
 with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.8722.20; Wed, 7 May 2025 09:50:23 +0000
Received: from FRYP281MB1914.DEUP281.PROD.OUTLOOK.COM ([fe80::e100:c589:b5ad:52d4])
 by FRYP281MB1914.DEUP281.PROD.OUTLOOK.COM ([fe80::e100:c589:b5ad:52d4%4])
 with mapi id 15.20.8699.022; Wed, 7 May 2025 09:50:23 +0000
X-MAIL_SIG_CONFIGNAME: SICK AG
X-MAIL_SIG_CONFIGNAMEPLIED: SICK AG
From: Matthias Neubauer <matthias.neubauer@sick.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: AW: [yocto] Install externally built .ipk packages during
 image generation
Thread-Topic: [yocto] Install externally built .ipk packages
 during image generation
Thread-Index: Adu+k26Ukj981tFsT5+wLQYfqajvRwAAWmqAAAAt19AAAX0UAAAmSWQQ
Date: Wed, 7 May 2025 09:50:23 +0000
Message-ID: <FRYP281MB1914243C089D8CC2F7EE8172E988A@FRYP281MB1914.DEUP281.PROD.OUTLOOK.COM>
References: <BE1P281MB19077BC8D4D9AF1D12514B13E989A@BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM>
 <CANNYZj_j+qkvJO0Msd7dQ+1SKtOA7PRCj4CGvFEqa3Gm-io-tw@mail.gmail.com>
 <BE1P281MB1907E2B9EA198B6CA71E314BE989A@BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM>
 <CANNYZj9JXZDBWe91SCZhAxujAyWpJgBovMan-pYGoxaRXOQpYA@mail.gmail.com>
In-Reply-To: <CANNYZj9JXZDBWe91SCZhAxujAyWpJgBovMan-pYGoxaRXOQpYA@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-MAIL_SIG_CACHEID: 59383
x-ms-traffictypediagnostic: 
	FRYP281MB1914:EE_|FR3P281MB2000:EE_|FR3PEPF00000486:EE_|FR3P281MB1790:EE_
X-MS-Office365-Filtering-Correlation-Id: 40d0157e-e57c-43bb-cfc7-08dd8d4c9842
X-MAIL_SIG_ADMINUNIT: none
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?clJGTjNJV0E0NU5MODhqelRlZ3F6aHBIUXh1MXRFaVBEc1N5K2owSTZWdWJF?=
 =?utf-8?B?SGFjUm90aEsydlRnQUN6VUpwZnZCbnFhbEM5eVluYmpKVGxpVXRpNmxvYXBC?=
 =?utf-8?B?MWlzR0thYnNDOTZlYTlrZVN5NlRGd3hkcFNOM1lRME50N3FaeHZrYVFVMVZh?=
 =?utf-8?B?dnM0STBkdnpnWCs2VGIxMG1BMmpBYkNmQWN5YjJGdTFvbW5qWmFDa1Z6YjVO?=
 =?utf-8?B?QnBLekxIdTFoMW1GSUcxQkhNVTEzejRZY1ZCU0RwM0UyQjBQTWFTMm1vVFN5?=
 =?utf-8?B?SFk3c2JTQVJadDhPRi9PNzNEMitqZGpmdTlqSW5CdmFENmVWMkgzME9IZ04r?=
 =?utf-8?B?L3JZd1hjVHRtK3NkYXA1dUZlenJxU05vMWhQSC9XRER4cG8zbFVZYWVjRWc2?=
 =?utf-8?B?UHNtcmN5QVJrdUFHYkxlaWJ3MkpFUVcwQUw5UHJYREdtZzR1N1NTRTJ2dTdu?=
 =?utf-8?B?Q0RxMmJxNkNNbXBEcmNUcmpLRnM4SzNQOS9ReStsZ1pRVVU3RUt6ekFMMEpL?=
 =?utf-8?B?cG5meER2L1pXcnhyYzZtcnpMMVB5UTRUZFJ5SXpYTzhYbi8vdUtBdklxd2dS?=
 =?utf-8?B?MWVxb2J4ZWFBK2ZTbFkzUFAzOGpWRGQraXlBcXdDMndqbStpU0hYUkJjS3c2?=
 =?utf-8?B?R3dFYVVBWTY0a3VHRVpyeUQvMVFFTEpLY1NIWDBSbmpyTkFkbXdWU3huL1hx?=
 =?utf-8?B?L240dXVBYWtHSnhMTGNML2M2NU5tOGd0OHVSaHF5TXg0dHVId2tjQlFiZFZJ?=
 =?utf-8?B?RitXNHk1VXduV3Z3bENRNWlZMHpuRFZTK2k4QmtJNjgrRUVKT05EUHFoS294?=
 =?utf-8?B?SU9WeUxUU0pMOUI0KzZraE1WcTlMdk50dGNrS2VCSTM1cDJ2N3RkSG5iYjFH?=
 =?utf-8?B?blQvZHZNQmZ1ZGcyQ0NvVTlmYkltckswalFmU0hHYmFCdWFqYWk2alo4MWkz?=
 =?utf-8?B?eDZreEZoZTlmNyt2NThLNnJmUnRXSjRWR2wvTzUxSHRLMWpvRTZMYlFIUTMz?=
 =?utf-8?B?cnZ2L3daUHQ2RDkyOXU1V3VmV1UyNWE1WmY5L2grRVVQMHBheE1MVUVlY3lp?=
 =?utf-8?B?V1Bnc2hLWFpZbGRwZzlkT1FsY0xWYkEvbDVLdGxNem1GU3hkVjJZWW5hZHI2?=
 =?utf-8?B?VGpvbE9NZHd0R0w5bC9iODJnbENTRXE2UW9WVU9FS0lTNWRMSE0rKzU4aE9Q?=
 =?utf-8?B?eFNXa2xVZm1xc2g4d0JjdDZrdjFSekpDMmdSZ3c4NUFqT0J3dGdqZW1lSW56?=
 =?utf-8?B?Zkl0SFoxVzA1ODBaZmhSUU9CZ2VMNDBpYVBrYkJLdU5ncnd2cXRwVk4vMXB6?=
 =?utf-8?B?RVhxM0tJdWVnT3Bla0hxTUl5bUVFUC94Q2ZDWkdnYWhLRmUza1RVTGErZFpO?=
 =?utf-8?B?S1JFT1ZEckFJcjJiMDVoRXJWQnZ5VmdHYmsrUjlVc1I0d3czM280VklwMXB3?=
 =?utf-8?B?ajhKdXhMeit3dHh6ZjAxNTVPMzdlOEhJWWtFNzRBS0wvcUJtRG5KQjlyZmht?=
 =?utf-8?B?cDlqZHZzZ1BtN3VqaE5wanZBd2tFd3FXWkplbTFtT3ZLWWN3MFFmczZ5cUIr?=
 =?utf-8?B?TkdlRVZpQk15Sm9oK1pocWJFY0dIUkFjTit1ZlBNbHhIV3Z1WWxFNWJyR1JM?=
 =?utf-8?B?THV6bUZzR0JSb0ZYbEEwa3M0Vm9mQTBqcnhVR1NlUWJ1Z0RCYzYxTW1QMnMz?=
 =?utf-8?B?Qi85RFhuZVE0QkpJdzdxYjl3L1phWlVxdkdaVFdTU1l2SWhKZ2hLY3FMSG1r?=
 =?utf-8?B?R0tzejFRalA5c1c5WXdBYnVQSG9iWGx0dmZOV0pxai9hRmJTZUNOZUtTMEpw?=
 =?utf-8?B?d1FiN2h4YnpudlFicTkraHR6cTBwcUloZkNUWm9QR0VlSklkTUttbVVBRjRB?=
 =?utf-8?B?R29CQkoyeFZ4OERRWG5kek9YSU9Kc004d2ZubGtvZk9ENkNvYUNVV1NpQ2w1?=
 =?utf-8?B?d1JiczU5bnZNM2F2QmRtU3FhQzdHOGZuZkdHNGphdE9rWFZjU2orZXptUHlz?=
 =?utf-8?B?VlFFOVJDMU9nPT0=?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FRYP281MB1914.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
X-CWesigProcessed: Y
X-MAIL_SIG_VERSION: 0.2.855
X-MAIL_SIG_SERVER: xwaresmtpservice-6f457cb4c8-cscvb.xware-eu-k1-north-1.o365.crossware.co.nz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR3P281MB2000
X-EOPAttributedMessage: 0
X-CrossPremisesHeadersPromoted: FR3PEPF00000486.DEUP281.PROD.OUTLOOK.COM
X-CrossPremisesHeadersFiltered: FR3PEPF00000486.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 FR3PEPF00000486.DEUP281.PROD.OUTLOOK.COM
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	428e32e2-d038-4095-94a1-08dd8d4c9664
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|36860700013|35042699022|82310400026|14060799003|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?L0dwYnhsdURYMjRaN3FZcWlGamQ4MC92UFNuUWgrSzB3bGlLZlRMOVJkMlFv?=
 =?utf-8?B?dzFEUnNQT3pSazNpdDN3VjQ0a2xiVVR1UklEQk1hVEFVMTN6VzEyOTVPYzRX?=
 =?utf-8?B?aGpBNWJmY0k0Z0RRUEt1SDUwZFhaQXIxcktaeXFmVmxyblU2QXZseElpTGxq?=
 =?utf-8?B?U045dHdEQjk3SWF0b0lZbWlzdEx6RW45aFdISVFXRlY4eHhSVWZockIvOWhX?=
 =?utf-8?B?cjJwS1dqTE00R3ZNa1lDZm4yVnNUWVBUWWJJZHBCZmwyQ0p4OEVQSXVId0xp?=
 =?utf-8?B?YW9lcW5oNk5lSFl4d0lTQ1dDcHpiWjh0dkhXNXJpTHhtVGRVK3NWWWRUa0lr?=
 =?utf-8?B?dml6YlZqMFp0TFhHbStWRXZpbDhJdGRNUy9kaG5ycG9YRVl6eWozb2FxcEJW?=
 =?utf-8?B?aWVWRWRBQWhGdytHTlpBRmROemFFY054RlNsakVUR09XRTE1VXJlTnBLbUZn?=
 =?utf-8?B?MnR6cklmcExvMGdxd0Npd3ZKejRSOTBobCtqeFZuR1Jib0RlRWtMRzltS0dV?=
 =?utf-8?B?SzZIRG51VjNEK1h5elpYcXNPamgyZ0RyNUR4ZFBmSXlBMlNONFZDY1FEN2U2?=
 =?utf-8?B?Y0EwZ2IxNGxjdG9WMTlMc0N3YS9HV1ZXN0N0UkhwdU1EdThHV3czODNlTWhS?=
 =?utf-8?B?d1hZcUhWSXI3Y1E0RXZtWE9oVzY0ejBXRFBvcG8yVGZyQjYxSmdlQytLT29m?=
 =?utf-8?B?NlJIWU1OZTNNVnhPWCtHQWs2Vjc4Q1FCQUJPUVlFYks2UmwzMEhDbzR4STc1?=
 =?utf-8?B?ekl3QWpncHdhWXpGQW9PN2xpN0lmMTNyMWlUSUFCQ0xMQmV4cEQwcCsxVE04?=
 =?utf-8?B?MFc3aENWNDRQU0pPMUpPUzNCOHBpMTlocjBrTDlSYW5FYnpWbDlJczlzRDda?=
 =?utf-8?B?V2ZoVllEb1ppYjFlZGdyU004N3F0ZUxObFNkWnU5WE1ZUDI2R0tyejdFMnNh?=
 =?utf-8?B?OHRpNTJLdXUzU2VaS25RTXRmQll6U0NhT1FTaFZ4QUh0Tko4Q1RhaDhMa2JV?=
 =?utf-8?B?alVaR2diMVhIblVtNGFBZ3hIaDRtMEV3KzhGUTlnNSt1bVhXUnZFSDVLcytj?=
 =?utf-8?B?aVFtaFFERVVGeUdTWEdyWTFNREVES080NG0xUThFZGFFeFdYM1QyL2RVY0Fp?=
 =?utf-8?B?N3VhWHpmdHdJZ01SaGhwZ0NHT3NNNU5mWWJqYlNwQm9HR0xLUWFQeXpEVU1n?=
 =?utf-8?B?MDJXQkJCTXIwVzN6ckRxUkNEMk14cGY5dWdLY2hkZER4ZWRtTGE5ZmZLK1gy?=
 =?utf-8?B?MTdlT1RteC9Id0pLRkF2K0pBL2VMOFR3a0VOQWxFY09oRFM1OTY0UWVMay9U?=
 =?utf-8?B?WnZoc1JjZDZ6bzVqUUpiaTVGQlFpSk55enhrUGFsQjlEOVdrZTZ2QnVOeko4?=
 =?utf-8?B?WmNpVERJK2thWGhIMnc2SHIwaXBLTzg2OVJyRi91cjl5WHkvRUI5Zk5VTXNy?=
 =?utf-8?B?aWI5anV6b1hXZ1lhckY2OUx4RGR2Qm1MdU1OTHA3SG84dG5NVWVBc1EveUt5?=
 =?utf-8?B?YUtSaVZPUzhEbWZnQi84VHA2Wk15Wnpad1UrQnpucU5LUldSVkhCdTJoODFZ?=
 =?utf-8?B?MDlwTkJ0WGU1WXFjamZ5Z2hpZjdoVWhQcVR1dFN6YitKNHZ4UHVXOE1zQno4?=
 =?utf-8?B?eURnc1d1eWVRUWdsZk1TREZ3UTA4YWNYaTdEQ0l5ajVoRXB1RHlHbGM0RkpE?=
 =?utf-8?B?YVVybFdyMmJqVEtZcmdhUzhDSzlyNHNDVHhQS0xtZUxIOTVCZGowZ3h1YUtl?=
 =?utf-8?B?V2dVNy81T3Mrc1JHajUyd3kxN1FRM3U4eG04eFFPRXV1TDRMSlFZMXNjK1ox?=
 =?utf-8?B?MmgyUjVpU0RWb3BMR2NuY0dZU0tURFpYaFNKb20vT0pUS3h0eUQ4L3NldHVT?=
 =?utf-8?B?MHlzY0JEL1JCNWI2eG1ldVlPYW1tZ2Jya3VsNWcwbUJSZEVVVVlOejRHOWZI?=
 =?utf-8?B?M21GVnNhS3FWZnpYMW9LUzBreDhHRXhhTkZ1OTdNTEZ0ZStycXp3d3lLVjlp?=
 =?utf-8?B?bWdSOGFhazVBPT0=?=
X-Forefront-Antispam-Report: 
	CIP:51.104.160.93;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:xwaresmtpservice-6f457cb4c8-cscvb.xware-eu-k1-north-1.o365.crossware.co.nz;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(36860700013)(35042699022)(82310400026)(14060799003)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	1UEUVCKmr2n+POn5F47pv0ETfW20/ZFgd2++CdG/wXwGyCgWKSrHXvFf3VEjmoPygGi4s7Cc6S0OkGf/Fiu9MMva+OkwLilzAg2tJZg4XRu2+XX2HDOAF7xZeeXVItUEdZLW6iz0AI24AD9Zr+at7JhY49Y7kyrZIxKxgJ/F3QiAswNpAobHKVuiTBQfwUkw+1vigznqsRAno1R9QjRmKfklRQHWrNw0jXSrpnbCHBSJCtjizo8/BrV0LTxD/pumj9xOkavfXOMlosWsucYIZY1SmePkJk+SgEjxi5Rf1M6H9lNzQJfBP2M/XvhVLDYK/BYwX5T4EZr7crAveUoDxgLwBzixBilAX9cRMoJz0asZrBRVQf03l+qoqKW90ooQsGC/gMH6ozmL4BMfxadX1YneeAxWnQj9Nb6ad6ivRA3R7tMH1JAYb8rQIp5ABSAGG4+oo5LnWSoV6l//dMi03gur0KOYxK6v1MXxpeuun85j7HaqVY8CH/cCs1QJHs9XsuAeX/M58pzftVvfSKzzcA4rhYvK2J76xInnw6+5cXNNs0nGCPq3SBmeQ4CUZxFPxYMqDD28Ar+zqjHZINV7RBhlww1khEzi/u3HePo603GFTAvlGLGxJkLjqP6ebTrOyE1Nd70uf/gT6c7b12BMRA==
X-OriginatorOrg: sick.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 09:50:26.6630
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 40d0157e-e57c-43bb-cfc7-08dd8d4c9842
X-MS-Exchange-CrossTenant-AuthSource: FR3PEPF00000486.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Id: 149acf93-d7d8-49e9-aea4-e48d6d0dae68
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=149acf93-d7d8-49e9-aea4-e48d6d0dae68;Ip=[51.104.160.93];Helo=[xwaresmtpservice-6f457cb4c8-cscvb.xware-eu-k1-north-1.o365.crossware.co.nz]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR3P281MB1790
X-Proofpoint-GUID: 7dDI8U901HWrtvQFrUKtSxF53UJss7u5
X-Proofpoint-ORIG-GUID: 7dDI8U901HWrtvQFrUKtSxF53UJss7u5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA3MDA5MSBTYWx0ZWRfX5AcHExVOg17L
 akP/94ouGWWsjHi0xZF6mOJqeoLPO40pDGCjin+a/PVuTn1XANHtKUwaBmivQ0Q/GOs1Tsqcs9O
 pucZhUPlFaHRcYe2aY6UZ0+MfHkFv9wnOM/EgIspjecW+PjxJgS4x9szIyHdSDaMZS59SUwlxo7
 4oFNcUgVCithaCDSDiXv32K0E6cEjqm2gIEwQGnzFXQXzGLrauu/AcDu+Ac2uYAM6wQn1w2J+Ej
 twdkK1nR5gYbT+2J5gJ4USFkaBeLYhB2wU37KvJ4DTh8M2irnHfN73S/Ad3nkjN+IKtWlpR25z5
 b0IgIZOhE9XXVs9HUGYX5qizivAGrV3Gco+AoMHyMCoCHxNUE3yfsqjPXogLvTL3xyNmERkIoXe
 f6kFy4fwsb1Q1uZ0lUduBSPXm1WOfsUQniFRggk5HPqEOpQ/GomNQ4Z00acphY6zaGKOv26r
X-Authority-Analysis: v=2.4 cv=ObCYDgTY c=1 sm=1 tr=0 ts=681b2ce5 cx=c_pps
 a=rKskMeT+igBEAz2H9kRIfw==:117 a=c1ZRfG1RmQFzPXQupEc97A==:17
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=s63m1ICgrNkA:10 a=F08PkAPK9d8A:10 a=pGLkceISAAAA:8
 a=__reGKuPAAAA:8 a=N-gX66UwF40K0UtpqiMA:9 a=QEXdDO2ut3YA:10
 a=ZWq3DkvqUpLo1-QMl0b1:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-07_03,2025-05-06_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 mlxscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 spamscore=0 suspectscore=0 bulkscore=0 mlxlogscore=999
 malwarescore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505070091
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 May 2025 09:50:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65290

PiAtLS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0tLS0tDQo+IFZvbjogQWxleGFuZGVyIEth
bmF2aW4gPGFsZXgua2FuYXZpbkBnbWFpbC5jb20+DQo+IA0KPiBJbnRlZ3JhdGluZyBwcmUtYnVp
bHQgYmluYXJpZXMgbWVhbnMgaXQgaXMgbm90IHBvc3NpYmxlIHRvIHByb2R1Y2UgYSANCj4gYnVp
bGQgb2YgdGhlIGNvbXBsZXRlIHByb2R1Y3QgZnJvbSBzb3VyY2UgY29kZS4gVGhpcywgaW4gdHVy
biwgbWFrZXMgDQo+IGl0IHZlcnkgZGlmZmljdWx0IG9yIGltcG9zc2libGUgdG8gaW5kZXBlbmRl
bnRseSBpbnZlc3RpZ2F0ZSBvciBmaXggDQo+IGlzc3VlcyAocGVyaGFwcyBtb250aHMgb3IgeWVh
cnMgYWZ0ZXIgdGhlIG9yaWdpbmFsIGltYWdlIHdhcyBtYWRlKSwgdG8gDQo+IHR3ZWFrIHNvbWV0
aGluZyBpbiBkZWxpdmVyYWJsZXMgZnJvbSBvdGhlciB0ZWFtcyAoZm9yIGV4cGxvcmF0b3J5IG9y
IA0KPiBleHBlcmltZW50IHJlYXNvbnMpLCB0byBwcm9kdWNlIGEgYnVpbGQgZm9yIGEgZGlmZmVy
ZW50IGhhcmR3YXJlIA0KPiB0YXJnZXQgb3Igd2l0aCBhIGRpZmZlcmVudCBzZXQgb2YgZGlzdHJp
YnV0aW9uLWxldmVsIHNldHRpbmdzLCB0byANCj4gYXVkaXQgdGhlIHByb2R1Y3QgZm9yIHZ1bG5l
cmFiaWxpdGllcyBvciBvdGhlciBtZXRyaWNzLCBvciB0byBob2xkIGFwcGxpY2F0aW9uIHRlYW1z
IHRvIHF1YWxpdHkgc3RhbmRhcmRzIGV4cGVjdGVkIG9mIHRoZW0uDQoNCkkgZG8gbm90IHNlZSB0
aGluZ3MgcXVpdGUgc28gYmxhY2sgYW5kIHdoaXRlLg0KIA0KVGhlcmUgYXJlIHdheXMgdG8gZG8g
cmVwcm9kdWNpYmxlIGJ1aWxkcywgdGhlcmUgYXJlIHRvb2xzIHRvIGZvbGxvdyBzdXBwbHktY2hh
aW4gbGV2ZWxzIGZvciBzb2Z0d2FyZSBhcnRpZmFjdHMgZ2VuZXJhdGluZyBidWlsZCBhdHRlc3Rh
dGlvbiBkYXRhLCB0aGVyZSBhcmUgd2F5cyB0byBhcmNoaXZlIHNpZ25lZCBhcnRpZmFjdHMsIGFu
ZCBzbyBvbi4NCiANCj4gVGVhbXMgY2FuIHN0aWxsIGluZGl2aWR1YWxseSByZWxlYXNlIHRoZWly
IHdvcms7IHRoZXkgb25seSBuZWVkIHRvIGFkZCANCj4gYSB0YWcgdG8gdGhlaXIgYXBwIHJlcG9z
aXRvcnkgdGhhdCBpbmRpY2F0ZXMgdGhlcmUncyBhIG5ldyB2ZXJzaW9uIHRvIA0KPiBiZSBpbnRl
Z3JhdGVkLCBhbmQgQ0kgd2lsbCBwaWNrIHRoYXQgdXAsIHVwZGF0ZSB0aGUgcmVjaXBlLCBhbmQg
cnVuIA0KPiB0aGUgYnVpbGQgYW5kIHRoZSB0ZXN0cyBhbmQgcHVibGlzaCB0aGUgcmVzdWx0aW5n
IGltYWdlcy4gVGhleSBuZXZlciANCj4gZXZlbiBuZWVkIHRvICdsZWFybiB5b2N0bycuIE9yIHlv
dSBjYW4gZGV2aXNlIGEgcHVsbCByZXF1ZXN0IHByb2Nlc3MgDQo+IHdoZXJlIHJlY2lwZXMgYXJl
IHVwZGF0ZWQgd2l0aCBleHBsaWNpdCBwdWxsIHJlcXVlc3RzIHRvIGEgcHJvZHVjdCANCj4geW9j
dG8gbGF5ZXIsIHdoaWNoIGhhcyB0aGUgYmVuZWZpdCBvZiBldmVyeW9uZSBsZWFybmluZyBhdCBs
ZWFzdCBhIGxpdHRsZSBiaXQgYWJvdXQgaG93IHRoZSBjb21wbGV0ZSBwcm9kdWN0IGlzIGFzc2Vt
YmxlZCBmcm9tIHBhcnRzLg0KDQpXZSB1c2Ugc3VjaCBhIHdvcmtmbG93IHJpZ2h0IG5vdywgYW5k
IGl0IGhhcyBkcmF3YmFja3MgYXMgd2VsbC4NCg0KQXBwIHRlYW1zIHVzdWFsbHkgZG8gbm90IHdh
bnQgdG8gIm1vZGlmeSBhbmQgdW5kZXJzdGFuZCB5b2N0byByZWNpcGVzIiwgdGhleSBqdXN0IHdh
bnQgdG8gZGV2ZWxvcCB0aGVpciBhcHAgaW4gc2F5IEMrKyBvciBydXN0IHdpdGggdGhlIHRvb2xz
IHRoZXkga25vdyBhbmQgbG92ZSBhbmQgcmVsZWFzZSBpdCBhZnRlciBhIGNvbXBsZXRlIGRldmVs
b3BtZW50IGN5Y2xlLg0KDQpUaGVyZSBpcyBhIHdob2xlIHRvb2wgaW5mcmFzdHJ1Y3R1cmUgaW52
b2x2ZWQgZHVyaW5nIGFwcCBkZXZlbG9wbWVudCBpbmNsdWRpbmcgc3RlcHMgd2hlcmUgc3BlY2lm
aWMgdGVzdGluZyBmcmFtZXdvcmtzIG9yIHN0YXRpYyBjb2RlIGFuYWx5c2lzIHRvb2xzIGFyZSBp
bnZvbHZlZCB3aGljaCBhcmUgdmVyeSBoYXJkIG9yIGltcG9zc2libGUgdG8gYWxzbyBpbnRlZ3Jh
dGUgaW4gdGhlIFlvY3RvIGJ1aWxkIGFzIHdlbGwuDQoNClRoZW4gdGhlcmUgaXMgdGhlIHByb2Js
ZW0gdG8gZ3VhcmFudGVlIHRoYXQgdGhlICJhcHBsaWNhdGlvbiBidWlsZCAiIGFuZCAiWW9jdG8g
YnVpbGQiIHVzZSB0aGUgZXhhY3Qgc2FtZSBzZXR0aW5ncyAoY29tcGlsZXIgb3B0aW9ucyBldGMu
KSBzdWNoIHRoYXQgaWRlbnRpY2FsIGFydGlmYWN0cyBhcmUgZ2VuZXJhdGVkLg0KDQpBZGRpdGlv
bmFsbHksIHRoaXMgYXBwcm9hY2ggZG9lcyBub3Qgc2NhbGUgdmVyeSB3ZWxsLiBFdmVyeXRoaW5n
IG11c3QgZ28gdGhyb3VnaCBhICJ3aG9sZSBZb2N0byBkZXZpY2UgYnVpbGQiLCBhcHBsaWNhdGlv
bnMgYXJlIGJ1aWx0IG11bHRpcGxlIHRpbWVzLCBmaXJzdCBkdXJpbmcgYXBwbGljYXRpb24gZGV2
ZWxvcG1lbnQsIGxhdGVyIGFnYWluLCBkdXJpbmcgYSBZb2N0byBwaXBlbGluZS4gSWYgdGhlIHNz
dGF0ZSBjYWNoZSBpcyBpbnZhbGlkZWQsIGFwcGxpY2F0aW9ucyBidWlsdCBvdmVyIGFuZCBvdmVy
IGFnYWluLg0KDQpUaGVyZWZvcmUsIHdlIHdvdWxkIGxpa2UgdG8gZXhwbG9yZSBhbmQgZXhwZXJp
bWVudCB3aXRoIGEgd29ya2Zsb3cgd2hlcmUgdGhlIGRldmVsb3BtZW50IGlzIG1vcmUgZGVjb3Vw
bGVkLg0KDQpUaGVyZSBpcyB0aGUgd2F5IHRvIGludGVncmF0ZSBwcmUtYnVpbHQgLmlwayBwYWNr
YWdlcyB3aXRoIGEgZGVkaWNhdGVkIFlvY3RvIHJlY2lwZSB3aGljaCByZWluc3RhbGxzIHRoZSBw
YWNrYWdlIHVzaW5nICJvcGtnIiBkdXJpbmcgYnVpbGQgdGltZS4NCg0KSXMgdGhlcmUgYW5vdGhl
ciB3YXkgdG8gZGlyZWN0bHkgaW5qZWN0IC5pcGsgcGFja2FnZXMgaW50byB0aGUgbG9jYWwgcGFj
a2FnZSBmZWVkIHdpdGhvdXQgdGhlIG5lZWQgdG8gcmVwYWNrYWdlIHRoZW0gYnkgYW4gYWRkaXRp
b25hbCByZWNpcGU/DQoNCk9yIGFueSBvdGhlciBzdWdnZXN0aW9ucyBob3cgdG8gYWNoaWV2ZSBv
dXIgZ29hbCBvZiBtb3JlIGRlY291cGxlZCBhcHBsaWNhdGlvbiBidWlsZHMuDQoNCkFsbCB0aGUg
YmVzdCwNCg0KTWF0dGhpYXMNCg0KTWl0IGZyZXVuZGxpY2hlbiBHcsO8w59lbiAvIEJlc3QgcmVn
YXJkcw0KDQpEci4gTWF0dGhpYXMgTmV1YmF1ZXINClNvZnR3YXJlIFBsYXRmb3JtIEFyY2hpdGVj
dCB8IEF1dG9ub21vdXMgUGVyY2VwdGlvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQpTSUNLIEFHIHwgRXJ3aW4tU2ljay1TdHIuIDEgfCA3OTE4MyBX
YWxka2lyY2ggfCBHZXJtYW55DQpQaG9uZSArNDkgNzY4MSAyMDItMzk0OSB8IG1hdHRoaWFzLm5l
dWJhdWVyQHNpY2suZGUgfCB3d3cuc2ljay5kZQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQoNClNJQ0sgQUcgIHwgICBTaXR6OiBXYWxka2lyY2ggaS4gQnIuICB8ICAgSGFuZGVs
c3JlZ2lzdGVyOiBGcmVpYnVyZyBpLiBCci4gSFJCIDI4MDM1NSAgfCAgIFdFRUUtUmVnLi1Oci4g
REUgMTQxNjUzOTYNClZvcnN0YW5kOiAgRHIuIE1hdHMgRyZvdW1sO2tzdG9ycCAoVm9yc2l0emVu
ZGVyKSAgfCAgSmFuLUguIEViZXJoYXJkdCB8IEZlbmcgSmlhbyAgfCAgVWxyaWtlIEthaGxlLVJv
dGggIHwgIE5pY29sZSBLdXJlayAgfCAgRHIuIE5pZWxzIFN5YXNzZW4NCkF1ZnNpY2h0c3JhdDog
IERyLiBSb2JlcnQgQmF1ZXIgKFZvcnNpdHplbmRlcik=


