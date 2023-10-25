Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72827C0032E
	for <webhook@archiver.kernel.org>; Wed, 25 Oct 2023 15:49:19 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.64])
 by mx.groups.io with SMTP id smtpd.web10.176970.1698248953114325963
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Oct 2023 08:49:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=jXSsS1Nb;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.22.64, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YULCzPdODY1JixaZr/JjLt/0ieYapBMZ64EKqgBsYJ1T/V/qJWZhC8yYa+/wgTd+209Av2drXKM6wQBA8Jkz6k9ofr83A4tB7jvf+/QndLdmPa9+Q1chM9Ql5yKtcK7SLJjbogqX1a+e20QyvekIAjFc4YgYXbBM3z4LDHuko/wE46YCYO9JGq5m0ckrMmZ6IuRsIwwrv+uMDeQOI+I0pz9dc85ifKILdN1JXcJPTyiEYCgITrPdbe1DePZzqM9Q9Y4CfqbEjfLRZQ76t9Ug/8rhlAtvkCeRsmlQLa0ML3lD4IQbpgnQLvEGtjPFdsIRq178Y591vOk299oBV35aUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/0lCY3txCjRV/GgZCHe2Xh/c7+kCbLci8Gw+wgSdivk=;
 b=Ycbi1AZ818za93mCDb1JvVpqsxY19Lh3VWVj716g3j9MtXEY1H0U7Tobntwg4NxWevPTbMsYCXqxOwa+A2LgIloJ6IGYy5eY8DSeyFns4pTjf+1v3PCNq+mR9vhr/BD0dDOl7rB/ZCTrZ9Ou2IbawQD8mj8n0i2fFM649l4imJk5QZhhpoMH+BgEzVuL40XmqdyVGMiw/nqrWGTpdUMYunXbiv7oq6G5w2WZzGvFaqoS18+zUuoh2+6bGK5Z6BFazcNsSBIxIxCiCwJaL56GLuQoV9HzJGOCKB1wKfjrj7ThW2teaAWr6+BYtdBKxA8B8Jc7DDV4JEkpGnVkI1Asqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/0lCY3txCjRV/GgZCHe2Xh/c7+kCbLci8Gw+wgSdivk=;
 b=jXSsS1Nbwqj/oCkwe7YHucOI37aGqoJinh10I74ucm3actIAmLHAzPmHIJSpHCp+CiePBSpADGiRt8EA3rPWtOFV/RFv2Gb9ckyBFL5S534Ty1gZKrbbU4g0O1dHjFFtmlSoban4jgY/i7b+plnHTAi30vEnc5G9nkuLFqRCQFqzH2rM242ZM5YXESqXT5/hLUa8TT1S8kZfWsYqiCYbwhNeRGARqyHtUcz064H5A8ost68HELeTOZPQ0nb2NzoS0I5PUt0tl4iaLanRvRThHd210zHub5KYcaSeWnUGuIqSVt7BWqv+5910BFYWK4mPq6FtYzNEuq/0Akfh4D4Egw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AM9PR04MB7716.eurprd04.prod.outlook.com (2603:10a6:20b:280::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.11; Wed, 25 Oct
 2023 15:49:08 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::8b7:c8b9:d800:8b4d]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::8b7:c8b9:d800:8b4d%3]) with mapi id 15.20.6933.014; Wed, 25 Oct 2023
 15:49:08 +0000
