Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C80EE7D249
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 07:46:10 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.40])
 by mx.groups.io with SMTP id smtpd.web10.13905.1695714359146856002
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 00:46:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=NTwBnTGx;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.8.40, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jPs+ntvSNU4k4uDDORLso1mSbpWX/KBy6miWt8TqUljLd24F/LKCIClJyuBvA30rzNXo8klieBk554CFr+htRZk+ZTGMF9qYVvz1OkaJiT3UAmSnnJ8ij6K7hpfMPs9ykkoEXPMSLgvhjJG9GT8L4TjgBbOjv+U0RjKA/yPL5TrHIA3eqn5EZDzf5rFsld0Ah3DxHy5cPWF7t26WtBDbA+bEDhr8wUKVWf3lj6wzXXzXlJXysc50UbjGgfuYmlkV6sHQ97jKyE0FbHet1vlnF5Ck3nrUMYh5XSHDanWJoqbkv3r82o068FnzCK/tmbJAYE45syXYqZUKYiHYmCbVKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6ywq4ACRlFyplcvkylrwH1oN6gz5MD8rpQiGuksFwfo=;
 b=GKBD0tpl/6OAeFGjJCNN2GhiwQjJ1vIEIYEYqfPSjaINrxYd79buu80o643GeqOEfYpdTjvJivI8siLK1NSTkwLrgHJFBCYDVKtZhcNbgEtgdOpxFvnL6B2H7vLYDPCjMYxCm4iyYFwtFJF+zTPP0NJ417FTV0PkBxbczWCEiqTXOmu0fFW0lYEkpZAyXbqJ4Mh+JsWyMtdQM4BgSTeVJXWX2ienWxJehOwpZ/SPABPR+i5BH5cmTJH/ZybKXVaU5SaOzanBt/i49O4ImAJH+7VG2whtv4ETbtflW8xwEEmWVzKEJXAlYifiMs6zTAl82AlQHcsYV7z3zuSwOtqVdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6ywq4ACRlFyplcvkylrwH1oN6gz5MD8rpQiGuksFwfo=;
 b=NTwBnTGxz9L4IBdqCSY20u4pv/5Wh8G8B7rxdKpRdAEFs/tBIDXOPXgFfANPzE1997lOqS+M7wHBv7XGQMg+eqgC0RcHyyrt04d3NORcpEoB6h9WXVDESTIYLoNsfZkxKqsT7VEtCqB0NABJl+jxJyR6baWZ3s026cs28gP+6WjytFa4rpJBar+rCSs3bMU3Utn3YEo20HEKfFseY3wXJFhfR66nwpue6lPzfZcfD2D3909qaOb7l/8h5qSZ5WHAc4xBjdoFEuHKyO0X606j+vZ27B76wUFufF2tlV+2ju7vmCMBqV7fsgZCch86ZVpu7/ubkEex9NwBdI/HvrcF2Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DB9PR04MB8431.eurprd04.prod.outlook.com (2603:10a6:10:24e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Tue, 26 Sep
 2023 07:45:54 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::ebac:2f16:9dd6:a30f]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::ebac:2f16:9dd6:a30f%4]) with mapi id 15.20.6813.027; Tue, 26 Sep 2023
 07:45:54 +0000
