Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AABEC27C44
	for <webhook@archiver.kernel.org>; Fri, 31 May 2024 10:16:25 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.117])
 by mx.groups.io with SMTP id smtpd.web10.8280.1717150583955979909
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 May 2024 03:16:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=UHjFGD+O;
 spf=pass (domain: cherry.de, ip: 40.107.249.117, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eushRBZytnfbn9iZ4DjRpj3JoEkIp+ncCLb/5Z3QjUAJuereXPfq7NR9bBF6ZNa4luUsSN1xFlrDg22u7SzpcgcJ+Y5vrgmfQScz0EjWDXBfYYkgxq1zvKlEoADYOH/NUQQJ65txQ8ob8NlTHVpezytj1VkUfVVma8rZVYQSWS4FfEhqnshsfYcqL4t5ZkcP9HlHrlPUPBcYzYSWgYH5+5jY3KqAwh4phtlzc1Hi/FsCOa5sQMCDn84hBu+1jr5VYIc3io2tOcBCug9guMtsCG/z5L7NDBXiH9jaiJfK0xxrt4baqLUwaPmG3sNXX2+ZRP0cHvW0a/pKUDWVg2y4Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YTfEuchevAzWJm6f+52bNJFJ/K2ksOFYKate2JafHns=;
 b=nmXQ8IZ7Gu01sKZKLspVgtAxLNiVHLdoOSiUta9PbcyF4wUxZAPFLD/JhIXFM1R5DYbvTAh+4aYNVd0T5WVdyYQw8feNRTdxpDpnol8XpMefkxC3ggxEAhDkjzacR1wiPZAwN3u7eiLWG3vDpMvxndAGNarJmpwBujXXvBf/Xxhn/AXq0U1rR19m0UppHflnawlM45Ux0+K3+iGpFYoxznxKQvam6srv0PPQ9tCjTkLJteYI6cN8PhdoIj/9L8ls+sGWsFhxcvWQmMttybk0TozIjdi/qUGM+xnSeZtMIodoc/1SF7csU/Tzl336KpxPluN/Cf1Lw8VHBPWPv60Ieg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YTfEuchevAzWJm6f+52bNJFJ/K2ksOFYKate2JafHns=;
 b=UHjFGD+OPzQ/PYLAD3N7WS7tBbtPNHXJG4W4aNlqGwLAMFvPz/yzOWg/dJvbxqm5DUO0v6ywl/3X7Sti/PT7VLof/mc1gF+/P1rgZ8Y25TfaMSxG74OzuJNQXm+ug2XTzZfV9+sXANW24R5+6MefQYjx7VsZa/ybcBOagqIjON0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from PA4PR04MB7982.eurprd04.prod.outlook.com (2603:10a6:102:c4::9)
 by AM0PR04MB6914.eurprd04.prod.outlook.com (2603:10a6:208:189::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.27; Fri, 31 May
 2024 10:16:18 +0000
Received: from PA4PR04MB7982.eurprd04.prod.outlook.com
 ([fe80::3c4:afd5:49ac:77af]) by PA4PR04MB7982.eurprd04.prod.outlook.com
 ([fe80::3c4:afd5:49ac:77af%4]) with mapi id 15.20.7633.018; Fri, 31 May 2024
 10:16:11 +0000
Message-ID: <277bbb26-8723-4b66-882a-34543fb61a6e@cherry.de>
Date: Fri, 31 May 2024 12:16:07 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] query on building rabbitmq-c
To: yocto@lists.yoctoproject.org, simonkbaby@gmail.com,
 Alexander Kanavin <alex.kanavin@gmail.com>
References: <CAEFUPH2w2F_wRffJTmSyV4T8KMoPs790RESbpJLTU2yxhfEZqQ@mail.gmail.com>
 <CANNYZj-sf3j4yJeCvDWSjqBQbA_-iwEQyD4QLF6oin6Y-UMo5w@mail.gmail.com>
 <CAEFUPH0j1FXCMF4E1yVbD1hed264SWsYZ5MnPftL1NSVQg16aw@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CAEFUPH0j1FXCMF4E1yVbD1hed264SWsYZ5MnPftL1NSVQg16aw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0040.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::24) To PA4PR04MB7982.eurprd04.prod.outlook.com
 (2603:10a6:102:c4::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB7982:EE_|AM0PR04MB6914:EE_
X-MS-Office365-Filtering-Correlation-Id: 1497d6ff-f054-4c52-0306-08dc815ab225
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cmphZlFxTXhIdkxGS0ZyYTN3c0NjdE9oOUVLdGE4K283R0x0a1ozZXk2UXZS?=
 =?utf-8?B?dDRBMTVzYzRWeFJjeDBHbnErM25kamR4MU1pOHBJeHBlSGJuaVNsV0hkWDV0?=
 =?utf-8?B?bUVkL2xtYnYxaEVXTkpqS3ArRHRNb2FJVStZWnJQZ2xwdzMxNExhTVdIZ2Zz?=
 =?utf-8?B?T01pbkZGUXVTWDlKRVlPSlJpc0pLS0grUnMzczRWQ1ZxUzdJUEwrZHM5eU84?=
 =?utf-8?B?TmlEbHFEcDBZMmRqRmIxblZkaCtpWWY0MGRJeDhnTHEyZEtOSGlqb3FOdnR4?=
 =?utf-8?B?UFR2dkhwTTdsNzdDZWw3MHFDYU5WVnU0VjhyV0lQUWwwQjk4VzArQzZQRVVB?=
 =?utf-8?B?aWwxNmFKL2l1NURJZXp6NWxsMFdnNlZxVTcwZWowakI1bkdha05nZU4wMHFi?=
 =?utf-8?B?dStyMWlEanVhZUJUdVYzMEFYelQ3WFgwQnJadUNZaEJ4aTM0TVY5WStZcHBE?=
 =?utf-8?B?TjFWbW9ZdUcrQWsyM283aG1aeUhPVXZnZ1NwQnpLK2pkaEVpNnUzanUvbVBT?=
 =?utf-8?B?SnhZMFBUTmk3b3VRS1JVSXdPN1RITjVpamZYWFoxN1JKcWthUFExU1VGd3ZC?=
 =?utf-8?B?TXBuYmVHcitGWlBZOHdyNEdaMnExNGpxVnNMQWF0Mnc1OFpUSFl4OCtObWVr?=
 =?utf-8?B?dU1FZnhyaDBVUXZUeFA0Qk5CT3BrL0ZNdStIM3htd1dKZE5YSWVTZ3hwZTE1?=
 =?utf-8?B?bDROcTZ3dk9CQWlzMFd1WUtlRFV2SGFsWFlrSDd3TlovMG04WlhCUFRhUVZm?=
 =?utf-8?B?Mk1xaUhXVnoxQVo4QUtaTDBoOTVXY0Vmd0YzQjBsSkVVTmFLRVBnOW9vcm4y?=
 =?utf-8?B?MjdhaE5SNVZwYnR1amFrYTYwKzhoa0pIdEpObGozRldVTm0vSW1tRERkMDdS?=
 =?utf-8?B?eVMvSDNTaGc2bGxuM1FXUWhmVkVpcHRVRUZtTGRBTVlIbm9sSVdXdjN2b3N1?=
 =?utf-8?B?UmNScEZwaWw4MVYwRFM4VThUb0wrWlkzQWJ4UEZqK3BpTXZwYTU0M25rbWZR?=
 =?utf-8?B?RmxybHhQbkdPQXNiZFRxa0tEZjl0ejlmQ2hNUzhTeGFxaG1RbU45MGs1eUNN?=
 =?utf-8?B?ZVVTMWwxK1JWeTgwMXhiMjU3UG1FbGQyVGdRYUhOejJib1VpajdGY3h1enBF?=
 =?utf-8?B?M3d4dHFWMGkvUDNscFVjYmJnWEpyZG9sSVd4Vko5bEowTGVuSzRxVmxaVjR0?=
 =?utf-8?B?bWVBbElWU2FoVUh2Rjd5LytsVmdYeG1CVzUxdWZITHFmU1R3TDEvK2NaTit1?=
 =?utf-8?B?Q0M2bFVIWG55eDhYNkhzTVcwWnZnRFpuVVhaaGtsR0lNTnlrYTMzMzgvY1FJ?=
 =?utf-8?B?UDB4NlpubkRQMDFVcUkvamNacUY3M3lWbmhPQ1RvSHo2MVd1YzdyTHpJTmJy?=
 =?utf-8?B?Z01wVVhKeGtyd1pKVndHbjhRQU10R0Z2eWtGb05YNmE5UEkydkNuVzE5ZzBI?=
 =?utf-8?B?YUlVRzZuWDltQTgvVTFwUnl6TkdTVmNKUzA0dkc4bUxFL3pPZEZSQWovQkZq?=
 =?utf-8?B?RWtlSkQ4TE1CMGJaa1JxYmUrbDR5dWp2WGY4VkxQTlNxRnZ2ekJJd00vNmxD?=
 =?utf-8?B?WUlKWDd3TkZwTzFGdi9ZWE5xMTlBOWV1MTVnai95NmI0Y0tISlZqSmJhQ2py?=
 =?utf-8?B?Z2xiR0QyMlZ4aGdkNm56aEJCN3V1M2ttRXZOS3lldHJuVjg0YWxUTlpPRERC?=
 =?utf-8?B?ai83cUFvZUxiazIzZmRmL1VuM2w0SERwTHFUM2d0Q1V6THduZVpsTzFRPT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB7982.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TjNybnp4RXVCcHpUY0xUaytKNXRQQ2dmU2R0TE9neGc2RTVjQnpWQ2xXZzlm?=
 =?utf-8?B?NEhkSXNscjRDYkl6Wm9wS2gxWGM2Yk5DYWZaVU1Yd1FmK014a3RZTWJQTnE0?=
 =?utf-8?B?T1g3TzhLdWNuanZWMmYwai9zcG5iVDdWd0ZmNWhmWHRvRzZNNFpCTzJxbkI5?=
 =?utf-8?B?WmFBUTEwaVNKaFlaSTRlSGE1azYrckJMQmEyNlJscTZsU0Z4b3puc3lFSWRI?=
 =?utf-8?B?RDZEL09US2RRRG1LWHdrWDJsMHN6QUl3Q2t3RlhOZ29wYm1NV3hmOXgzWVM1?=
 =?utf-8?B?VkpGNmdETnFTVFgwdUI3d2RYQWJ5SklxU2tFTHFEM3MrbDgvNFk3cjNhUG1T?=
 =?utf-8?B?eUsrbVZsUU9NVTM2QzIwaFVtQjE3QTJVTGUxWTJMUTRHQUNsM0ptdGhjMnNR?=
 =?utf-8?B?V0pkbytWVWc0K0w5NFBhWWlWN3NDRi80YVRDL3ovTU1NSXpkZ2JvdGc4aFhH?=
 =?utf-8?B?OTZpSU5uSEFNYjdTcnFvQ2tDQjRyd0thdmZRbWs4MXVodk1SL1FlNGQ2WFRY?=
 =?utf-8?B?UGZsQys4aEM2K0xXOUtuMjFwK09vbWxNSmppUm9hTlBWSGZKUmxUclZYNytt?=
 =?utf-8?B?UjF5NjIySUdoQXdZUW5BMUUrNmVGdWlPdXpTQzh4WmN2cERHaTZ6R2pRZWNO?=
 =?utf-8?B?dUhPWlBtMGxOM0N2WEJpbU5WTlFTOTIycUR2V3VsOGdIMDNSTVp5YkRjTW9R?=
 =?utf-8?B?c2lUYWp5cjl1ZFNFTGJYaENXMHdBcWYramoxbUlSUUNaOHVYTDlWS2FXdGR0?=
 =?utf-8?B?a3h3VlZjb2xXUjNnZ0pnKzIrVkI4dUVKczd5aFNkcGhtL2RRSjdwR3NjMDhj?=
 =?utf-8?B?MFRWRnhLaWp1VFN6ejBxTXN1Y2I4dWdWeXgzd1crVmRtZFF4ZjBqTWsvWndN?=
 =?utf-8?B?UXUveld3QlcwSnMya2JKT2F6Z3Z1WENMMjZWcjdGcXAvQThiNHRQREc2azhm?=
 =?utf-8?B?TENCZUlIdGQveGlnVmxVNHZpcDB1SzBMN1ROVnBncVVkSGZzbmVpdlZZd1Rs?=
 =?utf-8?B?NEMvREo2M09ISDJ1LzNZU2M3aWpuTFF0aHh0T2l0VGp3ZjdSUFZXbWF4QVcr?=
 =?utf-8?B?TmttcncyZWU2Ym5lYUtoaUp1QnRiajJuZ3V2Q2RDS3REclZubGFlQno1REV1?=
 =?utf-8?B?ZDh5NmdNV1hVMjlNakUzY0d5Y1dqd01mVE9DWFFkcVBQeW11YW02cHNsUklD?=
 =?utf-8?B?VjVnVC9OdkUyY0hIYlBEbnJXRDNDYmJtcUlNOUp1WXNzQlNpUVNSbkxlK1ht?=
 =?utf-8?B?Z0Jva3IxKy91RUNOYVBkQmsxUVJObEpBa05MaGYvVGN3Q1p4ZFc1NE9XRlh4?=
 =?utf-8?B?cXpkYllrbVlRL21OTzE0MFFueTdXdGNtTmlOSWRBSFFNWGJiRExOanpjR0dN?=
 =?utf-8?B?V25OVGVhdXlJNHJleGZLMVliZERxU0hHV0tlV1crWmQrSW1FTHg0bGJQUU5H?=
 =?utf-8?B?T3FEanVucGZVcnJ1NDR1cVdGUzByOHNPSzNjVXBXWDRoZmpqN051Mmx3RzBH?=
 =?utf-8?B?WGFiSitNUStobWpsLy9UOGF2endKYy9ZWjhqZnFhNDZabkdIV0tXbjRKVE9C?=
 =?utf-8?B?RFYwNGp5OVVKWEhmMlYxWDZrSlV0ODRBY0pmRm9hOGVFS1FoZFp5dE42S1kx?=
 =?utf-8?B?SDZMdHpkRTlYcENEeUlUb1R5U0lwWm1BODh3Wm85dWl4U1RsNGFUN0JMcDJG?=
 =?utf-8?B?YVZqelhaQjlBQy8rTExlY0hibXQwTmM2MVVvV1doWkdHems1QjdtZitNNUZq?=
 =?utf-8?B?OSsrYXF0TUtSYUpTS3ZWSUpuYkFKdk04T3JRbFliMy90K0VHazlVZ0JoMkVp?=
 =?utf-8?B?ajYvVEF4VnpVWkFNSlh5UzgvRUlVZFUxUW9iTEtKbERVa0xZQlNraWRXMW9l?=
 =?utf-8?B?Z2xUbXBFTkUxRWIrNm8yNUdPUk15MUZsVkg1L2gvZUVQUkFQbTNSS2dZZnNE?=
 =?utf-8?B?SDJnY3FIdk5EQXM5d3podVF5VDBNL1NpKzgza1p4UWRMZE42QVVmNjZ3dkpp?=
 =?utf-8?B?Qy9ZaWhOcGFQa0tQU2NVMm9wV0cyQW9Cek5ob3RKcURmL1REUEc1NXlmbmtl?=
 =?utf-8?B?YmdLZWpEcFBsN0NwamFvVUY4Qmh2OHVRSDRDa3ZKUGpPN1BvNm05Lzd5QXgw?=
 =?utf-8?B?N0NzZ2NpemZISm5nV2k4MWFVZjZaYnpqNUYrOUVXT0JiRUVaOE1yRFlhWHdm?=
 =?utf-8?B?bkE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 1497d6ff-f054-4c52-0306-08dc815ab225
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB7982.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2024 10:16:11.6925
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BjOCbdZn1qNUFiJOTcG1gvtdz5/SsrvTl88LEhizfFnz+mQvpzdt2xVhYrkX/M0CQhuKJWyF6+XHFzB/2avnGw/del/wT7H7/GO5Y6jSL2Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6914
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 May 2024 10:16:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63246

Hi Simon,

On 5/30/24 7:21 PM, SIMON BABY via lists.yoctoproject.org wrote:
> Hello Alexander,
> 
> Thank you for helping this out.
> 
> I can see packages-split with below files:
> 
> sbaby@eadlng-build-machine:~/workspace/05162024_NIC/741819_NICOPS/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/rabbitmq-c/0.11.0-r0/packages-split/rabbitmq-c-tools$
> ls -ll usr/bin/
> total 104
> -rwxr-xr-x 2 sbaby sbaby 22284 Mar 31  2021 amqp-consume
> -rwxr-xr-x 2 sbaby sbaby 18184 Mar 31  2021 amqp-declare-queue
> -rwxr-xr-x 2 sbaby sbaby 18184 Mar 31  2021 amqp-delete-queue
> -rwxr-xr-x 2 sbaby sbaby 18176 Mar 31  2021 amqp-get
> -rwxr-xr-x 2 sbaby sbaby 18184 Mar 31  2021 amqp-publish
> 
> sbaby@eadlng-build-machine:~/workspace/05162024_NIC/741819_NICOPS/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/rabbitmq-c/0.11.0-r0/packages-split$
> ls -ll rabbitmq-c/usr/lib/
> total 80
> lrwxrwxrwx 1 sbaby sbaby    20 Mar 31  2021 librabbitmq.so.4 ->
> librabbitmq.so.4.5.0
> -rwxr-xr-x 2 sbaby sbaby 79204 Mar 31  2021 librabbitmq.so.4.5.0
> 
> 
> 
> However, On the target I could not see the amqp-* binaries under /usr/bin.
> But I see the library librabbitmq.so.4.5.0. Is this expected? Do we need
> only the library to execute some client code with rabbitmq-c  api ?
> 
> root@sama7g5ek-sd:~# ls -ll /usr/lib/librabbitmq.so.4.5.0
> -rwxr-xr-x 1 root root 79204 Mar  9  2018 /usr/lib/librabbitmq.so.4.5.0
> 
> root@sama7g5ek-sd:~# ls -ll /usr/bin/amqp-consume
> ls: cannot access '/usr/bin/amqp-consume': No such file or directory
> root@sama7g5ek-sd:~#
> root@sama7g5ek-sd:~#
> root@sama7g5ek-sd:~#
> root@sama7g5ek-sd:~#
> root@sama7g5ek-sd:~# ls -ll /usr/bin/amqp-*
> ls: cannot access '/usr/bin/amqp-*': No such file or directory
> 

The rabbitmq-c recipe generates multiple packages. One of those is 
rabbitmq-c (named identically to the recipe) and another, 
rabbitmq-c-tools. If you want the binaries, you need to install 
rabbitmq-c-tools in your image as well (via e.g. IMAGE_INSTALL variable).

One can know which package to install by using

oe-pkgdata-util find-path '/usr/bin/amqp-*'

this will list the package(s) that contains files matching the regular 
expression.

Cheers,
Quentin

