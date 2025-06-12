Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBB66C61CE8
	for <webhook@archiver.kernel.org>; Thu, 12 Jun 2025 16:51:56 +0000 (UTC)
Received: from AM0PR83CU005.outbound.protection.outlook.com (AM0PR83CU005.outbound.protection.outlook.com [52.101.69.28])
 by mx.groups.io with SMTP id smtpd.web11.143.1749747108102876931
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Jun 2025 09:51:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=FknrGTjq;
 spf=pass (domain: cherry.de, ip: 52.101.69.28, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P1aEFqYC4MipJRelrGDDaRoOIOfUevCTwu1iQ50SqaiPkAv0Yei6/ZOfE8uGaGQuCfOLkd3Gi7bOXwJ9HFZLF1A+2wdQ0OQLRTfP5Y/Zc9fz3Trso23gQ0c40vQpkrbyTOvb7GlznYYQXwsHi9WAudMtbw/jJ6eL+Qs1hTDIFJoPrpiAnnUoT8n+xaj+OFVD4S3WxybgRWvnAEzktd6KXm8Kx0kmIq/zeuLy90ZxWuIgD7TAxvoyBL58HgSLDOLKyEphvadj/tXI6+Rwzb0ePFQOykZWvbTT3d0+vhrR4KqhaXRcWR7TxM7tI7Te3U0k89aOYxn2QAard/LzV9Y/mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mo5Det8dzt2PwtQVrRhJUQunDuruWlH/kidMtswuFi0=;
 b=iVchTZ/RbNQ/lujmxJ4B9wr9YQ9syfU+ZN9Dc1U5/E/gpNBpSs+OFwwSUPd5NmyNHM+OV9d4jxzZdJtmBiNvImg4DRRh/VHCCq5ut9lcFHE6cu7izXJycjRTji2zqj1giJmK8g0uxmVbhWmXzeTgEYoUFd6Rf6AMmAyJ/urFhXSioHzwkvLtqL4mrfz7aQc9Hs7+DdBtEZTJZS9EFbfbW6Bt5zokBTfUUrrTRhhuKEMfv3v4BrBqcn/+ReAbgHK0ptZO5+4MQPGMe17Z1DxScpmbqEhhgpvUNtiEBAAdhy0g9nM0fz4p+lGegNbCj/pBgl081Lm34QPyKRTEB963bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mo5Det8dzt2PwtQVrRhJUQunDuruWlH/kidMtswuFi0=;
 b=FknrGTjqRreawj4KbeNbeV/JtxpfWJYV+yyHg9tkpH4ARUVyiLwqsqXGK8im84vUQs3BMuVcrvAhlj9tIDbM6oPBeuYp+TFWGDdl/opxYWW4wvel6og7BwZnkXq4vxPATFJdlK3C7P0vz+vTcM9V5Vyly/6jGmdcgq0DhNrX9bc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AM8PR04MB7763.eurprd04.prod.outlook.com (2603:10a6:20b:246::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.19; Thu, 12 Jun
 2025 16:51:44 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%5]) with mapi id 15.20.8835.018; Thu, 12 Jun 2025
 16:51:44 +0000
Message-ID: <e4d934ed-4041-4648-ac29-95b37defd5da@cherry.de>
Date: Thu, 12 Jun 2025 18:51:42 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] How to manage linux-firmware recipe
To: yocto@lists.yoctoproject.org, mauro@faresoftware.it,
 Marco Cavallini <koansoftware@gmail.com>
References: <e8b3ebf1-1636-4edb-af41-421464ff71b2@faresoftware.it>
 <19279.1749711955494286548@lists.yoctoproject.org>
 <5f9b2079-b6a2-4f8c-aa26-1827ed4aa252@faresoftware.it>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <5f9b2079-b6a2-4f8c-aa26-1827ed4aa252@faresoftware.it>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P123CA0217.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a6::6) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AM8PR04MB7763:EE_
