Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF34BC10F1A
	for <webhook@archiver.kernel.org>; Tue,  7 May 2024 09:54:34 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.120])
 by mx.groups.io with SMTP id smtpd.web10.7706.1715075665484962070
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 May 2024 02:54:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=DvhsjJId;
 spf=pass (domain: cherry.de, ip: 40.107.6.120, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BSgPBLmpP+yVQYbX2IhQ9IqEI3f3rj5Mo9VM4jpGmkmjb7VNEZzgAMD5EB9obY5m70t9DtgQeEnGtWNJqnuAr8vmBBnMG0t7q0GRzWXF/jz7+c9pY8SGLPZPwCtf8Wfh7Zd5MAzk8ZFiykPcGxQgJPUgOVeAm30A2mpXbSiK8zTObGp8LO29XzM3756kDbC6AeYziEmP023aMztmlm2dqQrV6qyx4/HIWIeAZJS1kQNK8wqn039jzll+ruQZPLAmY2jY0IwEn6v6MGNi8yDkBE7GeodtwJKNd+G66ab33f5vwyDxE++yUvBaQHWiAB5Hf7ma+D3D0KYhd7gzZ/PMSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZRBiS4kyB9wJRK/vs/ia9rlxL0D7ujb4pO+wteuRrEg=;
 b=nSySiQFHrxV0ABNOC0FdRSzNd8pFFKgYX9cMdnpmKWRQuLVesm8rvdkoaXpOvBeTcx5v6MA9ygS6Gvp88VQWy8TMbfx90KtCh45Gqn8D8L79we8pGlOfxQjBdTsQ0b1cxBmduZ0oHuDO8k7YIHLLO24S2J/02+pVrDM1jur1MgImzJqBRX4wiWS/dRw+pjleALOHo7XQsSI6fWGW5WYTnSByNdHT8HWG1OWWDN3fWsGP3+SUiEWsLsDU6QynNfliC4dbvWiUiKu+wxR+3LEY1makC3CgTBHPYL9SPJPGuJ/Xz2Gd27df6VH1R76Wr6eVi+P+CpRI4OHzxsuGeAjXSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZRBiS4kyB9wJRK/vs/ia9rlxL0D7ujb4pO+wteuRrEg=;
 b=DvhsjJIdBlJDinV2YgfM8efsQFhH2+NBp5NdCx+Xom5kuWQGplARc/QaZi8SmDBBEmhZ4LQUzpd3NLpYJpNufpSlCHmXwuCp3RXXjRHvGq+PmOCxKC3e/5eaGMBpm7zh7fzaxyi0Z6v6e4yuxHTBqh5psNqaRpv6zqa/0v2T+5Q=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com (2603:10a6:10:1b::13)
 by AM9PR04MB7666.eurprd04.prod.outlook.com (2603:10a6:20b:287::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.42; Tue, 7 May
 2024 09:54:21 +0000
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::ac08:df46:97bd:4ae6]) by DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::ac08:df46:97bd:4ae6%6]) with mapi id 15.20.7544.041; Tue, 7 May 2024
 09:54:21 +0000
Message-ID: <7daf5cfc-46de-4911-9848-171e7b675189@cherry.de>
Date: Tue, 7 May 2024 11:54:19 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Command line Variable
To: yocto@lists.yoctoproject.org, bratiranjan12@gmail.com,
 Khem Raj <raj.khem@gmail.com>
