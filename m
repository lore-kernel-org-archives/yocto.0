Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1EBD1CF649D
	for <webhook@archiver.kernel.org>; Mon, 30 Sep 2024 09:50:10 +0000 (UTC)
Received: from DUZPR83CU001.outbound.protection.outlook.com (DUZPR83CU001.outbound.protection.outlook.com [52.101.67.55])
 by mx.groups.io with SMTP id smtpd.web10.50646.1727689801930049668
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Sep 2024 02:50:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=M0ncskMi;
 spf=pass (domain: cherry.de, ip: 52.101.67.55, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=adbmv9GSpizGwPrVwSjpmApDJkg6NB32o/RPvIqCzvZ+faBQ8TsXchS5RZ+EyMUd5ZIIgLhPlPqLt3MUc94NT4HWqd524QuCWmpkAXF4+l1sAJTDax3C6CxKdT88oExrXgWtRohoWzUt2H9uErzLYO1UBRqDETZ/vKfDDRq+mDQM0Uwb1MWpUrUhnf8uNh/1Z4XD3RTjwqkNw/mcfmN0o3LU2YQvPMKZikWzcxEWSVQWt4uQRrGOsIYATBlupTXvxBNonydiRMuZSWkRc231/mHA6b/jsyYxgqXhQQKUdttu+VQ2AgM+9PMeIZaR11Gi4z4MaynUQotWU5wf3zCxWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6PU+uIBdNKIuOUmzPugaGYN1eMVAunbZSWOaWA3/IYk=;
 b=wWSdLfI2B1boWjgUhVsdt0Aey6peY1CrWgxxl2McliuNiOGao0ezo3L28wdaCaOtTmNWK+39tQIB5WqaZzD8P03IalwTbv7idTdpJKttWPysgm0dXiieidV7Hc9UYtv8hAfvV+6E/Np4hchv2fhTycIZamm87wIfjVtntp/7HxWSdHr/TvOeSC3Ty4+il5/AY/fvN2hgl6tkBgzVyynKRdFEgO5ySrCtLdlhO85cRbNbI5nbuVLghK2xYEo6kzNKA4qSvb3lLdgxxtBJTgVLRpCripDT1SwPjRjbpqID0tYeVfzKER32I3c76SeLWbv9qdlqbVHKOiKmkhbwwguiMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6PU+uIBdNKIuOUmzPugaGYN1eMVAunbZSWOaWA3/IYk=;
 b=M0ncskMiPWU9SCtNB5qWUya/bITvb+qiy7BYNgWe2x/T8X7+xrCuvNhUGvBH0dmN0Ar9OaxAL4MmWsQGSbGpB8+luZhJXDSG5qWvad7+2eVKcdJhg3NBPbqYctM9gFfAICknBtpMy903sHDc9HsPhmGxVQuTG7bdY+5yiz9BSuI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com (2603:10a6:20b:409::9)
 by PAXPR04MB8669.eurprd04.prod.outlook.com (2603:10a6:102:21c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Mon, 30 Sep
 2024 09:49:58 +0000
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea]) by AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea%2]) with mapi id 15.20.7918.024; Mon, 30 Sep 2024
 09:49:57 +0000
Message-ID: <12544a09-acdd-4f57-a40d-28ac8ac92673@cherry.de>
Date: Mon, 30 Sep 2024 11:49:57 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Can't Add Firefox:
 /poky/meta-browser/meta-firefox/classes/rust-common-without-python3native.bbclass:9:
 Could not inherit file classes/rust-target-config.bbclass #kirkstone
 #kirkstone #poky
