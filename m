Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF291D43356
	for <webhook@archiver.kernel.org>; Thu,  7 Nov 2024 12:08:54 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.63])
 by mx.groups.io with SMTP id smtpd.web11.70208.1730981325290557118
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Nov 2024 04:08:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=kpvpD8eN;
 spf=pass (domain: cherry.de, ip: 40.107.21.63, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hXI9ueGQHTBmE8klGhLrxwzbxN1NwGqdhEZZ0isXouCDzqkdQwwIitctjlnzVPRRK6vcCNWugj6p5lUPWi1lEAfjHkwkQZhF8wPghgGKk/oMGH+TOIMi7VyqYCQczFNG39kHDfVZ8I+/TgkOxUm9KgsromRya8NzPs0Gidq7ZcnJK0zqt79dIqXPZMF+X6E2sraI1TFVvt0Ozn3SDXjG+DE2XnnCt4iGyUNd1wZ1GqNAGh7KCD47HhOKmRUPfJqdyUPRCwO/+PjocjoUBZcTrhYtyB0YkUKYiYsVNeyY/VXEUX85p7PHlvLJkB4XqIbIi1LkiMTOzoLmwWqq88IyXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+GL6hCt+02aKcJ4Mo5gw/quM0OnX3pmOoBViILcTaZg=;
 b=l1oTrIGbFOR4/Uem3MSDwNV/wxgxP8nKVtTT0zQDFPK/XqoUL4RuGQEDoxfsDvZ+QgbhAOCEHHr/SW9afRxyE2umv3FA1Jxy/iuTFSnbajZuAEmBdUe9SUFK4bW+mJSHSad3sDCXmHy7hKfxA4nJFH/rm1ymSylZxTTSV3qnwKFXi4Fy7a7pfelVz4A6Fsh+BmrEiqRKvvlmIILlCinQYfHZXs9RRSlUvb90nvc4qZkJWsf1G5w2X099kYQUqokowqAfGKXDIIKFHEZ86zS9AMCVv34nyrHTV8Xzl5Hl4+Flp9iULvPIIIflV/VYqYsP4/hVhCIWnF3Ivh3SZ7XksQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+GL6hCt+02aKcJ4Mo5gw/quM0OnX3pmOoBViILcTaZg=;
 b=kpvpD8eNV5gpNDHr25fB3UJXbywZv1XoUiqA34OtbQMFauG+iMKuPvkMdenPXRiycCM3oW3Y2c69FHeoDVsKIHOnwPQJXeWQCDqsLXbGF2+KyGcvGgyGy4Kdy8X5pVU3AuCLzJrDxBVQSg0Qv0v69n8Xp7jGFOQc2HwywG+V95A=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PA4PR04MB7888.eurprd04.prod.outlook.com (2603:10a6:102:b9::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.18; Thu, 7 Nov
 2024 12:08:40 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%7]) with mapi id 15.20.8137.019; Thu, 7 Nov 2024
 12:08:40 +0000
Message-ID: <c9c47880-69c6-4f9a-86b3-d2d935d21b72@cherry.de>
Date: Thu, 7 Nov 2024 13:08:32 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] exclude layer from specific image when have multiple
 images
To: haimbachar2008@gmail.com, yocto@lists.yoctoproject.org
References: <4e77d221-831a-4985-96cc-8e9fcb301969@cherry.de>
 <2650.1730979175262611028@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <2650.1730979175262611028@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0135.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::19) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PA4PR04MB7888:EE_
