Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C75C0C83F34
	for <webhook@archiver.kernel.org>; Thu, 17 Jul 2025 16:29:39 +0000 (UTC)
Received: from AM0PR83CU005.outbound.protection.outlook.com (AM0PR83CU005.outbound.protection.outlook.com [52.101.69.53])
 by mx.groups.io with SMTP id smtpd.web11.3325.1752769775301351781
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Jul 2025 09:29:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=lnUFm2qa;
 spf=pass (domain: cherry.de, ip: 52.101.69.53, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SzYElXPL3trGTNokMxO0j26B7E74oe3BFxbHREsxkkjapVt2aAxEM0CQMXTOo+dcF1MrB//ZQgBWK70z9bUzt6AHiNMM4JZOdSwfm/cVjAm0D2x8F+T8Yn8iXcWBitCUNOXCfXVnqjykT3W0B3ygg5L4kZDSd+Fx7OAYT9nvLdOAtv1J/CAt8ahJvQ4a72GxFs2G6B0mYhONG5jvONPITOj4dvhuP9fDLA0kGyM86O5QwET463aMATS16RVczoHU5DnbXsL3PC24nRIf0sbs71JdGaQMOyAaU6e8QC50X8lLnsmS4KruKV/X1gfAPXaraRwFaVJG91dpxNRhdUxSew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AaRlIAnE5eBZVLE/SXKd+gtA7nlTlh0lVzdNcf1mOHA=;
 b=BLABMqycmFC6PAui7CljBhOBfvclbGdWMB4bpCss+3yY/eguVp5WiWZSh8NwYcigD5/RLo3spLkpMxSGZ+/ZR/TF5bKvy10+BiVla4JxwM+qYjrt/pSb1oO9CaRUYvj3rLFn0LffkYyOfQbS6xUliZ7ie9xbbL9rAwabvpsvQyT8t5frm4wpc5j5iJwI5tFUyx24PyrmMXroxLedX2XYL6H2ti/ek3BbQ/Rzt8zN/yOMIR0IiKYfy+y3D+bUvcYFndqBWKTOL86Qblq6BNDq2xplgUVBd87YC7cuD14R2nJAVjh7eiI3XoldnEx4lvCkT7FLKy5wGBBgPRAMyQziMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AaRlIAnE5eBZVLE/SXKd+gtA7nlTlh0lVzdNcf1mOHA=;
 b=lnUFm2qaP/MgrFl9nf5T+thZ7lajTFrF6CqkD5iuyuTZsX5RUCMjZYQSpl6go6OBQ/tggcH7t6m5HR7+pH1rqAvlFNkS1YrMzU6D2XtaOLbm4TYfQW536nqe6nd+/NLNmV6+hRyhKeBT21fglA0Dg63ez/c37BJ0SDlJSKIfuBU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AS8PR04MB9175.eurprd04.prod.outlook.com (2603:10a6:20b:44a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.32; Thu, 17 Jul
 2025 16:29:30 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1%4]) with mapi id 15.20.8922.037; Thu, 17 Jul 2025
 16:29:30 +0000
Message-ID: <e0e5b150-55a2-42ae-9d90-ec2f0023c93b@cherry.de>
Date: Thu, 17 Jul 2025 18:29:29 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Environmental variable present in do_compile() {},
 bitbake recipe -e, but is missing from do_configure() {} #bitbake
To: yocto@lists.yoctoproject.org, joseph.maniaci@seagate.com,
 Alexander Kanavin <alex.kanavin@gmail.com>
References: <CANNYZj-153HOf3oC_=8PYLwtDYqBQQFNE=hP+JYXikw3YDa7Rg@mail.gmail.com>
 <20575.1752769457005932864@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20575.1752769457005932864@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P190CA0043.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:800:1bb::6) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AS8PR04MB9175:EE_
