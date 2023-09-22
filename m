Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F6FDE6FE38
	for <webhook@archiver.kernel.org>; Fri, 22 Sep 2023 14:22:27 +0000 (UTC)
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (EUR02-AM0-obe.outbound.protection.outlook.com [40.107.247.48])
 by mx.groups.io with SMTP id smtpd.web11.22937.1695392537733792552
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Sep 2023 07:22:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=H/JlB7ME;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.247.48, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MIGByIgY2W+cEmJhQ9Pes4T5Fu8cIJ4keyWGNYRtdm69Y8UQt3UFXY5+q/rOCigEi1/unsNi9KWhiNovQJqBL4zakefDqos/Kk3MmtJ460JMDBbs8oU3U41y2ISWayMwSBydXUfGEX96Lu8ryWjigUgQdjmEYnSC1DTQgOH5HOOX1npnsP4Z5GPICymQA6lSgQU2TPTJBm+c1uaMIleihJvFabrxs4kK+pCLm1p1Ow5mO2+PJ0fPobEtod/60IWQqpufPW6k+aE1IYZfcqxOTTLsB/Bt/mSn9EANJfVSkix9FlqYMu1NHGYAbbjV6JpD9q7sw2oetWEgAHNcg1WTqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x5Ip8tvCi1xKbFblgcwk+2zlk/rMHqG9JhU7ltCK5sI=;
 b=UCJFB2MH0sGSKoxvx25LSYvLfRktnJU8cDq+2wTjQSqiPffgn06+iaOa1lQsG1o8g2He1F/+kSsMNq1M1BUJ3KTdTQ32OBGa4OOLPMyEF7p+BKCDPt8067vv8JgFK6Vs4snkrR6mex9mH9tLAqENAKg1Urq9mVaF2kHGGV0SzGy2Cng0Ok8LMt4v9u/v5jJzIlX5RfAfoYRMDUTVqyfFNkCzLRt2w+HkURJZcLoug2s8HeR6KU4XY+g28rqMfis0pT6Mi2Km4CiuuDtRxl87aBtXpvUiCKGkwDNMSzaJ9mi6TDLPqx+k02GndjARmP/7xe1AZiUHg6aUcN7sUqVIhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x5Ip8tvCi1xKbFblgcwk+2zlk/rMHqG9JhU7ltCK5sI=;
 b=H/JlB7MEtK0Lsf6ybWUD6Lx5t3d3xNMb/d5I5k8CwAsY9fQexJR0Ah291xG2ZFO149Fem3u5uRnbYZwO3bLrWoE63LvtLHVTn2UBaMAqk0Qq2okHVOSm2DBJqSjkDzpkEOUJzpPPtnMltWwBeE2GWzwDNQejAED7MKDLQKzRkqlErV5oqsBHGvLfPIZeI2pojUQOKAj2XZtVwMxNPbVWSZHxsyUnbJyY29IFAaffCW8Z2nv17or/Ifwh1r0eSK1qiM330y3QTmw7+AxvH60TzN96wIMENdzW8f1CsDgomn82oKrerEvrOqdPt8G0gw1tRRKDVtkbyW+Pp8se61XW0g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PR3PR04MB7225.eurprd04.prod.outlook.com (2603:10a6:102:83::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.23; Fri, 22 Sep
 2023 14:22:14 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5c00:6152:6ce:72b6]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5c00:6152:6ce:72b6%7]) with mapi id 15.20.6813.017; Fri, 22 Sep 2023
 14:22:13 +0000
