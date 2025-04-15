Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E61C369AB
	for <webhook@archiver.kernel.org>; Tue, 15 Apr 2025 15:55:19 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.85])
 by mx.groups.io with SMTP id smtpd.web11.23803.1744732512661255045
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Apr 2025 08:55:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=JwECYaVe;
 spf=pass (domain: cherry.de, ip: 40.107.104.85, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=weTQlgNJh/I5yRy3tv3izlBaGbT4WM5JMx/fHhAQMNcgeGn+9Gq+TBvjpFpiXhScOzQAvHEOORte3C4eKPAeEyGOmC8OzolXD5yluhiQFmgtgrvT8ktxSw3sKRp5xbvBi3Kw0GAzPyVSCn2fWZaw89vTe+TE9gq/QGEHfg0K6XvaPtpPCnDGrbkXuVCE+hXokuaZIG4sUUd/YiEasQeLqApQrShRyJxtGdQfNNs6SpIhxSNagPjbKSzPR9G/aBIrj7mTF+ECSYw5KlodYImsincFCLW7uOS335q+Ejk7+TgaQlYFHuWHUQEzM4GyDPH+U4Uh1yPmL+hg4mXNSVueaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RabExcp+HfKridSKYKJY4G14C2ASr+g9y5CsQ/gdDc0=;
 b=SAoOskwkSxBwa0AOZTWzR796Hsd7IwWXjyKCh8IbGU5FnnHsJgWIlCTdswNDFki/rkw7kEMyDPW0jmPKCw/JKETDgjxeBZ14f1L4H6zjg8pXZP7OlqqX7skV5skxSXwYTSRHAy8QeoLwVRx8y7IJtneioy/oXDu2jjQ/mwfZ/lXAuJToqFfqUNlzLmVK03D8HLoKzmC57JRrUY/psfB5QkYKUqlbRcyJzSODMSMMju8cVLS9mQZmC4nayU+1aXEYPZIbc844ULmy1lRQ9VrkbK4k6iDPEe/xJNn+ICzMLqBvL3FJe7nfNI/WXBqezZ7PRUZjUMfhcX0Eoxx0YYEmDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RabExcp+HfKridSKYKJY4G14C2ASr+g9y5CsQ/gdDc0=;
 b=JwECYaVesxu/uzdH+aD8dF8YRrgAkf8v7EPL6ACyCrvQVZNSypY6xPtPAJrtPnbZQuJUD5fw/+ke19mVOgJn4y0c743AjrZaiT/lhN6nnTRfWrVvoXNZ5s84DQriFXpkY2o2HMVqJaea0BS2eGwY4E/7HTi1gag3nBj4u0O4ZyI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by GVXPR04MB10183.eurprd04.prod.outlook.com (2603:10a6:150:1c1::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.31; Tue, 15 Apr
 2025 15:55:07 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8632.030; Tue, 15 Apr 2025
 15:55:07 +0000
Message-ID: <d5a66cc3-d738-442b-aee3-0968bc2d4a84@cherry.de>
Date: Tue, 15 Apr 2025 17:55:06 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Recipe fetches always the latest kernel while building
To: yocto@lists.yoctoproject.org, kanakshilledar111@protonmail.com
Cc: Gyorgy Sarvari <skandigraun@gmail.com>
References: <tKIHWnniqyKbGr3pmpXnMAtt19UwC1FoWVQjYEoP_OaMYYUju5C10Z2duqK18grooGwMrqGw0xeJdFRcHMBuftdCp84cApraC13a1TL7uYU=@protonmail.com>
 <f646cd7f-cb85-4da9-b346-a7d4ca0e9614@gmail.com>
 <9BneOrzm9SKaeYWYFSxdV9L_W9dZ4KIbJN8Z5s_EuSER2NdBN14Q23A2O4udE_qEx-GT5VNOpjjw7Rvc_ERUSsgVi1WO693Z2xaFdB6aYpQ=@protonmail.com>
 <57061edc-a48d-4a5b-8b85-e9817962e00e@cherry.de>
 <ei5C7rAa_f49ZdvCuUU3qmwGipPNjXS9g2u54i17wunnjv-ZCCWNyJGjorfHnp7iQaQ6vnkTg_K1xhB7b5z3HAmySQYRqF-CSq3J_Chcl8A=@protonmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <ei5C7rAa_f49ZdvCuUU3qmwGipPNjXS9g2u54i17wunnjv-ZCCWNyJGjorfHnp7iQaQ6vnkTg_K1xhB7b5z3HAmySQYRqF-CSq3J_Chcl8A=@protonmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: FR0P281CA0166.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b4::18) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|GVXPR04MB10183:EE_
X-MS-Office365-Filtering-Correlation-Id: 02f65b64-ffb8-4947-617b-08dd7c35e4d6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NE5rcjJZUHB0K3dmb3N4ZHgxNk5kcDRtTHFxODllL1ZLc2w0ZEN3WU1Zd251?=
 =?utf-8?B?THB5MERCTitmZ1ZhczhkS01RdytSamRTZ1BCY3hpRGNOYVRScGR4WEhCSUdu?=
 =?utf-8?B?cTJlbkNwUk9NRDdsUTFIUzBtOFFBUUdzd2VHNm5XSElibngrSWx2ZDdsRHFw?=
 =?utf-8?B?R0YyY2dpRUhBMmlEejRKNWRPT1JiSVZrbzBxTTRwRVp6Y2J5S2tMMU05K25w?=
 =?utf-8?B?eGRMTFZHMk9Kb2I0WjdXWUk5YWhOMTRTWlBTbWdsNzhHSmd1ejUzOXdTTTBQ?=
 =?utf-8?B?K2dFUEE2OHJ0NTI1aEVhakNoVkdYdUpPM2F4dmU5NzVPUGRxbnNnbzBHMnFo?=
 =?utf-8?B?aU85bUl0OEV4NlcvY0prNmh2RzVXbzBkV3ZaR2RpOEo5R21JazhVS1FoUWNH?=
 =?utf-8?B?OWZVdkRkNFJPbXFpQjlZRDJ5N0h6ellhTDNsUkl1NlJqajRmUnpZWVBuWUdN?=
 =?utf-8?B?M1QwSnF0RHJPYmRSMmlHVzEzNmxON3VFYlVpaE0zR1A5N1dFZUxRdE5mWUx5?=
 =?utf-8?B?d2ozaUpMcG5yZnoxUE5WMkJybk01emxJRUtackhnSVp6Qjk2SlVlZEY3eTIy?=
 =?utf-8?B?UzlJaTdYb2RCenNuNDhMRU5YWUt3eEpBVkcrZG9XZFRFWDlaWmhNZDRQVkJI?=
 =?utf-8?B?YW8wK2E3YnZJaG15N3g0N2Q1ZlVxMlNJWUppMTNVajRvNHZscTY5SEtnWjBL?=
 =?utf-8?B?dC9IekxweG14bVZsRG5VNGlJa21XeEpnRVB6Y3NmRU56dVhSTTZVbUFoTWVZ?=
 =?utf-8?B?QW1VZ3RhQ2VmbE5tSW5qWUFpQTR6OVZhbkx4akJieGVDbldSeFhoRHR4OWlL?=
 =?utf-8?B?SXVxaWhNSkVrcXprQXlLSFdSUm9ibFI5MEpLdHc4U3RWOXY0UWt5NzdBc1lB?=
 =?utf-8?B?NG5GK3BLK2o4NlFKcVhKNlMzSTFpMlBrOGswM1NtZ2owWHNXUzFSQzFlS2xS?=
 =?utf-8?B?R1dCcDRnYmthOFZrK3E3blpoQ2hwSkYxc3FNYWFDQ0NnYlUwTkI0cEMwclVY?=
 =?utf-8?B?NVNQZURIYUNZODlHd3lVR0JpcWxPNjhKODVmQVlhc09uUTlJays1dk9YZmVy?=
 =?utf-8?B?clFlUjd6QWtHaGlUb2IxN3hkS3pSajFGSm1mK0U4R1VjTERRQUI1OHFoZjE0?=
 =?utf-8?B?SCtmKzVDYVNTK09TK1Y0NVVTSzVJY29mam96YitlQmRZMjZMQXVQYTJyUWQv?=
 =?utf-8?B?SGtlQUViOEYzWHdkWXllOS9SZ2IwT09TRlVRSzBsNEE5OWVBbjgzQWtESnNl?=
 =?utf-8?B?RHBQbzhlQU50RjNSRTNjdStERjVydTgvdjNnVDNTZ0RKRkhiTllhVmpyc2c5?=
 =?utf-8?B?QzFSZloyMzVPWi9uYUJreHJIU3JjaTNqTzNCNEFPTWhkUGRaUTBlZ0NKTzRn?=
 =?utf-8?B?cEZ4S08vNU5CMXRrVnRicFVJMFhKRjJ1U045c2htVTUvMDBMZkZsa3oxU3o1?=
 =?utf-8?B?ZFg5KzdjSm5OKzJaUTdub1RnenptS1F2N3NzTlpsSHhqS1U3ZDZIWTJ5a2hv?=
 =?utf-8?B?S3VYd093V2tYeGtXYi9KOFJSbGV0VHR6eUczU3o0cGJjREhtVnQxb0tURTJM?=
 =?utf-8?B?ODJKSVZLMG1MamJhbFhLcmo3dUwwUG5qK0hEcE5xT05nbnVHVzJaeEJkTmNy?=
 =?utf-8?B?MXRXM1NRQlRxZzNrekxGT1RjZ3JRdHZqMmVFSjZCbVdyVTFQd2pTcWx4cWRT?=
 =?utf-8?B?MHRDN1JWWlViYWpNNnVRS01DTTJPalVrUnduSll1Z3NyVWtYaGU0UEFxUEs4?=
 =?utf-8?B?UzVXSjNrUUt2V08rdkdNM1Q5eFFuV28zR3RtUFJJcDkrQ09NYko0aURZWE1B?=
 =?utf-8?Q?24oeVFxrdlJwk0mxPPAHRZEXxRC8+vV9x1WwQ=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZmtaQmNhajB6Q21WSzZxZlhQeG1MNUxPcHBUa2xXTW1KV05Jblp4WlhndnBF?=
 =?utf-8?B?Sng4R3FPSU1xYytqc3ZCMzBRZWVwdDRUZ0dYZlp0eklDTkRzSG40cUFmQTRq?=
 =?utf-8?B?OEFMRzFNemwvcFBpTDNkUGp5SWVzdzBsdm1ncS9MUnJSYmM4M0xObkh6K1ly?=
 =?utf-8?B?YUJRMnJtckd2aUVOWm1LTnE2Ui8rcnFxTUp4M1hMazRPYzRtTEY4ZjNhVFov?=
 =?utf-8?B?cTI1dHgxME9hVEZTY1VjVmtDWEhzR3dKb05oM1duK2xlNk9pTkhMODN4MDU1?=
 =?utf-8?B?dHdZa2ptZUlZTTVlc0ZoeDU4aHhCeHpSaXdBd3lrY2dHUDJUMGY0dDdVVlNn?=
 =?utf-8?B?dXdkWkxtUXdGZmpBK1FYUXdHR1Y0RFZ0NDNWRWw5N09PSncvdWZwTlhVNlpi?=
 =?utf-8?B?VS9zWUZlb0hEUFc4NGRzMjNLKzJkUkc0ZjRDMVoyRnV4bnErVXh1N1kwWTNo?=
 =?utf-8?B?QzBtVEVaak9pSVJNN1lIdHVUc1l1T3FTUXE3bVNsdzloVnYxNC9mVVl1aTYw?=
 =?utf-8?B?L2UxcU1mRHBKeFJCRUNuc2xSUFVoZkFHa1VMWDRDeWxSMUE1ZURvMjh4Tzcv?=
 =?utf-8?B?Vk5yOGRDNmswaWd4NlpnQytGVmpKWkR4S2ZRUVk3ZDZ6cWVFS3FFVWgwS1hy?=
 =?utf-8?B?dXpCTTc4YmVDKzI5K3hNNUQ1WVlzQkdlRWtKOTNlVDFweVV2WnZrNHA0STRw?=
 =?utf-8?B?eFJBN0hTcGlPcFhibU05ZnpmWWc5R1AwYTd0WllmMERSc3k2dXc1RGp3Sjhm?=
 =?utf-8?B?VlVZa2hjdVRvK3RabzNLYXpWenFLcmlxSDQ3UDdRUXR3dkxhcWVmeUJ2emlC?=
 =?utf-8?B?b29ETVFXL1Nweko5WXBhL0lTYVRvTDcyR0hibzF3MHBMQUU2ZFZxZW4xU0Ni?=
 =?utf-8?B?cnBleVFmSEI1cS9GYVRoV2hMenRhSCticnlkcVdwZ3JzcnNhZVpEQ204YnRY?=
 =?utf-8?B?TG9tQjF2VVFCcEdwbThrQXZCMERWbkVBeTRhTG9mL2p0TmZhUTlEWTNsclcr?=
 =?utf-8?B?dnMrcHVXeVZzek12amRxcm5KKzJYMXhCblBhcWtrR2lWQ1Q5R3UvNElrVTFU?=
 =?utf-8?B?YTFkL0VxaGdpcGNJWEE1MHlIZC9YSldURGhmN2FhQjhBSTZCSmNxcTZtNFA0?=
 =?utf-8?B?c1E3RUhzdFNxM2t2em9EbUVRWXhiWHdtLzNzV3d3WUluT2RBM1Y4aFlvbnZF?=
 =?utf-8?B?dm1aTWsxcFZQSE10dEZhQTBobUhERnRyU3pWUE1ENFowRDg5R2t3N3g2YTFz?=
 =?utf-8?B?RStFT1dTWEIrR2VMNSs0Z1RNeWpranFEelFveDBlK0V0b0haWjRHMDJoU1c1?=
 =?utf-8?B?K01GRmI4b0xhNVVkMEdsWHRTM1d4bnFFYW1aMGFhandrL3N3T2hWUVFQQTdw?=
 =?utf-8?B?MmxwYThZdDJjbTQvdm1CbXlnaXEyUTRYSUIvR2FiNUo2MHdFVkVrbFJOZCtr?=
 =?utf-8?B?WlB5cHNrdVg5dGhaaGo0eXpYUjRJMlRpVDh3S0k0K1lhbzY2d2djUGhHbm5Z?=
 =?utf-8?B?bE5GeEY4NUNoN3NucUlEK0k1cmtOTVFuclFjWFdnNW1FR1RIanMwQy9zbEUv?=
 =?utf-8?B?MnJKRkNkNG9BVmJpYVh1MGFEQXdKTis2cHo0V0MveHFNenVGUDlFdWdUOVpY?=
 =?utf-8?B?RUdBMExoQjNkaGY3TGcwd21MVWhZcEhOTVVsdTJHTHRMaEhTUVNxVlV0VHh1?=
 =?utf-8?B?aFFHWnovUGwzZVRhL3pUT21nN2MrYUtwWU51UWJLbjlHWGMvb2FIanBMVzcy?=
 =?utf-8?B?R1kyZDJiMklSWUdDd1ltVFV6ald0VHNtVTdwR2hkaHl5SUZFQWQxVFIwenpo?=
 =?utf-8?B?S2F0aXVja3grNW9sTTVab01ZWm1DY29VakVXZ0I1c0hsZVlrVU8vbUx5KzV1?=
 =?utf-8?B?RDNsK0pZbXhOZU1ibHIxcmtGYTE1WWpaS2dENFB0andFOUowV3lpQ0UrWUM4?=
 =?utf-8?B?dUFkbkNPbnlodTRkeDF6aTByM2gvbUx4K1J6MHU0dndvTk9aMmF2RnZCRmx6?=
 =?utf-8?B?Z0xpWnF5SnJFc3RlcStkd3AwUkNYTHhSY1ovUjNtenduQ1NqM0hEejFVUERl?=
 =?utf-8?B?N0ROMDFMeUpaenRPdml3VXNTcTk0ZUl5QWZwekg3eHl5VTg5ZTRlbVQwb0Ft?=
 =?utf-8?B?Mzl4OWE2VnVycGdUeHdLK29CUTIxNHNqUVRQOWo3NUdRcHJkQkt4dVhpTllH?=
 =?utf-8?B?YUE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 02f65b64-ffb8-4947-617b-08dd7c35e4d6
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2025 15:55:07.2422
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7u4htFeh8Qx0giiwQ3sRHngionGDyoj5EWBT95mVDnL5O6vniliSZdOnkk79QGHQm7GSF+o2s4JlZOvuh32I3tfBPhrHbvGPSPJNZu0OKTU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB10183
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Apr 2025 15:55:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65179

Hi Kanak,

On 4/15/25 5:39 PM, Kanak Shilledar via lists.yoctoproject.org wrote:
>> Writing to DEPLOY_DIR_IMAGE in a recipe is illegal, c.f.
>> https://docs.yoctoproject.org/ref-manual/variables.html#term-DEPLOY_DIR_IMAGE
>>
>> You can only read from it, but you should not write to it.
>>
>> You should write to DEPLOYDIR instead, which will eventually makes it to
>> DEPLOY_DIR_IMAGE for consumption.
>>
>> Anything that is coming from another recipe's do_deploy, you can
>> read/copy from DEPLOY_DIR_IMAGE, mkdir, cp to, mv and whatnot needs to
>> be done on DEPLOYDIR directory.
>>
>> Note that boot partitions are typically generated by the image recipe
>> itself (e.g. via wic) and not by the kernel/bootloader recipe(s).
>>
>> Please `inherit deploy` in your recipe and add your code to
>> do_deploy:append(), or carefully study the content of the deploy.bbclass
>> to avoid breaking the sstate-cache and reproducibility.
>>
>> Cheers,
>> Quentin
> 
> Thanks for your reply!
> I am a bit confused on how to proceed. I wont write to the DEPLOY_DIR_IMAGE. Are you suggesting to do the modifications earlier itself and directly put the boot.ext4 partition during the do_deploy() stage? This configuration is board specific as it requires boot.ext4 partition to contain all the required binaries for booting (Image, dtb, some proprietary binaries).
> 

You can have board-specific overrides for tasks or variables and have it 
point to what's needed, e.g. do_deploy:append:my-machine ()

or

do_deploy:append() {
     cp ${SOMETHING} ${DEPLOYDIR}/boot
}

SOMETHING:my-machine = "/boot/my-machine.dtb"

for example.

Required binaries being part of the image is nothing new, we have the 
same for all systems. On Rockchip for example, you need U-Boot (in two 
parts) to be flashed at specific offsets. That's done by wic via wks 
files, c.f. 
https://git.yoctoproject.org/meta-rockchip/tree/wic/rockchip.wks and 
https://git.yoctoproject.org/meta-rockchip/tree/conf/machine/include/rockchip-wic.inc

If you don't want to use wic, you can define your own image type if you 
want, or have some post process in the image recipe.

Since you have a /boot directory where you store everything needed for 
the board, you can simply make an ext4 out of that repository, only from 
your image recipe instead of your kernel recipe. The kernel shouldn't 
need to know how it's going to be consumed, that's the role of the image 
recipe typically.

You can have a meta recipe if you want, that depends on all other 
recipes that need to be deployed in order to generate this boot 
partition but not from within the image (e.g. if you need to support 
multiple images, etc.). You could also have a include file for image 
recipes so it can be reused by other developers when doing their own 
iamge recipes.

Cheers,
Quentin

