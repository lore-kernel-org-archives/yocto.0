Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79023C83F1A
	for <webhook@archiver.kernel.org>; Mon, 21 Jul 2025 15:50:54 +0000 (UTC)
Received: from OSPPR02CU001.outbound.protection.outlook.com (OSPPR02CU001.outbound.protection.outlook.com [40.107.159.12])
 by mx.groups.io with SMTP id smtpd.web10.44543.1753113047855713960
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Jul 2025 08:50:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=ckpBA5O5;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=ckpBA5O5;
 spf=pass (domain: arm.com, ip: 40.107.159.12, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=ILNHyAYYgss0bzsT3m3poFthq68nRFFOuoNKlcXp7irabUPBaiYV7epVJCrcbUoZ41/D1b2AIZLJr4rPM7hdi+YUPpnmuqJ+P/V1kYhfNZNY7HNvX+CAGzcG09LbpOkhktaNvu8JEFvo9+9NNkPAzD53zq6hcUwLBVxyDfaIptw03NmnnmP7Ku2DqTj5O1+c1tr8QgmmXFk8dZEH4O3XYC7U7beq2ZgakT+tCGLKgu2jTPf/a2wF4AdTYbh34N/P/nLEaxql0vIpuYEydWHTmvSAfM9YoW25jcbltgTECTbgO8KKEJvES6eETEMhb7uf3D7tjIIB1a9rzfHlYqAS1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BE7DBtIPElcV7NhPeLXKiAkJ4kbRu6btQkOPFEH89Is=;
 b=aCRoaKjXpRo38iHzfgqSZxKflHoTBIkzKrnvrQL2FRj7lSNa9wo8dizt/urwCOL4sU9ZouUNIq0PujsFzhRXx4uRqUdam4oXAotAFQl4CSma7mLCuMtzZQ+p8L9P76ahHoTY7Wr/V+r4SSwj8o/QSteOnIaxbPQeHzX7R95dA20ekl0waLNjmY9TnYQgpzMxB10sNZyQObCbwPym+D3SxhxNB+g2hF+gjPFHQGK+DS+EB7RVIQ+0iqDt7KRnPEiGtWyBifSbBnfvPGuJH6RPBjGP/s3pGY9kR4vqpYrxdpEs7AEh4XbMZGgVNGBR1NeL1blzYj2bEBLefVronMDv6A==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BE7DBtIPElcV7NhPeLXKiAkJ4kbRu6btQkOPFEH89Is=;
 b=ckpBA5O5ccyZXqAwkbHqsvOIcGU+auzOxR0R3bC8EHUN3VXEc3pVjXEn8a4vhwStN8qBNNLgSs/dZZ+gauvhk1DGWSZn5L2idUTxL1f4xtYAiJQmIiXg9v9jCEObLH3YUhFmNzNUyl1k08+NbYgzIk/Lmaip2WyXMPmpm0//s4A=
Received: from DB6PR0301CA0102.eurprd03.prod.outlook.com (2603:10a6:6:30::49)
 by AM7PR08MB5349.eurprd08.prod.outlook.com (2603:10a6:20b:107::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Mon, 21 Jul
 2025 15:50:41 +0000
Received: from DB3PEPF0000885E.eurprd02.prod.outlook.com
 (2603:10a6:6:30:cafe::5c) by DB6PR0301CA0102.outlook.office365.com
 (2603:10a6:6:30::49) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8943.29 via Frontend Transport; Mon,
 21 Jul 2025 15:50:41 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 DB3PEPF0000885E.mail.protection.outlook.com (10.167.242.9) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8964.20
 via Frontend Transport; Mon, 21 Jul 2025 15:50:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OW6bUyIrhEKYIMIjc+EG6AbMGQmwGMtwqBIVy5NW5SAVfDVU3+HuadZm0UEM5dfDGBJ7PsZdv1mbDpUC+BXcA7tFUrDp2hqJ+TX/9GetCOfljpzVlZeiwPAEbOgZiaX+Dj5eOPOA0zvaCZpAKGePFFBLB/89s7t3j0W54CzTUMFzACJfVaDBth5+K8w/8b/JiUGjMeAJu9GXIWrPceGTfB695kSCyNR12ZruKPiWtQ89u0BIQneRTevWO2PiBcRJcq73wWZz5p2nZSelbCrOz96N3TG4WpUjsIBE6rq8PdEb2P5yc3poVRPCuMJ/fVPN7FW6caHrJd/Gqf6gdLbXEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BE7DBtIPElcV7NhPeLXKiAkJ4kbRu6btQkOPFEH89Is=;
 b=eHN9mTV9wTeEft/hFnqkaaDtB3QSI/dOKHwYIG7iFa6lD2fhnmrC2syk/TxQFuPAL5rcYMGRBAKrObbfcGrZpyUAaXuzauAJFyr3xLl2w0zU24nLEwgVpVvgt6YYci/uZwzbdQ+aEECo6RYHTcSm18fXA/QJbdjmC1LO+fhaAAD9KjiFMP1peyrZAgKegsmhZ53bwij+ZOcUjTczVoBKjfyirLBzGPaulwbqaf1ijE3f0WJEQfljGHj7zJ3UocWOt0mBHWPQRetDDASA37lirxTA/DnDzwOuzNQ6YTRN/7DZ6fnUIJUfrTp9yPC3fBJb9mlY+ckdRIPd3U6OTaDutg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BE7DBtIPElcV7NhPeLXKiAkJ4kbRu6btQkOPFEH89Is=;
 b=ckpBA5O5ccyZXqAwkbHqsvOIcGU+auzOxR0R3bC8EHUN3VXEc3pVjXEn8a4vhwStN8qBNNLgSs/dZZ+gauvhk1DGWSZn5L2idUTxL1f4xtYAiJQmIiXg9v9jCEObLH3YUhFmNzNUyl1k08+NbYgzIk/Lmaip2WyXMPmpm0//s4A=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB8PR08MB5323.eurprd08.prod.outlook.com (2603:10a6:10:fa::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Mon, 21 Jul
 2025 15:50:07 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8943.028; Mon, 21 Jul 2025
 15:50:07 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"joseph.maniaci@seagate.com" <joseph.maniaci@seagate.com>
Subject: Re: [yocto] Generating 32-bit x86 native lib while MACHINE is set to
 ARM(essentially) #bitbake
Thread-Topic: [yocto] Generating 32-bit x86 native lib while MACHINE is set to
 ARM(essentially) #bitbake
Thread-Index: AQHb+lIfXF/azRNGOEiJoPuoIhDaLbQ8uZEA
Date: Mon, 21 Jul 2025 15:50:07 +0000
Message-ID: <3F6BCBA6-5354-4CA7-81DE-9F7E967681E8@arm.com>
References: <kueP.1753110843037649744.XxuE@lists.yoctoproject.org>
In-Reply-To: <kueP.1753110843037649744.XxuE@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.600.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB8PR08MB5323:EE_|DB3PEPF0000885E:EE_|AM7PR08MB5349:EE_
X-MS-Office365-Filtering-Correlation-Id: 1dcebaf5-ba7d-464c-eae1-08ddc86e5845
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?bjRsUjdnZlgyT25yUExMbVlLdVJYM2dQNjV2VjNUaUxUclJYbGNaQ2hPbnRF?=
 =?utf-8?B?OWFVU0tQdHNhc2xpS0R1RWZKM0NsUUY4MFkrOW0wUjBDS1hQM3VtaTMzNHBq?=
 =?utf-8?B?Y1pGL1EyejRvcmh2bkVrRnRtYmI2bDdyQ1V1WHdONnJJcjQweDJWQkJrSDRH?=
 =?utf-8?B?aVZXR0dKR0dpYTFDSUdDMWIxdWNYWGo4VzJFRkRaSTRmcGk0bWNqcTIxNENP?=
 =?utf-8?B?clZHalNMczU2SXdhOGsrd1NXTUJGU3dGSFA5VWlNMG9WUUZDeUpEbVBFV0l5?=
 =?utf-8?B?RW5oMjl6MkJnOUEwS0JnVXg5aFFtekkrRkJlWTVrcE1EVDFpYnh3RlBGV3Zs?=
 =?utf-8?B?YjRMUkhvVkVLNGYwZ2tnQWZPWkFzcm14Q1FHMDc1UkNmWFRDejNPQVJuTXRL?=
 =?utf-8?B?WWpzRHVjbHR4MzIvb3o5QTRvSUZKMUgwYWE2RGlRV2lvQlAxYzR5c2xnTUxu?=
 =?utf-8?B?THV4MVJJTG02blgzQXNUSnF3WjdVNjQva2s5Q1VmUWE2eFRlWjdtZjRUS1FP?=
 =?utf-8?B?Qm9OT3pKUHI2WTJBQkpIM2trVEVNc2ViYXhtejM3ZHRZRk1MZjVjK0dsam9P?=
 =?utf-8?B?dFVTSkpmZDZJbTdwV1VEMTJBK0N4SUg4U1lQWHQ2ZnhvbjRqQVM0YkUwc2th?=
 =?utf-8?B?aEhrWjZKNVZaMlk1K1psRDNQWEx1dDZ4V1ZocXVwNkJZUlV4Ym1IbDhqOVhB?=
 =?utf-8?B?UXlsSEZFRDJyV2tYNml0ZkYzRHZ1b00wek1GZjVIa1RjcElkY0hJOGxNZWhH?=
 =?utf-8?B?UGhScDMxTDZ1YWxqby9wTzhLaUhTQXhxTUo0SysydkJjczNuWUs0WDZ5QytC?=
 =?utf-8?B?dVl6dkNwd0kreU1DS0EwZ0hQOFUvc0dFN0UrVUNDUFI3aVNpaVl2ME5vNHo0?=
 =?utf-8?B?RVBHR296Rm9OWHBUN2hrVWgzQm5mWDlrWXI4MTUyWElVQ1JQRmhnTHFnNVFN?=
 =?utf-8?B?MEZtRnl2OU1CTWFjUEVYem9ieHV4eWxUTlpUbzZPcU9PQThDcld6ZVpuSHRr?=
 =?utf-8?B?NHZQeE95NlYzeDNpbnlUVUZqWmprVWVSNzVqQVE1V0tqbmRvS01lM2RRaFg4?=
 =?utf-8?B?YVZ3RlJMZ3l6VkI0NFg0TUlrWnhjc2lTcWFyVG85WmVuNDVzVEFYaXBoM1Mx?=
 =?utf-8?B?aEJSMWUwMmZpUnFxTlF6K21qd1hsTGZRVkFxSURiTEg5bVdVSWpOUVFKREto?=
 =?utf-8?B?ZUdTZ1NUbXNqQllkaXVnRFpLVW9HWkVWZzd5NE1OWGpoYVhpMWpUVm9QdGlt?=
 =?utf-8?B?N2NNR29QTnZnanZPYk1zUVZxaFlOaFJsOFBpMDgzSFg4eW9MR2pwUTl2TTJT?=
 =?utf-8?B?aStkQzVxemV2cUhBVFpLT3VvU211WXNwTkdIR0MrSnNXYzBWZTBYRlBBRmRn?=
 =?utf-8?B?aThxa3NrZnlaTHFlTm1rcDFnN0FwSENoTmM5Y3RYTzBpQkJzS3F0Tk8yR1M1?=
 =?utf-8?B?V1lQQkpsNEwxRjlGcndyYjk2WkdNc1pESi9vdzNMaW5XYWZOSndRS3pyL2pv?=
 =?utf-8?B?NlcvYnlZZUVzTm1oWm1YVVdQcnhJK1h0MUgwSGlQTllVOHBSOVZGMmRVVFJp?=
 =?utf-8?B?NGN4N0gzdkhiaXAwZnRZcC9XMXhHemxkWW1LY3J3VjNhSDBxanAvL0grTjBo?=
 =?utf-8?B?eDNlQXdHQUVoN3FCajk3MWx0UWUzYWF5MTg1RjBqSEFLL1V2clBXOXRPWkNo?=
 =?utf-8?B?cFRnZEgrbDVxZ1ZCZmM2NngxbTROUVV5YUNwOHQxNHFBUlNFUUpaM29KdWVx?=
 =?utf-8?B?clJ1N2EyZG52d3MraVlISERIZUk4NnRreWFMMVZoWFRlVmQrUjFCMlBhR2F5?=
 =?utf-8?B?OWpac0puSURNRnE5Y25vd2JGbzg2b3lqQWlrRDRiQ3BZOVkzMysvejcxUXVZ?=
 =?utf-8?B?S3grUml5bkVHQ0xEbHdZWktqWC9ZNnNpaHh4a2gwWHlTT2JlM002UVJTSHF6?=
 =?utf-8?B?SCtYb1lrSTBOUkFXcW1uUGVhaXhVNHRmcmhLdktSaXUybGdwRmwxbHdRZXVC?=
 =?utf-8?B?bWNabHdjQTdBPT0=?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <B7DAE5DD5A38CF4B8D5E8AD6D71E5AC5@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5323
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB3PEPF0000885E.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	f6c032df-4069-4016-9ac6-08ddc86e4459
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|14060799003|36860700013|376014|35042699022|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MWQrcENld1ZqWU1ia202RDNQbDJhelBEZDJwSDVoVnE1WUdsUmlFWEsvM0hB?=
 =?utf-8?B?UHhONVdTRXpaV2w2cjVCbUUwZHE0b3UwUFpuUURpUzRNZzBQc1BMTGppeEhV?=
 =?utf-8?B?SU9ETnQ0Mys2RGFadmx5NEtVQTIzSkdEVTVZT2MyYWZrUDVyWTRMbWtlNWZH?=
 =?utf-8?B?bmVZTTlOZTNLMnYrTUJodUNzVEVRUzBOL2x1SHBwKzQ1QTRwT0I5ZUdqVU44?=
 =?utf-8?B?VDB3a28vNU1jbGJnQjl1aDVsUkI5R09VemU3OUJNNHpSTGdsRU9sb3l4RHox?=
 =?utf-8?B?RFNMVWZnbjd3TDFwKytEdXVFNWxhVmVyVkNRaStxMWR2ck1NMThDMTRKYm1x?=
 =?utf-8?B?N3JjSHQ4VDVhN0FtMUJNc3ZJU0lFTHhWZklFeWtVdHdLMlJmaVBiQjE0T01Z?=
 =?utf-8?B?N0pDSmw4RURaT3IzeFdOYm1hdTZBVTJPeVBrNjZXdWpOY3hQZnRHUTRDcHVi?=
 =?utf-8?B?RG5PMWhQdW5XV1RUZjFVWjUyYmQ1WEx6bVdrSVIxZzlQWm9JOHR1SitLbnhJ?=
 =?utf-8?B?R0pLbXJFTGRWeWFUc3crYjVmaDF4WlZicmJqUzFXT1VuZXBBWHdSL3NxVjlH?=
 =?utf-8?B?RzhUWjZLeDUyWGplSC9oUEg1VkFtTDZ1MWJJbkE2bktuYkFaZ2ZBM1hnd3Y4?=
 =?utf-8?B?OWZPTTdxNUZBZ2ZBampYdzVJdkRBZTlUeHlFc29WdmtReFlxR0RKcEJlRVdn?=
 =?utf-8?B?Wmh5RlF0azNOR1A3UTkrTm5RQWNLbExmS1lab3JqMUFFV3NKZEhUa2hxR210?=
 =?utf-8?B?a0FDNjQxQ2YxSEpyTytxcy9QZW1vdS9aY0dHTFk5NllMUEtjUlRvY3JCRjYy?=
 =?utf-8?B?UnI5YjhUYkE4WGFnYmVHalo2OFkvcHU1Um1mZHZTWGNLcGVTaGlmZE9VYlZ6?=
 =?utf-8?B?Y0prZmNPdnRDTC82aHlPU0lHVTJ6S3l1a0tjaHVONHdZcFllNmdidlVEV0Fu?=
 =?utf-8?B?bklRQjNFZmZpbURqUVFVVmZ2UmxsNk1CUkZFTkJpcDZZQ09TMFVqYUhscTkv?=
 =?utf-8?B?YnZWUElWQWF0ay9XRS80MGhoYS84Z1hHcFlZc1d0eld2K0dxOHdtK09pc2JJ?=
 =?utf-8?B?NjBoaHVxcUNsU1Q0dzhGVUV2S25vZFV0Q0FYYVEvOXg1Qkl5MzczNVFSaEdt?=
 =?utf-8?B?aU5sR25jaWtUZ0NkaDNiNEZJMUd1WmhHZGJ0dTlZdjd2cjN2dHBWN3phNUta?=
 =?utf-8?B?WkhTSWNpZkdHTUp3NnhFeGdmVlpKTHZTejZvN1JGUWhLa25wODBIaTVmTnVX?=
 =?utf-8?B?djRZNEt0T0lnbUtLS3JoRXhvZkswMzl1YU9VWm84RjVOdFA0dTgyT2JJMWJv?=
 =?utf-8?B?a2VnQUtRVTJubklZV2ExREJsbG5BdDRBaTV3SzlTRHdrN2lZV3RWdnRHdGhx?=
 =?utf-8?B?UmVkL0hxQ3ZPckNOQldDQ3M1a3BPMjRjQzI3ckF4ZVNHWmNJcTJYeUpQb2FK?=
 =?utf-8?B?by95d241ekp4NUFjdFUzU3ZxcmlnclNOYklDdU5BNWRSK0U2S0JCVmpEN1pt?=
 =?utf-8?B?VjBjZzJNN2h2cmlXNlBVQWMydlZQRU1hMDJNVHJNMmJ4T2J4cFlrd0MyVHVM?=
 =?utf-8?B?RDE5MzZEaG1KNFFkOWZMbm0yejJjcTg5VVpmdkIzemdobGp5UFhPd0NQTGJs?=
 =?utf-8?B?ZnhUWmpKRlZQb0N3SnlkdXVGMzhzTHFtblZGbW9lOUJqSHh0a1NzQmZkQjU2?=
 =?utf-8?B?dStJekVTNnBpV2lxQXUzUGQ3ZUZscGdaTDBoM2FuWkZGeXErTWZ5QWtKWUNP?=
 =?utf-8?B?bU5FOHFYOGpTTmViN2xwR2VrVmQ1UjdKMy8ra1BGZXdKQTVVUElsZUc0dmxP?=
 =?utf-8?B?ZXdZYzloR3p3VkxQbENSWENMa0FIc3NIdDBLNUpXOVVFRW9VUHV4SjY3L1lY?=
 =?utf-8?B?Z2lVSG9GQXBZeWNFZksyL1psOVY4bFZtV3RuaUFkTVN5Rkw1ZkdPcmNLNTJy?=
 =?utf-8?B?SHdXNUd0MG95WWY5YnFpOTRvUHdSWlY3MkU5YVd5TGtBSWxHekIzb2ZIMUcr?=
 =?utf-8?B?VmV6YjRYMnN3UVZMK1N5TGMrc2xxRWlFb09pb0ljZnM3d05EaVBEL0NoNmJv?=
 =?utf-8?Q?/fTUK7?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(14060799003)(36860700013)(376014)(35042699022)(1800799024)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2025 15:50:40.8890
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dcebaf5-ba7d-464c-eae1-08ddc86e5845
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB3PEPF0000885E.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR08MB5349
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Jul 2025 15:50:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65691

T24gMjEgSnVsIDIwMjUsIGF0IDE2OjE0LCBqb3NlcGgubWFuaWFjaSB2aWEgbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZyA8am9zZXBoLm1hbmlhY2k9c2VhZ2F0ZS5jb21AbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZz4gd3JvdGU6DQo+IA0KPiBTbyB0aGUgaW5zdHJ1Y3Rpb25zIGhlcmUgYXJlIHZlcnkgZXhw
bGljaXQgYWJvdXQgdXNpbmcgdGhlIGxvY2FsLmNvbmYgaW4gbXkgYnVpbGQgZGlyZWN0b3J5Lg0K
PiAgIEkgdHJpZWQgYWRkaW5nIG9ubHk6DQo+ICAgcmVxdWlyZSBjb25mL211bHRpbGliLmNvbmYN
Cj4gTVVMVElMSUJTID0gIm11bHRpbGliOmxpYjMyIg0KPiBERUZBVUxUVFVORTp2aXJ0Y2xhc3Mt
bXVsdGlsaWItbGliMzIgPSAieDg2Ig0KPiBCQVNFTElCOnZpcnRjbGFzcy1tdWx0aWxpYi1saWIz
MiA9ICJsaWIzMi1vcGVuc3NsLW5hdGl2ZSINCj4gDQo+IFNpbmNlIHRoZSBNQUNISU5FIGlzIGFs
cmVhZHkgc2V0IGF0IHRoZSB0b3Agd2l0aDoNCj4gICBNQUNISU5FID8/PSAiZXhvcy14LXZhbmFk
aXVtLWJtYyINCj4gRElTVFJPID89ICJvcGVuYm1jLXBob3NwaG9yIg0KPiAgIFdoaWNoIGxlYWRz
IHRvIHRoZSBmb2xsb3dpbmcgZXJyb3I6DQo+IA0KPiBFUlJPUjogIE9FLWNvcmUncyBjb25maWcg
c2FuaXR5IGNoZWNrZXIgZGV0ZWN0ZWQgYSBwb3RlbnRpYWwgbWlzY29uZmlndXJhdGlvbi4NCj4g
ICAgIEVpdGhlciBmaXggdGhlIGNhdXNlIG9mIHRoaXMgZXJyb3Igb3IgYXQgeW91ciBvd24gcmlz
ayBkaXNhYmxlIHRoZSBjaGVja2VyIChzZWUgc2FuaXR5LmNvbmYpLg0KPiAgICAgRm9sbG93aW5n
IGlzIHRoZSBsaXN0IG9mIHBvdGVudGlhbCBwcm9ibGVtcyAvIGFkdmlzb3JpZXM6DQo+ICAgICBU
b29sY2hhaW4gdHVuaW5ncyBpbnZhbGlkOg0KPiBUdW5pbmcgJ3g4NicgaGFzIG5vIGRlZmluZWQg
ZmVhdHVyZXMsIGFuZCBjYW5ub3QgYmUgdXNlZC4NCj4gICBJZiBJIHRyeSB0byBhZGQgYSBtYWNo
aW5lIHN1Y2ggYXMgTUFDSElORSA9ICJ4ODYtYmFzZSIsIG9yICJxZW11eDg2LTY0Iiwgb3IgImFy
Y2gteDg2IiwgYWxsIG9mIHdoaWNoIGhhdmUgY29uZmlndXJhdGlvbnMgaW4gL21ldGEvY29uZi9t
YWNoaW5lLCBJIGdldCBhbiBlcnJvciBzdWNoIGFzOg0KDQpZb3XigJl2ZSB0b2xkIHRoZSBzeXN0
ZW0gdG8gYnVpbGQgYW4gYXJtIHRhcmdldCB3aXRoIGFuIHg4NiBtdWx0aWxpYiwgd2hpY2ggZG9l
c27igJl0IG1ha2Ugc2Vuc2UgYXMgYXJtIGhhcmR3YXJlIGNhbuKAmXQgcnVuIHg4NiBjb2RlLg0K
DQpXaGF0IGFyZSB5b3UgYWN0dWFsbHkgdHJ5aW5nIHRvIGRvPw0KDQpSb3Nz