Message-ID: <a9d93ef0-4b40-bfb2-ba34-fe50da0d6f7e@theobroma-systems.com>
Date: Fri, 22 Sep 2023 16:22:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [yocto] [meta-rockchip][PATCH] rock5b: add
Content-Language: en-US
To: twoerner@gmail.com, yocto@lists.yoctoproject.org
References: <20230922025123.20385-1-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20230922025123.20385-1-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0210.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ad::14) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PR3PR04MB7225:EE_
X-MS-Office365-Filtering-Correlation-Id: 41d17275-18ee-4706-f5e7-08dbbb775100
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Eqw2pr6NDKYAxeU1YwjphWLg0WDShe+C7LRLNrZbWcsT/jItxzvNLTE5bywL+ZyYz1UXf3ZFffssFcTNYjwZbAu7EpqrMTtby3kL+z+L4di0r4/C95oksDGDeC9Sel0HBXf6m2gycU9s0E4ZS6vBPret0XI5Y1lU9yD3avnZNhg2DYohLEi4yLH5jtDSN8MTe27iRCPgCHHdIoNX1H1ywDEYezr6uS0ScbGFLJ4JkhlvHdfQmMipZzN9HRh3oUFt0pTna5O0AM9nwtZvT5vBNJ1YujwvBC9WkTaWhsc+NW0N90n5F6UiKcH6k8jTOufnSThM/haUTPhPiH4CynJFtxBVRUoQLzAj2a25ZLRp3nYZU0KXEQ+ohmwERyUY8JCVhthfpN9cXLo0RlRlQgr+t/knl0kOYV6fEWreZW2ezCMsvdYqrsKlV011EMZo9jGJvvZPVq+3bNpkhvmBKSLctDV39B42U+FBEpG96r+dFZsYBo3ep75GdelcAjXPieFcSkwBq8zk5uuq+oK3nD9TBCdX2E+nWRrLxSihX8zSuHb4ElL9EFGO0VxRlfMCP5F+itrW5UnUhrltG9YkDhB9Xp+P5jz4TrlQxA3aYcCdck2iqPIr5xolqSm5qOu7pmn6hwmaN2e2PiVwgUbcAqCoKecgJegnpqpIfSKa0s8Gvgk=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(39850400004)(396003)(346002)(136003)(186009)(451199024)(1800799009)(83380400001)(36756003)(2616005)(53546011)(6506007)(26005)(6486002)(6512007)(5660300002)(44832011)(316002)(41300700001)(66946007)(66476007)(8936002)(66556008)(8676002)(86362001)(478600001)(38100700002)(30864003)(31696002)(2906002)(966005)(31686004)(32563001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TTQ5QzFheVhDaHNLKzJWdkg2azJ5Tk9FRGJWTDFCNExpUmNmakpWQW4ranBy?=
 =?utf-8?B?ZXRqU0xjakNsWmNDTmtVZE9hRFRlaGcwTjZYYjhNdHF4WVUwTklKbW9kUXkx?=
 =?utf-8?B?KzZTbHZNNWxQeUNwT2NGa0JkMkZtVVZ6bHE5QWhKQkNVRDZucjZ5NmxGOUVi?=
 =?utf-8?B?Ynhqa0FWRWxGNTlKOGRJZEJLTkJvOVZxZzVzV1lTNzZnSWtHS0FJaHNBMWla?=
 =?utf-8?B?eDF6RTE3L3dyRUdaZVRFOVUrL3UwdUFuWm1zSjZCaThQVGYxRW53clpjQmVU?=
 =?utf-8?B?a094bGRNRTF5VExIc0pwWTdkSlRGMHRrQldQcG55UU1LVjN5cm9kYXdoTllK?=
 =?utf-8?B?MlpuVkxEcEx1SmllTGpEdFBWb0NpL0I4U0NVbTkrem1VL1FLSjlsWjFyYWw0?=
 =?utf-8?B?d3luWkZicWYwRHdWdFdlR092N3psbnkzL3BXZzFwbzNublhWa1p1LzByUm51?=
 =?utf-8?B?Y1ZZVU44QnI1NXZ5M0dDOWdmenRad1hvQUMrNEhZR3pSQWl2UWt5UHcrYW00?=
 =?utf-8?B?SXowbFRDZk93UzU4TFcvN3NKbFNTUFBqOSs4VWxZVWpqNTFYL0RUNFRlemsy?=
 =?utf-8?B?RjNoeDNVOXFkQXlXV3EzZHlONWhIcGtiaFlGaHlRMjRzZTBqQlYxQW9OUTI2?=
 =?utf-8?B?cjZIM0NWQXQ5bjdlay8zR3djRVV0NUl0bncwNU41Njd4WEMzbGExVnVXTEpH?=
 =?utf-8?B?cVlXd3Q5Sk4rZEJNQTJjRFBnSXc3cHhhSjNiQ1J6M0xVZzhNM1lkMkQ2dFR6?=
 =?utf-8?B?OGljZWpSL0djUEZVRlFsR28rNjZoUTdWNWJKZVlmN3pXTTBjVkF6YWErNDI2?=
 =?utf-8?B?NWNheHpVS2FsdEF0UlhSZlE5aUJIM1ViMUpZK0NKY0Ryb2JuVTdtSThMS2Qz?=
 =?utf-8?B?NTl2UlJnTXBHb3pqRGRHVmRFYTZEOWx3MTBkUzBiOXI0akxkUk1FQnV1Zkxl?=
 =?utf-8?B?citLTFNtMFVTT2ZXZndrajRMUEdMQ0V6d2F0MkVFek0vNmdqK1NldGIvUlMx?=
 =?utf-8?B?eTBwcStEdm1uUW9WZXNubjRXS1BvVlVTeVk1Mks2a2RHOG4rSUFNMlh6ZDZY?=
 =?utf-8?B?WSt5MTdaQmpzRTFsekdoejM0UU9wVmVTQUppTzlvenA4L2RpTXNBZjJyWG8w?=
 =?utf-8?B?K2NJWEFtdGN6dUhnaXJvZW52WGJPUFBoTEZZRTB0OXJKZUwzeXRqYkcwbGRo?=
 =?utf-8?B?d3RxSloycnNxWWoySXlTa0x1R3dJR1FTMlo5TGpzcHNrSGcraXA4b0tSUGh3?=
 =?utf-8?B?QTVGRWFlQVZhSzRaRTg4NWRFNWt4SjNtYnRzNmJvczA2am1sRlJ1VCtTT0Nt?=
 =?utf-8?B?cW9McThqalN6T1ZORERyeE1Dd2srWXk5ZXcwNlNYUmV2KzV3RkNHaGtQSlNi?=
 =?utf-8?B?OUlEUU83KzFQNDZXYXFIVmljS2FJY2N2TEdQeXZGRTdFdU1aOU02TGlpaU96?=
 =?utf-8?B?dDFBMUp4OWdVd3BMeVNISGlsRG1LcTMwTTN0bnU3Ym1FdWc5TGxFVWhYbDFD?=
 =?utf-8?B?NzJuN01ZUTlHUmxFTlVjeUlXdmhLUW5TRmNrNFZQV2RWNGZUWExlNkwydlVl?=
 =?utf-8?B?ZmgxbjAyYTh2M05IWEJKZ3BtanpaWVd0czkyVU44NWdWMmxXaEVJL29Mam5W?=
 =?utf-8?B?UjNxTTZzWjBEdnBwdDdoZzR1dmZPUzNaTDZGWnM5Y1BlYUZmYWJGTzI0THc4?=
 =?utf-8?B?bUZmRGNENGptTTlzVDQwd1pJdGs0VTAwYWY1OXFmZHIyR0VjT2lFRnRwaUw0?=
 =?utf-8?B?OXhMdUZ5R0g4L3FnOHU5RjZ2NStJN3NTNEYrK0VCZXFmdG5pbFEzS2xDVkRL?=
 =?utf-8?B?cVFGQTRKWExXNERGNHBuNnhhZ0QrTWJlU0NKeGlmcEZvMTk1T2czRkJ5d014?=
 =?utf-8?B?WDlqOGtTYUNqa1FRVXZKNitvZ0FkVmRwY2huVkE4V0ViVHZLdXRRVWpDenBl?=
 =?utf-8?B?cWRJWVhHTTdheFpVbnErdDNyVmxmSGdHYnllSVhGTVZUMUxYSzNuWFAycGtF?=
 =?utf-8?B?RGNSM0pIUDhrSTFDUVBkbWhTVkZDVnZWOTFuejRZS1ZTeFFPWEhLMjdXVjY3?=
 =?utf-8?B?U09vck8vYzZVd2RNYXkyUkN6YlZPRlV1clNZOWZUNEdJSmdpS1VDb3lBcUZR?=
 =?utf-8?B?aXZLMHl4QmNGRUkrREVBcXViUzhzUC9MVkU2dWFpNXpPV3V0a1dLdmtmU1Qv?=
 =?utf-8?Q?QqUKs1/XU9FqelF+9zuJCm0=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41d17275-18ee-4706-f5e7-08dbbb775100
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2023 14:22:13.9155
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KKwXnhJiVUSqGtfUvGqO7mFZ/QT8l21MbaclEUHIchJD+cTreh62+QfFHGxaj6vkuV5WrR8usu8IeZoctJa9H3NnT1kjNNlsW6bFQ+iwsOLVeMhkxtxjv+/kN4lKWbnI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7225
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Sep 2023 14:22:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61079

Hi Trevor,

Looking good :) Thanks for looking into it, will be helpful to me in the 
upcoming weeks/months :)

