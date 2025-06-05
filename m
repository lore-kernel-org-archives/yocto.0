Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D2BCC5AE59
	for <webhook@archiver.kernel.org>; Thu,  5 Jun 2025 20:14:24 +0000 (UTC)
Received: from PA4PR04CU001.outbound.protection.outlook.com (PA4PR04CU001.outbound.protection.outlook.com [40.107.162.18])
 by mx.groups.io with SMTP id smtpd.web10.17997.1749154462682002853
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Jun 2025 13:14:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=UdFBxBtm;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=UdFBxBtm;
 spf=pass (domain: arm.com, ip: 40.107.162.18, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=T4RZD6gldPfbpUKqnRGzaOWPVM7Lc0sokmfqmyzvDcBy/rBvFfieJ7mF1ZG2IdFgAQTVzXS1rfKHIgxsMXQ4wxHHC2tX9QF6ILKDktib/ln3eHK795fGPr2+cIDfAy+gRBG6gtNcR8gOAtZI+0LLV7tbLBDjA8aTFd4jNkik2U3dUD0KtFb3j5M/YEgEFbvjB6sQN6IucOZQe2TmKjXGEB3DT8EEFjESRBPU7rf+lX4PJGzPPe/Yb3Dc3SQoH4/rEtz2QvPBui3SYuA/jrCK3zIBL/mEESGZF3lfJSK1Ntf5/Wm6+1UDVSB7ZSWyjwfIIc8tHowZw0d0vZ603SLCOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3x/6Bg2G3wZv2mkK3Mh4/+A4zqBeCrYeM8PF4pjmc0Y=;
 b=eWXLDq5RyMKIKrsm6YyGO4AyrHU1agz8xPQtcP0OgqtgPkZ+7gMvdUM//FQYxqCDHeSExphitI6nNEJjN2nS6tRZ5GAM6JbJ0BBKfPbRykc6+jeQDHZYvBGfXsLTii+l3u2GGKQKiSyjWUGFHu8y2oWQBcc5JY4jvtS8smi/pFi1b2J8HmSmSNtFMCo0Gp5pFihtwEHen9lNN+mhvki9jPHzeZYhcUqdkQMj1aBsVy8SIXsz5bwk7AcaC7rqLuDQn9pY9Xqyfv+NfzuWA0wWwdcECumn6g3ZUS0j7c7XHffQ9N6FUziXOz4iS//RmfZiEeRzJwL2R8YtokPAYqU2/g==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3x/6Bg2G3wZv2mkK3Mh4/+A4zqBeCrYeM8PF4pjmc0Y=;
 b=UdFBxBtmzB40Z+vMWdChr9VtmrggYSelpbZUEb4/xRljZswkzTWxns3ezaLDwPXAkX9ObmbpT6nPitvIyC1+5QV6IsvMyY+lw2Vn7Sx7O5hgtbXhDVwPGi51dWQFEWuUqHq5MsM7BK8ymOHinihX+3xsFP/4tSrdbuOem98aWbI=
Received: from DU7PR01CA0007.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50f::7) by AS8PR08MB6197.eurprd08.prod.outlook.com
 (2603:10a6:20b:294::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.34; Thu, 5 Jun
 2025 20:14:16 +0000
Received: from DB5PEPF00014B93.eurprd02.prod.outlook.com
 (2603:10a6:10:50f:cafe::14) by DU7PR01CA0007.outlook.office365.com
 (2603:10a6:10:50f::7) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8792.35 via Frontend Transport; Thu,
 5 Jun 2025 20:14:45 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 DB5PEPF00014B93.mail.protection.outlook.com (10.167.8.231) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8792.29
 via Frontend Transport; Thu, 5 Jun 2025 20:14:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GYP7oOp0JCbKwRYPoEneG0XVKS+X5XtHmnZO3a9pllaaZUMchkwRmLfVYlKr392M9+LXB83yT1sQRo4ig57gpMcue2bV1/fJ64X6nX/FYdf/tGKq6olp88c0pE/mHDON1HaLvzidPTBMR5BpwwK1Ju4zYaz9TmDRhKVrBLSDjLdrSFVmCRJtgafscV+bRP1zBpGJ3xhbKpt1KfuXGafBM2mz4tJVbLSeSRNmSYVo+5gPyvQYWoighavuIiD8rTUvp5BDJujxrgzQaGV3a61nSastWEUI1ouzINVMXalkdt1iGi3xr6Lc+y8+U3geyfCQ73a2fPkm10rIXFgnNIomaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3x/6Bg2G3wZv2mkK3Mh4/+A4zqBeCrYeM8PF4pjmc0Y=;
 b=ftxPkFopHqo32/9BZ9m9tZdEjE/DohCGjaWaVcgG38UB5Xwztwrh3XBX6MP91RKYMSRjTC+9cnA8FXpSUtvihNPz7tsnkildMnjGB7yXRtFHvLXXBxwkzmm31IUVnDxsKxynr/hmfLbJaJcc62Neo2BVYRtLqcIY3/apxuTs4gMl41B0iOe9bvEun8/ARNyKGQdtYKEXjpOgkn8Yo8jJNb16Mumq9G3tZLoqjxSvAWFsPQXUxqXhqO8bNxMHJdKikX7tyxmfboWVGvXk214M+Ej209xb6T51xip/eKAxhT2YbNRG6k0G5Fq3V56CpEygOOJGVqMw+tVEyKdKs2Wsew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3x/6Bg2G3wZv2mkK3Mh4/+A4zqBeCrYeM8PF4pjmc0Y=;
 b=UdFBxBtmzB40Z+vMWdChr9VtmrggYSelpbZUEb4/xRljZswkzTWxns3ezaLDwPXAkX9ObmbpT6nPitvIyC1+5QV6IsvMyY+lw2Vn7Sx7O5hgtbXhDVwPGi51dWQFEWuUqHq5MsM7BK8ymOHinihX+3xsFP/4tSrdbuOem98aWbI=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by VI0PR08MB10446.eurprd08.prod.outlook.com (2603:10a6:800:206::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.20; Thu, 5 Jun
 2025 20:13:40 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8792.033; Thu, 5 Jun 2025
 20:13:40 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "joseph.maniaci@seagate.com" <joseph.maniaci@seagate.com>
Subject: Re: [yocto] Native recipe still contains non-native compilation flags
 #bitbake
Thread-Topic: [yocto] Native recipe still contains non-native compilation
 flags #bitbake
Thread-Index: AQHb1kzSsUl99oChLU6KSdd42sCqlLP0+X8AgAAGgwA=
Date: Thu, 5 Jun 2025 20:13:40 +0000
Message-ID: <1BA2343D-4316-4CAC-96CB-A5FA200240B3@arm.com>
References: <ew0F.1749150330205576658.cCBA@lists.yoctoproject.org>
 <18463D7111EBF8E8.10724@lists.yoctoproject.org>
In-Reply-To: <18463D7111EBF8E8.10724@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.600.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|VI0PR08MB10446:EE_|DB5PEPF00014B93:EE_|AS8PR08MB6197:EE_
X-MS-Office365-Filtering-Correlation-Id: 4e5d5a45-8ec5-4f58-a410-08dda46d8b98
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?MzV5T29xNHFSUGdWMk5kRFBjd0M4TEErY291am45cHNrb1RCWXJVcXBiSFlN?=
 =?utf-8?B?WkFJSERIa2ZhRmNVRWR0cDRlWmhGOXhpMDFyZ01jM2hvRGQxbGttaXRSVkp5?=
 =?utf-8?B?Ukd4Yy84YXNmNy9EdElwa205eUpycXVzV3FZTDFPL2cxMWhoUEs5MStkNUhD?=
 =?utf-8?B?SjE3dzZSbHQ3eU43aC8zczFFNVllTEh3b3RCbzNtR05xcGw5aTExb3BjdnY5?=
 =?utf-8?B?Rjk3M3A1eVR4UEtRSFRNaWZ3M1U5YmQxU3d2WTVsSVJNQStwSndQcDZQR212?=
 =?utf-8?B?N1BGNVIvd0hDaUpVeFpxWWRCelB6MmxIZU5nUjBIL3k5RnlLVUMvUXlOYTBr?=
 =?utf-8?B?VFZVSHRESmxYL2Q5K2VtdHliaU9KcHZ5eDN6a0xlUWtYOHpsMlpjZ3ljSXVK?=
 =?utf-8?B?MWNKclZYVE51VGY1RzJwZU5vd1h1b0tQQ3YxWTdZSjlaWTcvbjduUWZYTG0w?=
 =?utf-8?B?ZjNVd0RrZmt1Zkx4dGdDY2RYS0x3TjlRNnhoU25TWmpCUzNXV0RnRzQ4bUNa?=
 =?utf-8?B?Z2ZINEhaZ1JZYzhLZEVvaFFjcUIyOFhkeDZxVmZPSU80UU9nU0xRZFZCb3BY?=
 =?utf-8?B?eExuWW5XRkY2ZHpTRUpRS1ZYb04xLytnYXJEM3UrOFkwUFNmOU5WM3g4UEk2?=
 =?utf-8?B?Y2FqUFNwYmxYMUlTQVlLeDJNdk8rbWhuVkV5cXZtTWRDRjR5emRoUndOSERY?=
 =?utf-8?B?ckhuVHhOSnhHT3ljWTI5ZXIwS3hhcmpEWUN3Q3QrVzdSOEZnNjUyb3lVZysx?=
 =?utf-8?B?RjdFZmU5cDdGbjlEdm1TOEZlRHVRYWh2Z3JNbnZURWM4eWFTb291SnNmWVBJ?=
 =?utf-8?B?bXFVd0owZFoxN2RmQklUeDQrN0p3eFNMbnRjTExsUFRkc25rUS9PZGV3YTJz?=
 =?utf-8?B?MmphZHpiTlJscXlaSWRKb0I2dDM2alYzelIweEZrWm1ZSUhmbTdDYnQ3Mkxu?=
 =?utf-8?B?bU1ZRnQ2OWpwdisvNzdIaHhpY1pEWGR0WnlNazl6MmFwcVFrS2VCTDZISWRN?=
 =?utf-8?B?OVV5TFZVVS95U2xqMWNld3dmS21CVFlHU3BLM3JwRWs2aDdBaC9BYW5jNVVC?=
 =?utf-8?B?aHdhV1FYaWJkZXdDd296RjJIY1BVdmpPV1BMWWw1bDhOZXhXb3ZHSVR3Zm9i?=
 =?utf-8?B?NGVreWJNNlRaTmlZOUMxWXdiUDUzZllvdVNQNjczRHBhd2R0dEQ2NEhtR21H?=
 =?utf-8?B?NW1obERTcVBvNENEekY0ejE0L05CS1VXamhGSk9sWWZuQjdFdVRhWXBpN3Yw?=
 =?utf-8?B?dXM0MVVDS2xINkxBc1UxZ1puaUNkdGNVNWtlS1JlSmRscjRORzhjZENzRklZ?=
 =?utf-8?B?TTRJdHB6QTR5TGdWSGhUeVBWT2VDeTZRM2J0dFNubjBmMW9CVDdLT2E4WjE5?=
 =?utf-8?B?QUVPNE12cGVVakY5OWh0eEptSW9TN1RtNk02aGNQNHdPb2twdVJJTzMvM25k?=
 =?utf-8?B?RTVTOGdyZEw1RmdEWG8weHpYekV0eTdXRGFOaDhGMjEzdnZibm1TTlozdW5H?=
 =?utf-8?B?NDJqSklvTXpXMytyOHUwUG5qZUxtNzJLZWE4U1RnSnFpNEpqQldCZ2hFcXNM?=
 =?utf-8?B?ZFRVNUhXQzlTUEt1TW5VT3hCb2M5NnJITlN6M2RZaWtmaG9aNW1ZWk8vd3N5?=
 =?utf-8?B?K3ZjSWsyeFFzZ1dhKzV4QU5PSWpUT2Vya3pBdkp6a1JpeEVrdnpWVU9Ocy9x?=
 =?utf-8?B?Qmo3THpieExZTTRBd3J1dmxHQlRFNys3VUlScTgxQnhabmxkT0NobmRlc2R6?=
 =?utf-8?B?WDJjTUEzOXpZOU5yRXQxeVlPM0MyMlMyMDhXYm5qb1NGaXhnek5CNFhrQ1FG?=
 =?utf-8?B?OVRSMGtNTWxab0k0SmczZFNYTXJFYk9yWkIzL1NCWlVCb0tBQkc1bWVCMzZ0?=
 =?utf-8?B?VXpGNExLeGk1ZWRDc2pkL3R2dUJNMjZ5R1VDRUtZNGx0U2J5ejB3S0xIWjVI?=
 =?utf-8?B?ZlVvTUVENEt1S2xmRkhYcTM0Mm9xVHdkdXFObGQ2QWI5OGYrek1RNmpjR1dn?=
 =?utf-8?Q?gisXZ7mlsAZwDxQrYYtyaESWNKtrpY=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <D3736F97CD8DA343851C105055483D79@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR08MB10446
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5PEPF00014B93.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	28960d4f-06b8-47d9-2c4a-08dda46d76a1
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|36860700013|14060799003|82310400026|1800799024|35042699022|13003099007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?RS9IMVlNUlV0MW1xeWdJdmQwSGtSZlVLM2krZXR3aVlveCtlVzI5QTU3YTIz?=
 =?utf-8?B?Tkh6dUp6VmpZZEVhK1ZUV1oybncrWXVydDVVdmY2eU51MUpoZFdpVDJjY2Uz?=
 =?utf-8?B?bWZXclVRNHlzTkQ3ZjJtWHltcHhhT1piVjdibGxlVTJucXc3d2ZOSFRlQmEw?=
 =?utf-8?B?cHpkb040TlhtbmcxMEZjN2hqc2RsNXlucmdsM3JUSHNTQVJmdEtDUDdUTEM2?=
 =?utf-8?B?WHVreFRXY2tuQ0ozWHQvY3JacVoxS0pZRzQ2SDBYZ1N3RkhKQmZPdnNnMGdZ?=
 =?utf-8?B?TVE3NDR2Yzl0OHozQlhaSjFacVZYUjQ4WHdqaWVZQjQzbjlua05HWlRGaHJZ?=
 =?utf-8?B?UjNkMmZ4TEcvODd1TDYvbmppa0FLOTRBOEdQMGpiSXhqSmJaaWpPR25EZmFW?=
 =?utf-8?B?KzY0V1JKdUp4UlJkTzk3LzVWVXh1WnU1WThqakJXTUNKc1hGdDB4MHRWczF6?=
 =?utf-8?B?UURXdGVyR0RSNVNkRVNUUXhBNzJyOGlwK1JPQmZKWGJJeTlnZjNEOWdJekd2?=
 =?utf-8?B?YVhlNlVXaHJIeEFMeTJpRmZTMUNwOE1ObFUxbHdGK0E2eERRZWlYNDAwRDJU?=
 =?utf-8?B?aEg4SHRRcFpJNEs0eDJXekg5L2tPaXpHQURQajlOMER4L25DcXYvTFJLR1JI?=
 =?utf-8?B?MHhjNlExbzVXWU1IS09nRXppU2t6NEdyVlJBN1ZTdm0yZE4zOHExRVpsZnpl?=
 =?utf-8?B?VDJYMVZSTklsYXV6Tm1wNUc5YUY1UlByLzE0NWtqc1JqY29zVXFCRDdQSENR?=
 =?utf-8?B?OTVRc3kwUmJWZDF6SGp1QkdrT2VIZXlUQmJ5ckk2elp3S1hpTkpLaEQ4UUJQ?=
 =?utf-8?B?QkhVeVZqNVNlaGFaV1J4ZEc0Q1RJUTJNQzZwSktOVFB5Y0JhanpTOE84RDVR?=
 =?utf-8?B?OGJDNUJocU01cG9iV1hIeUY3Wkt4NkNQYTB5dEg4WDVQS0N5MWlueVc5NEFH?=
 =?utf-8?B?VUo2RW82MHltM29jc1o1TGlMWnZTelQ2eEpuWjc2MjlxWnFaSHhTM3U0Ky84?=
 =?utf-8?B?U0cvYXpkem00V1FITGFnUERDNWdxS0tIalIxaFlvUUhxRWx0L1c2Sk15VmdY?=
 =?utf-8?B?a2dDWGx6bzBOa3J3R1NYQ3VlZ2lNbEdUVC9aeW83OTYveEJLK3NJOWthWDZx?=
 =?utf-8?B?bGduNHF3K0V4Znp4Z2xGTjV4bzVuRHZaVGVlenREMzVKeHJxRkhjenNkNmNF?=
 =?utf-8?B?SnRZeC9BRXJldkZKRysrYkxKdW1pb3l4d2ZCbjQwU2hWSk9zc0p2VHBraTRq?=
 =?utf-8?B?TmgxK1NqTkJ3NnNTWE5udWJCK0gzdzV0RjE1cFhlNW5NcURLcGtjSzdSMmJz?=
 =?utf-8?B?emcvRkluNDI0WjBpcG05bzh6NVlYVlE5bVhKeTNRUlJhQU4vdUdIVXpIa2tk?=
 =?utf-8?B?OUlhUVZpTjVNWERlOXlCd2lCcHZNczNkTDdUdjJOenFtR0FDVXY5ZXhDUmth?=
 =?utf-8?B?cTgrTysxV1NTWmY4VmpmeDZseU5PdDVYNFk5aUdyemJ1ZjIxdktTOVZDZGdj?=
 =?utf-8?B?VTdOL3hhS0xGeXZMdGFyYkdoL3dmODN4UDloU29maGx5SlJicTNiTnEyd016?=
 =?utf-8?B?UFJFa3cxTCtKQW5qYUE3MkdCNEJaL0UyUVFiMmhFOUhWem9YNFEvdTZXVDRn?=
 =?utf-8?B?QnRvZnMra3NMSDREcWtTNW9sbnVRWmlZYTVMVVh0bmdYTTZiMExkREgxaXZM?=
 =?utf-8?B?SFhTbk44V2xjeDRnWXNkaUVBeURvSExocUs0dWZ2ajE0aEhaWmRkSUJWZW5G?=
 =?utf-8?B?eVdwRGVpSmNWL3VHR0VDRzg4YzB1dWxURUh2YWxGVXJOb2k4NVdDeiswbzM1?=
 =?utf-8?B?ZlVxODdTMHRqSmU5Vm8zQ3Q4SCtpS1RIOEJLcERuMlBIU0hZWnNSUURMVFVZ?=
 =?utf-8?B?ZnFnRFhGVlJ3Z3ErcmdWb0FHaXpKOGJQTTN3M2Z5aEZKTGlETGcrMS8zYjNq?=
 =?utf-8?B?RFFReExQdDROOWdMMFBaYjJDemRwb1MwU0tSVG9WQm9MNmQ2WURmeTRzeUo1?=
 =?utf-8?B?V2hMU1hzcWJ0SXlpT0c3bnhRNHQ1SUMzWlhWSGY0c21UTVB6cE1FWkFyUEdi?=
 =?utf-8?B?ZXdicCtCVDJMSzUrMVFoRVRpYnN5SDZwZzBPdz09?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(36860700013)(14060799003)(82310400026)(1800799024)(35042699022)(13003099007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2025 20:14:15.6313
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e5d5a45-8ec5-4f58-a410-08dda46d8b98
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5PEPF00014B93.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6197
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Jun 2025 20:14:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65480

T24gNSBKdW4gMjAyNSwgYXQgMjA6NTAsIFJvc3MgQnVydG9uIHZpYSBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnIDxyb3NzLmJ1cnRvbj1hcm0uY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdyb3Rl
Og0KPiBNYXliZSB0aGVyZSBzaG91bGQgYmUgYSBRQSBjaGVjayB0aGF0IHRoaXMgaGFzbuKAmXQg
aGFwcGVuZWTigKYNCg0KRm9yIHdoYXQgaXTigJlzIHdvcnRoOiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9vcGVuZW1iZWRkZWQtY29yZS8yMDI1MDYwNTIwMTE1MS4yMDE5MTk0LTEtcm9zcy5idXJ0
b25AYXJtLmNvbS9ULyN1DQoNClJvc3M=