References: <CALSmAY7=T9hENBfNFt8nUGT98boRZF5_3KdubfDLipcTkG+-vQ@mail.gmail.com>
 <CAMKF1srgDX5tNk2J3ik=pAD2z7nDqs5BtAWwW-s5HPGh=w6OGA@mail.gmail.com>
 <CALSmAY4KzeeBNktsKiD5eiiDSfh3v451Fqg3EDcaXsWA4-Vq9g@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CALSmAY4KzeeBNktsKiD5eiiDSfh3v451Fqg3EDcaXsWA4-Vq9g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA0P291CA0015.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::20) To DB7PR04MB4842.eurprd04.prod.outlook.com
 (2603:10a6:10:1b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4842:EE_|AM9PR04MB7666:EE_
X-MS-Office365-Filtering-Correlation-Id: 0585eec2-2e02-479f-850c-08dc6e7bab29
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?OURRZkl4ZStnNkZpYitzaDNUYk9ycnJpVWVzV1NuaExHYTBVakk4cGZKTVdS?=
 =?utf-8?B?ZkhnRlVIcmJoRjYyNlBFZFZkTFQvenRSbnpEMWVhOWl6dGk3eWh1OVRjOEc4?=
 =?utf-8?B?SGxvVVc5SzkxUk8yOWFaemIvZW5kVVBDbVRxemxLWWZIcVZqN0FUYmRteGJs?=
 =?utf-8?B?RHV2QTVzTTI4eTNJK3hpWHJ1MHluaU1GbDRxQ2prUGQ1RG1lR1NCdUhIejdK?=
 =?utf-8?B?TDg4S3pXbFhYcDVpc0srUUxHQnBLc1Y2NkQ5dXc1T3NWTVFCQkhkaU5KWm9H?=
 =?utf-8?B?aVBXSVovbTBIUTRVNlpxRXJJTmZJQjBucmFnWVdwZXBSNVhCc1hVbitORVdR?=
 =?utf-8?B?eWhrQ2gwUis4S05hSGVmdFJweWNIT0FBTXgxSTd6eG9hVkRuNmk5clVUaE5r?=
 =?utf-8?B?NWQ5RWIzYjRUSHhRT0RVSEJZcDBnM0syWGoraFdUdEdFWWlGdVNPUXF3d0VD?=
 =?utf-8?B?SWpDRDlvcitveEhQVkM0MFhoS1JxZHU1c2pKNnE0eVcySXBPOEFobnVjS0sy?=
 =?utf-8?B?V3U1RnI5QU9wQjJXZ3FMd042cUZaNVEwOStPZHpiRUlrcnRGdm9uM3FuQ2Nh?=
 =?utf-8?B?SEhqT2tIYWRUTTZJU3hIU3RCcHJMdjR0ajBCNDBUOTY5T1pwc05YdSszYzA2?=
 =?utf-8?B?SWZaaXJvMm41aGJQUkhvenduajE2QlR1L0hMWGllSks4QVE5dVpMRlZoQjlP?=
 =?utf-8?B?UlRaR3BpSHZvaFVuVEUzOFVVbVpZMUZTbm9NZzkyQm4xdHAzbzlBcnBQcHV2?=
 =?utf-8?B?TWlYRDc4OFZtMnFndUFYRTM4YVhHRE0vTzRsZDUvbVJNcjV4ZG5FMXNVcGd0?=
 =?utf-8?B?NnN2emFNRDNsVW8vRGMwaXhIOVFiZnFQRG91MlcxQ3B1THByZEp1b21USCtW?=
 =?utf-8?B?RjV2dnhwdDNTdlY2QURETjVCbDJtb2JoQTJOVml6c3YrMjhMNVBlcE9wQlVi?=
 =?utf-8?B?ajZaU0Foa3BKdVdaeit4VzV1Uys1NzBLcHd1NTNnbmF2ZVhWU00zTFNvZXBo?=
 =?utf-8?B?amR3eFBiOVkyeEJpelJDdG9rOXBzcFQ5ZUkxcW51aUJoWGxHNzFhNGFURTdw?=
 =?utf-8?B?YUhRZ3AyUkxPdWVsdXplSERlY0FLYTFhZ0czR0FSczZBMlhZVHl0NkRHNjhy?=
 =?utf-8?B?OGhYYi82a0t2YkM2UGRETXJyd1QyVU9uMlhRSHhCU2xja3lOZzJyR0FTdmpQ?=
 =?utf-8?B?dWFKb2llZG9UOHA1QzdlalBzM3hJbkZ4SjVsREs0S2tTSFg0eG90ajF2d3hN?=
 =?utf-8?B?ZVVvbWgySzh1VVdGZ21KdGlqQmRXeDk1TTdsenF5OU53SU00QktqYUp4NzBv?=
 =?utf-8?B?cTU2UUkvanRRNiticEc0VWZ1ZzBsdGNQOE5RVlZ5a3YwL3ZpMFhCQjR1RGQ1?=
 =?utf-8?B?NVBlcHVBMTdJSHp0NnhaMS9rVWlKcVVrNHg2ekdIcENDcnhSc1Zac01kZTJM?=
 =?utf-8?B?eG1sS2d1TXdiRi9VZzF6L2RtYWRqR002QTRwd25MNDRYR3JLcG1zeU9HY0ZD?=
 =?utf-8?B?YjFoWHVUZk9kS05ON2hZaDIra2IwYTJvQm9nTFFpcnMxeG1QRDZiS0pVcGdn?=
 =?utf-8?B?V08xaHkyZGV3R25tT3dzSVhyT1dLK2srVFhOOGhJZ2trQXJ1V1VRRk0wQ0dr?=
 =?utf-8?B?dnNMUGd1SjMzUUtWSlplUURPbU81VUE9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4842.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NVlDb1FNQWdzckhHZDBYRkhzTWQxZVdUOXc3SEtvVTFKNFE1S281dDhFVFVw?=
 =?utf-8?B?d0MvcFNNdE5heVhpdjlNOTkyL1I2VEwwTkxUS3haMVVsR2kxbDcxQVUxWTNQ?=
 =?utf-8?B?OXoxWmgrZTF5OWNXOGVSUHJwUDFDL1VHbENBbk5ZdFpZVGNsUjFGRnZEbnhP?=
 =?utf-8?B?YjJCVGdvQkl5TG94bzFRV0NqOVc2cEJuOXUwdm5tZFZMNXRYSWVFUFU0SkxB?=
 =?utf-8?B?bStjck05NjhvV2hGdW5hdko2a0hqSkx6bVVsUDVzSVJHY3UwN25YSTF0clc0?=
 =?utf-8?B?S1pDZzZYWmdnOXl2VE5ENktBekRJK1cxOGNkUVlsYUY5Y1NrOFQvZ1NieTFL?=
 =?utf-8?B?QU1QcFQ5STVkd0NxcCtxZGNDU3hqSnRvVGtuKzRta2NvVks1MHp1SDg5S1hN?=
 =?utf-8?B?RVpVK3FMVU94TE5kY1dKejFSR1BQM0x4Q093dFFmOERTRGQzYUQrazRwcldx?=
 =?utf-8?B?Qk9qTE81NVFrTC93MGovQ04yeUYvZzZ4WEQvclM1cGg3ODJSN2lmeVVZbFBG?=
 =?utf-8?B?dlFabWlvSi85N0h0VFIwREQ0N2xPRmVwS3dmeFdGWjAzcGNrQlgxZmdjNGNk?=
 =?utf-8?B?MGhXZjV1SUl5aXkzR1lrN0RqVEFVK2sxWnZVM1Nvc2RSeFFCelFBWWg2UkFZ?=
 =?utf-8?B?K01QVUhpRmEwSjVwRmE1VnJZZUduNUlRWHAzdi9oa1RmUFlQdWJ0MUxqeThV?=
 =?utf-8?B?YUw4SGVNemIxQ2JkTVl6dXFsUGJBOFZGL1MraERreGYzSWxxUzZpT0NvNUF2?=
 =?utf-8?B?OWJHMUVpaXUxeHhybTZCVWxpeUVvV2ZMd2xYWFNSRjVadnRORGxTQStuZVVN?=
 =?utf-8?B?S0ZRWk4rRFg5Umw0QlJjeFpzNDRvQVl3ejBnK1gwdFR6SzRreVlPYW8zblBq?=
 =?utf-8?B?c1d4VHBLUzJ6RE85UHVLbmNueXMvSUpTYjlKYmJhSXpCeGZIZE82RDdSb0Jj?=
 =?utf-8?B?T05pTEM0cVlPSjczSklUSHBuRWVlSHJvNzRNZ3NZTzdBV2hvYlQzbUYwTjQ1?=
 =?utf-8?B?U0N0UEwxYlNteE4xZ3dlSFR3ZFVwU0x6Qk9xZ0dscHNxWnZicVcvR0IwaXp0?=
 =?utf-8?B?V0piYytWUmRZa0dEc1gwbDRUbm5yajNNekQ4OWRuejQxOUcyU2RsTUVaNmxS?=
 =?utf-8?B?SzVIMWJMSWcrTWFoNi9aNEhZQURQVHRoSW05QWUrMWhYd3NienB3WHRxTDJ6?=
 =?utf-8?B?QWc4eDNLNk90eHdnRk92akdhZVVBT1h5SEJadXdhOVU2ZG1MU1FzZjFMaEQx?=
 =?utf-8?B?UnJqYUNQV1ZDTEgvTUNmQ2RpRVJNa0hnaEtGdHR5a3hYMllNUForM2pmeUFZ?=
 =?utf-8?B?WlZ5L0podjVENlp0dzlnSlZKeDJaNklzTUxsRVNMa0VkMDJubXovTE4vOWd1?=
 =?utf-8?B?dW9lam40Y3FGWCtOcUlBUnpwd1prRjNRQkRmQWtGVVNmUVR2blI1N084U01V?=
 =?utf-8?B?bkFGUTNxYllpQnJjM2NhelZNMmRlT05KL3lRcC9PcmhrZmFmU1ZwakJhYmhD?=
 =?utf-8?B?NEdmQ3FrQ2QyZnFNV25EbTQ4ZTZuaExRem0yK0lvZTVZbWh1YUpMMnRqRjRx?=
 =?utf-8?B?UVorN2lFaGszM0xaWDVrQVFUZWhiYXlTRHJnQ0VGeUlRZ0puRkxWbk9XOVha?=
 =?utf-8?B?UDBnR0FqSTBvalB4Mlc2Z3NpdGJKb2E5OXdtaVFiRStiYmFsNUlhWCtYUGNI?=
 =?utf-8?B?OFlLS3NtVFhMSHhybEY0VEtESHEzUHFQN2xrYXR3U2g1Q28vVGdLUHpNL2hu?=
 =?utf-8?B?YVF6VUphTlI4UTBhcExVTC9hclkrSnNNTHJINkxoSzZ4WjFqTXNqNmJoVXZp?=
 =?utf-8?B?dkNsL3B3eHZ0WmxESEdmRnB5bzU5NGMrMFA0OXp3S29id09IT0dnSFhnNmV3?=
 =?utf-8?B?TStRWHlyUjBZUTBkdjRTNXlHa21FbTdwb0htL05aOGJMU3E5L2lxSkJoLzZL?=
 =?utf-8?B?OVdwN1o4M1JndzAvMlRXRW9ZVnJGZXZIeFdEejhwT3VsTEwwdUwyYlhsNE1s?=
 =?utf-8?B?alBlZGJPa3pGZVBRTXJaRXhVY1pJS0pCek80ek5WdHM2NDFaOE1YWjJxTXN4?=
 =?utf-8?B?aDhrZFkzQ1FHeE1XeTN2Q3RDcDZkRFEycDRaYVczZjAwZ1k5ZjNINjhpSmcy?=
 =?utf-8?B?b0NJWTg0cHJJanVQRGlYQjlFbWJBVjZTRXZBWHBqWFdjbzJqaS9pQzluTExn?=
 =?utf-8?B?Vnc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 0585eec2-2e02-479f-850c-08dc6e7bab29
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4842.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2024 09:54:21.4226
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tbTJ7XrU+agTG9MuJqibDq1y0n/B8oZf4ErEiClftFi6j9PVHlANk+RohkD8vgrSAYcfw5qxpb9Oyze++uetCpjt4gdm0dVZUzVeUZTLBpI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB7666
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 May 2024 09:54:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63042

Hi Brati,


On 5/7/24 7:17 AM, Bratiranjan Acharya via lists.yoctoproject.org wrote:
> Hello there! I've recently experimented with incorporating the following
> lines into my recipe file:
> BB_ENV_PASSTHROUGH_ADDITIONS = "BUILD_ID"
> BUILD_ID ?= "none"
> However, despite these additions, I encountered a persistent issue. Even
> after executing the command "BUILD_ID=123456 bitbake custom-img" the value
> of BUILD_ID consistently defaults to "none." I'm curious if there's an
> alternative approach worth exploring. Any insights would be greatly
> appreciated!
> 

https://docs.yoctoproject.org/bitbake/2.8/bitbake-user-manual/bitbake-user-manual-ref-variables.html#term-BB_ENV_PASSTHROUGH_ADDITIONS

"""
You must set this variable in the external environment in order for it 
to work.
"""

So it needs to be outside any file from Bitbake, just have it in the 
shell environment before calling Bitbake.

Also, this variable was name something different before Kirkstone so it 
depends on which version of Yocto you're using here, c.f. 
https://docs.yoctoproject.org/migration-guides/migration-4.0.html?highlight=bb_env_passthrough_additions#inclusive-language-improvements

Cheers,
Quentin

