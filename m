Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEA87C5B543
	for <webhook@archiver.kernel.org>; Thu,  5 Jun 2025 13:08:09 +0000 (UTC)
Received: from AM0PR83CU005.outbound.protection.outlook.com (AM0PR83CU005.outbound.protection.outlook.com [52.101.69.2])
 by mx.groups.io with SMTP id smtpd.web11.7292.1749128879650085320
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Jun 2025 06:08:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=XJC01yC5;
 spf=pass (domain: cherry.de, ip: 52.101.69.2, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Erj6pXC5GinfExWbv7TEr5nedyQNs2tlnx9Gm5JHo4sfXhqKkYYhn6FL2n2n7juOEAZziK2e5v5zpcDq+knu/CYF6TBt63LqAvFyLSBW9G59FkcqNQaOcqGps/7mxv1kf14gY/OyA/hnpj4pBBsGXLg0pVw0AlKI2pD3LtYCtSaXmbSSUpxOhxHCJgbir9IAdEzAp4BrWXO0oNbCVykFBBX46aEYshwoPEvIV1MfnNFMoxVQ92HcUL1uojdXfH9e6y6O/ZTS2TipAkiR2z7o/6UPTa2MH7ckebuhdsZsSfC4XJNLdlkukIA/8gZXpEFsXqmwpBMx4GvlKsEw+/V0Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nOOFIs2qzXtp3rKlKgQ04xVPzbQUqgtdBqr4eWgRtH8=;
 b=nYz2ZlwtxMaM1fSM99hd1ZaZl7swIG9uWuwy3L1qDjQdTep2NSTwpT39buTseaYvxqEGKiVWInZknIJ7AGmC2aewTsl/rhvxzT0antyKRK0CrzcrDcWheEOtRnjFSNdJfViIlSCFvCbVO4IK+0uyWJfBbjyUfsCoMjdnqwUilawZGw3XWhYivxin0KSqfOk+yEfSf3shn0mWWq9drmrcCOVdU/06nyX8hUPZ6goNlcXucXGYAk+vG/zpkefY4zysrkuTK6lGNjrF6V/fAuqLSFm2dmcwpLv0SZmRNrvpHDqS4IyvKVK7uo+W6bjI+ga8VrJwY8Kl6COXncYihGo/yA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nOOFIs2qzXtp3rKlKgQ04xVPzbQUqgtdBqr4eWgRtH8=;
 b=XJC01yC5FUGWzkMv/vHhgWH+R/1xe0/VyWkgWlA3WXDPJjFcvV2TP+LmE6VJFfPYe6k+c8sZ1Z/n+KRUOa0Ydj8EnYpqVEhBFrA/HD0WDFX/Ce964BGNPD2+PqMJL2yVYyMbFGlZiHWGyufvXeQYG4r+kzMT5E6GghZNKZUBGwM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DU0PR04MB9587.eurprd04.prod.outlook.com (2603:10a6:10:317::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.20; Thu, 5 Jun
 2025 13:07:43 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%5]) with mapi id 15.20.8813.018; Thu, 5 Jun 2025
 13:07:43 +0000
