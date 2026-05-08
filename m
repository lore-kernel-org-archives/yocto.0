Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DC65CD3445
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 15:20:10 +0000 (UTC)
Received: from DUZPR83CU001.outbound.protection.outlook.com (DUZPR83CU001.outbound.protection.outlook.com [52.101.66.60])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.787.1778253603078374257
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 May 2026 08:20:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=NP+VhEUK;
 spf=pass (domain: cherry.de, ip: 52.101.66.60, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FlkpSoS1ZrNv59SVwRBrXAWujYmygdwEQXiVVgTZU4CqzKBMBvPf7H6+7HKcjRNMkwqDuTZXF6YPHfFqSU1nGh+zCoH2k8pfcbseagZlIoBM4SWv/+TJSXgihu5CWxFOlvaHAU+HhztfQxW/cPrd0+U2tRCH4kzps8SnGzZrLfH5U/9F2zUutK2Z7MMjPJWSdy9Tyk8++1UfVA/yvAcx1M/JypVoyB7Q0yZOBRR0B9JDlx6VrlhMXfeLaW5XABcCzim/itg9JvWg0YN8oC+1BHQNFs4jdvtkVv4MZWPT199AErWfe7D1bH2ld54bOBve/wpwALYx54NH91muqXLeAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mBXPle9OhEx/FRhdmwFPoUFFd7K4jaK9+5gzHcJZG5w=;
 b=aGVmtFAcne2cBoer+CINfekExUOwZQYeQbgHc5SeYONCRBe6AVr8ITg75JsbkLtK1akftOJ3B+7JCc25rOhOAqdH2oTIlwMgDdq2c0YtQcnOc6RLLZzi8fG5HX5rjO06XAoDIOG48N31IEhr6JisRykHS0i7aX1ZR8Uz7l40xpLB0pGyTX33Vetiocis+nDuESz47tVY3tobTFce81/bSyQWmx8qgy8hH4iGxy74m4+UXAsO+GI9j6/ls9NTsGrzRZpFLxc9xswmiXucci9g/RbVHo535JM1HSrp/S5O0GuN30Avy1vZkazCdQM/gocb2jBC5jcLE2clSBd2mdtfLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mBXPle9OhEx/FRhdmwFPoUFFd7K4jaK9+5gzHcJZG5w=;
 b=NP+VhEUKIBvU6qr3ki+905z20K70aRvvjj3kLeLbxD2ZBm4pCbC0UviR/9FB1yjceuATX01Uv7pAIwU+VS0aXX9YdyTMAJ/0nJZdPVQyTd6d6FkhwcCjlv3drbTCriZIreXN7ZD6Gj9bcjlANUbKb4Xga7fimZWarh3CpN4JdPg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from DBBPR04MB7737.eurprd04.prod.outlook.com (2603:10a6:10:1e5::22)
 by DUYPR04MB12643.eurprd04.prod.outlook.com (2603:10a6:10:65d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 8 May
 2026 15:19:58 +0000
Received: from DBBPR04MB7737.eurprd04.prod.outlook.com
 ([fe80::5960:fb4b:9313:2b00]) by DBBPR04MB7737.eurprd04.prod.outlook.com
 ([fe80::5960:fb4b:9313:2b00%3]) with mapi id 15.20.9891.019; Fri, 8 May 2026
 15:19:58 +0000
Message-ID: <9752b7f4-0682-4f35-943a-73c819463e26@cherry.de>
Date: Fri, 8 May 2026 17:19:56 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Sprinkled examples of layers that use ":append" without a
 leading space
To: yocto@lists.yoctoproject.org, rpjday@crashcourse.ca
References: <6498b6d3-0aae-5d73-d6d2-2561a20d582c@crashcourse.ca>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <6498b6d3-0aae-5d73-d6d2-2561a20d582c@crashcourse.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: WA0P291CA0022.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::22) To DBBPR04MB7737.eurprd04.prod.outlook.com
 (2603:10a6:10:1e5::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DBBPR04MB7737:EE_|DUYPR04MB12643:EE_
X-MS-Office365-Filtering-Correlation-Id: cf8b9c9b-b4dc-4aa9-91cc-08dead154402
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|376014|56012099003|4133799003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	N5+83Wy7Eaay3svm9TCcY7LlAr5hBV6LKgCxBmr51c0RLguUnaY1Aq2rJ4KZ41UWJD5A/a2sDOLvSOaMk0f1yIFkUkjCm0Z56mFTy2PIgkrinEA4ERThQo+cI7atfBR3g3bUvk5cF0fpmChPWbSqAjESKRRittN1vZ0ALrydHWfYzvfGBLTBHd+Fg06CNRGBuL21xaeUkpimYyfqpL3720BsRYr7FNKldRaMtpBgqblaXhrNOft0/KEciyBjyAEyrUmvopp4/wYswpMytkqaJS7vUTLL8tGZtQW2lnuMEZPxPpYWTdlN1mDBZLCWgrOCwoouY3XBE7k11wUxRwreRhlSzrYdQpexfr3tpUx/lMpvU2G465+4+4KDDRNK3pFhm+VoIIho0DjzoZ2gdPT9XZ11IiwtOXH3TaSdWrUu0/yb+tvvago/8ToLY5TLkVFfuKodum+CaD1X2E2mnmgG7HppIlYurd1blkc+9ojo6ulZRhKUg1H1Ix739xCMQZyxiwqAg6fof9l476kp8Hc37pH0psF5L+mOxZnSG/k9USLKGxVWW5GkcWhlFBcp2bEAwLuP7jzA1gZXvMXVDn4YpN7hf0bSPYRylTXUDpAFoxfWuH8ou2ffBWBHdDCnsKiwF4ZRxDn0hfE6fAX1ocXy9g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7737.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(4133799003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WWdscnhSVWYzQTV4djdMOEgxcFRUVU55OVZKMGUrUGwvNVRSc0liZWs1Mkhl?=
 =?utf-8?B?Y3JxTElaU1dkL0ZEQUR6ZExMNXR0ZlVOY0ZTYmxFYzkzZFB6djlxSVM3NVZ3?=
 =?utf-8?B?RXBORWFOMXJodFFTbGpmWlczU2cxVng1TU5GczIrK3l2VlN3a2V2WCtnQkp3?=
 =?utf-8?B?dUVDdUtvYWxaQWMzMm9LWC90Ky8yYnV1WjZDT2toMnMvT21WQjdwK3dhVkdi?=
 =?utf-8?B?Q3VyWElqQ2h4ZlBFcXFBZ2d2ekVpVTFaZFdMdG12ZE5DQUZxRlFycUtLYXJk?=
 =?utf-8?B?TzBkeS9obXVQZnlSOEdrU0FJUFZJOW12azBPWDlJR0xkNGZyTTY3dkNIK1E0?=
 =?utf-8?B?UjFLb0t1d0YzaExTM1l0ZU9MZERFZXcwREZROUdvRkRxUnRsWVdJdkpBTlps?=
 =?utf-8?B?ZitBZTJpODcwWjcyNnBzZWpyTXAwa040cDNYY3QzcDl0STdlZENQMndsUCs3?=
 =?utf-8?B?QS9lbjFSbFRnSlc1bjVnN1VvZVRHNllmQ0NXSE9FVVBnc2k4anZUT0JSdkpZ?=
 =?utf-8?B?c0p3Qmw0bHNaeFk3S25VcUNzT2MwbUhLNms5OUl2ZVVqYUt2d2ZWNEoxaUYz?=
 =?utf-8?B?RW1ERld6bk1FY3lwby9MZ2J2RXJ5TElZTE90SUtqbGU5eDVva1JPUVRCVDlu?=
 =?utf-8?B?amdyK3RobDV1RVBIZnBZMWtDNzVScjRDUjhyc2JTUThNRU9WWmsyV0V2SmR5?=
 =?utf-8?B?NU5meVFHb1NzakM4UWQwWXFpSnNobmMyZmdGYkRBTEZSNXkwR3VJUzV2VkQ1?=
 =?utf-8?B?YW90OFdwaEUyRjZkakltcGRxZEFVTFJFTDlySm53UUtGVU1Td0l5UzNZMm9D?=
 =?utf-8?B?d204QXZPcW9DOWJYNEttRENLQXo4QXdsMDE3cUNhTXRSNFlrV0t0dWdiRHYr?=
 =?utf-8?B?c3QwZTRXOVo4T1RqOGQ1OWZUKzN6cUZSTVFqZERnRmk4bkhBS1pydllqMHdp?=
 =?utf-8?B?UG00YlY3K3RMZmNnYXFLODFoMGFUbzB6dkVqNFRhV2VvYVB2VEFpUWpuMyt2?=
 =?utf-8?B?cFNSayswUW90aSs1aVU3TXFEV2JsTGFoYi8vZGZqbSs1bkQvSCtJT21FSzhV?=
 =?utf-8?B?M2pFNW1nQlJ0OTZTMVhjTGZjbE0xanZnajUzTE1BTmFudkdIV0ZPcFE0eExM?=
 =?utf-8?B?d3NMeHFhQzg5ZmZQNHFvYTl0aFZIemxland2anhyb0k3ckRJL3JBZkdnaUhj?=
 =?utf-8?B?UWdxZWJZclhUYlFiN0dHb1NyQUFOaUJDM1hGeXhWLzR1VWp5NU92YkdsaW9U?=
 =?utf-8?B?K0NLRTNvSTFtdnRlQjFhZ0xUL0N6QStNNkduUmhXN0p0cHN2QzdiZVgvYWlD?=
 =?utf-8?B?K2dIR1VWd2ZGL3d5dzRRd0pkR3dPNDAxeFNyWFNoNjlMOGxSOGJ4eG5ISmYx?=
 =?utf-8?B?ejFTTnEwV2h2OHJhckJ1ZVdEUFdkTnZ1SlFha2hMcmlYMkZCVFM5RzQzRzJV?=
 =?utf-8?B?Y212RXVBditNaUIxaHl6RmpEZEtrN1pYSjhWTWRIR3BoWStIMWZCOTU4SlUw?=
 =?utf-8?B?SmgzNDBScEYyWWk4S01oaHRiL1l2ZUp5U1BRbTVWZjhJb0gvUXdqekVpSnlw?=
 =?utf-8?B?YldOTU5nNExMbXp0Nkxld1NMWEtFbUgzQStkTVN6UU9ITVR1cmpKVFBSTXhj?=
 =?utf-8?B?M281ditJblpBUDZTQjBrTnAyR2NrcVJpVVplWHhGUzhBWVh3Uk9WY1NpUmZX?=
 =?utf-8?B?N0c3REphVm5peVpjbHNIaDNiKzdFbGx1MEhhdlhqUGl1NmhKSndtZlNFMmtE?=
 =?utf-8?B?eFRHTURHd0U5eDVMcXB2ajJleW1udmtUeHVzYmFhNzVFOSs2anNJUDR5U2pJ?=
 =?utf-8?B?aHFrMU5FL29wd3AyRWUwYjhsdFVGcXJSNit1dXB3cWlpSFdtVnJMVk9HdmlX?=
 =?utf-8?B?WE43SGQ3ckJ6Z3hacFQyQkxzRWl5UmplT2N5NzBzcFprRDF0NUhDaDU1R3pI?=
 =?utf-8?B?ZDQ5aXM4TUliamxaOXB4SkNMdG9qMzQrODNDWE42WXdEQ2pwTVVJSElWYUox?=
 =?utf-8?B?b2lsaXM5ejJXZHJyQk9GTUhmT0NQS0tWWG1lUUp1cmFLV05JUnRTYzJCOVN6?=
 =?utf-8?B?WHdCL2xVa1E4MGZQNG5OeHJNZTNkK3VzZjJwQnR0UG14bDBHV3pzRTJaYUNY?=
 =?utf-8?B?eWFuaVlObWIvY202SGMzV2lQY3o5Um9vdHF3UXVYaGM0RXhuY09Nc2RvTWpK?=
 =?utf-8?B?cTFoSmRWZ0hIcmhyTmR2U2J0bWJPYUs5VjJnYlZzWWlacCtvU2pzS2NLWG1r?=
 =?utf-8?B?QjI0bStOSHFuWUR1YURYWXN4OVI4ZDhZVmRXRkNiMTN3MTFSUmUxQzM0V29i?=
 =?utf-8?B?d05UWnd5Y2hSZTQvbENSbU00cEVGYzJtMnQwcVJRVk5jaVBueWxiQT09?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: cf8b9c9b-b4dc-4aa9-91cc-08dead154402
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7737.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 15:19:58.2064
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U3U+tWyeeOvhAKPbyB8qaharhw8+fYj/9NAWUbjvksq+43hxwZjDB1ttr3aeK0kpXINkrc4e3yWTuXpfn56n5yIyU7J2b0RWc9vju/TeD4s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DUYPR04MB12643
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 15:20:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66516

Hi Robert,

On 5/8/26 3:24 PM, Robert P. J. Day via lists.yoctoproject.org wrote:
> 
>    Recently, I noticed the occasional example in some layers where
> there *appears* to be a missing leading space when using the ":append"
> operator.
> 
>    As a single example in the meta-virualization layer:
> 
> https://git.yoctoproject.org/meta-virtualization/tree/recipes-core/kata-containers
> 
>    kata-agent_git.bb:RDEPENDS:${PN}-dev:append = "bash"
>    kata-proxy_git.bb:RDEPENDS:${PN}-dev:append = "bash"
>    kata-runtime_git.bb:RDEPENDS:${PN}-dev:append = "bash"
>    kata-shim_git.bb:RDEPENDS:${PN}-dev:append = "bash"
> 
> Just thought I'd point it out so layer maintainers might do a quick
> check on their layers.
> 

The meta-virtualization mailing list is not yocto@lists.yoctoproject.org 
so your mail here may not reach them. Please send those trivial patches, 
it costs less time to write and send the patches than telling the 
maintainers to have a look and do the work themselves.

Cheers,
Quentin

