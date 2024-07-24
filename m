Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF75C3DA63
	for <webhook@archiver.kernel.org>; Wed, 24 Jul 2024 11:09:59 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.139])
 by mx.groups.io with SMTP id smtpd.web11.8111.1721819397337792892
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jul 2024 04:09:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=IyZsvyxv;
 spf=pass (domain: topic.nl, ip: 40.107.249.139, mailfrom: mike.looijmans@topic.nl)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HOnNP+LRrMrq3QnmetOeVJDpN+gLVaocu6t4Y1knCbNTvOWDFfuw4vdpyiNzb9q/9r33LRVVx+gLB25C4L87vEzJ7ibnTdtLUN/531mV4d/Xx4KNLl5+KwwRTNPfmoXz5oyZqPN4+WL7WXyLTGFaGeFfXZM24NGoNzV7ud+pBkY+r7TdzXho5pck2AsfpFTFmchtEPxvfbDKLZKcXJSBHTzyld7KnBmyRn2CErz6MYRHanORBdcKVLJLqntGqx2hwBn35OTCI+MNfzigo4bfZAtOwwzg1ncz59Kx0Xk8rm7pR7fYvhKnA9AEQGp4G3P16elijZ4FI7T4zrhlFbiOqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xdrEHlo5QqeNdfyFIzxzIT8TeF7uO/6/eCi/75vwqeU=;
 b=yYXkKpIeG2jI3Fz4CbnR6bWhmbhHbJWkn73puHcHiy8Y0uSHi0nbr9XnMBmmgTXpa6BLI5BvjBRf4C29j4ia5zuSTW4YlKADAo6/J6UXG02nRqBcIRPDIFzf1y1t7Hz6O0M9jRYvyrt20Z4x3z/rxzvsz7MIzZU9vYrfavZGYO2YJ1obUXUI7FilsoFyxEGu/b+HYn+oxBGjN1F7CoUOhqOCfTeWSznAwO8KkGTfPk2lWLsHdEoX6orlS599aD0f7+jwTAW+uhnqawmX4lRHZfmc8WDe3yFgxE3nMiRKkx3tiHN/YTunxq6VIUYy+TPF+L8pjiC1udrRHCs+rKnsmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 20.93.157.195) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=topic.nl; dmarc=pass (p=none sp=none pct=100) action=none
 header.from=topic.nl; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xdrEHlo5QqeNdfyFIzxzIT8TeF7uO/6/eCi/75vwqeU=;
 b=IyZsvyxvsW2IKA7Mo39WtfOVXMsRYBxGTsa3mb93qh5ROw+5YlQO2M7i91V0JZSp2nWhvECeqGIOv+Uqb976jsvWeSeIofzCr7ROXDEfv517nafxklarwVbSmOCwo6v7bfnMhMYQthFJgiVC64FDlCQ5An26w0o4UXQ3qeSIoYBy62RxN/rKYcZd4YMH7ySSptNTfH1nmvP0rJKwI+L+9SfeGF3DI5O3xe5deWws6TDZIspia5RpKkzYeaT9CJGH/lOj60+JOcUcCDX0tyJn2/ZCM22Y5ROMGi7cLYFozS+L9BTk8/ehRffd14DymXp5ACOeSv9AUihSvdkcBcCvlQ==
