Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C700AC07545
	for <webhook@archiver.kernel.org>; Wed, 25 Oct 2023 14:22:28 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.41])
 by mx.groups.io with SMTP id smtpd.web10.174709.1698243742058646158
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Oct 2023 07:22:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=LBQTaUF/;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.15.41, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BfzzoeZrdpOxwBxdtUpCy7NNfwsc0HDEIiuWWKasAVzKQrmnkBqfwHN8De8drAKL1O8pe3r0+k/YJeoSvUHYElRUyWbVrZBtr6uKQkqsC0KsAVm6zsRIE1XgVXu8hgcEVqbghOqxxeDzzeAK5erCIGcFn9DY5zvI0EE57qI/Gudzg1FOVf3+EVVWsa+thKHEYIMR6I9NzRoaVOWD1uTmR71ma1JgKS6J+GjTeVAuaRHB9gGg/WLJz+voNTd+02/IxB5Db9XRr+iejblPLL4xjN1VjweqZIa7RGlcRsEnuJwtZvDnX+Ka1W+MbWii9sA728fy9Lu57Rv9Yfrk9ogM/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0gENwzXBG8PiIxj8aw64ktqMjCuISwWt/RC0e/mc0Co=;
 b=Tj9jLE9hKgIKnxfvknr1bONVdtDZQXNwgCntPiaIDbM2U4wuWysE0zOM+ZJqL9jXW5wTmqZBeFmypzHd0gJrCQQKWc4WIF6X8e53iaVHYRdi8XkU8M59OUdLfgUBJwfmXdv0hwfml4CzA4ZqJgKDN3QHZkkuf5D7EruGjQnuS02yNPRIvxQ49md8yAfy1YvOTJju0M4pDUm07/wYhr7Id/u3oGpTsFc7wxkio1JtlY7viBTJF9GCWS9/S9ouEqRsYNHzexAzfZ1vAksvHr5Fq9DQsjsgN26AN76+Xv0Uf1STFp0A/FY02FYORS0VTEHyDxMU/hiEdx0IGwzCMu9SaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0gENwzXBG8PiIxj8aw64ktqMjCuISwWt/RC0e/mc0Co=;
 b=LBQTaUF/ZbcZrf0Bdgn57V7Yfk6nA7CWGol5U8+yrN1kDNz7PpO8O5kb4QzkCq3/RZ29uI0uMEJrcOReWsQ9mdErFbraxY6W6tkHGjybnOYf1MEGnFKDt47wAmgwkhaNtZV/SPCKGvg1hHIF0azSxzLYkWrbJNSyiRBZttUlrMmTQfCM2+ZDAb44uXGBHmD3yR2ew1/GD2n5gilCTghyhmVi/OvqIKXF5NEYYMxNaY69rSoqoeb5NqKMphqO+IwdB9hrJ/WkrSeI3i/lvSateAz5eR3xqf/w4rlMadk6+CGFTFt4gkmHfiYzYOBWpSHdmIZqgA44kbNGQzcvYvaynw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DU2PR04MB8597.eurprd04.prod.outlook.com (2603:10a6:10:2d8::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.19; Wed, 25 Oct
 2023 14:22:18 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::8b7:c8b9:d800:8b4d]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::8b7:c8b9:d800:8b4d%3]) with mapi id 15.20.6933.014; Wed, 25 Oct 2023
 14:22:18 +0000
Message-ID: <3d69f40b-e05d-4d2b-a68d-da2abfa462c8@theobroma-systems.com>
Date: Wed, 25 Oct 2023 16:22:17 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip] [PATCH v3] rock-3a add
Content-Language: en-US
To: twoerner@gmail.com, anthony.t.davies@gmail.com
Cc: yocto@lists.yoctoproject.org
References: <20231016104344.401706-1-anthony.t.davies@gmail.com>
 <20231025135616.GA9837@localhost>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20231025135616.GA9837@localhost>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: VI1PR0902CA0027.eurprd09.prod.outlook.com
 (2603:10a6:802:1::16) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DU2PR04MB8597:EE_
