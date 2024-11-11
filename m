Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF10D2E9ED
	for <webhook@archiver.kernel.org>; Mon, 11 Nov 2024 13:27:39 +0000 (UTC)
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (EUR03-VI1-obe.outbound.protection.outlook.com [40.107.103.62])
 by mx.groups.io with SMTP id smtpd.web11.59264.1731331652247984264
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Nov 2024 05:27:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=fM/Kt9Ok;
 spf=pass (domain: cherry.de, ip: 40.107.103.62, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VRPScN8JvbZQ8g2R4iGZJ3HVZDLQtFOYpLyt+S8XirFUlsl7k9qwjxFNi54qZw436VqCrLFjoF5wszRV0SekeQiUd+7bE380B14C9TyvTUiM53bm4OOgah1l8UR19yVSXGVN8LJQ/OYJS9zbaW2Zc1/Iyo0zLYJ7eXf9LVvXbkqzF4Q5oM8NJY7dmYi6ijTXd+bPVBNC7ubXQtO5b4V3TiSpvak/7zOnNLi8Rkt1/KYG7QuBFpirnUDbgZxioYhzvzI3qE4YYGLZEcTGrA7yQAzqixQo9h8dWfwiLfiO6sIbac5lKZ91F8VGWyPD/pkWrdNz7cH/ohmoH3gDpqEnMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vzqIYhwhjmkE3rnuLGhaXDHpLGkN7Ncb5JFFKLqkyWc=;
 b=BTGWhPE/RuwXzGgG6bC1SqS+jaq1oO6jKyBgUX6v5iKBcnElUXyV14QWswXiztW1kZVoN5nJay3c4bezF8+AiKFXwTQIEoPEXNC621RRS1idCxm9ZdrpVez95PF7Pp3RGIn3HdRL9IvijtbmEcI6X/nJPpW9m0fdVlR4CX6WuXW7XnIFGkusm/gqCvgvv99mT7gg/byuCL1I9kX7JN3qFIT++O9YPn7keClyZoBdVQQSwctje5v6+DTDmgUUgnUcYg9ViwLWf0sSgsCXOf/wmV+y7elK9vl8C0T8Oi00Yf6IsgVhB2Oxtr4STdLEEMrQMy4srr2p+dxUvyRZzELCfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vzqIYhwhjmkE3rnuLGhaXDHpLGkN7Ncb5JFFKLqkyWc=;
 b=fM/Kt9OkHVThY+ydhbZwlX3TdU4YqU6mFeozJJGDqpygLs76Q4661pfFn3x6jxcHB893lS6MXk8wpHEcXSwHO5GTR8kQy6dYUb6pUfuSXxrM/NV8CynlNAb6ZVBu6IEngKh5f5/Uw3EybeprvJEkJjs/dqdAw2eTdWCdf1GI0QA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by VI2PR04MB10594.eurprd04.prod.outlook.com (2603:10a6:800:26f::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.26; Mon, 11 Nov
 2024 13:27:27 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%7]) with mapi id 15.20.8137.027; Mon, 11 Nov 2024
 13:27:27 +0000
Message-ID: <c18b2057-5017-45ad-bbe2-f97bc9c3859f@cherry.de>
Date: Mon, 11 Nov 2024 14:27:26 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Kernel patch applying but not on image #kernel #linux
 #patch #scarthgap
To: matt.holmes@zethon.com, yocto@lists.yoctoproject.org
References: <fab37127-0328-4bc0-a770-fdf5d40e1403@cherry.de>
 <20128.1731327730424031798@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20128.1731327730424031798@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0124.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b9::16) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|VI2PR04MB10594:EE_