Received: from DU7P189CA0025.EURP189.PROD.OUTLOOK.COM (2603:10a6:10:552::32)
 by PAXPR04MB8814.eurprd04.prod.outlook.com (2603:10a6:102:20d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Wed, 24 Jul
 2024 11:09:53 +0000
Received: from DB5PEPF00014B90.eurprd02.prod.outlook.com
 (2603:10a6:10:552:cafe::98) by DU7P189CA0025.outlook.office365.com
 (2603:10a6:10:552::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20 via Frontend
 Transport; Wed, 24 Jul 2024 11:09:53 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.93.157.195)
 smtp.mailfrom=topic.nl; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topic.nl designates
 20.93.157.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.93.157.195; helo=westeu11-emailsignatures-cloud.codetwo.com;
 pr=C
Received: from westeu11-emailsignatures-cloud.codetwo.com (20.93.157.195) by
 DB5PEPF00014B90.mail.protection.outlook.com (10.167.8.228) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7784.11 via Frontend Transport; Wed, 24 Jul 2024 11:09:53 +0000
Received: from AS8PR04CU009.outbound.protection.outlook.com (40.93.65.29) by westeu11-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Wed, 24 Jul 2024 11:09:52 +0000
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com (2603:10a6:20b:42b::12)
 by PA4PR04MB8000.eurprd04.prod.outlook.com (2603:10a6:102:c1::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Wed, 24 Jul
 2024 11:09:50 +0000
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::e86d:f110:534e:480a]) by AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::e86d:f110:534e:480a%6]) with mapi id 15.20.7784.017; Wed, 24 Jul 2024
 11:09:50 +0000
Message-ID: <bd265972-6b03-4bc2-a0a7-bc87d54ffdf9@topic.nl>
Date: Wed, 24 Jul 2024 13:09:49 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] NAND together with SD CARD images
To: yocto@lists.yoctoproject.org, ppanaccio78@gmail.com
References: <U46J.1721525980821149221.YLk8@lists.yoctoproject.org>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.49fee02e-5090-4596-8083-c31b2097e034@emailsignatures365.codetwo.com>
Content-Language: nl
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
In-Reply-To: <U46J.1721525980821149221.YLk8@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AS4P192CA0027.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:5e1::17) To AS8PR04MB8644.eurprd04.prod.outlook.com
 (2603:10a6:20b:42b::12)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 
	AS8PR04MB8644:EE_|PA4PR04MB8000:EE_|DB5PEPF00014B90:EE_|PAXPR04MB8814:EE_
