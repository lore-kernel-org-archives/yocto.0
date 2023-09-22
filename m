Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2440E6FE4E
	for <webhook@archiver.kernel.org>; Fri, 22 Sep 2023 15:15:48 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.42])
 by mx.groups.io with SMTP id smtpd.web11.103.1695395740222904310
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Sep 2023 08:15:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=TI4OhFBo;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.21.42, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bTnXKhr0TN6+HkbjQHq8AsvVJ+LJjtBm2oLrZJdbOWpZBpNJdin34gB9WNqU6wFRV8r8Cws/Z//JrIx+6S/gdJB2ASlRBmRuwkchqyPS6gY6kOnRJMDnxp64mJCuDsA1CkwIlt+D/sRJAdgbJ+RQgNbbKhucwrMmIjSH2NjOBBRv9geCXbQjronnnkrDXMyg/KqhRN7rkoELQO4+xNqVMx+XYRCkKFVN2pR3AiSjA+ycvKxusuvu3zZGqGMXAVslP5BGveXCAkSg1xh6FH54Bp0kxyv7YGc1fmQHzuwGhF3RX6uluf7rcnNAWsh7jnTACFE36thFXZ11XPkWjkCYPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kDcaqgGbaB+62ff8ZGIvJcXncDmS+RVVltqSfexJeFA=;
 b=Ooea9wL4fYp/lXTn+Qsy7LeHMhl169Qh6oFq7zQNaH0+NZN/gLxVUko99zg6U9jrKwu3ia8dlZZNSxAlTd6GIi9qr+pPNWj9LgwWnyst4BPaeZO6Rvm0NciYEN/Ys5Vg5DxaZ6oAPsXDuWiLvvUalxD+se5ZN7a1ZuDaHxeup4GyetyvZkmBaSOrj6AV9iVfMV3bphw9sc9Ans/DiTunYMDQTsFTa34mHvnVFlvkICNihTeqX0+5Kx36jFkW8mocubT/NnAUmoJ0mXhjMfFSugOxBcMkgSgUOvLfcdy88RmPyezeEqiElGGmEeMssGrXXBbE+4JIpe+GTFCSV6S2vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kDcaqgGbaB+62ff8ZGIvJcXncDmS+RVVltqSfexJeFA=;
 b=TI4OhFBoKfPRUKL+FVGT/d5IFYad5rmbzD91pcSmb5QyGqQwizCrx3a6NG1cEVpJlO7eggiw91pTy7x1NUtoXuuQb4uDBx3jcIHZ4PCnMMFKm7AA6DAZuhAZrLcgaSfUgk3pJIpgr1uqpbAGYZjECqIshhmzfuv7nJueAFXx5jBzQnpGB6jM8Nh3JMHgtHD4QhkD67TOSBfPaYsBCNJX58E3Rj4ILWeX/0cF84QFxRsVBePWOR3FfyJXRmbL+w7F/F3+7U5iABgwjVsEkp8MrJHw0Xhby527kpK/7taLoPfw+0ihDv78qFALGxk5n5LmJIWXShP22TKL1myYiODOMA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS5PR04MB9972.eurprd04.prod.outlook.com (2603:10a6:20b:682::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.26; Fri, 22 Sep
 2023 15:15:36 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5c00:6152:6ce:72b6]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5c00:6152:6ce:72b6%7]) with mapi id 15.20.6813.017; Fri, 22 Sep 2023
 15:15:35 +0000
Message-ID: <df71ddda-be1a-eaba-6486-2d035b15437a@theobroma-systems.com>
Date: Fri, 22 Sep 2023 17:15:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [yocto] [meta-rockchip][PATCH] rock5b: add
Content-Language: en-US
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20230922025123.20385-1-twoerner@gmail.com>
 <a9d93ef0-4b40-bfb2-ba34-fe50da0d6f7e@theobroma-systems.com>
 <20230922150605.GA40347@localhost>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20230922150605.GA40347@localhost>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: FR3P281CA0152.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a2::6) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS5PR04MB9972:EE_
