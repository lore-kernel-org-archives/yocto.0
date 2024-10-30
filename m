Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59335D5CCAE
	for <webhook@archiver.kernel.org>; Wed, 30 Oct 2024 13:25:44 +0000 (UTC)
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (EUR02-AM0-obe.outbound.protection.outlook.com [40.107.247.83])
 by mx.groups.io with SMTP id smtpd.web10.14789.1730294739342975926
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Oct 2024 06:25:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=FlGK55bJ;
 spf=pass (domain: cherry.de, ip: 40.107.247.83, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L4KNTLbEba/WCFkZxBwQlotYdVoF9Szxzr57s/+SlvaWEgzK2qTKge2bfeiT2GgW5+Q00KC8iRtIlhLsG1MXZEvs6gIN1qx4QBHEvjqSSK4q969RSZKFMjJ9cH+tR6KJv7C6g3THlScHPJlZb9lttd5/69dWAUTCfHr0s4fPI8UhiedpPPxScji0/rfctMr6soWYkoQoJHDG389Ft1ig20rFfRXdQArvqeaRMoW9sKAD1K73ojGphZ3zMZhe1RPdaDDb7GAlU9ojtXydnIqO3g28FcDOkSJB0Fd1FT5ZgzXEjJnwepiRghUloLZZxUgueG+F2IVW+FH07t7IKEz7Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lrjkt5r5tejB0Yyc1kt8KLqS7IovgU4k1hMFEcrOIc4=;
 b=AbKWGdL+7Ez/Y4mpZuy1BbmXPCoqBy8bunVAiirEgtEtis2vUcLkAIZawe1SGq6Pu4HOre0FkzjcKGUFWwZfxnjuPDfNQvQ6l4UUat3qOH2nUcTiCYxDDwAZHKOcy9oNQv/60sQ3SJ0KScgXFvBnLpsTeTSsQi1+hyUVl/hbz95KfkhVmPRkQQfFfMoYyZrt0hv+HUNsh/8uFQNZVtZ4Rnp8tnawWGkOFExPCe3SGo0emeLh7F/fq6gkn/t8GqUEdAIfiIei8UncW3zxL2RVSlFOEn3GqakV+SJy9v4ruAryWdrG/w7YHmifZnpSpCvaNdru6z8eITZOnoaZ+WmiFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lrjkt5r5tejB0Yyc1kt8KLqS7IovgU4k1hMFEcrOIc4=;
 b=FlGK55bJu16Om6eThJ+VFhroJGuTorcbDTjAu+0MVe2BO8QXvXQOLfFgPE6pXtxKrbtoCjhduLqOvBjZVn51xgI2PUGhz29F61SII0in1fzujyE/e1dOodjwtddy0h5Qibixj/z2l5ZpKEdNFbIZ8hFzig20eZZkT/5EJCtV9QM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PAXPR04MB8126.eurprd04.prod.outlook.com (2603:10a6:102:1bc::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Wed, 30 Oct
 2024 13:25:34 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%7]) with mapi id 15.20.8093.027; Wed, 30 Oct 2024
 13:25:34 +0000
