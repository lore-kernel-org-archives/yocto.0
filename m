Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2975BE95A91
	for <webhook@archiver.kernel.org>; Mon,  9 Oct 2023 08:25:18 +0000 (UTC)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.82])
 by mx.groups.io with SMTP id smtpd.web10.56807.1696839915245867925
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Oct 2023 01:25:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=ClgUVBFj;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.13.82, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RpQtYwnJsJQAsYmFikegvAgubarbsOqyqZHFcVSCLQoC6K5cNyjVISuJcaO9bwuYvYG8wTBXgkc2twDzcUGAfsKdHGVuPdpMPjNyq9e32ImOfW4QCIJlOL7eQeFOKzlahmZC2uC2Vewhz10XKVxZlPFsaIUemF93MhnTbox3t86I4t/VR4ojCNhCNtzR8RmoOvMg7W4OWjH1TWPeZ5joR9gwkyt3DkdL6TLeFn/rT/WtLmFzdmNLY5pk04lLlHujYa03j9tfJQQi8ZE7bTjqQ8nNmm0w3u0rDzcc44KdUmgtF3DxlHkNefYfMZrpbCGO9kbxragawtJunMnabD7DEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G/css2PSPYNJMXZ6LQjorJXl4pmQdN2TO2sNdXO9k50=;
 b=TUiEvdQODZMQwMCQBcgkVVSvWhAN/cknx149KJXSjmFImsVysK9t3o0PfOEILVG33lKPtDD6j/f2N23MBAJdzb5GxObbYjzDRBzW6P+KFi6+C4LZ5Mq//yK/iq2GqJJk/hd/YzUVdXQ18W5rpAztOggDO3ZmHvVAvaleptX5bHUo+c605E1KvkyDPvGaEE1A5Akp1lnWNZ0IPP298A70k8p3pqFXcOth/UqmAJDOtYMr24Z6s7xjCAqo9hc0b1VIzZ7oQ5vpxWT+0f37UnrXf4pdAUE0VCgJXrmC5JLn/CFqlpbTuNTpuDzkY6oOsyeic2RNrjpHO7ALjxXy6JmR6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G/css2PSPYNJMXZ6LQjorJXl4pmQdN2TO2sNdXO9k50=;
 b=ClgUVBFjGuSeFbzpRolfqm7uO9eKIQh/A/jgoWGGpebOBOGNaTOpZ2gVRUUSrhw+b+CzG6GI2l63i5hnj6ffZLxMNuZ7oCR+4VgCiT5c9f+UBjIN8tBelyWUgsKuIvrpeYMcu/mVBSAlAPJSiHpn/A9Rr9c/VPe/nEQzGQC3gk0IG7x+6gfpOkJZQ3Jw5/VA9b6pbIQ+fqwnQEzfH0UeomqTd5uhF8OlT9SPqoztVTS/+qpfOQpeI55fRGxb5V0IYrBovSWJxBm4pUYnW+2Nghjb+6zvX9/pkx/ixtMqmoGMS7Itrjk19u/qURRdXtO9mgMcA6bsOXsVKS5Vu4QYWw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS4PR04MB9412.eurprd04.prod.outlook.com (2603:10a6:20b:4eb::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36; Mon, 9 Oct
 2023 08:25:11 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152%5]) with mapi id 15.20.6863.032; Mon, 9 Oct 2023
 08:25:10 +0000
