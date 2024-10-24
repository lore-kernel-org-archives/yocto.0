Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BDDAD0BB73
	for <webhook@archiver.kernel.org>; Thu, 24 Oct 2024 08:45:56 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.75])
 by mx.groups.io with SMTP id smtpd.web10.10029.1729759551776643685
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Oct 2024 01:45:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=UehRKAnl;
 spf=pass (domain: cherry.de, ip: 40.107.21.75, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yQKHs1rAoibmSJejTaLvFhTQyZ6jwSdZpcMo3pveGKgpUHopbUViMbvS5kkfDIaEhFtCK6vLMsN6Jb29FXc/qRhK7dUVYyxp/yUQaWsmnpRxkOszg+NmOKdGLdSoeiNAHpL2AV5LvuQ5+bJ5CIe4pQDPNkLG5HMVl1nRfhoDTGUjz9fE7Q49E0Z9TYjcFJGcQPLKXNw6/hwhaIVUObk7U0gc9zByq+6Sk1Im8wMK5gcRF4Ou8zYAuZ3kPxkY5ckRjefKkny9kvCDGBRVNaHZoEDEqyO7SusCs9dBp36CC3QQwCNikypsriaGNetLWWPOPYrwFV4U6tgZYYvNskuiNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GUu8NIBEsw5PEvzkdOwPGLgbvrAgcVbESLRh2yc0i/E=;
 b=bLZJq6q1NNkWSJE70P56/KQ+dlqtI3jruEgM3mEDllkU2j/nQBE9j4DNT0ngB0oHmLjZRMTtEVF27+14sC5qYwVfhGwrOkrBWwARpz0zJ70dC26V3+OvH7yI1pvux6nI91jITOwKTczIXV2XDupm720hHH5rQacwl4GzavabyzNY6MHGiMBM3j56IhSiHQdfJC24BdxboWvy3ByCj5sptq+sQ4DjR1SbP90fISsLfJORWGEToJInt0ThygZHOwjsB3AJrQtP6iVwTA6lcS1aoFNqhdXTLvTijfqnn1wRvMHeTBHmuPn6Q2XGrz6NUuClKL8YLmXYwgUvIuGyJ1AyWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GUu8NIBEsw5PEvzkdOwPGLgbvrAgcVbESLRh2yc0i/E=;
 b=UehRKAnlqi223QUmjPI4sXIddNv68tvyMLT6KacVee6hZWUg8uxV2iNdHYAjfWyV285NeG2ToLs4D14ovYiuDaIQ1zrhArz25WhP3bZAjECBinfdiFczIOArW0sVEGV3aGBAGJ8fad2fO6DntASBebNKnEzhokMJLcYUldfs99c=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AS1PR04MB9632.eurprd04.prod.outlook.com (2603:10a6:20b:477::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.26; Thu, 24 Oct
 2024 08:45:47 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%7]) with mapi id 15.20.8093.014; Thu, 24 Oct 2024
 08:45:47 +0000
