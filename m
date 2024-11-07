Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D88D5AE7E
	for <webhook@archiver.kernel.org>; Thu,  7 Nov 2024 09:57:23 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.65])
 by mx.groups.io with SMTP id smtpd.web10.68710.1730973429957982589
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Nov 2024 01:57:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=dwUbz7RW;
 spf=pass (domain: cherry.de, ip: 40.107.21.65, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y9Tf8frZd0/DGMJSKR0vigyzYFZe/5k7Zodz/12wlFCzKKZ9qVfnHgu+BrnzvI0veftpJ3wO4bR7NJ+KOjQRA+7VRscPf/9WcnnOV9CjsFBNJ22v3BfNeMtQb55TTZzz3wdJUiPgyfGlmUG6c/KNB1zDquFb6jyLjzp+CUsqz//PLIFdWFUQhVma28sGsv6idCU1tgtiqC1ujKpm3+34Bk2s8cxpd3NghJr78zjZrBSsRWl2BHmxwIgOaDGgxJxjo4C+OfY7lUnolHjv9X7aMWAAbNy8Vgx4pRHIdvfQiPvkFy93kedm0KMJSeTbmujm/gElVlJvjDiIoLx1dkOjBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TCr06BUoEubMhWwN11rIvz/yY7/nkEIKXCbNLCkhP+8=;
 b=yURJoyuCsqF0QsHMjb8CNJ8WDxSokFLgml+Bj836xH4fmKx3eWiCLSjy9SVYYVf700CIm8CC/jumI7BYdSHDR4kOMEhUOQKdG8kGrSRy/ag2gKe9Zacr/sanNwWDhRf2/DECquVXGwOjBIxWh3DFoSGA7MdcDq9EoVwlDCTUMUVVFP0PUPrG1Y1VBwuuDKOGMqie/+d6F39KKhaxEmvF0mkOuuLjYwf0QVFjro6pQH4+BCCj9IvoZB0yYYfzODyWKklfgPXBMT5qbRNrEMtZUTCepqtH26EZjcfP/mrYaOpTm+UKSO8Wg4D3Yatnpd8L273uh4JAm4FPG4p3fYAZUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TCr06BUoEubMhWwN11rIvz/yY7/nkEIKXCbNLCkhP+8=;
 b=dwUbz7RWp59tQ3aq05VX3Ji/IIaWWwmUlMnK4upRwj5bREyphesi0s9AeQf1l/MQE3illnXBeOZnwF2sTrEGQSlOGfZG4TCQoOG7r6gJmGEntebGSDN5RXrizJQ00Ox1tXBH385/e22X3m0WMmqkLVoyeOQuePtp7IkJAdXT5nA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AM0PR04MB6898.eurprd04.prod.outlook.com (2603:10a6:208:185::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Thu, 7 Nov
 2024 09:57:05 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%7]) with mapi id 15.20.8137.019; Thu, 7 Nov 2024
 09:57:04 +0000
Message-ID: <4e77d221-831a-4985-96cc-8e9fcb301969@cherry.de>
Date: Thu, 7 Nov 2024 10:57:04 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] exclude layer from specific image when have multiple
 images
