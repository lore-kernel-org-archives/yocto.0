Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BDC5C4345F
	for <webhook@archiver.kernel.org>; Tue, 16 Apr 2024 15:14:22 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.100])
 by mx.groups.io with SMTP id smtpd.web10.23564.1713280457664595272
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Apr 2024 08:14:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=ImEVYgzn;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.7.100, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OUy9dTUvxIGMGjpvXSx+/sIrUXYJPUX/3xantZGMSOt2zT16jsAedMlCwohW3N4aIBmm2fxVZcs9Y1W1Cq9iyoTa7iFz27uc9Xrw9gQ4NvE/XwO/P/ySl3wi1MvWLU66C2ePvQB6OHP3Frnel1GpUqLnVFCaVM47OwtP4fUBFrR9j6udIRdKZoIEu+Ui3vgSxLkncA2vGnN4r3ucJtwuV+9wnSSsm3TDRaiEKakTpreOWO0DOs1chvtqk9SvrzsQo5jIPZFfzLigWr0SIw9X/ju9UA9duIx2PfpDF4z9W6CObtBfCX3exI1MUti6aq/f2UI4EtmHjSxwRRB5vfhJSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gcy8C/iAwCbB6biuUDl3X5KHPpen9/RyKKvHa6gs2mE=;
 b=Qyv08R4WRq6uoJVX/jF4Q3i7k6VY7fDvG5bKZMzWM+9mjWJuOLRKiAHVaNrR+jGX/uudTT/zhFjDKzD6tXjXSDu2I6Eat4hM3/KdxVLhIYbW3TQ4PBT6Hi/uKv80DpSxF2mvdlWpgnDxnmlyn8PIWDs5zx5+5UeA80Zgt72X24Q3Tfk2K0cBBVLFp5oqiaUPgfJaYhb9GmI7Lp7yrAo+gAbYKavgdt36gzBG0t4se0QoRRNMLoDN5ThairginLBBDkrI6wGP0e6VbFIYJQLdv3FuA8HB5lmc20SJ3vQPmeFHtUg/WjU8W14LwmWzdM0LYYQh5UJXsQ1iHsjeDrhkHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gcy8C/iAwCbB6biuUDl3X5KHPpen9/RyKKvHa6gs2mE=;
 b=ImEVYgznltWFFRR7Ca96XpKMNeWf2DZPWJdu178Ostu74gz2VfR44lwkctlwnPBo42/rDMA12pD96G6yLrh38Qc4njGHp5csOqQ2XUO3HXZdkSwvfSl2Q2FAtVYU76qgDx+f2BmCIcSDh5yUN7o+mPQzuhTfxtwdZL4a3RF+C0plWqsF4pCNL3ceil48lO8gpCYkWerUDph3gtMvOcYMLq0ySKvCl2hMqn6MAEu0dn55zHGN9OZ6YJJZtd82n79dTmxGpdtVZsXqiI45YsF50bJ1n9Aax3anQ5n93ooE5zIh09iqFOO+vCYtXViGhQG0DRrswzjxWW/aS7jFwmv3SA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com (2603:10a6:10:1b::13)
 by VI1PR04MB10074.eurprd04.prod.outlook.com (2603:10a6:800:1d5::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Tue, 16 Apr
 2024 15:14:11 +0000
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::bdc7:4b2c:e74e:1504]) by DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::bdc7:4b2c:e74e:1504%7]) with mapi id 15.20.7452.049; Tue, 16 Apr 2024
 15:14:11 +0000
