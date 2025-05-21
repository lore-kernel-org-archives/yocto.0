Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F124BC2D0CD
	for <webhook@archiver.kernel.org>; Wed, 21 May 2025 07:46:04 +0000 (UTC)
Received: from OSPPR02CU001.outbound.protection.outlook.com (OSPPR02CU001.outbound.protection.outlook.com [40.107.159.111])
 by mx.groups.io with SMTP id smtpd.web11.5707.1747813560774373645
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 May 2025 00:46:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=ezY6/+n1;
 spf=pass (domain: topic.nl, ip: 40.107.159.111, mailfrom: mike.looijmans@topic.nl)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ITZYHxi7lP1GZTPbG7xouB/v5BAo+RZQ0N9fq9XJSQQ+QtjNC5GbxwWlol360tiYnoiqg6WKOc5XIEatN3VTTnVE85hP7CYCI7OkCQuhfi4WEXRXUKuexKDIiUNJCMNqTtFMqj7vPpeIapKUqpsieoN9eKFfMRQpGOVKtevnHpinCu8kwJCGVoZYCXE915zKE2/8LHQi1nvrhq7ccTUhNEYftB2Uz3r0Oyr/ipM/FwKAIlNoLi+8NtMF4UtGiGbhLTk/kEOVhoucemBfbcf789TZqkKCG1HZxFAkTPJXmsXlasZjrAX5tt2qoz9rCixDEkyl5ZB1J033RmCL69IuZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=luaAVnN6qy6u82NGZUdNyxP5291bi090KrbGhQRiMt8=;
 b=TG+mqjzp0Ni6d24mJJuB0iUbvpJKSlSPRur0gqg5Ut+e9R2FhVZsceODjcGP7XX0yL9hLRN8/cAUkR2gKX9rWwGOjYgBHxYD1Dh4H/epiHsRMHsl0e+CdKuYSCN/O0LmE0ZNMakWDOqRm4+EvBVH4y+M2K6zzsadGZawTSHMt1DIXXU+KFBJny+3B/30N5jzWGBlmQ6ZNuCPop3kNcRcNgYU9VzVEeMMb4NFcn/culKpSHLQY0/Y7Pe6KixJxQjhEHHyEpVlPsjcyF4WSiTvt6FfbNsNe+e7evvSDQrV8xibks6FZ/PHWXA3FF5yDWsos/aJxflq9aS0iRMQgMND1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 13.93.42.39) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=topic.nl;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=topic.nl; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=luaAVnN6qy6u82NGZUdNyxP5291bi090KrbGhQRiMt8=;
 b=ezY6/+n1SQ5M5O9+7A6AzXtGVYDwbe1C9ZDpQNMxxyJM6yIF6AA2CXU25LIZfx/gxPdUouvJ3wfN5l2SovJN6PxnbQrrcTt5Nz5bLu1fVBLA5EKVQmHUCNJgTqFxdicnr4HQdvDFlFMB8NSmfoKsSC7QOnsc06ZVPSY6O59ZLr+HgD32xUohovJc3cm6uPrgegWL+qjyXIR2yrRrRg9dAfXyG5Et7xHOZBYM617pYfFF3URiRfOt6hlEV7MKaIL6bbb68B6bpMJ17RS1iictClBtxnIm4ZpDClxajr+kfBG5EYU3zJ64rIjPRfprLGemB+umnoAeEVa6/0D/OkuEEQ==