To: yocto@lists.yoctoproject.org, haimbachar2008@gmail.com
References: <IToB.1730964196493730746.P0kI@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <IToB.1730964196493730746.P0kI@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0134.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::18) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AM0PR04MB6898:EE_
X-MS-Office365-Filtering-Correlation-Id: f54f22b2-6ee4-4860-240d-08dcff1288a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?a0IvU3loeHZaTHcxdXhQWlc4aU5FaFNDR0t5b1JjRGtxWUZqV01OcnFENENl?=
 =?utf-8?B?bEJXNHpSL2l3VDZxSjEwVFZkQkY4cTJOQmlOaHY4YjBvUVRteXJIai8zMzI0?=
 =?utf-8?B?eXM0SGhITFdRWjY4TG8rSHlVclBVcGVQL2pMVEdsdXZjTG40S0RNT2lqV1hx?=
 =?utf-8?B?a1I1cTZSWnpCUi8wU1k4eXhUVGhhQm9PRE5IU3ExMUZ6RlBvT3puTldBQUps?=
 =?utf-8?B?MUozSldwWk0wVUFCN2Jmcm55UzIyK2RYanZDRU1ybVBxMnpwWmJkaHAzbzcy?=
 =?utf-8?B?UUJQVnphMG9WYnNlOVZWb0FHQ0Njejh3TW5tUnF2NWxNK3lUOHIvRmRDYTZU?=
 =?utf-8?B?Unh4cDhHWUhTcDRyL0RJZXNYREt6Zk5KK2hJZlNmeklIaExTcjNWV3NtZUdX?=
 =?utf-8?B?UmRTNE1QR0lMbUcvaWpFVjhlSVh0S1JwODZ4eXNtV0hsTk1Gdm15VDJSVEp3?=
 =?utf-8?B?c1NtSElmRGJsblN1VzlOa1lKRW11SXIyY21ISUsvMWh3Vnc1blVjR0tKS1M5?=
 =?utf-8?B?YUFaY1BCejF1SHpNQ0JCWDVGcnFIcmJjK3ZNeGJmU245VDFJQWw4YkFwQ0lQ?=
 =?utf-8?B?NjViemVpMmhZNjUxcUdJajBBNzhNclFYVElKQjBnYnQ1UkltNVhoYWYwK0J0?=
 =?utf-8?B?aFFMMWhKT1dFYnhDSFl3bUZ4cDlqdzZPTjczb1FELzd2MlJYdXkxbTJ6Rktw?=
 =?utf-8?B?TjZuRU1oRlRTYktHcW5CSmZGVHBOQ0psVzlKTDRhV1RUU2Z0TzhScGJUbjJI?=
 =?utf-8?B?UjFRdm5uM3gxN1ZpeFh5UjlQT0hJTHpuQkJoRWNrbjNOMGgwYmw3S1ZacUV0?=
 =?utf-8?B?SHp2TEFJQy9nVXhVZ24rakVWU3ZKR2J4T3MzZmo3NnB1YXc3RGlwN0pXSzRn?=
 =?utf-8?B?NnYveklvNVhsbmV0cmlUTE9vTEU2S0YxWWxjUE5zVkdrVVRFMWN3cyt6UE9C?=
 =?utf-8?B?dU1Kbjh1eU51UnNzenBLQkF5ODA2MmI4Qmdza1V0T1pwTFRFKzZUWDhyK1dn?=
 =?utf-8?B?WjVuVVExYnBuU3prbERFTXhxeWdxTHRGcUxHOWZMWDdwTzZFVHlLMWZPRTQ4?=
 =?utf-8?B?eFFCNXNwVkRJMUpVMUpnSjJwbExQSGFSaW9ydFNKZENhMVlJbVllNndyQU5s?=
 =?utf-8?B?UmhLTk9zTWRYMTRpdDdVNkdtMkNWRlJ0RURVakk5dEFyMWpzdi8xTHVQck9K?=
 =?utf-8?B?YWJ6OWlWMVovWE42MnBic0NMNnZEODV0UEJLRXp0Yy84Z2VRQXFhSVh0aUg2?=
 =?utf-8?B?a2paS3ZmQ2RyNHFGdUt0RjVYK1ZvOXQya1J1SjJMV3NIMDdFU1JNNG5Gc2F3?=
 =?utf-8?B?YnVmUXhzeE1UWTBlS2NJYUYxeDRpaStnRGVaZVQ0dllXR2FaZ1ZiMnNqRk1V?=
 =?utf-8?B?OVNJMmMvcDdwdXk2OTVCUGh1OFZnUWJqcHZBUmR3VTlHQ2tJbWZWTHI5MTBr?=
 =?utf-8?B?MkFlbmI1cXVISTl0c20wWEt5NFdPNlRnLzgzZDJOQXVXbmlxTmJzMUFjN0lR?=
 =?utf-8?B?QmdjODRuWUY2cmRHZmFiMWU1bjVHR3Vab09IbjF5eXdCaUNTZ1k2QXkrbWtB?=
 =?utf-8?B?Qm9zT3FDaUVpTGROOGFkdlRVVmlqbU5URkFidWtWcGpiaWJHUUUzdi9wSkdX?=
 =?utf-8?B?a2lHVnJ0UlI1VXN3SWtqV1RUaXUwbXRUUWp2QUhacGNVY3NnY2syNjBTdlBB?=
 =?utf-8?B?QlJOM1VHWlJaTHdHZGExMU8rMGRjTDI1TVhuSEdCUGFaaHgxN0pTVTF5eWx1?=
 =?utf-8?Q?YdqsQKLuy7irUpKEZYr7/q2a7Z9EgqbBGNfl1P1?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZmpXNTQvMVhzTW0yVDJsdnJYc3g2U3RXelRIRTZGQ0lqZ2FyTXdIUTNjcUNU?=
 =?utf-8?B?NGU5SXdCamtLQWdQY1BtZlNoRk53QWxsN1FoWWVBcEJoSktBdVQ0VTBwVENw?=
 =?utf-8?B?V3BwWitUOStMS2V6b0czYzRzVm0vb1ZPTUI3VEJITHNTTTNiemJ0aGNoTzF5?=
 =?utf-8?B?SzRsNnM1Q083SThVdkNiSnV4QjVQQ3JNRWh4N1lwQW1uVWtiR0tocVlpQkN5?=
 =?utf-8?B?MHpVNkhPMUxNZis3S2g3NTZwNzR1SXQvMjZPZmp0eCsrRncrdjNtc3dQSFdy?=
 =?utf-8?B?cXdiajFwbUM1SjBzNDBqT2dqMm1yVTlkbEM3MitvdnpJamFicEtEZXlyT1F4?=
 =?utf-8?B?M3ZJZ3U3YXF0U0tVNEw3WEJhWEIzVjJ6bTVGMktUZXFpU1RKYnZlK0dTWVI5?=
 =?utf-8?B?QVJHaDJsbWdUUWMvMks4T1c4NnZHdkx6THJqUEVoMlhGV0F6emNkbThWSWdD?=
 =?utf-8?B?ZnV0Nk5TYVFNSzVZazllMjFlaFluUUF5cEpXMEJnZHgyMHpVL0xEeU02QUJj?=
 =?utf-8?B?Z29RUG9hbWdSeGxyUUoyN2xmN2ZtL1RTVGc2S0hkWHltbnVlYVJvbmNjeDFW?=
 =?utf-8?B?M2JOQXdYMUlrQzd2VkxXbmN3c2FuUit4c3BweS9NV3dRZGFJQ2l4K2pveUlL?=
 =?utf-8?B?Z1l6ekhoZ3BNR04yU3BjdGVYYW1KcjhSYitJdWRFVjRXSmlsZXBLUWtWMU82?=
 =?utf-8?B?aHFpM0F4dnBGQUZzdGs4a05rTmk2c0cxQ0tzUFRqbjlZYTYzMTF5OEVQci9v?=
 =?utf-8?B?TE9zSXlRYkF6RVZ4cUZoSFB2UzFSVmRkalZGcEV0TU1hZEdkRTNoSkswdmxz?=
 =?utf-8?B?aDFRTUEzSGF4QThsOHdtOHltZ1dRMXZBNitzcTMxcUtFZitLb0NYOGZJVjJE?=
 =?utf-8?B?S2ZIaUl0bmlPRWVTSnh2VVhiYzNNQmpERVpZZ3I5eSs0YzN2TGduclp1SGVz?=
 =?utf-8?B?MVhNQ1hYV3pURXRMWndIcGpweUhiZW5hS2p4Q3ZnUGk5YVF2eDZ4WHorOWdn?=
 =?utf-8?B?Y2orcnE3UUNFUFBQallFTGJEWFF3WEVHaTdta2wyWVlTOVFLbGlZODkzbE1t?=
 =?utf-8?B?cFYrRHE3am5UUWdOSG9FaDNacmQxSHFlSE91Q1hwV2o5d0FHT0xmZ0NjNnFE?=
 =?utf-8?B?Zytvdy9NbWdmRk4zQmx0U1UraUhMUjc5eFJZNk9SVEVQeUY5OEpTc3BuOGt4?=
 =?utf-8?B?ZmxFVHRndlF3QlRTQUpoOTdQNWNpcGRNYzN6N2daamladVg4RThjWjIyQ1NM?=
 =?utf-8?B?L2lHM2hrUElYNU9JUHczRnBUcHZ3allNTjU2SnNYeU5NTGN6NTlHV2xTRzdD?=
 =?utf-8?B?TXhrUkJ2M21zQzN6dEQ1TDV4alBxM01QdmQvNjI4ZHJjNUh2aFNWdVdsTmZ5?=
 =?utf-8?B?dHd6ZjByS0UyRFpobHpDY1duNHJsZzlGdEwxQ0FqSGE5azhCQWJoSE9JbTZX?=
 =?utf-8?B?VnZoQkNlSnRkUERpc2gweVBjYzVQRlRFdWtTUDZ6Vk1EN0F0VUdFNkRnajhj?=
 =?utf-8?B?WjhGZnVoeUxGMjhobEllU0JIQzVXeU15WUFCRHZpYk9yekxIaVBpaEd4RS8r?=
 =?utf-8?B?V2VZRWVybGYrakpkTUFTWUVmSTd0ZW05RlgvMEp1cmVxb3lUem9WeFk0dDFZ?=
 =?utf-8?B?TUgyN0Z2a0o5ZFg1bTNHNnVmTFh3UGlkZ2dGeFE2dFJMNkkrcFZydlFMM0c1?=
 =?utf-8?B?eE5BL3o4eW9rT2pGY0lJSXVFMU1HaGRBN0pKS092SFQ4WVRDcmtub0ZueEVj?=
 =?utf-8?B?TEFhdGFPOWxmS21LOU8xZWZPTUxESGxKckJJZHkwN25zenFWRkNpYzlTZGdr?=
 =?utf-8?B?MVlFSmFJTFlaV3NuSW0zQXpMenUrRURCeEdSQzAwdjh6R056S09GWmdRTnRI?=
 =?utf-8?B?SnNFUkhmS1UyQ1FoalFxNGJMeFpRT2JuMmp4bVU2RE9nVkxzOTFPSVBCN3Q2?=
 =?utf-8?B?bU5xdVl2dDd4MWlMaHNaN29DVDJiZXJWai8zZENOcHRNdEp0bjRNVGNYMXNN?=
 =?utf-8?B?RXlIOUs2bm1QdUNiV25UcUZHN2VPbDhBSFdzWk1wa3pUT0tXSzJZSDhnbS9u?=
 =?utf-8?B?MTNnVFk3Snp3RGJIaXd1T1hGamtpMEp4elhUQUpjNTBjbTdMNkZQNVNuNm5y?=
 =?utf-8?B?aFRNSDk1bHNkYm1MdXVyN1k4c3FvdzZ3am5TUHN1S2NVVnVBdTR3VHNZS3ZU?=
 =?utf-8?B?NVE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: f54f22b2-6ee4-4860-240d-08dcff1288a4
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2024 09:57:04.8503
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ushFYdXF/LUiFu0MSjFDcw1YQSGlP0qyBwqqkgk6v+OqG4vOu+fU4+cRefX3HoBi+64TQE51Xmvyr1u/DpBAx4tLz9BYUG7OFM3Ja1Qslro=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6898
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Nov 2024 09:57:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64228

Hi Haim,

On 11/7/24 8:23 AM, Haimbach via lists.yoctoproject.org wrote:
> Hello,
> 
> I have just wonder if there is an option to exclude specific layer to specific images.
> 
> For an example, lets says I have 2 images called: *image-A.bb* , *image-B.bb*
> And lets says I have the next layer: *meta-my-layer*
> this layer is in the list of the bblayers.conf.
> 
> Now I want only that *image-A* will include that layer.
> But I don't want that *image-B* will include that layer.
> 
> Is there a way to achieve this?
> 

No, this is not how BitBake works. Layers are included, then recipes are 
parsed. An image recipe is a recipe, so you cannot have a recipe remove 
a layer. Also, a recipe cannot influence another recipe, only 
configuration files (distro, machine, layer, bblayers, local...) can.

What exactly is in that layer you do not want in image-A that you want 
in image-B?

Ideally, including a layer should NOT modify anything. If it does, it's 
usually considered a bad practice layer and one may be able to do stuff 
smarter (but not necessarily).

> I can do it with SRC_URI:remove the contents of the layer in image-B .
> *But I want to use more nicer approach.*
> 

What exactly are you trying to do?

Cheers,
Quentin

