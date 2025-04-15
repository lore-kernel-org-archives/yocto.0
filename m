Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 566C2C369AB
	for <webhook@archiver.kernel.org>; Tue, 15 Apr 2025 14:56:59 +0000 (UTC)
Received: from OSPPR02CU001.outbound.protection.outlook.com (OSPPR02CU001.outbound.protection.outlook.com [40.107.159.55])
 by mx.groups.io with SMTP id smtpd.web10.22273.1744729010996812897
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Apr 2025 07:56:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=je3w0Q1Y;
 spf=pass (domain: cherry.de, ip: 40.107.159.55, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o0311kHxMe6Gr0K8aZ5JQhNXQ52eXbtFToQM4zDM+avPtsmdhbNu4v1BNbIMgcvYPUBVzmEPh3/i2KxvwU27BbQKXQ65ghqAwmhm1RtF+A1WUZWLZLGUyvgj7THtmwma03baxpCz42EmDDmD1Tn9R3EADoUScITdssDTw7/8voyxqWFxRaVl3PfF/HXZHgN/YYQtl9pjUcf76tNMN4a913x5zSUpDb8ftkH6tvXSJImFoamEignCcbbn/28BoJ6OGn8qpvMUM8lhqrNzFdpD+FpiIUyB9SDQn4N8Z9rT4BFidMHV7AIx4TVspLa8hsUFkKzACBLvskoWIK8F8qgkFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2s1gu6+Hufe9wKmjwz/r6jWI6geevH1IQiYm4XNmocw=;
 b=G5fesZ4iCi9TRV5Fdh7NcruoMXcleQ4/dybAZrq3EtOBjEFeYkQ9/LOy2oePGplZTG7KawFFYfPEye3xZMm4nPRJoPQNpp3czm9vmcLtOE2y0H801c6NTUWTbuGDI0vSG8vmg5kAymxyTq5g4LXjBBQ4Gf9pFUI+a/K7LUnwyguVcCVcmJlSGv1Ls5N4W6FcQ2hj4mXpQjmHDnzvVC5XPQa5G9wiGM7sVbNr23oA9aAZ4bHOZt8yn057DRIA3WApYsa9CPqpmpsnaWdSyJLDS80MNGAa79bJhqu7M2vOnQrySOMwWvb8ggI7+K3TtANFZRUqTRIn6mk2ChY1n1Q9/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2s1gu6+Hufe9wKmjwz/r6jWI6geevH1IQiYm4XNmocw=;
 b=je3w0Q1YYoESFDOxlR9x0ypI3ZOiJzDHamejDlCf+EK8BXd3qA/jbhIjtoxw5be18yx/3YKiM2eddHCRX5saosr7AxaAc66n5a9mt8O3lcH/aCno3JW6FYSVqyuv1Nr+8b4QwZ9zXTUk1EKwVcbI8ZAS7l2ThX/eLXHH2BKw16I=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DBBPR04MB7738.eurprd04.prod.outlook.com (2603:10a6:10:1ea::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.35; Tue, 15 Apr
 2025 14:56:46 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8632.030; Tue, 15 Apr 2025
 14:56:46 +0000
Message-ID: <57061edc-a48d-4a5b-8b85-e9817962e00e@cherry.de>
Date: Tue, 15 Apr 2025 16:56:45 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Recipe fetches always the latest kernel while building
To: yocto@lists.yoctoproject.org, kanakshilledar111@protonmail.com,
 Gyorgy Sarvari <skandigraun@gmail.com>
References: <tKIHWnniqyKbGr3pmpXnMAtt19UwC1FoWVQjYEoP_OaMYYUju5C10Z2duqK18grooGwMrqGw0xeJdFRcHMBuftdCp84cApraC13a1TL7uYU=@protonmail.com>
 <f646cd7f-cb85-4da9-b346-a7d4ca0e9614@gmail.com>
 <9BneOrzm9SKaeYWYFSxdV9L_W9dZ4KIbJN8Z5s_EuSER2NdBN14Q23A2O4udE_qEx-GT5VNOpjjw7Rvc_ERUSsgVi1WO693Z2xaFdB6aYpQ=@protonmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <9BneOrzm9SKaeYWYFSxdV9L_W9dZ4KIbJN8Z5s_EuSER2NdBN14Q23A2O4udE_qEx-GT5VNOpjjw7Rvc_ERUSsgVi1WO693Z2xaFdB6aYpQ=@protonmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: FR4P281CA0275.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e6::17) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DBBPR04MB7738:EE_
X-MS-Office365-Filtering-Correlation-Id: 71796ece-cef3-4517-c14d-08dd7c2dbdfa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?c3p0SDRnd0NZN3JvYnMvZzJoOWVMcXowYVNlWGxRc2xWWi90YVlxY3pHSEJm?=
 =?utf-8?B?WDUrYUxjbUkvYnVoSlNCeVRWL2NhaWdrWU5vRTh1cVZoS2lhSWRLdzhXQlVL?=
 =?utf-8?B?dkJ0cTI3MzlYb2swSWFjbmphdUU3U1J1K0dScXN2REgxTVJoa1RzZkd1NHRP?=
 =?utf-8?B?YXlsbEJuSEFITTIzUnVwbTBZamFOb3gwSjk5WkdlWm5qamlTa1RBNnE3WjQw?=
 =?utf-8?B?VkJmenBMZ21ZNnQ1bExrTmpHSGh4ZzlPZGFFVGVTcGVWYmludXgySnRaMitF?=
 =?utf-8?B?d0pCRnlBRGtHTFJXbW9FMWFLMjJUL3psL2Yycm9FeFVDdnRUaWxKWHZLWEI3?=
 =?utf-8?B?Tm56WnlMVHlUaGNMRXhXRDNuSzl1TUUwQWpCdENMenpYNktvYWlZaTJOQWFa?=
 =?utf-8?B?ZVpFci8yZkNZaCtDVHY4VFRlOFVuNFpVNHRNU25vU2t3aDF6V0FzQ2c2RDV6?=
 =?utf-8?B?TUY0V1BQbTAwQ0lDR0RHbEFZVFZGOVlzVkFpd0haNG5ORjRXckp2cTdUNWdG?=
 =?utf-8?B?Nzh2Z3IwRCtkaSsvRE15aDd5L0VuenpvQVVydXBmZnpVQ2Z4VXFkV1dIcnhZ?=
 =?utf-8?B?bkVIN1NlNVByODc1VjBKZVA0S21mTlpOdWtkbmJlWFNOQnRHaXZ0V1ZkUHVp?=
 =?utf-8?B?NFJNWUh4eW5xKzJ3ZjVZT0FBNlpwQXlmTFgvcHRFS3NYOURKLzI1OUNjVmc4?=
 =?utf-8?B?emJIUEo5RS9nWTNpNzhBNGpwcG1EajNXUzZoQ0xpcUp0dUNwNEpuOU5oMmxW?=
 =?utf-8?B?S2ViS1hCU3Y3bkt1L0dsbFhSQzBqWVJ4Skpib3pEUW9NZEFEWU9Gd1JCRjJJ?=
 =?utf-8?B?T0pjK0NqRG1xNThjYldia2JtSEZlWWpxVkc2VGtTQ0doM2dTeU56ZmN3dXdl?=
 =?utf-8?B?ZDVHWVVzMUp1cW1GTXI4eHk0SnJDektoL3M3Wmw5b2gvSlBRdzFLQm5GOG4r?=
 =?utf-8?B?UmlSKy9KRHpTUHMyY3JPYmRTZ2JtanZVM1Y3VHRGRFhMODdQSndGSTREbjlJ?=
 =?utf-8?B?SUk0MElES2V3TVVIaW5sTnJyQnNKcXpMYlY4SkNMVHhFUG90Z1I4YjJVeEcw?=
 =?utf-8?B?RDh1WTJJemhKVEV5TEJpbTkySm9TdkJ2U2lRQWgwVVFsMU41RUF1c3RKSnkv?=
 =?utf-8?B?eG9XZjRsa3RmR1lUL3Y4ejc1Q01abGwzNlQrNm5KODFwdEg2VjgyQlZNeGEz?=
 =?utf-8?B?OUphUlVLY2RFbmtrUUNWTW5iZVZIVDdQai9scnJ4a3JjWkpSS1pmMUo2Rllo?=
 =?utf-8?B?K3dmdEh5cCtKZVMrMW9hQjRKcytxaFBNRE9sVENmbjNJa3Y4c3JJODF4enNm?=
 =?utf-8?B?RnRncllhbThYUEYzc2RoRVdRV2VjN3lVUmh1RWtqQXNWbEtmaVlldGNpOXVy?=
 =?utf-8?B?Zk01Vm5ldlJPV0l2MlprZWdvSlFBd3RMbEJvc0F0UWJlUGhzaCtMWEVVQU4z?=
 =?utf-8?B?MGkzcGhuZEZpekFYajV1ZHFSQ1BreHErYm5EVVFtWXNLUTRoL0cxZlcvRmMy?=
 =?utf-8?B?a0pteDdNakJXdXNhUU1HZFA0bGw5ckE4ZnN1ZS8weTY3bWdubDRIbXhmYnR2?=
 =?utf-8?B?QzFsTmRIbjFERWhVVkFBVldoWlFqWUNhRGVucUFpYXZkZmZUWUVibW5McDNs?=
 =?utf-8?B?NGYxVjhvL3dINDdxYXBva2k1S3dLcklBRjZkcDhPTTlFckxUamI4OXhKenVa?=
 =?utf-8?B?a29PTXMwQXQ5amxhcGJrb3MrekcvNlpUTTNYOVBCNGF1Q0ZCYXphZVlrZVVR?=
 =?utf-8?B?NW5FK2hHalZMcDlFUjFmUzhPOUN4NjY1aWJ3MGtLdHBROWNLODFmd0NRanhV?=
 =?utf-8?Q?rT262WljoVfLKiyV3T6c20F4CIRnBOWra8krE=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YlJXR0doRFJna1BYUjh1bGJsVmJGUGRzeU9IQWRSdys4VFlDS0hlYU5hM0k0?=
 =?utf-8?B?elhxYzRsN2Nib0pwRjV0MUZsVkM2bFN4YTNKUHNsWEFhaGNGK0ZXaDhMcThu?=
 =?utf-8?B?dVArenNVQkJyR3dpZHdPakhQQVY3VWYzVVk5N2NXMmIwUTNONjZNR1UzbkRT?=
 =?utf-8?B?TjlCZEpCMEpMWkgxR3o2UkY0K3VaN2pURXJKb0s2MDU5TXEvaW9Ha0dXdzJn?=
 =?utf-8?B?T2FXbHhxTnY4dWNHSnk4TUNpT2RmRXl0RW5EaFpueGlSOWlmMy9JOTZOc3BK?=
 =?utf-8?B?Q0JVd2dHZUM2WmtPU243Ty9haUNmNGVTeHphSVJNbm9vN3dxNzZyNHFuUmF1?=
 =?utf-8?B?Y3hGUnRzV2puS0hYWHcyQzZSS21kT2ZQMzFjb2diUHVnRVN3ZzNqNmdkM1hD?=
 =?utf-8?B?bXNGYWNNbXlIREFCOCtKaUFHYjdmTjhUbE16dXZqWjZickp5aSswbGJqQ0wy?=
 =?utf-8?B?Ujdwb3dtTHViTmFrb21hV3phQjlkYS9rTUpycnRsSUtYK0R0TnJIMStXc0hI?=
 =?utf-8?B?WGtPRkw5eWR0QUNxNjM5c1JOekZKQjBmYmhZZTVoaWJ0Z2d2OFQyRkFjT05W?=
 =?utf-8?B?YjV5UlZBd01kbkMyTkw0UWk5ZGRIb21MRitkNVhJOXkwempTVDA3ZXNENmM4?=
 =?utf-8?B?dkdQOGY4RS9oRVJ3OFBtSWFjSzdZUjJXanRPbkZrblZXQXBmR01PNE9Pemh6?=
 =?utf-8?B?RnU0bkZWMnZIZmR6THZ4eWlvOFcwa1BiSVNWTm5hMXFaL3FpTE0weUdsNmZU?=
 =?utf-8?B?OHo2UmFKRzFnUnNFcVhEVDdPYU5HY01CVnZ1dHlKcitaQ1U5eklldzd0RXJY?=
 =?utf-8?B?OU9BNFBVK1ZjY3BVc0s4QVBML0NDNW5VWTVWTW4vYkJiVS9aUW8xMzRiSS9O?=
 =?utf-8?B?aDNpbE5pVGxHZXY1cnlCM1ZOcFNyYmt4VVFKVk9VTUhWK3FtdUhkS1RIQzlV?=
 =?utf-8?B?WFV1UC9wcStEeWsxNkhRcG9hcTlPVzV3SWR6aTZBa3FYR0N4YVJ4RUxjeGpX?=
 =?utf-8?B?M1lRTXZNL09lT21laDFUK0JHdjJpbDVaZ2lXY0RqajAxamttY2ppMEFsZGJQ?=
 =?utf-8?B?NGNnNEZEY3hmT0U5YTNYUmV6OUN6TkwremNrK3RuUGxveTVtSWRrUFNvajh1?=
 =?utf-8?B?bUcyRjBmOGpsMkZjZEI3bE1uTlptcy93ejFxNzlFb0xSNHdvRlV3VmZZR2ZR?=
 =?utf-8?B?MUJjVTZQRjN4cVVRRTV0M29OUll2emhva2dGZGNHSnZlTHNWWTl5aFFRN05M?=
 =?utf-8?B?dzEzUGhsSk9UUTFQd1dDVkl0UzEyM3hMZ3BQVEVFUnFLQzYvSDZZTGtmcW9M?=
 =?utf-8?B?RHBPeHdGelpMNmdvK3RneHMyV1BQMkgwQjkvdVZXR0ZwdUZyM21Qd3BEMXF5?=
 =?utf-8?B?a09yRllabzk0TWJqY2dEMVg0MEJpbStjS2dOcWJtL09ncWpQVm1tTytOamRq?=
 =?utf-8?B?NVlNc2NkcGEwbk5tbU9Xa0VVRHBSM2NxWGF6VExna1MzN1ArR2tlSmVLVGhJ?=
 =?utf-8?B?RU5ZUmZmRS8rU25aYTFjbmVrVXBONkxldjMvQXlXVUcyZ1cwWXN4NVQyL1Vn?=
 =?utf-8?B?VUZvQmNib01JUVBQcjFtNzgrMGMxcGZWVnkzTHBJd0h0UFE5YzZJK3JGaWJW?=
 =?utf-8?B?UlpSVmV1aVlUcGZFRmRYclZBRTdVVTE5NmNyQk43eU80dGx6YVR1UDZHOUkv?=
 =?utf-8?B?azJXWmswSEV2cTZVdnl6L0xkYy9hOTZmaFpwWEQ4YXAvRW1JTzVzbnJlVDFX?=
 =?utf-8?B?RUxJNTdjOUVlTjI0T0VjS3I5SmJHSTRyY29uVGh1QTVOZUVETUtVNDc3M1BR?=
 =?utf-8?B?VmE3elA3VUpWSVVWd3Z6UStqS0gzUHR0NFhBZEtSZllBLy83OXJBakp5cCty?=
 =?utf-8?B?QlRPSjg4YkpUL2hrTjZhMjN1MHBnTnBIdXBCM1dxaUd3VFRDVDE5cTI3ODBh?=
 =?utf-8?B?QXlMZ1FDdlJ1NVJYZVNUM0xwa0MrVldwa1VTRmo2azlUWGFMNDNKQzMreVJw?=
 =?utf-8?B?T0NlOHJHMkFaVTRaNndlMUpuZHE0UnpBZE5CTVZhQXAvb05lc3ZqdUxGREQw?=
 =?utf-8?B?akJTQmsyZDJMNDkrV3lBdmFzd0gwd2p3eW5ta0grZ1N2L1JOMSs1bmVnQWpU?=
 =?utf-8?B?OC94VlRHNjRMSFFycTBTR0pvdzFBSzV1akl4YTZhaE42bndmWTBHQ2pabUNx?=
 =?utf-8?B?S3c9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 71796ece-cef3-4517-c14d-08dd7c2dbdfa
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2025 14:56:46.1737
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2Mw3O4HfAVI/DCstuDwm0ZrjDs4MP7gxSp09rJC/O5qXFJuh7iIBMaDqLeJtNKC4UGANKfhIuEfUJneG+V5mq/W5bGaSCQ+ZPwz6mOfcNpM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7738
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Apr 2025 14:56:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65177

Hi Kanak,

On 4/15/25 4:43 PM, Kanak Shilledar via lists.yoctoproject.org wrote:
>>> Secondly, the `do_beaglev_img_deploy()` task in the recipe doesn't run
>>> automatically. I have to manually trigger it by running `bitbake linux-beaglev-dev`. This task is used to build the boot partition for
>>> the board. How to rectify this issue?
>>
>>
>> This task seems to be an extension of do_deploy. To make it behave like
>> do_deploy, it should be configured similarly to do_deploy[1].
>> Personally, however, instead of having a custom task for this, I would
>> just rename it to do_deploy:append(), and add 'do_deploy[depends] +=
>> "opensbi:do_deploy"' to the recipe.
>>
>> [1]:
>> https://web.git.yoctoproject.org/poky/tree/meta/classes-recipe/deploy.bbclass
> 
> I tried your suggestion and I keep on getting stuck at the following error:
> 
> ```
> | cp: cannot stat '/home/rapey/Documents/yocto-projects/poky/beaglev-ahead/tmp/deploy/images/beaglev-ahead/th1520-beaglev-ahead.dtb': No such file or directory
> | WARNING: exit code 1 from a shell command.
> ERROR: Task (/home/rapey/Documents/yocto-projects/poky/meta-riscv/recipes-kernel/linux/linux-beaglev-dev.bb:do_deploy) failed with exit code '1'
> ```
> the similar one follows for the linux kernel Image as well.
> 
> I investigated further, the DTB and kernel Image gets added after the do_deploy() task is finished. Just having do_deploy:append() is causing the
> "no such file or directory" errors. Is there any workaround for this issue?

Writing to DEPLOY_DIR_IMAGE in a recipe is illegal, c.f. 
https://docs.yoctoproject.org/ref-manual/variables.html#term-DEPLOY_DIR_IMAGE

You can only read from it, but you should not write to it.

You should write to DEPLOYDIR instead, which will eventually makes it to 
DEPLOY_DIR_IMAGE for consumption.

Anything that is coming from another recipe's do_deploy, you can 
read/copy from DEPLOY_DIR_IMAGE, mkdir, cp to, mv and whatnot needs to 
be done on DEPLOYDIR directory.

Note that boot partitions are typically generated by the image recipe 
itself (e.g. via wic) and not by the kernel/bootloader recipe(s).

Please `inherit deploy` in your recipe and add your code to 
do_deploy:append(), or carefully study the content of the deploy.bbclass 
to avoid breaking the sstate-cache and reproducibility.

Cheers,
Quentin

