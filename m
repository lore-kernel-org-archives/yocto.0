Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4288FD2E9DF
	for <webhook@archiver.kernel.org>; Mon, 11 Nov 2024 11:50:59 +0000 (UTC)
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (EUR03-VI1-obe.outbound.protection.outlook.com [40.107.103.68])
 by mx.groups.io with SMTP id smtpd.web10.57284.1731325857268199340
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Nov 2024 03:50:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=alNZRRy1;
 spf=pass (domain: cherry.de, ip: 40.107.103.68, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MJ3eiMBEvGa4v4DsWTFWTzscy7j/hRdfOUI2lKjZ7cBsHVbdZL4JVevPfHF3dyIo66CaTd2E9kg3fLn1Ku+z4JHcWop4D0Yv0+b3RQgVy4jOwgnAZkl2gZ+5Drtf4kro48HpQteN87830mMgSR7/wpDUfNJCJMTUKqwScu6J+tqKP0CcGFjxoDM09kcYdOk5KYljSjb8Yr3anE0YpijkdVsXU4XZtQql38TPq48V/g/3Qacvnc1/ADMAdOHCsn0BuEaohYzXX0xhICABIXE/HEb5Zpayig5SUguyXzgfKSelhnskpv4pmEWxxGPCwlwwiYwoHVHrC4g+FSpFGrXwAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6MCUuWHIVraiJSOO84XO449/zRfkzBcHhGtk7DF0fGk=;
 b=CeGhsk9JJ5GWyzcjjUk8akExMesrgf2Jshu/PYNjd43PRmAZf2QIPTEYQkbkbVEJYLG+Wwglo41OiZ6xnwSHjoILmwX9ot9Fo06BP8/QAu3PO9hze/5zG/4rAlnRBlMK+lupvsrlio+Ivq6OZnHHWjNJRoAIkz6W1vYDiS12Bs/NJOdIOfVUptQBd5GeI7N+7jCgHVBhaq1NIqFaPfd8Nc422BlFsfmclVTtXRoKfCBvUKTV5D22VUYYfpfMA4N2GC0cbvbe71cMIxxD1bCFjnaVe3gsEGzZtmEmmHuPEc/KDCMRh1lTXEEqyXDyK7pIwJ98XqyrEOdojIe9VA3KcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6MCUuWHIVraiJSOO84XO449/zRfkzBcHhGtk7DF0fGk=;
 b=alNZRRy1u5xFmuAaMmtzEwOED3zWRJaor+T1Rj0/usvNG1P4MkSQUZ5NGOYJpA7q5goq03fkiBPwQExlWyZacddaFwetlOTD1L2R5ZRBzJH30Z6IC+2hBhcI+FRm/Uu/NMgizS7aSb8wDZsa3QKR3u9iYILa0u6UhOtkrcl79Zs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AS1PR04MB9699.eurprd04.prod.outlook.com (2603:10a6:20b:482::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.20; Mon, 11 Nov
 2024 11:50:51 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%7]) with mapi id 15.20.8137.027; Mon, 11 Nov 2024
 11:50:50 +0000
Message-ID: <fab37127-0328-4bc0-a770-fdf5d40e1403@cherry.de>
Date: Mon, 11 Nov 2024 12:50:50 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Kernel patch applying but not on image #kernel #linux
 #patch #scarthgap
