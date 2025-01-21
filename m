Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA8E6C0218B
	for <webhook@archiver.kernel.org>; Tue, 21 Jan 2025 18:16:34 +0000 (UTC)
Received: from PA4PR04CU001.outbound.protection.outlook.com (PA4PR04CU001.outbound.protection.outlook.com [40.107.162.50])
 by mx.groups.io with SMTP id smtpd.web11.22613.1737483389550982848
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2025 10:16:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=sTcqmxkE;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=sTcqmxkE;
 spf=pass (domain: arm.com, ip: 40.107.162.50, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=vcufEf8mWQtSVdMC78Dk6vHcSI4M3NpG6LAhXaOQ+GhfKuaedN++73iOpG//s4Tua5MSFCUfOmsMiiJGfhBr+TtdlEELdpCjHoikCeBoteeyyCG0JLraWzUVzogP9mCRpYqHcM3HU5pe0djU9Adv0RYM2SG1ICGRURQzaF2aN8l6z83UStQvHsJxsKeV3swlegsQMj0Ffj0jO7csdsqQdLK9s/zBXn5ZzuhhukGn4KfQ3sYU/pVLvogaXqLloGFSm+Z5Gv8IGymAHkn8q2SEfjFF6ik7J88c4K7IN96zK5xMnuiF1SJBAddKum0ZCCfB45mDYT76th7Nj4f03oIPtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0o77KAEppmN86mDc4U+XGOT8+PyeplofWtzsJwY1QY0=;
 b=CU5qeSoJK9WE0THhBRFan/E4t8LBuAG6gwWxJORaYIH/KO5Caa1WujwuWy7CZsocpHFBZJNXjFmKyfJtk7oehW0B88y7126aYxNqqdd0C6EoUidlJK8/udFfxhrvOfur5yMXnMBsUUTB1Vs6VwyzE+OSXDDAO9E3gfjMWA9bg8jklMeKU0FJCdrM2PyceeppYYVoCBvWkGnM+XJBbFb9OmJeEOgwV3zocN44oV+YTuOCJftEAl42AMjtiQVkXiSpZldzSzLJNOhYusucRnEp+8svbtwNGwZVno4/yMgYgj1OjGQWkQv9jK9yOI3ojqR08fLR1nnvO2vgFVjf70JCIw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0o77KAEppmN86mDc4U+XGOT8+PyeplofWtzsJwY1QY0=;
 b=sTcqmxkEYE98H1SKEXwYKpuUZbVtZYQEdsf7ql5DJadU2e+mbRmCF8u7JF1dj4SGuOY1zysy01JxkwjXG4fb9BQBteiYZzZlkcWQ8r7pftA0EBjf7z1efRbIThkiMMjWuZIXsiq79/F3NEBJ2V7p41aU46voRc9KTUVnO3Z/Nu8=
Received: from DB7PR05CA0008.eurprd05.prod.outlook.com (2603:10a6:10:36::21)
 by FRZPR08MB11097.eurprd08.prod.outlook.com (2603:10a6:d10:13d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Tue, 21 Jan
 2025 18:16:26 +0000
Received: from DB1PEPF000509FA.eurprd03.prod.outlook.com
 (2603:10a6:10:36:cafe::e0) by DB7PR05CA0008.outlook.office365.com
 (2603:10a6:10:36::21) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8356.21 via Frontend Transport; Tue,
 21 Jan 2025 18:16:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB1PEPF000509FA.mail.protection.outlook.com (10.167.242.36) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8377.8
 via Frontend Transport; Tue, 21 Jan 2025 18:16:25 +0000
Received: ("Tessian outbound 29bc2c4ca0fe:v543"); Tue, 21 Jan 2025 18:16:25 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 1a8eeddba0fa62c7
X-TessianGatewayMetadata: GiFmMZ4+d0f7lTq4PVoQdXaPtLk03RMaIi4NjypyG5Nv1OTEUZCkC4MK9mpyyEB81P4S7zf8UggP4uNfwpSEoy1CjY4BeJBXTPp27hK52Rj6y+WbPpzwyLXJTtHRYA1cO8E4gpN+JsMZcFeByDgbyuQkIw5jlJ5HnJ2wwPg3qLM=
X-CR-MTA-TID: 64aa7808
Received: from Lc428d3d25f30.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id A497893C-6C0E-4776-ACFE-7ED6587D54A8.1;
	Tue, 21 Jan 2025 18:16:19 +0000
Received: from PA4PR04CU001.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id Lc428d3d25f30.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Tue, 21 Jan 2025 18:16:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=INGMT0TfRfhWhpidqUHgek9/l7hf4QYpquC618Et+fd/F72amXdS111ICm39ZCVR/dsZAPWsDURgTDieGPCjN1yqpRXsIrUAZR19b23vUMMGPJHQJO1zlhataISG8m/EMfxfb0wnFSSi2woNbZuKVgsUGSmuKd6mCcEqG6zqO1Rt9D2OM7OmWwfndNTxZCZA1H8uZ9I6toStAT/MK584dJKhydDqWno5NArVJ/JEB7LKEtJMofGyFAgHsLRgOGBG+debht7ofuS2YOEZP2Os3Re8tUvlXEq8xNXFf6YwgUx/YuHUrNvxk823RmDKYvG1YQgiRJBo0AoDdMecRbd9sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0o77KAEppmN86mDc4U+XGOT8+PyeplofWtzsJwY1QY0=;
 b=t4f4I8q0E5hrHUWm88DJLGTkGjSzFJQGvP9ofTTHNxtpYMd+j+I92xR8r0jLiIM5tQMm9kYqiYnf+K5Z23f4gxkyoWHV2ubvXaIoefWUEnQzyh8pNMZWwMjgjCA3hTJ2L9hjeS6ZpMJ3nH1tH7X1pakQwSSd3va29DcBXMjSmlEH2SWY8POLF+UavQRIrE6JFsBoyKt36tYNddRScVh+UmSSaO8nh/IxniO72LboLiQqSVr2Quo1Xc16yt3jB/LftZDEOx11oCupAfXmEx5Zdp8uI7dFnF1c1PqjYra/kW8R/OAvsHZ6ZyH0nnVZEZfNy4zFEGZLXHGXBbUnc79ejQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0o77KAEppmN86mDc4U+XGOT8+PyeplofWtzsJwY1QY0=;
 b=sTcqmxkEYE98H1SKEXwYKpuUZbVtZYQEdsf7ql5DJadU2e+mbRmCF8u7JF1dj4SGuOY1zysy01JxkwjXG4fb9BQBteiYZzZlkcWQ8r7pftA0EBjf7z1efRbIThkiMMjWuZIXsiq79/F3NEBJ2V7p41aU46voRc9KTUVnO3Z/Nu8=
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com (2603:10a6:20b:4e1::9)
 by PA4PR08MB6254.eurprd08.prod.outlook.com (2603:10a6:102:f3::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Tue, 21 Jan
 2025 18:16:15 +0000
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::8db5:7772:a426:2afe]) by AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::8db5:7772:a426:2afe%3]) with mapi id 15.20.8356.020; Tue, 21 Jan 2025
 18:16:15 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "Roos, Thomas" <throos@amazon.de>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [poky] [master] [PATCH] gcc-sanitizers.inc: fix for
 aarch64
