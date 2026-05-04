Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29B25FF885A
	for <webhook@archiver.kernel.org>; Mon,  4 May 2026 08:48:05 +0000 (UTC)
Received: from DB3PR0202CU003.outbound.protection.outlook.com (DB3PR0202CU003.outbound.protection.outlook.com [52.101.84.23])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.10508.1777884482607783033
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2026 01:48:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=oQgeEJKv;
 spf=pass (domain: cherry.de, ip: 52.101.84.23, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mPqpBlGLAutSW7A11pIqPubvAgnyzJh6R1iPu2c/NLl8bMZ8QaZCCQHf26J4AzI5QO2ZTqWyM8Nl+oSPnfJUyZABoOX/lJMNmZ0lQgvPJH02uYJGiwEjY4c99GU7USKDTdyWhfy/8VxmFNbZEhQ3RclgRq2gqXiOA6AQLrNicQmjStxpU6Gc6SnmyRnIFFV8/EYtfS11QrV624hPgeV2bch5LGy4WaZnyAoC1s18wCzfeSGtJncGPOY7ssDPDPa5iww2vMZVUoMz85ggKo1H+08thjK75jaDyhRkctrkgnVrF7gRhn6L6VqofraaOSYvrSfvQwcEF9oU5+egRmp35g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KsUQF7K6S0oufxa3zFnILTqIheM8EHbFzjjnTYm3y38=;
 b=p3+2rnRKxQCVGGWzFWZt4x9qKZppL4ZCdyqf/gHKM+/1l5km6eZw0jicFrrXWrMkxJhnLtPpRHn4a6l2cSaBD+FHI4JABQY58uMFXsma855wnqyUESo6PfripC5oviwvQKb0qaPC0B6x/1T/Qm83vBX9oGj2HxNJLMlb+jDG/1ryD4wJ+v7p8XJ+ZjQ2sQW63bPSpAuX3MqMMXQ4mYtcma0mSNG/HlnSsV+WENCO/8D7Lkr7mdFU0d2lkS/cjkjnREij5XKlD4AvUvziSiXll6p/nFokBXXQIplyszXmMlx5KMNIBtIWshwEMWvmwwYf4ujYMY0HDRDliaU1AJE6gQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KsUQF7K6S0oufxa3zFnILTqIheM8EHbFzjjnTYm3y38=;
 b=oQgeEJKvVRwtJzH+6YrmCrC0vvxJiIR3GxQVBzmTVQKyLcTnVzfgDELFZngXfgxF1aoIIeN8b6bfwPfUXNhyTsy+bFALbIQ2zU9aMw1GNe2fWRrltMkNW0f7OCbo8Cuadwk8oJWRJPUiMGAbR54UoV1SxMexR666Mq2sPa9N9xA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from DBBPR04MB7737.eurprd04.prod.outlook.com (2603:10a6:10:1e5::22)
 by PA1PR04MB11358.eurprd04.prod.outlook.com (2603:10a6:102:4ef::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 08:47:58 +0000
Received: from DBBPR04MB7737.eurprd04.prod.outlook.com
 ([fe80::5960:fb4b:9313:2b00]) by DBBPR04MB7737.eurprd04.prod.outlook.com
 ([fe80::5960:fb4b:9313:2b00%3]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 08:47:57 +0000
Message-ID: <fe2c7d25-c2dd-47ca-a08b-e0115c3648b4@cherry.de>
Date: Mon, 4 May 2026 10:47:56 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Simple solution to create a non-root partition image?
To: yocto@lists.yoctoproject.org, michael.opdenacker@rootcommit.com
References: <9e2ba2a4-9aee-4676-b623-c811a0a7292a@rootcommit.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <9e2ba2a4-9aee-4676-b623-c811a0a7292a@rootcommit.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0008.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::21) To DBBPR04MB7737.eurprd04.prod.outlook.com
 (2603:10a6:10:1e5::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DBBPR04MB7737:EE_|PA1PR04MB11358:EE_
X-MS-Office365-Filtering-Correlation-Id: bd0b27cd-279a-44c2-6540-08dea9b9d714
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|10070799003|1800799024|376014|366016|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	vsbHPQ9v1cgtLHS7mRxG9l+fGbBMP2C8TO62ZECDH6bYVlXuUpEHdtqRQL0YsaCl6UgjiNyCwD6uOwPGBVSfjz5N3rX7E/b6+7rCWrCIb/y1oKBIPhnC+TcOhKnNPkdMz9WCce4N7IUS+nJIGBtvAiaKCYZOn1b4rN1GL2KMdGpc+lsxqypXmkYfYQHfEMJD3tKNMvsotXpiTRnyMjg6UNxC5EH+IKycfK/vCnvaZuziGgEIVAHyIBw7nbjkhnpuzZbwp0pGHxh2Y18PEUAMLa6OgT+B/e2Y1S7l6n3EgJAxZXlu/nH1Dbl16/vl+45G5JP7yNZC8O8lUzo9L02I8NHdau3hkYgtICAAtCa93oVy1cvUzbqnshrzqkkycL2JIWU1Jhf96X2ZSQHsjXHdELsgfEKrVqPbmM/T4axL0bqaZy7ef7+Zb3WELc1nI/fT4WLO2CUPmUv8U8wGQcTYlbrGvgMLDdRzQds59Mf1I+D02K0+PU6KtzdZ832tYSdOB4g/NC//MZHTZVPKmx1sSCGU+TiL5j4fQXbkjp9FmiQ0wC3TDU2ux0rH01aclncTOby9sdWjmSK8fV0tHsDAhXoEbUQ2iCKALTzIJ7ZsAihcLOeb00xLI1nKQQJyWzOtBjecEN9b2n07LJCyjT+oMoaxFp3J6qA5JOFVb0/6B414jbAVgnYM7phzEj8RLacu
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7737.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cnFLNnpIUkNxZWU1TDNTUG9GenBDTWx4NDk4alNlVVBkY2FtanJ4ZXFPaHlo?=
 =?utf-8?B?aVg1WkpDMm5KVzI4YmFCV0s5WURETlg2MEJDdEFFd2xJVUppM1hmTkowL09T?=
 =?utf-8?B?YWlOMGpzNHpzYWp1OG55RVlKSldIUDQwbG1UZjZ3d0g5TkF2MXA1cTJEMVpZ?=
 =?utf-8?B?MDFhYlZyNHFFckVUUkNLT1BwanQ5cVo1VGhRTG15aDFzUytDTWFaQ0UvOW5w?=
 =?utf-8?B?d1ZnWERxY1NlMnllUktMU0RZVlhVaGZMZU5OUFdvTWYwMnBJZGJ1c08xZHQ5?=
 =?utf-8?B?bGlINGtybDhpSEF3QWRKYjVMQlN3RXJQdHV2TlYzRlVCUko5QjBVR0FQR2hM?=
 =?utf-8?B?MytnSnZNdEpyeHFkb2NLaUUxUE1QNDUvNUl1Lysvbm1TQjZkUHg1M2NQL0xn?=
 =?utf-8?B?aVQ4RkU2Mnc0NkxpS1R3TWlYb0dnMHVLWXI1NVVEN1lKdy9Yd1pjaElIeXRF?=
 =?utf-8?B?NkptazZZUWZpaXdsamJSNE5CS0pVK1o3cHFDWWhkdUNuQ3NRdW1mbTVGdGlx?=
 =?utf-8?B?OXpyaGZ3QjkvOFhGS1VyZEZheGczSyt1cW1GWExnYjNreS9VU3J0ZFVveEc4?=
 =?utf-8?B?bnk2N001OHppKzRzOWxhZ1pKT0xVbmVnemx4QmpVeDd4Z2J6ZUt5TUVpYWo0?=
 =?utf-8?B?L3ljeEpKaE9jZ2FYK3FGb0JKeWJjSm5PVGlJU0FqR20yVy94QloydVoxRUdK?=
 =?utf-8?B?WnduWnZDNjN0bXBSVFk5YTlFNlBjdkZ1bFJwL2g4b2dNTXlPTUJkaXRyWEZv?=
 =?utf-8?B?NU4zNDhUWXlCZ2lvKzc0M0pPNDVDZnhVNk9aejZBZUJQZ2czQjhJYUE2N0Zw?=
 =?utf-8?B?bUgvMHFUZlFoa1JCdThPU2xsSldmaTVqenM4MWR0V0dZNmJvOWNOdWVmU21u?=
 =?utf-8?B?eGc2aVpZVVQ3VDExa2ZxbjFSeUxWUVE5MnhCL25YZXM2WWNBVUhnU3J5RXlS?=
 =?utf-8?B?Nm5yR0w1bkROWnBXRWVtVjNiRXphZTlYS3QzRms4dTRPbnQyUzJlcEhrRkFL?=
 =?utf-8?B?RnYvOTlORnljckN4NG03WEVKSGs3Q2JJQk5TbXNxVjEvT3FTUEovdzROQlN6?=
 =?utf-8?B?bGpySU5MdVRtNDlzNkVMckVxb2hlN094b010QjY1cUl5Z2lIU1hrUjBaWnVa?=
 =?utf-8?B?Y3EwOWx6aUUyQ252THBnd2FiV2tkSW56VHJNUitOMTNYZ014dWVDTHE3Q2Z1?=
 =?utf-8?B?dlBkaVNSZDNtcFJCUzBzcDVvS3h1bG02RTNVRGFPLzE2N3FPY2YxaVpuQXlT?=
 =?utf-8?B?b2MzOHN0VGdYelFnMDExaUxIanA4TWk2RTRZSHltY0VhaTdjQm12RmZSa1lE?=
 =?utf-8?B?UkxwK29MSitQSnllUTNzTDBrOThUWG91bm0yZ0NvWEd3YTFGUDlYVCtndklC?=
 =?utf-8?B?eUFRRGJkSGJPa3YweW9QZGYxRkN4bTRDZEpzdjhWS083R0hLMmRXNXo2bUp0?=
 =?utf-8?B?SUxRMUJkOFppdmgyckgyRWdKRzJrUm8vZEs1Y0I4eGg0WUUrVjdGS0VNbXlv?=
 =?utf-8?B?MmF5TnFkbU9RaStrV2ppR1RrVzRZZWtyYW1PL3J5dytPTk5qRGorSlNvNkxZ?=
 =?utf-8?B?VlRBK2J3VkxPQzRqRDI5T2hrWWVPWmsyeG1NS1NDeS8yK3M5ckliZk44dERC?=
 =?utf-8?B?cHEwdEpVTEhvOTN3QTgyaWdTTGthMHBDS3llRU1ETmlNSEVMcmtNMTBqVkFZ?=
 =?utf-8?B?OVNRaU51QUFTZGhjZU9wam1tSkxYT0Q2MUxweTJjbEV2Nktyd1dwYUJNTkJL?=
 =?utf-8?B?eUpUdEo0YWVXOGtENTBXV3hRVW9xM0YxZk1IN0VtSWZMQlFQYWlEanpNSEha?=
 =?utf-8?B?OWg5bTRiWGdOY25ibjhKVEw4N09xOXBqOXB5andtNFVMbHE2TUp1SkQvSWF5?=
 =?utf-8?B?NUx4MFM0UjExZEkxZGlEaHoyUEZIeUEweEVZNWxYUytMQSsrV3JLeml4Znhz?=
 =?utf-8?B?T3EvN1Jkd29DNnJRNjd6VGlOb3NoVWlSbjB3blpRb0ZwTUI4RHhlOVJTc1FF?=
 =?utf-8?B?eDJaL2s2QVpvUDFTRy9OcUh4T2szWFdlVWNLNkE2amx3VkJkYmJYS1JiclU4?=
 =?utf-8?B?aWVaeGtKY3NZbWlyUlh3K3kzWC9xbnVmbFNGYnJpcEtOU2ZsMEUyZ256eTE1?=
 =?utf-8?B?OFI5ZElSajJYbTFYZEhUOG04bmYyckdSbW4yQzR4Yk9JZ2x0L0Y2YTVyTEx6?=
 =?utf-8?B?ZzI4VWt6UVA4akh3eGtCamppT1dDNHFMNXVNZEc1aUxWTTV5bmZPVmNXM2lC?=
 =?utf-8?B?NlhqdTAvbVBmQlN3ejVXdVkxQkd6YTcvNTB4Y3U2M0tYVWl0emUyNlBYaEtn?=
 =?utf-8?B?aEtWRWlzT2trS3NEZkE3a1owOWoySDVLa29tWUhoaW9JR3ptcVRXSkZNL25V?=
 =?utf-8?Q?ky7fpqs5OXjjG/MRTe9+NIQMa6grMDKl0m/GNUkieXvJV?=
X-MS-Exchange-AntiSpam-MessageData-1: Mv6PPCrWY4V6K6PoFURuy+GAdTcstDtMRpg=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: bd0b27cd-279a-44c2-6540-08dea9b9d714
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7737.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 08:47:57.7754
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nV8lXIOqhAk3v4ZyaIUY1I8lFXsVqbUe1Y+Xx26KRetWEjDgCTyOT5tbwsCzy+wQ+t48DRRv3xC89w2PVk4Ljdkg2vLxmBdFwX4bSN7rQfM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB11358
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 May 2026 08:48:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66468

Hi Michael,

On 5/3/26 10:40 PM, Michael Opdenacker via lists.yoctoproject.org wrote:
> Greetings,
> 
> For an ongoing project with a read-only root filesystem, I'd like to 
> create an image for a non-root partition.
> 
> To give you some context, this partition would contain data and scripts 
> to be used at first boot to do per device provisioning work. Some of 
> these would be removed after provisioning, as they could tip attackers 
> about how secrets are stored if they get their hands on devices that 
> haven't been provisioned yet. Hence, these cannot be in the read-only 
> root filesystem.
> 
> To create such an image, I tried to create a new image recipe inheriting 
> the "image" class, and then install some packages into the image with a 
> "local" IMAGE_INSTALL list.
> 
> This seems it could work, but I'm struggling with removing dependencies 
> (bootloader, kernel, etc) that are only relevant for a root filesystem 
> image.
> 
> Would there be a simpler way to create a non root partition image?
> 

Do you need to generate an image for that partition or can you simply 
have what will be part of that partition be generated along with the 
"root partition" image?

As far as I remember, wic can split files/directories into a separate 
partition from the rootfs, so that would be an option that doesn't 
require hacking things around.

Cheers,
Quentin