Received: from DUZPR01CA0070.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c2::9) by AM9PR04MB8195.eurprd04.prod.outlook.com
 (2603:10a6:20b:3b7::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.31; Wed, 21 May
 2025 07:45:51 +0000
Received: from DU2PEPF00028D0D.eurprd03.prod.outlook.com
 (2603:10a6:10:3c2:cafe::d9) by DUZPR01CA0070.outlook.office365.com
 (2603:10a6:10:3c2::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8769.19 via Frontend Transport; Wed,
 21 May 2025 07:46:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.93.42.39)
 smtp.mailfrom=topic.nl; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topic.nl designates
 13.93.42.39 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.93.42.39; helo=westeu12-emailsignatures-cloud.codetwo.com; pr=C
Received: from westeu12-emailsignatures-cloud.codetwo.com (13.93.42.39) by
 DU2PEPF00028D0D.mail.protection.outlook.com (10.167.242.21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8769.18 via Frontend Transport; Wed, 21 May 2025 07:45:50 +0000
Content-Type: multipart/alternative;
	boundary="------------cAu0EWDWP2B8R0rJu4urYPTz"
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (104.47.17.169) by westeu12-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Wed, 21 May 2025 07:45:49 +0000
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com (2603:10a6:20b:42b::12)
 by DU2PR04MB8807.eurprd04.prod.outlook.com (2603:10a6:10:2e2::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.31; Wed, 21 May
 2025 07:45:41 +0000
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::e86d:f110:534e:480a]) by AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::e86d:f110:534e:480a%3]) with mapi id 15.20.8746.030; Wed, 21 May 2025
 07:45:41 +0000
Message-ID: <f6227f29-f64f-4ff4-b728-ea7152544eef@topic.nl>
Date: Wed, 21 May 2025 09:45:40 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Only build the packages that needs rebuilding
To: yocto@lists.yoctoproject.org, mohammad.rasim96@gmail.com,
 Alexander Kanavin <alex.kanavin@gmail.com>
References: 
 <CACq04CGjYASSJR6ie3FFGs-BgJLZipzrX8ozBmzrBSrAb+ODyA@mail.gmail.com>
 <CANNYZj_B9XVH1xwUY=4fn7c8B961rVgSqsZGhp-MNixZZUGOxQ@mail.gmail.com>
 <CACq04CH1gLdyeFdGmf6btfVYeXky6Ygi7bpUNvJyVdmR9XaLHQ@mail.gmail.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.fa55e665-ab88-4573-a71e-08cf3d4a7eba@emailsignatures365.codetwo.com>