Thread-Topic: [yocto] [poky] [master] [PATCH] gcc-sanitizers.inc: fix for
 aarch64
Thread-Index: AQHbbCTAwEuHTOs/y0ypTwfUvyuv2rMhffkAgAAIyACAAAIHgA==
Date: Tue, 21 Jan 2025 18:16:15 +0000
Message-ID: <E2BDDD8D-640F-429F-BB4F-605421F80C3E@arm.com>
References: <20250121165115.362609-1-throos@amazon.de>
 <3469A2E8-B686-441B-9658-D1FDF4B4BD1D@arm.com>
 <09f166f5-cd70-4fe8-aa76-112fc376d69a@email.android.com>
In-Reply-To: <09f166f5-cd70-4fe8-aa76-112fc376d69a@email.android.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.300.87.4.3)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	AS4PR08MB7429:EE_|PA4PR08MB6254:EE_|DB1PEPF000509FA:EE_|FRZPR08MB11097:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e3ef2de-d8ff-4f15-f8e4-08dd3a47b7e8
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?UWJGaVlaUVZpbHNlOTBzd2ViVXVPU016Q3pNMVRQSnRndVBtSXcrc0VWbzEv?=
 =?utf-8?B?Y1hkSWpXZks3Y0xYaXhkbXM3S0VId3NPMGFpWGpSNFl2eFNFQUFIWmVSTk9U?=
 =?utf-8?B?THIvQ2oxNTQ0SnN1Q0VlaXl3blAvYnJZZUoxTmVqaVl3RUJ0cEszczMxRE0w?=
 =?utf-8?B?eVFjbzk4VWRCcmZOeStrYXRwUVBxUHZCZDlOUXFzZE1qcTN0WHRDRU85TzBv?=
 =?utf-8?B?ZzVtb1hiQUV0aEFTaTIxelk4eEVBMVlKb1NSQTZsWWdmSmhxajNuNkZ0Rzgz?=
 =?utf-8?B?NG9YSFhPV3J4aW81SDdvOHBrSkFXMDkyRS9xN1lNazArUkZPR0ZEcDNyV0F4?=
 =?utf-8?B?eVN3emQ5cDFhSm12YTJCcnhLUVJ5bG1LNVFHMnF2eVBQc0Z0akUrRnBwSlVO?=
 =?utf-8?B?L2JlTElJSUdyK2JzMnBzQ2pvaDN4c0J1UGxEZm1nWFdUY2NLVmp0M0NDVTlv?=
 =?utf-8?B?TzRkS0ZKaEJEK0Y2NVRSa3gzbUQzNVJOcTMxUkR4eVRhUmRYUGNPTDEwUkhl?=
 =?utf-8?B?R29pOFpmT0RzSjJzdllXbHhIYTFHWDhZUnRNN3BCb0krSDlQV3ZWOWlBOTU4?=
 =?utf-8?B?ZDFSZ0N1TDhMSnNGc1luNUZwZ3J2d0M1R1VzYXVjOU0yTXJWUG4rV3pIdTdw?=
 =?utf-8?B?VXBvMm1EY1ZjcldkOTB1QmhoUTVvYTNlcm5BYUhLb2htT1BPWTB4VFRtdTd0?=
 =?utf-8?B?Y3k0djZFRzczWVZZTzFtdlpLU2k1MGZkdCtGanVaME1QanVUS2J2c3A1dERT?=
 =?utf-8?B?U2RCc2hjUXJ2dFh4azZLUDZXb21tVG9wU3g4RTdLelZnUytGTy9TM3lGZUxp?=
 =?utf-8?B?Tm0wZ1lxbE1pNVBJTHJnVDl1SWVxUFVQMzRMK3U5QjB0Y1BjaE9VMVBRWWZp?=
 =?utf-8?B?TWpremM5SmJGalBYYUE1eDBqaU92enFyZ0FzamE1UzBxd056cmcybXFudElr?=
 =?utf-8?B?b09LakJaM3ZDT1FYSEZpbm9HK0I1VjhZVm54eUh3cFUrUXhtN1U5Y2NNVjVh?=
 =?utf-8?B?V3pjWWlKT0JSSndya2ozQTZ0bmtXUm42eno0WG1QY2gvN0hnMnJ4TC93K1hS?=
 =?utf-8?B?VS9pcXIzem5vSXl6cmg2cmtHOXMwbGw3dVdYWDREVzg1engveERPNE1nVisx?=
 =?utf-8?B?UWxlYmdURUZxMFVXODRSZGlZMTVMT0p3UlFWbW1ZZnIxeElOek9KQkdpSkpW?=
 =?utf-8?B?b0Q5S3FpeVQrVFFQdkQrV1NCRS9YRHRDZDZqZmNiNjBieWpZRWREcW04azBU?=
 =?utf-8?B?NEMydm9hd0hEV3NQRmZQNkdoSnF1aWprZ0xtTStBSFRlVTJrZG51N0UxQ0Uw?=
 =?utf-8?B?ZHlNd0JmV0VLNlFEaDJrZ2RhS3plRWVjaG11VE05ME9OZHJZR2tKcTNUWmJN?=
 =?utf-8?B?QlcrYktHMkdPWlVpOEdIWExBbzJCbVNWUGNVOVIwRERXajd3a2kwYXYyVVhD?=
 =?utf-8?B?cjlqemVmUTdnRmRsdlA4NUJpM2s5Y0xtK0h1bnJDRSs4ZGIyM29SYWtBSGRo?=
 =?utf-8?B?blZ1S3dqOHhGYk1zV0Vjc1FGaU1WYzd2L25pZFZTcm55MFdaV1RtRldKR2c5?=
 =?utf-8?B?bWNhelBNVDhtQzNzRHh4L0RrVTBOcmpIR2dsc2lzenhKcWY5OEc4VU1kTzhi?=
 =?utf-8?B?MmxUZkJ1NVp6UXdQb3o4MVZEalF0cDBTZCtSSlRTQWFCSmFVVFdoNkJSMjlX?=
 =?utf-8?B?Y3NmUFZXYi9pQytQOThlbSt1ME5yRGlzbERSY1FyMnBpQm8zU1N4MkdmTXJX?=
 =?utf-8?B?UzF5RW9wWWlyeWt0Wlg4dkJra2NZenh2dUo4VlA0SUN4ZXNsNjg3QlAwbGN0?=
 =?utf-8?B?QTRYOVhrelBWZUhVQzEreTBOUVNoS3hSdGUxM3k2WVZIOHZxK0ZOanBrczFT?=
 =?utf-8?B?MnlGdmNMeUdhai8vTEV3SEJNeWo3ZC9zY3cvcXBoMjdKQUFlaVZUQzdGMW52?=
 =?utf-8?Q?RK/s5GV6rw0fLawNzbhO9vBgZRWnBZyi?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR08MB7429.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <46EB6F393E32B640875DC50CDEB966DC@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR08MB6254
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:20b:4e1::9];domain=AS4PR08MB7429.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF000509FA.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	55d939d9-1bbb-4d6c-a790-08dd3a47b1cb
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|14060799003|1800799024|376014|36860700013|35042699022|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?YytwSXliNUNjc2N2YnBBSzJ4WlorNmlYRWxKQnBPdGJ5RTN2RHJWa0Y1TFVH?=
 =?utf-8?B?c0RhL21qQVlyWWpiV09SSmlDUS9xaitYVEw4STlGd0hHemkzazZtb2pRakN6?=
 =?utf-8?B?bUJQcnczQUdTaVhNSkJLZG9zNnN0ZkQyeHp4VWZsUmV2bDVXWThWNkdZRVdh?=
 =?utf-8?B?RUd0d0Z1SlFwbmxaMHpSbWVodWRaWCt0M2FBd0pRL28vTWFqUi9UcFJkbXhB?=
 =?utf-8?B?Y2lQNThpR3M5N1pqZDhWZ1VTblcyU0V3NXBTYXcyeVowY3hYWlRHTnVCYkRX?=
 =?utf-8?B?ZDRhaWcvdm1ta25RL1YvZlVoVk5nN3VrMEFZMU9NOU9odWgxM0VnL3A3WnhO?=
 =?utf-8?B?OXNOeDROQlBiNVRvMUp2Slg3Z3Y4YWtkdVk0NnY5TzJuSEtGS3I4RDRadGlC?=
 =?utf-8?B?RERTWURLcGhESzlGaEVWK3hiZmNwV2h5N0tDZkxDb3lDRmROV1JZQWdLcWlF?=
 =?utf-8?B?dnN4M0NJaWZpcTdRN0Rxc29qMElPWENQeko5SlE0ZzkrcjV1MlB6Mi9xRUVV?=
 =?utf-8?B?N0VjNWl3MitFWXJUSXE3Z3I4akxFWFJhVWZqTmNjTHBkd2JzUnBOZEFlS2NM?=
 =?utf-8?B?YUxIT3ZBVGg0TDNZK3ZiZDFkOHpYbWh5ektvYXNodzdhS3BPeXRoNWU0RXRm?=
 =?utf-8?B?T0QyTjFQWC9IR2puMmUrb3lVTzEvcnlraWRKbmRkRnkva1Zkalc4Q0MrSWpr?=
 =?utf-8?B?RWRLUVJRZDBNVTI3S1FoSXdKcFNiZEU3MHZzTGNlb0crbS94N0xyQitCNkZY?=
 =?utf-8?B?d1NPOUtNQWIwTUxkZUUraEtpMHdFQ3NEck5aMG9MdHE1S1IwL0VpL0doOVdT?=
 =?utf-8?B?b3oya1BwaUlSZEZQN3I5cXpEb1dGcVJOQ1N5Y1RlLzhGMHRkaGtZSFRGTDcv?=
 =?utf-8?B?ejZudVpaYi9ZcjhCa2swMWJLZ0UySVBsVFhuVHlQRklldXVmeWtjT3pXRGta?=
 =?utf-8?B?ODIrVEJzOXRrczQza0t3TVZtSW5wandNTVphUEJHK3pnOHZqTkZybmdTNkdy?=
 =?utf-8?B?RlpMU0dYV240MUdFTHlhYUMreUoyWGpIQXFxSW5velFURVd3ZHZ4VFRuWk5h?=
 =?utf-8?B?SmZQUC9oQ0dPL1BHbmF1M0p3cjhKZ2xYdlY4OGl0bStaN3IxZzlrMjhEZWp3?=
 =?utf-8?B?RXJHOGpRbG9aalNGMTU0SUorNVFCZnhEZndJdnVQKzJjcitKMk9tc3dFNkxU?=
 =?utf-8?B?bjhwNTZOS1l4eHZRRk5VSE85c2Qxa1poNFVSMDdHM1BRYWdLMUVzNzhYZThq?=
 =?utf-8?B?ZVh4VVV1TEZ0YnFKbEZReENXTy9wbVJYYUo4YXJPczJJQ1N0U2xyakJpK0lO?=
 =?utf-8?B?L0VhTlhTTDBMSnduOTZLVTZsZGI2cWdVb3VJTk80NHhvaHEyR0RHMTk0Z3NL?=
 =?utf-8?B?bi9vRzBpVkhPTkhYS0R0WW5EMThOVEtmVlUrUHdtUzVrSHozb0FvZExTWHN0?=
 =?utf-8?B?N3RFRXNZWDZRRGhQWjZqRExzZmVFREpoajVBNzczeHlWek9tbFFNQWdhS1Bx?=
 =?utf-8?B?amJZaXZXTWVIOWJ6eW5xRU80ZGp5ekx0bXpxVHpOcHRFakgzOUZjT0ZNTXoz?=
 =?utf-8?B?YzZpQXVtVnVJM3lCRG03NnhvajdzM2xwOEtiTU9xc3BrTkVNWFR6WUN0T2RK?=
 =?utf-8?B?dmFKa2hITmFIVkhmU05EOTRibG1Xam4rdE53NWxkTjB0Tk5ZS3Q0OW9SVnJ5?=
 =?utf-8?B?cFlabmRFZHpab0tZMTJOQlQwS1lQbkZMMWdBLzRCQ0M1cENaSTdXeC9mSXBn?=
 =?utf-8?B?UWp1YlRVYkhydi9BR0tjMTdoY3Nxazc0Yzc0WjI0WDVRK2M4b2hXVWo0Tlp2?=
 =?utf-8?B?L0RHbDg2MVJLVDdncjBuVlVRalRiODlJalBIa3JVQndMalNZM0dyeGV5Mklm?=
 =?utf-8?B?YmN5cU9jc3htY01pT2JvWVpub3JPbk14cmdOSEhIRDM3OW5OdjJvYzJ1Tk1C?=
 =?utf-8?B?c3cwODFVazFPM3dMb21QS2RhUzMxNHM5TStEUFlnOXJnTVlNdXZMRktLZmxT?=
 =?utf-8?Q?Ye+YaIT842k0U08HFlojgcUjmldze4=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:64aa7808-outbound-1.mta.getcheckrecipient.com;CAT:NONE;SFS:(13230040)(14060799003)(1800799024)(376014)(36860700013)(35042699022)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2025 18:16:25.9066
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e3ef2de-d8ff-4f15-f8e4-08dd3a47b7e8
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF000509FA.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FRZPR08MB11097
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Jan 2025 18:16:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64605

T24gMjEgSmFuIDIwMjUsIGF0IDE4OjA4LCBSb29zLCBUaG9tYXMgPHRocm9vc0BhbWF6b24uZGU+
IHdyb3RlOg0KPiANCj4gUmlnaHQuIFNvIHNob3VsZCBJIGNyZWF0ZSBhIHYyIG9mIHRoYXQgcGF0
Y2g/IA0KDQoNClBsZWFzZSwgYW5kIHB1dCB0aGUgYnVnIGxpbmsgaW4gYSBjb21tZW50IHNvIHRo
ZSByYXRpb25hbGUgZG9lc27igJl0IGhhdmUgdG8gYmUgZHVnIG91dCBvZiBnaXQgaGlzdG9yeS4N
Cg0KUm9zcw==

