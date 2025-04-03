Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57E0EC3600C
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 10:02:00 +0000 (UTC)
Received: from AS8PR03CU001.outbound.protection.outlook.com (AS8PR03CU001.outbound.protection.outlook.com [52.101.71.37])
 by mx.groups.io with SMTP id smtpd.web10.9827.1743674518634781712
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 03:01:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=fs/tKpZm;
 spf=pass (domain: cherry.de, ip: 52.101.71.37, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E8lwQZ0M9ZwEjFWwDNxKfNBBWi46yhwSXGFtTRBT9ftLonMOv2lrfmpccdSU8bJiM047HuQ/OTX/CCgBUG7RvGZW/Us6rFZM9cjS1sygzC1bU8WFM2kWtZpy7jSZYYDFG0lu4aoc9UA9XsHp2egJEmA+4iRq8fhocGLAY/ajR7AKpS5WN0IRn0abai18I3TXKD+3VvYZl5g2gGTpsJvOc7t8sRm4Ok0MHPNzvceXOEPC7InbXgn2lOXK++hD7Nq26rBP8UtD9wv4ArtedKJxoW2HB8MgoQkUe4Txma+3HTiWrI3xXqG3P+ij9zGUb/QHFQ+9YS8R1klm275xNsuyNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RItimD3PjYmasBNOc0eeMIXN7R9pYbI9JZGkE5Trkwg=;
 b=I8nhPmSHbqSOZNNWRLFa4RFMQY77naKXXxzEaLI02+G7883YHZgn0cVJLTabdJ8t447iDrCHr1TWHgvUpvRbg4ybM5EjaqfgFhMM73j7wMIZudi3PiFs5L0Fzobl+uPZaHFn4qUmDVBUJm432dWk2NRIVRjlg2QBhMdwPJjtt5YVSI+MMXc9+OLx9Rgo6NAgcUooSSEV08YEkdBQxjw40xqXgMJYJW3vPJpxCNHdNJtDRXPD8wrAe83WXAQijf4ODxKDZDT8uv2UiZ9fj9te20PIRnyhwjQp4BQ+NO53fS2a9uEmCnbUFwmrKV7nW4xWInhWT7/3gn8WzoEkqIWxfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RItimD3PjYmasBNOc0eeMIXN7R9pYbI9JZGkE5Trkwg=;
 b=fs/tKpZmGagQ8zJldFdFTQU9wA+XrCwGQ51K2m4Nbk/UibaJdqQOQIoDjsO9eHXMMLhXUeqqbSx0tPQlQ24NyIPghcwhms5Wf9ZmRx+cZv7E6NtLOd3l2xx1qhzMkfOHf0SPcNSGFAsnZ9WJmq1dO+gDnwjzN5hL7d8M0FPg8mM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by VI0PR04MB10592.eurprd04.prod.outlook.com (2603:10a6:800:266::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.47; Thu, 3 Apr
 2025 10:01:54 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8583.041; Thu, 3 Apr 2025
 10:01:54 +0000
Message-ID: <1a329184-4a2c-487f-9b2c-686cdbe5867e@cherry.de>
Date: Thu, 3 Apr 2025 12:01:53 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Kernel build date does not get "updated"
To: yocto@lists.yoctoproject.org, david.daniel@vrag.ch
References: <ecb8282b96dc67c999ca1174abe57100d4847281.camel@vrag.ch>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <ecb8282b96dc67c999ca1174abe57100d4847281.camel@vrag.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0090.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9b::8) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|VI0PR04MB10592:EE_
X-MS-Office365-Filtering-Correlation-Id: bb8b7ef8-3906-4489-b2c4-08dd72968fdb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?V05DL3VoRzBpbkJ4azlIWVpMRDJuNC9rV1BaUVBlTlorWk5uNFJ4dzV2c1A2?=
 =?utf-8?B?UVB1VWlOT1NhLzJCbGdWbW5oR1kwSFJmQ21IeVV6R2tNK2dJTzNMUzVEK1Bp?=
 =?utf-8?B?OW9BbjAyMlA2Q0U4b1E5UEVIdWxiV3pSN3lxRVpuRjZoSHpxMlhUZUVub2FB?=
 =?utf-8?B?L3lCbnh3RUFzUXFSVWJ1MUhmS3V5ZFZUWHNlalBndjdDNDd3T1JadDdFUkcw?=
 =?utf-8?B?bi9tWFhJQy83UWZSZVlublJFbWUvemF1QzVFQXFnM29JTC9uMmd4VHJUcGhS?=
 =?utf-8?B?dS9KclJJQUZERmN5aTZFbXNpSkl0Ym53R2FFVVVDeEtBK3UxRTBrSlp2VXVM?=
 =?utf-8?B?dXVlT3dEL3JNWEJLZHBBbTVCZ21kZk9zSFk3ZTJXcG5jMlNmUi9Gb1NoMmEx?=
 =?utf-8?B?aEF2Uk91d09Cd05Xd0ZCaDBrM2ltek5iZWFxZUJqSlRVZm05ZzVMSTRmMDRx?=
 =?utf-8?B?bDhjS0RoUnFQcmZUV3M3TWhYbnBZQmtPTzBSQVI1MWJta2xzVG9pazNxZjFO?=
 =?utf-8?B?QWN1aWE2NnI0a3MxN25USTR2TUo2NXc4SVJtcjVSMXdhMlpiWHl1TndNNXFQ?=
 =?utf-8?B?Vy9aOTVSd3E4QjQ0Z1NCNGhsVnRqTW96aElubHpGSkpIYnFFWWtzSzBrampv?=
 =?utf-8?B?RjRXVWdiWVo1Umt3ZDhVNWR2M0UzVG1XVVNGTlo3emhBU05LU2ZjZ3krWXVI?=
 =?utf-8?B?Q2FYVm9UTk5rb29TN0c3VldDaS9ER084NVZyODUxUUxtb0xGUXpOMzZCM0lI?=
 =?utf-8?B?SXRtVzVLaDdkNTR3SloxWE9oOHVXdGNwbWwvOVVXWkF2eTJwb2NzMFM5eE5m?=
 =?utf-8?B?VmpxM0Fkblo1eG5lWkk1Qkl0L0p5bkl1YUtBdXlUZm1DNkJ0cnJPM2svK0VD?=
 =?utf-8?B?R2FIcVl4NFhvbnMvVFNSQTQ0TXQzWFBFVmZDaUhObXVjZ1RtekdmZDdlaE1P?=
 =?utf-8?B?RWYrMmR6OGxWV1hHdzMyTUcwM3pveXQ3bGQvNU5DeS91ZXdiMUxSWEROeEwr?=
 =?utf-8?B?dGJ5TVRzWEIybG85NS9tS3FkV3U1eGFPYjgyUjZ5YWhNWGZnOGJZVXZYSjMz?=
 =?utf-8?B?WXVzMExtcWJHRERST1UzT0xIR3R6NWtoT01YdzZCYWsycDdFRUFoemlQQmVW?=
 =?utf-8?B?cEJ5SjY1RzFDYWJBYk8yNTZYbW9xd0V2QjlCUVFqdFQxbXJKOHYzTFFLemYx?=
 =?utf-8?B?QzJuZy9CNU1VUUpUaTgrM0pPdUlmZ1gvMTNNNGMwQWFabkVBQW5JVTBPRmpK?=
 =?utf-8?B?ZVJNRVh4NkE3VlZ4SHRGM3dIM2dNL2kyeGpLSGZITG9Da1BsRzBNU0poYVVV?=
 =?utf-8?B?NFRaWjJGLzlpRUtpeGpJMVlrcHZhOXg1WHFaVU1sZ1drRGt0NFV1TUtkOGdp?=
 =?utf-8?B?cjNqdFBjcUZYaEdWaUh5VmRoTHZ0T0gvRVB0SysyUC9kM3ZQd3lKNXJTVG8w?=
 =?utf-8?B?ZDVVYldETUdwTm9BNnVqM21QckFtVWg3SFNXb1RabGd1QTUvQjFJcUdNcXlm?=
 =?utf-8?B?VDVwVlRDS3liZU1WVHFlVnJ0TlpDR2MzMjJTUzVEVndDQk9zM2lJUEpuZHU4?=
 =?utf-8?B?S0FCUEVocXFTcGxES3I1MHF5c0h6dUJwcUlMUGRsSmVScVZhbmtXRnpBYnZK?=
 =?utf-8?B?U1VjMlRwRXZ0MGdNUVcwaVFURXZ1cnVydThuUUVUMHhNLzVNTUhvb2NSTzhU?=
 =?utf-8?B?MUthWjBFNm0vL2pYSEg5aHZqaG0rQkRFSWkrWU9qQXJ3V0Y2N1VxZGdqblZO?=
 =?utf-8?B?WUpFcjAwODZMem1aaUdRMzlVdGU4dnpGSEZZbWEwdkFMRE03OTZmbWltK1Jp?=
 =?utf-8?B?bGZwMFhoVXgrc3Y3RkYvRFVwZlE3Sm9tallhL0l2ZzdaUnBudE11dWxaWkkw?=
 =?utf-8?Q?xYLQXrBQLK7LM?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aFgxS2dtMG5Ed0t4T1Y0S0k1ZkpwYmMzWTkwa2p5OGR2ZklCODVSRmNBY0ha?=
 =?utf-8?B?QXdiakZhRzhNUzJZQnNNYThKRVZEWFZHemxSTTQ0NS9uZzRNOVAyYUtQbVh3?=
 =?utf-8?B?QXJMclZ3dGM1VTRyVTVUNjRhSktHa1hISjlqWHp0NmJCY3pSVFh1RlpJeWxC?=
 =?utf-8?B?K2dBRGNEbnMvQ2hiZy9LYkFmQnVRMjhmek5Pa0JvWlNuMm0zV21RN1dvTVJk?=
 =?utf-8?B?c0F6cENGNGFYeHZzR24wbkRXSlJKRDRKRzl3RmtYN016bUZKU3N6MkxxdXNC?=
 =?utf-8?B?THN4UkYwQkNiWXZjcHVITC9TMkhnVEE4a0dqbkgwWm5qZ0owb1FnbFRiSHdR?=
 =?utf-8?B?N0dTWHVhZER0OXpxb2wvbkVRaHBvclNtaTJLMU85K29qam40Z3NTY0syaGs3?=
 =?utf-8?B?ZlhoRkFvbU1Cb2RMS3FnTUJEUG94dnJFTzdoL1pHNmdGZWJMNnlkUnVKSFZp?=
 =?utf-8?B?Z2g0NlRlQlZEZUFmSGxPbXgveWNJd25sVGFhM3l4WlVvMEJSaU9Fa1JhL09t?=
 =?utf-8?B?Wkh1ZHRtZnIyUFNGTVVOSFJaT1pXaTFoYi83ZjJBbEgwWHR1aXo3QlZkMG5a?=
 =?utf-8?B?WGdaRU5qNFBScXZITmxVbmVGNkI4Y3NQdk5aelFTOWR3eGhVcVcrSExBb1JY?=
 =?utf-8?B?anc4emdoWTVkNkQwa0F5bnFPK2VJWjJ3Z2ZuY0JqMWZtVGk2Q3lXZW10MVRP?=
 =?utf-8?B?UDJyRE85b3djT3Q3YlFkWHJDcTNBR3Mzc2RiZFRKdlZpd3dtclJuam5yZnFQ?=
 =?utf-8?B?eHBtR0YzaWFPS3M4SVhRMUJaNFkzeWZjSmI2WlEwaDJjdXFLSVNMYWNBeURV?=
 =?utf-8?B?ODh0cTBjZVhFakJNQTZWS1VMM3h3SnFSM1V6OVZQdENVRzZCalI0KzFSL3Uv?=
 =?utf-8?B?YVJnZ3pUMnN4YjlMMG5paG1OcHBpcm5QU1NTdlRXSDJUOFZua0dwT3lJa2Uy?=
 =?utf-8?B?Q2MwNVNpZjkwdnRrSjRhVFdweTZscG0zeVpWcUQ5SHNjaEVKRFFZb1R2bE1x?=
 =?utf-8?B?ZDc1NzNrbksrelJOZWRMYllCQ1NiYWRIaWNDTExBZ0tiTko2S1h1cGp5TWRP?=
 =?utf-8?B?TUpwK1pyRmt5MEZ0SEEyK0YvZXVuN05PZmlFbVdtRjk5UXY2ejFYWjExb004?=
 =?utf-8?B?bkZLZ2VkRGxyaFlZeExqbE9oZFZ2MGVYbjd1cHhJN1F4V2UvUHRhbXQ1MEE2?=
 =?utf-8?B?ZlFVWk1mV25OUTZLWkRSRDBYZW1ReWZKU0FYZ2doaC9kQVRSZHF5dHZ3dUlC?=
 =?utf-8?B?OStPOFBuZ0M0azA3Vlg4LzdHNDJKM3B6NnNMWDNSKzcvM2FuY09pTDg3dGNr?=
 =?utf-8?B?V2hPcDFNeHdYV2M3azBneHVTL2FMUU9lMElpWXFvWmxsZGdSbGZJeG5oeXdN?=
 =?utf-8?B?NkprMG4raDJMcVhERFp3a0tXNWJ4WFFZT3p1anFIS2h2aGFDaElyNDA1Z3Fk?=
 =?utf-8?B?cWlPdGllM3pUcXhBbjdzS1pETENLaG5YUkVLaGR1SUxTdGQ2dHJheVl5Vlh5?=
 =?utf-8?B?Z1g4UmgzT1dReDhINWg4L0hVNCtwNzcwNXhFUEtzZTdxYk56T2NhNk85dm93?=
 =?utf-8?B?NmtqM25nMkJxWE1zZ0tIelFaM3RRT1lIK2FpNG82TWl5c3VOSlRYNmdlcTVC?=
 =?utf-8?B?b2NlMGxhVWxkd1liQzhlRU8wVEV1SXlsbXk2VnY0eEhOVE1wcEkxSENzL2VY?=
 =?utf-8?B?SnZzcHBIQlBrcnM3Z282YStjRGwxV3FjbDZ1YjFaQ2ZkQ1c3Z3czLzhlSkFX?=
 =?utf-8?B?VzBGRlZqV201TmF5RzZBZi9jR25Cd0NVYU1hN1lnTFZLOGlDL0NwTHBMVUV1?=
 =?utf-8?B?TWZHd2tmRTQxeTZ5NDlJbmxSNUtXVXd1NVVlanZIUVZTRS9vOHF5V2Q5NVpy?=
 =?utf-8?B?dC9DUEVtL1lYZXl1ekszTHd6VHpmdmdxK1A5eW9ncU1QZlEvTVlPaElnaWFu?=
 =?utf-8?B?TnJnVE5DcmpyaUJCUllia3NJd0lZWDBkaldkd1ZoeThqWWVVbWVGTnZHWTlZ?=
 =?utf-8?B?ZVZvV0NnVjJac1dkUzBjdlRUOTcxbURjRkRoTkM3SEZJR2dyVnd2VG1OU2Iy?=
 =?utf-8?B?bExkcjE3TENGbzdHU0JTOW5WYlhCZEhKRG0yTmFMZjFQZkRpQVo5bVc3Y2Vm?=
 =?utf-8?B?ODI5bzl0cSt6N2ZTaWRna0NvbUptVnMrMGVLU3RUbC9CRkU3aTdnUTlIamw4?=
 =?utf-8?B?bWc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: bb8b7ef8-3906-4489-b2c4-08dd72968fdb
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2025 10:01:54.2651
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xKcgDoZ1T7PJvCiwql8zL9JDn484O2Dd3YBvG2HQXOHOfc0AQsVGEzEwfp6Xj2nAY9I2OzKnm2TYZMlYUR1IMGGS6Xe2T3j+Wt9zjTSIuvk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB10592
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 10:02:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65067

Hi David,

On 4/3/25 11:59 AM, David Daniel via lists.yoctoproject.org wrote:
> Dear all
> 
> I have a weird problem with the build of my kernel. I am currently
> fiddling around with the device tree and some driver code. Now I wanted
> to test stuff and install the new kernel. I then realized that `uname -
> a` still shows me some date from 2024, so I thought I must have been
> asleep and did not correctly update the kernel and did it again - and
> again.
> It's not the case that the kernel is not updated properly, it's that
> the date in the `uname -a` always shows the same date from 2024.
> 
> I feel completely stupid - is there anything that fixates this date
> that you know of? I don't remember doing anything related to that
> issue. I never touched any configuration that is related to build dates
> etc.
> 
> And just to make sure - I did check the timestamp of the kernel image -
> it was indeed created freshly. I can also verify that my changes in the
> devicetree are populated - this gets compiled with the kernel alongside
> and I did make changes to a driver code I can confirm takes effect. So
> the kernel running is indeed having my changes (from 2025) but the
> build date still shows:
> 
>      # uname -a
>      Linux bf133 6.6.65-rt47-vrag #1 SMP PREEMPT_RT Wed Dec 11 15:13:43 UTC 2024 ppc64 GNU/Linux
>      # cat /proc/version
>      Linux version 6.6.65-rt47-vrag (oe-user@oe-host) (powerpc64-vrag-linux-gcc (GCC) 14.2.0, GNU ld (GNU Binutils) 2.44) #1 SMP PREEMPT_RT Wed Dec 11 15:13:43 UTC 2024
> 
> The kernel was built today (04.03.2025) and not back in december.
> 

Any chance the last commit in the kernel tree is from December? (may not 
be authored date but committed date)

We need to have a stable date for reproducibility otherwise you cannot 
reuse the sstate cache/hashequiv server between machines properly.

I would assume this is the reason.

Cheers,
Quentin