Message-ID: <5bfb47c7-98df-4bfc-bc11-ffc67276fd0c@theobroma-systems.com>
Date: Wed, 25 Oct 2023 17:49:06 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip] [PATCH v3] rock-3a add
Content-Language: en-US
To: Trevor Woerner <twoerner@gmail.com>
Cc: anthony.t.davies@gmail.com, yocto@lists.yoctoproject.org
References: <20231016104344.401706-1-anthony.t.davies@gmail.com>
 <20231025135616.GA9837@localhost>
 <3d69f40b-e05d-4d2b-a68d-da2abfa462c8@theobroma-systems.com>
 <20231025144258.GA14018@localhost>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20231025144258.GA14018@localhost>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: FR3P281CA0202.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a5::6) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AM9PR04MB7716:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c4cd6cf-885a-4b9b-a5eb-08dbd571ecad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	do6XB3sr6yrPuo5XwvbfI19VblCJVWdLEaQt+9oVjxHS3jU9RxgaOAWuNX0g2IK6QZPSabiLasA7MQ0sGJMR2TfBhlZOwjlHcquMSnVxHbiVUOXD1laWI2xNWN9jpUmjT9Slga1GeKQtN0mFCGKcm8fTlJOx/ihleN1TfAV2PEiAWMKqWXdvjogffBz7YR3xFWqMcwek5VUOsvLAriFHcGgIKo+lBVx9X/Fqs1QrTXGnF6TJDvKwr54aWUIA+NkB7HRSGVWiRS2yT6ZNn21TDZfwRABklpmAfnVoAZmd/1QOcjKgEZgcwslKHM12dsvq8J/vx5/EH2r8aMr/W6/qdEhAobFQhCtNvmtHrzw0imepTh6ayoTOVwN0dF0lhVYS8nezcObIe7QLzA0rvZNQ+6lbFDvCg/O78oMOjKWfCYLjew7wNV4Mf709A9INxOcB4O+JZvrIt3alRDaMaD48i3VStOFQWv0U+8CYysrLDZyXD+5Nee867F4FpUOQjD6BHpDH+8mo+5iD78ePfZU2iZrvVWekiaWXIyQMvG6Ke0QBjn0pt12SeDQMALt6Nl+YyWcuvIsw3ppZAmFeMN/Z3hV/RMI0OsZTuiLf8qtHzANvzORtsvtTF5Bon1rRnqGgZVkxAxNKXT6dFdV871WKlA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(39850400004)(136003)(346002)(396003)(366004)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(26005)(31686004)(4001150100001)(38100700002)(2906002)(41300700001)(44832011)(5660300002)(86362001)(31696002)(4326008)(316002)(8936002)(8676002)(6506007)(478600001)(66946007)(2616005)(66476007)(36756003)(66556008)(6916009)(45080400002)(83380400001)(966005)(6512007)(6486002)(53546011)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?U1c2ZUdDVUxpYy80aUV0V2JVZ0RCWm9hOXloMkM5YnZINnVyZjIrMkcwL2M0?=
 =?utf-8?B?NUczWERpclMwNUMzYi9KZ1RXVUVKSlljQmJFOGlxWnBxQWxUeEszSFVQM3l0?=
 =?utf-8?B?Rk9LS21nQWttTCtraFNSL2xUcTNXRmNvTXdGMjJBMGVreitFZTh1N25CalNZ?=
 =?utf-8?B?N3lNejFFZTEreDNFYzllY2pmMjFzeUtKMlJTczBCM0dhUEJ6UEVlM2ZHRFdZ?=
 =?utf-8?B?U29oSlY3Smt1WDRaUDFlQVFMaFFBemZMVk1maUdMcytHMjJIZDZUdVJja3Fi?=
 =?utf-8?B?UDhtcVpjZmtMQWFNdXNEUlpxVXlnNUZ5b1RrZzRaY043bXlmYWdSSDE2ZmxO?=
 =?utf-8?B?TkNpOGxTT1ZwNjllUnhrbjY5YzN0akliTkpZZHBEQ0gyL0FzMDJVWVdBRFRt?=
 =?utf-8?B?cDB2VnA4cGpNV3B5NWplWmxvcW96YUJFTjIzR0FEb1RLS1RacEUzbm1IS09I?=
 =?utf-8?B?SFgwVjBESFBpaGwwMERVanlTbldDZFdjVTJKWHJBSUJRTzZEZ29ueGpxN0Jt?=
 =?utf-8?B?RTA1L0RLcDgrOVFwa05jNUJVWEd1cWpqY21ZNDVDblQydUZ2UitELzFWMUpB?=
 =?utf-8?B?Tjgwa254NUM1MFNoYlErU3JmdFZjQXg0ZmhJZ0UyY3FlaXlVeWNNdkdKc2E1?=
 =?utf-8?B?T0R1QThZb0xXME5rSURYM1U1MWkvWVY1UnZVb0ZZUVhsK0FSRHA4VC81Vk9W?=
 =?utf-8?B?V3VUbko1OEhwdXQ4amkybkJXNFBwUWQ0Sytrei9YM0RaZGk5Sldnc3VURlYz?=
 =?utf-8?B?Z1hnaU9nWHlmYTdKTi9WMmF4K3ZEeTA4b2Fxd3U0NmM4YS9SM3ZWelI1eDF6?=
 =?utf-8?B?eW1sMkVKMFBLblMzSmFOQlJEdW01aUJhdVQwV0RwaEY1K1pFcmFYTXdEdmth?=
 =?utf-8?B?YUNwMXpucU5VZkFzK1NWVlZWeU1tMFJ3N2k5YWtCR1VIVENqN2xrekNwYzl6?=
 =?utf-8?B?clIveXNueHNZdlRYOTRUanA0cDlaOEtkL0hEMkpkRGw1NGUwakt4NGxQcU8y?=
 =?utf-8?B?a3MwVFM4djR6azUwV3BLS0x4RHB4QTNQV2RKU3JnY0NPNzl1K0EzZTVWaHY0?=
 =?utf-8?B?N3pYRWkySTZOamc5RGNpRDlpTDI1bXhKcE80Y2FmSXFNb1g1OFYyaFlVd1Ix?=
 =?utf-8?B?dXdGa0xYSHQ2OVBobER5bmIxbytKOS9iM3VHb2t4cnAzK2NhRG5yWUc2QlBv?=
 =?utf-8?B?SHpjZkdrUUVCS0JoYkZYUFg4U09MeFRSa0RZT2V3NTF3UFpMcXhTZGdwV25p?=
 =?utf-8?B?VDk0eDZXaFZrRHVjdlJucUVNYlN0WS91N1Y2QkY0U1gvdlRUMUlpcVFQR05X?=
 =?utf-8?B?WFc0dmNUR0R0Y2dKbTBBazFmbFR4NWZLbFBEa2VwL3V6bmMwaklQdmVCTmdN?=
 =?utf-8?B?aHNtNUhoYWRyVkZ2QnpEMUkyeFZpUmpJTVc0c2V3QlVjQU4zZWhhS25JNVdZ?=
 =?utf-8?B?RXBRYm1DOHRXVWVsZFlYOWxBNEg2Ymd3K3g0cnFzdnRTTjNYUUM3bDcwSVk3?=
 =?utf-8?B?Wm8waldlR29aUkNhQUIyMFZQVDJvb0dLZDJZbmxJNGJOdlFaQUlza2hOV0Zk?=
 =?utf-8?B?cGZuQURncXU2dWpmVEdlRWxmczhVNnVqaXA1V3ltOU54WDc5cGJpQTVyUjdH?=
 =?utf-8?B?ZGlPSXZuVzVsdjkzRS92MGNrNUpmVS9aRkZTTmdqWU5uNk1zY0doWW9mTFlk?=
 =?utf-8?B?clNZbXdMdm1NSmE1M1dySUQ5WlAzcFBKVU9wcnNTalBRN2pjN3EvUmErQjk1?=
 =?utf-8?B?cWJJaSs3bTNZdTFLMHg1VmlUVE1lMlBidjFnUFQ0RUNOdnZwNGZFU3VzYk0z?=
 =?utf-8?B?alBoMy9RM0VvU0tuN0lXeEFuTkFSMENmSU9KV2Z0RHkyblBJSzlwUU1wNVZM?=
 =?utf-8?B?MWQrbitpZjVpbVhScHQvdStjcElYSlB3V3RBbUFpUW4wU3BTdWF5aWp5cDJV?=
 =?utf-8?B?ZmZnOXlyTU1iQ2ZPY0ZMeHFhcGpRR1g4THNxejJXenVZUTNmcVNWWkRsMXpJ?=
 =?utf-8?B?Nmd2UUxhOGgvTDJmQkpOZXY0dEdESGxrYkMrQkphSUE0WnpQOUdSWjYwNkty?=
 =?utf-8?B?U21FSDhpMHJaeWtJWlJyc1RQTEQ4MGVicEZ5UG81TU5IZ1hPMm9SVDdmZmR2?=
 =?utf-8?B?RnIrWWcwVFB3YndDMy9YUERhcExkVzVjaTVpeVZnakg5M080Ty9ocGc1TGpE?=
 =?utf-8?Q?ikvWCVhlmi1shOX0KjgTYkM=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c4cd6cf-885a-4b9b-a5eb-08dbd571ecad
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2023 15:49:08.3228
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +dcqQJ0Nld30QceohlGXuMFKpElY35csz57pZYy6JAY2qVi89zbFpe9Duq5H4s+UY5A+CdDU42HCyXzkc/AW4Q7dDCwKk1VXD6khe3xq8Ll0vdk7hcHjZEIo0Uv0g5Ax
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB7716
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Oct 2023 15:49:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61485

