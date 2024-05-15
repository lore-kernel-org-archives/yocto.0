Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA3FDC25B79
	for <webhook@archiver.kernel.org>; Wed, 15 May 2024 18:48:24 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.87])
 by mx.groups.io with SMTP id smtpd.web11.2222.1715798895282425081
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 May 2024 11:48:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=a0CaX4zp;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=a0CaX4zp;
 spf=pass (domain: arm.com, ip: 40.107.14.87, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=NuoIz+aH7w9Kt4PzO9lGtXh+dEcjLjNAZgwecrF6TzaO28v4LhwBYuBpTgY7Oj2sCGd1fFcCBaf874vg9QbMyCPuwQCoDUwwGg/0e66k2fS8ZjdCZsE8jaXiNiSyXX2uYbB3hCiuwEnY2SehPJyYJyxhweVBtxz6lAe7EyGsi0ZOJI3Cz3vFsTRCcxnbENYAx2F820ycQZRfhB3RXA7VY03zRvlEpg9MTcL3gJsW6gsoN6OCTkexTUqSUUWIeJnCJGWcgEPF5SC94n5IrM9HbnLmgC5HqZReFogItzTBw9lCnh9Hw9gNCjy0f0Ef6ObUfbQr29oQF1eJ+3gNqiZY3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qO5f3DNyhNHS2EnX59keoYZUYVn4SfgcwXAkUswakEg=;
 b=R+rRSdgotwl/bapBhVRRwbdINGz17jM4/s3u9/kJ9cRC5eK0VKzQMVe0iN1NT3OejH/srxGoIiYq8BH34+SZjgJX+20UlZMXo+iWHRPl6tlhPCSVyzV6MdqNlwcsf+gDYgcI+6ZgVdy5BdzHN3UKzEMzmf5y4q785P93nSIprjqpx2HZe4maVG1vYe+jQ88CYNCUrMqVCQAF9qSSZo4wi8TOzLeGE+Z+fVpDwUk2TPPQ7xS8qwbhrImuMk0yVzGQdVDNEUaYQ/CDdxa1qYPXnmK7Oh+QIim5Hs1Ddps68R/8VbCdIBr0sL3SOmqUno65K25lAqLeIUcxvwweoXIu3w==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qO5f3DNyhNHS2EnX59keoYZUYVn4SfgcwXAkUswakEg=;
 b=a0CaX4zppuJcDX31ToCBn4f58Sz1MK1/LSgzUWZJ8Xbx5pDAt1UahRK5ZuARS1tkPh0q4ASDOZtkcrChUEF+gCpMZ1Q/BtoySPrWR9Rn6We0A2RvP22OJrqX5LU0nffvFESLdz3lrCn4CVIho+nUitftkUb6nHw7LZQ0Zbsv+a8=
Received: from DUZPR01CA0130.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bc::25) by AS4PR08MB7998.eurprd08.prod.outlook.com
 (2603:10a6:20b:581::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Wed, 15 May
 2024 18:48:11 +0000
Received: from DB1PEPF000509FE.eurprd03.prod.outlook.com
 (2603:10a6:10:4bc:cafe::3a) by DUZPR01CA0130.outlook.office365.com
 (2603:10a6:10:4bc::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.27 via Frontend
 Transport; Wed, 15 May 2024 18:48:11 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB1PEPF000509FE.mail.protection.outlook.com (10.167.242.40) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7587.21
 via Frontend Transport; Wed, 15 May 2024 18:48:10 +0000
Received: ("Tessian outbound ba75727f6dca:v315"); Wed, 15 May 2024 18:48:10 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 53a2a8c31a2ab6bf
X-CR-MTA-TID: 64aa7808
Received: from 7de8c6039d3c.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 408FBE67-0C6E-4B21-98A4-0EC03FE5C759.1;
	Wed, 15 May 2024 18:48:04 +0000
Received: from EUR02-DB5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 7de8c6039d3c.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 15 May 2024 18:48:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lw+i5lpSe8ZbphXJ4SdnEIcuvcxeviVGviqVvtSVDJ/5rSg28kPjIKwHI+Pj/DLFeSvZWtVvE7FrP3PAarP10WYeddHl1UtqkN99bIj+Uk8OUCsuRp1mLx+p9xjqF7+xaiYnk8gmtpQd9AC3uitrwMpDjsvhEaZIwtLPfBRRn0nngbvOrAaw59DDVjRKX/mK7k5MhzN/UpNIW7JR2/Hk+stSkjxIcfYb3rf3IyRmD1PgOwcnuk8PmVoj/vLqd6ZbNngkLVucq03NYzZYfm/oCzuhy3dV/rX3iHnq7pr0DLdnktMg4q8Hd/HxwMc7qgjGLDXCUAmZOKtHy+bu6ykUXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qO5f3DNyhNHS2EnX59keoYZUYVn4SfgcwXAkUswakEg=;
 b=hSxh8K6+dnZtYuVh7hXPjIry/R8H0MmQzy+D1jKoVknxQlt+bBMipBEjBdqCAZJWT0nloc0n1DCKpQrqR4mUwIIkwKROjRHZqTTI3a3tYmD+n6QKsAQJvA4K6H6qvPAnm3jc332ItN6MjaoQtB7bYlAbRS5p+qutSvDqlpEnOablDS5jfdnd+hoz2GSZXlpAisjNnHp+pVvqhuToBSjS2Hyttgaef1UmTCYeiMjTTERFPHWVhoJ61pl8WQf6dZLWnEl2JIbZyuDIG/0qxnc0p5bfvwwc9G/hcamlAZZKqIVA/aytj7ipzDeeUaqC1n+WA+W0j5Uzd52l5RTKrVIgpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qO5f3DNyhNHS2EnX59keoYZUYVn4SfgcwXAkUswakEg=;
 b=a0CaX4zppuJcDX31ToCBn4f58Sz1MK1/LSgzUWZJ8Xbx5pDAt1UahRK5ZuARS1tkPh0q4ASDOZtkcrChUEF+gCpMZ1Q/BtoySPrWR9Rn6We0A2RvP22OJrqX5LU0nffvFESLdz3lrCn4CVIho+nUitftkUb6nHw7LZQ0Zbsv+a8=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DBBPR08MB5961.eurprd08.prod.outlook.com (2603:10a6:10:203::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Wed, 15 May
 2024 18:48:02 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7544.052; Wed, 15 May 2024
 18:48:02 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>,
	"gary@missionsecure.com" <gary@missionsecure.com>
Subject: Re: [yocto] Python3 pyee recipe for Kirkstone
Thread-Topic: [yocto] Python3 pyee recipe for Kirkstone
Thread-Index: AQHapvZ0qJczEbM2+E6fqOc29IbnPrGYotsA
Date: Wed, 15 May 2024 18:48:02 +0000
Message-ID: <D0087411-5573-4E0B-9F17-C13043B26510@arm.com>
References: <uE8A.1715798025327127879.heFm@lists.yoctoproject.org>
In-Reply-To: <uE8A.1715798025327127879.heFm@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.500.171.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DBBPR08MB5961:EE_|DB1PEPF000509FE:EE_|AS4PR08MB7998:EE_
X-MS-Office365-Filtering-Correlation-Id: 0dca231c-3d09-4e3e-d845-08dc750f91b3
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230031|376005|1800799015|366007|38070700009;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?VUVuYkoxd05weUxacWt4TU5UR09jNitJVkNtaFk3eWp0RDV5ellGOE10ekdk?=
 =?utf-8?B?VFFiTkRWbWNLV0R5QzlrT2JwNW5lTExxbE1DRjRyZWN0OEZ3WndKOXFCQjZO?=
 =?utf-8?B?S3I1S0lmMUNxRkpaN2VnRnNRZDV3dWlTZUxDUGtybHNqYzB1VE14RUpWa0Ny?=
 =?utf-8?B?UDdYMElDcDR2RXpIQUlQT1lzTEZPY1pLR2VkL0VpWjFyRGoyQUZDa2I0dXN3?=
 =?utf-8?B?NWJRTUp2Y3ZubGZxb2tsUmpOV0I5d2FheUZYNFlrR2E0S1hPT0FyRCsvU3VP?=
 =?utf-8?B?MFZQS3FkcG9mc2hzMmpSVEJ3UW1nM3VMdm9YWTM4TGhicERXRi9ISEkyZmd3?=
 =?utf-8?B?VkRDM0lYSmZDdW8zTm1UUDBFV3FEYmd1M2kyLzRSNlNDOTFCWnV1TmRPV1lB?=
 =?utf-8?B?dTh4bk5VQ0QrcEJxMmQzUnJ3VlErelV5Wk5PNFhzSVJndUZ6NFo2TUFTelNi?=
 =?utf-8?B?L2VvZHNlTmJLTkxaQTd0bTR1c0EyTEZOQ1NYd21EWENCYUJlK0ZlT0FITFJ1?=
 =?utf-8?B?NDdCYVF2K0RjL0wxTklhbjg0NkxJUTNJWjRHMlVaRlZ2aVR0MlBUS0JEMkts?=
 =?utf-8?B?SUV3YVdPNkJQSkZVSGN6dE5yQkhZS1ZPR2NrdmtlNmFxM1hmdEtVM3hFZzlx?=
 =?utf-8?B?a0RMZHlNWnZ4b1dQRzlLaHc0NkJHcXFXZjFubmZVQ0tpU2YxTGYwZW9RaE5t?=
 =?utf-8?B?UVN4dWhsUDlHNEhvTUZoejM2L2l6akg3cGNrVC9Hdk1ZcjRyU282VFFjdEND?=
 =?utf-8?B?L2hjVkdPYmlkUXYwMVA5d1JXMkMwcitpVHNqNU5mMjV4NGY0U0FSaWVtdml0?=
 =?utf-8?B?d3NLOE1TM3c2OXFyZlNYK3lyWWNnUFpFNDFYWVVqNlpMdjlsemhNeWdNMXR6?=
 =?utf-8?B?YnlkVkpvTEVSSncwTWdMdGtRN3ozUkN4ckxxam5kQTJnVzZQRzZmRXVHZUwr?=
 =?utf-8?B?bmVsUUlwZ3kxaXl3TE9zemxsV3AvakMzME1Ba2h6UGxva2ZtZGg5bmVzcTU4?=
 =?utf-8?B?aHEybjcrb1ZNRmxQUUVaWGxlYkNlWUYxU3BweHNFVHRNdWhtaUFjMmVLcURo?=
 =?utf-8?B?dEFiS3NQRkVtRSthblp4ay9lbUo5K0l3OTB5SjhLRThLY0d0Ymc3TWZHQk5N?=
 =?utf-8?B?a2lackpDc2xPbmxicksvcm8yOFUvNkQ0Tkd1SXAwdWVNMVB4WjFMVG90TGw0?=
 =?utf-8?B?cTdlOTZEUjRPUHh0KzdlWCtpMG9hL0ZDYW15dmxLdlVHR0J3WXpKcjVHZzE1?=
 =?utf-8?B?SDE0RmpReHJqN3ZZQllIc1dycURDLytndEpZVFZsNVBqSjNLT0w4SjdZcVRj?=
 =?utf-8?B?K0RxRmlXcEg2L3JRSU5DOTFrRVc0d0NZcUhiQkk3T0tXOWZ3TTdFOE9SWXFZ?=
 =?utf-8?B?d2R0TW5VQ0E0YlFXQk1Qbkdub0VYYXNZOUtRZDFCdDFlaWE2VExMdDZteWQx?=
 =?utf-8?B?REdHK2lsWmhXL2VmLzBraVYrYXAxbWdkTHptSmFENG1vV1NFYkc0Si9QRlhR?=
 =?utf-8?B?VnNPeFdlUHRxZk1ZNVFGUWtEZjh5ODBFajZ1Ty9VYUlyanJnVzVWeFgyakZr?=
 =?utf-8?B?MXZiRFRHQVplR1JrSldJNjFmdGdIMUd0OGlkZ1UraUdGQnVQOHFXTkFOL25x?=
 =?utf-8?B?S05lbkx1MVhtRE9Sbm5aM3o4ZmpzRVB4SXFkb2RDRFM1VFd3Uk1sZ083Nml3?=
 =?utf-8?B?K293eWdQRGRBMlhGMEJyYW1iY1ZQc2xmOUZiMHg4bEJmNXAzL3Bia2NRPT0=?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <D5B3DCF3CACDBD488E1ED40500D5B633@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB5961
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF000509FE.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	37bc1395-f8b2-4bf1-84a9-08dc750f8c89
X-Microsoft-Antispam: 
	BCL:0;ARA:13230031|82310400017|35042699013|376005|36860700004|1800799015;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?YjJFSi85cTFpZHc4RHM0TXphNVI5ZXlpa2pCUVRJaWtERDIrOFFaVEFDNXVk?=
 =?utf-8?B?cjlxZ0ZqQUNYWjRFWVNmZDhXS25QZFUxdnZVb2hrckk2S09HVmQ0aWsrR1JC?=
 =?utf-8?B?NU9NRU0wSytpUkZhTTNOK25OeTNoQk0yMjZpT3Y1L3JLRXBVbFZyTGhweVJa?=
 =?utf-8?B?YjR6eE5HWEUydlpqVDd5enhoRmVSc1d1L1dYTXd5MGt1UlNYdUMzUHV4WGR1?=
 =?utf-8?B?UFJTZlJkd3I1Q25FbmZWRDJxWTVmblZ4cjJROXIxWFB6T09ZODduL2tTSS9i?=
 =?utf-8?B?d1hUZk5mUDRYQmxGWWZld0hjcWpKaG55SGtkenZwMlhzMnVCODFsYTdUU0hl?=
 =?utf-8?B?SXAvNy9Kbmtxd3hwMnNCY21tOExFczJCSXA4NnlCNkhISjVEa1JJbnh4K1o2?=
 =?utf-8?B?SGFWaC9kQXlFVDg2UVNMR3JRaDVNRnkwQWpUNG5CSFcwV3dvZmtlNWhFTUdh?=
 =?utf-8?B?dUFtem9VVFpWUmdWenZTVzVjdlBlWFUrMFk2ZlpPTzZrZ1JhK3BEbkx0R2dn?=
 =?utf-8?B?ckU1dURPbnUwSk5rYXJpTjAxbUQxeHJ0SUtHazRjd3hVWDJmZkwveGtUV3lR?=
 =?utf-8?B?a1p2UWF6Vnl5QWVmcFpjMHhPcnVCOUFORmJiVys2V09FZUZ6Zi9oc2lKNVlj?=
 =?utf-8?B?c05qTlh2R3Rkc2tYMzQ0NHNYclVsRlk1OWxrUjJMWTE0MjJCUFJsNU9IamdW?=
 =?utf-8?B?NVoyN2ZSUXFSTFg4bFk5UjRRTzRpLzEvQlpJVnQyaFNrK2dqZjhSbWlQOUZ0?=
 =?utf-8?B?WndLcE00endxUTd4QTV2a3hxUkxxd1dYcXdwcjBRQzh4Wk1wQllaZ1U0TEZJ?=
 =?utf-8?B?dUhSTDVyV2lYWTdycEJuaE5YRjVhU2RTVzNrajB5R1JFaDR2NGc2T2Nqb3BB?=
 =?utf-8?B?WkxKSUYwbExNbTVCTndmaUp5RlJMUkpPZ3lzVXNSc3YxYmVicG93enNVMTNl?=
 =?utf-8?B?c2FwMkZ4SFFzaGJkR1BaanFEcWs5MjYzZVFzWWNhdnhVTENCSnNyWXFmRE5v?=
 =?utf-8?B?Q1ZvNCs3L3hsSmdSTmFXaFVhSU4xOHJrdzZxYnl0T2twMTJVWEJ2TUR1SWNI?=
 =?utf-8?B?N2h0a1RJUm14V3NNVmsxQ2xtWEpmYWsxNFgyZk5IUlZHT2Q5Yi8xK3Nxcnd2?=
 =?utf-8?B?WElQRUY5R0JaM1F2OXFxYWlGNFlobGNKUU9nOEkvMU9EbFdDeFBld2dHQllP?=
 =?utf-8?B?T1NKVDMxRkJIdFQ5aWxUMXA4bmcySld6ZllyT3NXM0dNbFM5Q1hyZWxTa0Vx?=
 =?utf-8?B?ckl4Zk5UWHhDMFBsa0VuakdxVHd3MDBzZ3ZUNTY2U210UFRDdVZRdzUxR0Vo?=
 =?utf-8?B?alV5MVBOWko5ODJaNFpNeVJ1Q1dUMlZnbGNkMlUvS1pidVNZOFF5VEgvNzBm?=
 =?utf-8?B?U05FNy9MZitGenlxWlBDK003SmROR25vSFFQTDlyVkZUR0xTaUhaejJ3bDBX?=
 =?utf-8?B?TjE2V1UvaE1pSGtaemgvckM2RkFXdkV3NXVLaFpsQWRMZFZSYUhqRVBiVnBi?=
 =?utf-8?B?V00xUVI5ZlZyU3BqS2NMbnFDMkFtT3FJTy96TElERVJIUUFyL2tUTDB4NTRk?=
 =?utf-8?B?SkNlVmsxNXNlcmszYTNWMW9sSDhac2ovUzFDNkhpYXkraUFCUXVHeU5EdC9R?=
 =?utf-8?B?aUxLL3gzbEpOQXpqYk1yaHJmYzRQckFmYzU4K0pMeDlEclZIS2NBNWRFamlN?=
 =?utf-8?B?NHFRaTN3S3dUKzdtTGhIZlFwdEgvc1d3L0ErSnlGWDQwNW9sS3dOUDFseFUv?=
 =?utf-8?Q?8p26pQJcsHV2oL9LSRNjKbdeNbcDF75fOakrUiP?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(82310400017)(35042699013)(376005)(36860700004)(1800799015);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 18:48:10.9209
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dca231c-3d09-4e3e-d845-08dc750f91b3
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF000509FE.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR08MB7998
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 May 2024 18:48:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63101

T24gMTUgTWF5IDIwMjQsIGF0IDE5OjMzLCBHYXJ5IEh1YmFuZCB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8Z2FyeT1taXNzaW9uc2VjdXJlLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3
cm90ZToNCj4gDQo+IEknbSB0cnlpbmcgdG8gY3JlYXRlIGEgUHl0aG9uMyByZWNpcGUgZm9yIHB5
ZWUNCj4gaHR0cHM6Ly9weXBpLm9yZy9wcm9qZWN0L3B5ZWUvDQo+IFRoZSBwYWNrYWdlIGhhcyBh
IHB5cHJvamVjdC50b21sIGJ1dCBubyBzZXR1cC5weS4NCj4gVGhlIGJ1aWxkIHN5c3RlbSBzZWN0
aW9uOg0KPiBbYnVpbGQtc3lzdGVtXQ0KPiByZXF1aXJlcyA9IFsic2V0dXB0b29scyIsICJzZXR1
cHRvb2xzLXNjbSIsICJ3aGVlbCJdDQo+IGJ1aWxkLWJhY2tlbmQgPSAic2V0dXB0b29scy5idWls
ZF9tZXRhIg0KPiANCj4gSGVyZSdzIG15IHJlY2lwZSBweXRob24zLXB5ZWVfMTEuMS4wLmJiOg0K
PiBpbmhlcml0IHB5cGkgcHl0aG9uX3NldHVwdG9vbHNfYnVpbGRfbWV0YQ0KPiANCj4gTElDRU5T
RSA9ICJNSVQiDQo+IExJQ19GSUxFU19DSEtTVU0gPSAiZmlsZTovL0xJQ0VOU0U7bWQ1PWIyYjFj
Yzg3OTdkZmYzMmNlYzVkNzgzMTQ4ZmNlYWI1Ig0KPiANCj4gU1JDX1VSSVttZDVzdW1dID0gImIx
MmExMTA1YTEzYTIxOGVmMGQ2YjFmYTZjYjY0MjVhIg0KPiBTUkNfVVJJW3NoYTFzdW1dID0gIjUw
NjYxY2YxNGJiNmU4MDkzZmY2MjM4NTZiY2RiMTA0MDBkMmZmMGIiDQo+IFNSQ19VUklbc2hhMjU2
c3VtXSA9ICJiNTNhZjk4ZjY5OTBjODEwZWRkOWI1NmI4Nzc5MTAyMWE4ZjU0ZmQxM2RiNGVkZDEx
NDI0MzhkNDRiYTIyNjNmIg0KPiBTUkNfVVJJW3NoYTM4NHN1bV0gPSAiZmY2YzA5MWQzYTgyNGIx
NjRhMTc1ZmQ5OTk2YzdlNGU4NTljMmE1OTQ0MWRmNmVhMTQwZWFmYWI1MjU2NTY2NjllZTUxNDEy
NTA4YjBmNTM5ODAyN2E5NDA0YzhlNzg1Ig0KPiBTUkNfVVJJW3NoYTUxMnN1bV0gPSAiODZkZDM0
YjZkMzUzYmU5YzAxYTg0Y2JlN2NmYmRjNzBlYjhhZDc1NjI2YmZkZTQ4ZDBjN2Q5YjAyNzY1MGRm
M2M1MWVkYzhjMDAyYjZkMDExYTUxODY4YjBhZDkyYjZiNDRlMzQ2MThmMjA4NjEzMTM4OTkyMjE3
MzAxMzBmMTYiDQo+IA0KPiBSREVQRU5EUzoke1BOfSArPSAicHl0aG9uMy10eXBpbmctZXh0ZW5z
aW9ucyINCj4gDQo+ICMgcHllZSB1c2VzIHB5cHJvamVjdC50b21sIGluc3RlYWQgb2Ygc2V0dXAu
cHksIHNvIG5lZWQgYmVsb3cNCg0KWW91IGRvbuKAmXQgbmVlZCB0aGUgYmVsb3csIGFzIGtpcmtz
dG9uZSBoYXMgcHl0aG9uX3NldHVwdG9vbHNfYnVpbGRfbWV0YS4gIEp1c3QgZGVsZXRlIHRoYXQg
YW5kIGl0IHNob3VsZCB3b3JrLg0KDQpSb3Nz

