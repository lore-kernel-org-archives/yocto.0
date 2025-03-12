Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34240C28B28
	for <webhook@archiver.kernel.org>; Wed, 12 Mar 2025 12:47:29 +0000 (UTC)
Received: from DB3PR0202CU003.outbound.protection.outlook.com (DB3PR0202CU003.outbound.protection.outlook.com [52.101.65.59])
 by mx.groups.io with SMTP id smtpd.web10.35949.1741783629080575938
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Mar 2025 05:47:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=kUba6Bo5;
 spf=pass (domain: cherry.de, ip: 52.101.65.59, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JY9IkWz+6Ncty8mEOfZQUDawyAQ6Jzts1wcmlBO4p/1hqqnUg1lO9WUj7kPQ/BenxPtjlQDZnsyqw6SXZmjeUE+U1oP/aFsA1SdvQe2piySfDrWHUR7ojPszl0QPx20CshpHwjuNSQJWRAM7copPzR7eOAQn12y/njcjDt5aoxDOpgSBKt25Pqx8L0wE/lGEQVwkqckggt8wZ5xTT6XarTIW4dO2iooSjWtrsNFIq1cP2u0/G7rISvXRIN0PpFYjLIou/n6Y7ABOg9anH/KC9OxSWT0EN+UVdj64wTPOgzX/t47nVGkO4frtE0OjA+KjmXDmrBjRaBoRAWktWxIAsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7TwgaVEe5a9JFV3JYWgwbKam/pKWOYfoezt+7nJf/C4=;
 b=LSTQqKitzNM6BuSEzXrWWV4B8q/M1IgVdPOYgq6tyNchaA17mh8dzTb2JDp0MO9l8niSeeHSJGjHAdrlIZ2iTWHuSsf8BdCsJEZ/XNDMVMNLdFtHfp7YXsOm9/E8+DOhUhemXR+rD4Ea+SVcNKV7syGRfGAtxxj2XIBtUc7N2z7LH5nyUbdgGlPahRPghkVvsvL4JrV+Gmf4C49X0QqDwJF4qQ8dCngWELemFraz6gpWmGafmeNi9jCMz44OWOWewWvo+jZYnbXjmU4ICZnmU6Nia8kUK34dKyTKsB12fXlo6z3ZF7G5Ar8FDnEpB1fOhe4ARy5MrMjf9jn+KIhGvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7TwgaVEe5a9JFV3JYWgwbKam/pKWOYfoezt+7nJf/C4=;
 b=kUba6Bo54KJForm5Vi8OMInwrJtVpeeAsysEqfhr+D6zcCWp2X1mDqfJWb6ssEyHDlyB101sKBv34s7HGEBYvmGxHvBMP1/M0b9CPvNKBzqpAGLECuuPCEBEwuSMIHVpOW+XXH+eEptlusCh/JF/Raaq5IQcB1iOaOLt2r7K5k8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by VI0PR04MB10951.eurprd04.prod.outlook.com (2603:10a6:800:25c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 12:47:04 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 12:46:58 +0000
Message-ID: <52f162e1-7f75-4ea8-9d37-eebdddcdf2da@cherry.de>
Date: Wed, 12 Mar 2025 13:46:57 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Linux LTS kernel upgrade strategy for Yocto Poky
To: yocto@lists.yoctoproject.org, mwen@ambarella.com
References: <yBST.1741783392825809496.3HmV@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <yBST.1741783392825809496.3HmV@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0020.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c9::18) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|VI0PR04MB10951:EE_
X-MS-Office365-Filtering-Correlation-Id: c85068f3-b937-4810-b770-08dd6163fa18
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?THkyYm1jZlFPZGtKQ0prbnJQclQwU2t0OWp2R0REd0RYQzFOVEdyTktIYWF4?=
 =?utf-8?B?SG0xSnNBaGh2d1JGN1U1NjFPS0M3d2k2Sk03OWNCWWxJbUIrbUJENzdCZzNK?=
 =?utf-8?B?L2FDYmluczNXWHRQMTNGZ2l2QjBScndVbFRaNzFXUlFSanNMSkYzcGM3bUNO?=
 =?utf-8?B?R0lEaDlId1VNYmRiKzkvSzJVTXptQWJSQ3dLVGpqa0ZqbEJhWTN2UzQrNjRC?=
 =?utf-8?B?MUJiY0hGVTJna3hNcGVjL2luaGxoMm5HaUViYTdodnAzdTk2Zzh2QlVRZ09h?=
 =?utf-8?B?WUNPUXQyK2JqbUdVd1l0ZDdpM0JmMWFwMEpleCtOK2s1TW9GVlZ6QWE5eEFp?=
 =?utf-8?B?b2gxc2lwS0dVV1RyN1pIVmhTSkdjdThBUFcyemptRGtVMFJ3YUJGVktnMTBY?=
 =?utf-8?B?UnhyRUo2OGd1dDNxRGFzOThtci9CUWFXaUpEZ3dhS0pIOVc3UzkwVU53UkhP?=
 =?utf-8?B?OUtLU2dTWjVSU2lUV1ZCNllEZ05IL1k1VWNvcGk3UDFBdnNFSWUzQW5qQ2xH?=
 =?utf-8?B?eVVEYTFnZ3A4OERyOVJjZzZVWldXY0lOWXNRUkxZejFzN3FMWHVyQXNsTnJp?=
 =?utf-8?B?WUhURTcyeGxtMVI3TXVjUiswT2YvajNzbGxuTktET2V6Q0RUcW1VTmh1VVdl?=
 =?utf-8?B?VVcvWGFtcmtRRTZBSUh4ajE2cjVBNGhPTkhicWVWWkQxWHhvemRXUi94MEVk?=
 =?utf-8?B?RXhWWlR5ZWN4WFV5ZjRhSmhWMjVFcXhmTGtybnA1NmlzV1RWcFVIUEoxQUtN?=
 =?utf-8?B?TEljQmpPTGVXOS9XU2tJc0hwZWxvVjZubGxPdGtKYndHYnl5bFZGNXZjS1Fv?=
 =?utf-8?B?dDBFSXR1VWM3a3hXVUdJNm9MbytHc1JodFBOUGQvRlZMRE55bm8xc2xYWUlZ?=
 =?utf-8?B?T1FmMS9HUnUxV1I5a2FEWWh0d3doQXYrM0E2WDBwNElaNGczSFZsZ05kaUtq?=
 =?utf-8?B?VFdLLzkxMXpaSTlzdUI0SFdTWnBjVWhuNkphMzFsVFZFS0xTblo5TDBRc2M2?=
 =?utf-8?B?OFZLYjhzQXdCd2R4ZGZBR2tMUzNlMjdNclkvZWZlaElRaEk4dkgzM3NmVUhM?=
 =?utf-8?B?OUdNUjE4Q0JRejVuRi9aVEZmbzUrWEI3RlVUMkdyWFlUdFk0WC9GOWFmc3lF?=
 =?utf-8?B?U0I2L1R6NVBDWjRNMHowR00rbmZYb2ZIUHZHbHI2enM5amluVkQreU5MbzJT?=
 =?utf-8?B?N050K20vejNOL3M1YmlaaG5GbzJjeFViWkRMcjhDNG1NMVh0NTZBTFQ1VFZw?=
 =?utf-8?B?T2lWMlR1OVJOdFlZTGhiQ2gzYjVzS2RFK2hidVlQay9aZzd6TVlTam55TExy?=
 =?utf-8?B?a0FyOFJKM3NZRm9NbnZSeGNzVkw2UHovYVFhSlRnZEJhU1JVWWZodDdjWklC?=
 =?utf-8?B?cEFUZjZSQ0ovYW9sYkNpbzBOS1FlNmZ1VEhDNStEdUxGVXA0U3ZVMEx2cHNS?=
 =?utf-8?B?N1dXK3dZVWxpQVpqVmxpVkJibGJDeG9NcXU2SWpKOWQwK3JBZzFNNXdobkw5?=
 =?utf-8?B?c1VhTHJoSU0yRTVGZE1sQU5mRTR2dDBRaWk1d1Y3WjhZanUyYUdOeUp1VkM4?=
 =?utf-8?B?V0RkWVhyNFgzSGw0R1ZkUmNkbGVsYzBEdU10eUllZmU2bERqbFd3VFNWQ0pM?=
 =?utf-8?B?RjR2TDhSZzdFSXlYd1YvWEQybnlVaEgyclJUTFh5VUZYTlZ1QnEvY1M2Q2Iv?=
 =?utf-8?B?cWlIZGpteTh5NFBEM3dudklWTUVjK1ZaNytleEdPeTE1eW5BZzgzbkZQZFlB?=
 =?utf-8?B?MzNZQzlySDMweEVlZWFYNk1rNjEzZGs1d1F5T3R0TEdMS1dtNDc1UVZWZWFD?=
 =?utf-8?B?S1VqOXBEWmVhVHFkVzlVVS94NXZOYTNVT2txckY1Nm9JdWNPKzBUaUhvTmZn?=
 =?utf-8?Q?fqJYx2kaLIlXl?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RGkvQlE3Mms0eHlWeHR3OTMwMFNkWXZaeWJwUHpWUVR1ekFRVWpOenZQeGRk?=
 =?utf-8?B?aU1IVGlabWUvU3lZWFpJUWdLMzNRbkp6eTVPYmovcDhkcHFOS0oyaU5rWUVD?=
 =?utf-8?B?eDlMVHVUeDFwcVpDOVpoR2hjdzZLTmd5WVNYbnpicDZpRXBHZWRHRHNZVTRF?=
 =?utf-8?B?dEV5V01kd0VVQ3dsbGtNQmdYeU94TDNhTjlTUkhpWFFJUTNVdUdac1ZFU2li?=
 =?utf-8?B?Z2hlZmJCUXFMMnZqOXN2cFlIajU4YzhONGZjYk9ISjVyMGVDYUxGVXY4YVp3?=
 =?utf-8?B?V3p1UVhBVXhZaDdGRjlKTTdwTUMzM3UvS0lhQnhvZVViSEZmK2Z3cytsdUlH?=
 =?utf-8?B?YXMyeGlSMFZmYmdLeGVUM3c5YWt3TTFiU3QrbElBano1eTBBRXFsWVZneTRB?=
 =?utf-8?B?RWJUSEtxZlFLSFpQcmd6ZndJckRxcmRRMzNnWlB2Q1lZSWNhM0Ewc1QzVW5P?=
 =?utf-8?B?dWdjRUZXR1pBdnE5OUMzWXIzQjZmN3RLeExhaGluOVFUSFlPVGpsZWkyUVha?=
 =?utf-8?B?c1pKbDdmV2dOWHJneGJxK2xnakxrMjZiN0NEMFlEdE04OVh3c3VMc2ZOTFpC?=
 =?utf-8?B?NzhVaDIvRklkQytwUE03dUtYcDFrQ3lGbWgyRHRmM0w0WVZlSlBpTXJGQ1Bh?=
 =?utf-8?B?Z2UwdTlTa0JhczRGc3FXR1R0ZWYzd1pjZjdTUlJIRkp5YlNkbGlVdzUwb0pG?=
 =?utf-8?B?RUxsMFZLS3BCWGIzeFR4RTNFSXUwVnRqK216WjVLNXY0Zk9wcWZtd256OG80?=
 =?utf-8?B?dlNGSFNqZjV5bzNnTUtuMVFNQllvTkZXczllcnpKcGc1V1FzR1BwT3JhL2ZR?=
 =?utf-8?B?N1VQc0lpUFdMVzdReXI2blFRSlJ6WEtJYVpIYVB0b2E5NFBwYlZlbm9Cc3lw?=
 =?utf-8?B?MzZ5M1RvTGdhMk5ZcmRQMFNzZnNxUEs1MWtvdnJQcW5XaFYwcEU2T1VsSlVC?=
 =?utf-8?B?VCtzQXFiRTQ1VHMrN0IrN1Y3anc2dFZacVJuaitHZWtXWXIxZ2lGaUVRekU2?=
 =?utf-8?B?VkpOR3FYcXlKbDBiTmtnbWo2UGFIVkI3QktaZVptNU8wQVJST3Jrd1JycC8x?=
 =?utf-8?B?ZmJWOE9DSGd1Q3k4cE9CTVNmY0ZCRUJvdkxiTTBEcHNjRkxlMmdYTStjUTB1?=
 =?utf-8?B?ZFFLTXlWUFRPMnVOaXZ0WEdjTkk3UWlNWWV5ZW5uYnFFVFUzMlRXTVVjVEg4?=
 =?utf-8?B?ZWd0U0dPcE9RRjJFS05WUzgyTGZrcHZub3FRZWJFcUpQSHFoeDFOeWNjVENi?=
 =?utf-8?B?azJkYkZhU1pKY2VYNXJDWnlOOFBwSDh5cXFIZC96eSt0bnNCbHRxSXBqNHVN?=
 =?utf-8?B?OGRBU1l5SVZiL2hDVVYxQzFqWFUvREZRWENVd1NNTEFPZ01vUkhIUlFZcmNq?=
 =?utf-8?B?V1phWmxkcmEvUlJmY2FrWUlPTmlCaXNObWVrMnlGWWo2elFsdWZDSnV2RXI4?=
 =?utf-8?B?dk1JakxUdXR3MkxjKzlkaXFTTjltNkJTN2w5U1NPdDE0TEMwRU5oREwyTGp2?=
 =?utf-8?B?Nm1PQnROTWEzM09DMWJLVXNSakNxb1hsREkzeFRLaythYSt2NG5WU21jRjd1?=
 =?utf-8?B?TmZzUTFQOWtzU0hrN3JJUWlaK0ttVUs0Z3NXcVJVZTdha1RZbU9LV3FnaDZT?=
 =?utf-8?B?MVh3NlNOcVBVVTRLcHl5MnhPZVJES0FZelY5bTFSNDh2VmdJQmQ4azM3Z1lS?=
 =?utf-8?B?aDNSWHlNVG5RTncyQVVPYk5aVHdYVzNDTit2RWZHV3dTREM3a1N1cHhGSEgx?=
 =?utf-8?B?YndBNGVYWjkvRGUvS2ppeXlnc1kwQUFEMUxPWWRUcjRwWXIraEJ1UEloTzRP?=
 =?utf-8?B?V2hVUHl1MERNRVJMSiszTGVMdmFrS2hUWGM1d1VWc1l0eDQ1OU1SSTdTUThX?=
 =?utf-8?B?UElZZlNNNVgzOFlaL21rNXFhNkV2bUhkTUg0WjhhTDVxOGVDOE9yanR5ZmY4?=
 =?utf-8?B?WEpWaUhiL2JFdldKSU9BbUtGVklxaHFVa0lsTXpnaVFIMHZJU3ZyZ1pta2hI?=
 =?utf-8?B?YUthUjBhS3FWYklLMlEwY3ZydWkvRTMxa2MyRkt3TU8xUjNBZ2JHMUlHYjg2?=
 =?utf-8?B?VEppbUkxTDhQNTZDQ1kvUHRUZzEyN2dnS0ZvSXlaWEhpaUZLa1QwRnBrQWk2?=
 =?utf-8?B?ai9QL0JrN2ZXd1cyTk12N080b1EvZmxVYk8zNkk0ek91NHhRTUQxSHpsZXlR?=
 =?utf-8?B?MUE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: c85068f3-b937-4810-b770-08dd6163fa18
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 12:46:58.4046
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7kt+9sgHXJuNxLbr7kd6qrcznhSVrodp4ULkf+NzgtmbouLubyv8TcH7ZEVNN7LIuxkJJEr6lcAwT0HoneubXd5fo9FhKPmW/7jQm0W9B64=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB10951
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Mar 2025 12:47:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64944

Hi,

On 3/12/25 1:43 PM, Ming Wen via lists.yoctoproject.org wrote:
> You don't often get email from mwen=ambarella.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> 
> Hi Yocto Maintainers:
> 
> 
> 
> As you may know, per Linux community, the Linux LTS kernel support will be reduced from 6 years to 2 years.
> 
> This means that every Linux LTS major kernel version (IE. 6.12) will be EOL (end of life) in 2 years.
> 
> 
> 
> How do you think and respond to this Linux LTS kernel support update? For LTS Poky, will you also choose to follow closely with the pace of Linux community for Linux kernel upgradation before current version expires?
> 

This is/was being discussed here if I'm not mistaken: 
https://lore.kernel.org/openembedded-core/CAOSpxdbC-=6htz0g8i8NpcrmTsTpDXM0AkxtAO334KHEmKgu5Q@mail.gmail.com/

Cheers,
Quentin