Hi Trevor,

On 10/25/23 16:42, Trevor Woerner wrote:
> On Wed 2023-10-25 @ 04:22:17 PM, Quentin Schulz wrote:
>> Hi Trevor,
>>
>> On 10/25/23 15:56, Trevor Woerner via lists.yoctoproject.org wrote:
>>> Hi Anthony,
>>>
>>> Thanks for working on this.
>>>
>>> On Mon 2023-10-16 @ 09:43:45 PM, anthony.t.davies@gmail.com wrote:
>>>> From: Anthony Davies <anthony.t.davies@gmail.com>
>>>>
>>>> Add support for the Radxa Rock 3A
>>>> https://wiki.radxa.com/Rock3/3a
>>>>
>>>> The TF-A project does not currently have support for
>>>> the rk3568. Therefore, for the time-being, the only way to supply a
>>>> TPL/DDR-init for the rk3568 is to use the closed-source rkbin binaries
>>>> from Rockchip. If/when TF-A adds support for the rk3588 we can investigate
>>>> switching.
>>>>
>>>> recipes-bsp/rkbin/rockchip-rkbin_git.bb was modified to allow a machine
>>>> override to allow both rk3568 and rk3588s to use differnet binary blobs
>>>>
>>>> Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>
>>>> ---
>>>>    README                                  |  1 +
>>>>    conf/machine/include/rk3568.inc         | 17 +++++++++++++++++
>>>>    conf/machine/rock-3a.conf               | 12 ++++++++++++
>>>>    recipes-bsp/rkbin/rockchip-rkbin_git.bb | 16 +++++++++++++++-
>>>>    recipes-bsp/u-boot/u-boot%.bbappend     |  5 +++++
>>>>    5 files changed, 50 insertions(+), 1 deletion(-)
>>>>    create mode 100644 conf/machine/include/rk3568.inc
>>>>    create mode 100644 conf/machine/rock-3a.conf
>>>>
>>>> diff --git a/README b/README
>>>> index 8104474..3357b47 100644
>>>> --- a/README
>>>> +++ b/README
>>>> @@ -32,6 +32,7 @@ Status of supported boards:
>>>>    		nanopi-r4s
>>>>    		rock-5b
>>>>    		nanopi-r2s
>>>> +    rock-3a
>>>
>>> There's still an issue with indents/tabs.
>>>
>>>>    	builds:
>>>>    		marsboard-rk3066
>>>>    		radxarock
>>>> diff --git a/conf/machine/include/rk3568.inc b/conf/machine/include/rk3568.inc
>>>> new file mode 100644
>>>> index 0000000..5382b58
>>>> --- /dev/null
>>>> +++ b/conf/machine/include/rk3568.inc
>>>> @@ -0,0 +1,17 @@
>>>> +MACHINEOVERRIDES =. "rk3568:"
>>>> +DEFAULTTUNE ?= "cortexa55"
>>>> +
>>>> +require conf/machine/include/arm/armv8-2a/tune-cortexa55.inc
>>>> +require conf/machine/include/rockchip-defaults.inc
>>>> +require conf/machine/include/rockchip-wic.inc
>>>> +
>>>> +KBUILD_DEFCONFIG ?= "defconfig"
>>>> +KERNEL_FEATURES:append:rk3568 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
>>>> +KERNEL_CLASSES ??= "kernel-fitimage"
>>>> +KERNEL_IMAGETYPE ??= "fitImage"
>>>> +
>>>> +PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"
>>>> +PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
>>>> +
>>>> +UBOOT_SUFFIX ?= "itb"
>>>> +UBOOT_ENTRYPOINT ?= "0x06000000"
>>>> diff --git a/conf/machine/rock-3a.conf b/conf/machine/rock-3a.conf
>>>> new file mode 100644
>>>> index 0000000..2ed83a3
>>>> --- /dev/null
>>>> +++ b/conf/machine/rock-3a.conf
>>>> @@ -0,0 +1,12 @@
>>>> +#@TYPE: Machine
>>>> +#@NAME: Radxa Rock 3a
>>>> +#@DESCRIPTION: ROCK3 is a series of Rockchip RK3566/RK3568 based
>>>> +#SBC(Single Board Computer) and Compute Module by Radxa.
>>>> +#https://wiki.radxa.com/Rock3
>>>> +
>>>> +require conf/machine/include/rk3568.inc
>>>> +
>>>> +KERNEL_DEVICETREE = "rockchip/rk3568-rock-3a.dtb"
>>>> +MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
>>>> +
>>>> +UBOOT_MACHINE = "rock-3a-rk3568_defconfig"
>>>> diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
>>>> index 7fefb01..ad5593c 100644
>>>> --- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
>>>> +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
>>>> @@ -14,6 +14,7 @@ S = "${WORKDIR}/git"
>>>>    COMPATIBLE_MACHINE = ""
>>>>    COMPATIBLE_MACHINE:rk3588s = "rk3588s"
>>>> +COMPATIBLE_MACHINE:rk3568 = "rk3568"
>>>>    PACKAGE_ARCH = "${MACHINE_ARCH}"
>>>> @@ -25,7 +26,16 @@ do_install() {
>>>>    PACKAGES = "${PN}"
>>>>    ALLOW_EMPTY:${PN} = "1"
>>>> -do_deploy() {
>>>> +do_deploy:rk3568() {
>>>> +	# Prebuilt TF-A
>>>> +	install -m 644 ${S}/bin/rk35/rk3568_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3568.elf
>>>> +	# Prebuilt OPTEE-OS
>>>> +	install -m 644 ${S}/bin/rk35/rk3568_bl32_v*.bin ${DEPLOYDIR}/tee-rk3568.bin
>>>> +	# Prebuilt U-Boot TPL (DDR init)
>>>> +	install -m 644 ${S}/bin/rk35/rk3568_ddr_1560MHz_v1.18.bin ${DEPLOYDIR}/ddr-rk3568.bin
>>>> +}
>>>> +
>>>> +do_deploy:rk3588s() {
>>>>    	# Prebuilt TF-A
>>>>    	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
>>>>    	# Prebuilt OPTEE-OS
>>>> @@ -34,4 +44,8 @@ do_deploy() {
>>>>    	install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin ${DEPLOYDIR}/ddr-rk3588.bin
>>>>    }
>>>> +do_deploy() {
>>>> +  bbfatal "COMPATIBLE_MACHINE requires a corressponding do_deploy:<MACHINE>() override"
>>>> +}
>>>> +
>>>
>>> This is not related to adding support for rock3a.
>>>
>>
>> In a way it is, but would benefit in being in a different commit I agree.
>>
>> So basically Anthony's issue (if I remember correctly) was that if you're
>> not overriding the default do_deploy, the recipe will pass but install the
>> wrong files with the wrong names, without telling you.
>>
>> So instead, the thought was to make do_deploy fail by default (with bbfatal)
>> unless it is overridden (e.g. for rk3588s and rk3568) so that people adding
>> support for new SoCs don't wonder what's missing.
>>
>> I could see a commit with a diff like:
>> """
>> -do_deploy() {
>> +do_deploy:rk3588s() {
>>     	# Prebuilt TF-A
>>     	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf
>> ${DEPLOYDIR}/bl31-rk3588.elf
>>     	# Prebuilt OPTEE-OS
>> @@ -34,4 +44,8 @@ do_deploy() {
>>    	install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin
>> ${DEPLOYDIR}/ddr-rk3588.bin
>>    }
>>
>> +do_deploy() {
>> +  bbfatal "COMPATIBLE_MACHINE requires a corressponding
>> do_deploy:<MACHINE>() override"
>> +}
>> +
>> """
>>
>> with a proper explanation in the commit log, and then a commit that adds one
>> for rk3568.
> 
> ...and then another set for kirkstone, no doubt?
> 

I don't have a personal need for supporting anything else other than 
RK3588 on kirkstone, so I will not be pushing for it. Therefore, this is 
a decision for you to make as a maintainer if you actively want people 
to do it as part of follow-up of commits to master branch, do it 
yourself or wait for people to contribute backports to kirkstone 
whenever they need them.

Cheers,
Quentin