X-MS-Office365-Filtering-Correlation-Id: 79c15abf-10d3-4350-279b-08dcabd124a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?UXkyajhZOWNpWjVWWDFIWWp0MERXRXg3bUxMWVc1VWxsajg4VmwzWWVOZHRC?=
 =?utf-8?B?U1BxV3l3dWlCT0VqM3pMUlVJZXY0Zjh0cTRPeGFWckhXbTFKZm43aTlmbnlT?=
 =?utf-8?B?azByRTFVeGJ2VWw0MzUyTVREQVplNEc3OEFpYzN3V0RncHZnYUM2SHpnaU9T?=
 =?utf-8?B?M3hpZ3hlaGxsZWVITndUOWJvbUpPWkVUSytjZG5GcGd1alBBK3p1eFRNZWQx?=
 =?utf-8?B?b3QxUm1qVWx0R0t4RSsvRmw1WG0ybzlnK2szVVRPemJpcmhtaE41YXRKem8v?=
 =?utf-8?B?V1ZWNmkyTVNEUFl5MGpZbGRnV0kyV3Q0Z2svd1JhdzNSZzgyUlJPdTJya1Iv?=
 =?utf-8?B?clhrVUxCdkJyRTlkTHpsT2NaY21DS0UvVWxEcENGZVBja3ZTejNVaEVnZmt0?=
 =?utf-8?B?emJybkJ4NWg5Nkd6cGUvbjMwVXBjSDhFVTAvYkdEaFNwcUJIYU5oQ2JQSmRD?=
 =?utf-8?B?SENkbTZQYm5sdE5mN2FScmRsanpDQThQWGVKWGpsdUlkSHg3ZllyejJ3eVN0?=
 =?utf-8?B?c3daWjBFR2JCckNGVHRBSTJRRnJLRWVOOVAvanVUOXUweWZYdVdObUY5VEw2?=
 =?utf-8?B?a1p1emZ5VjczbUJZZGlXQWxFcWNxVTBEeXdUYUhESW5rMkV2WXJKUFd2enEy?=
 =?utf-8?B?V3Jlc0Frb0JCbVU5blM3elFQRWVQNGQrNE9nUm5hQktEaVlCY2dnVEM2aHRw?=
 =?utf-8?B?bHBDUGRBZEl1WGFrUy9kT2NrOXRGV1kzU2paNkJhanJTeUlrQmxJNGh1aFMz?=
 =?utf-8?B?ZjViQWROMEVrUkFqUEpQZzBldnBTNE1yemo5Z2NUa2VvTCtXRjJCZWh4eGNs?=
 =?utf-8?B?NklwTVhwRGFtR2tDOStXWithQ2VhSWczWDZKWmo3N2w1NEsvVGNZOWE1Szk4?=
 =?utf-8?B?MC93cjFQUnB1bTh4dVk5WGI2REhSU1RiT2RDeWZmRG9hRmxVY21EUW9WeE52?=
 =?utf-8?B?OXpVTWxiWVhydFdtdFQyZXQrTmwwdWE3bW45TDV5ZzdwMFRpZE40K21OaWg5?=
 =?utf-8?B?d0JtbENIR2FkZ2E2dGlKZTFlVml1Mkhta0lqU2VJU1JIMm9xVERieE0wVi81?=
 =?utf-8?B?Y3UraUZWeC9RNUNmdVJqVElMb096NEVPWXVSRm5xMGxlZFNCWDQzQ2ZFT1Zk?=
 =?utf-8?B?Z3ZMd1dCcWliMHhUVTJsSGwxdzE4ZEVkemZGVW95TGJidTRLMkkzSXVkNDkz?=
 =?utf-8?B?ZE53QUdBMEJaZHpFeU1wQkRJZVBXVlRBbk5OaEZjZUh0d00rK1V2MU9aWE8r?=
 =?utf-8?B?Y0Y0WW9kREt4aXhwRmhKUU9ZUTZaUm93ZHQzVUQ1VmdVcndUb1pET0JQallN?=
 =?utf-8?B?b3NOa2FScitOU05VQStNcDkrQ0IyT0pVSVBxV3AxU1lDUllRazdzSWVLZkc2?=
 =?utf-8?B?TnQ3SlE3bzZlazlKeFlqejk3UUdaK2hmdWJ5ZWFvcWhxOXg5VjA0TUpTWFhn?=
 =?utf-8?B?M0hob05id3crSFBFSlNDdGVTaUkxK3JRL0tZRmZ0MndOZ3J0Qy9PT0JQWG03?=
 =?utf-8?B?WGk3SGplakJtVWRWY244U0g0Z0RXRmMrWm1BMWh2NmFCYVJlM1dONzFnU2hE?=
 =?utf-8?B?ajZvR05HeEVvSjB1UmFjZjd3RUJHSWtML3hscFliV29hbVRMOVZiVXpSV2du?=
 =?utf-8?B?QnFtQnhpdkhzdUo5S2hZcnI2VGhUdUhxNkJ2WGFsOHpub2NwM244UXNNTnM1?=
 =?utf-8?B?UWhhY0Z3RDg4UlVibVBZU202S01QVWUvUVYrNGptbytZV1FZTmN1TCtYaDhQ?=
 =?utf-8?B?L1ltS01kWTBSYnRJNTNiU01tTVA3WUk4dEJUdXpqRHlyOXF4NTZZNXRraUNV?=
 =?utf-8?B?YUw4N1lRczBGbEt1RjY1QT09?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8644.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB8000
