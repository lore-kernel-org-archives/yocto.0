Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CADC25B74
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 12:48:18 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.102])
 by mx.groups.io with SMTP id smtpd.web10.12706.1715863696233095540
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 May 2024 05:48:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=JJzISWFW;
 spf=pass (domain: cherry.de, ip: 40.107.8.102, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wml68YvwH/HG41ORXBuzpYppkj1Y4HA1hj2WVkvuYQ8/EWQrJAlOv4Q7v5u26ziTA2xU3sqs58BrwGIXl4ycXNoVuTvxXrrWUg+6hHR3715kMqi60gxdP+tCxGSwe8aRN5MybT9x3HJvD2SO0lJhzhycRckTnPu3XB5gVHgmIlIwzlajVHGH32UMt3n6yxOCQZGet6QaRiyiGRu7d8nCZZu5S9nu4sJBpPR9Rv3MT3oMJIK0jt9MmkiysaBK8fCKqWc6zhxqxIKY6WNl11aNmWS2RyhkPvtcUROdQe1vw89Xbzz+DTEyFmS3/mg//zgXn7QU5ejFfBCm5QZpW/mE+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bepbZ8Qb+0cJT6k7oqv1OjGeyQW1+EXOi1hLNv/JBAw=;
 b=fRbPkqVWKgeDNIABy95opZJyzA6tTQiuk2GXQWrZZcPTg5CPUSviEBIbTWHOa/8SndhpY8uoBZy3Dn9qz7NDEzYTAXcKr7BfoMnVb4/6efmw1m+XVuDmYUgydqfc07PlVZ1GpE3tUYENda4oTSNiZUCLZBKXKjWo6QMJ/hp+rsYLqVaVPs2aK6DPS06LKTE5iv4Hu+rK9wT646KWGIXtaY3um47LQqFVaD1QAHcjxuYNADwbr+qWjYKjkdMr3ul0UZCS4ZUC1hVoO8XgN6pMsRQfsKmIgAvjxtX2UpYC6WMzriyuqk56GqOCrJMDCJx8hz0HVizqWO+CQeYTxAs7KQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bepbZ8Qb+0cJT6k7oqv1OjGeyQW1+EXOi1hLNv/JBAw=;
 b=JJzISWFW+3ehAmTmj+TTR6kvPtXgigTrxmPC14dPdriawbCHPflCjon2QNPyYrxL3649JJpGT/y4ifIiMgB4yiMVPQ89vO7mOOndj7MyCmNdq4It9D2sUAY0t5M8cpfMSevVHtoBf2E/ViDeHDDtngWqjy/I2tJwVthUgIjqOfw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from VE1PR04MB6589.eurprd04.prod.outlook.com (2603:10a6:803:128::25)
 by PA1PR04MB10366.eurprd04.prod.outlook.com (2603:10a6:102:444::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.54; Thu, 16 May
 2024 12:48:12 +0000
Received: from VE1PR04MB6589.eurprd04.prod.outlook.com
 ([fe80::8476:1b2f:f236:db31]) by VE1PR04MB6589.eurprd04.prod.outlook.com
 ([fe80::8476:1b2f:f236:db31%6]) with mapi id 15.20.7544.052; Thu, 16 May 2024
 12:48:11 +0000
Message-ID: <7a55c302-24cf-463f-831c-889c2fa0d168@cherry.de>
Date: Thu, 16 May 2024 14:48:09 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Strange errors while executing
 poky/meta/recipes-devtools/gcc/gcc-cross_13.2.bb using scarthgap release
To: yocto@lists.yoctoproject.org, zoran.stojsavljevic@gmail.com
References: <CAGAf8LwEkmPWUi+B3BotJy0g2AhfBRyVfO4jUBkhRXVtNS1aww@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CAGAf8LwEkmPWUi+B3BotJy0g2AhfBRyVfO4jUBkhRXVtNS1aww@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0017.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::17) To VE1PR04MB6589.eurprd04.prod.outlook.com
 (2603:10a6:803:128::25)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VE1PR04MB6589:EE_|PA1PR04MB10366:EE_
X-MS-Office365-Filtering-Correlation-Id: 52d8961e-d82c-453c-0b47-08dc75a671d6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?R2JoVU5kQkZ1MzVGekk3azgwMWsrQWl5RmFlNXFJQ3hpUWoxS1V6VHZNdE9N?=
 =?utf-8?B?WjgzQURXMFF2bHlLN1dmNTl4Y0lXSzZlVnVDTDl6L1NIcUd2WHZORFZWY05o?=
 =?utf-8?B?MDJ6TVhmTzd1QzdjYUlmM0IxVVlBMzVzNDc4WGd0NG02U0I4OGFYRHBxVXpW?=
 =?utf-8?B?M2lHdncwVXErSkJuemtpd1pJMGFRWVdaa3dXZC9jQUlUWUMvWFlEOGwxVTAy?=
 =?utf-8?B?VEtGMGVRb1pYb1lsUGVGbHI1TFNVN3BNOEgwT1pWUXdKY3FhajVHTVlFa1Ux?=
 =?utf-8?B?MDUya2FYdStCaXlzakJITk9BOThxU0I2ak92R3hpQ3pCaXIzVzZVenlBWk5G?=
 =?utf-8?B?cTRNYUtYS2M5R2Yya0N1WitObWUzMnVkTVorQ3oreEdTeDNSRys5U2dGOWgw?=
 =?utf-8?B?dG1SVjNvVWZQdUVVRXZYTlhnZ09BQit1ZDc5bHQvcFlQMlR0dnZhSFV5b2p4?=
 =?utf-8?B?RldRaStsYlg5REVQcW5POHFCQ0ZEamluNjFsaFE0aEMxY0FBRWtGeDN5Wktu?=
 =?utf-8?B?UmFiWWg5Z2NESk9kOExnSW9LT1NXNExFcTZXSGZDcjd4OG5qenVoSHRjb0c2?=
 =?utf-8?B?dnRvQmhkZEcxWlQyaWVVb2Q2ZHg2N2t1dDJneENSb0x5dm53cG1NYXRnNng2?=
 =?utf-8?B?T1ZjR3RxS3F4V0k2V2d2Z1FHZ3RXV1A2SWVKdHpua1dCQVBnRTViZEY4b3Qy?=
 =?utf-8?B?V0k1c3UxV1ppS2dtYXVUVW9Za3g2dTZLRC9YTXBpL1ZCeEhZWHlNWkdCSHVS?=
 =?utf-8?B?STJJeVVhY0RTcnRMdDdLOE5WVkdWTHlpaVRrUjBrWHVUN3c2S0FZZEZkVHhG?=
 =?utf-8?B?b3E2VEJqU3psYXFoR3dIZGhBYzdUQ3dvU1E1VHdYZHVpZHhTbVNPcHN3SWht?=
 =?utf-8?B?bXdwVU80NlNEaFBPbXZveFRUcCtCZm9pL3ZuRVRjcTlES0E3Q2p6cVRMbXli?=
 =?utf-8?B?TzR5TC9hRUQyREJyRlFwTFZiR3k4OWhNQWtMVkhLK3hFbkxBYTRZMzlpZi9M?=
 =?utf-8?B?VXVHVHUrSVpLdDgzN2ZWQXVDZ05TR0VFd011SmxlaXZTaS9wL1g2b1h5RGhZ?=
 =?utf-8?B?QUNHV3hKSWFnbDc1L295OWhiYUZ6dDhubVI1LzBIcGlKc1pSM0Jhc3JKMHVN?=
 =?utf-8?B?dVVjRHBtUXJidGtTMDkvSklBZ2dPZDgxL25rR2VTYkR0YnU0cHBZbm5udlNj?=
 =?utf-8?B?OVpTV0lSOGFMNzhRa1NhM0JXbHNkeDFvNkVhekRKS3RxQmlXSkV2eXdUb3RE?=
 =?utf-8?B?Z3pManFPdzRQbFRWaGxGbXZwdjRJdTQ4bzdwaUd0K3dTMDI2OTlHdTRUa0tZ?=
 =?utf-8?B?bjBPYWtxYWxUaElOeWZOVUxmdW5rSVVRdVh4Rjk0WjJiUmZKaWJOaGlSUkpY?=
 =?utf-8?B?ZWluQWhxUm5QS2d0eDlhZGZpMW5FWmZYZ3c0dTJxQXdyYXdEYmhLMGFWTDJY?=
 =?utf-8?B?SmFudTJxL25jamh5ZDFqTlRjRTRWSE03bzJXT3VGOUc2OFNSSTB0aS82UGhE?=
 =?utf-8?B?NFhkQkdYbXNFdW5qZDZsODJHS1gwLyt2OUtMRHhZaVJrcEdYQ0ZJNk9PcllP?=
 =?utf-8?B?bGk4eVNYU1pyejc5aDlNWWhBRis5b2laQUFrZm84b1VQRVJPZlNEVXorcVVT?=
 =?utf-8?B?Umljd0lmdlhaSTRGUExPSlRqQlZUV2FGYmg1N1ZTb0gweTNMWXlXKzVUWHhO?=
 =?utf-8?B?UXhnK1lack1PRlo5WkJ2N3hTenVZck94NUwxdERZK3YxZ2VFNisyODVnPT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6589.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Y1NLVEd5dk1ab1NtN3JQMlF5b3NsLzJVWUpTSExrcHdiK1lMKzk4dnBLK2px?=
 =?utf-8?B?eTFkM0I2b3ZtZEk5OG8yMmR5N1FXRkF1U2RQRUZoUXN0ZVY2RG1JVG1xVTdv?=
 =?utf-8?B?NFg5cGwzbklxSTdJYmNGeHVyODFqNWsrOUNqRnlETlVyd3Z0dnVhaHhybkdY?=
 =?utf-8?B?Z1JqTWZnREpHSG1hOU1WNWRDeFgybU45MkZGckdjcWpSdGIweHRyWEdKZG9X?=
 =?utf-8?B?U3VNMDNyakdGN1RPbkM4MEN3azBMVFhET295TytKaEhNVHlhN1JPMHhtUzRD?=
 =?utf-8?B?RU1kUkwzZXRsNlJTV3J2bWN6TE5kUUNpSitlVzYza2VZaklzTDMwVmQ5MVBM?=
 =?utf-8?B?ZWNpb2FZejNRQ3cxRklqSDR2cFZGZGJ3dE5XZmNZSm50RWg0Skd4T290K2xM?=
 =?utf-8?B?ZEpPcy9ESHI3UmlzZXVremQ5UDcweGJ3WUdVSUFCNDhSYjllRnJOdzd3OWc4?=
 =?utf-8?B?Z0hZbmd5MktsbmZNS3g1M2hJOXJlN3pYOTN1ZlJESnZxS1czcFlJYUc5VGI2?=
 =?utf-8?B?WWFWdHdGVnlFclo1eVdRZHlQS1RpdlYyTnN2YXhFWUdsQ2JOWTNDcG9MU1lI?=
 =?utf-8?B?bmk2ZzY5ZXIza1hyRUxleHNla2xOK1h2T0pwQXFnWDErdW1kdGYzNDg1SmM1?=
 =?utf-8?B?OG5DQkdqWDJvZXROUWgybnp6L3JsM25MWVFDTTZ1OGg1dzRsMUxwRDBDRkZw?=
 =?utf-8?B?OGhPRUI3ZGcvWTRzQ3NlaEJNSzd1aEVpS1JMeEFqSTl6NXhoVi9iaEFjeFNx?=
 =?utf-8?B?YnpNV1RCNFBya0R0ZUNRY2hHL1MwUWVwVm9Wa1NrRTJqMzJQRkY0ZXJNYndG?=
 =?utf-8?B?UkljTDN1bmY2UzMwMlBqTkpWNWlYdnN3N0xsbGJkV3E0RUJaU0UxVUZtMXVZ?=
 =?utf-8?B?QzJBVTZzSFplamxnMWtvOUdiSjlwSFIzelZ0cHQxaVBZOWx1dWYwdXk3dFRK?=
 =?utf-8?B?c3RZcUNWQWRyTkJtbDVqa0Y0WmNCeGc2eTJ3ZUg1N1RKTko3UmhpZURTK2tt?=
 =?utf-8?B?bFpjQWFFZW9hdHBMb084bGhZc3BrRUR3OEErc2ZYcndvRUxSYXVwdHMrU0oz?=
 =?utf-8?B?anlTbHZ2Y0t5aU9DOW5jNVp6cTJzS3dzeHRQZFllYmszZ1NqRmNtdmFUdEwy?=
 =?utf-8?B?aWJITFF5bitPMDNDZTg0b0R5WXZrcllYUjV6Z2JYL1I1K1JyZUkrNzJReHMr?=
 =?utf-8?B?cldHeDhXN0lESmJZUGU5SXVIMFplQ1V5ZzdSa2wyMHBKUUFrREZNUEx2VlQ5?=
 =?utf-8?B?RlYzNzVLZjY1dVlpSVhjck43MnJaVkxSTHNPTFo3c1RtWWs1bUJZK0FUblVC?=
 =?utf-8?B?QTgzMXRMK1BibndNeFcvQnlFMWtmUzJTU29OT3o4bGdGVkphTGxta1FCQ1BX?=
 =?utf-8?B?YjdLMkIyd1IrNkhsWHp4WHR6WkZiR0UrdWY5ZmJSVlB4UjhmK3F4cVg1TTRt?=
 =?utf-8?B?aWYzWUlYNWRQUDgxSW1GTlhpcWhUcStvMFBWcW90TEVPTTVPblc4bEw4TFp1?=
 =?utf-8?B?U1dVcmtFbXYvNzZLVXdHamw0M2hTQzd5WUJEN0sreEpMSnh0My9ETmNqeks5?=
 =?utf-8?B?eTZtQjBLZTdBOHdzZ0NKVi9VK2VEcXdwUThqaVAzSFZ4Nm1YbVo2eDR5dVFh?=
 =?utf-8?B?cC9aT09PU1QyZU9TV0hpanQ5M0Zic1NTdTJldUFvcFJlaDVRWVZwbGJsSnFT?=
 =?utf-8?B?UCsvYXhUZ2NEZlp6MFpHYzhVSHFHdmdzUE94WEhtazJoR3ZkZHIxZ2podUty?=
 =?utf-8?B?QVF2UnZuVmN2RU54UEhncit2Uk1sb2VHOFlreUhkRG9kR2hkZzFtTGZlSjVt?=
 =?utf-8?B?TVkwVXR4aGplZ3VTVk9ldHFZU1dmT2xZcTdBeTNVMlJocndJS1U2TXFnTjZ1?=
 =?utf-8?B?bDV0VnBLMXdzYk9OcVZJOEJ1VzROVHcvZW1CTjQ1YVNKdzlXdWY2RWR6Uk8z?=
 =?utf-8?B?M1ZibWV3RGxRdHZLTU9BWlVOMDA0a3VhOVBicS8wOCtFYi9QNjBVYXl6U3dN?=
 =?utf-8?B?TlFkTmZXYjhqek14MUZMTHJjbitXdVFnM3c1QUpxRGtoeFBVaGgrb1JTV09K?=
 =?utf-8?B?aGR5UlQ0S3ZLbkU0djQ0MzM5ckppZWRDY0JYYnJPNkpVMTdaTkpUT2Y5cVNM?=
 =?utf-8?B?THBQQzNyYStsRnc5UWc5aGhVWWYzMEJTL0Z0NzE5N1FpZkRPemJpak95Tnd0?=
 =?utf-8?B?M3c9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 52d8961e-d82c-453c-0b47-08dc75a671d6
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6589.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2024 12:48:11.6893
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CIXTIfu/4DMocLYJNjw8vfxgtcoDIkrxWd06tyHgZgJCaRO1ClgWHHg/pCgYfARsTlUgEI0sKoXoLSFF5d+7AbfDopayCHMOm79XpCT37/Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10366
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 12:48:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63116

Hi Zoran,

On 5/16/24 2:28 PM, Zoran via lists.yoctoproject.org wrote:
> [You don't often get email from zoran.stojsavljevic=gmail.com@lists.yoctoproject.org. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
> 
> Hello all,
> 
> I have a really strange error while compiling gcc-cross_13.2 ?!
> 
> Here is the error appearing:
> ERROR: Task (/home/vuser/projects2/yocto/yocto_test2/bbb-yocto/poky/meta/recipes-devtools/gcc/gcc-cross_13.2.bb:do_gcc_stash_builddir)

Please provide the full log of the error.

> failed with exit code '1'
> 
> I eliminate this error using the following addition, just to see if
> the compiling will go further:
> 
> I edited poky/meta/recipes-devtools/gcc/gcc-cross.inc and added the
> following line:
> 
> --- a/meta/recipes-devtools/gcc/gcc-cross.inc
> +++ b/meta/recipes-devtools/gcc/gcc-cross.inc
> @@ -131,6 +131,7 @@ do_packagedata[noexec] = "1"
>   do_package_write_ipk[noexec] = "1"
>   do_package_write_rpm[noexec] = "1"
>   do_package_write_deb[noexec] = "1"
> +do_gcc_stash_builddir[noexec] = "1" <<<=======
> 
> It does pass further, till the next error:
> ERROR: Task (/home/vuser/projects2/yocto/yocto_test2/bbb-yocto/poky/meta/recipes-devtools/gcc/gcc-cross_13.2.bb:do_populate_sysroot)
> failed with exit code '1'
> 
> I did not take the same path, since I could not ignore the
> do_populate_sysroot() task.
> 
> Does anybody have any info on such an occurrence in scarthgap release (5.0.1)?
> 

5.0.1 doesn't exist, there's only a 5.0 tag right now, from which commit 
of the master/scarthgap branch are you running exactly?

Cheers,
Quentin