X-MS-Office365-Filtering-Correlation-Id: 71994ad1-e13a-4f5b-1309-08dd02549601
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?THVXbDFCZjhEUWNxaVdtRlhRTGlpajRuOTRZaG9nUG10NU5EUEx2cU1yWG1N?=
 =?utf-8?B?VFZZemRxWWk1VEJORmh1WlRrdWVpVXJDVzNDS25OUUJYVUxxdVRteFhERjNy?=
 =?utf-8?B?YVpIOXhKekZxRW12WnkzVHJnVXgwWVBTYjc4azF6aDZiTEV1aUNWYzBCNUNQ?=
 =?utf-8?B?djlUVlg0azh1RjFVZHREZndxWCtaR2pQTEtUS2Jza0ZmQysrQ0tVL0tRbVd5?=
 =?utf-8?B?YUZNL05JWmRETkx2SWFWOExHcUdGa2tkQ3g0cG1ERW01MWlRUzZBTjE4d1A0?=
 =?utf-8?B?U2s5eExGdm1MZnBwUm03S09EYXMrWU1MbWMyUUFZK3pUUHhvZE9BRW9tbzFK?=
 =?utf-8?B?ZDlORWs0N3BuWE4vWHdseWZWK1d6aDQ5bW9udnF3WlNCRVA2MGl6cVRUa1RQ?=
 =?utf-8?B?MW96MTd0UmN6NFNuMTViM1B5ZEI3cXBnQ2UxRGJGNk5pb3NUOEpNcSs2YlIv?=
 =?utf-8?B?TkFsRDEvUkplRFZJMSt3bkR2TWV1MkRka3A2eDVSd1VQSGNPYVFtSDhpRzNr?=
 =?utf-8?B?QUVPN0lhcy82eXUzeTMxTjR5U3d6OWJxTllPWTRBeEFGcXZ1ZUNKMUlLRGQy?=
 =?utf-8?B?NWxIUDlGWWl5MUd2RzF1NzVnK1UvSVBvUUs4eWcwYkxRampmZ3JralVQOFBh?=
 =?utf-8?B?Z25oUC9DeGtSUFRMWVA2ZXVXUWJla3JXR3ZMODlnZG4yeVFBQ0UxL0NCdkV2?=
 =?utf-8?B?RXNaSDVvK1oxUkcvYlJwMDBUM2NJRHQ2S3JZNEtnMG1iYlJibDE2alBlK3BL?=
 =?utf-8?B?U09WM2Fjck9iTXoxNzRlLzhsNWlBa0JlbVljVDVveDJxQ0lHK3BmMjlqdXVq?=
 =?utf-8?B?WkhDTlVGSS9kQ2NMN1JDRklHMWJ1M25hUDlvQ1FQbmNnYUF4RkNMMmJtTXh5?=
 =?utf-8?B?VzExWmNwR3RjbU1OeGNYeStZRzZCUXIvUjczamxKMXY1ZkpRSk5lNml0OW5V?=
 =?utf-8?B?dCs2YUNZS0VEWWhQcHNZdVpFQzNEcTFTUi9VNnluL1pIcjZqRTMyS0pBT3Q1?=
 =?utf-8?B?R0RZWVVZcjFrbTdidE4rVDlRRHRveE4wWVZnTitiaERESTJxZHpBd1RXU0RO?=
 =?utf-8?B?YzdqY1lydjRkelgrQWpOZXVDLzRGeXhDSHdhd1RhZk1TNTErRlRFMUM5c3ZW?=
 =?utf-8?B?UXN6aHp0Mm1HQ09yczlXZ0JqTGp4T3dCR2ZYdUJPTXFjVFZxY0J2TFFYUGIz?=
 =?utf-8?B?ZklaSTV4d1hHSGticEkvUHNqTG4rQUlVNUJFNHljSVBCR0xXZ1EzenVkQzN6?=
 =?utf-8?B?VmJHeFYzcVM5a3NFdDZYaUY4UTl4NHA1Tk53N1h0UXczOU9OMmMxaGhZdFM0?=
 =?utf-8?B?Wm5uaENlbUVHeXVZZ3Rscy9ZM3J1WHJDejhFNWd3K2FMcXc4YkFMKzZ3R0NO?=
 =?utf-8?B?M2I1blRWVlpEQW1scVRBZ0ZtOHgrNUloZ0Jtb1VZN3BiUFlhVzk4VGlTeVE4?=
 =?utf-8?B?TEl6OFJoZGZBUmEycE1VdmpVRkhWdERFcTFXUHZHQzRqMU9EUGhWYktwSHY3?=
 =?utf-8?B?L2d4djllU1VvZnBEeCtIOURERTZqbFJqaDA5VDFUWjROcHI5VUtkM1V2UDhu?=
 =?utf-8?B?Qkd3Z2JVOTFGMi9FVXBXdCttd0xBcHBNUU0rTTg4UDhmaEZaZE5FRmFnZE0w?=
 =?utf-8?B?NmpISGRHcXU1a3BOaVA3QTJLREhkZXhyWFlpN21sRUduWVNZWWdXUHpidWQr?=
 =?utf-8?B?SnllWGY1OEtRenRvMVRJRVJCMUxsd3dEQVpzUHNFVERWaDZCbDF1K0FZNHI4?=
 =?utf-8?Q?U70MeTljXRE9rSQcskmu2wS1uJIf6glZUeOAhp/?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RkxDMllTQkMvcDYvSDl4UExGcTZ0Y3hkRitDckdkVzREcThBWnVrSEgzNWNu?=
 =?utf-8?B?UzZsaE1wSjVYWjlMbWxkeXRKUXVkMjZmLzZsWjZoWjZQYjJkYlJkTXZSZEp4?=
 =?utf-8?B?Tk9SNUtFVjhxV3N2V1l6RkVXZ29McVFvb1dvRS9LeFBqR1liUGdWb0FPcWJw?=
 =?utf-8?B?MlYxSE1DdGp3c3lhWEg5WFNCRFM3Z084YnkrMkt1UHdWNC92L0NHUjZOdFdR?=
 =?utf-8?B?b1Y1bFZTbmNlU2tFM2dqRm9LM3RsV0d4SWRvUy83U3VkRkEzdDZPZzJTbkhv?=
 =?utf-8?B?MU03TWFickR2dUp6TjMvVjNPclBJSm9ZcTZQb3pmdUZlYTVrU0RhSk96Z2xO?=
 =?utf-8?B?OHNlVjFET1Y4MWJKbGhvMHZtRUw3RHprZlVZRW1VR3F4ZkR5UUlnZDdjWVZq?=
 =?utf-8?B?TW9yazhIS0E5UHlTSnVmR3hBTW5JMzlnaVh5OFdVNEd0bFcvRXdidHMwOHZI?=
 =?utf-8?B?V0tPOVBNWmpjQjZ0aFl6TzVQamt2TllIOGZIVm9RVnZ6SmlvR0NnU0ZjQmhJ?=
 =?utf-8?B?T2RVVk45MG43Z2dSWlFaeit6VExvc3RJWStjQnhDOGFod0hybk45RjhQRERO?=
 =?utf-8?B?V0xUaG1vY3NzTWtVeTZ3c2tHMmFYc3VRV28vR3FCZHRqb2NEdUo2aS9pVnpD?=
 =?utf-8?B?NHhvdjMzRWU4Rm9CbUViTWNZd3ZNZDV2NzBQR01uSmZzVVVoa3JoV0dwd2ZP?=
 =?utf-8?B?YkErRzg2SkhySzBES3lvS1FtM2FmcmUyd0k5V0lMdnJpcmVRcXVodC9hejJz?=
 =?utf-8?B?NGtwUUNvM2ZUeEh0YnI1dHcrV2JCam50VmpNazduVnFqSWk3Nzdhbk5lU3pF?=
 =?utf-8?B?QzFLTjZGUXp1Z2Rsd0J6aXIyQjhBMmR1amRsbE0xQXdrMk1pRTI1RmM3ZHlh?=
 =?utf-8?B?TWRsUjFrYmNjaE9keW05RU5rN2p2dE5qaTNURWY5SzBjNTdkRWVoOE1Oczkr?=
 =?utf-8?B?SlJWcEs1Y3MxbXNvbmp3VkprQTU4MXYvdHo5YjRWS0l0R2xpcWlqMmVucWND?=
 =?utf-8?B?bnFkZmplbU1WYmlpNzcxWUtHc041UTEzNTVyQ1JsU0tVNHhPODlqYm4xa2Yw?=
 =?utf-8?B?QjlsbEp2WlpTczQ5cGhnN1FuOFFRcncwNDBHUHd2YUhOZ2JyNUs3c0NWdTdQ?=
 =?utf-8?B?TXNkS1UzSzdwNjAvU0JWSDQrOUxadzd1TGRMTkRaUVZpNWhZa0RQUUl6S3cw?=
 =?utf-8?B?eFlFQUVOcHl2VUpFUUZJMWxMejJtcW9RWmszbXhKUkVXa3pXVC9lTnRLQ2Zi?=
 =?utf-8?B?dmdmQnNmRlRWTS9HT3d2SnhQblNkUGc4UWJLNEFPaUMzM0loYkdHM1FqWCtY?=
 =?utf-8?B?NnJNZjVnejE3ZjJUcW5CVVRuTFZsUmZnS1A4YzFvNDBUNlhzdHY0TjdGaEVB?=
 =?utf-8?B?dkVGc0lUSFc1bHdSZHpSU2pJUnNLRWh5ZExHREllWFIySGpNKzJ2a0xFNENp?=
 =?utf-8?B?TmZjYjcwVmRRK2J4aHFnWFdYNGhVMzNZeFQ1NExvcEoxdEZiOUNlbG82Y0o3?=
 =?utf-8?B?Ymh0b3RaMDYvU2l6RWFuMUtHRWIwYnR4d0p6VDEveVhwWW13blBQWTlDY0hT?=
 =?utf-8?B?RC92OWNEL1JDMFZhTnFJSUowK2V3SVdQNXBKK0JIZUc3NG1tbmR6VHFheUFZ?=
 =?utf-8?B?VFBweWoyaDhoSG00blg4Y2dkRU1selBKZUdSTEJVME5SMG9NREh0OWQwak9W?=
 =?utf-8?B?c1QxakdoVGxHVW1rWEtQWGNmMWFYdFNOZHo3eTV1ZmZ3SUUzYXhMcEU1bzRD?=
 =?utf-8?B?N3NPaVltL0tYenhWTlFuNUFKc1lZWEUwelh2Ri9sMXVTYm9iaDdpVW5sKzBh?=
 =?utf-8?B?cEZEZGs1K082RHBaQW0vbzhXeUJVS3kvNHZYZnRsNGIwN2hqVGpyZ3RMZmlU?=
 =?utf-8?B?bmhrNVQySzdYaUh1ZDlUVFdLYy9WM3VWdmJmVXQ1SHlaQlRGVllsVlBsRmQ2?=
 =?utf-8?B?OUlGb3Y4VGxuRGJPam96ankwc2xaekV0czIrSDA0UnI5QndQeW9rTFZpUEQ4?=
 =?utf-8?B?NWo0dTJaVVF3RHdxcE44d2dxdXNjQld5WmN1SGZ6TUlSN3ZEY0E4RXIyNndu?=
 =?utf-8?B?YjBaRm81UHVMWUo3a3gyazNocFJlS0lUUDVidjluTVRZaG9PVW1QRG9xMXBx?=
 =?utf-8?B?emwxL0hpR1FtOThiOEREWFJqcTNRVUFWZ2E0QWl0TWlnaEtZMmJqSnFJWVdr?=
 =?utf-8?B?aWc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 71994ad1-e13a-4f5b-1309-08dd02549601
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2024 13:27:27.5431
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UPUhJwxEuvMdhuUzkSN1OjDZpHFdEhcJYeL2eRCbEAvLRwm0FBQ6RRt7EEpcDM6adt9Wwyy4Sw+LUMaBko0eyyHkCYY+y1IrGRTj0QVpkSU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10594
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Nov 2024 13:27:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64253