To: yocto@lists.yoctoproject.org, matt.holmes@zethon.com
References: <jGZl.1731324904657002921.ljdK@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <jGZl.1731324904657002921.ljdK@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0044.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c7::8) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AS1PR04MB9699:EE_
X-MS-Office365-Filtering-Correlation-Id: 97f6e4d5-91e7-4551-996e-08dd024716e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?OU4yVU1uZ3l1T3dta3V3Smw3cVdhK1pCYWtncU1YbXU1cFpDc245TFRhSmlw?=
 =?utf-8?B?MURXWGVnSkVVUnpxaHU3bU4rNTlnTHQ3NkVVOFZaTENtUGhBK0pqWmwzb2pY?=
 =?utf-8?B?MENpcGx6RUNPQWg3Q0wvSHlRTE12VXdoYm9zMGIzQmlmR2o3RmNQY09FSjl3?=
 =?utf-8?B?eUswb1VxZkZjYStpRkNpMGF4S1pmMk5zRmRaRm10ODdCNGpma3hySDJRbG1H?=
 =?utf-8?B?M0FIYXFZZDlMWTFDUmxBQ3NBZi9kUFBQUUErTTRUSzZCZDJnSjMyVGJLWm5L?=
 =?utf-8?B?b3hCYkhMcklIZW9VdkFvR2pGUWtkWTdlNU52Mml1TytWNzFjWG9Hd3VWS1k2?=
 =?utf-8?B?SlZ1Q0hEdG1zTWlibEYrTlZNbGpZNDgyQTlBN3dmY1djNTcxc3cvZlUxTXQx?=
 =?utf-8?B?Z0hMZVhDQWliSVZUSTVrWjUxT3lUY0xIbnBmMkh1VFhOWHpFSFlUdW9ob3ZX?=
 =?utf-8?B?L0ZsWjdLMXg1TjBHQXRXb0FkMnVwUFRXckpBbUcwRnYzakdsaVVvajJLUUxp?=
 =?utf-8?B?NDdKY0FGQXRaMU9pYktSMCtDM2dRR3MzUVB6TEVGclBiVWJHRUI4bGN2Risr?=
 =?utf-8?B?ZkRVb2t3M2M1TlJLWDMyQ3pacmVxY3owVHM4STJxWFNQZzJCR2J5Q0ZoN1FQ?=
 =?utf-8?B?UnVsOEJTRXBzd0JJck5UR1JYcUYwR1lXY1FneFEzNCt5NzlWNXpENE5RYU1p?=
 =?utf-8?B?ZTRwL1NNYzBNL3Y0TnpYaHlPVUpFVjlCVER3TStlTVdQSDFnenZZemdITTho?=
 =?utf-8?B?N3RtbEMydTZQMHRQZFpLL0hRR1BOMUVoRXNzM3F2N1Y0TGV6YUFGUWRtdTl1?=
 =?utf-8?B?aGp0Q1dRY3RXSDVxT1hPVUJ3VTZyOERvU2dkZEh0RFhxZ3VVSG0yMDhYOVU4?=
 =?utf-8?B?TVJJOFJicmxzNmI3WEVLTmpHMHpRY2U3K1cxUldtUjhFYjJqaEtLcHloSTZr?=
 =?utf-8?B?ZVlnMjR3ZEpENmZEOWpiQzNyNHlJUjZsNmJXZldmZGhZQUdpQkdoNy9FeE5h?=
 =?utf-8?B?ZGIyZWxwUXFJQXdJeGZpL3VET3FvTGlGaWtLdzZyZ0o3SVFuVGFoNWI0OGpF?=
 =?utf-8?B?ZWsvZnEybmpsZHYzTEVhZmxLWEJOTjArR3JqS3NuZmFBallpT2ZkZWdhcjhW?=
 =?utf-8?B?QUpvMUo2aVMzUnV1T1F0am9wVWtDaE51YWw0ZTB2WUZobHFyZjJlRHpYRXN3?=
 =?utf-8?B?Z2FNaktGVlI3OWxhbXVTaUo0d29rT0JVREg1VUk2QmRuU0FiYVcwWW1ZUFVW?=
 =?utf-8?B?OXRCRTByb2djUXJUL21OQXJkTW8veS9nb092VllpM1ZZQnhHZlBvUVp6Vk4y?=
 =?utf-8?B?NzBmU0toeWRiTktpNUllcXVoSW1HRXI3UHJZakpQL28wS1BpQk5HZHU2R01R?=
 =?utf-8?B?dEZGMVFKRmhiVXlETnkwSU9zZm5Qb1Q0VFc4dmdLdEV5bVNsSVY0K29WdGtq?=
 =?utf-8?B?VUpGY0p6aGhUdjNhaU9NL3hzc21CSTBYblIxOHBCUWtPZ1VxRVQxZm1La2k4?=
 =?utf-8?B?R2pSSHRyejF3TUJ6SjN2anIzWTcxTWw0alBrY256SE1MdW9CN1VUb2dZOE9V?=
 =?utf-8?B?WW5YZ1NZWC9ETVhISG5PbVcxOFJRQTJ5SHhQczg1RmlubVh0UmJZSGxlOVZV?=
 =?utf-8?B?TzhHK3NEbDFQWk5rb3Y5T1pGOVMvWFNOT2NzeWxCaUJvbnNIZjJHbUU4Rlo4?=
 =?utf-8?B?WUU3a2Rkb1h5WG0zelhaZS9TYVhPRGZNS2lPdzhMUFJidzNOKzNCYjh3Vjlz?=
 =?utf-8?Q?kSjpDwJ448qt3ELTD05//yiMvptkP8kHeX9Ef2a?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S3g2VndFN3pydHY5QThudkgrQjlKd0JVVXE4cXZnVzVTdVJLODdNT2N6MHg3?=
 =?utf-8?B?SC9BakN4SUFBZW8vR2srMW9lZmFwWnRoK1J6Z2g1ZFByaTFGbG9lTmd4QW53?=
 =?utf-8?B?RzY1ZVJNM3l5Wm9aajh6ZUovOUk2dHlhMzlPSkdGVXBySm5WZkF4QlFibXZO?=
 =?utf-8?B?RkxBN2wwODdBWnVUZWdxL1VWNmczd3NGSmZpMjZyWVAxazF4K1JCbUZvVVdv?=
 =?utf-8?B?YThubUhGL0R0NDFwNlBCdmsrZmVNQmZGcTIrWXVFOEd5djdEYVQ4TE9wcjlL?=
 =?utf-8?B?RE9veWVrQzE1UHFGRTFRT2Rnck85S3JlV1g1dVdoeFBSa09MejJXcjJqQ0tM?=
 =?utf-8?B?dGtsK3N4TWNsR0dFOEQ5V0JNWkFCM3FlMXJkQmRTUDBKbFJVRzBsbnZtZnRL?=
 =?utf-8?B?UURvUVgwK1dUb0pqTjlwbW5hRnFVK255cS80OSttVVBzV3FJZjB4STQyUWxr?=
 =?utf-8?B?VXZKVFhCUDRpK3JES0ZnV1Z0SUVTeHd3czRVOS80VURLRkFpWmZ5eVpsbFBW?=
 =?utf-8?B?aUdaYVFOVkZ4NkZsSzJSRXh6TWdkRjRERjZ4WHhsd3NyMklJVWlHOEc3ZFhS?=
 =?utf-8?B?OVRxU2xVUDFoV091QmtTQWZrR2FTR0tCemdaM0lvSEc1eDVQWlpSNVQ5R09m?=
 =?utf-8?B?UmcxS0lrcTgwRHNLR3NjL0QyYnNETW4rWndDM1J5dHVveEwxbzJzOHhXcGNo?=
 =?utf-8?B?YVFyWTRXaW1PNkljVFZaRktNOWkrSTFIb0h1dVc1TmF2OUdmNUtaV2FyRXRw?=
 =?utf-8?B?c1FRaXEyTVp3aHA0eS9GTkdMMnpvUGlNS2k2NXJTTjdybmRwRHh0VVVERnRM?=
 =?utf-8?B?NzdxZ09ESmZLVnpjY1pXbDA3R2x3MldPV09JN0lFWnhnTlRKeXp2L2RBRkRJ?=
 =?utf-8?B?RllHSkthL2tqK2ZZSk9HcFdwbkE1aE8rMGorTVB5czU4MndCUWwvdE5QQ0FB?=
 =?utf-8?B?MW5MOGtTT09UWnErM0V4SjlCNDN1Q1lKTkxTZkRGQW5abVdFY2JubW1ZbzNB?=
 =?utf-8?B?d3JhN2NYbWZkdE5YR3FYME51cWNXa3NFRENHNU9aa0I1OEVwSFVUZTg0dHpH?=
 =?utf-8?B?c1N3WU9NeUsvSXV6SDJIMmdGMU1vTzBtS1BMdlcxN2FHSUlFd2dLVCttVFJ3?=
 =?utf-8?B?Z29VM3hDTnpiSUpwb1pvdTdJTEVLSTM3NlpFSzNkVzBuajZ2Y25pa3FEZUR2?=
 =?utf-8?B?ODNKajAwS3hGN1hSY2JtTzNYY1hQOHBNYkVNdHBsMUd4MzJSUHZBdExlbWRX?=
 =?utf-8?B?K0lLVklTejJDaDJmSkpFWnJZd0FPd3IrN211S21hUmx6bHRtTXZKcmlYcXJG?=
 =?utf-8?B?ZlFWZlI1WEtIUm1HL0NCaERmdm13TVlzbzZkRnVxZU9LWjJNV2VqUGk3ODg3?=
 =?utf-8?B?LzB1MXIyZzA1MUhDUGdVbW5nbGppVk9YZmEvSU00SHg5NFoxOHNXZ3ZmQms2?=
 =?utf-8?B?bDVId2kvTGtQSEo1QkxLcFpTY2lObHkwSzdmQjgxZnRqc2V3aFRWaytwOVpO?=
 =?utf-8?B?bkFiU3lxQ3YxMWdqdDhNV2JkclVKYmRwYzVXR21XRCtjeWNXZC9iVFFCandh?=
 =?utf-8?B?ZWJqQkFqOWJ0aEp0bmR1VWR5WDVmTUdPSENsQ3JxMDVrYzRTVE5VakdsSUQv?=
 =?utf-8?B?ZVMxbDlEd2RSYzRjbUwvTFc4K0FhZ3I2NzZIKzJFRVpDbDJUWmdWV3QxTzh6?=
 =?utf-8?B?cjFCVWJxWDZnUWtzeTV2Z2tzL3dLMkFjN2JNT2ozcWR5OWZoVGM3Q3BKUUJZ?=
 =?utf-8?B?NEhINXZnemYwRXBUREhwd3JGL0lUUmRBK0FuR1JYWUZTMWRIMEoxTG1MNUhS?=
 =?utf-8?B?TG5ER0V0SG51NElHdFJySlVJb1VQekdNUlUxV2cvVkVNSW9KejVtTWEvQU1W?=
 =?utf-8?B?U0svejd3QTVqODd0dllVdXB6NHJhT0Y5UWlwKzlOcEk4blpQWWJqM3VLd21G?=
 =?utf-8?B?ZU9LSlVVL0t4SmpnT3phZE92WTAxZUhXZGFnTGQ1WnRIdWxqZytxQmQwVWNw?=
 =?utf-8?B?a2xDdFpVTlZFMXZ5QmplOHlpeHJ4d0g3bTBkTXRINnJ4bkg5S0ZUTDNKTExB?=
 =?utf-8?B?SUQ0eEVsSHNWS1VQVE5ReEI3SXZHdkVQZHJscXZtbGxVWjZaWC9XZ0tnR1BC?=
 =?utf-8?B?anJOaXlmVk1VMXpvZTZOTHg3bGI3S1A1amM1YjFnU2JaRHNhbk9Mdzc5VEtH?=
 =?utf-8?B?NUE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 97f6e4d5-91e7-4551-996e-08dd024716e6
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2024 11:50:50.8583
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dXzv3trhLTOW/X/dK4F/wz7z8RNML7r005ufjWYwlcbgUE2BVnXiRuA9jIR7bTldiJ8YPx+QxdqFe3fVfYWSAiKVf4BW0D2trW4+JX8k34A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9699
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Nov 2024 11:50:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64250