X-MS-Office365-Filtering-Correlation-Id: 820028d1-9e5e-4e96-e965-08dcff24ea7f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?N2FTUExyKzBCZGdycTFIaDJ4Y1J5ZCtQTGlVRGMzL3pWb2lzazJYVFZoR2JF?=
 =?utf-8?B?d3FZYi9GWnlMdXpBUnFBQ1FvY0JNQXhhY3g3cWc1eTdOL1ljcllXZ05TUks3?=
 =?utf-8?B?cUNITWN0U0ZEdll4YVFGblhRNFJIMlBFNDVEVk5uSmpvSURZWUFONHJabHFl?=
 =?utf-8?B?dm9GSnA0NFBQbG1OSU9zcWFLUElsMUMzbTJGdDNyLzZscE8rNGRDdWtIK1lF?=
 =?utf-8?B?VE5JcUFIT3dmYTk1TXU4NHZvd2RhRU16UHhxdFpRemJBLytGQXNRV0FrWXdF?=
 =?utf-8?B?VjBYd2t5Vm8ybG9xSzNGYVRXK0xJSlBqdkJOcHV0NDBOZkdndjhKb0tRMVdm?=
 =?utf-8?B?VS9tNzJmNFJUWUpnNVloelNuVmZyVkJaRWEyVVgrdXFEM3FuYjBZMGhMWVVG?=
 =?utf-8?B?OENnZEtDaXlraDhBZTZvRXpnZ1AxMmQ5R2ZsN1BVc0M2dXRPOTd0YkwzVmtH?=
 =?utf-8?B?TG9ha3M4U3NPVU11YWsxdDNvK0R5clpXa2Z4RWVFelAwMU9RUWxvMmpTN2Ft?=
 =?utf-8?B?OXdYVlRRVXVvV0hlUjJORGw5WW0ranl5MlE5dTkyTWlneVlndTl1bS9rdDQ2?=
 =?utf-8?B?Mi8wVFgyUkJibUh3WEVrYnpBNEpIbHd4TFVTVnNOL2tOdk10ZC9MR1pHdlUy?=
 =?utf-8?B?cFE5NUJhVnNtZlY1TmpJeVltT3FYVHRpcFQybFZBc2dXK0hnTzhPeGZaKzFV?=
 =?utf-8?B?MWpieHJsb1U3WnZ0YXBJMTdpWEh6OXNyMDUzY1NJUGpPNHNIeXRSYkIzcUl2?=
 =?utf-8?B?UCthbnRZTWM1WHVtZGttSWlNSGpWbnNJdklpdFZRM2IwRmdQSElrU1R2YXBj?=
 =?utf-8?B?QUVHcGZNcXZpcm1YS2F3QTVIbDNCR0JoS0RHUkpITWI5NDRVT2xJOWhyVUJM?=
 =?utf-8?B?akRycHl1c0ltUDZxWVBTV0R6c1B6ZG9HdmhZRENXNFNWTngzQmRqczd2cU9m?=
 =?utf-8?B?SGVrK3hJVU1pemQ4M1FnbUhvc3h0bmpyRGdDc3NYZEs0OEt3NXdqMWl3ckVF?=
 =?utf-8?B?dWFER1pLL2VFWW80bjQrYVlZTG5KWkpLZXZPQmVDWVBkNFhmRXV4aUpJczRx?=
 =?utf-8?B?VDZGZ2FKak5KazBBSGtLWmpVV1g4dHlEQjVmM1A0UXU4MzJDczdES1VHaVpr?=
 =?utf-8?B?V2JIQXJ2NHJCUXJrSURTeGpJU2RrY25iQlRYeXhHY1NvUkFPcTB0T2NGem5p?=
 =?utf-8?B?dXZNT1A2RzYraDJBQjJ3NlJOMXI4NFBxM3Y2YjhWcXJHenN1UC81d05UOVJq?=
 =?utf-8?B?U3RTb0U0Q3hlcFdXYy9XUWFrb01kTTZKMzVveWgvT3RmTkk5WmhNOXhjeWNY?=
 =?utf-8?B?TXBHTGlBa3RDVzNST0UybFpuYWVuTDUxQlp4UW5IM2xnNGZBbG9vcC9LZ2Rm?=
 =?utf-8?B?Q2ZwOU4wYkU3WVlKaG5KbUVEUFV4Y2o1eDhVd2RnK3plVEhDWFJmSW5BU3J6?=
 =?utf-8?B?QWl0Njc0WW5GQ3F4TElNbnczSHFRTHBieE85UG1Rc1J3MWNUVWV2c0F2NC9X?=
 =?utf-8?B?NEJaTHc1bkl2UnpWL3ptTUZLVmNlVlVhQjE1YlJMQXgvN05ycWhVOWtFeTNp?=
 =?utf-8?B?MUhLdGwxYVdlQnV1eUkrQ3prVW5HWjZZeGZjWXZPcDlQbExCcGxhTmlZR083?=
 =?utf-8?B?VlRLQkRFa0ZhMU9pMlNlNnNKNHRyeWtZZjMrZ3FIVmtQNEFMTStWMFhLd0M0?=
 =?utf-8?B?TnNObGJGVTh3dHBIOUk1M0k4endJeVI3aWY3SjJlOEJhNjk0K2RkSE81RlBB?=
 =?utf-8?Q?raTy8Q45kcJry6Z+ckN1zOtvhI1jxxpnZJGsvjk?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZEV5ZUVjSTUrUVZhTXF4aXVHVmo1dEhnMHBQQXRPVEVHWUtReEU2bmFrc3o2?=
 =?utf-8?B?MVY4c1k3aHIyYk9XUlU5MndvcnBEazBZRVNGQldydWdFWlgxSlFROEg5Y0JE?=
 =?utf-8?B?VVlocE8xeWRBNTFRcSt0b3R6cnBLRjVSNVRWQTRYTmdpTmtPNUQyYVB0bkV2?=
 =?utf-8?B?Szd5YTFPWWJFN0VkM2MyaE9jVDZTYnBHWXdpTll4MVMvaHAvY0VtMW9IUWNv?=
 =?utf-8?B?dVZvbTFERXZIbndTU2ZhWjRkY2ZlYnZqL1I0K3h3ditlYkJoKzlFdjhFYmJ5?=
 =?utf-8?B?dW5kc3AvaVB1VWt1MXRjVVVCTzArNUl2aWtNMENqeGwwWjBtUFIyTDhiOU1v?=
 =?utf-8?B?YVM5bVY5ekFKUG9Ic0grMUNKMnptaVhXaHdTRElZcWVJVENlMVpySTRkZUoy?=
 =?utf-8?B?WWxtWUsyRWNqK1VLQW11b3lmcGJYdk16d3k3K1UvVnVkWkRuSDRxU0k3Qzhs?=
 =?utf-8?B?dng2WWtLMDVrenZxZGVQYmNSakMwbVRTSG1KZTNvRnhoSENpRVN3d1gvaXFw?=
 =?utf-8?B?RGM0dklBajRIcUdNZE8yeUoxZnZvazJqb0N5QVdSL2tNUGRubGRZcGVyWUhw?=
 =?utf-8?B?TTBzcnlnTUlJOWRxTGx0b1pmcGRwS3RMaHc2RDlaa0hGaVVDdzl1UVZqOVc1?=
 =?utf-8?B?NG9nY09TWVZGUjdoYWp2UjZ5WUtwSDNUUnlWNXRhcmV2S1hzS2lYMWtEcEdI?=
 =?utf-8?B?aXY0MytYUmVVWXQ1RmN0QkpQNnY5QU5IaTA3bFc1ZkQxS0NxZVNNb3U2NkRW?=
 =?utf-8?B?d1VIYk1wYnd2L1paYkszVEdqdElMdml6SGUzb3prRUJsSEM5c2NFVWhjRGF6?=
 =?utf-8?B?U0IxNHNSN3hxVnNzaUZwWGUzNWd6cEVaYnYyRjRNaDNHYlhYSlEyYlhQZWs1?=
 =?utf-8?B?eXFCUTBYVkxKWGF3ZFRic1ZPbGtzTTZ5UjUyOVpkUWRpbUtKL0ZaK2o2RFEv?=
 =?utf-8?B?RFFBRUxlZ0g3VDBHWWZXc2hJTmN2T09Rb2hmNzZza2lxbThpZHU4YjJGVDVt?=
 =?utf-8?B?Skw2eXJ0WmFEd3JPRitGYWZyR21IaFlibWpuYy9wbHh1cks0T1BHS0RsKzdQ?=
 =?utf-8?B?b3VnY29qSGJSY2tuSFlKdFEvZHBtYXM3TTIxTzc0Y1JPMEJmZURKTzJOR0Na?=
 =?utf-8?B?YjJpbXlLWnJzSERMaDJNSG9BaHY2RDZTQnNJYUlzYXNmMjkrdERDTVZSYkZG?=
 =?utf-8?B?allySWRvSjlmUW9XTk41NVFQQWsxZFZOSTFCaEVnTStJTVVnNG8zbGZhbGhq?=
 =?utf-8?B?eUVEaGZQSDhkSDhBQUQvZEtSOVhtYnRxNUozd1hNNkpBeGVFOE5UYzJLSmZE?=
 =?utf-8?B?K0dMNERoRDFHT0YvaDRFUThUb1hsY3hod2p2MUg1cE1vYitsb3hremZza21y?=
 =?utf-8?B?SWdRMXk3MXBoaHdKazhZRWdpRStJTVVQS1hEcjFxdVNIYVd1MkM0OVZTNEtm?=
 =?utf-8?B?VDJKaE91dGd1eGdZM2dQUkd6SE96R0tlWjNpdnpjbWcrZmFhdi9zQ2tYR2pJ?=
 =?utf-8?B?VWxDRkRNcEZ1ZEJQZVJDSzNTM055SEpsUDF5N0dtYUgvRHA2dDhYeFlHTlZz?=
 =?utf-8?B?dFBUWWE2MWY1eG1JWHpEUkJQTXdlS1VCRFdYMTAxcFJCOTRGNFVZbVY3RS8w?=
 =?utf-8?B?VHV4WHNtd25YWUtwejZSQXFVSS91ZlY4aEtuZDhPNWQ2TnF1RjdTZTkwcDJ3?=
 =?utf-8?B?em40a2J1eE9OVEVyZlE5M0tyLzVzN2VNblJjOElydjhYSlMrdWR1WWpsbzUz?=
 =?utf-8?B?WC9sTy9idHlWd3VxK01lTEJ3dWNnanAwYmpBZ0FUTnZsU2dpZGVMTlVZWVpS?=
 =?utf-8?B?NXRzUlJZcERRcEtkZUN3OHAwcG5VTUdETEsvMUVBQzdoTFh4blBkWjF1Tk1P?=
 =?utf-8?B?WEh3b1ZhN2pqMnF3ZG96SERtSHRzRy9jYlJYZTRIU0RhcXZNVXZkcjl3R3di?=
 =?utf-8?B?N1A4Z1piN0JJeEM4Vm10MXo0VHVibXR1OEp0d3I2R1FUUGZEMEQ3WTVxY1JI?=
 =?utf-8?B?eU1heXpiSjI2dDZ1NjcrWGU5aHl5UEx3eUxZL1BaNjFuSzExR25mWGpOVTAz?=
 =?utf-8?B?NldLRm9KL0JqUkpCSlIxcDRqSEo4eFRrU25uWXM5elVVMlNhRlhjL2Q2RWhC?=
 =?utf-8?B?YWoyYytoTHNFTmQ4UTZUNVp1Qzc3blhobmpSYnBhMkN5WW1ITFNRakJSNzdh?=
 =?utf-8?B?TkE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 820028d1-9e5e-4e96-e965-08dcff24ea7f
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2024 12:08:40.0040
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CsaevPon/k8aPzV0YvbJ6WMVgtUsxnnUcLvVazCm17EcTYOwv96dZOOXxGMcPtpWdXmoz/r5thsoRUqLxHWQU1u/MkatJ67vKvB0OT6ozYo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7888
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Nov 2024 12:08:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64230

Hi Haim,

On 11/7/24 12:32 PM, Haimbach via Lists.Yoctoproject.Org wrote:
> Hi,
> 
> I have layer which I add into it some patches and configuration files for the RT PATCH.
> 
> So I need for an example the RT patch for "Image-A", and for "Image-B" I don't need it.
> 

You probably want a DISTRO here.

The issue is the image cannot decide which kernel to build for example. 
So if you have two kernel recipes, one RT and the other one non-RT, then 
you need a different mechanism. The selection is usually made via 
PREFERRED_PROVIDER_virtual/kernel = "<your-recipe-name>" and since 
recipes cannot impact other recipes and that an image recipe is a 
recipe, that variable needs to be set in a conf file (distro, machine, 
local, bblayers, etc...).

By having it in a distro conf file (let's say mydistro and mydistro-rt), 
you can then build your image-A without RT by using DISTRO=mydistro and 
image-B with RT by using DISTRO=mydistro-rt.

Additionally, your recipes can now decide to apply the patches only for 
the mydistro-rt by using the OVERRIDES mechanism:

SRC_URI:append:mydistro-rt = " file://rt.patch"

If you can provide the recipes, layers and content of the patches, we 
may be able to guide you better.

Cheers,
Quentin

