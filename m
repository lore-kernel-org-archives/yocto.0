Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06FDC83F25
	for <webhook@archiver.kernel.org>; Mon, 21 Jul 2025 20:14:05 +0000 (UTC)
Received: from DUZPR83CU001.outbound.protection.outlook.com (DUZPR83CU001.outbound.protection.outlook.com [52.101.66.12])
 by mx.groups.io with SMTP id smtpd.web11.51759.1753128835478609698
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Jul 2025 13:13:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=GrfAtGsJ;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=GrfAtGsJ;
 spf=pass (domain: arm.com, ip: 52.101.66.12, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=qAEPQ2wHYsk/JNtP66pZn/iMqY0ygAJeBT1tiviQ7O6Wouy8clZQcqBNwv6SuHhHssJg7iFJVDJr3zWtatHlLchKXat/XlefeIqBbyJ0CFI5eywveldWxsACC/ZGN1N5JuS1OPyK8WA+1Cv6hs6qYZCTvbCejdA5SBPLC35X76lSwj/rHjpwP7A3tAheJQRpn0389XitW8EHje3RkoYAzzaVnl+h2rsqJjOC2q6xvlzdBeXeSBDY3WQC8cFdF+oOSFk3NJ2MaUTqKcl9qXjrVkb2AJrxss5Xtpv8Ruw2dmedRqs0aRnHC+T0fLZoSwOp1nkawwQ5SZ4MPlt8I2Dl7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q9fefWq/86g8Cz1i0ntjFJLp/oHUN55r+mwQiAOcXDE=;
 b=yH6URUkplERNy1tIYtDoC2cosoWXIt6WffpqcUZQYLRsa2GMkSwP6C5dnskmgQ65mRZt7bP5pNSNjCqbF+I3H0gAozlw0EBk63eHI3a2J+aoxsIPIZE67UM8hY/aTZQF2C/Lk4JclNduRw26dxhnxX7GTusA8ZtM9w+cDdd/djG/RoXQt7h1CON47yqu/Wn3NmwUDiaWE9FwBk/iqO2PGzL6AoB2fOE2jSt/vQLViwz5ql9/V5E0FdHPAYCKt1PP4gNQlIgDyJ2WngvMwYt81R11L1r78otCQ/oLP0H2UJUWOc3dkPbSOBroSbISP3tDvQfJaZ4PKNMzx+KzR9JfAw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=seagate.com smtp.mailfrom=arm.com; dmarc=pass
 (p=none sp=none pct=100) action=none header.from=arm.com; dkim=pass
 (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q9fefWq/86g8Cz1i0ntjFJLp/oHUN55r+mwQiAOcXDE=;
 b=GrfAtGsJIZRPH/lJgMzn9wwIYNaGu/jy8aEZ4c/3y6mL8KeRK71AjMWbbVG2kN3btU8XlxQPyYV5+m1tgM0kVHnk5bX1FcEjAYUkPqrPvT6Fh2vZ7dt4s4e3perqZ2toTHXOWuTpRz4XQ+MZUtmsOKsqJ18bJTdzrDtv5nk0E3U=
Received: from DB7PR03CA0094.eurprd03.prod.outlook.com (2603:10a6:10:72::35)
 by AS2PR08MB9416.eurprd08.prod.outlook.com (2603:10a6:20b:594::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Mon, 21 Jul
 2025 20:13:51 +0000
Received: from DU6PEPF0000A7E4.eurprd02.prod.outlook.com
 (2603:10a6:10:72:cafe::29) by DB7PR03CA0094.outlook.office365.com
 (2603:10a6:10:72::35) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8943.29 via Frontend Transport; Mon,
 21 Jul 2025 20:13:51 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 DU6PEPF0000A7E4.mail.protection.outlook.com (10.167.8.43) with Microsoft SMTP
 Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8964.20 via
 Frontend Transport; Mon, 21 Jul 2025 20:13:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kj+fcUEASpx7xcDSF7+Vs2Z39XEkPmlsRPV7V/03fvepR+/xzPgnnyNLNNMU1lkVwZzd/AXxuAbOu6RGsKBDym2YY7nmYgWjnz18GhozelSwf/heccahGjAGco0bT1JDd5EbVodp/iBPDqpHAFoKwDbIMbwisGNNP4M3XQ1LoNdZxmGwrxa+cNw94Jxwi4sD140q89Ki6fYeSbViEEV9552Wgq8+VIkNe8Mj5jlj5ODBlLv+H+JFW84aHvBFZzwha1vzTzILnfl1fCQT9jcL1uo8EES0rX5ap1kfOtqsQM9iIaia+C3BiJTrKaxz2sOPS3UiwfVA2iE4vzqz+Fz8jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q9fefWq/86g8Cz1i0ntjFJLp/oHUN55r+mwQiAOcXDE=;
 b=OeqlfKzFnhg9ne9zrKd6zvWbFApjIQVYCBauKs0UF3gGHv1Ma5BU6UmBrMeim8yXdy5fU75lOPAfT02nyFDUWMOoErKu2VbR3DhiZYqnTTM382K1h25rUmX9skcw7z2mp9fhklrKaKuX62ZpuwbW3uMtgJTati/9k5MqjWONUOrOA0HtljF7CwLt8ymZLGp0rk7O78kue1iPRFXrq7Kc0c9kRREqahozZA2DUafifFe1Tk9OWcgbBhEOZti6p3qNMWN8/iqDDyJUET7hkq+CZ1mnKmFp0Y23C1NV1KCOvCQp+j5GPJGwC51v4HkbSxiWUjO69xGpW/g6fz13uJWLZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q9fefWq/86g8Cz1i0ntjFJLp/oHUN55r+mwQiAOcXDE=;
 b=GrfAtGsJIZRPH/lJgMzn9wwIYNaGu/jy8aEZ4c/3y6mL8KeRK71AjMWbbVG2kN3btU8XlxQPyYV5+m1tgM0kVHnk5bX1FcEjAYUkPqrPvT6Fh2vZ7dt4s4e3perqZ2toTHXOWuTpRz4XQ+MZUtmsOKsqJ18bJTdzrDtv5nk0E3U=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB7717.eurprd08.prod.outlook.com (2603:10a6:20b:525::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Mon, 21 Jul
 2025 20:13:18 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8943.029; Mon, 21 Jul 2025
 20:13:17 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "joseph.maniaci@seagate.com" <joseph.maniaci@seagate.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Generating 32-bit x86 native lib while MACHINE is set to
 ARM(essentially) #bitbake
Thread-Topic: [yocto] Generating 32-bit x86 native lib while MACHINE is set to
 ARM(essentially) #bitbake
Thread-Index: AQHb+lIfXF/azRNGOEiJoPuoIhDaLbQ8uZEAgAAC8YCAABAIAIAABqEAgAAv74A=
Date: Mon, 21 Jul 2025 20:13:17 +0000
Message-ID: <9130FC3A-DD33-40E2-8529-A6870994F337@arm.com>
References: <C4DB5DBA-1425-4B17-8F0D-5516A889CC74@arm.com>
 <23575.1753118494471357763@lists.yoctoproject.org>
In-Reply-To: <23575.1753118494471357763@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.600.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB7717:EE_|DU6PEPF0000A7E4:EE_|AS2PR08MB9416:EE_
X-MS-Office365-Filtering-Correlation-Id: 4440df73-0574-408e-1d7c-08ddc8931b98
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?Z2h2ZHVOU1Z1ajhEZk43OWltdnpocUtRemErQnpCN3M3eklJM3kxblFnUFIz?=
 =?utf-8?B?eTRwYmZzNzdUQjIrUU5IcFFMdzdFQ2NXV0E4bE9FdGNYeTllbzBCRGpvR0RK?=
 =?utf-8?B?Zis0TUVRTWVqL0VxamJRelVpZDhVcWRUZFd6MWFObnBKSTcvRFpWK2gwV0Ex?=
 =?utf-8?B?aWJjRHFlUjFqT3Rad3FxVWJBNmtTd1g1TjlIRExWZlEvM1pRdzgvVFJyTkU2?=
 =?utf-8?B?UGZTWjNON1l5QnNsQ29WaW9TVzE1UHhYNG9OSWtRWW9ZU2VtaWZhb3pKRmZo?=
 =?utf-8?B?RHk0QlVWVEdsUlRuMVBwbEcxS2RGM01tbTZRSWFLUDIxbUp6Y0RRUUhDaVlX?=
 =?utf-8?B?T2k5RXFyMnRPUHRENG1qRzdybVcvTkNNeHBDTStCdlNWVmcvd0J1QnB0OXRT?=
 =?utf-8?B?UHExUzBCWENhZDY2dXdzbXZWdW9yWVZSNTF3Njhkem1YTG1YaUZTT1B4MENq?=
 =?utf-8?B?STFHa1IzQ1JZTEdZR2liYTFQdXU3WllNK0hVRE1uQzlHZ3V2NzRHYXNUeVAx?=
 =?utf-8?B?RjIzdTlVUEgyZUYrS3FJY1dGMXU2Q0NSQkVXZE5ObE5TMlc0SjRjd1dwczc4?=
 =?utf-8?B?MVRiVGEwMDNPQTNJUmhNSzQydFhpcDRIQ0lTR2pGblA5T3UwSVV0a3JlL2JW?=
 =?utf-8?B?UlplZ3ZWR0VOVmhEWG1XeUtMSERMOXNQR2JSYVZLZ0RTbDg1Tm1Ec3F3V1J4?=
 =?utf-8?B?TUhaWnhVYzlEbEdBZS95cGNwYzcwM2FIeFhEL21XRlB3SkFuSS9OWFBjSS9K?=
 =?utf-8?B?YmZHUDdPM1BJUVR1Zk1tRjE2TGY0M0VqTVI3elE1dHdFMkovZVJHaW5pd282?=
 =?utf-8?B?ZXVzbEFOZ0RmNVgrVDBTMU1jU3ZKc2NBMk5oZ2U5cFJGM2pHVzlReHdBMFBH?=
 =?utf-8?B?VE16VzVNc08yblBvTGhlcG5uWjlVcXhoVjlGV045TFFodUo2SkhNRHRmN28v?=
 =?utf-8?B?SlVTNG9TYlAxZ3M4Z2gxV2paSWRQUVo1RHNKdlN6dXg3UHpneHUrZVdpRWFS?=
 =?utf-8?B?Nmk2SUJlenVpQTZHWWRkbjZ0RXBFYWN0OVI2V3pScWlUamZNTzk2R2NTdmN6?=
 =?utf-8?B?dUp2MW12bjU1SGFxWDZhODllVlRJZGRaRlZoUDEyRGFkMFRlSDJmWmpid015?=
 =?utf-8?B?UU5YZGZwRFpldERBcjNORzA1MDdiOWdSdXhrZ0t5VjlpT3E0YllIbnFoVUl1?=
 =?utf-8?B?cGhSRVIvb1hudnQ3NTI1UUtNWkViQ3lzMGJCaGtIVjMvb0VYWXhwbEVSUXVK?=
 =?utf-8?B?NU9jZEFXQnhZNFNaVU5HQUMyWUJnMnp0RmNxT1lRT1prL2prL3gxb05ra2p1?=
 =?utf-8?B?NmtQOG12Q1hRT1dnSGpLdE1VazZCbHRDZzdpdmE5dkNzY3lXSkYwZG9zNUxC?=
 =?utf-8?B?TFJEbWJCSUowSFplZEdpM29PMC9LRmtsbHNqc0ZCelVJVnJuRlhnY0w5TDVx?=
 =?utf-8?B?cFVWYk9KMlc2QXh3OXNGblc3UFVrZkhGZi9UOGhIM09TVVZCRWxwcWM2SkZH?=
 =?utf-8?B?TTdPb1BETEVVYkpaK2VzUGxjbms3QUZOSkd4a1hpV1RwL1lzZmVNTitYYzUx?=
 =?utf-8?B?L0FicE9EcmFvRUZVRUozS3NvaXNBKzZucjg4aEhlR2dDbk0xb2xLOXgwT3dh?=
 =?utf-8?B?MFFxR1hZdndGNEpmTGd0QjE3aUM1S3M1MzRqbFB2eEpqZ1pDTk4zenRKTUdK?=
 =?utf-8?B?ZkF3enc5dzZINWNOSGJnMjZrYTZGekdtVFUzaTVCVmtlbytLRlNNc0s4UE9T?=
 =?utf-8?B?YlhJbWo5MHZlTm1IK2FFVktSeWR2cHBtZnV3Lzh6UmlpQVFjTFFoLy9SeUtR?=
 =?utf-8?B?TEJVdEtrNS9CbEVUc2ZEMjBlWEwwd0Z5ZDFvb3U5V2xWcXcvdkw3dWErVWpr?=
 =?utf-8?B?dG5SNjRuSFhGVm9jM2dhcUExSm5pVU5SRktZL1I5YVhCa3J2SEpUYXRVdS9E?=
 =?utf-8?B?ZkE2LzEyRzduS2pob0tQRXdVTjJnRGJteEI3R2RhRExvTnNWb09qR1FPaXM4?=
 =?utf-8?B?c1BUb0c4clRBPT0=?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <63C869C801DB034D9D1BE3AA7C6FA29C@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB7717
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF0000A7E4.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	46808597-b177-4f61-117a-08ddc893081e
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|35042699022|36860700013|1800799024|82310400026|14060799003|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NWdreXRRMGtrQ2FqbnkraHhUNktjUGVkbWdWT0tkVGNmN29SL210WkJKcFV2?=
 =?utf-8?B?L3ppdTZnc1RxM25DMEt2cjRJMHY5Y1pBajdWeHQzdUJqT2UxVjR1TlY2dDA3?=
 =?utf-8?B?VUFDUURmYnJuRzA1Q2xkRVMzeWxjcDltRXVxYmM3S1RsRG8zM3dUOTRpMGRW?=
 =?utf-8?B?VVM5a3Vpb1BtdlJLcU1IZTdpdUxMbzFnb21RTVJESFZwWW94ZVJ5NG9YZExV?=
 =?utf-8?B?dWl2b2lTeUs0bWFwY0tuTmdPd3p4bmlwakZwWXV1cms3SDRFY0JNVXdGZ1dj?=
 =?utf-8?B?N2RnZ0liYmRMbHphbjVJTnJ6enZqcENYdWhHRWVQTDlRWDdlTDBGWFh6anJM?=
 =?utf-8?B?bi8zNVlocTlPOHRSTGJmemVreXlwMWhvLzRzbysvcENFSmlsSDNIS0VOc2lB?=
 =?utf-8?B?YU1jL08rM1J6YVF1RERTeFdLMCtzaTMyaU1RMW95bjA4anl4VUMyVFlyQnJ0?=
 =?utf-8?B?RzhwRWRkSnZTSzd5bTQxRjBsK212TW1NcW5Cd2JQc1QvbjdZWktJa1o5WkJD?=
 =?utf-8?B?L01nU3JZNStIM1g4UmpENmxvbHB5RWNFVVdETGxpOW5MbUlRcTVRbWd0OW1N?=
 =?utf-8?B?Z1pKM08rL1lZNGtUYVBpeWlOQktvdVhyYzRlVzQraHJ4R3JqTXpVTkdJZERN?=
 =?utf-8?B?KzBQWjgyWkgxTmdRWENxZkxFQ0RpMU0xcDFubmMwaDA2UVF3aGpEbHoybWIz?=
 =?utf-8?B?WGUwc3U1ZUlGV09ieExCNTE2cjBrTDNVUC9CQTF0L3FjR2hzczR0MkJkTUlL?=
 =?utf-8?B?bDFUYUQvQWdXdGRKZTJIaTJ4ZUhlcjg0Vk9IcWlHTWZDUCtMTTdaS01IUlpT?=
 =?utf-8?B?bUpycjlhQmRpMXczeWtPd1g2V1N2V0dDbDV6eFhMYzhVZFRLMTFBSVJ5Y2Zl?=
 =?utf-8?B?UjJ3Z1hMZlJHem5NOWpGR2FBSExNeXB1bWhnOThmMlRlVlh3NHdxUUpPZDlN?=
 =?utf-8?B?R0ZOdnFGdlRwOVJQZ1dnUnJMZEFqUnpFM3VYd1NPa2JIQWdPTFBXT2lMMHd2?=
 =?utf-8?B?OEd2U2h5TktrNVNEdG40SWVUaktPUFVzSllmbjNlbnBPbytCRW81V25oZllt?=
 =?utf-8?B?TkY3QktoUFF0WG9ud21QOVYraEQySWlnSUtDS1dCWHZNS08xUXc3aWEwRlVB?=
 =?utf-8?B?NWM5N3dEaHdBekZvWW9EU3RwMVV4dlRydnNha0VwMi9kOHJrTktxclVxUCtv?=
 =?utf-8?B?Vm5Zb2RVZGRZNEdDcFJ5WUcwWkswVGE0ME5TRU5sWGZWYmQ0VXNJV05LTlNs?=
 =?utf-8?B?S3N5QzNkN3lCZ2lnZUJDQmpSU2g1dDBMc3lFK1ZOVllvWllseVA4TE1QcExD?=
 =?utf-8?B?cStSbU1qSEVpWkYxUml2eTBKY00zOFZsVTkrOHFWdXVjMkhmTXgwYnVWY2ly?=
 =?utf-8?B?OGx3eGdQaWxleDU1bUxHVlRpWjBmWnlwbWs1d2hxQkhHQVA1VmZxMm5LVk10?=
 =?utf-8?B?bnRGWVhUMDdsT2RmUi9zeHVyNVk4bEhtVlZ4czRLZERRMU9zend0N3NlNllF?=
 =?utf-8?B?c2RVYUU1Y0k3RUovQmExNHYxN0dPWHVxbWg3cVdaRlRRbTJ3QlB1QXhIUTlC?=
 =?utf-8?B?b3l0VEdZc0VGeDQzV0NnNTNva2FyZk8ybjNzK0k1N3pibmxiam1uWlFDblRy?=
 =?utf-8?B?U1VGU0wvR1RLSTF6QjMyN1duUjdiZ09IcVN6Q0w3VGE3TDlvYnVFSS9MbGRZ?=
 =?utf-8?B?WDdzRVFxN1RWWnJub0xoUlM2TXlIVkFRUml5TXBHR1dRR2YxYWtHRkt2aFEz?=
 =?utf-8?B?dTA3eTlhQTRMVisva1VJcERidFJ6SHNFakx3TitIUTJiZ3RxeXFqV1FnZjlW?=
 =?utf-8?B?SE1nMHArOUpKd1R3TE1vWUdabDJJK1ZINTl0REJ2bTlxRUtlTW9SbGlsbjJK?=
 =?utf-8?B?Wk1kKzBKVXJFYTE3N3QvUFZnR0lSbXhLT0cyb3NPRzVQRzdIdEptU2pnaFV1?=
 =?utf-8?B?N0FWWFh3WVlHazc2MFl2UkJJcEdFemJJZ0tRYVRQeFF6NjNFcHNWMzNPSlBS?=
 =?utf-8?B?NE5iTUloZjBTQ3Z3QVhmbVZ5Y2xNYkh0U0dPMlFBRkFOa3l1N2hCR29NSk4y?=
 =?utf-8?Q?b3ryXf?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(35042699022)(36860700013)(1800799024)(82310400026)(14060799003)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2025 20:13:50.4726
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4440df73-0574-408e-1d7c-08ddc8931b98
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF0000A7E4.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB9416
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Jul 2025 20:14:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65696

T24gMjEgSnVsIDIwMjUsIGF0IDE4OjIxLCBqb3NlcGgubWFuaWFjaSB2aWEgTGlzdHMuWW9jdG9w
cm9qZWN0Lk9yZyA8am9zZXBoLm1hbmlhY2k9c2VhZ2F0ZS5jb21AbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZz4gd3JvdGU6DQo+IA0KPiBJIHdhc24ndCBleHBlY3RpbmcgQ01BS0UgdG8gZG8gdGhpcyBm
b3IgbWUsIEkgd2FzIGp1c3QgaG9wZWZ1bCBNVUxUSUxJQlMgd2FzIHRoZSByaWdodCBwYXRoLCBi
dXQgSSB3YXMgc3RhcnRpbmcgdG8gZ2V0IHRoZSBpbXByZXNzaW9uIGl0IG9ubHkgZnVuY3Rpb25l
ZCBmb3IgdGhlIE1BQ0hJTkUgdHlwZSBzcGVjaWZpZWQgZm9yIHRoZSBidWlsZC4NCg0KQ01ha2Ug
X3Nob3VsZF8gYmUgYWJsZSB0byBkbyB0aGlzLCBidXQgaXQgY2Fu4oCZdC4gIE1lc29uIGNhbiwg
YW5kIGV2ZW4gYXV0b3Rvb2xzIG1ha2VzIGl0IGVhc3kgZW5vdWdoLg0KDQpSb3Nz

