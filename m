Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 892DCE784AD
	for <webhook@archiver.kernel.org>; Mon,  2 Oct 2023 14:15:43 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.43])
 by mx.groups.io with SMTP id smtpd.web11.82919.1696256136945963020
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 07:15:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=aJLwpjcS;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.21.43, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LZFUnQZyQVCOlt+SsBQzOUGcp7ZMQqSDuE5RPD1ib2F3GO0q8Ps8V60GubQfl2gT9+zX9x+ymnsIP8LXuOteiRuHp/4dRNWmpaKEtZbgorF6hXHWCoj2vaEL1qtS0ceuznpZP8CukPfSoKfN48H6nDxLTQh1XIkPbQIMhbjpM+eTcsmP8xSsg+Fk97Qy2XHEVoLXEaF3Tdy1KD1+FrQm9QTL/nFWSY3yp8ch8hgyj7nYcDUmYbliaICMwZBYst/NKXreZVHICs1Fcjz7NCcvgYgjNZnMannk7cDMY5tgQH+6f6iZ/VXXARQGbzgl1U8ilg/e3wJ6/Qfrr7o1dyBUyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b2mwqSwjpNf0gfUEtHluB0kUy+Fb61I4LePWuM4JBZY=;
 b=cmN3VmqYyNFD7LfxfbGZrkFPPHU2VIxlLGVJnAQO4haCEa5H3qst67eg6foBq2LnHCxkXgozD9KzDc+uDWJqob1WOyrLe5YA1eRw6KQBL8eY7hyhIpkhNHhUkSppAJ+coHQQZf7YB7JkmVoHpZ9qOa59ZHMyUeoRrgj57PRKf0YqIGv3NSUwHAH7azm8q8CTSkUH/nyJsqK3Itt22H+4dRs5Pw2Ed4dQkmYTSu9K0L7hrNSdtbBu7Ypisk6C5CUbhAzS8ENVm2cI2V3bQsCB0BtWEawP6ouWV0Rw9KdJpek72Juir0q5J15AxUGXOFuiU7fxKds3tbypRLzHkbEM3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b2mwqSwjpNf0gfUEtHluB0kUy+Fb61I4LePWuM4JBZY=;
 b=aJLwpjcSPk3dyeuAk7GA6t0cmQjd1lw/UjTtCau4dxiuH87Zcya6i0QJtXFDb8XJHScozVrdTJy5KSUKI7VC0yLr7Va0UjCITMtMG6DXAq+s6V1AIguJKUTezn9TFQphryAux9DB9+E/LpeZr9Y33R1+t0QVmJbOf3a6eB6lgZ2ahIQDfXacmL6YFWtg5xoYfCmdiAvWYljnPfNVZ8uO8l4bMHcIZN2inRX4dfAD/hAadK2PtSf2JA2PlIb8HgeY/vRCkCPjxQL8zYe78xO5vmC9yxRZNG1R7KIhgWthxDpI7Lvj1t6CbJtSQijvdyGHYvaT6kBq+dmC9rDC9WESlQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from AM9PR04MB8539.eurprd04.prod.outlook.com (2603:10a6:20b:436::10)
 by VI1PR04MB9882.eurprd04.prod.outlook.com (2603:10a6:800:1da::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Mon, 2 Oct
 2023 14:15:29 +0000
Received: from AM9PR04MB8539.eurprd04.prod.outlook.com
 ([fe80::2702:dd67:198c:80f4]) by AM9PR04MB8539.eurprd04.prod.outlook.com
 ([fe80::2702:dd67:198c:80f4%4]) with mapi id 15.20.6838.030; Mon, 2 Oct 2023
 14:15:28 +0000
Message-ID: <4d0327ef-3c0b-950e-21be-136d5bbb57cb@theobroma-systems.com>
Date: Mon, 2 Oct 2023 16:15:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [yocto] [meta-rockchip][PATCH] nanopi-r2s: add
Content-Language: en-US
To: twoerner@gmail.com, yocto@lists.yoctoproject.org
References: <20231002141146.9037-1-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20231002141146.9037-1-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0020.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::7) To AM9PR04MB8539.eurprd04.prod.outlook.com
 (2603:10a6:20b:436::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8539:EE_|VI1PR04MB9882:EE_
X-MS-Office365-Filtering-Correlation-Id: 69df38c0-5455-4401-00b9-08dbc3520765
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	nxry2zkWoqJdkMGqE2ZR+g5vqwmPR+RJQeqlUbst1EnCczPLGIGqb0QrEOthJWP6jL6Pjl9Hl3XBIKRof305ir63IxOthckDcfshhYNicTCmFn+KrmCY3tVdSQXrXSij92a/X62+4NM3EZHpnkvUL8sJRfqlltsHwoIIBSUZPmvFd89eIiYLiBV5pjJbN28OG1N65RAcvh0Y0Q2TCGzAWvQWwDpE+9ZFYj1+iNJPMvcRFW0AvhsjL4vYEF7U+bs2fOSGC1uaL3UnsPbkK5rRYV48n0u/fSgRqkDVnnSvZo/WpMQhIAaPFqQamwQlPnB7VPDNILfbTx+/8EKtm4nkHXq49HuCtxY/hh1XyVd/e3u2KMw/UcqFSSfMQG6wFpcD21L2vVV8tqA+sHy9kXsB0nt3MK2ZPdqjTIm/4Mr7JbyNjEbInFyjWLbVJQSum21SeEnFJ6a/zG1wETbTKXm5X3sU5Bxtw0Gh8FkfnflvgCcOqcNmklupyemuOB0Y7/TyuxERQgM7lNTHPwcPoLVqOPZNPno4l3agD6arNizKzC/8V92u1SkXo5z0CSIrQbGV1kShW3Vt9FqUdSHHUer+WoKOY6oh11alf3yJT+6hWBaz+EINj06O/uY+84O2YCGmDTV+FYg4U6jCM4NzEPL+Dg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8539.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(346002)(376002)(39840400004)(136003)(396003)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(2616005)(53546011)(6506007)(6512007)(66899024)(2906002)(31696002)(83380400001)(86362001)(38100700002)(36756003)(16799955002)(66574015)(6486002)(966005)(8676002)(8936002)(44832011)(478600001)(5660300002)(31686004)(316002)(41300700001)(66556008)(66476007)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WEFBZlNjdFhXelJBVWRqNkErY3MxUnBxU1JBUGw4clE5eUNhc0k0amR2cVVG?=
 =?utf-8?B?S0c1QVd5aWd0M1VaVTZEQTVPTzkybnVXdnd0VGlPakxreVVHd0tPUFhGK2k4?=
 =?utf-8?B?MVNsalllVlo4VVlBUjJNUUVHN1lFU2lNRzRtRitpU3Jzd0VzeUJqRUtQVmdw?=
 =?utf-8?B?eDFWUGtOMFhMRS9TZ0hDNi9iMjZMQUlPTDNsQnRqK3dEUmZSMy9SSUcyZ3BM?=
 =?utf-8?B?UHVSaTBxT2pvRlp4c1RoaTlSWGorQmE5ZkhkVWJGWjE2N3NIcDlHanZNWk1j?=
 =?utf-8?B?VWhDRWVzZjVGbUlFRklQaFBkYlh3THVtMFN0dmh4K0ovUHhZTEpERmJCaFYx?=
 =?utf-8?B?dUwrcjlPM05SQjFhRXpPcngzUlFuRGhHRDB1cC9RWGloQ0dVVU5nRnUxL2Nn?=
 =?utf-8?B?RGcwSERHSUU5dnVzQVNUdS94YTl1REhxZHdHbTFXdXp6L1FUbUNPUklhTCtB?=
 =?utf-8?B?VWN5ampvbldYaGM3bnRBU091anFWbmsydEFNSVhwUXYwWmtjR2Rqb1NEM2dL?=
 =?utf-8?B?TmdhckEreER0dEwrQ0dQalEwTVZDYzdnKzhqbTZ0QlJpSTdDN09NalNmczU0?=
 =?utf-8?B?V1JBay9taDUxTjVpT2RRMFZ6R2oxU3VDTnNEd1kwWGdEVlk1bVJDdytKY0Q1?=
 =?utf-8?B?ZGJtNnV1U1k4VEYxTEY5R2RPRVlIVGJVZWd0V0NYSFpzQWY2TjlBRThNcEt2?=
 =?utf-8?B?b0d5UmRYK1ErTllMOXZlMEpaT3BHYldDeGQrbjVkTmJOVlRXRWxGZVJXSzJz?=
 =?utf-8?B?L09sbVB1YndTTnNwVTNsc2dDWjZVN083QnF0Q3FvY1RyQWVqNXVQTURFaUJQ?=
 =?utf-8?B?ZEFyVCtFZmNqZ3ZkSHUwRjJ1blo1VDVVMkUyakxkcHNOQXNuWm00MWxSR2RY?=
 =?utf-8?B?bkJmeDBrYUVsZzZ2N0dwNStteFlsZS9iT3Z5Z0VsRjcrYjZpK0FBT0FUdkhV?=
 =?utf-8?B?UTl5RHJHVXVpb054bmFLbmsydXM4TzA3M0JTb3RuRW5vbTZOUm14eFUvaFl5?=
 =?utf-8?B?SE9yWjk2S2hNb1oybzRxNVQrNHNteDZVZlBXcnM0UFp6ZncrL3ozTWp6SThW?=
 =?utf-8?B?VThDdytIdW1YMkJzdVBuT3pZV3hnVk9ScmptUWJXbzBTdnJCUnFhOHNrbm0z?=
 =?utf-8?B?RGxLRDhZU29HNVB6NGt0L0c3b1BLak15eXNxbUZEZWZ5Q1E1dDFEbTQxeEhv?=
 =?utf-8?B?UkkvejNnV1NpRkZ2Z3krdW9jZEY1V1M4Y0tBbmZ2SjM1a0tENDRzbGQ1Vkly?=
 =?utf-8?B?dFB1VEM3V1NHeGxxRWYxSkdTMDNncVk4cGw0WlVIbURJYjlJVDN0YXR3elNS?=
 =?utf-8?B?UzlZOFVNMmFJZDAwZWFhRkpNekIyNDNuK0ZmRG1YT3JWNm5jcmV3SmI5Mi9r?=
 =?utf-8?B?cy9YbHBDZ3RPTDZzSk50dWwzdVVDc2FyQzVyVjJyTnpVaWx3bWg5VG1zTzBJ?=
 =?utf-8?B?alB5czA4N3d5MXp4VmFWdG8wL25nT0tRd2NLRXV0T1lEZXdHMDlRenN5TzNw?=
 =?utf-8?B?WitsemZpYyt0Rm9GUFZnQ2lTM1JwRDNHdmQ1TXA0Qzl4d01rYlczcGJINUpw?=
 =?utf-8?B?T21tb21yczlRSmI5UnlHb1UxT3lSRmkwQVB3cWlyT01NWTRZY0w5ckRUR3ZF?=
 =?utf-8?B?RURybVFFYW1CM054QTY2dGowV0lvRWpXZ25vTDlMMjArNUVDWHpKcWNyNE81?=
 =?utf-8?B?a2duTjBPMzVFdmJSTVRrSDJDV25sQ2tIdEpxK3Rsd3krSTJ4VGorMjBBN3NL?=
 =?utf-8?B?aXVtblhiaFlCc0JCZDkxOTZNWDM2eW8rNmpvb25hOE5zUWkvTnlGU2xoQ1lE?=
 =?utf-8?B?bzBSZlY1YmNSakFIbXM2R3dHbHF0NHRGZFpzZ09rdjh0MjYxbXZMZjNqM3Yy?=
 =?utf-8?B?UXpRMlVreThTbHpUOVlkTmFLMXVub0QrRThtVlJBVU9WKzJQV2FmYzY2K0x4?=
 =?utf-8?B?bWFzQXBFNUExY2FFMnNWWitPODhubkIzdHQrNVBhd3MxRUFGTkhudUwyMXk2?=
 =?utf-8?B?Mk1hT3RUQVV6cnhsRk02SFpGOVJHZVVGS1VKOGh4eHUwb08xc1VLdy9UZkto?=
 =?utf-8?B?clBGM3BMLzhvbEl5UDZSL3JjWkVaRnFDdGx0OXBEZ25sZWV5RG9Bc3o5WDBT?=
 =?utf-8?B?bkJSYU5kUk8yMXZVWDQvV2owdnZYdmxON0VmMmV0ejRIakVoZUR0eEl2bmc5?=
 =?utf-8?B?eVlORTVTbkp2ejE0ZkJIUmZFT2hoTXlXWGk2RUhrblFaV2t6MXZid29JOWFq?=
 =?utf-8?B?NGlDei9OQmxxcVppS0x5MGdocHFBPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69df38c0-5455-4401-00b9-08dbc3520765
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8539.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2023 14:15:28.3223
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lp4IxmdIciIDA5tTm9pXDg+WM2RXvoJ7mFqNFuerB8KCm+2umzibvi0BIlVM5gBEJ2YYIINt5w80sl4wWewFTf3eYq6ViDMbcvL20RizqfXESPp7T/TiA3dpVeMP2wz3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB9882
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 14:15:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61192

Hi Trevor,

On 10/2/23 16:11, Trevor Woerner via lists.yoctoproject.org wrote:
> The NanoPi R2S is a mini router with edge computing and dual GbE ports by
> FriendlyElec. It is based on the Rockchip RK3328 - a quad A53 core, 64-bit SoC
> running at 1.2GHz with at least 1GB of DDR4 RAM. It has one USB 2.0 host and
> is powered via a USB type-C connector (5V/2A).
> 
> https://www.friendlyelec.com/index.php?route=product/product&product_id=282
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>   README                                      |  1 +
>   conf/machine/nanopi-r2s.conf                | 11 +++++++++++
>   recipes-kernel/linux/linux-yocto_%.bbappend |  1 +
>   3 files changed, 13 insertions(+)
>   create mode 100644 conf/machine/nanopi-r2s.conf
> 
> diff --git a/README b/README
> index e815fb47ff5f..8451b4778c37 100644
> --- a/README
> +++ b/README
> @@ -32,6 +32,7 @@ Status of supported boards:
>   		nanopi-r4s
>   		rock-5b
>   		rock-pi-s
> +		nanopi-r2s

Was about to "complain" that this was not alphabetically sorted 
anymore... but it's already the case above the git context :)

Looking good :)

Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Cheers,
Quentin

