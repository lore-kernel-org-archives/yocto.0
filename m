Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A7F4C54ED0
	for <webhook@archiver.kernel.org>; Thu, 22 May 2025 13:31:40 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (EUR02-VI1-obe.outbound.protection.outlook.com [40.107.241.40])
 by mx.groups.io with SMTP id smtpd.web10.23838.1747920693237115293
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 May 2025 06:31:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=Z3ANP2DM;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=Z3ANP2DM;
 spf=pass (domain: arm.com, ip: 40.107.241.40, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=Po3KRBE4zit+NbRnbezg6Uizrn0SKBk9606hZ36MaXoalUvWric2jDJ5x7dY4m7gJ1sbygpTj3pVZNdhZQ5lP6pPqHrqZ4rmOap99tanxw2aTpKWVCRCbVDunmY6ubD4dFkqVvdbS//Wvt0qvXqN9XqfDDRgCW3n1yFiqdV669/y0FnC0g9AHIq/MTUb9a4DZqL+y4WTP37cGnvEzbWKNrea0SMc8HQZbC1du5iZMzWGnsooQhBZceMP68URuFcUVRBCzsNi7QWKnNLuN6/4DFgy1vXDWMg/ur+nWv3HCSKU+7FvByZTNdsZmyABmwfEg8hEP0DWgrZBDfloEGdrIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UVEVPZYApPhZYsI/cGn48ODCLZfBafmzeBmI0Jzunjs=;
 b=iwAyoa2PqVXLml7wrtNqtxVBaP44lWBTj7fcTzKy4O2EaHah8rHm3XCXAhflRcHXsEQG+c40bBKhE2eYePKGR3QSCo3tYQeLkzgRiU9yTle/ZZxKwjJ2CGbDHen+lGxRn5GvPHT1kgo4atsxxewN/zPgMxFIOFm2qc4YE5pJyeYZe5EONh+8h6KlC+5tvYo5P/7Fq7mocfIEpApKauAr2JGX8qF4xjOSIdhiPDGbUSm55pqO/FUEOS9AAejOvEUD5YRtq+PYaZVQF3plIYWbbrejTJ8SY6VTy3GwOV/4Z4T4c01yOjhRCFnUgBXcgTEHUMqCqu3+tquKUJgvrsDFhw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UVEVPZYApPhZYsI/cGn48ODCLZfBafmzeBmI0Jzunjs=;
 b=Z3ANP2DMNLMRVBA0gj1I1KSDqQs0UL+wO0kTtTHC3jJLeK7oKKS/HGO/h5cBbAinNGykrNmsrCeEIbpklK58HMRFcy6mb9kTv2pogVYTxp8q95OJDWBGj4kPgnZUBjWBzvRidz22kUcYxHcgekClxeTIYJ3hzMPc+8CT7xdY8sU=
Received: from AS4PR09CA0009.eurprd09.prod.outlook.com (2603:10a6:20b:5e0::12)
 by GVXPR08MB10687.eurprd08.prod.outlook.com (2603:10a6:150:15b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.31; Thu, 22 May
 2025 13:31:27 +0000
Received: from AM3PEPF00009B9F.eurprd04.prod.outlook.com
 (2603:10a6:20b:5e0:cafe::7d) by AS4PR09CA0009.outlook.office365.com
 (2603:10a6:20b:5e0::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8769.18 via Frontend Transport; Thu,
 22 May 2025 13:31:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AM3PEPF00009B9F.mail.protection.outlook.com (10.167.16.24) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8769.18
 via Frontend Transport; Thu, 22 May 2025 13:31:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hyu7AaXqrZMLdaEmB5ubQJVazMaS5wzNhK8uCGdSyQdMFFgsuTXvv3qjn1qNaybCtn+N5JXq+nBOMMiUejvd3dvvdBovDnkIDsy8QPH4GSTH4AKh52ceFdWSw8kOkSN9x4VIurIezIs/a88Xh1FlyIh/dpB2Xs/M9BDDTEcvZAN7ulis/vH7pF0shhYX1x7cFgGHi7C0GrKnAafKPiss8NuxW22LDVILS2c0/R0+DHkyPc7jWw7DdBOBY6Vvx97bH2KcKPmMngLccK7GlmKaP5GUGLevu3/sJlr6nG93qqb+ym3MFMGtmAq6YoqL8U+w30bJFj2XHz2T81zNkrWT6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UVEVPZYApPhZYsI/cGn48ODCLZfBafmzeBmI0Jzunjs=;
 b=Bmn/XHlLbgcth0iGuVqXHHGuAn6D4RY2m1q6+KkPugPHFZsMbXgZHW4DThLcuzB8tS8Hh8VSjvbBUiwRgmAE8X2U9cYPfZ7iYTT2fxkaFMcyjerfrGAU+jRS/0gIBzBoMhUWaZ4ceExfkAOP/IGLtS2p8J/YlRGCSnvaMRzTX2QrAN+DylICXVyjw16q4AyHscHLaveMRj6BAnqdY6j4nYGeDlAxgE5A8euUybYK7i/6QEbZfkaOYsN+2lyHIhvb1S9rCCtw6lp7vQECBHm1lESImYvYvRoDsrKIhfnHnvMx3gFt/WzddhvLTtTyEGxTXbf4u/xt9gNlbaLSbtYwVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UVEVPZYApPhZYsI/cGn48ODCLZfBafmzeBmI0Jzunjs=;
 b=Z3ANP2DMNLMRVBA0gj1I1KSDqQs0UL+wO0kTtTHC3jJLeK7oKKS/HGO/h5cBbAinNGykrNmsrCeEIbpklK58HMRFcy6mb9kTv2pogVYTxp8q95OJDWBGj4kPgnZUBjWBzvRidz22kUcYxHcgekClxeTIYJ3hzMPc+8CT7xdY8sU=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM7PR08MB5431.eurprd08.prod.outlook.com (2603:10a6:20b:10c::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.21; Thu, 22 May
 2025 13:30:54 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8769.019; Thu, 22 May 2025
 13:30:54 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"rroyce@textronsystems.com" <rroyce@textronsystems.com>
Subject: Re: [yocto] Do_package is changing permissions of files
Thread-Topic: [yocto] Do_package is changing permissions of files
Thread-Index: AQHbywS9SCVpHEOygE2/x0gkVxgwXLPepWYA
Date: Thu, 22 May 2025 13:30:54 +0000
Message-ID: <54469715-6966-4E44-A432-AB332166C9FB@arm.com>
References: <zaAO.1747909903312722330.F7i9@lists.yoctoproject.org>
In-Reply-To: <zaAO.1747909903312722330.F7i9@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.500.181.1.5)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM7PR08MB5431:EE_|AM3PEPF00009B9F:EE_|GVXPR08MB10687:EE_
X-MS-Office365-Filtering-Correlation-Id: 89eff547-d1ac-4476-efc4-08dd9934f45e
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?v+Y4u1SM7dRqEsahgJvmcMus1jpOCjzvC4Cx5hG4xmXfpM7OXs+NqTpRmNdC?=
 =?us-ascii?Q?36cM3xX8xE2rUg2HHruI1lfiGooLkUPoiF1ZaxEYALou5X0ERX8fZMgw0S7I?=
 =?us-ascii?Q?UkQ0QjHLVy30pnbFIkzAojbq2QWuN1xAzlv8RM6x7slOAiC5VwEO3lR8C7og?=
 =?us-ascii?Q?QePeUQrNtAXUfFnseRWramyCdBuviomtwF3/tiyUlqssDFhVUmBqqeCdVdhr?=
 =?us-ascii?Q?8j/ZDw3ptVtkI0aKrW46Y71W3Ypcb9xMV/z+T/or2u6FIZVRFyFJFtU66hAG?=
 =?us-ascii?Q?rPIvZKH8nDhPBMGxTxukI8K6xekgCIGuUmRsUQIEpXzdJFkNGtIN6FnJoGLd?=
 =?us-ascii?Q?PZCJrK/6egrndGIC02qwVaAX0mLt6K61l1ZiMdryO//FYShdRoVIsYgsRyD/?=
 =?us-ascii?Q?UOSByD+XjR7C3ABL/Op5RCIarSzZ+1flrF5XR3wx7IINCtyC8JaYGEoB54Ss?=
 =?us-ascii?Q?4pYQpaNAt3RNt5B3qc0eGZJPgnLwOkXC/OLKO6tUgrMCqb09+WT0LUq24wxi?=
 =?us-ascii?Q?RBfaFdnMOM5tXyLYyVyFL3Lc5kR83maDYw+BoglwP0NwLe1Kc3Ga3sZ+NwXi?=
 =?us-ascii?Q?h6S0hAj8B7bM5JIKCdKNAo4htzD5B7xobwEOuTyN9RO827LBJ/GqCdPx3BHb?=
 =?us-ascii?Q?jyA2a+n8hiTPCjUw4S1x0NX59b6KhEjUru51LHYIcIuYsjoAN1x22gUqwM6r?=
 =?us-ascii?Q?o5pTuMAxSC06wMILyT7qx49LYjEHIkCm9tT1WFZ7FG6FZp61fLlJpxUluKg5?=
 =?us-ascii?Q?YjHtzk2K5VmpYtNJ/t/eQVUJb22X/WO7h0u8AYhvcVe7Kk3QKq5KUqWKT5W8?=
 =?us-ascii?Q?DTzwkSttOsqXnuPGrHyiLi1jc0LK2uJ2XgdIZtC5oHF59hPY5UdUrV7umoNp?=
 =?us-ascii?Q?KAurfHhj1HQvAY1BYj1KtVS2OKsCoeB5TYvlxeLE+ZZn/ZMaj+rSiDjctQmo?=
 =?us-ascii?Q?y5KZo14j6qHTCfBqFqvC6VuooO7IfUbmBKTEBaPpbG18i2lMwQDKFUyY280D?=
 =?us-ascii?Q?AP+brlzqx2h9sKBaSP/QSgtDvOnEZvBQffg5hz1SFaqu48gyip96v7KmvUT6?=
 =?us-ascii?Q?SSZUSKQ4EdDVkR2WDWE/V2hkC2QxWqRBd6SvDD8ijg6pgRiRnmsNTbAOB1xB?=
 =?us-ascii?Q?XWkGca2PaTYHGsoSxPoEgRIM91ZjTscclHKROEbiBnDeD41GkTE+gvJHtzrt?=
 =?us-ascii?Q?tDwL3czT58xGBv03v+87lzfFIVbcLiwz1T868vbGcnA241dur0BfcxUJz4gj?=
 =?us-ascii?Q?e5UfJhRyokaAW0O71R4WYwlaZPYKSFv93D0IP5ra2b9NUb4omB17YYNab2m7?=
 =?us-ascii?Q?xUKMuBl9DlTEE/6034Q7b6nhsNGy+JCm2++AZ80nQAuXxmgWVFou+HimneMz?=
 =?us-ascii?Q?40u9HHaLtWySLcrQdv2A39YK5xO5iOudP5DCUGcxwXezt3DBoFUbDfkoW1Pb?=
 =?us-ascii?Q?m1Wo7JpRb3s/nJONtOFIVGEaaf58pWMXHhmOH1r2gL3qzGfl0m5yXg=3D=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <9E09C999691CDB44B59EB8D12CFF9479@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR08MB5431
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM3PEPF00009B9F.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	96439055-7b0e-4a0d-5fbb-08dd9934e0d8
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|14060799003|82310400026|35042699022|36860700013|376014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?78iIaGIEbArdCeqgTcWz/gdgFBn+SW6YDU5dwEIwXct7nlUOty+JebXRkOiB?=
 =?us-ascii?Q?Tj4VIvN3UbRpxggLfhzh/XJKaZSwEY4U/xTX7X8mUIt6j6gotp93pYBHCfMW?=
 =?us-ascii?Q?gBu2vU8w24ApORQH042mr8+EEwNrueuBlda5WZIpON/S517IWKZ8pfoxvGY3?=
 =?us-ascii?Q?oxhZbRe2TZGxA1Y2GnwNp+3ZnzwKc0oHFFdpMy168MastUa0IXWUqUn4uo5j?=
 =?us-ascii?Q?pgcEEWqzFA6qI1+HpTBttSHll1eZMtyIIFIAKPQkoFgN9RFUE2g2kI7a5Myd?=
 =?us-ascii?Q?jhRSbdKIVXj8AR/WYR+tRdGKm5zeGF6RAiovVCPBNP1u2iKVlNn2pMXolpY5?=
 =?us-ascii?Q?JeZBp1eH+CP3m1fkw78m9uh+rngrDtGS4aHM4N6PdOasSdTgwKChz/B3q02N?=
 =?us-ascii?Q?MYZ8LgtZIEQZTyyYJhCGUsFEsrDuiFtqV6Y/QFQHFVFgbPBWUNj2Qp2O2eMq?=
 =?us-ascii?Q?3yfSP4r9E//5XeYyNwF0pFXUqUNB68XvNw3ZonpfVpkAh0WN4I/47IxRKP+j?=
 =?us-ascii?Q?U0crQdG4SGRdakRaILTOkl3Lu3xeNHnqAj30dqk9ubVtnAD06e9QQSTWSrXq?=
 =?us-ascii?Q?+mHTMguFffscW+M1TB9jQrviFMyMo4zdFOD/wqxw95aL3jdDiRHir5L6oGIA?=
 =?us-ascii?Q?m6e5kptedT4izSzOUp/9OaAwWc4YvY3dE/YpgYe2fcOw1zwUP0gi78gTlL5O?=
 =?us-ascii?Q?3QW8FMNDBtdkU+/v1jwrZITXzmWFEtqqQgJBC8zasqXkn76bak+4u3NqNQTg?=
 =?us-ascii?Q?86GQfd5m3L55iFj7jQhGH4TycFIw+a/21j3UM4S1Bl1fnjwphF00en2dlXXp?=
 =?us-ascii?Q?GygpsyhGDbzpuam9j/ZwbZQIuvIIvusK0Ur73atLInPitp8p8gd2PqD7dywA?=
 =?us-ascii?Q?FfaschdbHf6ArwQf0gYAP7oY3J/0AlZBl780NIfvDtsLx6zLRCZVuuBuKb+L?=
 =?us-ascii?Q?vVfdACu2k4Eas4GlBZ1N4Sk19F2fP0oqrUh+u6YmAU9bSWkMRsqWvRNGa1/y?=
 =?us-ascii?Q?JBzpCp88AuIrecvIN44LqVabGqAQp1KUzfxD/3GHAcCAcLI06fTN5PBXuDHD?=
 =?us-ascii?Q?RWx6Jzb4GZHa1olnjbzcObOLLaVMEoTNnz1zqCOqxoLFwvtsvyAcGAriyN5Q?=
 =?us-ascii?Q?FaVNnBSfTaDmlffgU9LPem6CUd+yfJHWrl+UZLq4m9qAhTzTnnPgL6xfH3Ux?=
 =?us-ascii?Q?QLRnrzrvCHI52lamT7aOwYZTjVUcyfchMD461tZV+OzQDGFaQyRSJhQiZnof?=
 =?us-ascii?Q?qLpuJnhRxxx9GQb1FqGSXRqfsm7t7Bn4Ab07OLV4cNhWc6KRxbJH8Vcgewwe?=
 =?us-ascii?Q?efRgkejAS7nVw7NM2cKZEwh6bmsv17KCLvRmexO+VKCswZ/epMlsEkHYujlz?=
 =?us-ascii?Q?/SdZp/+tMSaL8Z1KktFz33pVCZVqCCsPTGQX+mfYh5BIaEKmELEIMM93mjBO?=
 =?us-ascii?Q?o7mG63ECY/XBdmF02EeAFfJDraZUD+YkNmTxva36HvIj7IDKeQmsedBFOJ7D?=
 =?us-ascii?Q?IBeEUxI7+pSEbxPrGcek/F8kKzEbD54i89ke?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(14060799003)(82310400026)(35042699022)(36860700013)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2025 13:31:27.3333
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 89eff547-d1ac-4476-efc4-08dd9934f45e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM3PEPF00009B9F.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB10687
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 13:31:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65400

On 22 May 2025, at 11:31, rroyce via lists.yoctoproject.org <rroyce=3Dtextr=
onsystems.com@lists.yoctoproject.org> wrote:
>=20
> When the do_package step executes it is changing permissions of files in =
{S}/{B}. These files with changed permissions are stored in the cache so th=
e next time do_compile executes against the cached files the files are diff=
erent from the last time it executed. Is this is a bug or a feature of do_p=
ackage that isn't well documented? Or it could be that I am doing something=
 incorrectly with setting up the source directory that do_package sets perm=
issions in it?

The only way do_package will touch $S or $B is if you hardlink a file into =
$D instead of copying.  This is a bug in the recipe, and should be fixed.

Ross=