Hi Matt,

On 11/11/24 1:22 PM, Matt via Lists.Yoctoproject.Org wrote:
> You don't often get email from matt.holmes=zethon.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> Hi Quentin,
> 
> I have moved the patch to the correct .bbappend file (my kernel recipe is linux-ti-staging), however the patch no longer compiles as one of the hunks has an incorrect offset.

Use the same source for generating the patch that the one that you're 
going to apply the patch to. You could do this by using devtool modify 
<recipe> workflow.

> My main concern here is how is the patch going to work when there is no drivers/spi/spidev.c file in linux-ti-staging?
> 

Is there not?

https://git.ti.com/cgit/ti-linux-kernel/ti-linux-kernel/tree/drivers/spi/spidev.c?h=ti-linux-6.6.y

It's already patched BTW: 
https://git.ti.com/cgit/ti-linux-kernel/ti-linux-kernel/commit/drivers/spi/spidev.c?h=ti-linux-6.6.y&id=af1125de167257740a6887134dca3afcc6b7c621

So not sure where the issue is now? The file does exist and is patch in 
the newer version. So maybe you could explain where/how the 
drivers/spi/spidev.c is missing? And the other option could be to simply 
bump the SRCREV used for your linux-ti-staging recipe to the latest one 
in the branch (or at the very least one which contains the patch you're 
trying to apply)?

Cheers,
Quentin