Message-ID: <4720216d-bcf7-4cb6-af82-22de63e0953b@theobroma-systems.com>
Date: Tue, 16 Apr 2024 17:14:09 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Implicit RPROVIDES somewhere ?
To: yocto@lists.yoctoproject.org, jguittet.opensource@witekio.com
References: <vH8o.1713279034521726163.thkx@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <vH8o.1713279034521726163.thkx@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0009.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::6) To DB7PR04MB4842.eurprd04.prod.outlook.com
 (2603:10a6:10:1b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4842:EE_|VI1PR04MB10074:EE_
X-MS-Office365-Filtering-Correlation-Id: 26af57f5-e4f5-4d3b-be9c-08dc5e27debf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Te2OlTU6bpdXEbNbKzOeLZlGg7JShBt83mA9rru4lx6SK4b59m0DB5DxLdT9uYIhADQnQV0fwDdQmE68Q5kg5q2jO0aTotSPCUTwfGMS63WqbKYxazWhHredLLQ9AvZQ+HUW5GATOtv/ORoSw7vZ3YjpZBarHa5afz+P2BmNi1huRtm4D8BRQAO1yPUU1AhEetTgKMfE/h+muxlYvbvnN8w6u/SfXa+fsxFzPKkjXFQBp0zlHBPYpESzaveXcHAWIHwAA6IhZvjQYLaaIU0L33Mt0C/vDiyJILiQFuWEAHdw+5yGtYPw7zO5P0NXT69wORyxnyCUN6bRQnSN4ihn66EXV3yf04lgaTaVmTSad+yGeeJ1HOh4j2v9Cq1yHWvJrwAboe72nRhUoDkXAhTPY7ZcElnVf9ZeE2vBUvl11bcheewMOKPAmBKAc/nk56o9v2s3XsO0ep5DA3un8ZSLwecEZpDSqBH1Q9lplzZ2hFpCQw5qUbJ6ORAYi1FlUvLr2XtPWsQ+ymJyZEOqHj1h9H2xtdiPGhbbsymmG/KAF2TxQjN5GzNEPpfUcAeOG9Eue/lgIVEYWqR6jBPlZ0plcKW8oMmJvQMtF2LjJocZOvg=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4842.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SllEbXJrZ3hyQ0NScWxvdElLUVd1M0JCZDhxNHVvS1NmdmFkVGJBdmdEME5D?=
 =?utf-8?B?VUVQUUwwVU5wTU5vcjcwQ2tRQ05Fak83QmlYU2x2cFRhK1A5Zit0YXlpNWp3?=
 =?utf-8?B?M0cvbmxqZ3pYYTJ3SFptWjFQSFdGK21KWFRXdjFXQ1NxUnJmRGdDV1FIdXB6?=
 =?utf-8?B?dHJFTkFrR1pWTjdGc3crMTNKRU9mbXptL2luNU1pREpGVjdvN3FObmpBWDFs?=
 =?utf-8?B?aXY0U21jM1JOelQyT2l0ZFJTUUlZOXRtNTV6WkFWa1ZUQy9iZU9Jc1ZQYUN0?=
 =?utf-8?B?REp4cGZEc0JrcnJKVXF3ZlR2L2g1SjlXb1FyWU44ZlhQd2QwSkRnU1BZekM2?=
 =?utf-8?B?Mk50S1Vqa2pKcEpHMTVoeWo4OFRFQ2NOTnl5NHZERUVTdmxWUTFzRnhXVFdN?=
 =?utf-8?B?clBWYXB5TjM0NloyT1ZJK05WYXpRQXZraEcxbzBoV2JiUUQrejY1eFlwYkF4?=
 =?utf-8?B?THNWaUtWVlhraDQ3Qi9tbld1bzZnUHhUUzRsUmZOaUVwdHNESUZiWVEwOG5V?=
 =?utf-8?B?N245YnhjUmFMSGkxWnFraUNhZUZqRUlyNGhxZitvWk5BQ0xIcG0rV3VDeis3?=
 =?utf-8?B?VE16VjBTOWRMcHl0N1M4TGFRTzRjelYxbm5jNndZcjMxdFF4Qk5lY0txSUd2?=
 =?utf-8?B?Ujh2ZHQ3VTY2bUdzMmR4NEIwc0xRN0NNU3RSY1lFcW5pRCtQUVAvV0NEWTM4?=
 =?utf-8?B?UUdJaDhQVnc3S2lXTlM2MFJqMGF6OGdBRzlYNzljTjlwL1dvbVVZL3JyUDI5?=
 =?utf-8?B?cE1TMThOZXB6a3FCTThORkh1VTlYbHM2KzNYOWgzN2UwNk5FZjRoSVR5ZWFJ?=
 =?utf-8?B?dHZ0M0pvV09MNEp1TDRxSm1Zc00rNlFoNW1jYXk3VndvUmxPQnErMnlqRFU5?=
 =?utf-8?B?OXpxYUE4UVFBWENwNzNaaDBEODlUM2lPQzJXV2c1OFJUQlg5ek5jdUROUm5y?=
 =?utf-8?B?dFRhQllRMk1EU0ZJUGlIYjlmYnJvSEJxLzBnQzRENW1qR0JIL2plYzNOVjJh?=
 =?utf-8?B?dVRYaEd1MkVqWUVUOTFjRVFBRWpkSUlQVmFIL1NacW1scEFnWURJQ01UNW1F?=
 =?utf-8?B?Nm1Felh6REtJMUczVlZWWEk5RjFEc2lWVDkyejk0YnFaYVBCaER0Wk44WTJQ?=
 =?utf-8?B?RmNGYW1ZZWRyMUNhSGVqYllraEVQZFRRSXR6Q3NvYlUvVzRIT3gwUnVieW9T?=
 =?utf-8?B?WDE2Vy8rOHhDL2Z1dFJ2TDRmbDlTT3lXNFY1L01QWnp3dUx6ci9GdDBVWVJD?=
 =?utf-8?B?QmowTFJRRGJDV0NDMFl0bXNLYng1TjNZemVuUkw2elNpVmN3VlFLYy8wa1Fs?=
 =?utf-8?B?RFJKQUVEeUtFcVBYZ3BPZExPRm8vVFNaRHlFbEpqcVhEb2NtOHFYZkZuVGlu?=
 =?utf-8?B?VmJCSDBSWFhBMDBwZEJrek04bWk2WC9qWFZMVGNJNGNvL2drdU1VVmJCU3oy?=
 =?utf-8?B?NlhWUG9KcEc0SkpxSmJKMmhxa3FNL25UOXFaSDJBdHkwZ25uYUVqcDg4Uk5t?=
 =?utf-8?B?c2VHVlN5b2FaT1ExWit6amdKWkZLdm11Tk9YR3hDbzA1bnB2d3Vma2tZdmtK?=
 =?utf-8?B?ZGNkcmRWQjVnWUpmeEFhT1R2U3ZWU1Z2QTdxbWxyWjArS2RFTUx0SXVQaVJo?=
 =?utf-8?B?endNNVhoYzl1L1F0dTdjYklFTFVVejN6aDVJWGREMmVuZUtZbmdvMldkMXRa?=
 =?utf-8?B?WDZpT2VOdElxdzRVckxqYkFxenUvcEo4WGpCWVkvYlhpc3FXTkljbkpURVZh?=
 =?utf-8?B?cmQ2WU9kdWZPZEU4OFFkN0hZSVBNbXZ0ekoyalJWVFh4ckhpdHRIcWNlR2hw?=
 =?utf-8?B?bk5ENEwxclFCVDVQWm5DdTRvVHpBcExjTFRwczNaN0x4Z05DQlcvSnd4ZGsr?=
 =?utf-8?B?QUU1eS9FRlZYendGUndIcWk5djE4NDZPUWo2SWE0aFRoM3Nld1kzU1lVbzhS?=
 =?utf-8?B?OXduWFhJREVJYUJGZlFoMjBkVUl5cnFyWVZWOFJzWnhpWWQyWFhteC9wYTgx?=
 =?utf-8?B?TUN2Q3c2b0dNb2lmZXNtSzViUHkzODQvWHVCeXUvaXhDWTBsNDJyQU1zOGdL?=
 =?utf-8?B?NHE4WU5maVhYN1FQUmV1SUJWUXVxTEJNc0tTc0JEY095RDlOemJ1R2NTZ0VQ?=
 =?utf-8?B?VEkyMTZiUWo5MVNaSCtpakN3VGF4NHNBYTVUWEtyV0FCaVBSQkR0b3NWSXBx?=
 =?utf-8?Q?rTX16Xvrp/oIoBFm6/k+r7o=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26af57f5-e4f5-4d3b-be9c-08dc5e27debf
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4842.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2024 15:14:11.4826
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jhl8h6qnmTqk0U/ONASwKTVx+9hPBMYGuzdq95KllWHu+NDlhYavi53bxaLdJ/nZEu5VcbwVuig2SncZZATnWUnchqncXrG+OhTP1JYAIib9NCEj4y4/tsQdZ6+UHrU9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB10074
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Apr 2024 15:14:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62939

Hi Joel,

On 4/16/24 16:50, Joel GUITTET via lists.yoctoproject.org wrote:
> You don't often get email from jguittet.opensource=witekio.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> Hello,
> 
> I have a target with multilib aarch64+arm.
> I'm building a library "foo" that DEPENDS of library "bar". I need the library "foo" to be installed in the rootfs, but not the library "bar" (for specific reason in my project).

It'd be nice to know what those specific reasons are, maybe they are not 
reasonable in the context of building with Yocto :) (and we may be able 
to suggest other options, like rather fixing the software build system 
instead of hacking deep into Yocto if there's no other option).

> The recipe of library "foo" DEPENDS of "bar" but no RDEPENDS is used.
> 
> arm arch: I observe that the library "foo" is installed in "/usr/lib", and library "bar" is not installed, as expected.
> aarch64 arch: I observe that the library "foo" is installed in "/usr/lib64", and library "bar" is installed in "/usr/lib64" as well, which is not what I want !!
> 
> It seems there is like an implicit RDEPENDS there, but only for the aarch64 architecture.
> 

Packages providing SONAME entries in a shared library/binary from 
another package are always part of RDEPENDS so I would start there.

https://docs.yoctoproject.org/overview-manual/concepts.html#automatically-added-runtime-dependencies

You can check by using readelf or objdump on your libraries/binaries in 
foo packages. I **think** bitbake also tells you about this implicit 
dependency and the reason for it if you increase the debug level (-D -DD 
or even -DDD?).

It could very well be that your SW is built differently for aarch64 than 
for arm and it actually links against libbar. THen you would need to fix 
your piece of SW to not link against it.

Cheers,
Quentin