X-CodeTwo-MessageID: bce667b1-8708-42ba-b635-3819782647d7.20240724110952@westeu11-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5PEPF00014B90.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	0eb8cb4c-4c66-468e-4e0c-08dcabd122c6
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|82310400026|35042699022|36860700013|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?THNUdWo1Qmt5Uzd0RGJzZlZJTjhRcmkzRFV0emlnZ2xFNVlWeDhSblpLMjBl?=
 =?utf-8?B?dTUvZUxFNkVnZlZnSExJVUZDM2liRXh2ZHBIOWhsUDZacTFlNXVFd05ETEdJ?=
 =?utf-8?B?STBpalpiNFRJZTJDUXgvZUVVNG4xRzVlbHZhd3JvWlovdThDQ3MyR0pzSDNP?=
 =?utf-8?B?UDFaN1JmM2VHVEdsVzRBVXFVbU5OaG4xbWRDV3ZnTXdYdC9LYzNJTE1hbzNz?=
 =?utf-8?B?d25QSWxxSEduRndJbE44SXBYUmFuN0VZTmZiSXlZaG5IWHl4c1V0YlJMM2E2?=
 =?utf-8?B?VksrTktwK0NZaTduSDRqRE1VZ0xFam5nR2xkcFFxb2ZnNUsxOC82T0RMKzUy?=
 =?utf-8?B?b0ZkS2YvdEthSnlMUy84dnRiQmoxU0dWSWtmWlFxdER2by8zQXlyYkxZWVQ2?=
 =?utf-8?B?eW56ODZMeXp2ZUIxejlZYmhTaVdiTnNmdnFRSGVDMzh0V0d4S1hGV1Awb2pk?=
 =?utf-8?B?Y2pYbW9Rb1NuZ00xWXp2cjZoa2pLcTFicENjd2FXajR6RFIrS3NtL1YzdWZz?=
 =?utf-8?B?OThRclU2SlhoQ2p3S3dONldyOS9jQURTYTZRd3BpQmREWCt2SVBXZTBVUzhE?=
 =?utf-8?B?ZWlDQjhVQUN3YVA0ZU5BU00zZEllRmJaN2tUMFpDWEJBdlFKV21Pd1RHb0o3?=
 =?utf-8?B?ZzcvM0pvaUViQUJnVVNyaW1aNG5oc3owZ3YxUzY2NEhVUExuczZ3NHRtUUtq?=
 =?utf-8?B?bHJtSUFHa3R4bDc5N2Q1UzlvaVhvK3N5NkFnOWJSTkg4OEpWWks1ZDdNb2lQ?=
 =?utf-8?B?bFRKWlVIOTJYd1BOSGN4TnFpa2R1eC8xZ040U09qRkpRRjNhKzNITktIL2dM?=
 =?utf-8?B?MVlhdlRjb2FlUUxzZ0g1UUQxMFpJUDZaL0RvbmNZemRyQk90Y2xub1BnR0Q4?=
 =?utf-8?B?Y1JGbFJzUnF1dmZCc2pCMUJTME0rU21ld05xaVFXNHJzKzNEaDFmck55OHVn?=
 =?utf-8?B?QVA0L2dXVkhMNWsrTWRpRGxEUlBubFFKeElHbHlVVXdkQ0lZTWp3d2RuVWhq?=
 =?utf-8?B?N3poUjdjVVcxZTBZN3ZLZDlIU3duRnBnbjJ4QTBnRE5pbkFCckpONVh4a0RL?=
 =?utf-8?B?Umhmbmc0ZjI0cU5aT0xyYjl2OHZOdVFvdkg2RzhSMWdKMEF4M3BFbGJrOVB6?=
 =?utf-8?B?QVc4V05CYzVnZUN4VzhnV2VkUVoxaWZMZTExR3gvOXQwNVljQm1uL3ZJM3I4?=
 =?utf-8?B?OUs0ZmJOd2FFd2l5eGVuN2VyaDZNdWJjb3JNTVNhcWNFYnRzQzhZMnd5MGFD?=
 =?utf-8?B?V1E0UVcvTVZsVkZmYTVYOW5jYzFaMDBUSEhkbG81SURKcm1xZW9SVW5Ld09J?=
 =?utf-8?B?YnJka3NoMU94UW43RnV5Qk5RMW5WTnBuUjcxZzVrN3hkR010cVE1SWRaS2Yz?=
 =?utf-8?B?MDBZWlEvcWRpMHNnT2l5emlMRzhXbS9pTGlPRklSams4UFdlOW53WU9lZTdV?=
 =?utf-8?B?WHhvVUcya1NNMmc2MlVxSVVkMUhNY2NOa0RnZWlNZGpnRERoT2RkeWVnRW1k?=
 =?utf-8?B?cE9CVDhmK1ZKSDU4TFdCNEFTT21SYTRaWENVQmFXQ0pvUEpVcXU1Y0g1alBY?=
 =?utf-8?B?ZXlnNUZOWXdMY01QaGsxWTgxSlRDMTBiMHZNenhNVytjalo1QjBteTVyR3dh?=
 =?utf-8?B?WUkxbi9aWmgwc01ZTjJERk1ib0MrOTBucGdwN2hzS2hZb2pqT05ocUg1d3Vw?=
 =?utf-8?B?SEZWMFMwTXZlTTJ5L2pJaXd6aXA5K1VDbnpuMlgvcURWeFB0eTFCWHhvMkpR?=
 =?utf-8?B?SUh0a3dtczJobjRLQnkrb0dyYXhKbTRPSGZRbTNBZXl0aFZPZ2ZralJ6MmlQ?=
 =?utf-8?B?OVF3eHNBcDU2c1JZcWQzS2R1SFRsRzZSNm95dDliVEtrck9FKzRISWIzeFd3?=
 =?utf-8?Q?EBOJtD1dRhWPu?=
