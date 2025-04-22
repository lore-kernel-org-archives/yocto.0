Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FC43C369D1
	for <webhook@archiver.kernel.org>; Tue, 22 Apr 2025 10:29:05 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.66])
 by mx.groups.io with SMTP id smtpd.web11.36688.1745317739001923065
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Apr 2025 03:28:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=Sv06jtbi;
 spf=pass (domain: cherry.de, ip: 40.107.20.66, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PCY4zqyXUxaYf9QS5Z0cDitRLmpdXv6+8QTi8+Rds/Q5fDc9ILwaZLYfrboyZOdSJLcnqvhdjzxsDXLrnDebpJYVuhef28yt4BnIDBy31BVDS6TECSME/5loXmP5I4L3itt6eaj5CKvh60ONV60ki6F9j5ebLbCJEGUhTI4BkfMnLVzV2C9Xk/0459QN9LlfXBDusku/95CLNpmOC+O/r3E9tZDPjCW92sgWD2Nb5FlwH+W1Ou2fKVpiufRvI1IQ1IwRZy0uFXMrc9wOoYbt3Kcpn4echK3JCuFUjCHKJY5xZ6KiifJ8FRQRjO/4EK4ukNeiZvtmJqCyTz7jjeaIrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tggvngAuoPZ8qNlQ22iF6YBEGqNxnWBZT9d2J7VAIkY=;
 b=DVZaDWljRVgyxN4pPxkhncTN6daJqrbP2kZoC0qEjq6l6cMQwU6TV0QpmjpADJYkL3ijPqJ9DCUH7XOsn3yTejy3abyWu8ZVuLW1arn7vkhTwiY+KuGMa7ZOeO+i5XqRdKxh5mTUNvZ1rAApoN+DgGIQzsWklZTNGwrZ6IeJTxKx9T13FZA+D5P9glkd0bf4P9/IS+nOwuifP7FD0reiX76Hlvc649fIcT2U2CPHxy3UovaAuWsC4Qdqku+tiAT1WVtVKLV1sO/JqtHjoPfaW+jo6tt4h6nvqrm15ZYewRIyUTuMXc2SfHUk+JvEDSveRkE95Z08K8yIHj2qmzVuXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tggvngAuoPZ8qNlQ22iF6YBEGqNxnWBZT9d2J7VAIkY=;
 b=Sv06jtbi7XGAug7z7EVB019/aePzqlDvTwBcyOsEQHvkfhx3tD6m59pLDVGh58aH5V0PXX2oZcWpyZA3M3B2x8aTurVNOa/rS3pkfmdilPMkHRjQcvZ0zXBCFXiQtDr2O2rNhDA2NzMxfCLx6ixMeU00SKQlLqEjvBtmR4G3Xto=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PR3PR04MB7465.eurprd04.prod.outlook.com (2603:10a6:102:91::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Tue, 22 Apr
 2025 10:28:55 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%7]) with mapi id 15.20.8655.033; Tue, 22 Apr 2025
 10:28:55 +0000
Message-ID: <0487465f-5927-4b6b-8376-fd81b0a9d194@cherry.de>
Date: Tue, 22 Apr 2025 12:28:54 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Issue while building YOCTO for Intel tiger lake UP3
 processor
