Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15E3EC83F03
	for <webhook@archiver.kernel.org>; Thu,  3 Jul 2025 18:47:48 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.97])
 by mx.groups.io with SMTP id smtpd.web10.30596.1751568465322856854
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Jul 2025 11:47:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=UHRs4gvt;
 spf=pass (domain: topic.nl, ip: 52.101.70.97, mailfrom: mike.looijmans@topic.nl)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dYCebpnfoyxM9PtZayx7ObmiXph61U0dBw/y/5Cidm33uN+HuUHGU/mt5EHL4ZSylC99iuIOhw1LC5Fg6IGzd96hj9RiDMMxMmovigUBeEsrnZyqN0t5J3zoe3ExcBJ0YvmLSYdFvz8KXTc/grbD5GbHVFvDxRvM3zxdkCGTb6WRTCMxbB4ls/1rgEhXkA4WzHvSE7oBb4tfAv3Nme1m7F8ukSzvjLt+4L0WDcqdxqry8y2ndNJwYnHNAtkS9dZHSDt9RM814Da7BP+HnYmDzTX3sJ/Z/acfdX3+4+WzaYg91xuUlGlHIF6U73iqr8Xd3pP4CiQ4uESEKglOJ0yRzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=77rdP22qDBUsuys36w4Cw3ndy+i8yStIQUUiQCLBgsE=;
 b=WScVx1ZsWcgOhpiggjQ7K5ufdsWFuGa1zjmwSIj5w00acNDmkPg/VvqFCoMZC1k5IONzEtlEd6om582UMNsO+cER6TkgedsmYU3W2zhQ/vdvdlAYP4/zVgUSoXGnkCXvnDEvONbCXjnF0vlkQRiby9/I8mxa4rSShv5U1OKJGLiHrt5JdX19LPgZbCKhDdPhO5FbKHyup2eKM3g3oZSGJqI8CbbIUziv+aZbh3vhcV/PyeEUSFBGHgGGo/756MkcCwdReES9oP4jlZBYOFTffSWUMA0vrJg/Gig9fP94YQW+2FWTk68S+CkhzlcS/OU/rKz5bDR6Efjo3zXjGP8T6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 13.93.42.39) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=topic.nl;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=topic.nl; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=77rdP22qDBUsuys36w4Cw3ndy+i8yStIQUUiQCLBgsE=;
 b=UHRs4gvtCUyO8DKftXoNgMYch1ExB6yeMmprqDDJydtfyl5B/jObPUw87+Jn4y5fGp7pGEo6avLHTtyp7/3tYUOTXFjzYXCfkFmRauz4325dIyZUGeZSpSLYcAotE2BGc/fcm1qOrkJfIBUm/7uQSvBFrYA2YviBWk3JSAOW16c6sOvr/DPOw4Cs0pWOeXaL0s1YB/J2nUQav83FRct4KrOscXv0bP9FeFanMR7WLFbyIdZyLGTzqsdTN5IIm/WZzuz3+PuxzdtBjGOaAdQ568hQPQsx3L2ceBj/ESVp6CkIkgoaSSkivZ3UrqStta+yussUhJoi8FjYDmX9Mqbweg==
Received: from DU2PR04CA0251.eurprd04.prod.outlook.com (2603:10a6:10:28e::16)
 by PAXPR04MB8718.eurprd04.prod.outlook.com (2603:10a6:102:21d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.20; Thu, 3 Jul
 2025 18:47:40 +0000
Received: from DU6PEPF0000B620.eurprd02.prod.outlook.com
 (2603:10a6:10:28e:cafe::96) by DU2PR04CA0251.outlook.office365.com
 (2603:10a6:10:28e::16) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8901.21 via Frontend Transport; Thu,
 3 Jul 2025 18:47:40 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.93.42.39)
 smtp.mailfrom=topic.nl; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topic.nl designates
 13.93.42.39 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.93.42.39; helo=westeu12-emailsignatures-cloud.codetwo.com; pr=C
Received: from westeu12-emailsignatures-cloud.codetwo.com (13.93.42.39) by
 DU6PEPF0000B620.mail.protection.outlook.com (10.167.8.136) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8901.15 via Frontend Transport; Thu, 3 Jul 2025 18:47:39 +0000
Received: from AS8PR03CU001.outbound.protection.outlook.com (40.93.65.67) by westeu12-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Thu, 03 Jul 2025 18:47:39 +0000
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by PAWPR04MB10053.eurprd04.prod.outlook.com (2603:10a6:102:387::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.21; Thu, 3 Jul
 2025 18:47:37 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%7]) with mapi id 15.20.8901.018; Thu, 3 Jul 2025
 18:47:36 +0000