Message-ID: <f8dcad50-2893-4435-33f6-5c0ecbbda8ba@theobroma-systems.com>
Date: Tue, 26 Sep 2023 09:45:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [meta-rockchip][PATCH v3] rock-5b: add
Content-Language: en-US
To: Trevor Woerner <twoerner@gmail.com>, yocto@lists.yoctoproject.org
References: <20230925162628.24482-1-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20230925162628.24482-1-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0097.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::15) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DB9PR04MB8431:EE_
X-MS-Office365-Filtering-Correlation-Id: 20b5b026-5af1-43b4-c8b4-08dbbe649ca9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	u79TMvGG/SW5VwjIgAWNYkuq6ZQy4nsepFRdIXXCXShl5/IfZydhA/xLZFPxCqBUw5r2nolW5Gng0Dqx9bP8twxnaOYf4989L0cJJKsvPZE9qqz76jduYIJLYFidv08F16eCswDDrxV94TjPH+5fmkrGPVX/+gr6/nnJb40fT0iBP3SO0fEuCQk5k1JM0c318pTvpUKTuOf6SjpRiJpRYvchP/z+PazMK5T7f8Dza3vDvr6YJ01iWT2m17ou4Sr4JFdfEIniEstLVYc/CPm0ALVuE24hWaWkp1BmvvFFFCgAVX0tGkp8vhn5Ek+WAK/SMef3/KDFrBDPI5M9FT37EHePTOtnJtKdETcicaNrXqs3yZJMovOy8c3tMJI+sT9CI3uoqWfIlCwjh0VRzuD228Dg3mG0PkESq1oJ5g7LF1BXZGmgW+/gomXiStCmRkySNtZPQvvZjTEq2Nh0JdVpjDdh1cx6tMjgNyHJy2kO1iR0eJfLwA+7Z0eVyydaCzUe2FI/Lm1QYjTksf8ZDkFtQtvadeKGoMzv/yFCzDgIA/rFuRNYgAHdJy5qAJefS3Gghv3+KYs7ZliRn+sOCJZJIKLWHWcv8ub/CKuKpfeN7eILmpPZgArLbnLjM892k8whhHg2B5QoQe/4ElGYQQmbCw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(136003)(39850400004)(366004)(376002)(396003)(230922051799003)(1800799009)(186009)(451199024)(6512007)(6506007)(53546011)(6486002)(83380400001)(86362001)(31696002)(38100700002)(36756003)(2616005)(26005)(44832011)(2906002)(30864003)(31686004)(8936002)(8676002)(41300700001)(66556008)(316002)(966005)(66476007)(66946007)(5660300002)(478600001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bEFCNVpFclFVUS9NaGdnOVVHczVjc1BuZEMvSVRXYWZqSUd4bGpmdjBocVR4?=
 =?utf-8?B?SS9NWCsyOTRSYVZRTmlOU3ZnUlU5U01SVEJMV2tnc0taY2tCNE9rQk0wSEZI?=
 =?utf-8?B?Z25RS2VkSGcrTGFYWGg1NmFYdTBQTlNTWjBkSmpaaXdhYWJNR3d1WDRGcmMv?=
 =?utf-8?B?ZE1aVUczcUp6VTh1QldjZyt3akxpaE1xSHRUdVhIaUVUZTNNU3hUUHZnSlI0?=
 =?utf-8?B?VHQ1bmdHN05aNDJEd04wMWc4NmJ0ckNPdDZtMjdRcDgvbzlxeVB5ZXZYUktB?=
 =?utf-8?B?UzNFRmRacEVNcjAxYzVMTnpEQVhFUlcyQURtdTBhWVR4OElzbDZUM3hhcy9C?=
 =?utf-8?B?SXNUeWF0enJHQjZNM3UxREtEdEtrQUlXVHhDSmlaRWpQWWh4VStkeXplVUVX?=
 =?utf-8?B?NUJWSWNhSmVCZkpDRjc1c3ZTN0lObnZib3lMSE5CRHhqKzhPTW5mL01ncHF3?=
 =?utf-8?B?Q0ZtTHF5SkVDZFZSKzM4MU1FRk1FTVRrT3ZwOFJYUDJMWkkrYnA0N080UnFR?=
 =?utf-8?B?OHlQUzJ0S2pram9IYSt6amdGcmlHTXo4MmQ2MDAxN0NFZFE4WEZzMHV5K1dT?=
 =?utf-8?B?cEV1T2xUQWpGbXJTUGlKV2FNeStWWDNBczV4cG1abWlHeEtHSHB5RTBobUNU?=
 =?utf-8?B?ckFHMGFEblYyaW1JUElyWUQ0KzN1bWpLQnF1T2hKaFd5VlBTcWdMa3JaNlpM?=
 =?utf-8?B?NGlmL0lWN2VsZHlVT1BHbi9ZemZKMUcydDVwWUMrZ0lqbFlTZlR4ZzhjQkl5?=
 =?utf-8?B?S20xMTFRUGVnTDN5ZlV3QmYvODJNT3NBeWF1TTJ2eEwwaXRwWlp3MDZ1dGRO?=
 =?utf-8?B?VHNxT2tPNGVBQlJJUzRpeDFIcWhyOEJRVlNHRGRTZS9YNU1ySEEyTnN2NzZt?=
 =?utf-8?B?Mkg4QVR4QUx1aVhSbFR2VGE5c3cxSjM4dS9qMGpFTnFUNkpuSkpXYjFBbmVJ?=
 =?utf-8?B?TVNQdGJ6Rk16NFB3MVhqU09GQWxYRTVJMXB3VEV6QTFUVmx2WmJSVDRTMUhS?=
 =?utf-8?B?dG1mRkFRbmczMlcxZVoxaEhrVVJnUmRpRGl1eHNtWXVjc2xkdWxjanJ4TTk5?=
 =?utf-8?B?SkpyM01ub2drTGd4dW9IcVM5d2JacjNRM3pkeksyTi9HWVJOUHc5OHplTlFQ?=
 =?utf-8?B?Y2xmZlFMZmxxRFdCUTlkRW1LZEJvRGIwZTFSbk1sa1hsdjc3M25kSzFYdUhq?=
 =?utf-8?B?Wk00SFlzaGsvWk1raUdyamg1YUp1TVRab2NGY2VvL0U3VHVvc3pVdmczM05S?=
 =?utf-8?B?U3RpR0l4NTBKeTFpOTFoLzRGQXhWcTMzUndHS1krSVgvWXVIVVROenBjZGd5?=
 =?utf-8?B?cDl0d2M3c1Vmb3Y2Qko2c3NvRzgyT3UvbjkzNnBPQVorYUlaZWZkWFhzMFRh?=
 =?utf-8?B?Qk9ZcWxxYkNUdW9BTWVCSEJuVFg1ZVpkTHJYWGdsSFRUZkJOeEZBeWhKU25o?=
 =?utf-8?B?emwvd28yeGp4OE5xM3N5OWMzV1VFV2FtRjMvRnNZRWh2VnlHNVkwM2NUanV1?=
 =?utf-8?B?OExlZjFNV0htWjFMNEJtaG43b0ZGUmhFUG1qRXNoOGhzMHEyVEE3NjZkcW1y?=
 =?utf-8?B?SWpFelBwdkQzVWczVzZGTGxSbkVhd21ONE5YWHd4c21mQUVaeFVVdHFveEhs?=
 =?utf-8?B?RjhSZXpnS3dyZUwyblJGTVhCWVRHbVplMk1GNExtMkNQaDdHUkpsSTAyZnA1?=
 =?utf-8?B?Z0xjS3IreTBnQTZISlJnTjZ3SkpJSVQ0WUFoanhoRGcxSmdPQWhqZTgrL3I1?=
 =?utf-8?B?QlFXaFRCSWRnQ0FvWFhXN0R4WThOdUpEYVo3SFhsRmo2YkRvQURGUnpIU1RR?=
 =?utf-8?B?S3J5OUszVFE0UlFyZEJRQVZjRXU3OS9XakEvSTFzUHkzOS9nU3pUdUZOZFpF?=
 =?utf-8?B?blhmNndiU2JNMUw0ZVhWRzVxeWlhcEFDbnFHM3JvZkM5WDgyWVE3OTN4NThY?=
 =?utf-8?B?Q01wUWVybUJsUGhFTGwrQXpoSFd3eUpzd3ErNlhWWCtoUDhGQ3B2MGk4dlJM?=
 =?utf-8?B?bzVERDBpMVJxVHdhaVBQRlpLUlhwelFIQXcycHVOK0FWRWMrWGt4UnBMNTNw?=
 =?utf-8?B?LzY2R2RuRCtnY3k4aDVSSFgxYlZmVG5EZ0kvQk9Mc1h3K0dMU0ZPaFFPcFVD?=
 =?utf-8?B?OEhDWTUvL2RvbWo4cnBlZW5oV0FjL2lwT1ZPV01Ec2d4RExxREo3VlNnUHRR?=
 =?utf-8?Q?GJKnHn9h4wOlXeCJP9XcCwE=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20b5b026-5af1-43b4-c8b4-08dbbe649ca9
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2023 07:45:53.9715
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NK33A2zMKlKq9/Ui06Z8tTOYhKcvDgviMjrjdhShxJZwVA3LsSAnjCH2EXfdsr8G6AamPmvW5sAWD5tshU7IgkuDm/J88yForGXQy0vtugx0FxnX3bw8use+O+uTuuvI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8431
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 07:46:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61116

Hi Trevor,

On 9/25/23 18:26, Trevor Woerner wrote:
> Add support for the Radxa Rock 5B
> https://wiki.radxa.com/Rock5/5b
> 
> The device-tree for this board is better in the 6.5 (and later) kernels,
> therefore set the kernel to linux-yocto-dev for now (eventually this won't be
> needed as linux-yocto moves forward).
> 
> Unfortunately the TF-A project does not currently have support for
> the rk3588. Therefore, for the time-being, the only way to supply a
> TPL/DDR-init for the rk3588 is to use the closed-source rkbin binaries
> from Rockchip. If/when TF-A adds support for the rk3588 we can investigate
> switching.
> 
> The rk3588 comes in two variants: rk3588 and rk3588s. The "s" option is a
> stripped-down version of the rk3588. In the Linux kernel these two SoCs are
> kept separate, with the rk3588 building on the rk3588s, so we've mimicked that
> same behaviour here.
> 
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
> v3:
> - change name from "rock5b" to "rock-5b", there seem to be more instances
>    of the latter on the manufacturer's website than the former
> - fix the MACHINEOVERRIDE in conf/machine/include/rk3588s.inc to be
>    "rk3588s" and not "rk3588"
> 
> v2:
> - fix the logic behind the MACHINEOVERRIDES to get the content, and
>    ordering, correct
> - improved the commit message around TF-A/rkbin
> - correct Quentin's SoB line
> ---
>   README                                        |  1 +
>   conf/machine/include/rk3588.inc               |  6 ++
>   conf/machine/include/rk3588s.inc              | 17 ++++
>   conf/machine/rock-5b.conf                     | 12 +++
>   recipes-bsp/rkbin/rockchip-rkbin_git.bb       | 37 ++++++++
>   recipes-bsp/u-boot/u-boot%.bbappend           |  5 ++
>   recipes-kernel/linux/linux-yocto-dev.bbappend |  3 +
>   .../rockchip/remove-non-rockchip-arch-arm.cfg | 85 +++++++++++++++++++
>   .../rockchip/remove-non-rockchip-arch-arm.scc |  1 +
>   .../remove-non-rockchip-arch-arm64.cfg        | 66 ++++++++++++++
>   .../remove-non-rockchip-arch-arm64.scc        |  1 +
>   11 files changed, 234 insertions(+)
>   create mode 100644 conf/machine/include/rk3588.inc
>   create mode 100644 conf/machine/include/rk3588s.inc
>   create mode 100644 conf/machine/rock-5b.conf
>   create mode 100644 recipes-bsp/rkbin/rockchip-rkbin_git.bb
>   create mode 100644 recipes-kernel/linux/linux-yocto-dev.bbappend
>   create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg
>   create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc
>   create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg
>   create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc
> 
> diff --git a/README b/README
> index 286dafbe1020..d4576d73c636 100644
> --- a/README
> +++ b/README
> @@ -30,6 +30,7 @@ Status of supported boards:
>   		vyasa-rk3288
>   		firefly-rk3288
>   		nanopi-r4s
> +		rock-5b
>   	builds:
>   		marsboard-rk3066
>   		radxarock
> diff --git a/conf/machine/include/rk3588.inc b/conf/machine/include/rk3588.inc
> new file mode 100644
> index 000000000000..34f0627dc085
> --- /dev/null
> +++ b/conf/machine/include/rk3588.inc
> @@ -0,0 +1,6 @@
> +MACHINEOVERRIDES =. "rk3588:"
> +
> +# the rk3588s is a "stripped-down" version of the rk3588
> +# in the kernel's device-tree the rk3588 builds on top of the rk3588s
> +# so anything that is valid for the rk3588s is valid for the rk3588
> +require conf/machine/include/rk3588s.inc
> diff --git a/conf/machine/include/rk3588s.inc b/conf/machine/include/rk3588s.inc
> new file mode 100644
> index 000000000000..7bfc9474e96e
> --- /dev/null
> +++ b/conf/machine/include/rk3588s.inc
> @@ -0,0 +1,17 @@
> +MACHINEOVERRIDES =. "rk3588s:"
> +DEFAULTTUNE ?= "cortexa76-cortexa55-crypto"
> +
> +require conf/machine/include/arm/armv8-2a/tune-cortexa76-cortexa55.inc
> +require conf/machine/include/rockchip-defaults.inc
> +require conf/machine/include/rockchip-wic.inc
> +
> +KBUILD_DEFCONFIG ?= "defconfig"
> +KERNEL_FEATURES:append:rk3588s = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
> +KERNEL_CLASSES = "kernel-fitimage"
> +KERNEL_IMAGETYPE = "fitImage"
> +
> +PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"
> +PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
> +
> +UBOOT_SUFFIX ?= "itb"
> +UBOOT_ENTRYPOINT ?= "0x06000000"
> diff --git a/conf/machine/rock-5b.conf b/conf/machine/rock-5b.conf
> new file mode 100644
> index 000000000000..d1371084becc
> --- /dev/null
> +++ b/conf/machine/rock-5b.conf
> @@ -0,0 +1,12 @@
> +#@TYPE: Machine
> +#@NAME: Radxa Rock 5B
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
> +
> +addtask deploy after do_install
> diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
> index db8e0166f5b3..3732c7f04373 100644
> --- a/recipes-bsp/u-boot/u-boot%.bbappend
> +++ b/recipes-bsp/u-boot/u-boot%.bbappend
> @@ -11,6 +11,11 @@ DEPENDS:append = " python3-pyelftools-native"
>   
>   ATF_DEPENDS ??= ""
>   
> +EXTRA_OEMAKE:append:rk3588s = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf"
> +ATF_DEPENDS:append:rk3588s = " trusted-firmware-a:do_deploy"
> +EXTRA_OEMAKE:append:rk3588s = " ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin"
> +ATF_DEPENDS:append:rk3588s = " rockchip-rkbin:do_deploy"
> +

Now to come to think of it... I don't think ATF_DEPENDS is the right 
name for this variable, because TPL doesn't come from TF-A/ATF. But the 
end result is the expected one, so up to you.

Thanks!

Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Would you be open to backporting this to other branches (e.g. kirkstone 
:) ) ?