X-MS-Office365-Filtering-Correlation-Id: 0757d949-e8b1-45eb-dabb-08dda9d169ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?QkR1R0FzVVNEZGRyUHY4R2pvbVZrUm1HS3d4VEovNGh5T0FHRUlwT0hTcUJR?=
 =?utf-8?B?VlFGcVVZL3RQNEpVb0ZpQU82TDRabG9RNUJUaEdnVnpLaUN6TmJMdmMraXQx?=
 =?utf-8?B?d3YyWjVINjNQbDFXT0VCNUhYdjE2K00rSC84R3BlUm1lclErK2d2MVlDSVlE?=
 =?utf-8?B?aXBhMEltcmNhdEJUVytZZDdiVm1VM1dKQmFsUHdRdk9KdXRZc1RBZWtCUTAy?=
 =?utf-8?B?ekVOemJ0MjVWd2YvMSt1aklwaHRNZG9ad21hSXdwdjllbTU3UzUzTXFFUXJt?=
 =?utf-8?B?cndoRjBTR2pMeXZubmZqZWY1U2NhQmkrOWVvT3lGdm5FbUNiRzdGNUNQTllN?=
 =?utf-8?B?MXN0NFcySUxlSDVpZVFxT053ODhIQjlZanhzaXgxNFhGeHNKeEhwWHlzcXhR?=
 =?utf-8?B?MjdicmFWblRYL0Z5M2FYNlNnRUpGdEplZGZ1Y3FOczF6VWJFNmNoV2RaZHE2?=
 =?utf-8?B?QzlNZkN6M0FldWdjZjNyWndnTWE2eEN5ZE14S1hzZmp3ZEpFVlhvckxnNUZW?=
 =?utf-8?B?QkFBR2FneEllLzJ4c1pHUW43azIvbkFXd1NXeHVuQ1cvZG1IOG5IbVYxU0dC?=
 =?utf-8?B?UEZabTRRc0FFMDNnNmpnZmcvTHlkVUsrQkxveUpyK3ZBeEhoTTFsYWcvOC9Y?=
 =?utf-8?B?dm1UVlp1U3paZ2tuM1Y5RllDNTh6bkZoNk1sS1BMQm14UVB2MEdpVTlIMnZl?=
 =?utf-8?B?QytjdTJkUTM0SWpJTXRVZStPQTBpMmprNmpsbVhUd1BKMkFwMzlwUDJtQjRX?=
 =?utf-8?B?eUpmQ2x4MnpxUm1hYzdGclJWM3VveUsrL3RQV1U0RDRwWFpRaVdHbmhOdExF?=
 =?utf-8?B?WUFWdFFXWUNhaWl3dlVRYWlaMFFwTXNnUWdvaWg3cVVGS0VvMTdoQS9Gby9L?=
 =?utf-8?B?aHZuOWNHRjhuNGVITlVvUXE1MG1oRmx3eTR4RDEwbk90Y1kva0p6N3g3NE9o?=
 =?utf-8?B?N3E4RXVZU01ZblNWM29qeWg1dVc5TU9NTnFBV1ZhYmh3NFhVR3RpNzRwT1hO?=
 =?utf-8?B?eWovdXpEZlQ1eFlFVmhPZmxRUDVVNGtEZHlMZlNmaUM0ZjdWQ3Zua0FvODhC?=
 =?utf-8?B?TEtsVys3cnh6YUFkd090VnpmeG9ibjZwNTNwSVNaVUxxWnV1MFlqTmFPdHI1?=
 =?utf-8?B?SFRpL1lUVmRuUGw4OS82cGZZRnZKN3VTOHFUWXJUQUlFRzZXeWFtQU9YWTkv?=
 =?utf-8?B?VHNJdG5XemhNQ210ZERjTk1VWUtxVVhlVXhkYjF5OC9YelMwYndRbTNmS3JP?=
 =?utf-8?B?TnBVekYwU01oOW1URi9CcXlPUzVZMUp4Nzc2eGhvWDNPcWk1VURjQ2dpUy9y?=
 =?utf-8?B?TmY2bmI0SjRTTklOcm5sVXhKTlpTLzB3QitZQkxzU3FGMWdkRXUzYkp5WnVX?=
 =?utf-8?B?ZjlqZGVEZTdLTDhhaW82cVF3NXloL0Rielk2ZHM5NmRkajNUaHNOWUxVT1hZ?=
 =?utf-8?B?eUgyblFRMXlMV1VKWnRVVFpTbjVyMjR5dDdRakN1SVNVNzNYV0IwL2RSM2Jw?=
 =?utf-8?B?L3d6emV0d2ttcE9IVnZtazlKNVNWRWFVcGhNU0tENlRZeWZNdmFNWHBETlpU?=
 =?utf-8?B?WkFUbCtVN3NEVDNhYnlJc2EzVkxTQkp2b2pSOUVWVmFDTVJQaUUvSlVzaXhu?=
 =?utf-8?B?N3pMU2N1Y1hINU1WUExLSHpGUjdJZmRLOFBBQjRhaCt3WDE0aDJUQUlQdVdi?=
 =?utf-8?B?anMrTGhjZWo4U3NtSVcvbHRMeFo4dXV0QzZtelhxU1p6WTVRR3RpT0lXRXZO?=
 =?utf-8?B?RGI5RlhuTGRUdUVtWTd1L3B4VytQckZtRUlqSm9SSlkyY2ZHZzdzYWRFMk4y?=
 =?utf-8?B?NVM1TFY3M29VZndTU3RrQWNNeUxlZjVzNnQ4dVpCT0N1ZHlQdndRQmlrVHlP?=
 =?utf-8?B?NHM3aGdla2VyVk92QVVoR3FBRnJXWXN0V1ZpRFc0OTRER2hnVTRDUkNGL2dI?=
 =?utf-8?Q?mmNl9E4enTU=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?M1B1LzVGZFBUZjFxTm5UWEFpaHV4c2JpbytkSmNhNFplMGwrN2dtUEVMbFdk?=
 =?utf-8?B?TDVwSzNXeXZpaTZNRzRZZDROTEd6bXcxRVJDT1VEZmV2em00QlFpdXFsYjM2?=
 =?utf-8?B?ckExSnZmeGtSTFNlNzhESjFXUWRaK09Wdmp0aUNzVFZjSHRNeDZZL2lrQmVW?=
 =?utf-8?B?M2lhNTlnQjBnSlgwWWZFRTFPaHFtZnRmbUo5VU12TXc1bmhWZ20wTU9BenFz?=
 =?utf-8?B?Wm1GamoyMkpZc3ZTYXZFb0gwWHlXZU1hd1hTTEUvR0NXdkJkdE5wdENLVmI2?=
 =?utf-8?B?dHBhYytxUFJ4S2NVNXdTaFBIOVphYU84NTdKY1hSZ0l0b0ZiWVMybjNTVDFQ?=
 =?utf-8?B?ZGtyWjdWSmMrcVZqZ2YrNVl4YjZOWTdlN29KWVFBeDN4SFFrYlRHaGRtd1NX?=
 =?utf-8?B?VHhyb0c4b29HTzdyeElOTW1EZUZaMktjZG5VVTZ1UzZnMzhSMURrTktBaW1C?=
 =?utf-8?B?S2ZvSjZzYW8xb2YyZmNWZDVxTG9mNWVCMDd4ZndGa0tpS1hzRmo4Q3E0a3RZ?=
 =?utf-8?B?aHlKakJuSzUya3lGNmkxVHBmSGhSeVdyNlppOU1NMEtWaW5FeTNzN0g1R2ti?=
 =?utf-8?B?SnRvcWkzWmJGSnpFYkMwUFpWbk1qUmlHWW1kRHc4WlhrZkhYY2Q3VkJ4SDR3?=
 =?utf-8?B?SDJWdjlzVlZyN05wc2FGUUphTkdRNkJLY0gyaXVibmplQ2liVkg2QzVQVmoy?=
 =?utf-8?B?aVFEZ0U3eERCanVpaEpnOFN6T1M0aTcwSUtRZTNxVGNraGZ6anNFUkNFMmt0?=
 =?utf-8?B?TTFlcEJvYXNGS3NLZFpTWkRqSjBlaWdqbUNLb09MY2V2TitBc0d4TjRZRU9U?=
 =?utf-8?B?blZvN1ZYYXN6VE4vNGRCSDJWYmF5WlRxdjEyNDFicnp5ME0wUTRGcmlkdXYy?=
 =?utf-8?B?N093VnhhakFFSDFockcwQm1aSDJ0azZVUmY3ZSt0VlNDRkZ6dlpNRHdFVVVB?=
 =?utf-8?B?S091NFR4TjlsN1MrOXZGb25PM001cE8wdDFxM09UcGhZbTlEZkZCZVJiMndS?=
 =?utf-8?B?SXRzR1BwSHpnYWhJK01Yb0NYTFRIdkNzK3BUQVZNN1lDbll4Q0E3cGxnS2Rw?=
 =?utf-8?B?cCs4cVFUQWVFVUNWQk90bDJiNFVKTFFKbHpZYmh5RXNpUjVSZWkzSkdlUkpF?=
 =?utf-8?B?YUJYT0FyejZCNWxXeUw5V2RKMlFUUVZBVWtGMytHL3kxbkh4TU5mekE4d1gz?=
 =?utf-8?B?TU9RNEUwR3UyR1ZQSTZvcUNyYjdBSEdiTW9vcGIyS0JpSkZ3emp2K1MzRjRX?=
 =?utf-8?B?dW5sV2N6R0pzcGYrS3dUbkdyZ08wb1QrNDRTV2czTWdkaXJITU5lakVPQ1Q4?=
 =?utf-8?B?MG41em9iRTFXTVFJMmFYZmVOM1RMQ3VyV0F4d2pJRzgwaHFvdkVqS0cxUGxl?=
 =?utf-8?B?bUxiRkFYMTBlVmtzWVBKTkVwK1pBM2x4NFBmZzg0UndtUmd3MFN1cFM0K2JQ?=
 =?utf-8?B?ekp6cVZzVmYrTHJTTzVBTTUrS0FFSU9EeDROQ2I5aDNSU0NrNlhmdEE5cG84?=
 =?utf-8?B?MEdpWUQrendsaXRxaHBoaS9yOVNGek9rSkQvNGZxd0ZrMVV5dzlDMk9uOHRw?=
 =?utf-8?B?Sng0bTRRSlQrQXdYSXJyN0hON1M1bXc5MTVqa1F0MDEycnBrTzdvNXZWQmdw?=
 =?utf-8?B?R0dPSHYxZFQ4U2FGdnFhcTNWNTZJQlhEZTIzWnUrNXNpVGx1d1VwWEVIQzRN?=
 =?utf-8?B?ckZ4VnRSRk9ESW1kY2VmNGk1WUxsMHJoVlozREVFZ0hDRzdBYWxFTzd3VkRV?=
 =?utf-8?B?eGdaVEVwR1h5cDVtSHZIbHdUelk0Sk11M3U5My9DN3E2bFVDb0kxVDlqK21x?=
 =?utf-8?B?RG42UFE0MnY1NEMrRmhxcmx1QmNqQlZ2aVYvUFk1RjZiUE1za24xaC90ZjF1?=
 =?utf-8?B?cHBWa0U3NzBYNWVjMlVhRVpXOGp6b1FUc3JHcGpzYTBOdk9BMjRzT09aR2Zt?=
 =?utf-8?B?SUM0RmZSdW9VYzUzbUVoSUI5TXcydVlEdXl6OGdoTllBL0x3UXYwWVdxMGdm?=
 =?utf-8?B?bFhmaUpXampXTWlxZEc0Z3Z4SFkxTEpMT0NVN3pqaEEyb09vYkVLN3VDdXhx?=
 =?utf-8?B?WHE3Rklldm8rK2FMQmZ3K3NjWUJkb0E5VjQyNUlrK1Q4VXB6TFp4ci9NbTNl?=
 =?utf-8?B?UVNjNmF4UzRaN1ExckVJS20xYmhsS0dhbzFzckVRV0lydHdJTFE5SThPTGxM?=
 =?utf-8?B?WEE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 0757d949-e8b1-45eb-dabb-08dda9d169ab
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2025 16:51:44.4440
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1cQcWs0mxmfw63ID/xT30WLAmpb11bJy5TG6MvplG/xzshS1CXPQNhjQQyAO0AScJTIZd5T4S9x6AqZhHufF69mXsot11z4Mnub4khqcd98=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7763
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 Jun 2025 16:51:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65509

Hi Mauro,

On 6/12/25 5:39 PM, Mauro Ziliani via lists.yoctoproject.org wrote:
> [You don't often get email from 
> mauro=faresoftware.it@lists.yoctoproject.org. Learn why this is 
> important at https://aka.ms/LearnAboutSenderIdentification ]
> 
> Hi Marco.
> 
> 
> The "master" recipe comes from poky
> 
> ./poky/meta/recipes-kernel/linux-firmware/linux-firmware_20240909.bb
> 
> 
> In my layer I have a linux-firmware_%.bbappend, where I tried to change
> the content of ON_GENERIC_LICENSE, to remove some firmware.
> 
> ./meta-mz/recipes-kernel/linux-firmware/linux-firmware_%.bbappend
> 

Just install the package(s) you need instead of linux-firmware, e.g. 
linux-firmware-iwlwifi-7260. If you know which files you need, you can use

oe-pkgdata-util find-path '*/your-file.bin'

and it'll tell you in which package it is.

Cheers,
Quentin