Message-ID: <82bb14fa-7695-4722-9799-ecbb6f42ed3b@topic.nl>
Date: Thu, 3 Jul 2025 20:47:36 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Controlling host CPU utilization (avoiding building on
 e-cores)
To: yocto@lists.yoctoproject.org, akarnil@witekio.com,
 Alexander Kanavin <alex.kanavin@gmail.com>
References: <CANNYZj9V4K0PjCr_oOdefLTb8jHE40oKY7Ha8FyQf3mhYa7fPQ@mail.gmail.com>
 <6459.1751547902126095751@lists.yoctoproject.org>
Content-Language: en-US, nl
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: Topic
In-Reply-To: <6459.1751547902126095751@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AS4P195CA0032.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:65a::6) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 
	AM8PR04MB7779:EE_|PAWPR04MB10053:EE_|DU6PEPF0000B620:EE_|PAXPR04MB8718:EE_
X-MS-Office365-Filtering-Correlation-Id: f4a4ed72-7c50-431e-3075-08ddba621650
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|376014|366016|52116014|38350700014;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?TWc4eU5aNUk1MzBLMFJJb1d6NmVocGdjemFsRWNPWkgvaWdGcStCQ1FWbURF?=
 =?utf-8?B?YzZseW1vZGQrOWVqaDZaMEh6ekZqMWJaak5CT0tCcXc2UElqU01LOS94RWEy?=
 =?utf-8?B?UEhTSlZGVWE5NGx0SjJaOW9jdmtmR3hNRUwzeHlsVWRQSjlCeC9GQnVuSmNV?=
 =?utf-8?B?QllrRDNOTXRCRlhsZVo5MzlneXg2a09WbWkyYVVaZUprYnZUSnl0OUhzZ0JE?=
 =?utf-8?B?d2MrQ205NjlRaWQ1QStYVDVWOXVWSDFnRTcxRGllRHhwNUV2a3lTcHpTeFRX?=
 =?utf-8?B?ell4ano5TzByRFBySExKaEpXTm5wZUFDbEpwMHNycGN1bloyd2E1Z1Arc3dh?=
 =?utf-8?B?bzdPRU1Xc1ozejVTaVdSQk1DN01WSkRRaEF6bmpKV3ZpQS96aFFyd3l0VU5v?=
 =?utf-8?B?REd5dWFkRkNsTTNmU0ZMMGErVnpJOURUSnRzMk1udEhHUW45eEdCYnJlT3Fr?=
 =?utf-8?B?MmJoRDNudTVBQWNEdW53cVB4cXdzQktzVFRydFRhS0ZyZVhrWkkrMXZnVzRz?=
 =?utf-8?B?cnVnS3pwVmwxL2ErUVF2Y29CdzljdVFYbjlUamF0SHBxczNlS1RkUkM3Q0Mx?=
 =?utf-8?B?OGo3UmxmSmt1MjduNERnU0l6bUJkWDdlQVo2bEc3ZHNrL2Z3SllwSExxby9y?=
 =?utf-8?B?SmZ6aFFXTGcvdTlHS0V0ZzlLOXkzeEFVSnh5WHdjMk1tVXRNc1dwejJTYklB?=
 =?utf-8?B?Vk9tZG1FRVZkSmF3eHI5TCtzV0owSTlrNjk4NDlmMlBZNFNSL2xtdXB3TTN1?=
 =?utf-8?B?T0d1Vy9FUkpoRkxNU0x2VjlKUmxGYnJ3SUhwdG9JTVliRzBubHE2QzdoU00z?=
 =?utf-8?B?bjNPME9GWktxdXZKUUo3T3JldCtadjl3Y2NGTWp4NXBjcTRqRFBrcU1SZVdX?=
 =?utf-8?B?WjJtVEVsSTB4SFFkNjRCVVJWdEZTOWQ4ZmNMamdVcDFsQ2lobkcxMUs3M0Q1?=
 =?utf-8?B?TFdTblFPUFdXbzR4TmoyMUJId0h5NDdkMHJPNDZ4dzVMc2N3T1NLT00vbHZa?=
 =?utf-8?B?OUJoNjQzZDJTQk15UnJtUnFrSEhsRnpVS1A3WEowNDJzeUNiSllobVA0ZWR3?=
 =?utf-8?B?ZDlJdCt0MnFuVUpmZWs4SDUvMjIvYmY3TTc2TXdsekVoUXQraWdYNGxWcGlX?=
 =?utf-8?B?d2k5VGhoRk9IalpYNnFrSFgzMXlDbldLN2VFSGQvVytEMVFrUmZjVDhPRFlF?=
 =?utf-8?B?citsQit1dnN4R1JOOVRicm9jRGFsNWIwcWpjVGMwSzR5NEZTWkNoOXpZUjBG?=
 =?utf-8?B?LzQ4Vk1hWU1Vc05yZkRvR0xUL1Z2R2srME1VejVSVTR4bkRCcFlPTi9HYThx?=
 =?utf-8?B?b2YrdFVuTzgveitCL0VRbWNDMytnQnRldVZ2WHhNSENidWZ2NThGT3lTNUV4?=
 =?utf-8?B?Q0xKR05EZGlRWm1RL1FQUkFNalFDMHdCaGhQWkNHV0MybHovd3gwOFowVGdT?=
 =?utf-8?B?MlRMZStWN3VjbE1WRmpkeDlLR0dlRHJqMm9ZMGQ5V2ZBYUoyNC9hYzdtbGhG?=
 =?utf-8?B?QXNuL3JHck92MHA5MklaNnBld1UvL3BsRVkrN2FwUXlhcUs2aG5rQlkrSjhh?=
 =?utf-8?B?a1ZabEZNWm8wa2hJMk5OeVBoUmp4QkM4VFYvanRUNGFnRS9KNi9sWHVrbXJX?=
 =?utf-8?B?V3RKRDNnTTVoeUJmeE9ndEVYUE44Y2hVUy9ZZlRxNnI4bXZHRTAyeWsycnJJ?=
 =?utf-8?B?SXo0NmxGUWxlZmRQQThsT0ZFZzdoUlZNUXdLbjIwMXUwUWdVRXJrMUNmcXF2?=
 =?utf-8?B?dzh5WmNtSXZQUm0xQjBRN3l2Y2FySUt6V1dKMWx6NHNJTWZPRzJ4aWZBV1Rk?=
 =?utf-8?B?T2tnNDczWGhidlJsZTRkL2pXKzl0WGlZb1d5RFhoT0ZMYXo3Ti9WbmoxcWxQ?=
 =?utf-8?B?YlhGQUFpU2hLOHVhSVRRK3duSkVDc3hyaEFWZGNOL2hjZjArR0lmdGZuWS82?=
 =?utf-8?Q?0rOz6F5vUh0=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(52116014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR04MB10053
X-CodeTwo-MessageID: 3f8ecbdd-b59a-4751-b3f2-72a8a55143ef.20250703184739@westeu12-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF0000B620.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	f0464400-7620-4334-227f-08ddba621439
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|376014|14060799003|36860700013|82310400026|35042699022|13003099007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?L0hPN1RSK01SRmZWVHhFWWZmV3M5TU94NmI4c0owRFNGdmg1QUhGOVJDM3VU?=
 =?utf-8?B?ZmxTZ2kxZnF6S1RLK0pwQ2ZXT21sOWRxMnhGRmltT0x6anVPWjJxUHJnMGp4?=
 =?utf-8?B?U0VmSzZCaGxqdGhrWVB0U0RlSHZPc05pbGVwQmo2dmI4UDBaNUtWbXl6UnJQ?=
 =?utf-8?B?V05WZWFBZDZDbkkvTWtOeUZEMHVLWmRkMmxTNHlJWm56NG9reDRnYWN2L2Zp?=
 =?utf-8?B?TlhTMitsRCsrdzM1VU1TRkFLLytxZk91dlJwS01jbHlHbW1kbkdyYVg3bTlu?=
 =?utf-8?B?TVFVcUExRGxtZkpxMThzeXlyZHVEc0lRZDZBdUJ4NlFjdGhMT0NnRGhpU3Bo?=
 =?utf-8?B?eE5BT0pRZFdZdVhQVzNqTm1RbEJYbUY2T2I3eHN4Yk41ZXVGcHRRdFZ4ejVp?=
 =?utf-8?B?MWxhbmNRSjZ6TytscGlWRWhBNjQ3bHY5ZlVGZ3k3MEdqallvUkdZa1JYSlFn?=
 =?utf-8?B?VHZIVWVqMDI1N0J0ZHJTTUs3cmZzakZQbHNFdUJFNk85T1p5VlQxdVpDakZR?=
 =?utf-8?B?VkZuSFFvd21WZFhxNURrY3l3N0hhaVVnMmMxbC9LeWJqVVI0K0hnWlJMemll?=
 =?utf-8?B?TEdWOVBNSW9JcVZwUEU2QmYyeXdPQTdqR29rOEJ4YW94NDBiMkJURmZUcnln?=
 =?utf-8?B?azA1enBiWEJnZFdPYWEwMlJJTjNyL0xOQVFEZFNrZkpnUFg1a1pYZjVNUk5i?=
 =?utf-8?B?RFhMK0M5OWZPOTlMUmIyaE9Ea05xaGtYbm9jNzgvSFZ3cXMzWUNFMEZiNkNu?=
 =?utf-8?B?M0pYeG5UeXQrSXVsSzNEMzRYL2xPUmhqSEl2TVp2U1g2a0Njd01HcXg2L1VD?=
 =?utf-8?B?bEVLUmlOZnp3WDVoRHV3Nkd6dXRadlNVOTM4d2czZHB5czFQQ0tpUExmY2pH?=
 =?utf-8?B?NjM5ZDdoRHcrVXkwWXlQQ1A0dThpL3VZMElpT2JaZzA5U0V6N0h1TlBKU1R0?=
 =?utf-8?B?UkdrS0h6WHJHeWhBRk5mbjh5Yy9zS2poK09VRlB2dGtKY3k5QzFwbnhzWmdh?=
 =?utf-8?B?ckZYQ2laRHVFa0F6TWFvNGlVcDBOZHFxOXJ4eXhIQWZ2U01UMk5qWkpRRVZ1?=
 =?utf-8?B?VDNUcVBUUnJ0MkVaRVNzdkRRNTVhU2xab2hRYmFnbkdNR3JpODF1dWJuMFcw?=
 =?utf-8?B?dUFLRUlZRXY0emgvRTI4czZLY1E0SWErVGhmVFNLb3h6MTYzTHp5NENtc2NX?=
 =?utf-8?B?aERVLzQ4V3JKUU1vbTI3dGlFeU1DZnl6ZUpDYmdYcHV3UExVN2lPUGxMWkhB?=
 =?utf-8?B?cDlnNnRWOEFva3ZqeW85SnZDTU1BV2hST0xnQUhuamlvaWlYMU9YT2lWUFU4?=
 =?utf-8?B?bXdNcEFoQ0hMMjRtYnBEUzhEcENVOHhZdVp4aVFvc2RnaFE1NTgxeFBacTJu?=
 =?utf-8?B?b2JhcExCbW0xY1ZkNFVKN1ZCRzJJSnZqejlGV0lxWG1Ba2dKN3VLRk5CM2Fs?=
 =?utf-8?B?U1hDcSsyaG9kYWJCRkwrMjhvblhKS3ZCNDdieHN2TVp4Ym12YmxJcTJHbjVj?=
 =?utf-8?B?Zko3TDdoSVhXMHR3RUtsY1JydVR6Vk9saEpaWWFEekVwWXBlYzlzdkkveWlN?=
 =?utf-8?B?RFprMXp3REdqeE9kQzhWd21hNVd1dERDK2NRZ2JPekJQWEY5YVZ2R1ZjOTNE?=
 =?utf-8?B?YThlLytNSlNnUzNHWTNIMnEyc0pxQXc3bGxXOHJOK1RlQlVXWHlMVE44eUsz?=
 =?utf-8?B?OWtPaURmNGEvMmdoRFVaVDFKOXZpdUptOXN6a3BGdGVpOGh1WTNzUDJyd2tu?=
 =?utf-8?B?RTNwSnQ4c25LM3FObkZHL29DTEEydENrUlY0c1ZKQmVvelErRmd5bWFrSFI3?=
 =?utf-8?B?ZXRDbUExYXJHaFp5Q1FMc2srNlliVStYVEtPcVZDangrSFNXWldNMCtZQWJJ?=
 =?utf-8?B?Q2tmTjQrV3lyY0RJQWdVOGNzM1VOd0dyT3lnZHZ1NWFmdTIvdERhclhGSXBF?=
 =?utf-8?B?S2VRbHFUbWVNRWw1eFplZUJnaENCQmhVMU9vQlg2aDVEYmpvQzhEaWVXZEtC?=
 =?utf-8?B?M1QvS1VXeFJ3PT0=?=
X-Forefront-Antispam-Report: 
	CIP:13.93.42.39;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu12-emailsignatures-cloud.codetwo.com;PTR:westeu12-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230040)(1800799024)(376014)(14060799003)(36860700013)(82310400026)(35042699022)(13003099007);DIR:OUT;SFP:1102;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 18:47:39.9692
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f4a4ed72-7c50-431e-3075-08ddba621650
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.93.42.39];Helo=[westeu12-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF0000B620.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8718
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Jul 2025 18:47:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65607

On 03-07-2025 15:05, Alen Karnil via lists.yoctoproject.org wrote:
> AI hallucination or not, it did work though, my CPU core usage was=20
> only on 0-11, there were doing idle not bitbake related tasks
> taskset -c 0-11 bitbake welma-image-minimal

I suspect that is because of standard POSIX behavior. Child processes=20
inherit CPU affinity.

Adding some mysterious "TASKSET" environment doesn't have any effect=20
whatsoever, the AI is just making stuff up.


--=20
Mike Looijmans
System Expert

TOPIC Embedded Products B.V.
Materiaalweg 4, 5681 RJ Best
The Netherlands

T: +31 (0) 499 33 69 69
E: mike.looijmans@topic.nl
W: www.topic.nl




