Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6162BEEEC21
	for <webhook@archiver.kernel.org>; Fri, 13 Sep 2024 06:14:58 +0000 (UTC)
Received: from DUZPR83CU001.outbound.protection.outlook.com (DUZPR83CU001.outbound.protection.outlook.com [52.101.67.83])
 by mx.groups.io with SMTP id smtpd.web10.67457.1726208088301821913
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Sep 2024 23:14:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=H1PrIUBn;
 spf=pass (domain: topic.nl, ip: 52.101.67.83, mailfrom: mike.looijmans@topic.nl)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IDmX0O9KiJ1tUQt808EU/Kc98AFdE3jILhFss0kHhtnZW+D5d0rlWybuY4z/ghPWOV+U3bXxufrUAsMS4lyHI3FKkJNbvniIJirjFIoIzyVtxKb309EfCD90i8N0r6d1wvS6gYv1muPPaeLegdFmC8w0vy7u2aX+37IwanTzQJnKd9d3stxQEoB71o32BehiwbMaR9YtpkjMXcCOKxK1j8NXMSbrtCWCUOHR52SWxiPVLBrn+z7CWo6NLqQ+6mcYpACiGD+2UxCAHr3ozc+ZFuR95I0Ps/fQuCI+m5F6xCcn76pErJc4yG5DBmoeUYw2WGtEH5WtKgtEz4/GBRC/Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3LJx3MVXzmnLAPbiWUs7DctTqUncesW1s+FoXgoFqNg=;
 b=ONoPY9EMzg66XYxH41H5pcpL3pcNafDLoUNlpSdfWICzrhqi1Nld+ZJndXc/2i3OUc01XgrTDcvVwsOhMVrOpTTUN3kQGxbJqV4PrI9D+u96voQrW01O0kLFjxvNOi5MRWeHvn37fCtxJCYzci8j7x5Z2Ivg4FGAFuj8/oT01XMfbj8s5NoYpM3HbxRDuYmdU5wd8rQVXrlP+IChIhVDxynNGi4mkuA/4Tog+JUL0wnHarj/m3jxEAqEDEEVO3YyCtgzNp/aoKWsyOoPJQjvugUpz74V8OfoarcSDItdd+kiMA2sbDRH+XmO4QpIDyIzRgAIK72ib9aFcC/hOiOtPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 13.93.42.39) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=topic.nl;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=topic.nl;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3LJx3MVXzmnLAPbiWUs7DctTqUncesW1s+FoXgoFqNg=;
 b=H1PrIUBnhR5AQsY5oJP6r8CyRQxr6P5S2PmjPDkZTMVccEp4NSEpdXVLAXAOpzd55HzJi9Svai9Jt34vecDx7tw+0Wm0U5I59CB5bHw1luzg6EGX0ZEMSmCRi90m/JT/FFTY9bSQxdH54Qby7vONXQBlo2e0MGcAWz67YLi3a96BijV8ssKDYQQMrRsEi5MI3m3IQKvjbaG9Z375ytFZ/srevSo+x+pg6djrzjdrlmqUwncKdAN/5QNWDi+6YRjkFQ515pTB2KyXFMyts/IfYTcX1Gv7gn2w+7Mi/lIQnqP0RWgZfqMbVsUk7PPiLJQWJLSB9lzC8WM5k+dzPvg53g==