X-MS-Office365-Filtering-Correlation-Id: 52d4b66c-507f-4977-fec3-08dbbb7ec54d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	zHNaBh1y2K5+WOnyiP6zKnbaMfQPtWLW9LIPBH8ZIZe2wDsT0cASHN2Q03qpMSFRMWlyfnJGBfM1+TC7aF+Hr4/O+9dXAS8LtC4FSJRf26zl/u9E4lZd+A8XVYBDnJZAQc7voB7BW+1H4phPWxEcNjTvt5tH1/FWTSRfG0n2oVuhvi8tBet4h0iS00SjB5dREShJRM2DaHyG/9g7G0xjgasCYi0Ep3H8Q0P0BUnN91aJvhMtXw5E4bpI4bk3I9SsXG9rQvWrFTmfJ33Lu77QyeAEO/H4NYJjB+z8iSOpaS42ceM35MEX5/IQb/xGO10D0+Jrw29aBEIJZZVX58v3/BslovYoNhhJwnTKl2vk5xFte8bbHMlRB84amGshZyEGd7okKW2abUfYrrUPD9DJjQrc8mrWp3g+7kkQsbHeyYNA6sN18xN/r5KLxIqvqR9Mm9jTMFzHJYaXLgwWCGLeSkb6uzMacUveeycjIJtS/ac4TD60E4t0G/16WSSlqMMobPHldTKAhWkKf7uh1rCGjK0OQFkIDiUkzmsipaWagCi4DRFSh2fy9TA0I6VCuIHQkYsuQHZ5ke48rtL0BaypiLKEmTD5PfxhH4Fjzyy6P0gk6cCluIDe6qErT+/LDhBQDUjvc/W9x3Hm6ObWQwuj6O5nexZAZ8i2Gp/tN5Hj5QU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(396003)(376002)(39850400004)(346002)(366004)(1800799009)(186009)(451199024)(2616005)(86362001)(31686004)(44832011)(83380400001)(8676002)(8936002)(5660300002)(4326008)(31696002)(2906002)(53546011)(6916009)(316002)(36756003)(478600001)(26005)(41300700001)(6512007)(966005)(38100700002)(6506007)(6486002)(66556008)(66946007)(66476007)(45080400002)(32563001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?L0ZBMTRnbGlpZFRDYllmTXRkZUdHNUxyMFRQcldWb0pvbUpUYm5iU2FBeloz?=
 =?utf-8?B?bzQrWmFJek5JN1NhcVNMdmRXSFBpbVZmZlFJdUQ4em9OYnZZWU0xSGtwYy9j?=
 =?utf-8?B?anV5emRvdmlhSHd2SStySmZRUTRrVXJEVExjNEtmSGNBYVpJL1dHQml2ZTAz?=
 =?utf-8?B?Q0Ewbk5XL0JzdFVUSFhvMTh3ZGk4MjA5TG1NTDM4bEljeG5wNWdTcTVRVWVJ?=
 =?utf-8?B?NUVsL2hzeXF6eHlIWFV3cmx5bjBwZXM0VmFsMWxZdVBtME9lbG4zL0RVaEhy?=
 =?utf-8?B?blBpNU82SDdFUVJqVWs2QmdRSXVDWVlFYXFaL1VhUWVXSVhwM1FXZ3Q5cTRt?=
 =?utf-8?B?bmdQeXNGTnk5YzRLNSs2bmt5MzlwOTBURkhZUU4xNUd1RE90RDFEK3N4cUU1?=
 =?utf-8?B?ejcxeVZxOHEwaG1ndnRzU0dWYnlaNi9saFB4MWYvN3d2cmVaVGFTQjN3Y2Y4?=
 =?utf-8?B?NWgzTW1lOXBEMlk0ZHlta1prR3lQYS9kL3pudXcrQjV3WmR0SnZvWldXOUNk?=
 =?utf-8?B?aVQ2WlMzYjhraSsxNXZmWUN6b25HZWticmNZSU1wNVMvaE5JejdCcmhBZ2V0?=
 =?utf-8?B?WlVSc0pNVHpiUHpIOFppbXVkbHErMWdPSEhtN0UrYkVLbWEyNVpJdnpZWGQ2?=
 =?utf-8?B?ekpXQmpocTE5Mm96ZlV5aU5HRHp4aVJQb2VJek5EK1JuNTN0bGdFd2RQTGVG?=
 =?utf-8?B?TEZ6OVFia3QwTGVHY25EV2piSG5ueWoweDhKKzZuUWJaMWJ3YnhXRjR0OTZa?=
 =?utf-8?B?cThJaDc4NUs0ZUpFWWc5QUszTmJQUmRiazZNb2YrQnovMzF0RlBSZUVjYUtq?=
 =?utf-8?B?RVQvaXFoSFJ4OEJlRmk2S2x2blZUT2RKS0JKOXlIcWpnbnQwK2w2WUMzMXFN?=
 =?utf-8?B?eExhL3loSmdyTjdjU3NBWjhQV0JHbzJIcldKSU5NWnFFalBlRWV1cHlRTEZH?=
 =?utf-8?B?d3U3TjVtUGJJMm0wU09hK29IYk9UdE1yZGo3QU9UUFVBa3ZIdmJaTDdESDlK?=
 =?utf-8?B?VHRpa3VGMEpMazNiUG1SU3VkNXRldjEwaTlVMU1LZytNUCtTY1JpWEFKQURQ?=
 =?utf-8?B?OEpuRS9QeFhKQnJvMjFaOFR4UkExQlR4RUptdmlBcmE5OUlNSDU5RC9ONlds?=
 =?utf-8?B?SWJVdGMxVlF4cGJFWmZkTHEwK1plOHJHR0pJK043c3FTODN2cS9COTVYTjR0?=
 =?utf-8?B?bGN6cXc0bjAzRHl3dGxHVG8ySmJvTzJjRFFITy9jYmdKMmpPQmoyU1R1Y25S?=
 =?utf-8?B?YXAxdFZWL0MvUHk2Y2YvV1NWZmgwN1pJTStyMjI2MUpGcnJJR2paQ0VWeUhQ?=
 =?utf-8?B?UGw1RURmYTZpT3htNUU3cDFNNVdiUi9FNWNmUXljSUkvdG9EY0xSc2Z3WTli?=
 =?utf-8?B?UGE4cE9mM2V6bnBrYndxbWIxd3VSeGhUSC9ZNnRuaGYySFFIZzVybEhzZzNz?=
 =?utf-8?B?aVNQcWNpbHFzcHNEZ3ltSjJYcE4zekZNeTNUeDZjNTd1anMyaWw3a1VaZmhW?=
 =?utf-8?B?SnFNVkFsNTRNSmM0eG9mU2wzTGNDeUM0ZHVwOVJYNDlyNWVGK25LaTY0S0RT?=
 =?utf-8?B?a2xtVHpZVXIxVkJlZmJZbFZCUHNqV2M2NjBneDFIQWRzaFBEc1FydXU2VzFm?=
 =?utf-8?B?bS96czhHU3c1b3YrYTRxU1FDWHBWM2ZtcEhEQ3VnQS9hM0RXWXJ4Tm0yQzJs?=
 =?utf-8?B?Y2JNLzhSUXdZdnlKMHJTNDZZQnVoV0FpNEx3Y2VGa1lja01ZcjdoU3BKcmZu?=
 =?utf-8?B?K0oyRXpjWC9FS0htUVJEZ0hZOVd0ZmR6Vnc2WGRJbUFqV2NlRTd5N2trb3NS?=
 =?utf-8?B?cmo0ZnJZYVEwNjRIL2xtSElJSUNBb1hUaWlKMk51SzRVR2UvS294N2puSWdq?=
 =?utf-8?B?d25mWkNVWUlqTzJUOEliMEJFL0QwTEh1YUMvd1UzUDZLSUFJUGpWb2UvUlV6?=
 =?utf-8?B?c2JjOFdnTTdta1h1MGh3NlllamxaWjl6Rk1sejAzR3NvNTlwSFJoQTczMzlk?=
 =?utf-8?B?VzdTWEg4cTZaUSt3ZGpROFh0NkFNT0tBK1p4SXcrMzg3Z2lPaDZ5RUc3RVkx?=
 =?utf-8?B?S083UDFqZ1Vram9wR0tPallHZ2t3bUI5VkNCbUFIVktMeFhaM2NOWnBYMnQ3?=
 =?utf-8?B?cGdMYXdUOEFEV2p4Z3NNZWxqSUhWWUZUcmVheTRhK3V0bGgyN2pWNFhJT3Yw?=
 =?utf-8?Q?IHUBHq/UDoRd3zcqkZm3Z1g=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52d4b66c-507f-4977-fec3-08dbbb7ec54d
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2023 15:15:35.5175
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s4Sr+ZQywXG9RXPEDlIfa29G75tTThIhbKiVcXE854CoaJoR7sHMURhzmeorSjYbEdnbDJ1NeVINFETXzepusQhq4MARKceQsPACpX2FpmjPACKE2+68HPTcSekeW1Y9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS5PR04MB9972
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Sep 2023 15:15:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61081

Hi Trevor,

On 9/22/23 17:06, Trevor Woerner wrote:
> On Fri 2023-09-22 @ 04:22:11 PM, Quentin Schulz wrote:
>> Hi Trevor,
>>
>> Looking good :) Thanks for looking into it, will be helpful to me in the
>> upcoming weeks/months :)
>>
>> On 9/22/23 04:51, Trevor Woerner via lists.yoctoproject.org wrote:
>>> Add support for the Radxa Rock 5B
>>> https://wiki.radxa.com/Rock5/5b
>>>
>>> The device-tree for this board is better in the 6.5 (and later) kernels,
>>> therefore set the kernel to linux-yocto-dev for now (eventually this won't be
>>> needed as linux-yocto moves forward).
>>>
>>> The Trusted Firmware A project (TF-A git://git.trustedfirmware.org/TF-A)
>>> does not currently support the rk3588, but patches are in review. For
>>> the time-being we're using the binary DDR/TPL initialization blob from
>>> https://github.com/rockchip-linux/rkbin. Hopefully this can change if/when
>>> TF-A gains support for the rk3588.
>>>
>>
>> Because it's closed source, I cannot tell if DDR binary is based off TF-A
>> but I would say it's likely not? It's fine like this but not entirely sure
>> it's true.
> 
> Does this sound like I believe the binary blob is based on TF-A? If so I'll
> need to reword. I'm literally trying to say the opposite. I.e. we can't use
> TF-A yet so we're stuck using the blob... for now.
> 

I can suggest:
"""
The upstream Trusted Firmware A project (TF-A 
git://git.trustedfirmware.org/TF-A) does not currently support the 
rk3588, but patches are in review. Until it gains support, we are stuck 
with blob provided by Rockchip in <rockchip-rkbin link>.
Similarly, U-Boot doesn't have support for DDR initialization on rk3588 
yet and only a blob has been provided by Rockchip in <rockchip-rkbin 
link>, so we've no choice but use that one until proper DDR init is 
added to U-Boot upstream.
"""

what do you think?

>>> The rk3588 comes in two variants: rk3588 and rk3588s. The "s" option is a
>>> stripped-down version of the rk3588. In the Linux kernel these two SoCs are
>>> kept separate, with the rk3588 building on the rk3588s, so we've mimicked that
>>> same behaviour here.
>>>
>>> Signed-off-by: Quentin Schulz <qschulz@theobroma-systems.com>
>>
>> I may have improperly wrote this in the github commit I sent you, but my
>> professional mail address is:
>> quentin.schulz@theobroma-systems.com
>> :)
> 
> lol, I was wondering why that bounced.
> 