On 9/22/23 04:51, Trevor Woerner via lists.yoctoproject.org wrote:
> Add support for the Radxa Rock 5B
> https://wiki.radxa.com/Rock5/5b
> 
> The device-tree for this board is better in the 6.5 (and later) kernels,
> therefore set the kernel to linux-yocto-dev for now (eventually this won't be
> needed as linux-yocto moves forward).
> 
> The Trusted Firmware A project (TF-A git://git.trustedfirmware.org/TF-A)
> does not currently support the rk3588, but patches are in review. For
> the time-being we're using the binary DDR/TPL initialization blob from
> https://github.com/rockchip-linux/rkbin. Hopefully this can change if/when
> TF-A gains support for the rk3588.
> 

Because it's closed source, I cannot tell if DDR binary is based off 
TF-A but I would say it's likely not? It's fine like this but not 
entirely sure it's true.

> The rk3588 comes in two variants: rk3588 and rk3588s. The "s" option is a
> stripped-down version of the rk3588. In the Linux kernel these two SoCs are
> kept separate, with the rk3588 building on the rk3588s, so we've mimicked that
> same behaviour here.
> 
> Signed-off-by: Quentin Schulz <qschulz@theobroma-systems.com>

I may have improperly wrote this in the github commit I sent you, but my 
professional mail address is:
quentin.schulz@theobroma-systems.com
:)

> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>   README                                        |  1 +
>   conf/machine/include/rk3588.inc               |  8 ++
>   conf/machine/include/rk3588s-base.inc         | 16 ++++
>   conf/machine/include/rk3588s.inc              |  5 ++
>   conf/machine/rock5b.conf                      | 12 +++
>   recipes-bsp/rkbin/rockchip-rkbin_git.bb       | 37 ++++++++
>   recipes-bsp/u-boot/u-boot%.bbappend           |  5 ++
>   recipes-kernel/linux/linux-yocto-dev.bbappend |  3 +
>   .../rockchip/remove-non-rockchip-arch-arm.cfg | 85 +++++++++++++++++++
>   .../rockchip/remove-non-rockchip-arch-arm.scc |  1 +
>   .../remove-non-rockchip-arch-arm64.cfg        | 66 ++++++++++++++
>   .../remove-non-rockchip-arch-arm64.scc        |  1 +
>   12 files changed, 240 insertions(+)
>   create mode 100644 conf/machine/include/rk3588.inc
>   create mode 100644 conf/machine/include/rk3588s-base.inc
>   create mode 100644 conf/machine/include/rk3588s.inc
>   create mode 100644 conf/machine/rock5b.conf
>   create mode 100644 recipes-bsp/rkbin/rockchip-rkbin_git.bb
>   create mode 100644 recipes-kernel/linux/linux-yocto-dev.bbappend
>   create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg
>   create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc
>   create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg
>   create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc
> 
> diff --git a/README b/README
> index 286dafbe1020..032d9bbb6b34 100644
> --- a/README
> +++ b/README
> @@ -30,6 +30,7 @@ Status of supported boards:
>   		vyasa-rk3288
>   		firefly-rk3288
>   		nanopi-r4s
> +		rock5b
>   	builds:
>   		marsboard-rk3066
>   		radxarock
> diff --git a/conf/machine/include/rk3588.inc b/conf/machine/include/rk3588.inc
> new file mode 100644
> index 000000000000..d358565a904d
> --- /dev/null
> +++ b/conf/machine/include/rk3588.inc
> @@ -0,0 +1,8 @@
> +# the rk3588s is a "stripped-down" version of the rk3588
> +# in the kernel's device-tree the rk3588 builds on top of the rk3588s
> +# so anything that is valid for the rk3588s is valid for the rk3588
> +MACHINEOVERRIDES =. "rk3588:rk3588s:"

This is incorrect, this makes rk3588s have precedence over rk3588, which 
is wrong for rk3588-based devices. Why not have MACHINEOVERRIDES for 
rk3588s in rk3588s-base.inc instead?

> +require conf/machine/include/rk3588s-base.inc
> +
> +SOC_FAMILY = "rk3588"
> +require conf/machine/include/soc-family.inc