Received: from AM5PR0601CA0050.eurprd06.prod.outlook.com (2603:10a6:206::15)
 by DU2PR04MB9521.eurprd04.prod.outlook.com (2603:10a6:10:2f3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.21; Fri, 13 Sep
 2024 06:14:43 +0000
Received: from AM1PEPF000252E0.eurprd07.prod.outlook.com
 (2603:10a6:206:0:cafe::ac) by AM5PR0601CA0050.outlook.office365.com
 (2603:10a6:206::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.25 via Frontend
 Transport; Fri, 13 Sep 2024 06:14:43 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.93.42.39)
 smtp.mailfrom=topic.nl; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topic.nl designates
 13.93.42.39 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.93.42.39; helo=westeu12-emailsignatures-cloud.codetwo.com; pr=C
Received: from westeu12-emailsignatures-cloud.codetwo.com (13.93.42.39) by
 AM1PEPF000252E0.mail.protection.outlook.com (10.167.16.58) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7918.13 via Frontend Transport; Fri, 13 Sep 2024 06:14:42 +0000
Received: from AM0PR83CU005.outbound.protection.outlook.com (40.93.65.7) by westeu12-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Fri, 13 Sep 2024 06:14:42 +0000
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from PAXPR04MB8656.eurprd04.prod.outlook.com (2603:10a6:102:21f::21)
 by DU2PR04MB8501.eurprd04.prod.outlook.com (2603:10a6:10:2d0::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Fri, 13 Sep
 2024 06:14:39 +0000
Received: from PAXPR04MB8656.eurprd04.prod.outlook.com
 ([fe80::7fda:f254:7fa6:7756]) by PAXPR04MB8656.eurprd04.prod.outlook.com
 ([fe80::7fda:f254:7fa6:7756%5]) with mapi id 15.20.7918.024; Fri, 13 Sep 2024
 06:14:39 +0000
Message-ID: <88a61b89-5c75-4d92-b0b1-962d6336bf28@topic.nl>
Date: Fri, 13 Sep 2024 08:14:38 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Building systemd without udev
To: yocto@lists.yoctoproject.org, jguittet.opensource@witekio.com
References: <xEMZ.1726127128546561215.WHcM@lists.yoctoproject.org>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.8bd678dc-5281-48f8-a8eb-d30cee183806@emailsignatures365.codetwo.com>
Content-Language: nl, en-US
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
In-Reply-To: <xEMZ.1726127128546561215.WHcM@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AM8P251CA0018.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:20b:21b::23) To PAXPR04MB8656.eurprd04.prod.outlook.com
 (2603:10a6:102:21f::21)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 
	PAXPR04MB8656:EE_|DU2PR04MB8501:EE_|AM1PEPF000252E0:EE_|DU2PR04MB9521:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d3569d8-d05f-42e7-8850-08dcd3bb5b81
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|376014|4022899009|366016;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?Q25PMnFpUlJhcEFXeWRxQU01aUNNQXNiMDRQOUk0REk1bkVpSkN5cXcxS3V5?=
 =?utf-8?B?MlJUOEwyL0kzWktoclpzV05pUlNqNXBrOFY5WGxweW9wbE5PUlZIL3gzaFFW?=
 =?utf-8?B?a0twWFJJRjJrUHIxYjd4dGFsQTBhUTFCZGRRaFF2enF2eW1TQ2F1ZjJwbmFB?=
 =?utf-8?B?MEdzN3MySEE5aUJzYm1CNU1FZkNrcm8rUXdOQlYwSmtZRFlvT3hvZDM4SzRw?=
 =?utf-8?B?S0R3T1VvU1lVVTRLWVhWTytDejNzWkRFb0ZnYURuUWxnT2s0d2Uwd3ErVGxB?=
 =?utf-8?B?VU1lVHUwNHk3aWlNejR3SE9LVU9LOURCaUZMQit5UzhpdjF1UEE1MU5SbzZx?=
 =?utf-8?B?Qi9vTlE0QjBldFdvMVJKSzdkMGxjT09rQ29iQjZrUFdwTzU3Mko2VS9rNkRt?=
 =?utf-8?B?dW5SOElJblJFWmVpcHVCd1A0MHNiNXk3SzlXZ3hZTGxEWmRxRW16RFR1Y2V0?=
 =?utf-8?B?QVlOaFdXV01oQmc4T1MzMXIvazg1TUx4MDNNVGYxampQSzVLdEFrbjR1S05O?=
 =?utf-8?B?enlNRWNvNzlsRUxZUG5zRmdHeWliaWV1L2gxNFZ5Mm9rSlBSNHRzNE9hMWts?=
 =?utf-8?B?R1VKeU9IRFBuWmJoTExvNWlMN1pVMFhCVGZqdkZ0Tm9jd2JPSVQ3L0tSL1dD?=
 =?utf-8?B?Z09QbWlKcTBPUmZSOFQxRUs1TXZxb0gwc05FdGs5NW83MHVVaktSWEtFQTRp?=
 =?utf-8?B?alhHcVRHblJPUzg1YlMvalZ0TWZwb2lFT1BsK0NtOG0rMUhFRFo5YURVRWpK?=
 =?utf-8?B?dlkwYWVyU29pV2dyT1FCNzdZM1hiK3dmdEhNQnFsKzAzZmVORjN5d29jWVFz?=
 =?utf-8?B?MnI3dHF0VDBYZTJoYmdMKzl2VTg4R05EcWVmZU5qTDlBd3lVL3BrMGdTeTBZ?=
 =?utf-8?B?OUV5b1ZnbmdUYW5tWENBc1JJZ1NVK1hjbjUzNVAycWRUVWJsTnd6SGRndWJI?=
 =?utf-8?B?VFAveFRaWTNwb0h6VVU3WmZzQVRxVTRNYzI5U1ljWnVtZlNra2JSWDAvWTll?=
 =?utf-8?B?aisraVpUTlVMWGw4a0pjdnMwZWlVcmRNcmpjWjdMUGJRRjB2WFhjL2ZFTE5U?=
 =?utf-8?B?LzMvTWRNUzRjaGJyOUxhSkNta2xBUEVnYTZYRkl1WUFGWXd3dmJPWTM0L3RQ?=
 =?utf-8?B?dWkzbkdYeVRqeFNxOXR2TVJWeDVrdDFSdmFveS9HbXEydStTV0NTOVN1UDhy?=
 =?utf-8?B?WUxoUTdSMkxQbHU3OUlDTmVEUk56d0U2TlJRWFY4QjB5aWNYU0Y3MW1uUFVM?=
 =?utf-8?B?elo1NGtORmVhSVRyUG9BcDhNU1BOeUdRbDQxbzNnRlFVZTRMZEpGNm9LMlk3?=
 =?utf-8?B?V2NUNTdyZ2UvMzQra3crSFZHMERQY1J5SmI0T3Q0T2pNZlBZbTMzRUIvMGRp?=
 =?utf-8?B?L3BJZ3ZYTnVqNW9oZEZIeWRYTUx1VGhYRlFUZEFqOThyM1ZvUk82dEcxMEUv?=
 =?utf-8?B?Y08vblBETCtyUTZVam1vaTkxV2t4QVlKajZVQ1MwbVlVcmZtVFBneERHa1Aw?=
 =?utf-8?B?RFludEtDQXQrbVltVnFad0JxZHlIeSsxRDcvejFJYXdob01ySVJVM3dVdnRl?=
 =?utf-8?B?R2FBT3I4Z1I1dnpaVTdqM2VEaTVwU0IzM0xEN1pYOW52V0ZrMG5PaTd2NnY5?=
 =?utf-8?B?VkVmdHJFN0VhN29VcFc2VTRjUlpGSUFVNWFoVEhTcWVQZ0F6aVBZWFlMMnUz?=
 =?utf-8?B?QmJuMmdiNTAwdFdaSFlFc0ZuR2VNR0NtV2R1MHlNVktrN2VLQktCZVM3VVF4?=
 =?utf-8?Q?sMuY71KS7B2t9dnPkQ=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8656.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(4022899009)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8501
X-CodeTwo-MessageID: c06ee485-db27-4a5d-b72a-21fb4bf27ca9.20240913061442@westeu12-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM1PEPF000252E0.eurprd07.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	662b2d8c-3bcc-4fe6-9e72-08dcd3bb59a3
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|36860700013|4022899009|35042699022|376014|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?dm1pbVpZQ0hBRTJyN1htUXFvQkVtbDJnRVF5MEVsRlozTGRKKzg5NkRwaFZB?=
 =?utf-8?B?K2ppd2orY2VPemxQNEtWVEl2djM1bzgybWk1K2o5VTB1azJUOWk3Qk5PcWhJ?=
 =?utf-8?B?Umh5aitrdm9YREdsTDBmaytaNG1KK0JEQngxck41ZkRSMGl4TkRkaXp3Q01o?=
 =?utf-8?B?Si9qNTQwT3hrR0hXcDY5cU5BVHNqK3JTSWt1VDJLTVA4b1liMnJMcTFxeXkx?=
 =?utf-8?B?cE9ZNitVZ2k5RGFRalA1WkpiNGFmcjZkR1ZjWG1BT0RPSm5DRVZMZGZUM2xj?=
 =?utf-8?B?aVlpdFJhSE0xQ1YzVDgyQ0pva2RXWlQvRGE3NDZ0bXMvOGhjaTdZaTBsTmNk?=
 =?utf-8?B?bzBmdFRFbENHSjFGUFJHMTI1YTFyTGxLT09MZ2U4Qnd0dHZjbGoyOWNBMWVh?=
 =?utf-8?B?em5NYjQwMms3dHV0clQ0Y1hjOS9kaXlCQkRRZmhGRWJOZ3ZqVjRtNXd2bFhJ?=
 =?utf-8?B?bWxqeHkzaXd3YlIrcThScUlCQ0I1QUgyRjhaa1lHU2gyK0dnWkt0Mkc2VURO?=
 =?utf-8?B?enlwU3BuOGw2RDVRNlo2dGZvVWw4eGpEQjNpb0VxK2oxUVcwd2Y2UEVrTGJu?=
 =?utf-8?B?K0hzdU1CbnlDU3U3VnNNWHdhYW1CVDB0ZkcrNFNFTXhYNU8yaTlTMXgrRTVI?=
 =?utf-8?B?NyttMllOZm0wV2E3R215TXZYSWdqZFBDZkZ1QVgrYWE2b3V3empCSlBIWC95?=
 =?utf-8?B?MDFaQ0h1MTNBTUY3ajNiOERRUHNBdjdRYS9uS2RTV3EyMWQrajhsT3JNS0lM?=
 =?utf-8?B?aXovOTg2dUhRNUtlM2RCZzRyM2lTc0lRK3VDR210UkxXcmpzeXVMMCtWQzRa?=
 =?utf-8?B?Y0lIM05VM2h3blZyVzR4T2o4OExvSUw1VEFyYlFFYnRDSlZ5c21LcC9nV3lQ?=
 =?utf-8?B?YTBTK2hkTDVXaGo0SVBFSE12QkVPaEpXY3g5dG90dWJBeTRLak5BenBnbDBy?=
 =?utf-8?B?NitLZ3Bhb05seFN1c3FXOXFDWE9BeERxbk5RU09CZFZjVnAvUmVHd0wrYnIy?=
 =?utf-8?B?TS9MMnlmbENxTFZTbnIwRFkzc0RPTWtaQThuVGlPUThqVWpJNVpGNFlHcG5V?=
 =?utf-8?B?dkFFQWt0eUhpUXpkaW9tSGh0RlpCd2dEZ1lVbFVsYjN3OEFpL2xUQ3BSczZq?=
 =?utf-8?B?REZsbmpXRnVVL0NhOVBrUjgvY0VpMSs4UDUyUGJpRTZaT0tIcWpYV0JCb3d5?=
 =?utf-8?B?TXp4RVNXQ3R3TjBHR3hpdHRyN0pxUzJOVFhiRGt5eHB1Z2JHWUNLRjRwMUxY?=
 =?utf-8?B?b1AzV2o2V0xqbWpOYm9kcUtYZTdGT0ppdndINnJWekNZelc0TkNHeEJVWTIz?=
 =?utf-8?B?dFkxZDlmSEtyckI0bkFid29pb2lPeUNpdnVRazNiYVNqeDFIWnUvaHVNRmlx?=
 =?utf-8?B?NFNmY1MxWVZqNUNvcGNuOVJwSlJZYmVSQmszeWIwVFUzc3IwdlFIaDI4cGQ2?=
 =?utf-8?B?ZEJXaWRTUnZxK0l0QnBQQ1dwQkh6cWJlSmwwV01MdmJZbnlJcFBVdDFIS0Nj?=
 =?utf-8?B?TFkwMk5aMHpEczczcHRpWGZHaFJ2SUljR1Y5QjFvYlVlTHNOQTNZN3gyMGhM?=
 =?utf-8?B?clZTRzdQK2lYTDViNEwrTlNIQXplYlk4a0RTWjIvMmdlQy9OSko5ck5Gcjhn?=
 =?utf-8?B?QkJ5MWF5a0JmVUxDOUFmVEtmYWY0VzdSK2NieDkzUU1HWTFBUk9ZS21ma2gw?=
 =?utf-8?B?ck1GODdZTkNuMlVrNnMzT2lhU1hFTDBibUx3bklJRURMc2ozZFozenVENjY4?=
 =?utf-8?B?VnVlTHlhSHZPaXpEd2lrQjMyZHd6NTlhVGZDNS85TDZ2dkk4MStSS01wOUZn?=
 =?utf-8?B?Q2xxc0pYU21DcGxEa0tFM0hCOXMyZVNTZDJ4NHZybitPWnVMVDBac1JRekp0?=
 =?utf-8?Q?1SQWQHW/vw5xL?=
X-Forefront-Antispam-Report: 
	CIP:13.93.42.39;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu12-emailsignatures-cloud.codetwo.com;PTR:westeu12-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(4022899009)(35042699022)(376014)(82310400026);DIR:OUT;SFP:1102;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2024 06:14:42.7172
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d3569d8-d05f-42e7-8850-08dcd3bb5b81
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.93.42.39];Helo=[westeu12-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM1PEPF000252E0.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB9521
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Sep 2024 06:14:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63831

AFAIK udev is completely integrated into systemd, and cannot be removed.

If you're serious about size reduction, the "tiny" way is to remove systemd=
=20
and use busybox mdev as device manager and busybox "init" as init process.=
=20
You'll lose a lot of functionality, of course.


Met vriendelijke groet / kind regards,=0A=
=0A=
Mike Looijmans=0A=
System Expert=0A=
=0A=
=0A=
TOPIC Embedded Products B.V.=0A=
Materiaalweg 4, 5681 RJ Best=0A=
The Netherlands=0A=
=0A=
T: +31 (0) 499 33 69 69=0A=
E: mike.looijmans@topic.nl=0A=
W: www.topic.nl=0A=
=0A=
Please consider the environment before printing this e-mail=0A=
On 12-09-2024 09:45, Joel GUITTET via lists.yoctoproject.org wrote:
> Hello,
> I'm currently trying to reduce the size of the generated image as much as=
=20
> possible.
> One thing I don't need is udev, but it is currently built by systemd and=
=20
> seems not very easy to remove throw PACKAGECONFIG.
> Is it possible to remove udev dependency so that we don't integrate udev =
in=20
> the image ?
> Joel
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63828): https://lists.yoctoproject.org/g/yocto/messag=
e/63828
> Mute This Topic: https://lists.yoctoproject.org/mt/108409280/3618446
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mike.looijmans=
@topic.nl]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