Hi Matt,

On 11/11/24 12:35 PM, Matt via lists.yoctoproject.org wrote:
> You don't often get email from matt.holmes=zethon.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> Hi,
> 
> I am trying to make a kernel patch on spidev.c to fix a known issue in linux 6.6. I have written the patch and I can see that it is applied in my build/tmp files however it is not functioning on the image.
> 
> My patch method is to create a recipes-kernel/linux directory in a custom layer, create a linux-libc-headers_6.6.bbappend file and create a /poky directory for the patch files.
> 

linux-libc-headers only contains header files and you should REALLY not 
modify it, c.f. the big comment at the top here 
https://github.com/openembedded/openembedded-core/blob/master/meta/recipes-kernel/linux-libc-headers/linux-libc-headers.inc

What you need to do is find out which Linux kernel recipe is actually 
used for your system(s). I believe something like bitbake-getvar -r 
virtual/kernel PN may help. Somewhere should 
PREFERRED_PROVIDER_virtual/kernel be set for your board, that would be 
the name of the recipe. If you have multiple versions for that recipe, 
you may have PREFERRED_VERSION_virtual/kernel or 
PREFERRED_VERSION_<nameofrecipe>. If there is no PREFERRED_VERSION_, 
then it depends on the layer priorities and all, so a bit of error and 
trials should help identify which recipe really is built for your system(s).

Then you should add that patch to that recipe instead.

Cheers,
Quentin