The two lines above actually do MACHINEOVERRIDES =. "rk3588"
so we don't need to repeat it.

> diff --git a/conf/machine/include/rk3588s-base.inc b/conf/machine/include/rk3588s-base.inc
> new file mode 100644
> index 000000000000..ad74a1895ec0
> --- /dev/null
> +++ b/conf/machine/include/rk3588s-base.inc
> @@ -0,0 +1,16 @@
> +DEFAULTTUNE ?= "cortexa76-cortexa55-crypto"
> +
> +require conf/machine/include/arm/armv8-2a/tune-cortexa76-cortexa55.inc
> +require conf/machine/include/rockchip-defaults.inc
> +require conf/machine/include/rockchip-wic.inc
> +
> +KBUILD_DEFCONFIG ?= "defconfig"
> +KERNEL_FEATURES:append:rk3588 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
> +KERNEL_CLASSES = "kernel-fitimage"
> +KERNEL_IMAGETYPE = "fitImage"
> +
> +PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"
> +PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
> +
> +UBOOT_SUFFIX ?= "itb"
> +UBOOT_ENTRYPOINT ?= "0x06000000"
> diff --git a/conf/machine/include/rk3588s.inc b/conf/machine/include/rk3588s.inc
> new file mode 100644
> index 000000000000..a57be507bf5e
> --- /dev/null
> +++ b/conf/machine/include/rk3588s.inc
> @@ -0,0 +1,5 @@
> +MACHINEOVERRIDES =. "rk3588s:"

Maybe we could move this directly to the -base.inc so we don't add it in 
rk3588.inc and rk3588s.inc?

To verify the MACHINEOVERRIDES is correct, I highly suggest to run:
"""
bitbake-getvar MACHINEOVERRIDES
"""

this variable is read from right to left, with the highest precedence on 
the right side.

So we should have something like:
"""
aarch64:rk3588s:rk3588:rock5b
aarch64:rk3588s:orangepi5
"""
for example.

Now also wondering if we shouldn't add "rockchip" to MACHINEOVERRIDES, 
which would make things a bit easier for COMPATIBLE_MACHINE in 
rockchip-rkbin (though not really useful).

> +require conf/machine/include/rk3588s-base.inc
> +
> +SOC_FAMILY = "rk3588s"
> +require conf/machine/include/soc-family.inc
> diff --git a/conf/machine/rock5b.conf b/conf/machine/rock5b.conf
> new file mode 100644
> index 000000000000..dc31a9f3a4e4
> --- /dev/null
> +++ b/conf/machine/rock5b.conf
> @@ -0,0 +1,12 @@
> +#@TYPE: Machine
> +#@NAME: Radxa Rock5b
> +#@DESCRIPTION: ROCK5 is the 5th generation of SBC designed by Radxa.
> +#https://wiki.radxa.com/Rock5/5b
> +
> +require conf/machine/include/rk3588.inc
> +
> +PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-dev"
> +KERNEL_DEVICETREE = "rockchip/rk3588-rock-5b.dtb"
> +MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> +
> +UBOOT_MACHINE = "rock5b-rk3588_defconfig"
> diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> new file mode 100644
> index 000000000000..7fefb017053b
> --- /dev/null
> +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> @@ -0,0 +1,37 @@
> +DESCRIPTION = "Rockchip Firmware and Tool Binaries"
> +LICENSE = "Proprietary"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=15faa4a01e7eb0f5d33f9f2bcc7bff62"
> +
> +SRC_URI = "git://github.com/rockchip-linux/rkbin;protocol=https;branch=master"
> +SRCREV = "b4558da0860ca48bf1a571dd33ccba580b9abe23"
> +
> +PROVIDES += "trusted-firmware-a"
> +PROVIDES += "optee-os"
> +
> +inherit bin_package deploy
> +
> +S = "${WORKDIR}/git"
> +
> +COMPATIBLE_MACHINE = ""
> +COMPATIBLE_MACHINE:rk3588s = "rk3588s"
> +
> +PACKAGE_ARCH = "${MACHINE_ARCH}"
> +
> +do_install() {
> +	# Nothing in this recipe is useful in a filesystem
> +	:
> +}
> +
> +PACKAGES = "${PN}"
> +ALLOW_EMPTY:${PN} = "1"
> +
> +do_deploy() {
> +	# Prebuilt TF-A
> +	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
> +	# Prebuilt OPTEE-OS
> +	install -m 644 ${S}/bin/rk35/rk3588_bl32_v*.bin ${DEPLOYDIR}/tee-rk3588.bin
> +	# Prebuilt U-Boot TPL (DDR init)
> +	install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin ${DEPLOYDIR}/ddr-rk3588.bin
> +}
> + > +addtask deploy after do_install