X-Forefront-Antispam-Report: 
	CIP:20.93.157.195;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu11-emailsignatures-cloud.codetwo.com;PTR:westeu11-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(35042699022)(36860700013)(376014);DIR:OUT;SFP:1102;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2024 11:09:53.0722
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 79c15abf-10d3-4350-279b-08dcabd124a9
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[20.93.157.195];Helo=[westeu11-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5PEPF00014B90.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8814
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jul 2024 11:09:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63564

We usually have one machine and let the bootloader figure it out.

If there are bootswitches to boot from NAND vs SD card, there's usually a w=
ay=20
to get at those switches through reading some register. Set U-boot's=20
"boot_targets" based on that, so it tries to boot from that media first.

Another quick way is to just try SD first then revert to NAND boot. The SD=
=20
check is usually very quick because of the card-detect.

You can create the same image for SD and NAND by setting IMAGE_FSTYPES (to=
=20
ubifs and ext4 I'd  guess). Handy to be able to run directly from SD during=
=20
development.

To create the "flash the NAND" image, just create a recipe that RDEPENDS on=
=20
the production image. Add a dependency on "image_complete" and then you can=
=20
just fetch the image from the deploy directory and pack it in.

So no new machine, just a new image.




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
On 21-07-2024 03:39, ppanaccio78 via lists.yoctoproject.org wrote:
> Hello community,
> I have a project where I work with two different image recipes. One is me=
ant=20
> for production=C2=A0 and targets NAND, another one for SD CARD. The secon=
d one is=20
> basically a tiny image that contains scripts to flash the NAND with the=20
> production image.
> My question is: what's the recommended way to manage these two images in =
terms=20
> of MACHINE and UBOOT_CONFIG?
> How I did till now: just changed the weak default for UBOOT_CONFIG found =
in=20
> the machine.conf depending on the image I was baking. This does not look =
good=20
> to me because it clutters the deploy dir for the given machine with unrel=
ated=20
> build artifacts.
> A better alternative comes to my mind: the physical board is just one, so=
 it=20
> makes sense that both images should refer to the same MACHINE variable. T=
he=20
> machine.conf provides a weak assignment for UBOOT_CONFIG and image recipe=
s=20
> should=C2=A0 change its value depending on their needs.
> But I suspect that since the data store for each recipe (comprised image=
=20
> recipes) is a local coly, such assignment does not work.
> Then only two bins are left: mess up the deploy dir as I did till now OR =
use=20
> two different machines with different weak defaults, which I think is som=
ewhat=20
> wrong as the hardware is one.
> Can you help me sort this out?
> Thanks


