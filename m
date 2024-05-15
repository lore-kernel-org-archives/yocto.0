Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 392BEC25B78
	for <webhook@archiver.kernel.org>; Wed, 15 May 2024 20:36:05 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.84])
 by mx.groups.io with SMTP id smtpd.web11.5115.1715805362807541761
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 May 2024 13:36:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=jJe+ciPG;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=jJe+ciPG;
 spf=pass (domain: arm.com, ip: 40.107.21.84, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=N+SsiS7H1QROpBJjrI3S7XctZIVWKY0gSfap+JhTbhHX5Qla6t5u3+C0WH6MsbbKzp93TVB9lWc4pQTKUx9eQ0if9Iz3f25wkFzShfs9AtJjGjty3QOT1n+xr0IVONgchUnXFhcCDmauTyeMr/e+Dr6ptJfZ+kI4/Br6oLnRGDqJLDlFv8lbqo9cCBgV3/B8BokNGM0mXqcalCh0FbCiES/0HkbiA+mGkwskKhVN3IHP9JtC6FoeDMN/NrjP5QSkwmeBOvsEi2hKPx5pL1KHpmZjaLPYl3M7mUzUDkFWKY92cvYtyAYp9pkcF/yBNn9hscQ9KSTAAO0xam6yCoW5lA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3iKnZykiSaB2Qt2r4QuiGWkOhXnBbxN7arzv+spvr7k=;
 b=hWmX1z14VpP+IbZaiyowceKv2anXUB4eJzfIA2Amx5LRRg97vwOQHc03xsQ8xbbnP2mAQIrUCJwK7ZdwokIjj0c+gBmZ97U6PbXLOHza4xS3QIaX2KV6+k+NBFbn2AcYhIRhRoPoZ0ox9YUyyHeJCOT1BVXzoh9GRiEMHEi4cFx305j5oh9hT8FyrX3jhYWGhcdySr/aK8Chvet+zxqRa9ueWmT6B7Q1G7fT1agGzwKnLTNOWBFi7aCmoWhCgOX27t16U1lVFO6MZh4aBPeOBh0G0F7/9H8Nu06xwDY3muzVyn96ZEP/eVXLt3jshQw83xgThRBoXlIErfjFA0tEBw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3iKnZykiSaB2Qt2r4QuiGWkOhXnBbxN7arzv+spvr7k=;
 b=jJe+ciPGZy5ItWOnuhuvNPFEWkk+MCu8uBL9n+SeAi+XcIKUwqt2NVD48hVHcpgNUN+f3g59xKYqsTFNdxyo/mqRP0tisZsSvN1zEPmazXZ45GcGGl8axSLF3nR3VpHLrTNaEmznZ+imv2awar0Z9UO7PIXkblJJMnUHGreeoUk=
Received: from AS9PR01CA0025.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:542::6) by GVXPR08MB10665.eurprd08.prod.outlook.com
 (2603:10a6:150:14c::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Wed, 15 May
 2024 20:35:57 +0000
Received: from AM2PEPF0001C70D.eurprd05.prod.outlook.com
 (2603:10a6:20b:542:cafe::6e) by AS9PR01CA0025.outlook.office365.com
 (2603:10a6:20b:542::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.27 via Frontend
 Transport; Wed, 15 May 2024 20:35:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM2PEPF0001C70D.mail.protection.outlook.com (10.167.16.201) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7587.21
 via Frontend Transport; Wed, 15 May 2024 20:35:56 +0000
Received: ("Tessian outbound b7675f20d34d:v315"); Wed, 15 May 2024 20:35:56 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: b299017e118871ea
X-CR-MTA-TID: 64aa7808
Received: from 92acea7b6f4f.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 42A4A478-D34C-475E-966D-F7CA0F1FC091.1;
	Wed, 15 May 2024 20:35:50 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 92acea7b6f4f.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 15 May 2024 20:35:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=koL4WXQePvlZkxNGplb0pocGbuwTzG6F51cxfNQ2+pnKqnCXdNZg5k8T96eXr9PO5yAdb2jFmn0y5dH8bsf4gNK65DamwsDGo7TVBWyePeGVVyeGtOg6+bUKhztW3g22hxhFAiF6ptmL0m8EHEl6wc/VY3dCs/MQNsGu5Gw6oyhS1R34QWYQBFKiakPJ4Kstj8jnaOYuhIuYTSAi5/cWb6I0wPzovi7A1MksEfrhTwEbYkrsaQiudQCiG2xu+Dz2p07Gk9uMvkXXrh45kx4f1hcGOuu51t0ZpP1tgWhh7NkI+PWPJTc1P9gUh0ZuY4v69HdZ92qkqVIYfXKS7A4g/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3iKnZykiSaB2Qt2r4QuiGWkOhXnBbxN7arzv+spvr7k=;
 b=kbJRGiipnd5/GJGg8mS9zh3Qlu+pOOefj8+I+GglwJaSin9Ql9iKmS56R/nU7vGhX2T/+u8lXLqtPp6sBxsKYMDQXMJOPbdTMLXGPjgaMnSlsulJD2jL7sg2mivKzJdAhrl2f0zT9PM6SXAcbF2V2pIOnPh4Xb1vHZGyDBSkMSrjjHeYKmaxMFz6Ahg5ZB6YpzdHVxazJQC5fYjIcC+XiDO/BLvc4/HWOZiXyFN+dbKM711phnLjoX1IbbnM9Cc0Fu2e8C7aJeXt0xvdBF+Vs1ftDvzpRMtyMM/jZTrTCp/JrNl59Zm5tuCEy/uv7380UTqQVvVaDX+mBOehPrKVRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3iKnZykiSaB2Qt2r4QuiGWkOhXnBbxN7arzv+spvr7k=;
 b=jJe+ciPGZy5ItWOnuhuvNPFEWkk+MCu8uBL9n+SeAi+XcIKUwqt2NVD48hVHcpgNUN+f3g59xKYqsTFNdxyo/mqRP0tisZsSvN1zEPmazXZ45GcGGl8axSLF3nR3VpHLrTNaEmznZ+imv2awar0Z9UO7PIXkblJJMnUHGreeoUk=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM9PR08MB6274.eurprd08.prod.outlook.com (2603:10a6:20b:2d5::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.27; Wed, 15 May
 2024 20:35:48 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7544.052; Wed, 15 May 2024
 20:35:48 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "gary@missionsecure.com" <gary@missionsecure.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Python3 pyee recipe for Kirkstone
Thread-Topic: [yocto] Python3 pyee recipe for Kirkstone
Thread-Index: AQHapvZ0qJczEbM2+E6fqOc29IbnPrGYotsAgAAFAACAABjSHQ==
Date: Wed, 15 May 2024 20:35:48 +0000
Message-ID: 
 <PA4PR08MB74118B46071BC95A7706D220E8EC2@PA4PR08MB7411.eurprd08.prod.outlook.com>
References: <D0087411-5573-4E0B-9F17-C13043B26510@arm.com>
 <24030.1715799946414812470@lists.yoctoproject.org>
In-Reply-To: <24030.1715799946414812470@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM9PR08MB6274:EE_|AM2PEPF0001C70D:EE_|GVXPR08MB10665:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a46ac59-7c77-4573-c85a-08dc751e9fcb
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230031|376005|1800799015|366007|38070700009;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?cxL94wvCZZunvVCYzkKV64tZtJvIU4DzCTh/RXyTB4bKOL/gc3+QuLaKCj4H?=
 =?us-ascii?Q?iDYWmeNFeX3IALDOROIsX9ejNilf5A7hZ8pzEdIbfGkQDVzKlQr71RB3K238?=
 =?us-ascii?Q?8L1YenK2pQb9aIay853kJg4sE8vOx/57lZYH8azVFA/p/p+c81N8kgUqheOw?=
 =?us-ascii?Q?QzLeilf0ksOvC3CqBqVvni3FnXwJvYvG3QiKgui/YwuXcF75FyTa2JSB+HI/?=
 =?us-ascii?Q?FH+moq91LDwlBhxjkhNMlq2xAI0jzk1KCSb25gDkVYxQ0I0Pegr0FgWQFKrw?=
 =?us-ascii?Q?F/WawCPb5wvr7D+pC8frfWYY4kmme28LAJ0N9JpvteJQmoeoIiI5nd5dLBVk?=
 =?us-ascii?Q?X1Fa7q+QHTTbapV1ICiewkjx0gNERdSF6P27VS1b9CvPeMl0Jl/gGwVmKyXN?=
 =?us-ascii?Q?ILsxdchJ1C68fmAmrCYaXR1dshGc5oldxVkduw1URU5zuqArUNUwK/pYNGJD?=
 =?us-ascii?Q?O3pqCrrwKb0q4K94e7/nQjwragwms5W+Q5gz2U1CKtbCzQUDMfGbJVhH4M8l?=
 =?us-ascii?Q?5gCCXdQvOfokXWtZUPq97UShEpOGBXeCaPYgH8TtdXWRiZe17djwjGVcdjOv?=
 =?us-ascii?Q?lw5HmIC5WrovXzsOAjdeynwvFz4ySl0kvgSb7t9u1QeF1mAZBKtdKRn5gK2t?=
 =?us-ascii?Q?HKr2sVUyxzd7eFBdIbsF340bh2iiOyGZrx/LG2Z8AQXKNSfRbe+lPkE8E/85?=
 =?us-ascii?Q?UaNK7raq/bUA1+dGkRbsYjRqHUaZ7zmU1fCS+9Kb/LxexL2De9GauH4cmp11?=
 =?us-ascii?Q?g5zFzPxSNCCNbSZy5oTpM+/Mx2OntcK78CY4RK4GbK4/OTfM3rmo8/DPDpPy?=
 =?us-ascii?Q?v1Sx4cF9eg1FjPuj4nl0oOg3redzdbbe6LnA4Cnm0kQCPTgbVkv7jT+X6AuH?=
 =?us-ascii?Q?YyyDvYR8TvwMZdHKi9zf1P84Ug9J5MHYKc6pebdR55XKlr9p9cB7DAqd7MdY?=
 =?us-ascii?Q?xB36MGqqTFWf+NKHNEga4wBQgTfe3N2erlIwacqMS9u3E0NqYKnJixoRVGka?=
 =?us-ascii?Q?ut+T75gKlVg3Gd3Jp/uZ1JgkOAhWalFr28YG4WoDcaqJCCgMJD3SzDANgOQz?=
 =?us-ascii?Q?ZsozXvxMWlNKVpfpUnPNoOVMs9qkVOqQ8Uzm2mbjXdWXs3iDcIpiNbD0jo0q?=
 =?us-ascii?Q?8xYiBA65Mbya/SXVY+iUgcKyYunR9OcDbCVEnUescTuorwgv60TyLa3D5qw4?=
 =?us-ascii?Q?gHSv2euZXPzSd1wyqLR6/1yE1zMbOzuxjBPdoZIZUz2xX7EIGNwKqXM02eUE?=
 =?us-ascii?Q?dzzcvu6asm9Vph1Dibt1Mkbzjimv4bqrYGvXlYypWMpTZvM2KA1nMV6LoU8m?=
 =?us-ascii?Q?M1Ma/XvyFplPD3uJZIEJAprx1MSGy4dN9SA41zCa2S531Q=3D=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:ja;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007)(38070700009);DIR:OUT;SFP:1101;
Content-Type: multipart/alternative;
	boundary="_000_PA4PR08MB74118B46071BC95A7706D220E8EC2PA4PR08MB7411eurp_"
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB6274
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM2PEPF0001C70D.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	779a71b0-5b8e-469b-6617-08dc751e9add
X-Microsoft-Antispam: 
	BCL:0;ARA:13230031|376005|1800799015|36860700004|82310400017|35042699013;
X-Microsoft-Antispam-Message-Info: 
	=?iso-2022-jp?B?ZFFGZWVmWGlhS2xaRjJ1dHVpSS9YU3poYlRwZFFhN2pVTHBiNlE3bDdx?=
 =?iso-2022-jp?B?YUl0UEloMW9BYUYxbm5WcVNsd01KaHNFNTJJTDJ5d1lvV00vdnV2S1Aw?=
 =?iso-2022-jp?B?Z0loa2tLY3JYK1B1emJTT1p3UG42Q0luUFlTYWQ5ci9Na2ZCVEI5VnRL?=
 =?iso-2022-jp?B?NEE1UHB3VisreUF1TnAzU1JIdFJYSTM3YWQzekp3ckFrWWk2RnhBbWFR?=
 =?iso-2022-jp?B?VklOV3N5enJIT01hUVNMZnFTWFdlVkhpbEdscEloeDI2R1VQVXdvWHpO?=
 =?iso-2022-jp?B?MXozN0Z3TnhQWWhDVFVGV1NoWjZPUzQvQUUwbHUzdEM0TllycU1GbXMz?=
 =?iso-2022-jp?B?aGFPemNuYzJ1WlkzeEdYRkFnY01MM0pjcFR4a2JpRS85YUJVZ3lLSTZE?=
 =?iso-2022-jp?B?aE80QzlQZWtuRW1FQ25QdTJvQWx3VUVxOXZBSyt4dDBnQ0JvWER3VDZw?=
 =?iso-2022-jp?B?THYvUm1GRGZoa093M3ZucmxRWEdocWlDTzdVeEZYRUpiYXJoaHJVL3pI?=
 =?iso-2022-jp?B?a2pqenZlU0NtQTB4R3lvOGNNMVI2OW9qMFY2T2Z5ZlJUK3U3VDhoNVFD?=
 =?iso-2022-jp?B?MXdOL2puRy9CdUpacVRSWEVIckpmWEFBSm8rRVBkUkViTGtKWWxVcmo3?=
 =?iso-2022-jp?B?R3gvNlhFTytQeE9VRHlGZkNaYjFBWW9ETjk3NXJvWjZaWDF1bVQ5bkpi?=
 =?iso-2022-jp?B?bEYrR3Q2YlJGeDA2TTdkUUNyellOREtMTG9HQkpMVm5UOENaQVBuL2I0?=
 =?iso-2022-jp?B?U1NXSkNnK0Q1NEdUZmhDSHBKU1NGL3ZFY0JDckhpYUJNWkJhWGZObTda?=
 =?iso-2022-jp?B?R3ZsTTlMNjZXMjIvYyt6UTZnN2MxRytycHlBZ3I5eGlwclNrVlo1cy9a?=
 =?iso-2022-jp?B?eEtEK05abHl6RFd6VzlLVUpxaEpqYzlHelA5UkZ4dTY0QWxIczBnempi?=
 =?iso-2022-jp?B?VDFtMHUyeUJ5R2orNDlJRGFraEZ1SkhUWnA0MEIrK1p0YU14b1poRlVD?=
 =?iso-2022-jp?B?TElOUWUyek1rNXI4UGxkNzF5czRGbisvVEFRWEJXV2pEVnJlYmQ5bUFt?=
 =?iso-2022-jp?B?T0U4WVNsTDhibkUrNTk0dXpRVCtTK01waG1OK3VmekRBSzBrRzZYNFlr?=
 =?iso-2022-jp?B?OTBYaGpRVFBLa0JyaEpUMUIrRWFmSUFrWTU1T0VKUG1jTXc1S1NBdkww?=
 =?iso-2022-jp?B?ck9rdmRXdnFZelZZbWFGa1N5cHJTNERSd3Y1OFNicnNRMlQ5UDJ0cGZE?=
 =?iso-2022-jp?B?YXEwbXZWSzEyTEFKTXQvbnBEMnBjM2UzM2lUSnUvOUwyMS9obVp6MnQz?=
 =?iso-2022-jp?B?RWdGS0hkK3lmMnpMSGtTa3U4bU5ZbDFSK0JEKzNESjBBcURRdWpZYml3?=
 =?iso-2022-jp?B?UTc2eGVnYnRPWk9yVERPVDFTWlVQU1pyMldMMjNDQmI1NzBweXYzN20y?=
 =?iso-2022-jp?B?RzRqU2c4dEF1blVRcllWUlZjWDhrUDFINXBpRW9vQWFLTEMvOENQVVFK?=
 =?iso-2022-jp?B?RWZkcVVVRE5ORFkyTWhGVCtXV3hqRWpNeWFPd2hoREdVeWN1MDdKV2Nh?=
 =?iso-2022-jp?B?YnRwaHluczdRTDJXNFc1SjhWb2V4UXA3SGJSOG53dWJNVVRUS0NESjJE?=
 =?iso-2022-jp?B?N215QWE3QVlaUU1pU0VDTng4aXFtRmZxNDBHYkdjYnVZZjlXSTBlM2pX?=
 =?iso-2022-jp?B?MkM2U2p5WmlDSnduRERlT29RVDQwdXdzY0ZzQUlBNVljSmRCY2hieDlh?=
 =?iso-2022-jp?B?M1BkRlN4U0xyZzZPVCsxcmFYaE92RTZhNDR2ZW9pK2V4bHNuVFBlVDUy?=
 =?iso-2022-jp?B?S1BnSHFPZ0Jja29aT3ZvY05MQThsRW9Xek1Wek5BTzhIWlYvZVBPWll6?=
 =?iso-2022-jp?B?NXZqVGVJbGhQN2txdEoxTkVYa25yRTRDTzZsU1lySFBNa0ltbGhrU0FX?=
 =?iso-2022-jp?B?NFpXdit0ZldGR0xTZTYrRDFDcG9SdTE2dXg5cTJ5Q1lKOXMzQVl1NXJm?=
 =?iso-2022-jp?B?NXJHa2g0cHRDOURSVEx0NkFxWU9icA==?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(376005)(1800799015)(36860700004)(82310400017)(35042699013);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 20:35:56.9387
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a46ac59-7c77-4573-c85a-08dc751e9fcb
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM2PEPF0001C70D.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB10665
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 May 2024 20:36:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63103

--_000_PA4PR08MB74118B46071BC95A7706D220E8EC2PA4PR08MB7411eurp_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

That=1B$B!G=1B(Bs normally because there=1B$B!G=1B(Bs a dependency on somet=
hing like setuptools-scm. Check the pyproject.toml and see what it says it =
depends on.

(Post kirkstone this would error out earlier)

Ross
________________________________
From: Gary Huband via Lists.Yoctoproject.Org <gary=3Dmissionsecure.com@list=
s.yoctoproject.org>
Sent: Wednesday, May 15, 2024 8:05:46 PM
To: Ross Burton <Ross.Burton@arm.com>; yocto@lists.yoctoproject.org <yocto@=
lists.yoctoproject.org>
Subject: Re: [yocto] Python3 pyee recipe for Kirkstone

Still no pyee under site-packages and the dist-info dir is UNKNOWN
$ tree ./tmp/work/corei7-64-poky-linux/python3-pyee/11.1.0-r0/image/
./tmp/work/corei7-64-poky-linux/python3-pyee/11.1.0-r0/image/
=1B$B(&(!(!=1B(B usr
    =1B$B(&(!(!=1B(B lib
        =1B$B(&(!(!=1B(B python3.10
            =1B$B(&(!(!=1B(B site-packages
                =1B$B(&(!(!=1B(B UNKNOWN-0.0.0.dist-info
                    =1B$B('(!(!=1B(B LICENSE
                    =1B$B('(!(!=1B(B METADATA
                    =1B$B('(!(!=1B(B RECORD
                    =1B$B('(!(!=1B(B top_level.txt
                    =1B$B(&(!(!=1B(B WHEEL

--_000_PA4PR08MB74118B46071BC95A7706D220E8EC2PA4PR08MB7411eurp_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
</head>
<body>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">That=1B$B!G=1B(Bs normally because there=1B$B!G=1B(Bs a de=
pendency on something like setuptools-scm. Check the pyproject.toml and see=
 what it says it depends on.&nbsp;<span></span></div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">(Post kirkstone this would error out earlier)</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Ross</div>
</div>
</div>
<div id=3D"ms-outlook-mobile-signature">
<div></div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Gary Huband via Lists=
.Yoctoproject.Org &lt;gary=3Dmissionsecure.com@lists.yoctoproject.org&gt;<b=
r>
<b>Sent:</b> Wednesday, May 15, 2024 8:05:46 PM<br>
<b>To:</b> Ross Burton &lt;Ross.Burton@arm.com&gt;; yocto@lists.yoctoprojec=
t.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] Python3 pyee recipe for Kirkstone</font>
<div>&nbsp;</div>
</div>
<div>Still no pyee under site-packages and the dist-info dir is UNKNOWN
<blockquote>$ tree ./tmp/work/corei7-64-poky-linux/python3-pyee/11.1.0-r0/i=
mage/<br>
./tmp/work/corei7-64-poky-linux/python3-pyee/11.1.0-r0/image/<br>
=1B$B(&(!(!=1B(B usr<br>
&nbsp; &nbsp; =1B$B(&(!(!=1B(B lib<br>
&nbsp; &nbsp; &nbsp; &nbsp; =1B$B(&(!(!=1B(B python3.10<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =1B$B(&(!(!=1B(B site-packages<br=
>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =1B$B(&(!(!=1B(B UN=
KNOWN-0.0.0.dist-info<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =1B$B=
('(!(!=1B(B LICENSE<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =1B$B=
('(!(!=1B(B METADATA<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =1B$B=
('(!(!=1B(B RECORD<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =1B$B=
('(!(!=1B(B top_level.txt<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =1B$B=
(&(!(!=1B(B WHEEL</blockquote>
</div>
</body>
</html>

--_000_PA4PR08MB74118B46071BC95A7706D220E8EC2PA4PR08MB7411eurp_--