Cheers,
Quentin

>   EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
>   ATF_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
>   EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
> diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kernel/linux/linux-yocto-dev.bbappend
> new file mode 100644
> index 000000000000..419ebc18b229
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto-dev.bbappend
> @@ -0,0 +1,3 @@
> +FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
> +COMPATIBLE_MACHINE:rock-5b = "rock-5b"
> +SRC_URI:append:rock-5b = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
> diff --git a/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg
> new file mode 100644
> index 000000000000..e9443f17895c
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg
> @@ -0,0 +1,85 @@
> +CONFIG_ARCH_ACTIONS=n
> +CONFIG_ARCH_AIROHA=n
> +CONFIG_ARCH_ALPINE=n
> +CONFIG_ARCH_ARTPEC=n
> +CONFIG_ARCH_ASPEED=n
> +CONFIG_ARCH_AT91=n
> +CONFIG_ARCH_BCM2835=n
> +CONFIG_ARCH_BCM=n
> +CONFIG_ARCH_BCMBCA=n
> +CONFIG_ARCH_BCMBCA_BRAHMAB15=n
> +CONFIG_ARCH_BCMBCA_CORTEXA7=n
> +CONFIG_ARCH_BCMBCA_CORTEXA9=n
> +CONFIG_ARCH_BCM_21664=n
> +CONFIG_ARCH_BCM_23550=n
> +CONFIG_ARCH_BCM_281XX=n
> +CONFIG_ARCH_BCM_5301X=n
> +CONFIG_ARCH_BCM_53573=n
> +CONFIG_ARCH_BCM_CYGNUS=n
> +CONFIG_ARCH_BCM_HR2=n
> +CONFIG_ARCH_BCM_NSP=n
> +CONFIG_ARCH_BERLIN=n
> +CONFIG_ARCH_BRCMSTB=n
> +CONFIG_ARCH_DIGICOLOR=n
> +CONFIG_ARCH_EMEV2=n
> +CONFIG_ARCH_EXYNOS=n
> +CONFIG_ARCH_HI3xxx=n
> +CONFIG_ARCH_HIGHBANK=n
> +CONFIG_ARCH_HIP01=n
> +CONFIG_ARCH_HIP04=n
> +CONFIG_ARCH_HISI=n
> +CONFIG_ARCH_HIX5HD2=n
> +CONFIG_ARCH_HPE=n
> +CONFIG_ARCH_HPE_GXP=n
> +CONFIG_ARCH_INTEL_SOCFPGA=n
> +CONFIG_ARCH_KEYSTONE=n
> +CONFIG_ARCH_MEDIATEK=n
> +CONFIG_ARCH_MESON=n
> +CONFIG_ARCH_MILBEAUT=n
> +CONFIG_ARCH_MILBEAUT_M10V=n
> +CONFIG_ARCH_MMP=n
> +CONFIG_ARCH_MSM8916=n
> +CONFIG_ARCH_MSM8960=n
> +CONFIG_ARCH_MSM8974=n
> +CONFIG_ARCH_MSM8X60=n
> +CONFIG_ARCH_MVEBU=n
> +CONFIG_ARCH_MXC=n
> +CONFIG_ARCH_OMAP3=n
> +CONFIG_ARCH_OMAP4=n
> +CONFIG_ARCH_QCOM=n
> +CONFIG_ARCH_R7S72100=n
> +CONFIG_ARCH_R7S9210=n
> +CONFIG_ARCH_R8A73A4=n
> +CONFIG_ARCH_R8A7740=n
> +CONFIG_ARCH_R8A7742=n
> +CONFIG_ARCH_R8A7743=n
> +CONFIG_ARCH_R8A7744=n
> +CONFIG_ARCH_R8A7745=n
> +CONFIG_ARCH_R8A77470=n
> +CONFIG_ARCH_R8A7778=n
> +CONFIG_ARCH_R8A7779=n
> +CONFIG_ARCH_R8A7790=n
> +CONFIG_ARCH_R8A7791=n
> +CONFIG_ARCH_R8A7792=n
> +CONFIG_ARCH_R8A7793=n
> +CONFIG_ARCH_R8A7794=n
> +CONFIG_ARCH_R9A06G032=n
> +CONFIG_ARCH_RENESAS=n
> +CONFIG_ARCH_SH73A0=n
> +CONFIG_ARCH_SPEAR13XX=n
> +CONFIG_ARCH_STI=n
> +CONFIG_ARCH_STM32=n
> +CONFIG_ARCH_SUNPLUS=n
> +CONFIG_ARCH_SUNXI=n
> +CONFIG_ARCH_TEGRA=n
> +CONFIG_ARCH_TEGRA_114_SOC=n
> +CONFIG_ARCH_TEGRA_124_SOC=n
> +CONFIG_ARCH_TEGRA_2x_SOC=n
> +CONFIG_ARCH_TEGRA_3x_SOC=n
> +CONFIG_ARCH_U8500=n
> +CONFIG_ARCH_UNIPHIER=n
> +CONFIG_ARCH_VEXPRESS=n
> +CONFIG_ARCH_VEXPRESS_TC2_PM=n
> +CONFIG_ARCH_VIRT=n
> +CONFIG_ARCH_WM8850=n
> +CONFIG_ARCH_ZYNQ=n
> diff --git a/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc
> new file mode 100644
> index 000000000000..ce7770456ea4
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc
> @@ -0,0 +1 @@
> +kconf hardware remove-non-rockchip-arch-arm.cfg
> diff --git a/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg
> new file mode 100644
> index 000000000000..5b804a2ca26b
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg
> @@ -0,0 +1,66 @@
> +CONFIG_ARCH_ACTIONS=n
> +CONFIG_ARCH_ALPINE=n
> +CONFIG_ARCH_APPLE=n
> +CONFIG_ARCH_BCM2835=n
> +CONFIG_ARCH_BCM=n
> +CONFIG_ARCH_BCMBCA=n
> +CONFIG_ARCH_BCM_IPROC=n
> +CONFIG_ARCH_BERLIN=n
> +CONFIG_ARCH_BRCMSTB=n
> +CONFIG_ARCH_EXYNOS=n
> +CONFIG_ARCH_SPARX5=n
> +CONFIG_ARCH_HISI=n
> +CONFIG_ARCH_INTEL_SOCFPGA=n
> +CONFIG_ARCH_K3=n
> +CONFIG_ARCH_KEEMBAY=n
> +CONFIG_ARCH_LAYERSCAPE=n
> +CONFIG_ARCH_LG1K=n
> +CONFIG_ARCH_MEDIATEK=n
> +CONFIG_ARCH_MESON=n
> +CONFIG_ARCH_MVEBU=n
> +CONFIG_ARCH_MXC=n
> +CONFIG_ARCH_NPCM=n
> +CONFIG_ARCH_NXP=n
> +CONFIG_ARCH_MA35=n
> +CONFIG_ARCH_QCOM=n
> +CONFIG_ARCH_REALTEK=n
> +CONFIG_ARCH_R8A774A1=n
> +CONFIG_ARCH_R8A774B1=n
> +CONFIG_ARCH_R8A774C0=n
> +CONFIG_ARCH_R8A774E1=n
> +CONFIG_ARCH_R8A77951=n
> +CONFIG_ARCH_R8A77960=n
> +CONFIG_ARCH_R8A77961=n
> +CONFIG_ARCH_R8A77965=n
> +CONFIG_ARCH_R8A77970=n
> +CONFIG_ARCH_R8A77980=n
> +CONFIG_ARCH_R8A77990=n
> +CONFIG_ARCH_R8A77995=n
> +CONFIG_ARCH_R8A779A0=n
> +CONFIG_ARCH_R8A779F0=n
> +CONFIG_ARCH_R8A779G0=n
> +CONFIG_ARCH_R9A07G043=n
> +CONFIG_ARCH_R9A07G044=n
> +CONFIG_ARCH_R9A07G054=n
> +CONFIG_ARCH_R9A09G011=n
> +CONFIG_ARCH_RENESAS=n
> +CONFIG_ARCH_S32=n
> +CONFIG_ARCH_SEATTLE=n
> +CONFIG_ARCH_STM32=n
> +CONFIG_ARCH_SPRD=n
> +CONFIG_ARCH_SUNXI=n
> +CONFIG_ARCH_SYNQUACER=n
> +CONFIG_ARCH_TEGRA=n
> +CONFIG_ARCH_TEGRA_132_SOC=n
> +CONFIG_ARCH_TEGRA_186_SOC=n
> +CONFIG_ARCH_TEGRA_194_SOC=n
> +CONFIG_ARCH_TEGRA_210_SOC=n
> +CONFIG_ARCH_TEGRA_234_SOC=n
> +CONFIG_ARCH_TESLA_FSD=n
> +CONFIG_ARCH_THUNDER2=n
> +CONFIG_ARCH_THUNDER=n
> +CONFIG_ARCH_UNIPHIER=n
> +CONFIG_ARCH_VEXPRESS=n
> +CONFIG_ARCH_VISCONTI=n
> +CONFIG_ARCH_XGENE=n
> +CONFIG_ARCH_ZYNQMP=n
> diff --git a/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc
> new file mode 100644
> index 000000000000..e169240f5067
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc
> @@ -0,0 +1 @@
> +kconf hardware remove-non-rockchip-arch-arm64.cfg

