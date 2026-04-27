Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C39FF8868
	for <webhook@archiver.kernel.org>; Mon, 27 Apr 2026 15:19:58 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.7])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.47529.1777303190850805689
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Apr 2026 08:19:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=N9IxeSLb;
 spf=pass (domain: cherry.de, ip: 52.101.70.7, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NAbSGjR3OiFCRJ4GEEveNp46l5OhCmSU88ROa+R2dYfaX29xsQ8hyIaQTTagfpWWUquF3GKOX27lfs6M/F2ohWtB/gkkTy2tUF9/TckaJnpRruLE9+ABLmE7lvP7oQ24iP9jfZuNNfEkw/Id7VBzen4Y33PGQ4GHm97nHCE0gtAQ2m8QqHzzTsJOcFoThs4Lrzz2X6hCPx4KkidFTV/+0y+79dhRNZWzpbumVFxaA6BNVMfGSWKU29BWgKBJzV5L+yhHypK2+bK8hJWMuH6+JNxRSfDzoVwUihzDJQXv2j1f4Je+8tF8pxcJshyHTAYRFMdzs36CnizqXWnRqRDNfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TKeISrlFQ9BuEGss7CiHZGnDWSXwgodOFoQRcGfdwJI=;
 b=JN1l6VT9OuDByYdz5twfqDEJXS8zi+hGLQbNhw9+SvOwPoqy+eftd1jtLv/FjOlhOy+LfCq6twUqS5G3tudJNegwqGJfd9V1xXWrUqggGa67T/fLVIbGaJjNL0Eg1G4GxKpqXS0LboUAXy0UD8szUTQP3dz8CZ6dJ0/PZYjHS0Q10v8TwY3ukkCr2OrumbR1+vVYFLm13fQWO++vYXVtCjYbS/4eGxLNcEfEu2rme7vsncTx9Aqw9s8oAcgZnNX7n2S4l9OUzhTSlBXy+um2CL1tAJjqWReTUsCsXPJ2LAGzWbjJCK4w73jMH1H7m9BlkU5j6N7C3NeTwagrbEyDPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TKeISrlFQ9BuEGss7CiHZGnDWSXwgodOFoQRcGfdwJI=;
 b=N9IxeSLbhMf/C5krJBDmJPJBpeLVBo/UFvkptinsRiJjBkprtyp1RZuaUmEbouiCEd1HbWMeNLmVIGz+sbmUSWnkE+z94u0oy44qDrssP2SBacqLGAOt8iDonbE2sC6cTIIROwONjjKOakh9ms2/eDyENYumQaCc3g/DkQMhZgg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from PA4PR04MB7743.eurprd04.prod.outlook.com (2603:10a6:102:b8::20)
 by PA1PR04MB11358.eurprd04.prod.outlook.com (2603:10a6:102:4ef::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.26; Mon, 27 Apr
 2026 15:19:46 +0000
Received: from PA4PR04MB7743.eurprd04.prod.outlook.com
 ([fe80::9a4e:252f:2fd:97b7]) by PA4PR04MB7743.eurprd04.prod.outlook.com
 ([fe80::9a4e:252f:2fd:97b7%6]) with mapi id 15.20.9846.016; Mon, 27 Apr 2026
 15:19:46 +0000
Message-ID: <c298357a-0421-48c9-b2c3-9e265e935efe@cherry.de>
Date: Mon, 27 Apr 2026 17:19:45 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Chance of success building "wrynose" core-image-minimal
 for Orange Pi 5 Pro?
To: yocto@lists.yoctoproject.org, rpjday@crashcourse.ca
References: <18AA3792B8B18612.2188217@lists.yoctoproject.org>
 <573d8b06-50e8-5da1-5f64-b9449cec8cbe@crashcourse.ca>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <573d8b06-50e8-5da1-5f64-b9449cec8cbe@crashcourse.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VE1PR03CA0026.eurprd03.prod.outlook.com
 (2603:10a6:803:118::15) To PA4PR04MB7743.eurprd04.prod.outlook.com
 (2603:10a6:102:b8::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB7743:EE_|PA1PR04MB11358:EE_
X-MS-Office365-Filtering-Correlation-Id: 9668f463-7e08-47d1-0bef-08dea4706ab2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|10070799003|376014|1800799024|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	NMMTWPfuQNNDc5notJfTnu7sEhdYNU3qsZ952FwweQp477dDxmHLQHa9xHbwD8Cf7HtxdPe17OBc9NeoKGdhczVzvBOeoDDmuX+GDA2UMtbCs9tfdl7UZC19YikPN+M7ipPKfQuLgvYwqsaj7V62id6kSGPU8Iyp7gQdZqhfBV9nzTdVX5q2Dx/C8jAiIlqRveEFtq9GD1430+9LGLAtiRjqmhS30lR7do1pJQJZPh6TGwGdLXv4qKUMnBxh98LEEKEWelXx1/HrXrDe7GvHHukao7BxdIzOljaIe1Tb6074Eus8cuBbI3B9ICM3I7DXd2P7IBiGH+A8gXSycnlEFRQATpVkqCmwkm1LXUaJohE9yeMHmn7mTb1XiqqFDxHK/AQdGEId5Sk3zGkRvCeLQNL8mCE/HdZCTH0UbXAYZtbgIIfvuN1FK/aweYc45sHIn61spBKkgUtHJeqGJOk9g7JDbDu/09ic2UDfV8qSYoD/HYsT46zbSc4Iaz40piNtkRXv09YdUmqV3V/mnqU8lk8EvNLQcHzyLZfY4tuZDuZUC2X94/Tz6kEFSPWuXYJVxTOhmCuMIgRXNDKVK7quB7kyfInZF/wbD4+aqgSwMW7FVp13Jpd4MQrb9BAApBpfdZxalRWYsfiuAX/FfOortQn09w+LsnwUSDwAG2cw73q8fZZnOH/S+WATp5CKiVOM2K+XEdAZYHyM88/78rhqFjrtv9nQdmj34DXyKaZ+4to=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB7743.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?a3c0cU5PZExhTkk0UU43REZhVk1rWGxnUVdwYzlnTTlWZktDb1hGYnM1N0or?=
 =?utf-8?B?cE1rL2ppQzFlM1hlY1ZjNFRBcU1mR1g0T0sxeDdJVitibmdIVkh2LzdMRFFF?=
 =?utf-8?B?T3R3dDFlTndOZFBsaFozbUl4ZW5ad0FoMjNPSEVDSVRCQkl5N3B3NkJGS0hs?=
 =?utf-8?B?UlJPK2Uva3J1cFV0WU8yT25PSld6eDZPM0REeDZFN21wQ3RiQUN1OW1FZnlD?=
 =?utf-8?B?UHI1Qzdpckp4b0tKUTYwSXpZZzl0YU5sV1Q0RXptMnUzdTVXWkFJT3l3M2ts?=
 =?utf-8?B?bGJBZVQ0Q0lSNXFhbWp3Vng0aEMvNTlBTEZMRzR2d3B1WnBTV08zY1hsS2cz?=
 =?utf-8?B?M0JHTWUxMmlWelRpYmt2R096ZkhNQi8yUjBxNjNTdEdMSUcrNm5YdTFyTmZS?=
 =?utf-8?B?Y0dXR0xsQ3FzQ3dtNnZlajZDU1AvTzdiNkVyUXhqa3FsRFRkR3lpSldYNDBs?=
 =?utf-8?B?WUtrL25mVW81UnlSVnlCRFoxN0JmYnFEbDQ3RnBab3VYTzVZblJyVE9sZFFQ?=
 =?utf-8?B?VFNrQ3puQ3YzNVBQK0VsRllwTlZvUE42dGVERW5seGVYRHovVlM0UEFVTHFt?=
 =?utf-8?B?NE5nMVpXUExrcEtSYU4xU1hzSmxFWnlwOGM1dlNaeDRLN3RLaDJka2U4NE9T?=
 =?utf-8?B?VUNMWExsWVJtVmVMdkhSY2VuVWVRNHdRZ1pKZXFYWkZwN3BlYWMrL1UreWdp?=
 =?utf-8?B?WEJIL2JBRGYrck1tSWZRK1NuQisyeHdBOXI3cnJwRGk3NHBoN0UyQ2tuTmNm?=
 =?utf-8?B?Q1AyRklOS25DUzFyTTBCSkgyL2lwa3NHNHZNMVBkYjY4VmJrbHNSZHFOUGFV?=
 =?utf-8?B?M2M0WHlTRkZIWEE1cHYySldvTWE4NUNVMHNFbHBBdEFPMU9jRlRJMTlHbVY0?=
 =?utf-8?B?U1ZWRzVMaEFtUkd5NWwzdUZZWGJBekFmeFVoSWdzMExqSTVhVmhhTUh4T25s?=
 =?utf-8?B?cmhjQVNySVFtOURaMTRqVzZuZ0kxNmV4S21jMFd5VnBndkFWMXl1RlN1aHNo?=
 =?utf-8?B?MkN1K2FXVW5UOWlBYURzaDc1MkZxaDIxcWVyalhNQzZpTTQ2V2JjNkZwZ3p0?=
 =?utf-8?B?NDRrRnJiWVNxdmgwbEswVmV5d0tIU1ZpbE1MS0dIR1VQdUNXcUw0c1N5OVJM?=
 =?utf-8?B?LzRUbkpQVTMzK2JuOTJ2TXFFTWF6Rk5JV1pvbTZBV1p0T2VQZGozZ3QrNVBz?=
 =?utf-8?B?dzFMOVZFSWVadGttN2R2ZEk1OHZrQWxiWVZWZzFoUVFGUTBWb3RvUE1hRVZJ?=
 =?utf-8?B?ZVBDNVEzV0dwQ05vaUh5WUt1WmZHd1Z4OFpMbEh0T2d1aHpuMkJQOWFMVUtn?=
 =?utf-8?B?K3pZOFZZUFRjL2JiL3hmeWF1aW5tbXdYZnlrclJNUnV0MjAwQno3eE9vSmpt?=
 =?utf-8?B?YUdnMjUvQnRseGo0N25NRCtFZjJPNUtJSDBqZy9ORFhLRG41SUc0WjVVdXNI?=
 =?utf-8?B?R0tCRmVzcnVtSFdCclc0a1M5SlE5elRld2xCbDd3S1J3VFRlR1NaUDAyMThz?=
 =?utf-8?B?UnFoV25KdHBJRmxYRDVCL0xQMnFMVWZldTY0UDhsbGw2RHR6STJaZDZXNjdt?=
 =?utf-8?B?RjB0WW5vTUh0WHVpVVJDdStZQ1pxc2c4SnRERHkyUGxLU3lZSy9YUjRqUlU2?=
 =?utf-8?B?N3d4WU9Yc2lkQU9nUlduWElIU0pLRzh6ckw1dlAyelFwc0FTWlMwTlEreWZz?=
 =?utf-8?B?NTcvbFdrVFp1S1YrV1BxbHBBd2lxUzNKRUd1VW5KdXRHU1pOUEJ2WGxrdzJs?=
 =?utf-8?B?cElvMy91MytTUk8xZVpQUzBXS2U5SWQxbHNrOTJyUk5wZWtsSmpSTzY5M3Fs?=
 =?utf-8?B?VFBwdFdZcnN4Z0s0SXBEM3Bjc2VIWmtnb3IwUzJCbWlTTHBwa2JCN09qdUNB?=
 =?utf-8?B?OU5OQjFXbkkycFZXVTM4VkZYancxU2xOdDdGL2tTNHVpOUpHL01reUV6NkdF?=
 =?utf-8?B?dlFDV1VXcTV2RXJEQ1I4SFpxQWFFVkRiRG9CVTZ4U3I5Y2NFZTJHMjJTa05I?=
 =?utf-8?B?UzR6R3hwYzZTOGdtNktwc3dxcTkwQXFrUVlaZnJuVWtDSHNsVDZqVVI5bzBt?=
 =?utf-8?B?K2Q5NWtqWTNkcm5LbG83NndpYVV6ZmVZV3hibzlCQU1PS09wWVN5N2lCOUFs?=
 =?utf-8?B?N2ZOM1picTE0enErVEtEZXZTQVZEN3Nma2hyMG9MR1J5SWFCRVNHZTl2Z0k1?=
 =?utf-8?B?QVE4dGZEd1A3cE5VZHlRbGduZ3dNVngzZ05sZkMwRmNyQUJVdlZtZHVFaXlM?=
 =?utf-8?B?UENPUWlHOEhjWDNuVXE0ZVduRHA0bG0vVUpYRHBIWDg2Y3J5NjdleTIzak9h?=
 =?utf-8?B?ZW1XVHBKQWdKalI1ck9wUVk3TGQreDYvKzV3Y1JHRm1MNFQ0WTc4akRrNE1o?=
 =?utf-8?Q?6F6pE70K/MLTKqr4EgcI5KouDAWCEC/xFUnsU?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 9668f463-7e08-47d1-0bef-08dea4706ab2
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB7743.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2026 15:19:46.7516
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fSKHe3h0xmTID2q84RldMOjy2aiU3i17ap3S+8z2qxRdRHCHHaMY7Vyc3qhACp/hSUqeHcTs0BVafwHJtHNjX5Uoi3wvKIJa8t2u+mKwvfU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB11358
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Apr 2026 15:19:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66448

Hi Robert,

On 4/27/26 5:06 PM, Robert P. J. Day via lists.yoctoproject.org wrote:
> On Mon, 27 Apr 2026, Robert P. J. Day wrote:
> 
>>
>>    Even though wrynose is not officially out, a colleague handed me an
>> Orange Pi 5 Pro ("Orange Pi 5 Pro 16GB LPDDR5 Rockchip RK3588S") and
>> asked me to see if I could configure and build a simple image using
>> layers that were as close to imminent wrynose as possible, so while
>> I've just started a build in another window, can I impose to see if
>> anyone can spot any flaws in what I'm doing, or perhaps say that just
>> isn't going to work?
>>
>>    First, the repos I'm using:
>>
>>    - bitbake: branch "2.18"
>>    - openembedded-core: branch "wrynose"
>>    - meta-rockchip: branch "wrynose"
>>    - meta-arm: branch "master" (no wrynose branch)
>>
>> Relevant part of local.conf (as I don't see a machine file for the
>> Pro, I'm using the one for the Plus):
>>
>>    MACHINE = "orangepi-5-plus"
>>    DISTRO = "nodistro"
>>
>> That's pretty much it -- all the fetching succeeded and my laptop is
>> chugging away building "virtual/kernel" before I move on to building
>> the remaining pieces and the final image. Is this at least a
>> reasonable first attempt to get a simple bootable image?
> 
>    Well, that wasn't as tricky as I thought. First observation was that
> trying to run a Plus image on a Pro was not the way to go -- got these
> boot errors after which the boot hung:
> 
> [   12.397294] fan53555-regulator 1-0042: FAN53555 Option[0] Rev[0] Detected!
> [   12.397957] fan53555-regulator 1-0042: Chip ID 0 not supported!
> [   12.398511] fan53555-regulator 1-0042: error -EINVAL: Failed to setup device!
> [   12.399372] fan53555-regulator 1-0042: probe with driver fan53555-regulator failed with error -22
> 
> so based on some online pointers, I defined a "generic" Orange Pi 5
> machine (for which all the underlying RK3588S content was already
> mostly there), built for that new machine, and got a successful boot.
> Just means I'm not including any Pro-specific features (yet), but all
> I wanted was a bootable image.
> 

The Orange Pi 5 Pro is supported neither by the Linux kernel, nor by 
U-Boot (and thus, nor by meta-rockchip). There are some patches on the 
mailing list: 
https://lore.kernel.org/linux-rockchip/20260425031011.2529364-1-dennis@ausil.us/. 
Feel free to review and/or test patches there. We typically refuse 
non-upstream DTS for Rockchip boards in U-Boot so you'll have to wait 
for those patches to make it to a release of the Linux kernel first, and 
then it appears in 
https://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git/ 
and then we can sync in U-Boot and have a defconfig for this board. Once 
that's done and there's a release for U-Boot, then we can support it in 
meta-rockchip.

Cheers,
Quentin