Content-Language: nl, en-US
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
In-Reply-To: <CACq04CH1gLdyeFdGmf6btfVYeXky6Ygi7bpUNvJyVdmR9XaLHQ@mail.gmail.com>
X-ClientProxiedBy: AS4PR09CA0021.eurprd09.prod.outlook.com
 (2603:10a6:20b:5d4::19) To AS8PR04MB8644.eurprd04.prod.outlook.com
 (2603:10a6:20b:42b::12)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 
	AS8PR04MB8644:EE_|DU2PR04MB8807:EE_|DU2PEPF00028D0D:EE_|AM9PR04MB8195:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e5e9208-11a5-4e1b-23b1-08dd983b81f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|1800799024|376014|13003099007|8096899003;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?mpfjwwfEzFR7kXUiDRXzFjYvjjgQscU4qKacmEUqOXvua9brOP27B+7txRQ8?=
 =?us-ascii?Q?ZfvbN9cWgiYTxrC1GY2WRyL5utk5Ixt+OtGh9gZWgyOmkw+PH2grlRD/2rL3?=
 =?us-ascii?Q?o4Nw6oVzvR8YBbrcapmPyorIK8/b/hjw1K/4e1qurLwEUAR0SAJL9jVHV5Fz?=
 =?us-ascii?Q?n119hLIvm1jnpqFxIWyE63zwiFBIqBEUdghQTrUDg0iSO+GUtswXlw2kC8Ni?=
 =?us-ascii?Q?0NKX4FraLcwLDDV8IyI9nVT+xQC2U0q/B2IefKqTw/w/IGLcgDiOlK+F4acK?=
 =?us-ascii?Q?O5MbboSaQoWXvtjmklQaz3CZ2ImH10J4lhcT0EMXdTCnNFN/JEvkx6lu2s71?=
 =?us-ascii?Q?M7DeF0w57YpgO8Jn3HIVFEvSlipdgxMLjqpODqvVTPD8ZAvM2nGFWS6FBtPe?=
 =?us-ascii?Q?UhkpEBQ1uQok0C/pKpaHQtImYD2IRfA9coNnhNcT9VrDqSFWdKvkDgxl4und?=
 =?us-ascii?Q?FJvwnZ4Vvr78+TOkEtdpcHkqABIQzNadkdjZC3cgJL/Oo6Gm8S/tcDclXLBa?=
 =?us-ascii?Q?Z4w8MDAUyR8mckTueUy+sozv6Sn8TsuyTlEBiOqk8vJkY8b/86rprL6IKZFC?=
 =?us-ascii?Q?FOK9HKqm8Ct+VrTWHXTckqLkOCm1h/MqYs5wXOSEVZbocptB5AlsTsoiWATo?=
 =?us-ascii?Q?H3Wz8oXmE6OLSH29XCAFgCoJYaIqCv+JU2aoRanpDxai+dGaZOvx5yOn/RDN?=
 =?us-ascii?Q?o6fIAn1W5THjHdIM0dAg01DYRwpI9Tc6JQ0h4p+xxxTwpBBhoTC7GCcNrHCL?=
 =?us-ascii?Q?4JDc8vH4CCKDDKLygtTDUzw2CMh841JfmIpxPc7ADTATJhFKOSEX4ISHveov?=
 =?us-ascii?Q?uvqzgS7uDUMffisv2biS1t0j72evI5Ds0+D6NdvkzUwVaT3KVpDs/laBp5wV?=
 =?us-ascii?Q?2vaWdRtgsF39yxUS6vkcsvPyynAFLM8Gvh1u1l75+XqFioWd01hCbEu2V+dR?=
 =?us-ascii?Q?tFh679B3vQs3NBBvGUIFgQem09rKQEi7YoXuyRocOBiuHT0TskMs0sQnh9tT?=
 =?us-ascii?Q?ECN3BM/fXD6D8e8cDKtkmifllkMzpYWkb8UEY9noLzjzHQ62+7l1G8SJWvV8?=
 =?us-ascii?Q?/XWENZQUnMLFLBee+pyseWbhKC3q2mmck0/Uq0yyWC7vFO1frMB1KMDa86YE?=
 =?us-ascii?Q?EX3hU37FXVtbyb0TcPzs1n/4nA1kIzf+3Kq7mn7ZyNbZAGh5/BIBJ5uJQumw?=
 =?us-ascii?Q?1Xe/E89CL2LX8H+UI/PQw6LNDEVCBNFV7ovWCNz9AtPVk3z7tmtATLrHMaTm?=
 =?us-ascii?Q?oZ8dC9J4s2PytvytnTFvHyDB2Huhpb2ioxUOPbumBLHEAGyFo/fTExIyILg/?=
 =?us-ascii?Q?xyGivopkYQWQu7WEnA4+rKbVB5AjE9tyo1mvXP7fFRpHuV4K/yMmawB9Pvux?=
 =?us-ascii?Q?VV9bEfU=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8644.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(13003099007)(8096899003);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8807
