Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB8BD78785
	for <webhook@archiver.kernel.org>; Thu, 21 Nov 2024 16:06:29 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.80])
 by mx.groups.io with SMTP id smtpd.web11.2044.1732205183652637325
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Nov 2024 08:06:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=FCIHlAwG;
 spf=pass (domain: cherry.de, ip: 40.107.21.80, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wpj0ZzGkEqFFn6X0Z/3Jt3CxC/rRIkPD2hhNbZ6t8/y5+Njo7/R/wiYTbG8k+v8FH2JbU8Qh5+A0dFzF0QMjzQOUVHJ8u0DpKoUNp6icvl/w4bAl2pT5VSaybwQRqI6NYOlY6CdvcS/j/ghWzbkJ8sUohLX7OBLmtQo9ISYou9RyMDrelTJ7xjGSENldFKtPpOvpGcBjMDO1AAIwxrcTERNmt9dtKuzMuOfhjn9HWLCmiLZrhQJdjPSn6UrVoHy8+fIaSdPSz8PRcnD2+gstuj60D9Bi+zZ5gVka28KcE1+8LkK4hU7nCuHpIqPk+EELYqBzDyc7s/JpsreaK/8Jzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4udRmHGel9dslG/1tA+JmPmavaxhd2uSG1Ir/hg1onc=;
 b=WNOfSuNQhkSZQG9ORsCoiFmmeFzdeUOrHGHXcjHIHuXDwFzz6gpj9+8dJVQWXdD/EsI0rysfocrocUb8U+e8q36FyQhDXmwzLc/X0mcYlXcCNRDb2h6dawdBUFe/6kehoN10lEjaNZ/8XtpDCvFTBrifHiuV20fKz0MawbintacriRfIFyxqQOG7FDAj+R9x6+LysscXGwfhz0aYROschOA+fxNl6wlNoVjvkPLXS2r5nNrXzTdPO5ST264fuTtS6CGP6eB9yvAbI6NzA+WAZJf1Sw+IyemON12yyjPIReu70UBCjMETZyBwTN3//TfjoxNUnBSF/RVcPkpk+MU+/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4udRmHGel9dslG/1tA+JmPmavaxhd2uSG1Ir/hg1onc=;
 b=FCIHlAwG1EM9DQCIm83CMbw6W3/wD2kTAYKoUNWOebqho6CvyiplUblK01ZDRkdTBr7n1f9AoPh7q0k32HIzl4Y5RF8Gd/SjgDuXgKf9NuFyKEXJaNV6Rp0Izrr6uk17M89ZOVYx6zxkI46h8DNTYbGXrujt6svFxec1wNAhn08=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by GVXPR04MB10729.eurprd04.prod.outlook.com (2603:10a6:150:226::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.15; Thu, 21 Nov
 2024 16:06:17 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8158.023; Thu, 21 Nov 2024
 16:06:17 +0000
Message-ID: <bf7b385f-8f08-4c6a-9cce-92a962cf38e0@cherry.de>
Date: Thu, 21 Nov 2024 17:06:15 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Append to do_install is not getting called by bitbake
To: yocto@lists.yoctoproject.org, emailaddress.ashish@gmail.com
References: <D287.1732204964390353299.Etrc@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <D287.1732204964390353299.Etrc@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0165.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:99::7) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|GVXPR04MB10729:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c4b3f21-be42-44e0-dcd9-08dd0a466e43
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Uzl5VE5Zb29FV2p4NmlIc0hYaVl3Y2RRVmIrdW40MVpxaU1sb2V6aXh4SFJY?=
 =?utf-8?B?dmt1UnJrRHNVcXMxRXBEdDZLWkZ4aW9FQTBwdDdRWFdWOCs4MmE4Q1kwSlJl?=
 =?utf-8?B?VkE4dGJxcjVVVTdVQlJMZmM1OTZCWW5YbUZIeTc3ek1MZDRUelhZWHM2OWl6?=
 =?utf-8?B?YkZkeDNQQU9oNEl0VU04MWJMSDZoc2V5aE1Dc1VtMUExd0pKcjR3UUJBUXpG?=
 =?utf-8?B?V0xMMjNzZlJLaXl2QUcxdXdxSmtZckh3N2x4clpHNW9TaFBqSFVjSUdwT0NE?=
 =?utf-8?B?R0lpT3I1dGhzQnBGcEdtSlU1aDR1SUdtTFFXeEpVV2F0VFRIWlY1Q2t6cXZk?=
 =?utf-8?B?Q1JIUnZIY01lZURoQkh6bTdqYUhZR2lyWWYxR095UmRFYWM3VGNsY0F4NGhH?=
 =?utf-8?B?SXVacjhnL0FaTEJuNWkvOXpDYTg4Tys1bFZTMVFDckd6SWJSdjBCYTB6R2E1?=
 =?utf-8?B?QlQ3ZXZBalJiU2Y3WHR6UUFWY0tvQ015ZStRMTRkd2hlbzhnM3FwYnViOEh5?=
 =?utf-8?B?SFM2d2lHd1EzU0g2YXVNRmttRnBkbHpuaTRkZDIyZlNQTHFmMzgwaHdkd2d1?=
 =?utf-8?B?eU41M29KVVRQUHplUzg5aFRxU0Q3Qi9SaExibStMU1YzL1o3TlhWbkFuQnkz?=
 =?utf-8?B?dDFVcTI0Ylg0VGppS01NNXNCSWtsL0lCZHlKOW1HaEZKQ2Q5a3V1QVpXZENU?=
 =?utf-8?B?VEdnOFVNcDg3NDJlaW5sZHZObllIdUs2cDZDRWpiRDVub0tyUzU5aDRoMXl0?=
 =?utf-8?B?Rkh0VUZFK0dhSC9VUzdsS2NpZEZJVmxHMjhmR3R3bGlKS1JaM3VKUUlaaUZK?=
 =?utf-8?B?eVBDb0JNWjRWK3p2ZTVaTVJ0TFpJM1ViTi9uVUthOUgvUlNNTFNsOEdZOVZ1?=
 =?utf-8?B?M29uWE1IOFJoVmQxU3JPWTd3UFZUaDhjNmpnR2xZMmZDbGNwWEsvTmpPKzRi?=
 =?utf-8?B?Z1h1QVBNZVV0SWFad1dCLzU2VTlZdGF2YWE2bUFtSmJvZVZCRlVrVkkwMUM0?=
 =?utf-8?B?RDFIYlROcjFKMDV0MDRLWEZsS1U1Vk1nY0pWM0xtM0RSYThOejNJc1pMb2F0?=
 =?utf-8?B?N0ZLYU9FQklZcER5Y3VIanY5VHBFdXc0N25XTnM4ZDFaMHU3N0xFZGdaSUNk?=
 =?utf-8?B?NEgxeTM4eVhoc0plVHdMa29KenlXT3hDbThjREd4L1JmcEZSeTR6QXVZblRP?=
 =?utf-8?B?RFRPU1gwZmtLbXpDSXFzZnZVcFhyYWZ0YkxKaVZZV3B3Z2FUaHlwVUFUWm5Q?=
 =?utf-8?B?S0dsREFmdE9BMTVMNU5XVmI0c0hVQXp5S0JQQytJdFpkSmc4MnJ0MExvaGVp?=
 =?utf-8?B?MGgzc0d3RHNTMS9pZHlvWnBJR2s5U3NoZitydFJTclRvbUtzUndzSUdlcS9N?=
 =?utf-8?B?NlBSZzYzcW5wNFJrTFpiVnR2ek5vbUdKN1p5TnVHcG96L0twQnRNVlZhYWR0?=
 =?utf-8?B?c29ZNDBMZGNhYVNOQlZVSFFwdGR3ZjZIK2IvaXByc2QrbUt5WTBXT2IvcC9J?=
 =?utf-8?B?eWZKZlJrd01hcFhuSm1WUmZ2UEhrUGczdGRMVW5hN2UyUlBMS0hXOVBSMDg1?=
 =?utf-8?B?RmI3TWhkbVl4b3NLMTBSSGF5NlgwclNEY1k5VkQyeENHVnl1cXVWTGtiUEt6?=
 =?utf-8?B?bXZaOFhBUzlQQmhFUnpJS0tzbWlhU1QvRnRhN2t4VHlQUVdMZS9lQnVqU2Vl?=
 =?utf-8?B?aWs5Ly9xaytETk5vUVVNNjVCWDBDdFFiTTQrK2hwUlVncnNuRzlZZi9MT2la?=
 =?utf-8?Q?35WVPsp0NkvUdvy6Beca2TwpYGbakNLLRKuikR7?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Qkd1YStncVJVcis3N0VGSnU3ckswNDl4dkRjdlRiL2hSaS93ZC8wZm5rK2NS?=
 =?utf-8?B?WmNOaFF0czNkeW9HYWdYdU5RU0ZpSGlLUXY5ZlpjQTZlWHh5c2ZyN0J5MzZr?=
 =?utf-8?B?a2R3RG5sdlc1dnlqWXV3SVdPaVBBeFpFNndKOHRXL21UTkdsVWJwbW4xenY0?=
 =?utf-8?B?VGtXcEs3Y1lBaTVoOWZPLzJQeENOb09FYjA5b1RtbXdpYjVWRDRZR2M4Qzhm?=
 =?utf-8?B?ZTV3bHdyaUFtOEV4RWg2bEdkMG1TN0lHbU9yK0xzR0tEQ0ZGeFMvS3c0Yks0?=
 =?utf-8?B?SzJkMVloSzZ6QlZyOFR0eVh0aWJUMmQxeTlNeEo0cW4rR1lqNkllVGwySDJH?=
 =?utf-8?B?UGpickIveU5FZ2dPMS9IWnh6TURMYWZ5ZnpSN1ZPSFFYTGJId2NBcnUzUzJn?=
 =?utf-8?B?M0V4a3d2cld5eEl2ekQ5Y1RTb0VaTFMzdEp0YzdlbTBLa1VPb3hpY3BtZHdh?=
 =?utf-8?B?aVpucGl0Kys4NTJoeXVFNGk5Q1Y5bVhBbmZOd3Z0QUExejFZNHBmektjSHhw?=
 =?utf-8?B?WE5LcW8wQmM1NTNwQ0M3aEtCM3l5RmpETWx3YzBXeFpmWVFYclU2bFBJNU5Z?=
 =?utf-8?B?WTVXVE9Bc0dzU3h5cGI2TXBCY3YyZnBTZ0V5QVdsYVd6Z1hsTUVoZmpiY1RU?=
 =?utf-8?B?cUluQWdJblNRZnN1UEdnZFgvSFFWVnBQVUhkKzUvUFQ2TUdvQkdrZGVMVENa?=
 =?utf-8?B?ejAvRDFhNEU2Z2lCckJVRnJNQ2M5dVZqV2k3NC9HaWRUeVJ2eWlRdnhERXIv?=
 =?utf-8?B?Rm5rSHpJVWdpYXN1Z24vdGJLY1E0ZXY2ZGJKVk93bmFYaDhPS3hTU2tnd0VQ?=
 =?utf-8?B?RndzQXU3SHZwWThmNjRxaEh3QmZtc1Q5S1VhbE9PdlZPU0lLb0pLaGJQa0NV?=
 =?utf-8?B?bEhLM0JacG5HU1hXNkFrdDE4aWxBOW9UNDU1ZUtkR01XdTVSczRNVnR4VTUw?=
 =?utf-8?B?Qm9tMFRSWEh0MzFPNU9ja2hOK1pjQ2x2ZTJEZGx5aU1OYnVkUzBxNG8ydE4z?=
 =?utf-8?B?T0JDS3Vwc1F6ZEk0cHBSM1lKTGRxZnF5TXg4L05iMlVYaGc0aVhleGpqVnRC?=
 =?utf-8?B?ZndkUFNRMUtaOTh2cEgwVDJKNTNxZUFCR0hWcnU0VU5KUjRhN0tUeWVHSkpq?=
 =?utf-8?B?Sm9aNGlMRDZpNElaWGtQTWpsVUd1dWxHQzIrMXU4L2pGbjQ2OEJ0TExPWkRM?=
 =?utf-8?B?YXFNUEFaMk5BdGhvaTlXRzFSNzRaVDdiZVJkcDNSNnNORExGaGRaZ1FJR2JV?=
 =?utf-8?B?OUpZdDRBZU4yblJ6THdkdUF0elhKYThiMlJwZms3YUVLTG50MmNwRjFNNEw3?=
 =?utf-8?B?dlh3Z0FCbFh6SHcrd2xjZHhmcWdNVUtoTzhIMUx4TnVHQ0N4MUtWNFNoUWto?=
 =?utf-8?B?WnlLYjBIYWx3MCtxd3R6U1d5U25GTzdUSG9JNUNxZjlraEYydTl1eERscW1j?=
 =?utf-8?B?QmNMQXMvZ1BKRms5MmV1WXNKelQ0NmVLQWFVdElpTmdQVDRsMlVyK3g2WUQ4?=
 =?utf-8?B?R25Va1AyaENRNEJSYXZ0dHpxVW9EVGsrMzNJbklnRmlRSXF1Z2EzdGZGVklY?=
 =?utf-8?B?SVRDK2w3aXUxTmREU3FycGN2cTJSKzhESUdyL0FBSkc0bTYybHV3dGFSNSsy?=
 =?utf-8?B?ZnMwVHJ6clphcExzUGNsU3Y5eXJzMXVMYXAwZXorSEJRZzNHRzVvVWZCQ2h0?=
 =?utf-8?B?aEcrWEh6QVYyTWF2VFVtUlVmOFNiVGIwSnhvdHExRTQ4ektXZXplZUw3ODU2?=
 =?utf-8?B?SklJMVp6SzhJTEJOb2M4UHBuNVlxWUhqUXlZekI5Qy85MElYcU9JMlJMdENX?=
 =?utf-8?B?WWNEV3RpRVhCVWxraWwrN3NsK0dlN2NDUnVjVVhlcXVPZkd3VWFEUEZobmpT?=
 =?utf-8?B?enpVUzJ2ZzlTSDI0S1VKeFNXTHJCN05ZT0tud0MxREZCY0Y3cDRLQ1RHUVZN?=
 =?utf-8?B?VGtVblE1V2o0ZmpJek5LOWxiUU9PZVpDZjE0WUR3NVk2Q1MvaTNJNVg4TnE2?=
 =?utf-8?B?d1Y5Q0h5NnViTURpZHNYUWN4RnNsMHVFVW9TeVdhZmo5c3ZudGlPZlZ0dnFm?=
 =?utf-8?B?aEJGOUdlV044TmRkNWJFMGhVWUU5UnpUTEplYVZWZ29PZnFGeUZNc3BtN1pR?=
 =?utf-8?Q?MGeSjR3u8XzGTbXz5CADHRUjY?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c4b3f21-be42-44e0-dcd9-08dd0a466e43
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2024 16:06:17.4265
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EcippQsDqxvqVBELxuTydew9Rf6NUsOZ0IoyrCbzzZ4nOQn9osOlsJaj91lKlxcntwEir0bl8FKYytYsefWj+CR4ATlBzcMJtYn/iKiCFb8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB10729
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Nov 2024 16:06:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64328

Hi Ashish,

On 11/21/24 5:02 PM, emailaddress.ashish via lists.yoctoproject.org wrote:
> Hi Members ,
> 
> I am trying to add an test debug print by append logic to openssl_3.2.3.bb
> do_install:append:${PN} () {

do_install is specific to a recipe, so you don't need to specify 
do_install:append:${PN}

just do_install:append() will be enough.

OVERRIDES are applicable for tasks, but PN isn't part of the OVERRIDES 
by default (well it probably is if prefixed with pn- but it really does 
not make sense to do this in a recipe, as it's already guaranteed to 
apply only to that recipe since things in a recipe are namespaced to the 
recipe (you cannot modify a recipe variable/task from another recipe).

Cheers,
Quentin

