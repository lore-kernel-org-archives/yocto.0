Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B690AC3ABB2
	for <webhook@archiver.kernel.org>; Mon, 16 Sep 2024 13:26:34 +0000 (UTC)
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (EUR03-VI1-obe.outbound.protection.outlook.com [40.107.103.43])
 by mx.groups.io with SMTP id smtpd.web10.8499.1726493190451394754
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Sep 2024 06:26:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=mIQxNSiE;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=mIQxNSiE;
 spf=pass (domain: arm.com, ip: 40.107.103.43, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=XVd4LKM8LKbdvsKNlQt5SeB4uT0XM55MTzOtWauQM8sNwJkZwc+KXWnLWhc4LTCHjtx4arDsvXfB3vQXYR6JjIQbizChzdhTV2fDMa+1B2DOFIVlsLtvmmtyE7kKZ96pMZBJvnlsC4C8k3OrDG2/jjswnJimphKybutaK2P9xYbd1bVZ/xXEnV5IceGhlR9GbzFi2igteX5jnTBh6MkYSjyMyFVrSNz0BKPN9QhQDypVj2dcLRgzJnCZpgTkzcz7WuGUleRNzibN8I3569L5KAfEo5OIQ0bp2ceuRyMUtPG1DvcdIyFkGEDnLFvQTO2Ks23zVB3fQEGq+0Xuggy76w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7kA1nI1JnEK0cJIrSI5jcIQ4PzI7I3m6fGzIHwQ1De4=;
 b=QmkBTc5mw2dYsS0slBQmIXGqeGDRd72zlwJldhGo85N4VYpP+2qzP062XLtC8/yBidXHpN/oJaMgGiNc6zwmTVP61rg27dIRHSI0tYQgNYWJCFsa3z/oZXK0FUODGKPzuw9zuvP03ICpFBpVsimnQdnUfaruooPFfRbSO7qtM3bbXFbspELA8CugcYUD6OMNcEOLk9KyBRC6N7U6FLQ6L4LE74TjNTtVO4EoaFj1F0Po8QXPtO9bjthSbE0xDHJj1b8br2u1b9f6uh5YqrvI7TbgfalB24flFNcg1GnsxJCanQSsfujiLUw99xLyJmVeu1HmM+s/olOF6LB9wavhOA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7kA1nI1JnEK0cJIrSI5jcIQ4PzI7I3m6fGzIHwQ1De4=;
 b=mIQxNSiEXh7IdUQ6XiiTZCdLIUDFU8VLvVe9a0uRMrls8aBgawuBvGz8vnpIDLOMJjZu+javUVcwP6oP0i7i5ng4yZOSTwlw5qeFpuerT/a6UJNYZWFhFgVxaKjVY/+r82I+5BNJBX2eVZ67VElnwmi+lUGgLN30I85TjKld8bQ=
Received: from DB8PR03CA0003.eurprd03.prod.outlook.com (2603:10a6:10:be::16)
 by DU4PR08MB11054.eurprd08.prod.outlook.com (2603:10a6:10:577::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.14; Mon, 16 Sep
 2024 13:26:25 +0000
Received: from DU2PEPF00028D08.eurprd03.prod.outlook.com
 (2603:10a6:10:be:cafe::46) by DB8PR03CA0003.outlook.office365.com
 (2603:10a6:10:be::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.30 via Frontend
 Transport; Mon, 16 Sep 2024 13:26:25 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU2PEPF00028D08.mail.protection.outlook.com (10.167.242.168) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7918.13
 via Frontend Transport; Mon, 16 Sep 2024 13:26:24 +0000
Received: ("Tessian outbound bb7d35defad3:v454"); Mon, 16 Sep 2024 13:26:24 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 2b3e952cbbf81f55
X-TessianGatewayMetadata: bl9Z2/fnkw8ZY18AyjMwp2/Aer8/jcmdVgQypHWsdu7DWw1TXzcGWoUZQWZ8ow54nQTHRSMUDknKFM5IcIHWanhmjwSfukRjJ3GaG0jFKxrP+8dTlwvsuQB73t12Vcs7Kk0XiPRbdpDV784YUw8iPU/vtdCjsAwN9fHhdFjiAO4=
X-CR-MTA-TID: 64aa7808
Received: from Lc9d29bf023ef.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 41926C4C-6E91-41CA-8168-8AD04237A072.1;
	Mon, 16 Sep 2024 13:26:17 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id Lc9d29bf023ef.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 16 Sep 2024 13:26:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nFOkrL7ConEs+KOWcB4bZaXZ/sizC143ZSYPwMvsz4higVBGkGV6PmvSkp/YYcKwwea+L3tbuHiO6ZFr/jeWWJaaxuvVOayrl9X4GNTuaPFGnMei5DGeNv7U+tmifdWvjPCnjnGHn69nwVGEvCN4xtaA0pJcxY98YJ6Tu9arOUyJKA8dTGwVxnNtQ+yEdPlKGb/dKhOHZ07Ivq34prXPirD+gYmWdrMWyCW2KYDSylC4XIz1uwO9M7ykhqT6glel6b0kRPnPOtYhFawsY/JOFWlKvv6xQK4p7FNmhcB7LtdOUl43UiW4MBMIXqgxLDg0yKwsivTKXqHf12Lp4C9SWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7kA1nI1JnEK0cJIrSI5jcIQ4PzI7I3m6fGzIHwQ1De4=;
 b=R9gcTw53dMBxj+POuo4sX5iM6rx3NgAHDETc0xUyfs7z5EMWTYXIrZT/tUQriHrlEES4p7giwTHFTmdQQEKwkxTVjTqnM5InC/+QwulCCAM0FRXdA9EHd8YrEWXCw8scO4eAFcxQnR9xOnVaBejDcS5xqVJrWxrFKwpk1tdZcLKMxqSGwHJ5Bz3cy9CQ0NsuCvu5hXqULbQoqXLaeC1ie48x2PW/TeQeCxTzdJhqzby9hUMAO49ApgtuSqXDu8sFLuFNrswCLIkQR+TtDw7kksDZyupXPqwJG7A7jM2IV3dLlD5OBFAOzAuAwzBBlO/VjRJqZQPLLWbCL/zttvdpcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7kA1nI1JnEK0cJIrSI5jcIQ4PzI7I3m6fGzIHwQ1De4=;
 b=mIQxNSiEXh7IdUQ6XiiTZCdLIUDFU8VLvVe9a0uRMrls8aBgawuBvGz8vnpIDLOMJjZu+javUVcwP6oP0i7i5ng4yZOSTwlw5qeFpuerT/a6UJNYZWFhFgVxaKjVY/+r82I+5BNJBX2eVZ67VElnwmi+lUGgLN30I85TjKld8bQ=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM9PR08MB6244.eurprd08.prod.outlook.com (2603:10a6:20b:2d4::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.15; Mon, 16 Sep
 2024 13:26:15 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%6]) with mapi id 15.20.7982.012; Mon, 16 Sep 2024
 13:26:15 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"jguittet.opensource@witekio.com" <jguittet.opensource@witekio.com>
Subject: Re: [yocto] systemd-container and tar dependency
Thread-Topic: [yocto] systemd-container and tar dependency
Thread-Index: AQHbCBGHaZCx17InlU+8/YM9xkPsALJaZ9IA
Date: Mon, 16 Sep 2024 13:26:15 +0000
Message-ID: <C648C40C-EE3A-4369-BAAB-5E4EF01238A6@arm.com>
References: <tWmZ.1726474923013896859.lt1W@lists.yoctoproject.org>
In-Reply-To: <tWmZ.1726474923013896859.lt1W@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3776.700.51)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM9PR08MB6244:EE_|DU2PEPF00028D08:EE_|DU4PR08MB11054:EE_
X-MS-Office365-Filtering-Correlation-Id: 0246f034-177c-4880-fbdf-08dcd6532967
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|366016|4022899009|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?GuWL0VCCkbnA1GokY4WSuV8HSIc/MISkQXiYxFu+19jwFaJO6g7k7PAExYwb?=
 =?us-ascii?Q?hdELkhds3Uua9C06W+m/LK9aCL9zLuWSlonibhWrznShv0Duusn6zSzgex81?=
 =?us-ascii?Q?IqCMH1olsZjGFIAzC90z9REhcZwAvrciICbWvf8CXtyCQ8VXn9oiBj431aw3?=
 =?us-ascii?Q?HsxWWjeosieMnQauY5AExAZwBiOHwvVd+KJ0c0i4IyEU9gVZ+lPJB567J3/r?=
 =?us-ascii?Q?zM0EIoxm+h5n5U1Jw7vleO9tLD54SBalWbBIMhkIG4FG6u/0TXoRK/VeLd8S?=
 =?us-ascii?Q?cqUbga1GyGA2bjg5RnUzxxezw4MxzVdtvI39BZR/a07UDqjnwa0jQ+x88Gnl?=
 =?us-ascii?Q?T0F0RkLqbpfbmsuOHPftSdCeQxg3VPmqipxHSq9itmYnlbBudzxNot7iAxSS?=
 =?us-ascii?Q?HS7UteOQW2WbyS0A5lInRSN9YAq/RQ98g8A6bqOSkjEM6Kkt9KfhJxOXs0hZ?=
 =?us-ascii?Q?SAALGdob5hOyzP3Q4hv0qp0M4EJlmj+bKtjXEx/bL7cncdsypbS5Ew/WSjtF?=
 =?us-ascii?Q?bRqTQwVy3QpI46xkdqSY0E0f0Tp6+jQbVBKjnPwYY6RMlkHxWaqYDdgytPrA?=
 =?us-ascii?Q?usZq8PMlOKQUsxtW0+aKelkFMusj5Prjb6vIRLfyQEa51IQU9DRDCKf6bkPx?=
 =?us-ascii?Q?+QVBYITEBMC+VgWiVP5bDhRbKcITeomm8vTEbCMwzy7DcHZZ9pznOKlxaJKL?=
 =?us-ascii?Q?NTceBZlxjT2lqWzv28gJ9HnVwXleiiaxjh4vtn432kVM7A7GG4klomYpVx2Y?=
 =?us-ascii?Q?MKtuW+TYLzbr928n1p2iUvIeVeHZmtVHNou29PP9GgkIrQtNA3HDv324hn7S?=
 =?us-ascii?Q?5l1a2DQ2ML1eyq+yk/hHrjHN0I4d+wmxq8Qsvy3VUXLvQF5v/jkIGWD6FNX6?=
 =?us-ascii?Q?vuoRq/wh5JowmfPbkl0gMVGTFiG7mmlGqFN4t+elgV6HghZ0gbjmG6xUOfHi?=
 =?us-ascii?Q?YXDHeNO7IvUEQ1k6rNHS8udQBIK2I78ca/5oRVs3ZjXsVB4S90HBziF9NVPY?=
 =?us-ascii?Q?GTbX/PHOzszZkrue7JyfUmLdtBzP9R/uxjwAMdSRTglg6JtKTt/nT5Yg+AMc?=
 =?us-ascii?Q?7sqRP/4zrgW/lWjNla5f4gRCL1uyGmr8Aehp7xJKbVsHkRwLBAJpDbNcxbAL?=
 =?us-ascii?Q?lx+0Xae6dX+Me17fDepwyNGG1wFwptKhd8MPWdQW1kKw0eXS8ePNxYAkwyoF?=
 =?us-ascii?Q?1vqEFgkoPCgWZjfVO9g7nKSieOQYuNx//awT8pQE5Xc7V5gnFKrVs6DYA95L?=
 =?us-ascii?Q?aX9zhZ6g6sajlZDS++F3tdyS3NPiCmF68uZOkZKrGljZLJpPc6HZp/MM7D05?=
 =?us-ascii?Q?HjPmcUoB6bmNssF8TjCevLEjE0MR77y+JpOZn4LlQWmrXuAMP3ZP4PnlMHYe?=
 =?us-ascii?Q?X3xXSJ4=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(4022899009)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <2943EBAB429D784BA6C4FDB9D55E56DE@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB6244
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF00028D08.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	92c5ec60-220e-400f-bd50-08dcd65323c9
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|36860700013|35042699022|376014|4022899009|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?/CkqwD3tww+zBFkWTE1+MQ0vMAVmDXpEU2wWVWyQJFuXGxYCzyCaNg3HWGAx?=
 =?us-ascii?Q?Ep7sTecb/6/c8jqLAVmFr48bhitE/4C+jx+w8PShGjaSxw/m6kVVlgalECSn?=
 =?us-ascii?Q?1nhOHid6fVOBOy4zNtFDqI8ahafNMHT4vhHH4ir6y5MFg5w3pyqlBSo9sdCY?=
 =?us-ascii?Q?zS/HCXQqYBsvNjZldRA1ybgTFL9NrbSJyerYb6sVEAZ3VfGE0SK3BfeKmhKB?=
 =?us-ascii?Q?XMsp50/iIbyehQYBHd1+HxPvYJQsskNTJ2ywfOJDEM3rpOBmSSRelkVb7kX8?=
 =?us-ascii?Q?V6SvGbYbmv5QZshCb0O6r8sSkzBVSDq8bnsVpCNWLRMBgxmAsP98LcN5KPUU?=
 =?us-ascii?Q?KXoBOmc4bRYmVJT/Zu/ib8Z2fmDVJCo28ust6E2+Uxviw95K+Q1nMibUgexC?=
 =?us-ascii?Q?jQMt9gUz+5Hu54BMikny0CDE5Ikccvaou+EnpvkUNTg89kcV20ag8EHNy9ID?=
 =?us-ascii?Q?IvJRkMY+3pwIR5P3BBoNHpsQlR08KN12r3UWywpY8Z63Xtwo52aFPSQ8xsNW?=
 =?us-ascii?Q?aekpvwRv5NtJtB2RK0HeYUx/RP/3o+8epKZoXWZjzuQUsmQGYhgTbi9Y+pbv?=
 =?us-ascii?Q?YYLZPdiu7t1i3/AX4egAoEIyGExGAlQNOLqVVF49GL7d4XCPfcmbHmMONWrh?=
 =?us-ascii?Q?5kVzHsvRxiStuiuoMxLx+R0rth6HmIb4I6xZsd7rZtj82HjFEMGNqI5/Fd/r?=
 =?us-ascii?Q?RXbvzezGtztO9ry/zF4xfY/z6vx+jFyDmwgDOS8/SB4oveTlwEnFkY5NDcaJ?=
 =?us-ascii?Q?GOgYneF7kSFWyTi9r4BNiEk28qPHl+dnk1JkRJxhGD28mLTMgCt/pMco5GoX?=
 =?us-ascii?Q?VRk1pSBRhOG+pdQhriQ09OGjH1HHp0/95UGwirv27ppH0yQh3q7XrZzPmsFW?=
 =?us-ascii?Q?pqpPS4kRtKjlVDxyp7fox2H4QtI3f2XDQtCclOG83VF9vkmHpymfYVM3F5me?=
 =?us-ascii?Q?eCRdjwGt3bshv43PMfv2JqxHcR1ibuKtoPE/7y8AclwpOvJVd5GiR8IZyEvl?=
 =?us-ascii?Q?cPFbxfygWzgqg0hIykjcLCbsgNG7sIVaq42zjdBUcmG1V2sWjlugzAOuDdbz?=
 =?us-ascii?Q?lu9eYyC5ab3zy1ZXMtk+1TMVpBUu2StR82r9r5mk9LtbEzf8TrleVGag/+vY?=
 =?us-ascii?Q?GFbLFZJXIXQSfNMdf5dorXxNSEfJFsdjLY0QVaXB6+TvRSVzaF5HzfxfyEYU?=
 =?us-ascii?Q?4Peoltv5fdAgydnRsVDRHbunFwoCHblJBOwh1uITbJ18jRCYxjQlqyi+3OHG?=
 =?us-ascii?Q?kyCJoVITbhbiQTTehSIPSS8dSqXmtSf0degpm2UcLZ4vh+gN6xEFZpdXPiRl?=
 =?us-ascii?Q?2yLdvzvztpOGgdNJw0rQXHAEcN2skI3PAaNX66wzv2Bhnj7AGLJekxZ5EvyI?=
 =?us-ascii?Q?PtQjVNuq0JpWf+9QN85jiUehtAitWnJoQBtQqN9PIVHdMYPOow=3D=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(35042699022)(376014)(4022899009)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2024 13:26:24.4765
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0246f034-177c-4880-fbdf-08dcd6532967
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF00028D08.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR08MB11054
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Sep 2024 13:26:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63841

Sounds good, can you send a patch?

Ross

> On 16 Sep 2024, at 10:22, Joel GUITTET via lists.yoctoproject.org <jguitt=
et.opensource=3Dwitekio.com@lists.yoctoproject.org> wrote:
>=20
> Hello
>   The systemd recipe indicates systemd-container has a dependency to "tar=
" due to machinectl import-tar command using "--numeric-owner" option of ta=
r.
> See https://git.openembedded.org/openembedded-core/tree/meta/recipes-core=
/systemd/systemd_256.5.bb?h=3Dmaster#n576
>   However, busybox added --numeric-owner option to tar since a long time =
now, see https://git.busybox.net/busybox/commit/archival/tar.c?h=3D1_36_sta=
ble&id=3D8b814b4a349e2262c0ad25793b05206a14651ebb and https://git.busybox.n=
et/busybox/commit/archival/tar.c?h=3D1_36_stable&id=3Dd57d62686dac254e83fbc=
18f851c773ec16013d8
>   So why not removing this tar dependency that is RRECOMMENDS by the syst=
emd recipe ? So that we can use the busybox version instead.
>   Thanks for any feedback on the reason for this!
>   Joel
>   PS: the positive impact is: the latest GPLv2 tar version is v1.17, whic=
h has several CVEs actually so I would like to avoid integrating tar, and u=
se busybox alternative instead. I don't use the import-tar command of machi=
enctl, so no risk for me, but it seems it's possible to improve in Yocto mo=
re generally.
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63839): https://lists.yoctoproject.org/g/yocto/messag=
e/63839
> Mute This Topic: https://lists.yoctoproject.org/mt/108477277/6875888
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ross.burton@ar=
m.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