X-CodeTwo-MessageID: 50157772-3f04-4422-9cf1-9f230a80715b.20250521074549@westeu12-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF00028D0D.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	a8477e60-64df-4cf3-5e9b-08dd983b7c33
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|35042699022|376014|1800799024|36860700013|14060799003|13003099007|4053099003|8096899003|4076899003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?OEtvaURNclBOSUJ3NVNkUVhNb1lOZmxQZWRyREhnZWIwY3crL2x3Nnh5Uy9i?=
 =?utf-8?B?c0Q2WlczNktsRFg0WWhiaTRSWU1zZHpLc3NwUTBxL1N0dVcxZUx3ZTIvdnRP?=
 =?utf-8?B?bXZCZjQ2bUVkc3pkbk1KMnNiajNTSzA4aEdXUDZMTzNWMnprNnhubnd3YWVB?=
 =?utf-8?B?Vzl0SFhvelh0cUtPbXJOV3FXaU9sNDYzKzNZem5TWnVLa1h4T3U4dGdmOW9I?=
 =?utf-8?B?U1UrY3VaK0RZU2M2U0o2ZGxUYzBFS1ZUcGZoM2ZwSGkxL0wrTENKZU5PNUtF?=
 =?utf-8?B?N1BOTmhvdENBa3NyVnNhcmZ5a1VkcFJOaFVtQWpuMUdmeWhoTTFmbzFYR0lU?=
 =?utf-8?B?ckZMZzBPTUJOWnQzTHNxZ2Eybk5Vd1RtVnBqaUR1SXA0dTYxMTVvcmVqb21a?=
 =?utf-8?B?SXBhMFRGaGVsNVAza0VSb01FUnZDYWJhODZaNmVZN3VCNG50VmxyZzFVOGNm?=
 =?utf-8?B?ZWxqdWpoa01TK1Z3UE56cXpPOXp4VFhGSm1JZDdtUkFUelFXR2xTTWY4WUhr?=
 =?utf-8?B?Qzg0Qy9HR3hzeW9pRitQMzFhN0F6N0kyUkE3VWFyaWpxa0YvL2VHeXRNZnEv?=
 =?utf-8?B?RVdHYU1tMWZWV2NJeWRHZ25UdUtNOWYwR0dralkxb0tJZEROeVZteWkxZWN2?=
 =?utf-8?B?eVphUVNqSkZHRG5VcXN4b1k3VGhaTGV1M2RjMWFWdWlNVEFYalN1VGhpNWpD?=
 =?utf-8?B?S2NOTVFyUTVEVEtUV0cyQm9HYU5RNU9RK2hVa252bU1zcGUwczNTTm1ZZ3pG?=
 =?utf-8?B?WU05TnhxVEhiaCtwNnpuc0pqd2FWSVVuVDlqdzZDZFBFcWRXRkF3YU40MVZp?=
 =?utf-8?B?Q0hmZWFkWjNZTUs2OU5ya1ZiRGtZMGNUUXZaTW1CWE5EYzNZbi9rRmdpcHQ5?=
 =?utf-8?B?Mzl4bm1iVVoxQ0R1Q05mYWIybDRNdTJWRjNQWkwyTzc1OTYyS1JGaVpmS002?=
 =?utf-8?B?c21GZjRxUGFHWTJTcTk0ZU5YOUNtYzJmRmdMMkhEcUc4VGhMNnJ0b3VKaFNm?=
 =?utf-8?B?VGxhQVR4RGxhY0w1SHlNVDE5c1FDdFdPeFZvaGFGdlJRKzlBL09sQU1GWmZj?=
 =?utf-8?B?NVFrbHBjNVRJV2lVOEJoeVhZcnloS1AzUUFBQ2NRNEs4SlI2YVFtS1RxSWI4?=
 =?utf-8?B?SDZDLzhpV2pTMktWRGZtVnZac3JVdkdWdThHVXhNNnZiUU9PRWd5M2NvQWRk?=
 =?utf-8?B?ZXM5ek9jM1NoUzZ0OXErSUV3TnhnNkRta3VSL1B6WjlXdTcyeXI5RURma2tU?=
 =?utf-8?B?VXZpa1dDQ2xOTXNJa2pjZXpoeGVTUkdSL0dSVjRta2g5STEyQ2xySURMR1RH?=
 =?utf-8?B?N0w3SXU3bW5IU3Q4RENiRHZvaXRwTlpHaWdOWUdNQTUwNDhyaXpZQ2ZnT3Ax?=
 =?utf-8?B?TE9CVGhUMS9Jb3JOUFBpYlJFZkc1TVJ6SHJGcmJFMlJXamx1OGxkcWRaZy9v?=
 =?utf-8?B?cWFqc21MWkQwSnBFMHR6NlJNQlZxeEpGNUowTFhOemVYV0R1ZE15UlkxVjlK?=
 =?utf-8?B?LzhnQmthcUNJNExSbVI3TEc1THZkWU9XZHZpMmhkcUNuOFIzY2JUYXBuQnZx?=
 =?utf-8?B?WFgzZHZMaU9keVBsckZrS0xTN25zVU93UHJiVlNJWG5pSFg4cEtibmNVMkZV?=
 =?utf-8?B?RXluN0NndTdSWlQ4ckRQeTVabzBkQXcwK2FWYkN6VTBlZ3Z1OFA0MmhBR09i?=
 =?utf-8?B?WTQ4c2IyQy9CbkJBN0xUc2MxS3hyT0FaVnhMUjNPVkJFK0gwSWNsQktVWHZ1?=
 =?utf-8?B?WjEzNit4emtEbEROV3l1RkJzT2x0Y2prKzZjbXVFUUxic1kvYWtYNnVvalNp?=
 =?utf-8?B?aWFadVE4eEtDMS95cFlkNU45NzBIVGJhQkFKNC9MMXQyeTNQWlNKY0pWRndi?=
 =?utf-8?B?S0pvMk5TL2FuTmVPTllyZEtsc2xFWXM1dUV4MkNuMWJac3gvVkNablorT2x1?=
 =?utf-8?B?M09lMm9mdTJpczIzTWFjanh4ekIxWTNUb0pERHVsVTZkeWFQZzdaaW5JSWF1?=
 =?utf-8?B?LytzYzkxRVNnPT0=?=