Mystery solved :)

>>
>>> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>>> ---
>>>    README                                        |  1 +
>>>    conf/machine/include/rk3588.inc               |  8 ++
>>>    conf/machine/include/rk3588s-base.inc         | 16 ++++
>>>    conf/machine/include/rk3588s.inc              |  5 ++
>>>    conf/machine/rock5b.conf                      | 12 +++
>>>    recipes-bsp/rkbin/rockchip-rkbin_git.bb       | 37 ++++++++
>>>    recipes-bsp/u-boot/u-boot%.bbappend           |  5 ++
>>>    recipes-kernel/linux/linux-yocto-dev.bbappend |  3 +
>>>    .../rockchip/remove-non-rockchip-arch-arm.cfg | 85 +++++++++++++++++++
>>>    .../rockchip/remove-non-rockchip-arch-arm.scc |  1 +
>>>    .../remove-non-rockchip-arch-arm64.cfg        | 66 ++++++++++++++
>>>    .../remove-non-rockchip-arch-arm64.scc        |  1 +
>>>    12 files changed, 240 insertions(+)
>>>    create mode 100644 conf/machine/include/rk3588.inc
>>>    create mode 100644 conf/machine/include/rk3588s-base.inc
>>>    create mode 100644 conf/machine/include/rk3588s.inc
>>>    create mode 100644 conf/machine/rock5b.conf
>>>    create mode 100644 recipes-bsp/rkbin/rockchip-rkbin_git.bb
>>>    create mode 100644 recipes-kernel/linux/linux-yocto-dev.bbappend
>>>    create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg
>>>    create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc
>>>    create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg
>>>    create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc
>>>
>>> diff --git a/README b/README
>>> index 286dafbe1020..032d9bbb6b34 100644
>>> --- a/README
>>> +++ b/README
>>> @@ -30,6 +30,7 @@ Status of supported boards:
>>>    		vyasa-rk3288
>>>    		firefly-rk3288
>>>    		nanopi-r4s
>>> +		rock5b
>>>    	builds:
>>>    		marsboard-rk3066
>>>    		radxarock
>>> diff --git a/conf/machine/include/rk3588.inc b/conf/machine/include/rk3588.inc
>>> new file mode 100644
>>> index 000000000000..d358565a904d
>>> --- /dev/null
>>> +++ b/conf/machine/include/rk3588.inc
>>> @@ -0,0 +1,8 @@
>>> +# the rk3588s is a "stripped-down" version of the rk3588
>>> +# in the kernel's device-tree the rk3588 builds on top of the rk3588s
>>> +# so anything that is valid for the rk3588s is valid for the rk3588
>>> +MACHINEOVERRIDES =. "rk3588:rk3588s:"
>>
>> This is incorrect, this makes rk3588s have precedence over rk3588, which is
>> wrong for rk3588-based devices. Why not have MACHINEOVERRIDES for rk3588s in
>> rk3588s-base.inc instead?
>>
>>> +require conf/machine/include/rk3588s-base.inc
>>> +
>>> +SOC_FAMILY = "rk3588"
>>> +require conf/machine/include/soc-family.inc
>>
>> The two lines above actually do MACHINEOVERRIDES =. "rk3588"
>> so we don't need to repeat it.
>>
>>> diff --git a/conf/machine/include/rk3588s-base.inc b/conf/machine/include/rk3588s-base.inc
>>> new file mode 100644
>>> index 000000000000..ad74a1895ec0
>>> --- /dev/null
>>> +++ b/conf/machine/include/rk3588s-base.inc
>>> @@ -0,0 +1,16 @@
>>> +DEFAULTTUNE ?= "cortexa76-cortexa55-crypto"
>>> +
>>> +require conf/machine/include/arm/armv8-2a/tune-cortexa76-cortexa55.inc
>>> +require conf/machine/include/rockchip-defaults.inc
>>> +require conf/machine/include/rockchip-wic.inc
>>> +
>>> +KBUILD_DEFCONFIG ?= "defconfig"
>>> +KERNEL_FEATURES:append:rk3588 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
>>> +KERNEL_CLASSES = "kernel-fitimage"
>>> +KERNEL_IMAGETYPE = "fitImage"
>>> +
>>> +PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"
>>> +PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
>>> +
>>> +UBOOT_SUFFIX ?= "itb"
>>> +UBOOT_ENTRYPOINT ?= "0x06000000"
>>> diff --git a/conf/machine/include/rk3588s.inc b/conf/machine/include/rk3588s.inc
>>> new file mode 100644
>>> index 000000000000..a57be507bf5e
>>> --- /dev/null
>>> +++ b/conf/machine/include/rk3588s.inc
>>> @@ -0,0 +1,5 @@
>>> +MACHINEOVERRIDES =. "rk3588s:"
>>
>> Maybe we could move this directly to the -base.inc so we don't add it in
>> rk3588.inc and rk3588s.inc?
>>
>> To verify the MACHINEOVERRIDES is correct, I highly suggest to run:
>> """
>> bitbake-getvar MACHINEOVERRIDES
>> """
>>
>> this variable is read from right to left, with the highest precedence on the
>> right side.
>>
>> So we should have something like:
>> """
>> aarch64:rk3588s:rk3588:rock5b
>> aarch64:rk3588s:orangepi5
>> """
>> for example.
> 
> I spent quite a while checking MACHINEOVERRIDES and SOC_FAMILY with many
> variations until I was able to get exactly what you've just said we should be
> getting.
> 
> MACHINE="rock5b"
> 	$ meta-rockchip> bitbake core-image-base -e | grep "^MACHINEOVERRIDES="
> 	MACHINEOVERRIDES="rk3588:aarch64:armv8-2a:cortexa76-cortexa55:rk3588:rk3588s:rock5b"
> 	$ meta-rockchip> bitbake core-image-base -e | grep "^SOC_FAMILY="
> 	SOC_FAMILY="rk3588"
> 
> MACHINE="orangepi5"
> 	$ meta-rockchip> bitbake core-image-base -e | grep "^MACHINEOVERRIDES="
> 	MACHINEOVERRIDES="rk3588s:aarch64:armv8-2a:cortexa76-cortexa55:rk3588s:orangepi5"
> 	$ meta-rockchip> bitbake core-image-base -e | grep "^SOC_FAMILY="
> 	SOC_FAMILY="rk3588s"

We're still not there yet


rk3588:aarch64:armv8-2a:cortexa76-cortexa55:rk3588:rk3588s:rock5b"

is incorrect
it should be

aarch64:armv8-2a:cortexa76-cortexa55:rk3588s:rk3588:rock5b

similarly for orangepi5 we should have

aarch64:armv8-2a:cortexa76-cortexa55:rk3588s:orangepi5

Could you run with bitbake-getvar so we have the whole history of the 
variable so we know when things are added and in which file? I remember 
I had to patch a qemu include in poky because it was incorrect maybe 
somehow some other layer have it messed up too (or maybe only 
meta-rockchip for now :) ).

Cheers,
QUentin