Message-ID: <955097ed-505d-4d10-88c0-366de83e5ec9@cherry.de>
Date: Thu, 5 Jun 2025 15:07:42 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] meta-optee
To: yocto@lists.yoctoproject.org, mimoghosh9@gmail.com
References: <2LPI.1749122640654962134.S5P0@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <2LPI.1749122640654962134.S5P0@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PR0P264CA0133.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1a::25) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DU0PR04MB9587:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b161515-5baf-4594-aa68-08dda431f538
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?R3RoVDYrUWNhUzNnT2tHdEV0WEtlUG1rZXlKUDVuSnJQWXBIMjBXZlFaWjFl?=
 =?utf-8?B?bTIvWGp0Vk5vQWFxSTFzR0NpSXU3YUhQYmNZZUFuRm5WbmxrUXhNWlpBVGdR?=
 =?utf-8?B?V0hIZHRMYStBMmJuN1FoRDgzUldyY3RQdTBoUCtPNmc5Y2xkcTVlVE5zZHpl?=
 =?utf-8?B?RzlXanFqTWlZdFhieExVck8zTzRYNFAxdEtBNWNLdDBRMm44ZWJmZitud3k5?=
 =?utf-8?B?bXhFRTJwMXY0UWM2K0tnQjA5VndwYWd5dFczUHQ3eThCTVpoODV4MXZYcTZR?=
 =?utf-8?B?VStxaHA1aThLNGhHVnpIcUZYL1pMTWx6eThHT1YxYXNtMjdpT2xsUDZkQmZV?=
 =?utf-8?B?dDdnYUZET01adkdYaDZOTGo2V1k2WFR6cnZYQmpzcFFEd3hUU1k4ZElMOHVH?=
 =?utf-8?B?WUZETjhEdTRLZUQwYzNrMGpSTDdYZWtVaTdpUkJvYUhLeWJsUTAydlJoaUYw?=
 =?utf-8?B?bkllRHRVYnRYTGErR2lxN0s2dGUwOHBCZDNnalgza3crclozOC9sRngwWWdW?=
 =?utf-8?B?eGdtSzB4ZFFoL0hPMXlQQTQ3ZEdmOCs2VHRWRitJczJnSllpaVV1VVA4OGdE?=
 =?utf-8?B?d1dtb2V2c01tMk16czdTc0poZlg1ZXRpZzBtc00xV3FtOTd2VElKV2VkQjJz?=
 =?utf-8?B?bUhsSVFOem5qVmMxWml3WCtNeUtBL1dGb3hBRjU3Z2d1djJBai9hdHozZkw1?=
 =?utf-8?B?U0ZPcFpsdGZNS2NzaVVKVk9NS3RSM1pvNHpROTlLWWdLR3ppcE1BQ1RqMHlm?=
 =?utf-8?B?Z3pkTEZYU3ErTkJEcEg1VWtVMlg5L1M4d0hkN0V4cmkxdVJmdmlMajYwa3d2?=
 =?utf-8?B?Q3hhblR5ZktzZWQ4NXN0blZoSm95blFKZ0VFdmlFU0dEc1dhNWFqWUhsR2NY?=
 =?utf-8?B?WllQY3ZuME5UYjlEZmdhOFNQZTBDT25kU2k3L1hVMm9ZMTV2Rm5yOUhPSnlT?=
 =?utf-8?B?UFRzQm5ESzlqMVo1cXJFc2hwWFJBMFJmb2xIaW1WUCtPM0FEVUVTYWVNQjkr?=
 =?utf-8?B?cEt6cENQWEpMeUZ6L3FvVGVWU1pSKy9rNXhhRUhDeVhrSmRoUWE4RjcyUlZ1?=
 =?utf-8?B?M200dXo1REpVUnhpL1RvRGpZRENjdGRHLy9IV0Q5am1pRTA4RFIwN29nNUFv?=
 =?utf-8?B?N2tPcHJFZ1Q4K2xHekdZc3ZLcEV0SXZwZm9pZ1lUellxZXBmQTN0QUlWQWxS?=
 =?utf-8?B?T2Fvb1d6V25vUkpXaE12UnByNGxOVVVHakVQRTY4Wm11MmQvMXJyRkI4aUhL?=
 =?utf-8?B?ME4yUjVUM1R6ZkFuNi9OSjNmQ1Vvd09JNitDQVFacEdiQmcyTHpITjR5RmNE?=
 =?utf-8?B?T0d3a1BnaSthZWE1NHlLVkYrSVBuNmFxQ2RPWlRZSXRZYzRFL2NJbDNIU2VO?=
 =?utf-8?B?QVJ3T1hpbVM4L3NpTFl2cDBPVnJDbHRGT2RUeE9LWGRIVzA3TFloRVFIZ2xX?=
 =?utf-8?B?S1BXZWJHVUxPcGg0Uy9XQmV2YXF0cUpwSnNsRXBGcWgwdlYrNTJiQm05ZkEw?=
 =?utf-8?B?TzdBb25wbEZNUEhScVRhWEdWWWhJV1lFNTZTd25qRVozS3htdXFMSlRGdWhF?=
 =?utf-8?B?YWg0TmRhM0UwbHp2NXY1ODFqVFgrQ05oNERkM0pNZm43ZVJtSVVKZHB6dE5S?=
 =?utf-8?B?KzBDRGg5SzFoVStMR2EwRzg2SXJFaGFYRGFEVkVCM3IwY05BbE1mTnhSbEtt?=
 =?utf-8?B?cjNQK1JXRDZTTjZjNWJJZ2Z1Vk1VMUNuS0x2TllEMzMvQlhvcWxIYjhCMWN2?=
 =?utf-8?B?M2ptaC9wYkVFam0ydzZjdGd3STllaGd5KzBxNjRJWXZVYmd4dHdpakd4cmhQ?=
 =?utf-8?Q?jUkuLl5qjIW90v5pxQRHTy2549v6mqsBBZoh4=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QVczVi9NcjRkMkZrVytNa25WUTZYK2NsZ2xHSnMvVTF2WkhxRzVFNU5FSk1a?=
 =?utf-8?B?akdwS0V1U1JKQXc4SGowUElrVjdSY3FpSnFJcVNISG53dlVWclFGRDlXNnAr?=
 =?utf-8?B?ckpGQUM0M1k2VEVReDFDQnBmdEV5ZEwyM1dvRk5CTVEyc1MzUzRJblowMVJP?=
 =?utf-8?B?Mi9kMng4VmpVbG5Ta1BjOEZWNkxPY1kvRjF0THhmOFJaaEltK3psZjFBYmFW?=
 =?utf-8?B?VzJtN2NPWDdHaW40Mi9HMTMrZlF5M1M1YVB6NVJmekVLVkhqcXpqRzB0UWMr?=
 =?utf-8?B?UlRMTzJ1NnorU2NaUzl5eGdRaTZCMElyR1R6RHgySTRiTnZncHo1ZzJYdUlj?=
 =?utf-8?B?OFB0cVFLTzRLSWpHUWZWSVErZDVOZVJMWW1MV3plL2JUYVh4azZjbkNHbHdl?=
 =?utf-8?B?SFY3SmtyMHNLb0tzY00zRjlnWmRDUFBaVVdDYjNGcFo4ckh4dkJyNWdqRG5q?=
 =?utf-8?B?TUdLcVNNNUN6ekVSWTU3dkYzZ3Mzc3d4RTNUajFBMEVOR0liTU4yajN3QU95?=
 =?utf-8?B?NzJUeWVMdmFQTjhleUpKWnh6Z3ZlMEQ0RXdHeFB6elYxbjZzaEFCVHNuWkFQ?=
 =?utf-8?B?V0xGbnFWUmhkTnlQODRvSkJJMTkrWllsbzlOZEJKL2hBaHR2cmNPcDM2SURD?=
 =?utf-8?B?M1NDbnI5d2lyYlgzbVlEQitOVmxDa3FQMnhCa21xYXFBNjBJUktnNmk3L2hD?=
 =?utf-8?B?MHVwMEF3SEprdjBYNXQ5RlQ0M2hVSU1ualFPN1FlVkQ3NTJRV2wvSnNpaGJy?=
 =?utf-8?B?bWxVVDVtNCtqTGJwK3NXZUh2YktLMGtBUlp1aXVZMk1haE5iSHVQelMxWDht?=
 =?utf-8?B?Q1NhakxFa29OL3JjMDU4WkExcjBaQzM0aXY3YXQrd0o5VjBya21KaFJWeWhu?=
 =?utf-8?B?UXNZWlNXWTAzWnZVbVkxdUJ1WEVPbC9kYjc3MUJ2SVhrL29nMkxmRk5RZXR1?=
 =?utf-8?B?bEZyK3o2Y0ZlaFZSS1hPcXJpK2VtNUozcUtjaE1MeFc1c2RGM2R3ZDVuK3Vw?=
 =?utf-8?B?M1hJN3ptYUMyclN6aHFLSWkyUTlpNmdYandOUmxvd041Uk9iVEhTK1ljUWY2?=
 =?utf-8?B?aDgyVjVVVzhYMkNxOFRHR1BvWVNVT2NCclp0dFJQcjJ3OEFXeG5MaTZ6OGtj?=
 =?utf-8?B?dTFBRlhPeCs2TStIa3Q1eUFZNzdoK1ZHN0MzdUpPSXd2LzRNeUJFb2VLcXY0?=
 =?utf-8?B?VFFYb1JFNmhjRnBLakZ0dTBydXBxWi9RVWdsWTBUYzAxMU95MmdiWW80azJz?=
 =?utf-8?B?YVJOY0tZKzJhN2VPUFhmNjFNQkdMSzhUL2JIc085czVzMXVZWmpPcmJsZGd3?=
 =?utf-8?B?T0dLV1dDR0xGQnB6K3RsTWVYbWpXZ1BOTVVUeU53M3NDR0JHSGFTRk8rZ3g0?=
 =?utf-8?B?TVZ5NlJXRlc3VVI1akQ4WWRuVkFIbm5pVWNXd1NjbkM4RmxaTWJGRXo0aU5t?=
 =?utf-8?B?T1EyaFhOeFhZVk1KZ2xHUHhLeWZXSkNoZElMR29aaEk0MHk4QkhBUmpyMlhQ?=
 =?utf-8?B?bE15emhFVmRpbXJoVnh5bGl0RFk3RXpERWQwUEpNQmpBMEY4dDdLMFB0VzVt?=
 =?utf-8?B?SW5HMHZ3YzRYS1BDeGN3RmhRVmxEK0xKYkREbzc4aG9NWjVVUllmWlR6M0xt?=
 =?utf-8?B?NnVac1RUVUJUVy81eHhlQXU5N0pPRktKOHpwN0NyN3ZVamZDWnJyMi84cGZF?=
 =?utf-8?B?MUJFN2ZCdXg2TU9aNnNjamhFbEErVzl5eWExcFJWOXJxdHR4d1dhQ3NsSFR3?=
 =?utf-8?B?YjMvdDlZeTBNa1o2NzRGRVNSUlUzZHMvUTgwYTBjZHJpdGJlQWEvQ2kzL3JZ?=
 =?utf-8?B?cDlMTzNmdldTN1ROeHZRdmJsODY3RXZwdzZwaytDZWtleE9yRHI1QUMzMUlq?=
 =?utf-8?B?L3NkZmZBZGxUVEswRWt2QTJjRkw1a0ZGSytEcVlIWEtGcDhKcFZTOHUrMGVx?=
 =?utf-8?B?ME5LQ2M5Tk01NVQyRFh2T1NtMFg4NG5UZTNVMm9HbS9FajRuMXp4bnlycG8v?=
 =?utf-8?B?MTZ6QmlBOGE2Umh6aHp3SzdobSt1V3Q3UnRsek8zeFdHdTNkUW1DM0w1UHVW?=
 =?utf-8?B?YlJjMlZMODFCcG1RMi8yRGpZQTBYQmphQVRETG1xbk1BQXJHY1BZNVJxeHNE?=
 =?utf-8?B?NHVuM0RRbzd3NlNoaEI2cVJ6VEVZZCsrMHhQeVNSN1d4NEd0TE82aXJmdGhX?=
 =?utf-8?B?Z1E9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b161515-5baf-4594-aa68-08dda431f538
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2025 13:07:43.3443
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IHFrLv7MDmHCQ1GMF0yTHxkwyseQKLRh8/q3qDhgVT8C0oUV3O+X5Zh38hJSxyiT6pXOfDOnmruqLbk/BTB7c/LIGY+CGdGDbLUDju3QQCw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR04MB9587
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Jun 2025 13:08:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65468

Hi,

On 6/5/25 1:24 PM, mimoghosh9 via lists.yoctoproject.org wrote:
> You don't often get email from mimoghosh9=gmail.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> I was looking for meta-optee in repository.  I used
> 
> git clone https://git.yoctoproject.org/meta-optee
> 
> 
> but it is getting failed as not found. Does op-tee remove or what would be the issue?
> 

No clue, I've never used meta-optee but we do have op-tee os and client 
recipes in other layers. For ARM for example, it's in meta-arm.

c.f. 
https://layers.openembedded.org/layerindex/branch/master/recipes/?q=optee

Cheers,
Quentin