X-Forefront-Antispam-Report: 
	CIP:13.93.42.39;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu12-emailsignatures-cloud.codetwo.com;PTR:westeu12-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230040)(82310400026)(35042699022)(376014)(1800799024)(36860700013)(14060799003)(13003099007)(4053099003)(8096899003)(4076899003);DIR:OUT;SFP:1102;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2025 07:45:50.6769
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e5e9208-11a5-4e1b-23b1-08dd983b81f8
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.93.42.39];Helo=[westeu12-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF00028D0D.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8195
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 May 2025 07:46:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65382

--------------cAu0EWDWP2B8R0rJu4urYPTz
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

On 20-05-2025 19:29, Mohammad Rasim via lists.yoctoproject.org wrote:



Met vriendelijke groet / kind regards,

Mike Looijmans
System Expert

[cid:thumb_topiclogoemail_24628bdd-be1f-488e-8e50-d9c8e7ca4bb7.gif]
TOPIC Embedded Products B.V.
Materiaalweg 4
5681 RJ Best    T:      +31 (0) 499 33 69 69
The Netherlands E:      mike.looijmans@topic.nl<mailto:mike.looijmans@topic=
.nl>
        W:      www.topic.nl<http://www.topic.nl>
        L:      LinkedIn<https://www.linkedin.com/company/topic-embedded-sy=
stems>

Please consider the environment before printing this e-mail

On Tue, May 20, 2025, 8:16 PM Alexander Kanavin <alex.kanavin@gmail.com<mai=
lto:alex.kanavin@gmail.com>> wrote:
On Tue, 20 May 2025 at 19:11, Mohammad Rasim via
lists.yoctoproject.org<http://lists.yoctoproject.org>
<mohammad.rasim96=3Dgmail.com@lists.yoctoproject.org<mailto:gmail.com@lists=
.yoctoproject.org>> wrote:
> Is there a way to make yocto/bitbake download prebuilt packages from a re=
po and only build packages that has a modified recipe or the user request t=
o forcibly build?
> In alpine linux for example when you build an image you can make the buil=
d system download the packages from the alpine project repo (or another rep=
o if the package is hosted elsewhere)
> And only build the package that doesn't have a prebuilt version or whose =
recipe (called APKBUILD in alpine world)
>
> This makes building a customizable image very fast and also reproducible.

Yes, the mechanism for that is called sstate cache. If you build
everything, then publish the cache on the internet, and someone else
configures their yocto build exactly as you have, and uses the cache
you published, they will not see any compilation, and yocto will
proceed directly to making an image after downloading the packages
from sstate server.
So i still need to build the image first to have the cache, which takes tim=
e if i have a modest machine specs.
Are there any public sstate caches that someone can use?

I don't know what would pass for "modest" these days, but a common 5 year o=
ld office desktop PC should be capable of finishing a full build overnight.

Once you've done that, the sstate-cache will kick in and you can usually ge=
nerate a new image in a matter of minutes.

I share sstate-cache all over the place, when at home and in the office, us=
ing ssh tunnels and USB drives, for about 40 different targets.

M.

--------------cAu0EWDWP2B8R0rJu4urYPTz
Content-Type: multipart/related;
	boundary="_312fc849-23cc-4a60-9c83-a04b76b944c9_"

--_312fc849-23cc-4a60-9c83-a04b76b944c9_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 20-05-2025 19:29, Mohammad Rasim via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:CACq04CH1gLdyeFdGmf6btfVYeXky6Ygi=
7bpUNvJyVdmR9XaLHQ@mail.gmail.com">
     =20
      <div dir=3D"auto">
        <div><br>
          <br>
          =0A=
=0A=
=0A=
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL"><font style=3D"FONT-SIZE: =
12pt" face=3D"Calibri Light">Met vriendelijke groet / kind regards,<br styl=
e=3D"FONT-SIZE: 12pt; FONT-FAMILY: Calibri Light"><br style=3D"FONT-SIZE: 1=
2pt; FONT-FAMILY: Calibri Light"><strong style=3D"FONT-SIZE: 12pt; FONT-FAM=
ILY: Calibri Light">Mike Looijmans</strong></font><br><span style=3D"FONT-F=
AMILY: Calibri Light"><span style=3D"FONT-FAMILY: Calibri Light">System Exp=
ert</span><br><em><em></em></em></span></p>=0A=
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL"><span style=3D"FONT-FAMILY=
: Calibri Light"><em></em></span></p><span style=3D"FONT-FAMILY: Calibri Li=
ght"></span>=0A=
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL">=0A=
</p><img src=3D"cid:thumb_topiclogoemail_24628bdd-be1f-488e-8e50-d9c8e7ca4b=
b7.gif" border=3D"0" id=3D"0.1otw2v7avgx" alt=3D"thumb_TOPIC logo email.gif=
"><table style=3D"WIDTH: 405px; MARGIN: 0px" cellspacing=3D"0" cellpadding=
=3D"0" border=3D"0">=0A=
  <tbody>=0A=
  <tr>=0A=
    <td style=3D"FONT-SIZE: 8pt; HEIGHT: 15px; FONT-FAMILY: Calibri Light; =
WIDTH: 252px" valign=3D"top"><strong>TOPIC Embedded Products B.V.</strong><=
/td>=0A=
    <td style=3D"FONT-SIZE: 8pt; HEIGHT: 15px; FONT-FAMILY: Calibri Light" =
valign=3D"top"></td>=0A=
    <td style=3D"FONT-SIZE: 8pt; HEIGHT: 15px; FONT-FAMILY: Calibri Light; =
WIDTH: 200px" valign=3D"top"></td></tr>=0A=
  <tr>=0A=
    <td style=3D"FONT-SIZE: 8pt; HEIGHT: 15px; FONT-FAMILY: Calibri Light" =
valign=3D"top">Materiaalweg 4</td>=0A=
    <td style=3D"FONT-SIZE: 8pt; HEIGHT: 15px; FONT-FAMILY: Calibri Light" =
valign=3D"top">&nbsp;</td>=0A=
    <td style=3D"FONT-SIZE: 8pt; HEIGHT: 15px; FONT-FAMILY: Calibri Light" =
valign=3D"top">&nbsp;</td></tr>=0A=
  <tr>=0A=
    <td style=3D"FONT-SIZE: 8pt; HEIGHT: 15px; FONT-FAMILY: Calibri Light" =
valign=3D"top">5681 RJ Best</td>=0A=
    <td style=3D"FONT-SIZE: 8pt; HEIGHT: 15px; FONT-FAMILY: Calibri Light" =
valign=3D"top">T:&nbsp;&nbsp;&nbsp; </td>=0A=
    <td style=3D"FONT-SIZE: 8pt; HEIGHT: 15px; FONT-FAMILY: Calibri Light" =
valign=3D"top">+31 (0) 499 33 69 69</td></tr>=0A=
  <tr>=0A=
    <td style=3D"FONT-SIZE: 8pt; HEIGHT: 15px; FONT-FAMILY: Calibri Light" =
valign=3D"top">The Netherlands</td>=0A=
    <td style=3D"FONT-SIZE: 8pt; HEIGHT: 15px; FONT-FAMILY: Calibri Light" =
valign=3D"top">E:&nbsp;&nbsp;&nbsp; </td>=0A=
    <td style=3D"FONT-SIZE: 8pt; HEIGHT: 15px; FONT-FAMILY: Calibri Light" =
valign=3D"top"><a href=3D"mailto:mike.looijmans@topic.nl">mike.looijmans@to=
pic.nl</a></td></tr>=0A=
  <tr>=0A=
    <td style=3D"FONT-SIZE: 8pt; HEIGHT: 15px; FONT-FAMILY: Calibri Light" =
valign=3D"top"></td>=0A=
    <td style=3D"FONT-SIZE: 8pt; HEIGHT: 15px; FONT-FAMILY: Calibri Light" =
valign=3D"top">W:&nbsp;&nbsp;&nbsp; </td>=0A=
    <td style=3D"FONT-SIZE: 8pt; HEIGHT: 15px; FONT-FAMILY: Calibri Light" =
valign=3D"top"><a href=3D"http://www.topic.nl">www.topic.nl</a></td></tr>=
=0A=
  <tr>=0A=
    <td style=3D"FONT-SIZE: 8pt; FONT-FAMILY: Calibri Light" valign=3D"top"=
></td>=0A=
    <td style=3D"FONT-SIZE: 8pt; FONT-FAMILY: Calibri Light" valign=3D"top"=
>L:</td>=0A=
    <td style=3D"FONT-SIZE: 8pt; FONT-FAMILY: Calibri Light" valign=3D"top"=
><a title=3D"" href=3D"https://www.linkedin.com/company/topic-embedded-syst=
ems">LinkedIn</a></td></tr></tbody></table>=0A=
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL"><span style=3D"FONT-SIZE: =
8pt; FONT-FAMILY: Calibri Light; COLOR: green">Please consider =0A=
the environment before printing this e-mail</span></p>=0A=
<div class=3D"gmail_quote gmail_quote_container">
            <div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 20, 2025, 8:1=
6
              PM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail=
.com" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">alex.kanavin=
@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">On
              Tue, 20 May 2025 at 19:11, Mohammad Rasim via<br>
              <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer n=
oreferrer" target=3D"_blank" moz-do-not-send=3D"true">lists.yoctoproject.or=
g</a><br>
              &lt;mohammad.rasim96=3D<a href=3D"mailto:gmail.com@lists.yoct=
oproject.org" target=3D"_blank" rel=3D"noreferrer" moz-do-not-send=3D"true"=
 class=3D"moz-txt-link-freetext">gmail.com@lists.yoctoproject.org</a>&gt;
              wrote:<br>
              &gt; Is there a way to make yocto/bitbake download
              prebuilt packages from a repo and only build packages that
              has a modified recipe or the user request to forcibly
              build?<br>
              &gt; In alpine linux for example when you build an image
              you can make the build system download the packages from
              the alpine project repo (or another repo if the package is
              hosted elsewhere)<br>
              &gt; And only build the package that doesn't have a
              prebuilt version or whose recipe (called APKBUILD in
              alpine world)<br>
              &gt;<br>
              &gt; This makes building a customizable image very fast
              and also reproducible.<br>
              <br>
              Yes, the mechanism for that is called sstate cache. If you
              build<br>
              everything, then publish the cache on the internet, and
              someone else<br>
              configures their yocto build exactly as you have, and uses
              the cache<br>
              you published, they will not see any compilation, and
              yocto will<br>
              proceed directly to making an image after downloading the
              packages<br>
              from sstate server.<br>
            </blockquote>
          </div>
        </div>
        <div dir=3D"auto">So i still need to build the image first to have
          the cache, which takes time if i have a modest machine specs.</di=
v>
        <div dir=3D"auto">Are there any public sstate caches that someone
          can use?</div>
      </div>
    </blockquote>
    <p>I don't know what would pass for &quot;modest&quot; these days, but =
a
      common 5 year old office desktop PC should be capable of finishing
      a full build overnight.</p>
    <p>Once you've done that, the sstate-cache will kick in and you can
      usually generate a new image in a matter of minutes.</p>
    <p>I share sstate-cache all over the place, when at home and in the
      office, using ssh tunnels and USB drives, for about 40 different
      targets.<br>
    </p>
    <p>M.<br>
    </p>
  </body>
</html>

--_312fc849-23cc-4a60-9c83-a04b76b944c9_
Content-Description: 
 thumb_topiclogoemail_24628bdd-be1f-488e-8e50-d9c8e7ca4bb7.gif
Content-Type: image/gif;
	name="thumb_topiclogoemail_24628bdd-be1f-488e-8e50-d9c8e7ca4bb7.gif"
Content-Disposition: inline;
	filename="thumb_topiclogoemail_24628bdd-be1f-488e-8e50-d9c8e7ca4bb7.gif"
Content-Transfer-Encoding: base64
Content-ID: <thumb_topiclogoemail_24628bdd-be1f-488e-8e50-d9c8e7ca4bb7.gif>

R0lGODlhlQF0APcAAP///wAAAABYo//+//v6+/79//z7/fz8/vb3+/n6/fj5/PT2+wApieXq9efs
9gAyje3x+AA5kgA1j+Dn8+Ho8+nu9gA9lAA7kwM9lQdBl9Pe7trj8O/z+QA/lgBBlgBAlQA/lS1k
q7TI4t3m8uHp9ABGmQBDmABEmABElwBDlwZJmzZtsGCNwrXK48nY6tTg7wBLnABJmwBKmwBHmgBI
mgBImQRMnQdQnw5VohZapSFhqW2Yx4Clz4aq0Y2v1Je12Ju52Z+726K93LrO5bjM48bX6trl8ebt
9erw9wBRoABQnwBNngBPngBOnQBMnABMmwJQnwJPnghToQ1apRliqSRmqylsrytusC9vsTR0tDx3
tT98uFGHvliNwWqZyGmXx2yayXCcynKey3agzHmjzXulz36mz4Ko0Iit05G01pO22KbC3qzG4LTM
5MPW6c7e7szc7Nbj8OTt9ufv9+Xt9fv8/QBVogBUoQBToABSnwJVogJWoQNXowRVoQVXogZYowlZ
owtbpQ5dphJepxNhqBVhqBxmqx5prSJqriZsryZrrS10szd3tTx7t0N/uUaDu0qFvF2TxGOVxWaY
x4ev042y1ZW52Z6+3LLM47HK4rzS5sDU597p8+Ls9eXu9gBapABZpABZowBXogBWoQNYowZdpgZa
pApdpg1hqBBjqRJkqhVlqxhorCZxsTN5tTl+uECBukyJvlGMwGGYxmicyW+hy3+r0bXP5bbP5dHh
7gBdprPP5OXu9fH2+vT5+//+/fvh1/728+dCD+hLGulSIuthNu1xSvGQcvStlvnPwvzp4/7y7uY6
Bve8qv76+f7+/v39/fj4+PPz8+zs7OPj49zc3NPT08vLy8TExLy8vLW1ta+vr6urq6ioqKSkpKCg
oJqampWVlY+Pj42NjYqKioWFhYKCgoGBgXl5eXNzc2xsbGNjY1xcXFVVVU5OTkpKSkVFRUFBQT8/
Pz09PTk5OTIyMiwsLCIiIhwcHBYWFhEREQwMDAgICAQEBAICAv///yH5BAUAAP8ALAAAAACVAXQA
AAj/AAEIHEiwoMGDCBMqXMiwocOHECNKnEixosWLGDNq3Mixo8ePIEOKHEmypMmTKFOqXMmypcuX
MGPKnEmzps2bOHPq3Mmzp8+fQIMKHUq0qNGjSJMqXcq0qdOnUKNKnUq1qtWrWLNq3cq1q9evYMOK
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

--_312fc849-23cc-4a60-9c83-a04b76b944c9_--

--------------cAu0EWDWP2B8R0rJu4urYPTz--