Message-ID: <7affdd4a-b9f2-4177-b336-100b0e475337@cherry.de>
Date: Wed, 30 Oct 2024 14:25:32 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Out-of-tree Kernel Modules
To: yocto@lists.yoctoproject.org, yishai1999@gmail.com
References: <CAJw49vrd9njM9kfOCXgnXwmdPcUoFCc4EoY560nnFcWUvHcGxA@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CAJw49vrd9njM9kfOCXgnXwmdPcUoFCc4EoY560nnFcWUvHcGxA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0001.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::20) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PAXPR04MB8126:EE_
X-MS-Office365-Filtering-Correlation-Id: ebc2a345-28fb-4969-4406-08dcf8e65583
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|10070799003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?RzFvd3JLZzBnaEt0YXQ3Wk1JS0JpSk9MOWNLT3dSMXVZWFNYTlppeVlxOFIw?=
 =?utf-8?B?azlvbnh6Yk0xUFdxVzhST0J1MTRLbGU3MmFpTUFMcW9pdkFVeW1hQnRFbjk0?=
 =?utf-8?B?UHVock9xVHd5YUpZS0d6WFYzSHkxNTlZT1FDaWtBdktLeHdnNjh2MENEUFIy?=
 =?utf-8?B?VUJEdDJRM3pWdXk4UjZKODl0bGxrbHd3OUtpemRMNU9iNlBPdzhSRzJITU1o?=
 =?utf-8?B?dkVtYTYvTnI1OTNGQ01sbmtET0VwQU5zNVhtTnk0MjRMMDExZmczemlXalBE?=
 =?utf-8?B?c21QVHUrS1Rja0FIa2thMDU1b1Q3c0ZNVXZpMEdBOXl5ZmdVRWNiMjlkY1F1?=
 =?utf-8?B?VzQzNkVBYStpeTdoaTRwUGRLWDdoVE5uUXRKSEY3WGgxanZHNGpKajRUcVp5?=
 =?utf-8?B?ZE8vVklFTTMxd2EwR1Nud2dMT0VqdVJsMkZzdm1xSkxialYrZHlMazh2N2Fx?=
 =?utf-8?B?bjFCdDIzSEg2V3hNbUdMNUVSY09qbEZuZklQbTFFTlQrckU1dnRNK1J3dGF4?=
 =?utf-8?B?Y3dlV2VidjFzK1BWYnZGanpyM0NjUDdzS0xjQ3UrNHp1YUJIaVFrQWlLRi9x?=
 =?utf-8?B?Q3FTQ3c4Vk16TGVmMEZMZWlSZ2p4bUlXbS85UW1OR0orazVoUmZCYXp6TFRN?=
 =?utf-8?B?ZWwzWGt4M09CSk5laWw4R1kyV293T1hMdmJUZW4wTm95UVpnUGZxbkdlUWY1?=
 =?utf-8?B?cUZQUmF6Rzh3WDVWL2pOd2NLdGtiZGRzTS84K3JCQnBWK21hQzZSZ3hiMDFC?=
 =?utf-8?B?NkNJUTBqeVRVYXptZkVLK0MzSmJPanZNTm5rb0NMNm96cDM0ZXI0M3dwT0Fi?=
 =?utf-8?B?RWFuRjdMVnZTa0UxOGR6TXNyRm9FdkVOaWJ3VnNzcThDRXU3V1VCMlNyZTF0?=
 =?utf-8?B?eno4NUwxdWJGUHNrOEhBSzRHRUdPbFNGQm9XZHBNZDlNLytuR3htL2x2cnJO?=
 =?utf-8?B?anVuaThrdFcxOG9KWDJBSjEzQ2JTcklFRTRSOEkvYytwalVDSU5LZTdRM3E2?=
 =?utf-8?B?VFVqV3N1R05ZRzdVREo0RWJUdnhoQVcxcHBTeUt4YjdBd2pzYVpzeHdYZHFn?=
 =?utf-8?B?QWZaakVWbUVkVnFTMzdnK3E4OXBXWEE2SEFCYjFFSWpoRGNRL04wT0kwU1I3?=
 =?utf-8?B?dkZXSUN3dFQ4Qi9ZUDgycWpWMEdRSTJJeUg4S0VRajZUZENIS2NMQjRERlpw?=
 =?utf-8?B?NkJ6UmoxQjJBM1FvNk1DZTF1ZHhtanl1aVRocGpoUGZSN0tRWHZxZ1Bhb21j?=
 =?utf-8?B?OWJFQ1dQY0RtakgrOFR3ejgxdmdrSHQwR2NKSjArMTRjL0JwUzhUYm5DSTUx?=
 =?utf-8?B?ZWRMZFZxVGFvL0VzcHRmVnZqUWdyZjVqRlEzUmd1WEZJemVBb20rWlRlNk9y?=
 =?utf-8?B?ZkY5dG9pRjZ3Ui9zekZQRTFYZHB5SmJJOUFSem1RQ3RrcjkwbFprSWp5VzMw?=
 =?utf-8?B?TS9ZYWEzdGJiUHVWdmJsMmdtNlZpODhrQUh2MlBRNUk1aTFJK1NlVWtPdUly?=
 =?utf-8?B?NTQ2TmZRVTNpVHJTemlJUWQzRVVhdEZFbElWYXFuWmV4d3VneTFlY200TUNw?=
 =?utf-8?B?ZXpRRE9kZkhWcU5kSmNYNXV3MU9oc3plR3pNUTdRblc5Q0tLc0dBU1lPL3RU?=
 =?utf-8?B?S0sra29NNFBpMi93QU1sK3JEbE5lVDRqTnA3VDFjOVJYNm13ZGovN3l2YXBR?=
 =?utf-8?B?Skw5Z1d3SGtlQ3owcm5UaFhPZUU5Zy8zbDhQK0tPN3ZTU09VRHExOGZUR3Z3?=
 =?utf-8?Q?mNRFEr0pOdrgQVjDGCrb+EGgQzbdGc2ya6e540z?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(10070799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TmxleCtoTTQ5a1doSXhMekkvZitFUWZLZFpQTXAzSEkwYWt6bVNSb1doLytI?=
 =?utf-8?B?YXV2dGc0QVQwNFBGUFJtSTVTMVhpeHBNRUJ1a3B2ZW8ydTlrOHU2NHViK3lN?=
 =?utf-8?B?Ti9xcXFDMm9JQlRQdjQ4dktQREx6QkgyZS9JU2hHb0J2dUkwVEgra2RZTHcy?=
 =?utf-8?B?d0tQaGhNcjg3c0toMjRRWE9PejMraEwySyszcTRWckVXazJQUzZwVElPTHU5?=
 =?utf-8?B?eEFXV09YZFpHcnNyTUxWMGlTd0hHZ1VxUldRU2gyWmRXOXdOZ0REYmtJNCtK?=
 =?utf-8?B?ZWZONnVxYmNKbFFNRFB4Nnd0QjkweTNDdWFNZnN6cjlnNTB5WEFNaTBybjZk?=
 =?utf-8?B?UDE0YXB3clJKamVJT0R6c1FZbDNhRjkwTU1GcmxkZHg4OElRTnZ5ejZQUFd2?=
 =?utf-8?B?bzk0TERVNllxNHU1THpKbXdIbTh3bVFFOFlyQlVDR01JT0N1M2o3K0JJYUpM?=
 =?utf-8?B?QmN6RTA1c1dMNnF3d0hVVHc1TkZsWGVNTWhQekVPTDZnVzY1SExSQVRsMkM4?=
 =?utf-8?B?Wm5MNDZWNVFQUWJwdm4vMkZvRjZUZnV3UGI3a1pEd0ZHUHJGL3FBOWFBSXIy?=
 =?utf-8?B?YTA2QTZPQ3RjM3lXWTJydG1RZkxUMDR3ak5zYTJtWFQxWFhmTmRBbElQNTZB?=
 =?utf-8?B?RURjUnp4cmVDNzRKWjhHaFdMSWdXQ00wVmc0cHN2alFMcThFbGRIUXZHUEQx?=
 =?utf-8?B?UzQyd3ZXUHl2VVdjR3dacDBOT2tmNmtiMjNqWDAwTHBKdkk5aVhnRXcwOGJr?=
 =?utf-8?B?QVI0T3l5U0hqb0N5MDlXVkZ4dE5EeE9YSmRmNnhBQlhENWh0eEdIaFNkK3lw?=
 =?utf-8?B?YVo5VSt1K3ZLZ2Q5NDFCcnl3QkwxTXhrT1hNS2lVazFrUHMxajN4dTM0czBO?=
 =?utf-8?B?elJnenVCbHNEWGQ1Sng4RGFXWVJseCsrU0xGVUZVVTh2SnQvOERZa1lwZy9Z?=
 =?utf-8?B?WFNYTEROTklud0xFZ2FuNWtaWENDNkpkV0JFTmZVYjkrV3hIOFNoOElwSFFL?=
 =?utf-8?B?YUEraXl6Rkh0czRvMHprNGlEbVVpb2FnYlRNV29LMStkMHYxSktncnJWaUlE?=
 =?utf-8?B?bXYvQVNYOXpRY3pyZi90UUtEWkF0N1J6bjR1eC9ZR28yOU1ISDlnOWJ3Q05n?=
 =?utf-8?B?eSswd1ZmSE0rSy9kS3VKR1dZSDU4ZkZqbFlQK0JjbGZIU1I1TzczMkdrdmNI?=
 =?utf-8?B?U2ovQjZZckp6U3lVMTRLcUUxSEo4YlQyREk3ZkgwUU5kOVdQRlh4V3lTOCs3?=
 =?utf-8?B?WC9PTTJYUzJjL3EwdzJ4aVZkNWxZSGJrUllGWHRoVThqdSt4c1ZJRkw4aWt2?=
 =?utf-8?B?MkpmdGQveTJnQXViN1hEU2Y5M3pjRFhCcGk3eHNKOUtha0I0SXRjTzJ3dzhI?=
 =?utf-8?B?SW55RHVIaDI5bVZvTFpXaDVBOVE4UEVLRktJdzhxdkhKcWVnOTNTelYxQkpy?=
 =?utf-8?B?UVBkTm9MSnliNVhaMFFmK0U1bS9LNzZoUXUwN0phN211YmtqOEVPanZEc1Y2?=
 =?utf-8?B?Q3F1RnVITyszNWc4N2F6ZUNRbGJxUWJmZHVPcGJjcEJkT0VnWDZuZUJQUzhT?=
 =?utf-8?B?UHgza3haOWc4aEtUUkd6RjhQKzc0YUVUajJhYVlxVldxOG13c1lXYWUwM2J4?=
 =?utf-8?B?WTFCMi9Oa21ZME0zL3p5ZnVwRkNCYURXWDhJc2NoczVVUGtKdWM5NG1jekNi?=
 =?utf-8?B?N3pvN2JMcFVWM3dIcmhCaUNGWC9kZWREWmVoUjNxMkpZcDRQSi9XcERpQy9q?=
 =?utf-8?B?ZDE3WDBrY09tdjlWSk8vNEpvbVVSRFMxZ3NkbHhYRTJTK0R0VEQwQ2U5dE90?=
 =?utf-8?B?Q1IxYlM2Y3dldlNxdjdRN25EZ042QjV6MTRzTW1oWVhOelcyVlBOSjc0Q3R5?=
 =?utf-8?B?NFRaVWFqY1U4RG05UHAzTlFKOWNCTUplbnJ0RVJhNEZCSlAwWE5vR09RL1lM?=
 =?utf-8?B?Q1VlZ2loU2d4aXVsZlZOSEVScFdjMXNlb3hKWFVDdXk3MzA1dlFRZjZ1c1lZ?=
 =?utf-8?B?YmM0c1NMcUtxSW05UHBxQWp4aVdrTGJtS3liV0VoMjNFNEowZkl0a0tya1dB?=
 =?utf-8?B?bkUwU0V3S21SYk56SlIzeERRMUlVTHJNdEhaVUNMYmZUczVmUVZ6c0xYR3M4?=
 =?utf-8?B?Q0lGdmp5YzhxN29JNjFOTGNCZy9VQlNMcTNxam05cDV0ejFDVFlQVjlna2Jm?=
 =?utf-8?Q?oI+XXjF8keVzhHy995+mH0k=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: ebc2a345-28fb-4969-4406-08dcf8e65583
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2024 13:25:34.5009
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AU9IVRBgId1saaEfk5vQhCzLcHWcx0zJi5JmzZrNY4plgo3BCQKH1rYNpDVh7YpAB9+pOHw3bCJSRqMsA8JRTBwwys+pP0RswFUNy1qexdg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8126
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 13:25:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64182

Hi Yishai,

On 10/30/24 1:58 PM, Yishai Jaffe via lists.yoctoproject.org wrote:
> You don't often get email from yishai1999=gmail.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> Hi,
> I'm having a problem compiling my out of tree kernel module.
> I've managed to reproduce my problem with the meta-skeleton hello-mod recipe.
> I'm working with poky on branch scarthgap.
> Here are the necessary changes:
> 
> diff --git a/meta-skeleton/recipes-kernel/hello-mod/files/hello.c b/meta-skeleton/recipes-kernel/hello-mod/files/hello.c
> index 4f73455d20..221b5da97c 100644
> --- a/meta-skeleton/recipes-kernel/hello-mod/files/hello.c
> +++ b/meta-skeleton/recipes-kernel/hello-mod/files/hello.c
> @@ -7,9 +7,13 @@
>    *****************************************************************************/
> 
>   #include <linux/module.h>
> +#include <linux/sched/types.h>
> 
>   static int __init hello_init(void)
>   {
> + struct sched_param a = {
> + .sched_priority = 1,
> + };
>    pr_info("Hello World!\n");
>    return 0;
>   }
> 
> As you can see I'm trying to use the sched_param struct but when compiling I get the following error:
> 
> | /home/user/dev/yishai/yocto/build/tmp/work/qemux86_64-poky-linux/hello-mod/0.1/hello.c: In function 'hello_init':
> | /home/user/dev/yishai/yocto/build/tmp/work/qemux86_64-poky-linux/hello-mod/0.1/hello.c:14:16: error: variable 'a' has initializer but incomplete type
> |    14 |         struct sched_param a = {
> 
> This looks as if the struct isn't defined anywhere but if I look at tmp/work/qemux86_64-poky-linux/hello-mod/0.1/recipe-sysroot/usr/include/linux/sched/types.h which should be the header that I included - I can see that it is defined.
> Therefore, it seems like that is not the actual header being included.
> 
> Would love to get some help on this!
> 

Just giving hints at where to look at next, not sure this is really 
valuable information but here it is.

6.6 had the structure defined in include/uapi/linux/sched/types.h but 
6.7+ has it in include/linux/sched.h, c.f. 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d844fe65f0957024c3e1b0bf2a0615246184d9bc

If I am not mistaken, the kernel headers are coming from 
linux-libc-headers which would be 6.6 on Scarthgap, and not your kernel 
recipe (because it is **REALLY** bad to use non-upstream kernel headers, 
feel free to read the big comment in 
meta/recipes-kernel/linux-libc-headers/linux-libc-headers.inc :)

If that is the case, then you probably need to include 
uapi/linux/sched/types.h instead?

You probably need a different include for 6.7+ which would simply be 
include/sched.h?

Hope this helps.

Cheers,
Quentin

