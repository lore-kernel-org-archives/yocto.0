Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B5F5C0218A
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 15:03:01 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.40])
 by mx.groups.io with SMTP id smtpd.web10.53565.1737990170226948939
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 07:02:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=Qws3FIsM;
 spf=pass (domain: cherry.de, ip: 52.101.70.40, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HdfIboyT6hCWBnqM5s2KM1o7lFL69CIzL9GhzT5QYie7Hlq1z9pxmDIyRqu3pEGtKbHEFS/r42sa0xqoyji9YR7bi4/71yuomhBVO1nRrfRDyRFnVyEWVLl0AVOO7x2EPGWESz+l//b8LxlITOtiy+7x7YsPQADGJ/+ZzhegrpNX8AbrVLGuwjJjoCFhbDAPdcOxVf7Rj1cCXYVFJCpb7BvzKG7UAzgaA6lbBVEgo9Q7HQ0b8wQfGzVCe24NPuYoeAnqaL6lW4LpPgvpKn5WRQjUW8aeiMuVBiNFQQfQBqTEOVW19kX2rjEDSKPFE8qp1mGB7L3cE7TRHunzFzg1PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zzhmfEFxkejpIa9mJiD7uNWdCjNpzhcDnDGKH0qk64U=;
 b=JbuJNAUnpce1SkeOkBarApCZ+Y5kx3mB8q2++GTYpShLS6Fis/5miw9l13FBAQ4ObfojDe8Q+Oj+lE3CvcE8fLdf2ul2QgLVCgkuoNdtMtgyiSvsdzHeH0Nvzx+FyMkacKxoFCkrGw3588xZU4Z8BAc1TIGw/sswKdCZ7Fb0BJPW2Tlkss8eTyc2zIReky7FHvAKIHYXRnVb9rRqLp0gq7EUHjxR6HakpDS/F7sUNaS9hq6OZgGZHTd87yBD4PBh4lBrP6jjIWfAp53xZwm6Z3WpTe7Id1UzryeZx5aSkCp7rmZ6xm6I5z+39ZxXvXungMi6WOoVBEvqdbctCwNd7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zzhmfEFxkejpIa9mJiD7uNWdCjNpzhcDnDGKH0qk64U=;
 b=Qws3FIsMzzirvX1GxHqAUvWRvwCMYtSaeW9vwC/eW7FuMVKfGsbIG/OdQb4F5R3VgGDscTVBolmTYuRoWU9nB4vdOsGCn5O7TrMGWgV4fPwxO0H6eGrBU9w63xKgrKV4gHzgwOG2LJCkp8++XOmcembQ+ReoAWiOlUPq0Tp0XV4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PA3PR04MB11225.eurprd04.prod.outlook.com (2603:10a6:102:4b1::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.21; Mon, 27 Jan
 2025 15:02:46 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%3]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 15:02:46 +0000
Message-ID: <b9caa6eb-7244-4872-988e-c90f21fb5675@cherry.de>
Date: Mon, 27 Jan 2025 16:02:45 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] kernel append file with dts in SRC_URI and subdir
To: yocto@lists.yoctoproject.org, david.daniel@vrag.ch
References: <6761dc4a56d319b617e61e18fb37df8e6c5e227b.camel@vrag.ch>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <6761dc4a56d319b617e61e18fb37df8e6c5e227b.camel@vrag.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0169.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:99::10) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PA3PR04MB11225:EE_
X-MS-Office365-Filtering-Correlation-Id: 0850eb89-1f63-4133-1895-08dd3ee3a841
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SDkxdHNhd3Z6blYvQW5rODRxY3Y1d0tXZ1VYblBXNGVweG1tUjVrd21oNmh5?=
 =?utf-8?B?ZXFWY1IxR0NON0cra1pKRTFNME45bTFBVnJ1YkpNbEx3NWMzcHRCOHFYdFZh?=
 =?utf-8?B?V0c0NUV5emtKNmNlWUVEMlFhOXYzTldmSmJ1cmcvaFhaTFpmNVpnVlhiUzZL?=
 =?utf-8?B?eHJmT25rR0ZxOGdETXNWRkhaSnJ3RTl4Tkx6RUs5T1VkQmhhc3FJcTFuVXBF?=
 =?utf-8?B?cWVFYXNvUXNwZ2tUV2RxVDFXWnU1ckxUdVhvOWlUaExqTmJTSTVoY3NhMUc4?=
 =?utf-8?B?TVpDY0lQV3NnUERFSUdPZTVHenYrWWg3dGQzSEpSd1h5Tng1ZzZzdnJOSU5m?=
 =?utf-8?B?KzBwbUMzK3dlMUprY21MOWdHMWxpbXdjdXJpUVV3SzRPTUJIa1pSVFcvbFJi?=
 =?utf-8?B?YWJSUnZNcTF6RUdtNVpQV3FzeThuMmVoSUYvZ3N2ZGZic1VRV2pwOFcvOEJN?=
 =?utf-8?B?MitXZGc3UElYN05CK2lEeVRpemFkVG94aVdlWVhTMCs1UDBuOHRGL1BVN05M?=
 =?utf-8?B?MVlwcmwyVUNpelRPTll0ZU9mQjBtYjhEK1FQczdlSUc0bWxVN3N0Mk43YVJw?=
 =?utf-8?B?eUNMMUp6T1RienVxZjArNkVqeVZFT016TXhYOVRkT1poSGZZUHJnQUlXVC9h?=
 =?utf-8?B?U3c3MW80VWVEODZyK0xHV2VRQWZSZ3h5emhhTFVnWUVWem0wRy9DTnRhVVJh?=
 =?utf-8?B?UGUwV2tXci9zTHhVbDRHVXVkUlJHd3p0Q25HdTdPd2FOVkpIYmJjVlkvaUZt?=
 =?utf-8?B?M0NwMnJwazZDdDBpUnFzYVZML0VITmpsVjFydGs3bHdja0VWbU9aR0FxZTl0?=
 =?utf-8?B?UlBYYi9PTk11UFFpaGpWdDNjMGpkMjlQemIwNjNLeEczTE40UUQ0WG9MNkJM?=
 =?utf-8?B?QTEwajh3d1BMR3pjL3pPYXptWXVLdDJsSGljVVNoYXl2RHZmczIydTNLMERr?=
 =?utf-8?B?MUNWUlFVZ2NIZStOQU5ZT3hnWkdpRVJNNzl2SjFYZUo1OGtGZnJZVm1EeFUv?=
 =?utf-8?B?NzM1NFh1UUdVQWtRdXAyZWZpOXRtREVXVlo3RXo2UU51UHZjRXEvajJZOUJv?=
 =?utf-8?B?U2NmWGhyVnlYVE16c0gwdFVRV1hESEZaMnQzVzd1OFNuN3dGOExKYk1aVGta?=
 =?utf-8?B?Ykd6bmkvNUUxa0ZycUQvSm5Yb0dsNmoxMEtTbEs0RGVjK0Ribk0xSDNFKy94?=
 =?utf-8?B?YXZVK1FpOWpVV0dyT2JWbVFaUldtdm5VRjNvL25vUVJJcSsxRVRZQ2t6QXZC?=
 =?utf-8?B?T3Yydnc0WW4zb3QrQ1NneFRsaGhrbkdZNVRLbHpOVmY4eE1TQkN1VFZ5VzdV?=
 =?utf-8?B?OHpHZjVLcVJBZk5PUVFlZWVXeXI1WkdHazlvMzZjRDZkNmhCM1pDNit4ZVUv?=
 =?utf-8?B?ZjRNeHJTV01URFNSMjhLb2RSaEhmOVhHaENFa0hCVEJzT1NyOHhEMWdoa0wx?=
 =?utf-8?B?ZHlBbzJjZE1jUjRSbkd6TWkvaWFSUHJES0FKREtTNnlDbXUxNGtra1Bmc0V0?=
 =?utf-8?B?MlRmeWk1eTJwcmlEd3JnbTFWQ2hDelhtT3lRQ2crTm9uZisydHZtL0swMjVT?=
 =?utf-8?B?RGlJYVRJYVdTTXJHL0lvNHdQeWlJblJtdFBiUEZNZHNMNWI1QWJWSmUrL1Vz?=
 =?utf-8?B?TjhLanBHbmc1T2xsNHZiU0Zab09lOCtmQlNHYnZ5TzN1U2szSVI2bGhIWXBJ?=
 =?utf-8?B?ZTRVMXQydnVMbHFyS2Q1Q1U1S2pqbmt2S3VkRnErSmVXanFUaktQUGFXSDgz?=
 =?utf-8?B?ekpjS09aNzlleGp1MmxWQ3VGbUMxUzA0UU1MK1ZtSHoyTVlsZEpYdml2MHJD?=
 =?utf-8?B?d1BxU0dBZjFMeDMreTV0UT09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QzIzNTEvdVlZclZMTXN1RWtVS3N4M013dCtSK3JDN1dOcTRlNnAzRWhKdUE3?=
 =?utf-8?B?bUZ0RHM5eUZkaGZWb1l1Zm5hTlE0OGM4QWRURlUrRi96VEpaVlJOYm5nby9j?=
 =?utf-8?B?YXRxN2xCZXIzUEpmbWZCYTNtNXBPWCtTUndvaTBVTDdLUlBkRmY4ZFFJZnR3?=
 =?utf-8?B?Lzk5eFNybHBmRTBCb1o2YVpWbUhOODcvbUZBM0tJRjI5cXBNZjFYYURHMXZL?=
 =?utf-8?B?eXV0aGpUeURkYTFpZ2VSc3pwYkkxaHVSMWh5aEozQnBMY1ZmaE5mQWZBblBY?=
 =?utf-8?B?ajNsZW1xbkpTVDd4dVpFbERaZnF2ZjVHR2MrY0VkOHlVZlVtYnl6QkYwRXN0?=
 =?utf-8?B?U3VtaG96eDg4VDZYaHkxL3VqNTdyRy9vY2l0OEo5elZjUWlLOWJUUldzVHk3?=
 =?utf-8?B?REhrY09jUlFzREJhdFpiK28yN29mSjVkZUtyN09YV1M2MUd6RkdtNmVBam8w?=
 =?utf-8?B?UHlpamwxWkZRSjI2WHBMZ0Rmd2pwNGxPOWNYOEVPTlkyWkl2Vlhmdkt1R2Yv?=
 =?utf-8?B?NDgraVZnbWF3Vld1QkFrSlRjUmhsQXAydEZVNU96bm44UW5ORnNhVzFZK3ZZ?=
 =?utf-8?B?cmhKbTBlMjR3R3FxSUhPa0dpVFlmNnh1SmZEeURpWVpuczJ0RWJQU083OVQ1?=
 =?utf-8?B?emo1bnlYakNuVGhIUkZ5VHpYZC9WcURLTUhpZ3JyVnQ1Mk1sRk8zLzFGVmta?=
 =?utf-8?B?dGNleUVpLy9uVTFZR3pNZ00yVndhQnVudW1zQzVhaGlEeTExSUpTUEVBS1dM?=
 =?utf-8?B?Yk9rRXVFMFVmTHlKaEprYzQ4UzRBVkVsS2l5UlZvbGl6NUkwY2JDSUgydDBx?=
 =?utf-8?B?d3ZjajAvcVdlSXkyTmc4eWM4djZDMjY5RXdnSE1jVC9HTUdmMjUvZFBMbEg0?=
 =?utf-8?B?bkw2TXhhRGNTRzZrTi9hU2JSbDhCNWd3TnpySUlYT2lmdlJmRmszWDVxZDA5?=
 =?utf-8?B?VVdneDUrTEFWejYvbFJtNVZVWUpFeTFnZXZwU1ZhOThsWkRuL09zL2FLZm1N?=
 =?utf-8?B?OWFtK293SlR3Z0U4OThKdkdhR0pSdE9ZVDVUUnp1WW9JbEUrb0k2N0pydjlU?=
 =?utf-8?B?QjlHT1Z6RmZsbEU3SkZ0UkMwOENucUNUSTNsNGdzczBLYzRGT2NWTk5tYWZN?=
 =?utf-8?B?d0pybkVDQk5tWUI1NDBPa0t5YnhqUm5lR1ZiSEtVUjl1ZFoxaVl1ZWdzVkZK?=
 =?utf-8?B?dDI5RFphaW9seXZJbWVuZG9Gek55WTErblNjdEc4OVBQV3JlcGxaSW5Lakhw?=
 =?utf-8?B?RHJKNDVKNHYxaU1OS1NrZDVsTHFCQ21tTHh0SGVkSW9xN2FjSndtWHdtQjc1?=
 =?utf-8?B?SStRVU5BdVdwaFRZSHJVTm1YSG5Fb1NsTm9sYjNTL3BxL2VQM2VBUlg2VWsz?=
 =?utf-8?B?NENZZXJwVXJ2ZUxESCtHQ1FacWtZa2s5cHBEWmx0UGdWQkVOK005WXBxOWZr?=
 =?utf-8?B?dGNjdmRWdEFjQVpGMWRORi9xbE5xNjk2NHpEcUp5QitFUGt1VUg0cUhwTTRo?=
 =?utf-8?B?M3BVazJoOTdPczhmSkR6dXdzSk8zMDNkZUN2VmR1d0dkUko1YXdTc25SWlFF?=
 =?utf-8?B?dTB6NHp0QUkvdnF5U1BIcGo0eTFRaVVLRlFtSE1EUXRsWm1hYTJLRVVzUFFL?=
 =?utf-8?B?L2ZTbklrNk8wQUVaME1qWFEwOU1EN2xRamNOTENJQXlaNk90dk5ibWd0SXQz?=
 =?utf-8?B?Z3hUMm52Uk1oVmRZdEMzZHBvU1hqSmNoK0s5RTYzMWlTd1JQdFhIWEo0N2Nz?=
 =?utf-8?B?TGwvdVd5blN2VGlQUDBWK0x4dGk4aVUyWDZzWC8rWTZ3b0grZ0wzUXR2NnFP?=
 =?utf-8?B?czgvTTc2RTZJUVgyZXVVK01jSkRUVlNDdWEwcHRHeUhPUTNzNEd3SjY4dkRZ?=
 =?utf-8?B?VFBINWFmOUYyS20ybmRBOWswTU9UazAyQk1zK3hTeXRWVEgzUEt2T3VvN1hH?=
 =?utf-8?B?czJPRHFQRE5xc0FXbjJlSUsxK1F5SmNiK3B0YjlvS0RaZ0puODJSZUI5QUpH?=
 =?utf-8?B?NnJtN3EzNDVDbXkvYmJYK3RCb040c0crRUVscHBnME42czNraXNiMGpDMkxS?=
 =?utf-8?B?VlVva2YvVWVvS1AzN3FpZXhHdExIREVudjRkbTZNemppODRFdkltdkd6amp6?=
 =?utf-8?B?Z2hKcFBlcE9EdURqMjdzQUlPR1R2OXdTdVlrcGlXTkFQVEU1Rkx4SS9wYkVp?=
 =?utf-8?B?dkE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 0850eb89-1f63-4133-1895-08dd3ee3a841
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 15:02:45.9403
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cWrcsU4DQ+oEljLXbE6OD+9CZgSl2G8RXL6Ma5Aj+YSnkhCRnyy8KlWctPJyn++rltNl+0XcYEj0g8sUc78BqPhvqpkV8K/Iejf1yBn1eMo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA3PR04MB11225
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 15:03:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64643

Hi David,

On 1/27/25 12:12 PM, David Daniel via lists.yoctoproject.org wrote:
> Hi
> 
> I am trying to figure out why the following snippet of a kernel
> .bbappend file does not populate the custom device tree source file in
> the proper location:
> 
> 
>      FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
>      SRC_URI += "\
>       file://defconfig;name=config \
>       file://cf200.dts;name=dts;subdir=git/arch/${ARCH}/boot/dts/freescale \
>      "
> 

You should consider putting this dts in a separate recipe, see 
https://docs.yoctoproject.org/ref-manual/classes.html#devicetree for how 
to do it.

>      COMPATIBLE_MACHINE = "(cf200)"
>   
> It also seems the configuration is not applied. If I rename the
> defconfig file to doesntexist the build fails early. The defconfig file

It depends on what the kernel recipe is doing with that defconfig. Could 
also be trying to apply fragments afterwards for example. Without having 
a look at the recipe, it'll be difficult to tell. You haven't said to 
which recipe this bbappend is supposed to apply though and there are 
many ways and many kernel recipes around :)

Cheers,
Quentin