Message-ID: <567180e3-3c9c-4422-9e93-b8b206ade10c@cherry.de>
Date: Thu, 24 Oct 2024 10:45:46 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] bitbake: enforce variables to be defined?
To: yocto@lists.yoctoproject.org, jmeyron@gmail.com
References: <KbL3.1729750210108161849.xEOv@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <KbL3.1729750210108161849.xEOv@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0157.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ba::12) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AS1PR04MB9632:EE_
X-MS-Office365-Filtering-Correlation-Id: c03139e2-b5db-4b13-2015-08dcf408411d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?a0YxYkdNK2ViUk1DZzVZcUI2R09rZWdsdHJNb1J5TFMwZmcwMFl4b05WRVQy?=
 =?utf-8?B?RlM2NHRrS0VCNjlYam1qZzcxeDhBVFV3WlUrMWRrRkZJUFlYVVVWcFl5Tmto?=
 =?utf-8?B?VUJNZWpYb2Njcy9vTndsR1habnJEYkR6MU5WVEM2WE1ZWEFSNncxenRvQXFJ?=
 =?utf-8?B?clgxV2gxTm9lVjE2b2RRMUZwanZuZnQ0SnZISjRLN2R5NnZ1QW5SUXdWT3hp?=
 =?utf-8?B?OG11WDFlKytYb29zZVZLaGlVanFxdWFzOERvQXozZEYwM3dPYVgzTCtpYkFJ?=
 =?utf-8?B?ck1mYlRQMGVxWHNURy95WDFsZHRTdHJ2WG91Y2lwVFQzQmNJbXpoMmpvdUFr?=
 =?utf-8?B?em80ODExdkYxbGJjYzI2cUJuYlZNNFVjL01TS3VOc1pLNkdqZkhaWmJJTnBx?=
 =?utf-8?B?b3VVZ0t2MkszTTBraVhJNmRwWkQzUjhnUGJwd2hmY29wRVBKU09NZjZuYU4w?=
 =?utf-8?B?VFZYcnFYaklpL1ZsdmFSOHdEMVluSVVXMnFTaUF3aWR4cDNEb2lnVnloWFls?=
 =?utf-8?B?eWVJRnJUcG5UYVJ0NG9HNVB5WXpPaXltRUdpUnN6M05rM2JlMWJGdUJBZDRy?=
 =?utf-8?B?dGd0Y0gyNk45dGFYdVNDUSt0eGtrQk9KMjZrRHRFUGhTb1lJUk5ZdkZYSVVE?=
 =?utf-8?B?S0hMSUx5THZtMVJFTlYzcVZCK09iQ0hPRWpaeFJOVkZMZG5lWEFLbERJaHo3?=
 =?utf-8?B?MEpTck5aNXdONklTNXFOS3Z6TlVybllRWjd4cGtoRGcrUEdhMFNHYUpISzQ4?=
 =?utf-8?B?enVEdGpCcC81ak1SeWpCaTVIdXdVbVhEanBkRGZURHNLdU1HZk5WOVNWaXN6?=
 =?utf-8?B?STBScHBYUysxZjlSaldsbDNIOGUyY3UydmxwOUNUNWxWc2JpYUdQUWdlK2Zh?=
 =?utf-8?B?ck12MkIxejBKREZpemNlbXZFTTYwUnQwNUZoTnBnY2d5aUU5d1JPSnZYMTY5?=
 =?utf-8?B?NHR6U3E3cFAvRjFJZHMrNDZPOFlDU091N2YxVWo5aTBiNHZFNzhFb1dydzlR?=
 =?utf-8?B?akVQSXJ2akN6RzdJeFhPeTdBKzFZSHVjVEhsUGVWSHV0QTdsbktoOU4yRllG?=
 =?utf-8?B?Ym9TUXFHNVJZMUxZSjhHOWFjZTU5WjNDdzBVa2sxRTNSNExZVnNjQjM2NmdK?=
 =?utf-8?B?bXlJOFVwZlVNTU1lYnhabktQTTlaamFmUmZxdHFBUG1CNjc4YUpBbFlMSnlv?=
 =?utf-8?B?T2VZdW9iVS94ZlJvVVRWVDVCN0JNUFI0c1dmMWdmbnRpR2svVk5lbGRlTDFT?=
 =?utf-8?B?eVU3N0RnMXcrK20vYmxsZUxUU0hGTVJUUlJpNnJGRld1UlZucC9sZEZva2Rt?=
 =?utf-8?B?bS9IclNIb3AwT1lmRlI5S2JDemNxWitTMzcvODFFdXpHL0FUZFRRTU1BdW5p?=
 =?utf-8?B?ZW9ETEZzK01QWWt0cGpvYW5MRlpDU1lhRjc1cVpLL1VNWHZVdEZnaUlFUnRG?=
 =?utf-8?B?VWVhcU1Gd3FaS2lCMHY5VjRuS1lxa3o5TjRnUlNUQXBzV0YxQkxzNnozR0J3?=
 =?utf-8?B?V1E0ZVM5OXJDQWkxUW9wTGRoeVdPRGVsQmdiV1dtdTVIN2hQL0pxc1N4QXhk?=
 =?utf-8?B?VFJEaHJBNVYzckxYTkNCcDJKc2ljQ0dETG95V2RRbFZmV3lOejBQVUhzL0dj?=
 =?utf-8?B?VXNtcXhGTlI1cDdBZGozV01XVnF0UjljUm1ZVDQ2ZlhhdGlLMnNjSWJGQ1R4?=
 =?utf-8?B?V1FWRXJJL0FrREx0U3pkZnZiK1hsV2JmUENtUTVWTytoTVJqZFlVVWJlT1Jh?=
 =?utf-8?Q?9hHziRwsZJGB3mYk34=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?czlPVFIwZ0xoSWl4NXhNRnYxWERUSG12blBPMFF1SS9jTFdpeGZzbnNiQ28v?=
 =?utf-8?B?S1VTcFgweS8xdEkxV1V5cElkMndBemxOYkIyUlRRZGhsazZUZVBXeHVWSHdY?=
 =?utf-8?B?VTBXTnFsSWwrNjFDTnFROE11V1RhNnB3aXN4MmM2dXNHTFJMMjhJdGZtN0Ru?=
 =?utf-8?B?ZjBKdlJpZ25PTTh6bHM0MmhETllwditFT2ZSMXBZRzB6SzZUZEtSdU9XNEFX?=
 =?utf-8?B?OHlUTmdmQU9tZU84V29pb3NhbFRHdW9VZlpHQjJNQmxzWWN0Y2o2L2MyWmd6?=
 =?utf-8?B?L1E3S3Rnamp2b01yaTZrZ3VsN3VCSWtocWJPbFZFVlhkZU9KSjljZWhDVDRB?=
 =?utf-8?B?dzdBdkJ2bFV2WFd6bTR6Q2hXN096YjBQdU0vNlo2RncyL3JnVVdYNC9hU3hy?=
 =?utf-8?B?SHdMUWlQOUdWMi9IUkpIRU84SEJWMTc4R3c4YTdvS1ZJbmIvUUJDTDhZUVlk?=
 =?utf-8?B?WHdyRERKUHdXRFZNV1dBalV5L0FqRStjMFZmUm5HdHg0dSs1NVpWUHdNNXRH?=
 =?utf-8?B?MnA3eW5mNkEwelB5SU9SUnJlZjBhVnRoR3ZYNXpjbmJ2WmcxejNlTmRUQW5a?=
 =?utf-8?B?NXQxR09mL2FWR245NTZRQjJjT0ZiTWhOV0VoNU0xMCtXWjZLMURxb2cxRy9K?=
 =?utf-8?B?aE9XNVB4RHc3cll4ZVRneGdzVlVPM3JGREhZQy8weGh4cnZCa3pyMTlHTWFq?=
 =?utf-8?B?Mm9zRnVHUjB6MWQxSHh1c1g3bnk5UWdTUU1OYi94bkR5OHNGWjVpTE1ZVVRo?=
 =?utf-8?B?Y1ZmU3QwMEIxelNJaGV3UkpYSEs4SUVKMFhOS1h1YTNpTTluRXFsQkNUZDlD?=
 =?utf-8?B?UXNFQmpVU2hrYzFZWElxb1FYOWpydlIySkdnN0lLelNHMmptQkNlQlFYRjRE?=
 =?utf-8?B?SVI4ZjRwMGZOWEtUb1BtTVBpaGh5NU9KcFBFSTBMSXA0azg4NmVqQmptWWtK?=
 =?utf-8?B?NVRVRlFQYWhKRng3TVR1N3h2NUtuSlNueWQ1SmNiYm9wMTZUMFExRVYzSnp0?=
 =?utf-8?B?NUpiSGd1ODkxeUpRNzRzWk5SckRLWkdMQmhzaTQ5OWp5TVA0OHJyRk5PQXhs?=
 =?utf-8?B?L3RybHRpWmRzTTN4TG44bWIvc2lmbHl0L2YvWm5lS0VjYzJIQzZ0Q0ZURlVY?=
 =?utf-8?B?Uzl3eERQTk1JSEs4cHFXdXFXMFRxM09KbEE0aHd5WkdFTEdBUmM2TlpTbzVk?=
 =?utf-8?B?VEF0ZDRNRmppcWM5RGZSTVRxdjJRSnVaYk8xdDVxcFpHZmg4VXNLTXdwTGZs?=
 =?utf-8?B?UEExd0hVUXlHc1NlU0xqREQrbWlFNjMwM05tTUlaZmFmc3BISEJ1SGpHV2JX?=
 =?utf-8?B?OTVTclhNNDFVWU9UdE5EcjFJOGU5VlRYU1Q0YkV0ZmE0dHBVSXY3Vzl1L1R0?=
 =?utf-8?B?ZzRsditpdGNCOXZ5MllIUDhMUEdkdXlzSzNZTmt2S0cvenM3RVhwN2Z2YmZY?=
 =?utf-8?B?Uy9uYmF0UzRsOHhuV1h2QlltM0pXb1ZUQldXT1BpVVl0dHh1U2s3NTQrVTkv?=
 =?utf-8?B?TFFSNFF3Tng5UzFQNW1JeFZybEdleXUzV3JYc3dUbld6dzM0N21UZ0E4Wi9n?=
 =?utf-8?B?NmM4ZVQvaTBKWXlpN09KZWlNK0RZVm1kS3lFQkVXWUt5K0FQeVpRUjRZNVpV?=
 =?utf-8?B?OHN6bGRhTU1mb2UvODBnWVFwT0tLZlR3WDBRbDJwZUQxazQyenBkbEowM0lx?=
 =?utf-8?B?S3pPdGdxa2pRS0xaUXV6WGpmUWowb1RsWGl2K2tTUGFpTVNZdGhuRllqbDRk?=
 =?utf-8?B?eHJ1bTl1S29VbWVOWU5vdGl3NURlWlFzbnViaEc3ZGFXYWRTQUFUTEV5RDQ4?=
 =?utf-8?B?N3k4dkUwZE1GVHBVZWdJNnEyQnlFYU41V0JhcmZQMGZqK1pUelF0WG9MSHE3?=
 =?utf-8?B?RnoxYXduYzVmU2I5UXZyeEtUbnlmb2ZzZXVDL3V1ZlVsM1J2Um9QbXBZNDhU?=
 =?utf-8?B?bjBTK0NrYnJ4ZW1uSy9odGJHb0kyNXpicFYxZDVSbjZCU01WS2R4b1BGcWdK?=
 =?utf-8?B?QytNOWhZM1dBaWlub2VLTEx4RytwWUMvVGI3bE1qWENLNTBXaS9FTi9aVG9x?=
 =?utf-8?B?SVZoQ21tb1NVN2RDY2Z6TDRFV2Nac2ZRQVdyNTRqTEliZUJUaldoVVNQRTUw?=
 =?utf-8?B?a1doenMrOHkrcDRBcmZRUUlUR3ZEVUtJYjE3NDh4TFp2a3pCWWFjSENMRzZX?=
 =?utf-8?B?aXc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: c03139e2-b5db-4b13-2015-08dcf408411d
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 08:45:47.0526
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xxBQHH1RpLFIsOTyAte8D4LQoXZOw+aOKQtEReTqjVfloZBdYq6MLm93xW8OrZuuLuGIiENFy/wovKRcRGSeQLVBtEjfg+5p5L7bJHMqk/M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9632
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Oct 2024 08:45:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64104

Hi Jocelyn,

On 10/24/24 8:10 AM, Jocelyn Meyron via lists.yoctoproject.org wrote:
> You don't often get email from jmeyron=gmail.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> Hello everyone,
> 
> I'm wondering if there is an easy way (or a not so hard one :D) to enforce that the variables used in BitBake tasks are defined, something akin to "set -u" in sh/bash.
> I had an issue recently where I removed one bbclass from one recipe and one of my tasks was using a variable defined in the class and it took me some time to figure out the problem...
> 

For shell tasks/functions, you can add set -u as the first command to 
run in the task/function.

I believe that should work since we have some recipes with set -e

Cheers,
Quentin