Regarding the topic of adding support for more SoCs you brought up on 
IRC, we either need to have multiple deploy, e.g.

"""
do_deploy:rk3588s() {
    install ...
}

do_deploy:rk3308() {
    install ...
}

do_deploy() {
     # Required because addtask needs to be able to run regardless of 
COMPATIBLE_MACHINE I believe?
     :
}
"""

or abstract the paths to instlal in variables, e.g.

"""

RKBIN_BL31:rk3588s = "rk35/rk3588_bl31_v*.elf"
RKBIN_BL31_INSTALLED:rk3588s = "bl31-rk3588.elf"

RKBIN_BL31:rk3308 = "rk33/rk3308_bl31_v*.elf"
RKBIN_BL31_INSTALLED:rk3308 = "bl31-rk3308.elf"

RKBIN_BL32:rk3588s = "rk35/rk3588_bl32_v*.bin"
RKBIN_BL32_INSTALLED:rk3588s = "tee-rk3588.bin"

RKBIN_BL32:rk3308 = "rk33/rk3308_bl32_v*.bin"
RKBIN_BL32_INSTALLED:rk3308 = "tee-rk3308.bin"

RKBIN_DDR:rk3588s = "rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin"
RKBIN_DDR_INSTALLED:rk3588s = "ddr-rk3588.bin"

RKBIN_DDR:rk3308 = "rk33/rk3308_ddr_589MHz_uart4_m0_v*.bin"
RKBIN_DDR_INSTALLED:rk3308 = "ddr-rk3308.bin"

do_deploy() {
	# Prebuilt TF-A
	install -m 644 ${S}/bin/${RKBIN_BL31} ${DEPLOYDIR}/${RKBIN_BL31_INSTALLED}
	# Prebuilt OPTEE-OS
	install -m 644 ${S}/bin/${RKBIN_BL32} ${DEPLOYDIR}/${RKBIN_BL32_INSTALLED}
	# Prebuilt U-Boot TPL (DDR init)
	install -m 644 ${S}/bin/${RKBIN_DDR} ${DEPLOYDIR}/${RKBIN_DDR_INSTALLED}
}
"""

we could also simplify it by doing some educated guess:

"""

# In rkbin, rk3588s uses rk3588-prefixed binaries
SOC_FAMILY:rk3588s = "rk3588"
SHORT_SOC_FAMILY = "${@d.getVar("SOC_FAMILY")[:2]}"

RKBIN_BL31 = "${SHORT_SOC_FAMILY}/${SOC_FAMILY}_bl31_v*.elf"
RKBIN_BL31_INSTALLED = "bl31-${SOC_FAMILY}.elf"
RKBIN_BL32 = "${SHORT_SOC_FAMILY}/${SOC_FAMILY}_bl32_v*.bin"
RKBIN_BL32_INSTALLED = "tee-${SOC_FAMILY}.bin"
RKBIN_DDR_INSTALLED = "ddr-${SOC_FAMILY}.bin"

# We only want one match of this glob and they are difficult to guess 
based on SoC only
RKBIN_DDR:rk3308 = "rk3308_ddr_589MHz_uart4_m0_v*.bin"
RKBIN_DDR:rk3588s = "rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin"

do_deploy() {
	# Prebuilt TF-A
	install -m 644 ${S}/bin/${SHORT_SOC_FAMILY}/${RKBIN_BL31} 
${DEPLOYDIR}/${RKBIN_BL31_INSTALLED}
	# Prebuilt OPTEE-OS
	install -m 644 ${S}/bin/${SHORT_SOC_FAMILY}/${RKBIN_BL32} 
${DEPLOYDIR}/${RKBIN_BL32_INSTALLED}
	# Prebuilt U-Boot TPL (DDR init)
	install -m 644 ${S}/bin/${SHORT_SOC_FAMILY}/${RKBIN_DDR} 
${DEPLOYDIR}/${RKBIN_DDR_INSTALLED}
}

"""

Cheers,
Quentin