To: yocto@lists.yoctoproject.org, arehman.signatics.solutions@gmail.com
References: <55tR.1745225142145558285.p0A7@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <55tR.1745225142145558285.p0A7@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0091.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::11) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PR3PR04MB7465:EE_
X-MS-Office365-Filtering-Correlation-Id: ea0d23e2-538a-432a-93aa-08dd81887bcc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|10070799003|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TitubktmOTR6eHllNGxhNFo2THQ3UmdYV2lQZjUxMUVMMCtnNE5pMGxka2lH?=
 =?utf-8?B?aUNWb1VOZUxBaTEvTkwwYWlMRXdLSERIamltd2NNUmNoR3RZdFZ6WXNRV0dD?=
 =?utf-8?B?TTBJeHRhOUJyYngxOUxtd1NIL3ZNWTlLbTdiTk4vajNHVXRDWHlQVDZ0M2xk?=
 =?utf-8?B?Ukt2aTJ6clltV3pmRS9IdUhsb092b2dqSmpFcFA2dEtJUDlZUTZJczc0aEMw?=
 =?utf-8?B?QWNHTEtEY29acjY1QlRZcGpTVEdBdjdNWXJYNm1MSmMwbm9YeXk1TGJSUXVR?=
 =?utf-8?B?eU9GYWtGZjh4b0VYZnRCbFE3MlRKcWFlZytjQ1lBRjNLK0s4Zlo4T2VnekM0?=
 =?utf-8?B?d0M4ZFZELytZS2lybjJ3OEJnVitacU9EWjlTNU42UHdnSFJxTDE5UGl3ZENW?=
 =?utf-8?B?THBiUzBiSHAzUUNndG1NWkJUaEt1M0FoSlRXcERVby9sejRPa1Z4ZDBzb0po?=
 =?utf-8?B?N3dPR3U4aGJKaTFZOFBDdmc1MUEvbmMyRzR0QkdHTjVIMmtsNkx0K00wNm5h?=
 =?utf-8?B?ZTAwdkZLS3dRekNsUkpyR1RVM3h3R1RXOUdvbC9mOUFtRm5IOTNDSmE4T3dK?=
 =?utf-8?B?N09Ib2d5Z3pNczVIbklQOWZKR2h0RW95aHpxcnFDeVhmcHdrTWhuaEdTMEEy?=
 =?utf-8?B?bVloVmRqYnd4YXdPRVhhUllhc3ROU1V6aHRTdGI5VGViWVJTaE1ZOWNUMWQv?=
 =?utf-8?B?bnIzNTcyZzdpVzI5RHBQU3kxSnpiTHk5WG96THd5ZStRL1dRVU1RekZmTjVj?=
 =?utf-8?B?ZWZTdVZZOHovSUFsQ2twL2NKNGtFYXVRcmVLMm1lME93M1RKdXpkcnc0RGhy?=
 =?utf-8?B?UlN6Z3h5WHVGWnBFWXZKMHpoUWNmbW9STWFsRk5EUExLaFdmaFE4RVRmTkFT?=
 =?utf-8?B?eXdIQXdQd1d6OGx6bkw4WStpQ213M2t4b0N4aXgxOWlFc3d2WEVDQnpONCts?=
 =?utf-8?B?SEdZczZFSjYxYjA3NVN5eEFNc1JPVFdJWWtzVnRyU0tKa0dOMDRySDg3S2ky?=
 =?utf-8?B?QUFYM2wvcGVpZW8wdFhNQ05GeSsvQnRWdVhEWEt0RGtMQmR3Zk5jYlg1cTEz?=
 =?utf-8?B?bVExNzNmVkdEK3Jjb21rWGVhUHF5cHFMSHkzbi8wcENRRDEyb0xhU1hMeVJK?=
 =?utf-8?B?Q01EVkw3RVhsQjg3V0tUZzVHTXh2RG9OZjQrRmhiNGZzc1NVMFhmd1M5cDVl?=
 =?utf-8?B?QmNSNGFNYTRmd1RwNklkMkw1RFducUFkbXdTOWVKbFZpTkpZUkxYdGFNUjEy?=
 =?utf-8?B?NnExSzBjN0xMNjA0L010dGJxQ2xqNXNKeGEwaHp4MmREWkNGV0REY3IzN0tI?=
 =?utf-8?B?RG9rM2prclptNzV6RFFCQlg4U0xaSW12Mk44RFVkZ2Rwd2Y5M3NqeWY5M21u?=
 =?utf-8?B?OVBtYlF1aHNaWjlIaTFBUmdDSzd4R3hoQ3RqY3Y0V05SVlBsdHpkUE8wa3VV?=
 =?utf-8?B?S1NXMFRmanpRNFlObElXRzdsNUc2U3UwbjIyR1VRcnhUNXg4QzZxdm9XaXJR?=
 =?utf-8?B?V2JkdmpENnZSM0J4bUhjVnl0VWNMSkpFeUtJdUgyU3FQajJjcWR0ZTBWaytJ?=
 =?utf-8?B?MGtmcTZjZXZzZGZ6c0htWGhIcDc4ZDE2Y2tOckQ1emxrSHpyS2lGQkp6MUZw?=
 =?utf-8?B?MXdudkF0b1hiNWpBYUhMaFE5QWZNdDhEOXNCMDZBRmdMY0N6MUJubEF0REhv?=
 =?utf-8?B?ekRyano1MzA3YXcwYW9leFNGZFFjdnFialpmVXdOM3YyU0FsZlViTXNFdEEx?=
 =?utf-8?B?WnhBbXVOMUJoN3dSQTc3ZDg5M0Z5c2dSSmIycjN1elR6OStqSHIrbWZ2cjVi?=
 =?utf-8?Q?vMZsH5OeSjswnx/0XSegWod65CwufhOmbT3zQ=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(10070799003)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NWpmZ0lHN0ludy9GOVMwN3RJblRTS0kyV052dXlUUno0eXlwSkdzMGlpeFhG?=
 =?utf-8?B?Qzc4dXB3clhDR0pnTm1UU1c2dHhEVjFjdDdjZWZhcHYycTBuRGRCUXloTkY1?=
 =?utf-8?B?Y3VQalY5N1JhMzN6WVBmUWVYVnZRSlo1Vk44ekRzdUE4cENidVFnMlVZK0ta?=
 =?utf-8?B?OWJRamJyRjBwN2FNZmhSaGU0S2hkZ1IvbVdoVnFRSzVZc1JmSXdMN1ZVRWpl?=
 =?utf-8?B?dnV3QzBVeURycmpBKy95dDlaVUEwRVdLTXlzL1hMRzlFSGQwNzNzTXphaGds?=
 =?utf-8?B?cFFScFIxQTYxeGQySExWYTVkUEhHZVIxU1NjNHlkVWUyQ0JHZGI1RTRwbEVD?=
 =?utf-8?B?UUlwbTlrTjRnUHRjSkhDbGtSRGJZZEd0U0w2Y3dyaHdobWZGWi9WbXpRUk9B?=
 =?utf-8?B?VnlDTHFlOVRWcHJIbkY2ZVRLdXlDdTZwa2RDRHdKT012MUI2S0MrTkxnaTB4?=
 =?utf-8?B?WUxuZVRrUi9ma0gyc2FJdUVVWk45VHpSWHlNekcxK0VOaTVtbjJmSjRqOXVa?=
 =?utf-8?B?QStpQjM5RGpZNE9oaDU4KzdOMmVhZmxjc3ZxWDBlU0xrT0xoZDVyMTdSbktL?=
 =?utf-8?B?VzdNczlyU2NGR3ZFNmE0VlZyTzJPd0JPdVQ3WEo3MjFzZlNrRGNIRU1WSnh4?=
 =?utf-8?B?Y0poQlF6R2YzWDdRdEM3bDZKeDZSRkFwNkE1VEttQ0VDUzdMMktJSGJva0pm?=
 =?utf-8?B?dmxyaXNGSnQxQmgwN2RZKy9JN3VCNUZieUY3ZS9jVGpta3BqRTYxL0w4RVBv?=
 =?utf-8?B?bHhtUy94bTgyaU5oSFJwOVRtT0VSd2dMZGsxbnFnS1pPaWZhZ0p0WHZMUnFm?=
 =?utf-8?B?OVh4eklCM0EwbXRqVHhwdlBraklJTCsxY2EzWkhVTVMyb3UxN25MYzJaRW9B?=
 =?utf-8?B?NTQ3c0FhQ0RoMWtRbVBZQzFYZG1BRnV4bDFwRXhXc1VJVFRCNWZNd3BKdDRR?=
 =?utf-8?B?K08xNEhmNW8zdmVsUFZPQkNaMmo5czhlZ3huYjNPK1BuVmJEclJFMmxFU1pJ?=
 =?utf-8?B?K3E1ZEVyZk9ielhLdmpIeXcwTDVCMC9hdWJhcXRnM25LdDFZOE9JZnVVRTVo?=
 =?utf-8?B?dmdKQ2IrdTk1aDhoRDk5MTRNMnM5Tm1FTUEwalFoUGl6aGU2ME5QL3pOT0lV?=
 =?utf-8?B?bE01dCtyQnZ3Z0tQbW05bS96aGNNMktHZEZoZVFWUzY3R3QySmUyL1lYYkNV?=
 =?utf-8?B?MkljSGhVdlpRazNaV0pjTzg3UDAvL0pDMGVRQVVvVnExcDFsSk1XVyt6MmlD?=
 =?utf-8?B?L3dxczJaazdRVGNqM2NzdVpTTEdqZ0RmdTZ4VjVWNktNdU5ESlY5YXhWZENB?=
 =?utf-8?B?VXBuU3JPZkdCNjR6OE9ZNnJDcTNMdG1NQVNhQlFKTXpIOHlCdWxHQTlrenVV?=
 =?utf-8?B?ekVpZnNRQkh2K0p4bXpNc2lvbERDbVpaSlVJSEFaUWh2OFpiOEdFNFV0OVhk?=
 =?utf-8?B?Mmhwc3BWSk5zSUQ1SnlldG1qMWpDN202SHB2SnE2bjNQZEI0UU85cUw0U1BS?=
 =?utf-8?B?UUtPMk05ODhQZ0lyTlI5UTA3a000MklVY1JlTE8vOHlBL2x2LzBrYThRaTMr?=
 =?utf-8?B?b0ZGSG41WlJJeUhGMTBxemozU1BwaldTWDYvQks0eWVpSVhrU3hkQ1lzTy9y?=
 =?utf-8?B?d3cvUiszWnVLMTBYVFVYZkZZWFhuMlNzWTFJa0p6NjBDTjNSbjdWbmpINzlX?=
 =?utf-8?B?bEY0QlNIRjZ1NjU2WXZTczdCdDVvMGNlVTE2ZHV6R3VLcTd0Zko0TmtpcCtq?=
 =?utf-8?B?TlVJVERxNWg0YlN3SlBLZkh0SHlRa2I5dmpUZ2ZDMTd1aUNQU2U0YWpmM2xS?=
 =?utf-8?B?clh1Smc1VGpiYTJqTHJhTTViUmtWdVBpUk1mUmZ4MVkrVjdRL2hZa1Z3Z2tq?=
 =?utf-8?B?LzVEYWRCYWJ2MU5Ub2E3NzV6S1ViMzlENTRpNjAxay9TUFZ3czE3YmtCU05k?=
 =?utf-8?B?UFprbnZyUVNqajV0dGdKeUtzZ1lUNVhoQk9zV3VvczdNanNabCsxcm5jOWVi?=
 =?utf-8?B?ZjVsRTFrTExqN2pXakQ4L2ozM1d0bXBqVHVsMGIva1ZZZWhqT1Q5Y2N6SkZH?=
 =?utf-8?B?ZkRHbU1YL3FiN21kSDA0MmVJNVpqM2djQmsrcjlGZDByVG14bHdNWUhYMUE3?=
 =?utf-8?B?K0hWUUR5RkJRV005R1lLWmZ3TklUckt1UnNPNGlBTWdiSWwxM1g0Sno0MXo0?=
 =?utf-8?B?YmlzOXV6a3V6bElGUm9lVnpGK1lDeG5tbmZtdFdsVTZGTGdSYWpSS2padTRz?=
 =?utf-8?B?d0N3cjdUcUpXMGdzYzdLRWE4ODR3PT0=?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: ea0d23e2-538a-432a-93aa-08dd81887bcc
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2025 10:28:55.0108
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZcjvqSPcfNko/k/n50KBQGrRQVBdmXnv7GHB92SdcLRlYKE6f8zi3130KfvtWdjTvLzm2mb6uD45ETjBXZw0aDf8uMII8WB+NwodB52M8mc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7465
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Apr 2025 10:29:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65222

Hi,

On 4/21/25 10:45 AM, ar825 via lists.yoctoproject.org wrote:
> You don't often get email from arehman.signatics.solutions=gmail.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> 
> I am trying to build Yocto for the Intel Tiger Lake UP3 processor, and after executing the following command:
> 
> 
> repo sync -c -j8 --force-sync
> 

I don't think we have instructions with `repo` tool, so ask your vendor 
support :)

> 
> I encountered an issue where the kernel repository is not reachable.
> 
> Below is the terminal log output after running the command:
> 
> $ repo sync -c -j8 --force-sync
> Fetching: 44% (12/27) 1:29 | 6 jobs | 1:29 openembedded-core @ intel-embedded-..
> fatal: unable to access 'https://git.yoctoproject.org/git/yocto-kernel-cache/': Could not resolve host: git.yoctoproject.org

Seems like a DNS issue?

Cheers,
Quentin