Message-ID: <c014248c-b04c-4049-9c7b-992ab23562ce@theobroma-systems.com>
Date: Mon, 9 Oct 2023 10:25:09 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip] [PATCH v2] rock-3a add
To: anthony.t.davies@gmail.com, yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com
References: <20231006232640.1157089-1-anthony.t.davies@gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20231006232640.1157089-1-anthony.t.davies@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0188.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ca::13) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS4PR04MB9412:EE_
X-MS-Office365-Filtering-Correlation-Id: 46baf8ad-6f6a-4980-7fcf-08dbc8a140e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	kwCFS/1VwOQPCQl7mGuFous2MxiEhygIEgk5zd10vMQeFHmIKCA364VhjEb+axAmpN57rxpw7jwFMJ9ab/aBEcRULPZ7Cm/VH1Yr0Mpwls1DuZqe7D2maKFrsCdUSEuWSm1OoyaDgkuTHuWB30Q+QtccGtyzyEE35DeUcOzfjdqDZf2xouO9+o7Hkh2PydbObgVFEFKwOC3fko3vB8ngmoupfPhvxBHZHAJ8F5uyaxnXA0LHeBuOQc7KCtf9iC5QWJZUieMToEmGxk/mD5x61Nxe1SmCBhRGewJjbrFECWoK7Re5pyc9928QwmwO5y71SmZHAKJnE2PoNBrSnWK28PaWTUl8OAjh4XMnN1VMgZcB0+fOT444SyNoDFuYdfFBJ++tb7Q5qRtf2s32BV2Cr8XS3bld61jiwkGtFljCyuRi0/2bCdQbfSvpWf+T07f3e7F+bVDV/V295QRiG21uWrzYXpPopbngS6CB8GtGWkmJRNRovTD4uPrEAgxrrcOVH3Y6W7GE0HfX4wpsz0wZIsB22mi/AFBUdbR9r8X1EAnYc1knNMlSKjdZ6HnaXAEp2S64k+NYyuee/GAIv3rT21XRJVoubNPd/X0rk3JaWUnr33yNNEC30epKf/tR/8iuV+Kl07QQeIu3OpNnBxms1A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(39850400004)(396003)(366004)(136003)(230922051799003)(1800799009)(451199024)(64100799003)(186009)(38100700002)(31696002)(86362001)(36756003)(31686004)(2906002)(6512007)(478600001)(6486002)(966005)(41300700001)(8936002)(5660300002)(4326008)(8676002)(44832011)(83380400001)(6506007)(2616005)(53546011)(66476007)(66556008)(66946007)(316002)(26005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dkpmTHN4SzJPSVZEbFFFMHhmU0kzNDBuS1JoOXhjNGVERnczV2JNeFlTM2Yz?=
 =?utf-8?B?c1F0elhFaklQQ3JjOXN5eFVSK3d2RlE2L0tYbExaZXQxTFI3TXliOGsyc2JM?=
 =?utf-8?B?TGlMREdQcnBNQUVmN2xZclk1QjNoSmo5QkhDb0JYVHVILytKYk5qWmpSN1Jt?=
 =?utf-8?B?NDFPTG00SzJjdE53N2RmczZST0s1eTV2MFZWSXRuVEhZN282bFNlQVFaYzZz?=
 =?utf-8?B?VFcxUEZzdldlN3E3RDZUb0o2THJYaWIzNXJtNWgwUkUydGgxZFdoZUZPL2hm?=
 =?utf-8?B?M2xxeFhtQnlrMW5DeHl0QWorT0dSMFg3aTNoY2w2bnhlcVpQNTdLT2lNTjVP?=
 =?utf-8?B?K2FvWEMwc3JzdC9TNEJHZHIvbUUzUlVQYkpaa1d4dEpNNG5HVFJrdlFPbjlW?=
 =?utf-8?B?UkI1ZHpmV3ZieE5XZDVDT0ZVcEEvOWYyYjBxZWVBKzk2djY2WlVFZnJhWDBk?=
 =?utf-8?B?MEo4ZFNNa3k2UklsMnNEUFhVUFE0RC9LSjJCbGVIR3VDZDhpVjBuRGR3ZWxt?=
 =?utf-8?B?NXc0dmxiSWZ4cUpEbzlTNUd0djYrVzVLWHRhcm81OS91Q2Z6c0FFRUJrOEVD?=
 =?utf-8?B?b3J2ZVN5WmJQUk12T0VXTWNxT2o4eitzL05sWGZGZ2ExME1lK2djM2hjNWlV?=
 =?utf-8?B?TlpBT0ZjOTdvS2FHOTM5MU1FbjBIUTh5Mm9nbUlnbE1wZUZxblg5dkEyVE85?=
 =?utf-8?B?YWJ0OHJ4L2pMalNlYVR4OWZORWxkcVB4b1ZIcDZyYk1jTi9NeUN3bHNheWIv?=
 =?utf-8?B?V2l5eThPbHFKeUNQSnVHR0tGaTV1dktOUEFDV2docXYxYy9QSnp6RjBoS2pQ?=
 =?utf-8?B?WnEyL01oVGlaV2ptczEzZ0xpSDlZUzZvbjZzSGFMZ0EycnNuS3ZsTHlIQnhr?=
 =?utf-8?B?WGtEbHNEYWR4Z1RtWjIvY1p6cDdjT2xodVhrLzhGWGtFVGlxS2kyZjV6dkJD?=
 =?utf-8?B?WWFpOW94NlZQaEgxV01najJNaUNtd0RrUGhFT05iMHJZUnFzd0FPY2F0Z1RB?=
 =?utf-8?B?MnNmd1d3emNBWFAyZ1JnemExOWpOUjNaQjdub2lzRmQ5OU5lVjg3dlVkeGJE?=
 =?utf-8?B?SStVMTNCSU5WT3BHNGw1MXlNLzdYSFpjeXFNb1lVZXJYc3hBd2JJZmZuNURu?=
 =?utf-8?B?N0ZKa05iSVMyRGEvejFaSmQ2dzllYXNOU29WaTlTMm9jL3hzV3hXcVlQbEFm?=
 =?utf-8?B?U29ja0VHb2VET3dCQUdPUHBQY2tSNzZrcnU3Y2ZxMDB5TDVuMDFJQ0xqM2Rx?=
 =?utf-8?B?MGQ0Q3BJNm12azFVNjNwVjZEUVRLTkhnb0JybitaOEFoOHZmYStkRjhCN0xz?=
 =?utf-8?B?U2lPTzNOOEJlY1pNSUxhNDhRcVhCMEtsSitqcUEycFprakpjYzVEUXkzVmxP?=
 =?utf-8?B?dGN4T1RrUWZ3amZzVFNyMXBtRVBuQmNVUkdsVEVEdkh3L2hGS1M1V09IcXlo?=
 =?utf-8?B?Q3N1RXF5NWhXVFRNdWtJNGRPQzdrVnZtZXZ3VnhkaExyb2JPbStwOE1SNUxE?=
 =?utf-8?B?OGpwa2pmK1Nmd3NvVXg0U3R1akpYQTFFMkFKQlI4bDlwVWRReVJydGJLWTBC?=
 =?utf-8?B?NWlHbFdqdlh5YmgzcTRQL3lkYkdSRUtLV3pybEJid0F0dExQQ0VBT0JuMisr?=
 =?utf-8?B?OU9WVlpmQWdkY0JlZ0lZM1VLdTlUSkpxL29udkljMXRLc0hIeG1KMk5lTTIz?=
 =?utf-8?B?U3BvZTRQdi9pTWt4R2NtaGlTSzVWT3FsU0I3WTNwNlZkQU9rMGI1UndxcnF2?=
 =?utf-8?B?TGlwYTVlNHY1TE1PUTZzMlQzbFA1M00vMDgvVXBzc253cldlL0UxT05SSjg1?=
 =?utf-8?B?UUpiSzJmT3VqdVdvcmhEbTF5MUFvRkNEVlRzL25weEUrY09qL3RLdVhrc0Qr?=
 =?utf-8?B?UHlxL0N5YXYvdGNYbE1XVklxS3hXaWh2Ym40MklTYjc4MUhxRXJJUFNkVXlt?=
 =?utf-8?B?QVlNaENlNVdDK0IvbjJDZHpFcmcwSlg2RTZ2b2d1YVpibHRHb08yUFRnVXo4?=
 =?utf-8?B?VWdlUWYwTk1UaWhicHVTUk9wZVp2R3YzL2pHL1RSbXhjRTZUbC9yYVZKaS9D?=
 =?utf-8?B?S3RRUGx0QVUzS0ZIb3piZFd3MGljSUl3UzlCa0FodlNpSFN0aHFGTlV1WkYx?=
 =?utf-8?B?THYvVXhtaENXM0JMSlVhZDhqdFlSOWVHYzVOTDlJcEpwcjFjY2orbjREM2lo?=
 =?utf-8?Q?N2WnoIFByt6xYZqGFcKBSks=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46baf8ad-6f6a-4980-7fcf-08dbc8a140e5
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2023 08:25:10.8683
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: meHohZCJj7sz5WoGbL2lYaRnT6d/oILhSQUeu9mvw3AkxLqfcD/xFnJvLZOPt4bNyWPSvTlF9TGk2Pkkm8PtQHMSiaUiT5cIZ7f9Nc/ptagxJASwnC5qEaboxfcVbZou
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR04MB9412
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Oct 2023 08:25:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61281

Hi Anthony,

On 10/7/23 01:26, Anthony Davies via lists.yoctoproject.org wrote:
> From: Anthony Davies <anthony.t.davies@gmail.com>
> 
> Add support for the Radxa Rock 3A
> https://wiki.radxa.com/Rock3/3a
> 
> The TF-A project does not currently have support for
> the rk3568. Therefore, for the time-being, the only way to supply a
> TPL/DDR-init for the rk3568 is to use the closed-source rkbin binaries
> from Rockchip. If/when TF-A adds support for the rk3588 we can investigate
> switching.
> 
> recipes-bsp/rkbin/rockchip-rkbin_git.bb was modified to allow a machine
> override to allow both rk3568 and rk3588s to use differnet binary blobs
> 
> Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>
> ---
>   README                                  |  1 +
>   conf/machine/include/rk3568.inc         | 17 +++++++++++++++++
>   conf/machine/rock-3a.conf               | 12 ++++++++++++
>   recipes-bsp/rkbin/rockchip-rkbin_git.bb | 16 +++++++++++++++-
>   recipes-bsp/u-boot/u-boot%.bbappend     |  5 +++++
>   5 files changed, 50 insertions(+), 1 deletion(-)
>   create mode 100644 conf/machine/include/rk3568.inc
>   create mode 100644 conf/machine/rock-3a.conf
> 
> diff --git a/README b/README
> index 8104474..3357b47 100644
> --- a/README
> +++ b/README
> @@ -32,6 +32,7 @@ Status of supported boards:
>   		nanopi-r4s
>   		rock-5b
>   		nanopi-r2s
> +    rock-3a

Please use the same indentation here so it's aligned with the other boards.

It's 2 tabs for the indentation there it seems.

>   	builds:
>   		marsboard-rk3066
>   		radxarock
> diff --git a/conf/machine/include/rk3568.inc b/conf/machine/include/rk3568.inc
> new file mode 100644
> index 0000000..5382b58
> --- /dev/null
> +++ b/conf/machine/include/rk3568.inc
> @@ -0,0 +1,17 @@
> +MACHINEOVERRIDES =. "rk3568:"
> +DEFAULTTUNE ?= "cortexa55"
> +
> +require conf/machine/include/arm/armv8-2a/tune-cortexa55.inc
> +require conf/machine/include/rockchip-defaults.inc
> +require conf/machine/include/rockchip-wic.inc
> +
> +KBUILD_DEFCONFIG ?= "defconfig"
> +KERNEL_FEATURES:append:rk3568 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
> +KERNEL_CLASSES ??= "kernel-fitimage"
> +KERNEL_IMAGETYPE ??= "fitImage"
> +
> +PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"
> +PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
> +
> +UBOOT_SUFFIX ?= "itb"
> +UBOOT_ENTRYPOINT ?= "0x06000000"
> diff --git a/conf/machine/rock-3a.conf b/conf/machine/rock-3a.conf
> new file mode 100644
> index 0000000..2ed83a3
> --- /dev/null
> +++ b/conf/machine/rock-3a.conf
> @@ -0,0 +1,12 @@
> +#@TYPE: Machine
> +#@NAME: Radxa Rock 3a
> +#@DESCRIPTION: ROCK3 is a series of Rockchip RK3566/RK3568 based
> +#SBC(Single Board Computer) and Compute Module by Radxa.
> +#https://wiki.radxa.com/Rock3
> +
> +require conf/machine/include/rk3568.inc
> +
> +KERNEL_DEVICETREE = "rockchip/rk3568-rock-3a.dtb"
> +MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> +
> +UBOOT_MACHINE = "rock-3a-rk3568_defconfig"
> diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> index 7fefb01..273f394 100644
> --- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> @@ -14,6 +14,7 @@ S = "${WORKDIR}/git"
>   
>   COMPATIBLE_MACHINE = ""
>   COMPATIBLE_MACHINE:rk3588s = "rk3588s"
> +COMPATIBLE_MACHINE:rk3568 = "rk3568"
>   
>   PACKAGE_ARCH = "${MACHINE_ARCH}"
>   
> @@ -25,7 +26,16 @@ do_install() {
>   PACKAGES = "${PN}"
>   ALLOW_EMPTY:${PN} = "1"
>   
> -do_deploy() {
> +do_deploy:rk3568() {
> +	# Prebuilt TF-A
> +	install -m 644 ${S}/bin/rk35/rk3568_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3568.elf
> +	# Prebuilt OPTEE-OS
> +	install -m 644 ${S}/bin/rk35/rk3568_bl32_v*.bin ${DEPLOYDIR}/tee-rk3568.bin
> +	# Prebuilt U-Boot TPL (DDR init)
> +	install -m 644 ${S}/bin/rk35/rk3568_ddr_1560MHz_v1.18.bin ${DEPLOYDIR}/ddr-rk3568.bin
> +}
> +
> +do_deploy:rk3588s() {
>   	# Prebuilt TF-A
>   	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
>   	# Prebuilt OPTEE-OS
> @@ -34,4 +44,8 @@ do_deploy() {
>   	install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin ${DEPLOYDIR}/ddr-rk3588.bin
>   }
>   
> +do_deploy() {
> +# Needed as a default perhaps a bb.fatal with a message saying an override needs to be set
> +}
> +

Well, we could, but also... the recipe won't be used until you add to 
COMPATIBLE_MACHINE, which means the recipe should have been working by 
the time you add it. Not entirely sure how much we want to prevent users 
to shoot their own foot honestly. But I guess it's such a small change 
that adding it is probably better than just arguing whether we need it 
or not, so maybe send another patch to add the bb.fatal :) ?

Cheers,
Quentin