X-MS-Office365-Filtering-Correlation-Id: b73ebf6b-43a1-4035-5680-08dbd565cb59
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	eaCQMor6MorSmIar5SsyzAV4Rp6ntex1Vq/fd1OWa0+2b4jDlwVm0yrRf8UxImr6Ez3cQxn26FDUinIEaWsgTfo/Xkm0pIMzM6dWwsYad6oarrw/f4vrzx197daAk/+Z+k0MmfgRJ8JdZKISb9yTZgrHSngzTGam2tKlaSNCXMPMAvXWvmlQQeSeRHPbKTVtPHVhY53DAeaB7G8aVRBfz4J6DPdC0VtNV2MGrsHWuH8dPWz6bp/T8Q4oy6srEuMIkYdssGeaeioR0tV4N7zwDHi6GCkPBrCta7ttw/NnJvc5IQ+q316BwTqrlq3a82mhN2Pyn/agAxuyLpMxx+dxcaZ5s3V+R85UFZchaY8Em+iSraxKlVCv89TQiKi+fp/IbPj4yAakwdBk5Ivir2r9kd+GVuw7PhaAYiPbZHXjCRdBDyQDCgqjBxA+byxSIQyz/SYY9tUIDiU9NSI5R/UtwFRz9X11bRQ5JEipdfOlcl8YORzZAVNomPZnXQZxZBBEmd5W48yYTLd0e7Qe1zvExt2BdezpvvJIOAYRH4op3K/LSzhXwfftB07dN0L6cEA6W2Y7eqFZCq9/IcDpiaM2fUYNi1Hzqj6a+N2tuabs0GL9EdanKluAsfUlFs1MfZVPvP+T0cbL1i7D3of3LtIa2Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(346002)(136003)(366004)(376002)(39840400004)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(66476007)(66946007)(66556008)(316002)(38100700002)(478600001)(966005)(6486002)(31686004)(44832011)(41300700001)(86362001)(8676002)(8936002)(4326008)(45080400002)(6512007)(53546011)(6506007)(31696002)(36756003)(5660300002)(2616005)(4001150100001)(2906002)(66899024)(83380400001)(26005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Qks2aWY3Sy9QWitPeWxUYVRzOTlnbW9tNTYyUW82eWg3YVBTTnhZSG5DS0Iw?=
 =?utf-8?B?aEVUaXQwMnFhMDJHditCb3QrbnU1cUhpVDVDMll5MHF1aTBLbzRMTldKTFp3?=
 =?utf-8?B?blFmTUNSTVF3MTBJRDBXY3BqYmp3UHBFOUFDWnF5Y0pHbzlHenR0aTFQMldw?=
 =?utf-8?B?c1FjeHFNa0I4WGFvZzhDeXVGaENQR3hlZlo3L0YzS3pBTjRVb2ZBZ0o1T3FJ?=
 =?utf-8?B?SXYxenJrbkVOY0ZHSjR0dU5sbjVDU3FHR2VFaktEWUxFa1VSWjJQMTZlZzdw?=
 =?utf-8?B?V3pPK1pEdE8vaUlqalNZNEhvT2ZiN1h3cEplZnZWK2RCK242aFUzOVozOFFh?=
 =?utf-8?B?MG9PRmwvZDdPV0ZzZ3RRVnVSQWNWMTVBSlJHdWh5aFRoRTg2V29kaEdLNWJK?=
 =?utf-8?B?ZVNXeS9lMEFmUXZBdGRGU3c3Nkh6RWFiOWx6ZzIxSUt2Rk1jN1JtT0x2alkv?=
 =?utf-8?B?eVAyRHluWjhiQ2FJUEtQaWQ4MUdVaXVYWkFhTnVSc1I5RkdmOTFZd2s4U0tP?=
 =?utf-8?B?dlF1dUw2SGszK3p1NjF2RmsyTU5BTzhiSEJSeUdzdnlFdzV2SEUrT2wzL0Ew?=
 =?utf-8?B?WnBvcVlmalJNQVBxVDJFOGRCbVRoR01TVkRvUlpKUmxaZEhOVDFqU1h3UjRY?=
 =?utf-8?B?akZHNEoxT1plOWFGKzJUVExCUjVOKytuMGhUOG9DMERsTjhYS3gwTWpOdlBz?=
 =?utf-8?B?Q2kxcmpNKy8zOGRIazcvREMwM3NQUnVSR3BsKzRrNlh3YWVlc3ZRb2pGaWVa?=
 =?utf-8?B?Z09XUytMMG91dThSd1VFQlhHUHc2WEJBeTE5MUtrNkNwKzJiL2pXYWhMb1NR?=
 =?utf-8?B?aHZJTFA5RGZJdWdUc3lIOFdsSW1YZzZkOEI2dmVnZEJTTk96Ky93aFd5VEMr?=
 =?utf-8?B?SklrbWlrV3orakJxM1ZObms0SFp5b0NTckFTZVZLTG1UOGhsRjFYY3F6dUhv?=
 =?utf-8?B?dEZXUFQyZ3o2VXdsclFkWXc2Y05tcXRsUEhCaHRxWC9IZ05iRjFLV0RBWEdR?=
 =?utf-8?B?aUtmZ1dGVFYweXlVa3Z2MmZ0bTJucytyRkZvRm5kMTFYNEczN3JiQWpxa29D?=
 =?utf-8?B?Zi9oaHM5NEJtTktzMUprN2h3S0U3ZytCRnBrRU9Rb212eDRESHlXM2FUdzJG?=
 =?utf-8?B?NU5OVDdWK0tITmJPdnE1VVdnLzQrSXZ0bGk2YnJldzFqenc1dFpUR3FvRjRs?=
 =?utf-8?B?RWtXYVlzVEpBcmNtMmQvc1pBMTNMellUVXAxUkl1MFJkYXJQS1pmNXd3N1dZ?=
 =?utf-8?B?YVNId2lFQ3B0bWZ3OGVuaXZGZGxVdlh4WVYvbS95NndrSHMxcXRHbldWUFFU?=
 =?utf-8?B?WXZ1ZVJ5RjN4eTYxUUplSnQvK291bEVGcHlucElneC9mTFRMa2lQY0IzS1dV?=
 =?utf-8?B?YitJN3VlbEFmVmdiSTlZVUh3b1B0MkVCL2xMdTNiTlh6Wi96bHZHc3MrVkcv?=
 =?utf-8?B?amJDM0tJRnQ1dFBzc09TYTZpVUZ1azBKaUhzNmk1ZTlQOUZCSzY0d0NtUjBs?=
 =?utf-8?B?RFVKYjFqWWxxQ3k5UWZONFEvMGZFcStOdVpISXhJY00zYUZIR1VybURRNkhF?=
 =?utf-8?B?Y3Fjc1RkKzhOcGhqOUJ5Z2JERCtqWHFhUDQzK3RnTGYrU25xeHFxYmRadnhB?=
 =?utf-8?B?VU9iY1Z1dDZvTHZpK0xtRkhydkw1L2VhY0dhVWQ1MUFHTHVESHMxYXE3TC9I?=
 =?utf-8?B?bzQ3eUtIOTJzZjlTRk1qbTRHZzNMMkZKLzZHNm0zQjRmVjlRNURZdDhJYkFl?=
 =?utf-8?B?a2xuSHdGQVlDOHFTNi9hVk8ydkNLTzAyREE5eUhtZ2xxUEtqdXpxYnRzY0NS?=
 =?utf-8?B?SlBSeW9rb2pNTEV6OXBaYTMzeW1OWmRWZEc4TW53WU04VkZkR1pUcHRQSTBq?=
 =?utf-8?B?T2dVNllNOTBXeTN2ZnFta3NySDJ4ZU5rMkp2QlU0eGVkLzh1K2FieHRjYWRp?=
 =?utf-8?B?QWlxNmhwa0wrcysxcEFRZGUwU1hERmZlYlZ6c1JyZkRDdnZUTDZPVm9SeEtW?=
 =?utf-8?B?RklzVUF5ZjdQY1ZHY0FmRkx3QlRLZEdtTVhrWktuSVVOVUdNeUNBQUVqaGtu?=
 =?utf-8?B?UHQ5RlhqdllOTWNSUTM4aE8zMTdBYTJQWWVtRmpid0NyeTlrRmdvcFpDRWs4?=
 =?utf-8?B?cHM2amxuVDdDZnRkODRxNEpHaFBqQjZhcWt5eVg0RGUzeXpjbThqZStuRzcw?=
 =?utf-8?Q?2BH3ojyms1gmCpy4Rk5D7BQ=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b73ebf6b-43a1-4035-5680-08dbd565cb59
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2023 14:22:18.4809
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aamiY+RM3WVX0GU6IjFL2W/fXRl7X9wXwRm2kubixJSYPuQAW7/5O08f3ssi+bGc97ljI74pEZpkBPwTe4ojap2THsvVsNj/deU/buCjTa7q40DJmBYSZKrF3LcKEedm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8597
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Oct 2023 14:22:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61482

Hi Trevor,

On 10/25/23 15:56, Trevor Woerner via lists.yoctoproject.org wrote:
> Hi Anthony,
> 
> Thanks for working on this.
> 
> On Mon 2023-10-16 @ 09:43:45 PM, anthony.t.davies@gmail.com wrote:
>> From: Anthony Davies <anthony.t.davies@gmail.com>
>>
>> Add support for the Radxa Rock 3A
>> https://wiki.radxa.com/Rock3/3a
>>
>> The TF-A project does not currently have support for
>> the rk3568. Therefore, for the time-being, the only way to supply a
>> TPL/DDR-init for the rk3568 is to use the closed-source rkbin binaries
>> from Rockchip. If/when TF-A adds support for the rk3588 we can investigate
>> switching.
>>
>> recipes-bsp/rkbin/rockchip-rkbin_git.bb was modified to allow a machine
>> override to allow both rk3568 and rk3588s to use differnet binary blobs
>>
>> Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>
>> ---
>>   README                                  |  1 +
>>   conf/machine/include/rk3568.inc         | 17 +++++++++++++++++
>>   conf/machine/rock-3a.conf               | 12 ++++++++++++
>>   recipes-bsp/rkbin/rockchip-rkbin_git.bb | 16 +++++++++++++++-
>>   recipes-bsp/u-boot/u-boot%.bbappend     |  5 +++++
>>   5 files changed, 50 insertions(+), 1 deletion(-)
>>   create mode 100644 conf/machine/include/rk3568.inc
>>   create mode 100644 conf/machine/rock-3a.conf
>>
>> diff --git a/README b/README
>> index 8104474..3357b47 100644
>> --- a/README
>> +++ b/README
>> @@ -32,6 +32,7 @@ Status of supported boards:
>>   		nanopi-r4s
>>   		rock-5b
>>   		nanopi-r2s
>> +    rock-3a
> 
> There's still an issue with indents/tabs.
> 
>>   	builds:
>>   		marsboard-rk3066
>>   		radxarock
>> diff --git a/conf/machine/include/rk3568.inc b/conf/machine/include/rk3568.inc
>> new file mode 100644
>> index 0000000..5382b58
>> --- /dev/null
>> +++ b/conf/machine/include/rk3568.inc
>> @@ -0,0 +1,17 @@
>> +MACHINEOVERRIDES =. "rk3568:"
>> +DEFAULTTUNE ?= "cortexa55"
>> +
>> +require conf/machine/include/arm/armv8-2a/tune-cortexa55.inc
>> +require conf/machine/include/rockchip-defaults.inc
>> +require conf/machine/include/rockchip-wic.inc
>> +
>> +KBUILD_DEFCONFIG ?= "defconfig"
>> +KERNEL_FEATURES:append:rk3568 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
>> +KERNEL_CLASSES ??= "kernel-fitimage"
>> +KERNEL_IMAGETYPE ??= "fitImage"
>> +
>> +PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"
>> +PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
>> +
>> +UBOOT_SUFFIX ?= "itb"
>> +UBOOT_ENTRYPOINT ?= "0x06000000"
>> diff --git a/conf/machine/rock-3a.conf b/conf/machine/rock-3a.conf
>> new file mode 100644
>> index 0000000..2ed83a3
>> --- /dev/null
>> +++ b/conf/machine/rock-3a.conf
>> @@ -0,0 +1,12 @@
>> +#@TYPE: Machine
>> +#@NAME: Radxa Rock 3a
>> +#@DESCRIPTION: ROCK3 is a series of Rockchip RK3566/RK3568 based
>> +#SBC(Single Board Computer) and Compute Module by Radxa.
>> +#https://wiki.radxa.com/Rock3
>> +
>> +require conf/machine/include/rk3568.inc
>> +
>> +KERNEL_DEVICETREE = "rockchip/rk3568-rock-3a.dtb"
>> +MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
>> +
>> +UBOOT_MACHINE = "rock-3a-rk3568_defconfig"
>> diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
>> index 7fefb01..ad5593c 100644
>> --- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
>> +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
>> @@ -14,6 +14,7 @@ S = "${WORKDIR}/git"
>>   
>>   COMPATIBLE_MACHINE = ""
>>   COMPATIBLE_MACHINE:rk3588s = "rk3588s"
>> +COMPATIBLE_MACHINE:rk3568 = "rk3568"
>>   
>>   PACKAGE_ARCH = "${MACHINE_ARCH}"
>>   
>> @@ -25,7 +26,16 @@ do_install() {
>>   PACKAGES = "${PN}"
>>   ALLOW_EMPTY:${PN} = "1"
>>   
>> -do_deploy() {
>> +do_deploy:rk3568() {
>> +	# Prebuilt TF-A
>> +	install -m 644 ${S}/bin/rk35/rk3568_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3568.elf
>> +	# Prebuilt OPTEE-OS
>> +	install -m 644 ${S}/bin/rk35/rk3568_bl32_v*.bin ${DEPLOYDIR}/tee-rk3568.bin
>> +	# Prebuilt U-Boot TPL (DDR init)
>> +	install -m 644 ${S}/bin/rk35/rk3568_ddr_1560MHz_v1.18.bin ${DEPLOYDIR}/ddr-rk3568.bin
>> +}
>> +
>> +do_deploy:rk3588s() {
>>   	# Prebuilt TF-A
>>   	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
>>   	# Prebuilt OPTEE-OS
>> @@ -34,4 +44,8 @@ do_deploy() {
>>   	install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin ${DEPLOYDIR}/ddr-rk3588.bin
>>   }
>>   
>> +do_deploy() {
>> +  bbfatal "COMPATIBLE_MACHINE requires a corressponding do_deploy:<MACHINE>() override"
>> +}
>> +
> 
> This is not related to adding support for rock3a.
> 

In a way it is, but would benefit in being in a different commit I agree.

So basically Anthony's issue (if I remember correctly) was that if 
you're not overriding the default do_deploy, the recipe will pass but 
install the wrong files with the wrong names, without telling you.

So instead, the thought was to make do_deploy fail by default (with 
bbfatal) unless it is overridden (e.g. for rk3588s and rk3568) so that 
people adding support for new SoCs don't wonder what's missing.

I could see a commit with a diff like:
"""
-do_deploy() {
+do_deploy:rk3588s() {
    	# Prebuilt TF-A
    	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf 
${DEPLOYDIR}/bl31-rk3588.elf
    	# Prebuilt OPTEE-OS
@@ -34,4 +44,8 @@ do_deploy() {
   	install -m 644 
${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin 
${DEPLOYDIR}/ddr-rk3588.bin
   }

+do_deploy() {
+  bbfatal "COMPATIBLE_MACHINE requires a corressponding 
do_deploy:<MACHINE>() override"
+}
+
"""

with a proper explanation in the commit log, and then a commit that adds 
one for rk3568.

Cheers,
Quentin

>>   addtask deploy after do_install
>> diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
>> index e79c471..66c81da 100644
>> --- a/recipes-bsp/u-boot/u-boot%.bbappend
>> +++ b/recipes-bsp/u-boot/u-boot%.bbappend
>> @@ -9,12 +9,17 @@ EXTRA_OEMAKE:append:rk3588s = " \
>>   	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
>>   	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
>>   	"
>> +EXTRA_OEMAKE:append:rk3568 = " \
>> +	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3568.elf \
>> +	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3568.bin \
>> +	"
>>   
>>   INIT_FIRMWARE_DEPENDS ??= ""
>>   INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
>>   INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
>>   INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
>>   INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
>> +INIT_FIRMWARE_DEPENDS:rk3568 = " rockchip-rkbin:do_deploy"
>>   do_compile[depends] .= "${INIT_FIRMWARE_DEPENDS}"
>>   
>>   do_compile:append:rock2-square () {
>> -- 
>> 2.34.1
>>
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#61481): https://lists.yoctoproject.org/g/yocto/message/61481
>> Mute This Topic: https://lists.yoctoproject.org/mt/101992957/6293953
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [quentin.schulz@theobroma-systems.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>