>   	builds:
>   		marsboard-rk3066
>   		radxarock
> diff --git a/conf/machine/nanopi-r2s.conf b/conf/machine/nanopi-r2s.conf
> new file mode 100644
> index 000000000000..4472c21f0217
> --- /dev/null
> +++ b/conf/machine/nanopi-r2s.conf
> @@ -0,0 +1,11 @@
> +#@TYPE: Machine
> +#@NAME: NanoPi R2S
> +#@DESCRIPTION: The NanoPi R2S is a mini router with edge computing and dual GbE ports by FriendlyElec
> +#https://www.friendlyelec.com/index.php?route=product/product&product_id=282
> +
> +require conf/machine/include/rk3328.inc
> +
> +KERNEL_DEVICETREE = "rockchip/rk3328-nanopi-r2s.dtb"
> +MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> +
> +UBOOT_MACHINE = "nanopi-r2s-rk3328_defconfig"
> diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
> index 61c89f70d8dc..456182ee473d 100644
> --- a/recipes-kernel/linux/linux-yocto_%.bbappend
> +++ b/recipes-kernel/linux/linux-yocto_%.bbappend
> @@ -14,6 +14,7 @@ COMPATIBLE_MACHINE:rock64 = "rock64"
>   COMPATIBLE_MACHINE:rock-pi-e = "rock-pi-e"
>   COMPATIBLE_MACHINE:nanopi-r4s = "nanopi-r4s"
>   COMPATIBLE_MACHINE:rock-pi-s = "rock-pi-s"
> +COMPATIBLE_MACHINE:nanopi-r2s = "nanopi-r2s"
>   
>   SRC_URI:append = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
>   SRC_URI:append:nanopi-r4s = " file://nanopi-r4s.scc"
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61191): https://lists.yoctoproject.org/g/yocto/message/61191
> Mute This Topic: https://lists.yoctoproject.org/mt/101712596/6293953
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [quentin.schulz@theobroma-systems.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