X-MS-Office365-Filtering-Correlation-Id: 2fb83efb-de00-488f-8b68-08ddc54f1ae9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?T2xSdUN0TmlQRVBTRVcyeEtGUlVZcTJRWWJ0b292K2h1dVhGUzBGN1VlcDBv?=
 =?utf-8?B?WnJpU1NZWXc4SzBBL2dEYzhpUzMydlJkM1dkUkZ5MlpOS2NXZ3JvWmpMdFg5?=
 =?utf-8?B?Rjk4cUo4Wm1KV0tWNndWcFlWbXpSQUhwU00vbi80ZUZaRUd4ZVUwYkI4Tlk0?=
 =?utf-8?B?Q3Z6Kyt6NXhUZms1VUxNaFByZktQZXF5OXp2M3JTUHdzejlvaUh4MHNYWVdn?=
 =?utf-8?B?dGpCTFNlUW5ITUlUV0lzb1NQaDY0cFhLTzc3SWcwbEdBbDZCWHc4K1pFN3RU?=
 =?utf-8?B?clN6VElOVmRkZCtVMzVTZzFHUVdHbUFnSmxka25seVpYcnpsU0hXbkdGTXAz?=
 =?utf-8?B?cERzWk1kUTBSSCtrWllzQmpjaW80MlFLSllCTWJ0c1dFY1dQWE9HTGxub0RP?=
 =?utf-8?B?YXBCZUxpUTh4bU9VODdEcFdCV0RMYTByTEpYNDVSMURwbHFRUHlIYW51Qk9h?=
 =?utf-8?B?c28ydkxIaHl2ditwV0tKbkVOSVd6V2t2TWVRc3A2Ry8wZzJFNGRabngzSU0y?=
 =?utf-8?B?c09GVW9tNXkyTEVyNnZjS25zV2E4MDlKL2M3RTJseEdaTUJDZm9zbXVQbzJv?=
 =?utf-8?B?NDA0S1Fyc0RZSFBkRHd1WFZYUjRKN0VkY3l0bm5RMnhzOXV5REVpVlN2Y0Y1?=
 =?utf-8?B?TE8vZm9VV2VGc1pBeTBHSWt3UHV2QTBOU0JXNDg4U2ZOMURCdDRwN3hTS2JP?=
 =?utf-8?B?WDVrY0VkZkNmRENsNzNabVZ0S2ZtMGZpeXgzZmpIYzN0RGttYVJmbW54OXZC?=
 =?utf-8?B?Tmh4dVZUcVVpTDl1bWpHUk9kRlJVdVdqeVg0aEhMU3lQa0J4R1IvMFFaT3NK?=
 =?utf-8?B?b2phNXhYaFhKVkFHZWdnM05MQjhTV0VoR0ZXUkU3Tjd0Vm53aXA4OWt4RVVp?=
 =?utf-8?B?RE9Mb2l1VnNCT3czRC80S3F1QURNUktVOVRNZXc5d2JhT050ckUweXUwMHZT?=
 =?utf-8?B?NWpJUEt2N2t5a1h0RzNVbFM5U0xxc0t6VEE2UGE4TlFaUEdqWG9UMGJzdm4y?=
 =?utf-8?B?dDJWbkYwOWtZY0tScnE4V0RYd0NmNTllSDZHM2ZXZHlrdHo3b2lXb1ZyZlV0?=
 =?utf-8?B?SHh3OXZwY0JoM2JNM1JabjkrQUFmNUc0c0dIN3ZJNFlOOFRvMjJuM3hBM2hB?=
 =?utf-8?B?V3E2YUZFRW1STllZcEhCTTZJeUVLQTI4ekNZdU94Z2pEOVFPQ0JPQXB3QzBk?=
 =?utf-8?B?NmRvYnY4MmpRbndKOUhvZFkyMk1jRnlMVmc1UTF3WW9ZQzA2NU5YRjFGeUhT?=
 =?utf-8?B?WktCRStoaHpBTFFZYnIzVVNjQ0puVFlDbzZWK2NFSkdrbnVyZE5Zb2kxRWwv?=
 =?utf-8?B?cis0MUN1cUhoeFVNd3VxQXZPOGZBT2hPU3Rhb1A3K2Y4MDZYVVo3TENQMGpJ?=
 =?utf-8?B?bTU1WW5QY3FYdUJFaUI4cmViSmF3RllERlFkVXRWVXB2VkkvL1I2WEhhQWc1?=
 =?utf-8?B?ZGJsbkQrcHJWU0xkU2NuZDAyVTBNTEhiRkNuQkZndDdUSVRFMTFQeUowUWNy?=
 =?utf-8?B?ZlNvL2IyNk9vVkROZDRLQnJXZ250b3R6RXdqaXFpZHBhTXUvMUtXU2NtekNF?=
 =?utf-8?B?NnhIM2dnTHZPaS9CTm1DRjd6YlpaajBMRWpTbTVQdStMTDR2SUNHTDNzVi9C?=
 =?utf-8?B?MmFOR0grb2hiVU1KVk9WUklROXRwdFpkblBSNCtxdUFmQzNaVzZTd0lFM08v?=
 =?utf-8?B?M3dvaEF5b0tkWkpvc1VBelM1SEdld085RWRRT2pwRkN5ZGNLTVhsS2o1Skg5?=
 =?utf-8?B?Y1NDVGs3OGtTZ1c0L0FlV0l1aTllWWZOdzF3bkpvQXYvTXNUNDBxVlFUVnd2?=
 =?utf-8?B?QzZPeWQranEyTEdnRVJYbmtYT1BXWnpJZDlqTmN4OGppeWgybEhXZEZDMkNm?=
 =?utf-8?B?c3R0aTV0S3Q2cWVGSFZ2ODBsRHNQMmlodVFXUGhuT2w4ZjhxRThaYWRueUpa?=
 =?utf-8?Q?yytSbWJRrHs=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?a2UyditqQ0FaL1UwODJIaXZmTzNtbEpEeVdmekZ0Qmg2cW5kSHpPVXhac2Rv?=
 =?utf-8?B?OURnTDlYU1FReXRRRzNnSTFhK2FBb1dGSUgrWnVHdGRWYnRVODhFc2Z1a2Jt?=
 =?utf-8?B?NlAycFVNNkIwZnoxWElwaDFSTyszdGNvR09IaENHSDJOQlVjbGFWNVRWVmRH?=
 =?utf-8?B?Q3VEcFpXL3EydVl6TWw0TWtsdVp2T3EwbEcwZHJRbDNYWFZvQnFEOXBJVmRx?=
 =?utf-8?B?NnJoekpOLzZpOEgzbmU1eG5aZTk1MXRCNFhWVm1kTDF3akI4T1IxN0I4cHVq?=
 =?utf-8?B?SnpDSXRDZ2xEd2dOcGxDSlZpVjRRSU9qUHYyYm40QndibWN3S3N5Vm5UNHJE?=
 =?utf-8?B?SzlaaGtuckRBNUduUjJ0bkN0Z3dSZXY1dFYrMmpRZ0tpaE52QXVTdktaZXgr?=
 =?utf-8?B?dENORnVmZ3hSVlc0aXB0bmdWSUd1MFVOVjRZaS9LZDc1RE9OY2tJSVRIdTN3?=
 =?utf-8?B?bERWcUNEWDRlOUF3TzFOZk9pWXlQdjhib3ZCSE9OT0FGd0srVW5UOVJZSVNl?=
 =?utf-8?B?WGcvUThwb3Fib0tsbFNOUktDMnJYZWc5b3BCZG44Y2xjaFZFaDNzUEtiVTB0?=
 =?utf-8?B?NHpEL0VTWkY5b2E0R3ZOblJURTN6ajZPNjdrbmdOUFlTZFY3aHpCYTlsV09W?=
 =?utf-8?B?OVp4QlJseUZZMDZQdUplUGpHR3VyTW0vM211NDRKZm1OWEFuYk9YRmNka0dG?=
 =?utf-8?B?ZXlsZlZweVF4VUYrUG5NMUZCSExjQnJRVjY5TzdpbVBaTVJOM1lBbkM5WEdh?=
 =?utf-8?B?Rld2V29ZaC9UbnQ2T2xaWTZLRmVYRG1vZmYvTytTMEcxR1p6M284OU1RcmJk?=
 =?utf-8?B?VSsyQXdtZDBTNEd1SUpjZG92ZS92djgyUmZqMFU2WGIvazYyN1g3THRmMjRV?=
 =?utf-8?B?WHJ4RTlwbVlnSFZqRmZvNTJ3N0RJcVN4WmsvMXljbE5UZUVaUlM5Q0tMS1pX?=
 =?utf-8?B?ZFNhOU12RklTNm8wY05PZ2FLbDA4Q2ljdUJMekpwT3FKVVBzNU1EeGJPejI1?=
 =?utf-8?B?T2ZPTjdsQkdnM1k2Q21TSFdPeTZUZUo2VmpHT2VEcWluTjdNYkZDbmxXdWRn?=
 =?utf-8?B?d3BPMjY1U1ZnR0taNTJqaUdhUjZzallWeXVnOElJUEwycTBBM0t6QXhSUk94?=
 =?utf-8?B?ZklsZmgwa0NwTlhxOFVhZkVHNWp5MG9taENETkQvYlYwVjFWUmM5ejhVdDF2?=
 =?utf-8?B?OVJJWXpkRFNVNDlpRnFqenRMYXlvc3RKZ2ZqaGM4cXJKd21OMEVReXNPSzdz?=
 =?utf-8?B?bDVyWEpQN0ZsNTJVeTVmVHRyRUI0Y2xubVFKY1hTd2wzb2lXUWtLdENoUlFZ?=
 =?utf-8?B?UCtmaTNNNmdpdW5nVkdMQzZVVEJqRTY5VFpPc1ZobVpmbXFuU2lha0N6OUFB?=
 =?utf-8?B?azFmUzdLbGY5VGtiQk9RTFVmbGxCbUpKYVB5aTg1MG9WcHJGZHJZMVl3c0E0?=
 =?utf-8?B?UHpTQWdvblVobG5iM1ZTOXBiNm9Wb1lwdWVRVUFyYWJNSHdJbUEyeCtBaUlW?=
 =?utf-8?B?MlZwemxFN3pKaTlieENCUm5aM1UyRzBmU3FkazdGZ0tnYkM2MGF4elg5VDNT?=
 =?utf-8?B?TjVOVjRLbEUxaVkxUXBoM1c2bXdYQ3N0Y3JCSXJnQ01TejVjTzFncEQ3RFhF?=
 =?utf-8?B?ME5pK0QvVW9aS2ZNTk9mQ1YyQW5WVHpURFI0d0JHUnRBRUdwa2wvWUR5UXpx?=
 =?utf-8?B?WHFjcXVuYmlOcTFDcXloekJPMGhmRHpkT0twMzhyc2FZemNMZEoweU1HNGxv?=
 =?utf-8?B?UHI3cjBVNGdzRm1kVExpMnFheDNaV3hWTms5UnhTMys3RjNSS05ZUVMzQ0JL?=
 =?utf-8?B?aEpVbG1BRlBDd0JtK1c4dlM4RmNTUHpGSE80OXU0bkwxdWIvVkxHS3Nad3N6?=
 =?utf-8?B?TVBzdVM3N29MMmcwc1lnSFE0ZEhxQW1JZWc5cXRhVmtRN2s0MjBGZUtGZFZK?=
 =?utf-8?B?N2VmeWhESHRiV3BkSUY4OWpaU0p1emorbldFbjlRbzhpdlhXOXQzWGlodE5h?=
 =?utf-8?B?aDBpMlVLMS9mZ29qYkF6U3pqSTJ3Q2FmQ3E0OVVaNjV2Q0tDK2JmdnNSN2VK?=
 =?utf-8?B?ZUoxYndrRXBURUxOeEVKWEkreVlRRkd5MHRRR1l5cVJBelozR2RYcWtZellk?=
 =?utf-8?B?eXk5dEU3MnVjYTRGTDV2YWhJNTAycHY4QlQveGh1d21UNHZmaC9qN01RTE5R?=
 =?utf-8?B?ZVE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fb83efb-de00-488f-8b68-08ddc54f1ae9
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2025 16:29:30.3955
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NaxK52nGJ00S8+fi518WWt6svxhE2/C0hemoqQJYoOPsbouyXOn4ZDFV5bgva2EB14k1H6KoPPFMXKkddiP0u9E7zvqdbTuGdWuYFCWYo6M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB9175
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Jul 2025 16:29:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65675

Hi Joseph,

On 7/17/25 6:24 PM, joseph.maniaci via lists.yoctoproject.org wrote:
> So in experimenting, I learned that if I did a 'export ABC=3' in my environment followed by a 'bitbake whatever', the ABC environment variable would persist all the way to the do_compile(). However, what I found weird is that it is not present in the do_configure() step.
> 

You need to allow environment variables to be passed through to bitbake. 
This is done via BB_ENV_PASSTHROUGH/BB_ENV_PASSTHROUGH_ADDITIONS 
variable in your local.conf for example.

So you would have something like

BB_ENV_PASSTHROUGH_ADDITIONS="ABC"

I believe.

I'm surprised though that the variable is found by bitbake at all.

Cheers,
Quentin