To: yocto@lists.yoctoproject.org, omaradelshalaan@gmail.com
References: <qrhy.1727405639368270439.yJJc@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <qrhy.1727405639368270439.yJJc@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0117.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::15) To AM9PR04MB8906.eurprd04.prod.outlook.com
 (2603:10a6:20b:409::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8906:EE_|PAXPR04MB8669:EE_
X-MS-Office365-Filtering-Correlation-Id: bee567eb-49fe-40b7-8ff2-08dce1353e7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?djRwMVZUMG9OcnpNK2FnUU0reEhSVWFGZy82M2xaWlhGQTlFSmlsV1I1am42?=
 =?utf-8?B?WkhxQk51bkxIZ0lJTkErV0pqODRXY3NvS1NsY1dYa2UvWkZsTEdSaWhwV3or?=
 =?utf-8?B?ZCtVdGRiUVc1Y2c1dnlhMXQzNWFMM0ZiNnBOOFNPRTVvSHZJYlNuQS9zZTh5?=
 =?utf-8?B?VGovOHh2R2lQVkF1SlhGQm5KYmIvU1M5akFMOUZLTUZQZ0tqMG55UGpJZUVw?=
 =?utf-8?B?OGdIbFpIMndxRzg3VHNPTHlKcnJKWTVBcWU1aEMwK3lBMk9nMTV6V0g4K01V?=
 =?utf-8?B?S3ljSXVpZkw3akxJZHA2Q0V4cE52T0doN2FvcHBMMGVjSHJ0RE1HZUV4b3pT?=
 =?utf-8?B?OUpKRDRtYndncXVEWHUvUHNpcHdoVE51cGhJVXR2b3Y2OTBVdFcwWXhibENF?=
 =?utf-8?B?M3hhYlFnamFCVzdjU2hObTVrNE4xdHdjZUl4S0lrVEowbE9BTHExdjY0Ty8y?=
 =?utf-8?B?VnFaUjcxNFNHTXZHTlRUWlBZdTdSUGZtRXdXeDdGTXFBZXNwMlorNlJlU0ZY?=
 =?utf-8?B?NTZOaWNxL3hUbmhtRlVOUUpvaTVhN3dQamNjdVNia0FpcTRQdnBES0xtNEQ4?=
 =?utf-8?B?NmsrVEt2NEFtTi9zY3FuWXhqU2NlRjhIbVVHQndqUDlmMEV3MFAyNTdDbkZ0?=
 =?utf-8?B?eGRyVlVuSzNkUlpaMUk5c3RENEY5U0d1TmF2MmxSYllxcVNiRFo2Z2VTTGFr?=
 =?utf-8?B?c3ZRMlpDQnZCSU1YNGUyRDZjQ09zclVCdkNMc2Y3Zm1oMXVsT1kwS2QzN2kv?=
 =?utf-8?B?UjlwY242cTZZVzJnTmlJMmdoaGZMVW0yaFplMnhVWUdBekh3Y05mOHQ5NmNB?=
 =?utf-8?B?c1A0YitGMGJ4UFpCa2g3a0ppeW5uTDJScWVERWZvVXFkMVpmT2dYaEs5L01j?=
 =?utf-8?B?WDVBYkt2elR3SHpwVjhqTWQzcDluMWo4TjdjYVhRZEdUMUx0R0RHbmRwMnBB?=
 =?utf-8?B?RUxNeFVodW1UN2JHZ1Y1ODQ1QmhxUEt3TDlBZkFyVm1wak9zY0lFT21wTENO?=
 =?utf-8?B?aXBuU2RYSi9nUWxrUVBaWGNyb001eXBMYTQ1MkhXQ0RWVEppN2wxWmVqeXhj?=
 =?utf-8?B?Z1dHaGtaL2Z3cFFzMTIvWERTZDJwZzZjM3R1Q2M1S0M3bnBOQkVPbDFtMkYy?=
 =?utf-8?B?MzF5Uk5yb29FcHkyQVA3S2xOamt3VWZCSGR5cjB2d3MzTkZ1QnM4RVBua0tH?=
 =?utf-8?B?NU5pcGZXUUhDMk90Wm50QzY1RzlpS3lkNmY0Q0wvMlZ2MUY3K1dBMjhCNHNr?=
 =?utf-8?B?aUNlVmxuRXQvTmhiVE1lc1ZQK3RaekxabDZkdjc3MGtmQVh4eThuUVp4amFW?=
 =?utf-8?B?c29CTTc4M1hjQmtZS1FZZ2t0amtMdmxlanN6NU5kd05jMkw2YzNvSXlmQXdM?=
 =?utf-8?B?VDkvRE9QVVlXalovUng3cXRsQmVKNDJKODhoQUE5NFo2SFVvVGQ2Q2ZwT29P?=
 =?utf-8?B?Mlh0dkdlWlNaVFF0aDRtNUxwdGovU0RmNHpNY3lWb2ZsUStuYlh0TURWNVRV?=
 =?utf-8?B?bHBlaXdDZ1Q5TFBDTlhyaitMTFZIbnJqamQzcVVnZnVXMFlIL2VPZ0hxWUJK?=
 =?utf-8?B?L2lkQlk0T0tLZnlsY0pLc1NNblhydTQvMlNHRktEVTBoa3NMZnNNV1hSazZC?=
 =?utf-8?B?bStZd1Z6WU1vQjJOdk9zMk5Dd3p1a25wRGUza0ptb0xad1Uxdk1mMGthTmdG?=
 =?utf-8?B?bk9WbVVvYWRHeUxTZE5nREU3aEFlbkdrTEd5eWV1SXJwZDhzK0F5aEVmVlJw?=
 =?utf-8?B?OCthRDJ5WDZsS0RlQTkyN1BPRGN5cUsxQVFGMTdqOXc5UER6Q2dHUE1KLzFZ?=
 =?utf-8?B?bEo2Q3F6VFBDSGVBb0w3UT09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8906.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OWZMMFlXM1VQM0dXdURhR3RYcWVCelhIM0orQW1TdGt5TWJjMVJRYk9FTXly?=
 =?utf-8?B?WXhZckJnWWlUdmtnVVhVdTExajZzYThSdW1RcjZsMmMyZmE3cXMvem5RMVRX?=
 =?utf-8?B?bDA2Nkw2UGI5djRCRjRpOENobzVzV2M5WjhCb25KK0ZTK3cwZ0R4S0VKMU54?=
 =?utf-8?B?ZDh1WC9QRDBoMjFFNmx5SjBhOUdHUHVxREVaN3U0KzJEZkx5RlNqcWFVNWdp?=
 =?utf-8?B?NWxhU3N6WGhacEFqMG9nc1dCTit5dVlBSmhNSzh0WkxyRlV4bUN6L0t3ZXZD?=
 =?utf-8?B?dzdkMHQvSzJmMlJmYklYMUhHTXZEMkpySXVLZno5aWE1ZzhGelRmQzJ2aHQy?=
 =?utf-8?B?eFhUVmxyclA2dFNDclNlMXRQQTY0MmNOSUFya1JxL1NhQXlGQVo4ODFQeGVD?=
 =?utf-8?B?aUhVaDFpcDFra2ZMcU5PMjNVQWFtNVdNT1YzakFQNDNCc3E0SnE5WlBaeGUz?=
 =?utf-8?B?Umw4K3lqNVZOMWFYbGVUdFRpaGx4Z3pzbGU5TnZwek5YUlJBMTZwNEZaaTNN?=
 =?utf-8?B?UlE0QWhmdDNiRVVYRDhiK0Y2SW02ZzJWY0hWZXhyYzQvOE50UHptODZiQkFJ?=
 =?utf-8?B?TmlHc281YVlhaFFZaGFSTTVIY3pJWG1KOTB6VVBJQTVqOCtlWWdvSTM5MVYy?=
 =?utf-8?B?WWJpU0lJSjFlRitiQis5NFZkUHFadDc2UUJQdC93YVBHNG1ZNVBlS003NjV0?=
 =?utf-8?B?RHdDQXVUS2ZKTmVtYjJJc1FrRE80WldvMStUQm9ZQWZPTFluSWVvV3Y1RHF6?=
 =?utf-8?B?V2thUm1qVEs4Y3dHTDlWcUlDQjB6WEYwd2ZSRmtCUEdVVlFUM016KzhlT0JB?=
 =?utf-8?B?VlpZeE1lZjlUeFFiZkdJTmVma2dLQXpXMUQvSUg1Zkw1V05kMGRBVk9RZnFE?=
 =?utf-8?B?UUpYOVRGYm1lVXplNndRZllxbzBmMWlaN1pIaFNUeUZLRTU4aEVmNUkyblBR?=
 =?utf-8?B?SlR0Ylo1SlZlOTNLVmEvODI3ZUNiRVQxQU9HOGJqUU5wY3hEV2pCNTZqZEFM?=
 =?utf-8?B?VDVYRlRrR2Zsc0I0Y3ovbFRuS0tZZnFwSFZRRjRNdkpydEhEZmZMNDFsQ1k2?=
 =?utf-8?B?YXBiYUlVZytHb09IM3pGb1B4Nm5MODNXWTBkNjFPdnFoeC9FRW1PYjM3V05L?=
 =?utf-8?B?MGtWNERYWlZyaVFNYmg4SExtRFhscElrV0FMQWhWbnZoVnI3SGYzdTBheTBs?=
 =?utf-8?B?WXRLZGxnL3Zpb05MYldCMUdEVUN4bTBUclpXZ2hXNDY1a3ZYeHNVQ0tPaGpU?=
 =?utf-8?B?OWJOUlg2TGZiVTNCY2lxRXR6MkZmRVFvWmxTT0RxQ3kxUUhpSkdvTEJ4cnds?=
 =?utf-8?B?bm1ISlVwbGJTS1NVTHlIVVVsTDR3Nm5taCtWaXJhdzBUOTY1WUZyTDIrQ3Vs?=
 =?utf-8?B?Rksxc2dhVFhwd3JPWHJaQTh1T3Y4TjFsRllTVjVZRW9qb0tOTHMyZ0tjRUxM?=
 =?utf-8?B?azhtR0FPNHFzTEx3bWdqMXN5WmM5ekozTzExaVJNQ3Q0cDRVWFlMbTN6aTEy?=
 =?utf-8?B?SktFYUFuZzBLdGFWRTRBeTh6NElMN09VM0JCNC8xS3ppRVpobVdyU3lDMnBT?=
 =?utf-8?B?YUlzVkJ3NkZuK1F6L2ZuT3V2OXFtYnl1bTJzaWpJZ3VCS3kxQ242MmNpcWNU?=
 =?utf-8?B?NE1LYjBhRytiajFXUkkwcWs1U3Y1YXJEYjYyaTltamRkUnRJeFJ4TitQczJv?=
 =?utf-8?B?YndJUE16Qm9TRGJ4Nm5JR2xxeWRZZHV1YUNXMlBhMk9VVGZqTDNGMVM2TXA5?=
 =?utf-8?B?WmljbkJFS3RaeWlEaXZ1a0NxdWVhYmZXR004Mmh3NFlyWDVmdVZ4eUZyYXk4?=
 =?utf-8?B?WmxUL2dmUmIvR2RwMDVRUTdBKzZKeXUya1R5aCt4UW1TTFdsdHdvZnV1MHY5?=
 =?utf-8?B?dTZLUUJKakdaR2dSN0tuVzJkL3pNRDlhSzE1bTZncFpRVUsyZm90bGNMeUR3?=
 =?utf-8?B?NU9hYS9EdURwcXRabndYUDJrdkkrNG1kaGFZMWphUmxGZFF5dmdENzljRzBN?=
 =?utf-8?B?YlkxQXY0RldIU2wzTTlLZXNlMWlnSTUzMlpxVTFHTkpjcXlTUHl3OEt4Q1pu?=
 =?utf-8?B?OTY3SUY5YUpNeWJVbktJcndDZXRNWVQxZnhFdXFSRm82VWZqTy9iRTVuS29M?=
 =?utf-8?B?QW0yU0xOVDgxdDk3YWcxdUNWaVZ5dWdpVE1kakhxT25BUUszTDlwTjhMbG5Q?=
 =?utf-8?B?VlE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: bee567eb-49fe-40b7-8ff2-08dce1353e7c
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8906.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2024 09:49:57.8882
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ylb69+pQUwGZUM0VTkFhCJbIOQA9zwTmEnjkoYwr3Vepma5FAxNPueiP6f7uaFXtgJ1uywjcZsb8WpqDB7308ODAPAK01xfQxFuN07HKzIg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8669
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Sep 2024 09:50:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63909

Hi,

On 9/27/24 4:53 AM, omaradelshalaan via lists.yoctoproject.org wrote:
> You don't often get email from omaradelshalaan=gmail.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> omar@dell:~/YOCTO/poky/qemu-arm$ bitbake core-image-sato
> Loading cache: 100% |#####################################################################################################################################| Time: 0:00:00
> Loaded 4056 entries from dependency cache.
> ERROR: ParseError at /home/omar/YOCTO/poky/meta-browser/meta-firefox/classes/rust-common-without-python3native.bbclass:9: Could not inherit file classes/rust-target-config.bbclass
> ERROR: Parsing halted due to errors, see error messages above
> Summary: There were 2 ERROR messages, returning a non-zero exit code.
> 
> 

We need more info than that. Tell us as much as you can about your 
setup, e.g.: what's the version of each layer you're using?

It very much looks like you're trying to use meta-browser from a branch 
which uses rust-target-config bbclass - which only exists since Honister 
(3.4) - with OpenEmbedded-Core/Poky from before Honister.

Cheers,
Quentin

