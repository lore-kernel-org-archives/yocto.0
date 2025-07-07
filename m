Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D71C8303C
	for <webhook@archiver.kernel.org>; Mon,  7 Jul 2025 09:16:58 +0000 (UTC)
Received: from OSPPR02CU001.outbound.protection.outlook.com (OSPPR02CU001.outbound.protection.outlook.com [40.107.159.62])
 by mx.groups.io with SMTP id smtpd.web11.56263.1751879811400334934
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Jul 2025 02:16:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=S6BIkQpB;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=S6BIkQpB;
 spf=pass (domain: arm.com, ip: 40.107.159.62, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=p1so2+Z3s179C408hqw2duWiIupgtQHjxz8h8zSYRPnxO/GoSPA6wmHIfiZkqV6eiB6+oLy7oxOM9AkT3Gz8KF6QwdyGyjVD4BcLQIWzT2mjWKXPc/wXZvmoruKTOFNs34ng1vFkyLWOM84qh3+jQxPeIY7ybFMJRaT2cdOyucrSfWjtu3kOfSbFbQV53VLcOUnUWnHpUWJPbijjtpZmq7M5pQSLRpuqvte0X7M3ozEkSmYi5MB4Q3APq6i8X5zZMUlSvWW+x5CPp+A7BngP6E8ZUMOv9XNi44sm88DgxWEhlGBGmUiu4F1PpGGUKqiOhYZYPHhZoc4d1eYaHtdUcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ecrzR6RxAheE/RkZjRI//Zf8jfKQ8rLMqMKGBBUvkdc=;
 b=Vw6TTQUDLUh3OnVejEtXk0lQtpxEeb5GGCbhbUMRSUfu7Nmser6q5M4oExlN2mk0LuwSNTXyhE4OWNCDXE3OCl24AYXd78KRYgph8cB0C3/vJzABgH+5nKP8Ym8u4pvnMoaNYU7a4gn8sNf6OnppnLyvCo9Y7d/A5MjVIHCfzEQPhWYVzD0ZRKXceT4HF5KhtNLAV3/VwSXT/6X8w4uhHwJG0r9PDf0kPB8jQc4c6aCond5ky5S5F9XOQOgEJuOFBh019maLShjtScqZFDCjhEcTaUCGMO4JziFTlTOHEgZ5i3s5M+ynJX1w9pjFCR+fl3/YZZCDyTAEDE/LRPchSw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ecrzR6RxAheE/RkZjRI//Zf8jfKQ8rLMqMKGBBUvkdc=;
 b=S6BIkQpBAeoTyLWE1Re0beytqFGecTxkZ9jWLGej5npOX1YsIUjEJcx8HBsW3qWpli7oMtjVR32/CUQmFwHhquzv6g1mjhmArcfQJzpfEQy7byK3SllXKbRpSKMyI2rnbIGgd4ZyBiWmt4SiBiE0z20Y9uJULauv+uojLlKxnqk=
Received: from AS4P251CA0017.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:5d3::6)
 by PAVPR08MB9212.eurprd08.prod.outlook.com (2603:10a6:102:307::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Mon, 7 Jul
 2025 09:16:45 +0000
Received: from AMS0EPF0000019B.eurprd05.prod.outlook.com
 (2603:10a6:20b:5d3:cafe::42) by AS4P251CA0017.outlook.office365.com
 (2603:10a6:20b:5d3::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8901.26 via Frontend Transport; Mon,
 7 Jul 2025 09:16:45 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AMS0EPF0000019B.mail.protection.outlook.com (10.167.16.247) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8901.20
 via Frontend Transport; Mon, 7 Jul 2025 09:16:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D59v8yQNn83x+fkh+3/S6m6WhW31h2efBeTmJWQtIHrsW+sZBgmEcG/p2HUsfvOs1vW5t4FZSp/kWK+G4U4noPLbJHEq31idSd+wFAkODc/qV1EpKcN3YLMHTrBJEIdbsH7gCe9ZJWWviosXJOVyBpafdTzccCA3fV0m9vtYS5dRusbuOMasBut7w5DiXym35qILnfRE0oA/0QnMWLEyLA5mYdS7xYlMzZc+RFBqWq/f8x3jM/8mgmkfST2onZsAQRyP4R6pKQIUJV/5ioALNa2/nQG5uEwkh3TKLAmpvxGhUvo3/JdaE26ExAH6W2IyV3W12ohVOm06MbMR3q5vfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ecrzR6RxAheE/RkZjRI//Zf8jfKQ8rLMqMKGBBUvkdc=;
 b=Xr8D4GyYp/6ZMCytBx62WTEV7cFs82DYynBz7sOXRC1AxOQHlZjYBfHPhESPe2njFuq8KAtDgbsFbfRpPTmZ49zuuMcx7uP9EFu41rI9mvoBmIPmVDJAkrvSI4090NTGzpiHAtUqC+T3w8nqLdnfStuLs/Z1hD6BkYA+CE/GBz6TK/y/1efpAhcrMxXRcCPeEpTripOikz/5YXU8Juo8FG1AZqHC70+zcqJJEOgA5+sqlArmws1yaLXFujKBbPwDT/K0+z/OTxBCDTZA8tQXMmpyNq7IhMx2Ki58x+IYAw6uFvl4mS2NxdXO1BCuSUuYAnkGXRxqc9vYfhnkTniJvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ecrzR6RxAheE/RkZjRI//Zf8jfKQ8rLMqMKGBBUvkdc=;
 b=S6BIkQpBAeoTyLWE1Re0beytqFGecTxkZ9jWLGej5npOX1YsIUjEJcx8HBsW3qWpli7oMtjVR32/CUQmFwHhquzv6g1mjhmArcfQJzpfEQy7byK3SllXKbRpSKMyI2rnbIGgd4ZyBiWmt4SiBiE0z20Y9uJULauv+uojLlKxnqk=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM8PR08MB6387.eurprd08.prod.outlook.com (2603:10a6:20b:365::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.24; Mon, 7 Jul
 2025 09:16:12 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8901.021; Mon, 7 Jul 2025
 09:16:12 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"schonm@gmail.com" <schonm@gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH 2/3] Changes to S as requried by
 oe-core
Thread-Topic: [yocto] [meta-raspberrypi][PATCH 2/3] Changes to S as requried
 by oe-core
Thread-Index: AQHb7sDUqKV3G4qFvkKMBMraJaKnlbQmYgGA
Date: Mon, 7 Jul 2025 09:16:11 +0000
Message-ID: <6A1170A0-B8F2-413E-8FDA-7D045A2DC6A3@arm.com>
References: <20250706213926.1813828-2-schonm@gmail.com>
 <20250706213926.1813828-4-schonm@gmail.com>
In-Reply-To: <20250706213926.1813828-4-schonm@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.600.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM8PR08MB6387:EE_|AMS0EPF0000019B:EE_|PAVPR08MB9212:EE_
X-MS-Office365-Filtering-Correlation-Id: ccda91e8-17cc-432a-489d-08ddbd36fe59
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|10070799003|366016|1800799024|4022899009|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?tvDKKBK8NoNOpPETVvvcQPFso/dt7c7NIHgTrOw3U3Is2Rm0yA0KapxtMjSb?=
 =?us-ascii?Q?x56F9eTNX8+WiQKnS9c+urtmbypqrXQz1O5FE/kF98J8tLW1MaD7yALnyCHz?=
 =?us-ascii?Q?EIdctujCI8d2og5vQudSipwi0X6LzcFi9Eh0S9K8hH4VKW4J+mo++7fl0ng7?=
 =?us-ascii?Q?uk8zAjTWSYb8Y3Gz/uuq/AnLFlXSeBCb5sbO73I+wSflC1Rm0FzofLUn7EPA?=
 =?us-ascii?Q?w5iZeMZhAwb932brtZ48sewNOOyYaeuBq26Znf+ZWxg4h8NVfwc3wZ7fh4vS?=
 =?us-ascii?Q?IO2bVvznnoZhpnOniiIILUgXiGtsZYApFlbyG0tSLEeDjP1OXMmvG0Psyulb?=
 =?us-ascii?Q?RPtm/19m0wbf/5nImrsM04862R3njYAz8urrFSZbw0k7YLsuMRKt4KurP/y4?=
 =?us-ascii?Q?CD7rv9Cd7XcxOsXZL7s6GQnY5QYLwFUg6dc4Yo56DtMb5D/+LSk39s3sQza5?=
 =?us-ascii?Q?KiLLsTJyr1SYzelDGYBzZltiXXR3Gkc7y3mnKRwtMBRMuVXFugc5FluMLcoo?=
 =?us-ascii?Q?w07HbRvbHVYzVxX81uQyUI4/KmQk5YJSoplTQWrJTHxnK4rbUfzko6lGxnYw?=
 =?us-ascii?Q?rwkDzMxu15ASvjviSUQWjhvHc/vs4+aq91sh6MEIxiJU6SE/Vl1/1BPkHAau?=
 =?us-ascii?Q?vMkw4Fn69++T7KvWNCKpx80GIy62kkOWKn9m3rtUOMpoRPYwovWXV0k7rACN?=
 =?us-ascii?Q?+NDKv3nI0CL2yn1g0B9C0sq6jQxjZ2yAKBbElAaJZhI/mWoxpoluC7vQYLSl?=
 =?us-ascii?Q?MHh239E1uOE5S9lMEnBeLSL5nzxg+HdaWE7v3BubbNU1ga3POsoqK5oUqBDZ?=
 =?us-ascii?Q?uyg5OwEvyWFCXemz1QYu/gZ1kWIkLkrE3ogGA7Uu5uc0pPbfdG1J4Bkcqt/k?=
 =?us-ascii?Q?+uaSBlRHB+ZPlncrXnKD9OiDu8OcJTlnmFaET8g4Lj9JkyfQH5kseRrm7nG9?=
 =?us-ascii?Q?1vW5LTonszXNIeSgQkONFRL2rFg5ZMkxMFlHVtK3NKxOjYDM2MbVdGV2PomM?=
 =?us-ascii?Q?q5TPSJnj68mUE2o5+qEpo4sCMnhzcPZVk+3cto0xs9dYjkF6nNX/uNBHWf77?=
 =?us-ascii?Q?e3JionxvPHOEG69jud2J1BuKgq+24LT7+ceg2m0x9HhcHfsF2wL/aNJVngww?=
 =?us-ascii?Q?NdSfk4He5okPxl7bdOzI/1iyJgd451AZfRII+KYFo+S9ZdktXa4U0fUOtnE2?=
 =?us-ascii?Q?LeHRDtOpFbCnFpeikND3iPWsSluR7OO6xOp0UhbKgLc0eP4ZoJE8p9v0ZQC4?=
 =?us-ascii?Q?eSQ5QFtVuCGkRh88LU+P/yqqdR33juBNi/sGOkbC9IzxlCoXiQZV62iUe7ig?=
 =?us-ascii?Q?mcUJtgQHkxzsTBh6iNCMNB0l37uPklXiEsGjusPIpRfjh2TOk5xPrzT64/IQ?=
 =?us-ascii?Q?cGpuc2XQ1QxHG12unY8EFMXvhQwAa0M8fwDAtGibfP74+l9xsew0qJRczl54?=
 =?us-ascii?Q?9cqWmIFvBB0=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(366016)(1800799024)(4022899009)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <48E8030E0350894D8CB92102E0795EB2@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB6387
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF0000019B.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	1a3b394a-2e53-4d81-ea73-08ddbd36ea9f
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|4022899009|35042699022|14060799003|36860700013|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?BVQ/uymjmfObxX2eqHuP3LOB1H+I7hjxPfDWGJAzDKZTCt01uIBIkNsNPO8O?=
 =?us-ascii?Q?+1Xvtrb1zqcnlqpCrPKdYlcM+5RAAYME9WBFZjsTGwUfIcURVPlanL2rlSEc?=
 =?us-ascii?Q?xSXv4TvRHqp7OoqzRCJewp9R8+LbesN1h7Dwkx+9paiB4k/E/iuEpVDbw/21?=
 =?us-ascii?Q?Pc1tNXNu4L0pCPwnPKhXpx9PDCxi4G5Y1nkz8sdAf9oDEFs4VYOLin7VFzei?=
 =?us-ascii?Q?VGq/1LgysJ3EbkGzLBK8DS2+lx529QFLCh83Pf8bQeRCWr5J1qgM1p8vmTig?=
 =?us-ascii?Q?iYBZIJrKoIaO5cXDAZHIk2vPvQ5+Rhu6FXqQ2T3yYyxVZVf/tifMsumLhPrK?=
 =?us-ascii?Q?5u1KktrotIPjcBdv3o7+v6hZmaXcSAKkN1fFnhkWpbAINKQITx4ShXIwy4HA?=
 =?us-ascii?Q?HIqvBFrEGJU90g8nIHxGoMJdrgiPW0f4ZK/BUzpxDHyl3rrZmu5EkB/3n1Fu?=
 =?us-ascii?Q?2MBvXM0KyYaPWcbLW82iAgq9VeL1dPoBKrFOUBnjKadqU4aI8XspvUxz3YGx?=
 =?us-ascii?Q?MI8+bsF/DEqIwIlThR0HGaZcyZaWt6JdanYCeIBKpAcRLIJGiZPflXhADcnf?=
 =?us-ascii?Q?xHo54wVVLEpFLC0L9gDf1qt58RU8XggZiw3LA6yr9rdFKjxKWnb2cGd/A9kS?=
 =?us-ascii?Q?y1VENxOew0rtBmt3tegEjLq2av9ibaxBPVt9SVZXbkdIVd2n2cGneAucqAX1?=
 =?us-ascii?Q?1Bpc3ZJcd7xrTKv+U5V+2ydnjPVjpaOWHeAPoLws9zQ/UeAO+ATo2FUaHEvI?=
 =?us-ascii?Q?ihrYL4wRKBt1gMaovTNnuhhwSLAFn8BPF57uZPH88KgruqPBtThJUxdwC7Ui?=
 =?us-ascii?Q?nrE/WtpNJmtyMz8wS72IGy7Xci6/HDlsFi6wAWmsZjW8MRWfx7VFO5vBNTOv?=
 =?us-ascii?Q?yNZPIpIV8MNk0MBw2UmKrw5XuEIchx4zy7Wp7pRKaueqnkNrpQLuaC2wM6qp?=
 =?us-ascii?Q?A3+Sfn0DLnjec/M0IbwXk1WvXvLbMrLNQ3wrTW2B2+RYuPSjlL/5/DPpO5B1?=
 =?us-ascii?Q?yy4tOya4JC1uJd07PqbPK8DIlZrQpOO/bVLsvF090VwZDKPXnGsJccy0LH7c?=
 =?us-ascii?Q?q5FxFoOi/PjxE0JPaBiZiYWkcVfuJvl2Zr7Eak2UX8s7I+U0HtFDx9EAb1KA?=
 =?us-ascii?Q?2sMAmjceLL1nISDVFIJCLrgL/J4zC9wyMVV7hNBQohOVf34mOrwQVb2/e0d3?=
 =?us-ascii?Q?vaGMqD5vuLCHBXKgTpUG6dOdX4wTd1jNk2asCyCIcucdhaSBtqcR2akzgmFG?=
 =?us-ascii?Q?qsmMPdrYrGgJQtZmF6BjIDIRe03G5uDoAj9XEIbvA+oPdvivjNY40nRDk0q/?=
 =?us-ascii?Q?u0BvgI0vsvWneTMYydalENZfJTAM6xRxQf8bYnEL/T+fjKZqiMoQhfUBnMFu?=
 =?us-ascii?Q?kTWMWcbJsLu18jsBu451adkdCDYB5AegxGmFMOgsQxlO4Xwd2Rykwu9uSSfy?=
 =?us-ascii?Q?5KB/yxSehkhGaz7z8eWqU/LksPh5QlthdllMIOO3J7LBjyUzWmYKjA=3D=3D?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(4022899009)(35042699022)(14060799003)(36860700013)(1800799024)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2025 09:16:44.9114
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ccda91e8-17cc-432a-489d-08ddbd36fe59
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF0000019B.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB9212
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Jul 2025 09:16:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65620

As per the README, these patches should go to yocto-patches@lists.yoctoproj=
ect.org.

Ross

> On 6 Jul 2025, at 22:29, J. S. via lists.yoctoproject.org <schonm=3Dgmail=
.com@lists.yoctoproject.org> wrote:
>=20
> S dropped from git recipes.
>=20
> WORKDIR replaced with UNPACKDIR as suggested by oe-core commit 0ad5fb3431=
b5f5875326d929442124a8fabe0642
>=20
> I.E.
>=20
> sed -i "/^S =3D \"\${WORKDIR}\/git\"/d" `find . -name *.bb -o -name *.inc=
 -o -name *.bbclass`
>=20
> followed by this:
>=20
> sed -i "s/^S =3D \"\${WORKDIR}\//S =3D \"\${UNPACKDIR}\//g" `find . -name=
 *.bb -o -name *.inc -o -name *.bbclass`
>=20
> Signed-off-by: Jason Schonberg <schonm@gmail.com>
> ---
> .../recipes-multimedia/libcamera-apps/libcamera-apps_git.bb     | 1 -
> .../recipes-multimedia/rpidistro-vlc/rpidistro-vlc_3.0.17.bb    | 1 -
> .../recipes-devtools/python/python3-adafruit-blinka_6.2.2.bb    | 1 -
> .../python/python3-adafruit-circuitpython-busdevice_5.0.5.bb    | 1 -
> .../python/python3-adafruit-circuitpython-motor_3.2.6.bb        | 1 -
> .../python/python3-adafruit-circuitpython-motorkit_1.6.1.bb     | 1 -
> .../python/python3-adafruit-circuitpython-pca9685_3.3.4.bb      | 1 -
> recipes-bsp/bootfiles/rpi-config_git.bb                         | 1 -
> recipes-bsp/rpi-eeprom/rpi-eeprom_git.bb                        | 1 -
> recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb                    | 2 +-
> recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb        | 1 -
> recipes-core/udev/udev-rules-rpi.bb                             | 1 -
> recipes-devtools/pi-blaster/pi-blaster_git.bb                   | 1 -
> .../python/python3-adafruit-circuitpython-register_1.9.10.bb    | 1 -
> .../python/python3-adafruit-platformdetect_3.27.0.bb            | 1 -
> recipes-devtools/python/python3-adafruit-pureio_1.1.9.bb        | 1 -
> recipes-devtools/python/python3-rtimu_7.2.1.bb                  | 2 +-
> recipes-devtools/python/rpio_0.10.1.bb                          | 1 -
> recipes-devtools/raspi-gpio/raspi-gpio_git.bb                   | 1 -
> recipes-devtools/raspi-utils/raspi-utils_git.bb                 | 1 -
> recipes-graphics/raspidmx/raspidmx_git.bb                       | 1 -
> recipes-graphics/userland/userland_git.bb                       | 1 -
> .../bluez-firmware-rpidistro/bluez-firmware-rpidistro_git.bb    | 1 -
> .../linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb    | 1 -
> recipes-multimedia/omxplayer/omxplayer_git.bb                   | 1 -
> recipes-multimedia/python3-picamera/python3-picamera_git.bb     | 1 -
> recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_5.1.4.bb   | 1 -
> 27 files changed, 2 insertions(+), 27 deletions(-)
>=20
> diff --git a/dynamic-layers/multimedia-layer/recipes-multimedia/libcamera=
-apps/libcamera-apps_git.bb b/dynamic-layers/multimedia-layer/recipes-multi=
media/libcamera-apps/libcamera-apps_git.bb
> index dc07145..343004f 100644
> --- a/dynamic-layers/multimedia-layer/recipes-multimedia/libcamera-apps/l=
ibcamera-apps_git.bb
> +++ b/dynamic-layers/multimedia-layer/recipes-multimedia/libcamera-apps/l=
ibcamera-apps_git.bb
> @@ -15,7 +15,6 @@ SRC_URI =3D "\
> PV =3D "1.4.2+git${SRCPV}"
> SRCREV =3D "9ae39f85ae6bee9761c36b9b5b80d675bc1fa369"
>=20
> -S =3D "${WORKDIR}/git"
>=20
> DEPENDS =3D "libcamera libexif jpeg tiff libpng boost"
>=20
> diff --git a/dynamic-layers/multimedia-layer/recipes-multimedia/rpidistro=
-vlc/rpidistro-vlc_3.0.17.bb b/dynamic-layers/multimedia-layer/recipes-mult=
imedia/rpidistro-vlc/rpidistro-vlc_3.0.17.bb
> index 2007201..8f61c2a 100644
> --- a/dynamic-layers/multimedia-layer/recipes-multimedia/rpidistro-vlc/rp=
idistro-vlc_3.0.17.bb
> +++ b/dynamic-layers/multimedia-layer/recipes-multimedia/rpidistro-vlc/rp=
idistro-vlc_3.0.17.bb
> @@ -32,7 +32,6 @@ SRC_URI =3D "\
>=20
> SRCREV =3D "b276eb0d7bc3213363e97dbb681ef7c927be6c73"
>=20
> -S =3D "${WORKDIR}/git"
>=20
> PROVIDES =3D "vlc"
> RPROVIDES:${PN} =3D "${PROVIDES}"
> diff --git a/dynamic-layers/openembedded-layer/recipes-devtools/python/py=
thon3-adafruit-blinka_6.2.2.bb b/dynamic-layers/openembedded-layer/recipes-=
devtools/python/python3-adafruit-blinka_6.2.2.bb
> index 9e1e357..cf9c1af 100644
> --- a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-a=
dafruit-blinka_6.2.2.bb
> +++ b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-a=
dafruit-blinka_6.2.2.bb
> @@ -6,7 +6,6 @@ LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D660e614bc7efb0=
697cc793d8a22a55c2"
> SRC_URI =3D "git://github.com/adafruit/Adafruit_Blinka.git;branch=3Dmain;=
protocol=3Dhttps"
> SRCREV =3D "dc688f354fe779c9267c208b99f310af87e79272"
>=20
> -S =3D "${WORKDIR}/git"
>=20
> inherit setuptools3
>=20
> diff --git a/dynamic-layers/openembedded-layer/recipes-devtools/python/py=
thon3-adafruit-circuitpython-busdevice_5.0.5.bb b/dynamic-layers/openembedd=
ed-layer/recipes-devtools/python/python3-adafruit-circuitpython-busdevice_5=
.0.5.bb
> index 93491d4..52db8b1 100644
> --- a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-a=
dafruit-circuitpython-busdevice_5.0.5.bb
> +++ b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-a=
dafruit-circuitpython-busdevice_5.0.5.bb
> @@ -6,7 +6,6 @@ LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D6ec69d6e9e6c85=
adfb7799d7f8cf044e"
> SRC_URI =3D "git://github.com/adafruit/Adafruit_CircuitPython_BusDevice.g=
it;branch=3Dmain;protocol=3Dhttps"
> SRCREV =3D "1bfe8005293205e2f7b2cc498ab5a946f1133b40"
>=20
> -S =3D "${WORKDIR}/git"
>=20
> inherit setuptools3
>=20
> diff --git a/dynamic-layers/openembedded-layer/recipes-devtools/python/py=
thon3-adafruit-circuitpython-motor_3.2.6.bb b/dynamic-layers/openembedded-l=
ayer/recipes-devtools/python/python3-adafruit-circuitpython-motor_3.2.6.bb
> index 3233c8f..c568504 100644
> --- a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-a=
dafruit-circuitpython-motor_3.2.6.bb
> +++ b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-a=
dafruit-circuitpython-motor_3.2.6.bb
> @@ -6,7 +6,6 @@ LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Db72678307cc7c1=
0910b5ef460216af07"
> SRC_URI =3D "git://github.com/adafruit/Adafruit_CircuitPython_Motor.git;b=
ranch=3Dmain;protocol=3Dhttps"
> SRCREV =3D "2251bfc0501d0acfb96c0a43f4f2b4c6a10ca14e"
>=20
> -S =3D "${WORKDIR}/git"
>=20
> inherit setuptools3
>=20
> diff --git a/dynamic-layers/openembedded-layer/recipes-devtools/python/py=
thon3-adafruit-circuitpython-motorkit_1.6.1.bb b/dynamic-layers/openembedde=
d-layer/recipes-devtools/python/python3-adafruit-circuitpython-motorkit_1.6=
.1.bb
> index 39fe76a..4de6462 100644
> --- a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-a=
dafruit-circuitpython-motorkit_1.6.1.bb
> +++ b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-a=
dafruit-circuitpython-motorkit_1.6.1.bb
> @@ -6,7 +6,6 @@ LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D6ad4a8854b39ad=
474755ef1aea813bac"
> SRC_URI =3D "git://github.com/adafruit/Adafruit_CircuitPython_MotorKit.gi=
t;branch=3Dmain;protocol=3Dhttps"
> SRCREV =3D "8c1462b4129b21f6db156d1517abb017bb74b982"
>=20
> -S =3D "${WORKDIR}/git"
>=20
> inherit setuptools3
>=20
> diff --git a/dynamic-layers/openembedded-layer/recipes-devtools/python/py=
thon3-adafruit-circuitpython-pca9685_3.3.4.bb b/dynamic-layers/openembedded=
-layer/recipes-devtools/python/python3-adafruit-circuitpython-pca9685_3.3.4=
.bb
> index f7f0ff1..1da4c3f 100644
> --- a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-a=
dafruit-circuitpython-pca9685_3.3.4.bb
> +++ b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-a=
dafruit-circuitpython-pca9685_3.3.4.bb
> @@ -6,7 +6,6 @@ LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3De7eb6b599fb0cf=
b06485c64cd4242f62"
> SRC_URI =3D "git://github.com/adafruit/Adafruit_CircuitPython_PCA9685.git=
;branch=3Dmain;protocol=3Dhttps"
> SRCREV =3D "2780c4102f4c23fbab252aa1198b61ba7e2d1b2c"
>=20
> -S =3D "${WORKDIR}/git"
>=20
> inherit setuptools3
>=20
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfi=
les/rpi-config_git.bb
> index 0140f30..d39621c 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -12,7 +12,6 @@ SRC_URI =3D "git://github.com/Evilpaul/RPi-config.git;p=
rotocol=3Dhttps;branch=3Dmaster
>            file://0001-config.txt-reintroduce-start_x.patch \
>           "
>=20
> -S =3D "${WORKDIR}/git"
>=20
> PR =3D "r5"
>=20
> diff --git a/recipes-bsp/rpi-eeprom/rpi-eeprom_git.bb b/recipes-bsp/rpi-e=
eprom/rpi-eeprom_git.bb
> index f3ca5e3..ef8c2af 100644
> --- a/recipes-bsp/rpi-eeprom/rpi-eeprom_git.bb
> +++ b/recipes-bsp/rpi-eeprom/rpi-eeprom_git.bb
> @@ -11,7 +11,6 @@ SRC_URI =3D " \
> SRCREV =3D "1bd0a1052b2e74d7af04de18d30b5edb12d8a423"
> PV =3D "v2025.03.10-2712"
>=20
> -S =3D "${WORKDIR}/git"
>=20
> RDEPENDS:${PN} +=3D " \
>     coreutils \
> diff --git a/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb b/recipes-bsp/r=
pi-u-boot-scr/rpi-u-boot-scr.bb
> index d035d6e..81b5d08 100644
> --- a/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb
> +++ b/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb
> @@ -21,7 +21,7 @@ do_compile() {
>=20
> inherit kernel-arch deploy nopackages
>=20
> -S =3D "${WORKDIR}/sources"
> +S =3D "${UNPACKDIR}/sources"
> UNPACKDIR =3D "${S}"
>=20
> do_deploy() {
> diff --git a/recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb b/r=
ecipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb
> index 1c3daff..3f25f15 100644
> --- a/recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb
> +++ b/recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb
> @@ -12,7 +12,6 @@ SRC_URI =3D "\
> "
> SRCREV =3D "fd4775bf90e037551532fc214a958074830bb80d"
>=20
> -S =3D "${WORKDIR}/git"
>=20
> inherit ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', 'up=
date-rc.d', d)}
> # hciuart.service replaces what was brcm43438.service=20
> diff --git a/recipes-core/udev/udev-rules-rpi.bb b/recipes-core/udev/udev=
-rules-rpi.bb
> index 3ca34f4..d898deb 100644
> --- a/recipes-core/udev/udev-rules-rpi.bb
> +++ b/recipes-core/udev/udev-rules-rpi.bb
> @@ -8,7 +8,6 @@ SRC_URI =3D " \
> "
> SRCREV =3D "5ce3ef2b7f377c23fea440ca9df0e30f3f8447cf"
>=20
> -S =3D "${WORKDIR}/git"
>=20
> INHIBIT_DEFAULT_DEPS =3D "1"
>=20
> diff --git a/recipes-devtools/pi-blaster/pi-blaster_git.bb b/recipes-devt=
ools/pi-blaster/pi-blaster_git.bb
> index d02fa92..644a4c7 100644
> --- a/recipes-devtools/pi-blaster/pi-blaster_git.bb
> +++ b/recipes-devtools/pi-blaster/pi-blaster_git.bb
> @@ -8,7 +8,6 @@ SRC_URI =3D "git://github.com/sarfata/pi-blaster;branch=
=3Dmaster;protocol=3Dhttps \
>            file://remove-initscript-lsb-dependency.patch \
>            "
>=20
> -S =3D "${WORKDIR}/git"
>=20
> SRCREV =3D "fbba9a7dcef0f352a11f8a2a5f6cbc15b62c0829"
>=20
> diff --git a/recipes-devtools/python/python3-adafruit-circuitpython-regis=
ter_1.9.10.bb b/recipes-devtools/python/python3-adafruit-circuitpython-regi=
ster_1.9.10.bb
> index 8ff3073..b009131 100644
> --- a/recipes-devtools/python/python3-adafruit-circuitpython-register_1.9=
.10.bb
> +++ b/recipes-devtools/python/python3-adafruit-circuitpython-register_1.9=
.10.bb
> @@ -5,7 +5,6 @@ LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D6ec69d6e9e6c85=
adfb7799d7f8cf044e"
>=20
> SRC_URI =3D "git://github.com/adafruit/Adafruit_CircuitPython_Register.gi=
t;branch=3Dmain;protocol=3Dhttps"
> SRCREV =3D "d1e8ac7ad9dcd65ab83749db3e5c96ffee80ebb7"
> -S =3D "${WORKDIR}/git"
>=20
> DEPENDS +=3D "python3-setuptools-scm-native"
>=20
> diff --git a/recipes-devtools/python/python3-adafruit-platformdetect_3.27=
.0.bb b/recipes-devtools/python/python3-adafruit-platformdetect_3.27.0.bb
> index 45dc49d..32eb491 100644
> --- a/recipes-devtools/python/python3-adafruit-platformdetect_3.27.0.bb
> +++ b/recipes-devtools/python/python3-adafruit-platformdetect_3.27.0.bb
> @@ -5,7 +5,6 @@ LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dfccd531dce4b98=
9c05173925f0bbb76c"
>=20
> SRC_URI =3D "git://github.com/adafruit/Adafruit_Python_PlatformDetect.git=
;branch=3Dmain;protocol=3Dhttps"
> SRCREV =3D "e1460098eeca5ea573f92814691bb378e15530d9"
> -S =3D "${WORKDIR}/git"
>=20
> inherit setuptools3
>=20
> diff --git a/recipes-devtools/python/python3-adafruit-pureio_1.1.9.bb b/r=
ecipes-devtools/python/python3-adafruit-pureio_1.1.9.bb
> index cdbe4b4..8f8d433 100644
> --- a/recipes-devtools/python/python3-adafruit-pureio_1.1.9.bb
> +++ b/recipes-devtools/python/python3-adafruit-pureio_1.1.9.bb
> @@ -6,7 +6,6 @@ LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D2a21fcca821a50=
6d4c36f7bbecc0d009"
> SRC_URI =3D "git://github.com/adafruit/Adafruit_Python_PureIO.git;branch=
=3Dmain;protocol=3Dhttps"
> SRCREV =3D "383b615ce9ff5bbefdf77652799f380016fda353"
>=20
> -S =3D "${WORKDIR}/git"
>=20
> inherit setuptools3
>=20
> diff --git a/recipes-devtools/python/python3-rtimu_7.2.1.bb b/recipes-dev=
tools/python/python3-rtimu_7.2.1.bb
> index 1afbb5f..3fb603b 100644
> --- a/recipes-devtools/python/python3-rtimu_7.2.1.bb
> +++ b/recipes-devtools/python/python3-rtimu_7.2.1.bb
> @@ -11,5 +11,5 @@ SRC_URI =3D "git://github.com/RPi-Distro/RTIMULib.git;p=
rotocol=3Dhttp;branch=3Dmaster;
>           "
> SRCREV =3D "b949681af69b45f0f7f4bb53b6770037b5b02178"
>=20
> -S =3D "${WORKDIR}/git/Linux/python"
> +S =3D "${UNPACKDIR}/git/Linux/python"
> inherit setuptools3
> diff --git a/recipes-devtools/python/rpio_0.10.1.bb b/recipes-devtools/py=
thon/rpio_0.10.1.bb
> index 176646d..8a7b8c1 100644
> --- a/recipes-devtools/python/rpio_0.10.1.bb
> +++ b/recipes-devtools/python/rpio_0.10.1.bb
> @@ -9,7 +9,6 @@ SRC_URI =3D "\
>     git://github.com/metachris/RPIO.git;protocol=3Dhttps;branch=3Dmaster =
\
>     "
> SRCREV =3D "be1942a69b2592ddacd9dc833d2668a19aafd8d2"
> -S =3D "${WORKDIR}/git"
>=20
> inherit setuptools3
>=20
> diff --git a/recipes-devtools/raspi-gpio/raspi-gpio_git.bb b/recipes-devt=
ools/raspi-gpio/raspi-gpio_git.bb
> index 8ea4be1..c9d4051 100644
> --- a/recipes-devtools/raspi-gpio/raspi-gpio_git.bb
> +++ b/recipes-devtools/raspi-gpio/raspi-gpio_git.bb
> @@ -12,5 +12,4 @@ SRCREV =3D "22b44e4765b4b78dc5b22394fff484e353d5914d"
> SRC_URI =3D "git://github.com/RPi-Distro/raspi-gpio.git;protocol=3Dhttps;=
branch=3Dmaster \
>           "
>=20
> -S =3D "${WORKDIR}/git"
>=20
> diff --git a/recipes-devtools/raspi-utils/raspi-utils_git.bb b/recipes-de=
vtools/raspi-utils/raspi-utils_git.bb
> index 77ff2c3..7c71eb1 100644
> --- a/recipes-devtools/raspi-utils/raspi-utils_git.bb
> +++ b/recipes-devtools/raspi-utils/raspi-utils_git.bb
> @@ -15,7 +15,6 @@ SRC_URI =3D "git://github.com/raspberrypi/utils;protoco=
l=3Dhttps;branch=3Dmaster"
>=20
> SRCREV =3D "b9c63214c535d7df2b0fa6743b7b3e508363c25a"
>=20
> -S =3D "${WORKDIR}/git"
>=20
> FILES:${PN}:append =3D " \
>     ${datadir}/bash-completion/completions/pinctrl \
> diff --git a/recipes-graphics/raspidmx/raspidmx_git.bb b/recipes-graphics=
/raspidmx/raspidmx_git.bb
> index 4729e8c..7c2e50c 100644
> --- a/recipes-graphics/raspidmx/raspidmx_git.bb
> +++ b/recipes-graphics/raspidmx/raspidmx_git.bb
> @@ -20,7 +20,6 @@ SRC_URI =3D "git://github.com/AndrewFromMelbourne/raspi=
dmx;protocol=3Dhttps;branch=3Dm
> PV =3D "0.0+git${SRCPV}"
> SRCREV =3D "e2ee6faa0d01a5ece06bcc74a47f37d7e6837310"
>=20
> -S =3D "${WORKDIR}/git"
>=20
> inherit pkgconfig
>=20
> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics=
/userland/userland_git.bb
> index bd50bf8..270a99b 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -51,7 +51,6 @@ SRC_URI =3D "\
>=20
> SRC_URI:remove:toolchain-clang =3D "file://0021-cmake-Disable-format-over=
flow-warning-as-error.patch"
>=20
> -S =3D "${WORKDIR}/git"
>=20
> inherit cmake pkgconfig
>=20
> diff --git a/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpidi=
stro_git.bb b/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpidis=
tro_git.bb
> index bd5ed62..b562fa6 100644
> --- a/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpidistro_gi=
t.bb
> +++ b/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpidistro_gi=
t.bb
> @@ -29,7 +29,6 @@ SRC_URI =3D " \
> SRCREV =3D "78d6a07730e2d20c035899521ab67726dc028e1c"
> PV =3D "1.2-9+rpt3"
>=20
> -S =3D "${WORKDIR}/git"
>=20
> inherit allarch
>=20
> diff --git a/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidi=
stro_git.bb b/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidis=
tro_git.bb
> index f22ec54..cfad4bd 100644
> --- a/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_gi=
t.bb
> +++ b/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_gi=
t.bb
> @@ -20,7 +20,6 @@ SRC_URI =3D "git://github.com/RPi-Distro/firmware-nonfr=
ee;branch=3Dbookworm;protocol
> "
> SRCREV =3D "4b356e134e8333d073bd3802d767a825adec3807"
> PV =3D "20230625-2+rpt3"
> -S =3D "${WORKDIR}/git"
>=20
> inherit allarch
>=20
> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-mult=
imedia/omxplayer/omxplayer_git.bb
> index b7eaf40..85a2610 100644
> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
> @@ -40,7 +40,6 @@ SRC_URI =3D "git://github.com/popcornmix/omxplayer.git;=
protocol=3Dhttps;branch=3Dmaste
>=20
> SRC_URI:append =3D "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics=
", " file://0001-Fix-build-with-vc4-driver.patch ", "", d)}"
>=20
> -S =3D "${WORKDIR}/git"
>=20
> COMPATIBLE_MACHINE =3D "^rpi$"
> COMPATIBLE_HOST:aarch64 =3D "null"
> diff --git a/recipes-multimedia/python3-picamera/python3-picamera_git.bb =
b/recipes-multimedia/python3-picamera/python3-picamera_git.bb
> index f14941b..4d0b18a 100644
> --- a/recipes-multimedia/python3-picamera/python3-picamera_git.bb
> +++ b/recipes-multimedia/python3-picamera/python3-picamera_git.bb
> @@ -14,7 +14,6 @@ RDEPENDS:${PN} =3D "python3-numbers   \
> SRC_URI =3D "git://git@github.com/waveform80/picamera.git;protocol=3Dssh;=
branch=3Dmaster"
> SRCREV =3D "7e4f1d379d698c44501fb84b886fadf3fc164b70"
>=20
> -S =3D "${WORKDIR}/git"
>=20
> inherit setuptools3
>=20
> diff --git a/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_5.1.4.b=
b b/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_5.1.4.bb
> index e8f640b..4a07f50 100644
> --- a/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_5.1.4.bb
> +++ b/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_5.1.4.bb
> @@ -50,7 +50,6 @@ SRC_URI =3D "\
>=20
> SRCREV =3D "1c363463c432c5ed492c7b759abb6e015b93b6b5"
>=20
> -S =3D "${WORKDIR}/git"
>=20
> # libraries to build in addition to avutil
> PACKAGECONFIG[avdevice] =3D "--enable-avdevice,--disable-avdevice"
> --=20
> 2.43.0
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65612): https://lists.yoctoproject.org/g/yocto/messag=
e/65612
> Mute This Topic: https://lists.yoctoproject.org/mt/114018237/6875888
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ross.burton@ar=
m.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


