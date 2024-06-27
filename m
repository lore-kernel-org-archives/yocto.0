Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E149C2BD09
	for <webhook@archiver.kernel.org>; Thu, 27 Jun 2024 11:49:53 +0000 (UTC)
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (EUR03-VI1-obe.outbound.protection.outlook.com [40.107.103.108])
 by mx.groups.io with SMTP id smtpd.web11.6046.1719488983702423551
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jun 2024 04:49:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=nSrZlfF+;
 spf=pass (domain: cherry.de, ip: 40.107.103.108, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g4+MxNdfnwGt+9Z0WcrcRuO1BkrhhEjuxP7bD1WrKSw3SEkif6AAyQcFCwImzDDE1tmSswO271c2aZBDoLZuXHGHe2FhS06yd7mRb6VwQ2+/GjoNUUgMHnPi5E6VqWs8HargvhWbd/m0ZqBii47PeeOfSubLMMmCVyYrlIfKS1PJPQzQQif3YbTaLvANNVvu10urBHqyUZedkxTOV7mJo3VI50xPhp190gQ6Phr+nwipAKo5KcrBq/bpEwPOF3o1HQv9h2FZaHkts71aoYDXRv+uzoS+jmUJlx0YZst6VvugSREVEc6j8nQbM7MS8WeIrDoJRRNYe/iztcOW0DBQIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IFJud3R9rjRAJSbpVmaNCdroAi0F2WMgaShr+5vF3Dc=;
 b=EnY2IPmXVATL5iieHwRO7mSSbCxUkAVipxXKHt++2ykVFZWsGb7nlj07T0anKKM0o5gtvWYOtC5r5p0dppHlVYAEB0CgF6+ZBr3tbkK6hodlQhGQK+6jRpwWpwOMCCYmSfaESc7Zr2quZz5S25chGiny+nD5T1ryDIRpClQajUUXi2sqAnBeXaACZG1Mn/Pj5dbV5IAXsyQRbtBLSL8cPcayjUBI5QRQRuZSdPFAEoHcPOxy0l4zOhCI4IVJwFi99GF4fy+V0M9QK7wYu3VHyGhh1p+/i6YD4imuca1jdX6LCXmZnESmNtfFTI9dO3ZVNO0kdrUsZcwHzVI/Z1acag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IFJud3R9rjRAJSbpVmaNCdroAi0F2WMgaShr+5vF3Dc=;
 b=nSrZlfF+PDxEU8DmDAa6FrfoWJfUaa4cmuy6mx3XKSEKpkJaarrd+RQNdSQbtJsq266f5m8AVF+UTY4zFvQ3l4MQjb0mAX5MuHjQUiNvhGJMqU1RETmoDC8t6XzD2T5pgHAyAp9LAv9OIK47yFYH6QCAX6OMPGhbMrElqq6+fMA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from PA4PR04MB7982.eurprd04.prod.outlook.com (2603:10a6:102:c4::9)
 by AM9PR04MB8905.eurprd04.prod.outlook.com (2603:10a6:20b:408::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Thu, 27 Jun
 2024 11:49:39 +0000
Received: from PA4PR04MB7982.eurprd04.prod.outlook.com
 ([fe80::3c4:afd5:49ac:77af]) by PA4PR04MB7982.eurprd04.prod.outlook.com
 ([fe80::3c4:afd5:49ac:77af%4]) with mapi id 15.20.7698.025; Thu, 27 Jun 2024
 11:49:39 +0000
Message-ID: <d31565dd-301e-4f48-ad0e-d24561a7e6ae@cherry.de>
Date: Thu, 27 Jun 2024 13:49:38 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] meta-rockchip: rk3568 GPU support
To: yocto@lists.yoctoproject.org, marek.belisko@gmail.com
References: <CAAfyv355-ZMkGobQnzpOBHgpaU+=heHVVv0M9mLh+P78XnwEpw@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CAAfyv355-ZMkGobQnzpOBHgpaU+=heHVVv0M9mLh+P78XnwEpw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0019.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::26) To PA4PR04MB7982.eurprd04.prod.outlook.com
 (2603:10a6:102:c4::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB7982:EE_|AM9PR04MB8905:EE_
X-MS-Office365-Filtering-Correlation-Id: ead1e281-21be-4d09-2df0-08dc969f3a15
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Z3hzaXlXWmFCUkxFRHpkSEtDTjJWL3g4elRDdFBsYzQ2QzZvazJsYXpaUUxv?=
 =?utf-8?B?NTFDRnIyMnVEa0IzSFdCM2JnSGZITFMxS3RpZlV5NnBpd3R2WUJoM2kzQ05D?=
 =?utf-8?B?Z3JHNWM1cDNDamVYY3hYVEl0SmVKU1MxeWsvK2hTSGJpRmVNTURoaTdKQ3Fu?=
 =?utf-8?B?ei9ZR0s3NmcxQklOa0Z3YTlpZDJsU3A5WFZwRno3LzhTQnJRUjFyazFkbDBa?=
 =?utf-8?B?RjgrcXhrMjlYRkhDNmlWbGM3dXkyd1g5RDlOeDhYNkZqY0l4aXBudjRKSnFH?=
 =?utf-8?B?aHd0eXlSdWRLNEdxZXNHbi9VU2RqaThLU1BDRW8xK01kalVQSnYvNmY4SXJs?=
 =?utf-8?B?bXZGMXlHeGdKS0h0bEFPNTZrRjhHUTl1US9rV25kamJpQTIzc09hYmpQL2t0?=
 =?utf-8?B?akYxaU5RVDRjemcrMnRON2dKV2pZZkphVEN0elJhNU5yOE9WWElBYzEzUk5Q?=
 =?utf-8?B?dy9vSHhzR0xYYzNCaUFWOS8rRG9sWjl5VzRzS0NsclhKdHB3TFA0Y1N2UlJW?=
 =?utf-8?B?V0dvNkJZMjVSaFpVQnRBRlRGVFN2bFZ3VmI4WDFadVJheHU1aUhrN0xvbWM0?=
 =?utf-8?B?bmpGNkM5Vk13Q0NmcnRUS3Y1S0dQdEVkWjFycFhoRjRXbjU0a2NFYmRsWXdF?=
 =?utf-8?B?cXQ5MEdvYTV5ZDdqdTVVeWxvcVVZeEtJQUVJTWVBNll4M1lpVndoZmRUTXZU?=
 =?utf-8?B?QmExSjlYWG4yM1ZScUVzMFh3UlgwYkVZd3RTRkI0Ly9IZHFQK1A5U1VscVJu?=
 =?utf-8?B?RnhyOWovd3ZLbWtrVVZKWlZrbmlRY01uejBuY3JNQ05EY0lsdjdVcGFsOUtN?=
 =?utf-8?B?cmxWRGJZS01ZbTRRYzJxc0pNYXRxZzVoVGtpRmUxWFNKSXFsNkU4SWY3Smtx?=
 =?utf-8?B?YjZNU1NySXlWbHdneWVYSGxGSDRpRExMazIzVE5hLzdtcEhyUExETWZQYzZM?=
 =?utf-8?B?ME5RSWxQTHdzRGZaTnFSSU5FdE1RWXlGcXpJajJ3VXZ4djNUVDF0cERjL0FG?=
 =?utf-8?B?WSs3dENPRHBPY0ROQjlvcVNWaE5BNnR3T1JFQ3laT282dUV4aXFESzRHRjZh?=
 =?utf-8?B?YXdOdmE3b2ZNWVNoNGFlUnVGSlpMNHh0ekhPRkNrcnBhMThtb05jUmI1cU9w?=
 =?utf-8?B?NytmWGliRlpuV1lRR0x6QlJYYzBkbmd1aXYzcDVLQWM5MHY3Tzd3V0h6ekNQ?=
 =?utf-8?B?enlEUDV6R2c0VjlUenFIN1ZMS0F3aUVBSFA1OEErR1A1YkNTVmFHUk8xK2Rv?=
 =?utf-8?B?Q2xHQUgvK2hzR3NPTStxK0p0TFVzSVk0R3EyL0kxNk5xYUZIRXBYOTl1dE52?=
 =?utf-8?B?Y0V2TTZkZkZXQTRzaStETmMzZkJ2ajhKZVlqbkYrcTkrY3hMWVp3KzYvSzgy?=
 =?utf-8?B?ZkZRdzJDM0ZGci9rMGU3bS9VanQ4blNiNmNERUZjYzl4UzFYS0EyRE5oQ3pH?=
 =?utf-8?B?a2d5UE8yeE5uQTZ4ajN6QzZLUUFZdUJBOEszaFNRekZJdnBJTmM5VHdoVjFi?=
 =?utf-8?B?c2dzUStEalh5R0UxazI4bHdEdW1VL1dJVW0zUDZtK0tQRGFGSG8vUlZrZk85?=
 =?utf-8?B?OUk5TFEzQ3FFeFBmSEhyNmo4TGZ3Zk1uSlQwOUtyMWVsdzJsTUhKNExEdU1k?=
 =?utf-8?B?YVFCK0hGY2ZjMDY4alpySEFLb1JybFBzK21XWnErUjFKdGhLUmQxQTB3UTBt?=
 =?utf-8?B?dzhSS0V1UVpTeFNqZ29JYlFzY2xwR0lRVVNPbGliaklLRVh0M1lsUEg3NkpI?=
 =?utf-8?Q?BjZZ8g7m5o/kMHOQ0A=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB7982.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V0N0VmdScytoZWNSV0dKNm56UFY4eWhlUXNSN3ozc2FEK1JoME9JbFRqZmVX?=
 =?utf-8?B?bEdJWkhyQy9aK2pnSmlKa3Z6YXVKTnJQVGZDc01oUXZoaXVUNWRKMjNDWkhQ?=
 =?utf-8?B?QUdYSk51dDgxZlZiUjlIVHRaWVE5NDNBOFBnTXlMRy9mODQyNjVETkJkcG5a?=
 =?utf-8?B?eEs4cUZwTWF5SGJVR3pBL1cwdVVKbmoycHZNdU5oZElzQUk5YzJXSDR3YkJi?=
 =?utf-8?B?MlljMjQ3ZDIreFk0MGhXd1dEb2duMjkyN3JvcUIwNXZFRWRIejRmOUVKdkFh?=
 =?utf-8?B?QUp0WVRFZVRmL3dVQnBhZlpVLzVNdkVBTFYyU1cyQVN3U1hMSXhjK21pNHhS?=
 =?utf-8?B?M0pmRHYvQmNsZkV3SDY3aG1HY0pRelVScnBUd0ZMazRBTWhBYmppTHQ3cjZw?=
 =?utf-8?B?SnVTakFlUVpvaTc1WmEzeW9YR3cyMkZ0QXltSERmNmQ1QTNFS3pQZzEycWdD?=
 =?utf-8?B?R1drS0tJS1A5ekF4QnllN05JWnU0bVZrV1A2MFhkcktYcFRtZ3hkTFJRNFFV?=
 =?utf-8?B?Z2NsVG1UWU9mNVZSSnBpUVdNdVh1SitVTHJpa0JXbkpzNzJOcmxIb0JSVWxm?=
 =?utf-8?B?TURNcGNPSnE2Z1hNcHJSTk5SME5wZHBJN2lsVVZ4RlJsSjNxeTFJYm5FVTQ5?=
 =?utf-8?B?UUhXSUd3S0lsRjZEanlmY0gxQ3k2WVpDV0VIUUlyVXhyZzJQZkcxbEFaZmNF?=
 =?utf-8?B?WVlDVXY3VVVVTkFZcmcrMW5YYzFzTzR2U3ZBVlVnb01vc2JlbXZ1akVhTFg1?=
 =?utf-8?B?dGlqZkFxbWNjN1pYeWRuNmRWK2FBbkRwR2xub3hxMUVaU2grOThpVDh1VXpP?=
 =?utf-8?B?L2xZYXpLWnFQeEF5ZWdpZGh0M3lOODJXa1RnVVFIZStrdjZ2OWdLVzY3UHg1?=
 =?utf-8?B?MlMxaDlaTzBCVHVTdzlUNXVWZnJsNXhJVTdqQk1yRmhzbHZSelJDRVNmYnVC?=
 =?utf-8?B?REVDc0ozT3AzVCtMZEx1MzBkTUgwTXUybGU1YWh1VnBGOVQxN2NoZFhsS0xL?=
 =?utf-8?B?dXIrUk45QmtnaktMY0Ewb2JUbzRSUkF1dnY0cE5ncXBTOEYxdUl5ZE9jUkZY?=
 =?utf-8?B?Mi90ZFZwY3hRSldMLzJOQ3R4NzY3bVhqL0dxNnhzSHpzM0RqWk8wbnhXYk5k?=
 =?utf-8?B?V2haMzZiWncrUzVUY0pRUmM5Mnp2cXN5YzRTL3UvaUpiNjhVSkU0NGg5SWNx?=
 =?utf-8?B?ekF2ZG9QN1JkK2Q3Z05YSG5qMVloL3lobTFZOHFUS0dHT0R5elg1V3NIR1hK?=
 =?utf-8?B?L1ZaaU5QR1FabDFUd0FhYTJnOW9sTmJXMFh2MzR4NklLSzQvakE2bUJicTdG?=
 =?utf-8?B?Z2h2bHdJV2pJR1IrWFJYdEdJczF2eVd6c3NhSWhEMHdMV25KOUZzZTczejVE?=
 =?utf-8?B?b0ZkTzM1MVhXa2FPRmFheU9TNmdJNm1zK09oWENZSTc4RUNvQ0EvS3JpajJX?=
 =?utf-8?B?WlNKNjBkYjduT09rd1hEQ1dYYjE4a091MWNxTERtLzBJTXNHVy9hcFhjcEhh?=
 =?utf-8?B?ZFVsOEpmL1NFUmtmL3ZtSjFJRTdjd1p4L3ZwV0VMaUs2UlZldzVJMzdlYTUy?=
 =?utf-8?B?OE4xY1lTTElTRTJvSmZyeGVPVkZsMHNLNVJMeTNRQXFGSWk0ZGlydDVoK0Nn?=
 =?utf-8?B?S05mMnNQdTRiQTBaTnV5c0tQMHphSWJTYXNNTGN0K2U2OVYyc2RETTZPL01G?=
 =?utf-8?B?SkdUNEM2aFA0d1BOeTltTEVFOGU4OG1HbGxUQWNhbHBJay9yK1VjRkYraVlK?=
 =?utf-8?B?MHF3S2FmTmFrb1lBT2tiTHpoUDJHOWRuVmVEVGZIaFdsRE4vOC9MOVQ4U3Bt?=
 =?utf-8?B?Y3E3VWdZMlhuUDF2TmhFeWdsOC95N2ZxV2toWHc2dVVHUTJtOWlZWmRjdDc1?=
 =?utf-8?B?OUt6QXovZzNHajhxaFRENkVtQ29pYW4zWmtLckR0NG1Zb2hMeStVQlozNC9P?=
 =?utf-8?B?TlkyVzIyV1lQTW1nTWxPVkhqODA1V2F3cjlET1BUdlY2R1NpMnFONjBjRXVF?=
 =?utf-8?B?dFozVDdVWHJZSU4raEgvTkJTZGtGWkltdVp6V3J2SXMyZFpBc0VTcnl6cHlI?=
 =?utf-8?B?UEVZVmQwTlgxOGI2OXhXZlp1dkVObmlma0NpNWg4SmxISjh4TWw0bWUzSWZj?=
 =?utf-8?B?YjZSVFFYRzFUS0h6T2liT29SaVBYL1dNL0NJZDhRUUV3b3pBc3hzai9kQSsy?=
 =?utf-8?B?cHc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: ead1e281-21be-4d09-2df0-08dc969f3a15
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB7982.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2024 11:49:39.9499
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1ySxpuPcLUqWfjgPNl0RJnCwFs5iZmt4rffzsZ6JP+1ejlUVivl/Qz9GD++oO3ljw6CYUw5E9EEq1Xgvem8WBvhNTMm8ShM6wefX1KbIGjA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8905
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jun 2024 11:49:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63397

Hi Marek,

On 6/27/24 11:49 AM, Marek Belisko via lists.yoctoproject.org wrote:
> You don't often get email from marek.belisko=gmail.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> Hi,
> 
> I'm just checking how to enable GPU acceleration for e.g. gstreamer for cm3-io board using rk3568 CPU. I saw that mesa have some options but not for rk356x CPU's:
> PACKAGECONFIG:append:rk3288 = " kmsro panfrost"
> PACKAGECONFIG:append:rk3399 = " kmsro panfrost"
> PACKAGECONFIG:append:rock64 = " kmsro lima"
> PACKAGECONFIG:append:px30 = " kmsro panfrost"
> 
> 
> I've added a cm3-io machine and will post a patch soon (snippet below)
> require conf/machine/include/rk3568.inc
> 
> KERNEL_DEVICETREE = "rockchip/rk3566-radxa-cm3-io.dtb"
> MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> 
> UBOOT_MACHINE = "radxa-cm3-io-rk3566_defconfig"
> 
> Any ideas please?
> 

We have it enabled on the master branch already, c.f. 
https://git.yoctoproject.org/meta-rockchip/commit/?id=9b20f029184798b4193945bbf286505e88b97da6

You can send patches to backport it to other branches if you want?

Cheers,
Quentin

