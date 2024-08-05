Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EAF4C3DA7F
	for <webhook@archiver.kernel.org>; Mon,  5 Aug 2024 13:05:37 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.58])
 by mx.groups.io with SMTP id smtpd.web11.7476.1722863129717724812
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Aug 2024 06:05:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@cherry.de header.s=selector1 header.b=lPaqVjif;
 spf=pass (domain: cherry.de, ip: 40.107.21.58, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nclmpuukHsOS2lsjdT0LQYgPcgHjxTLkux5CeRykZZ/DwvWa2t/CuJc2Qkdw/DMqx6a6tu0ee5sKWqT/EZZnRzhYG8RCkBj0pJXD7AA8LZta6lAin5jCjCd0KaRsnWxkpX8HGd01OA7Ce+8xpLNdOJJAVjch5mcRfT0WSt3P3W1bLChnzZobxtxlvFME6HI1Qqb0nOt5e5/W+lVtRaQMMm1EAIYMV3XyGNWtCFobQrDRnpJW6mirWE+RqsG4WiHWDGNFfzVXsOkqDf51An6HoO6j5oFz7KoowIbAc5wZEx82Fi23p4Z1KgDVyWxonrqxosMFLRFYmMn7KmviDAZ1pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=INP/6Mt8/6RaeI4gL1GK2Cx1a5FWcK2/Sf2I1yv7qjQ=;
 b=kvYlYRtAtQACQe0aRzUCUacBqa4BQN1VTIT7gKveaeMvHXWOmLS4U8lZ5FQEoHQBj7Ol3/QhAZvXiCGhTp4d0J+Drd8hiEIkcQWwRY5xl+7iK5nnYb+Sb3a87ISt0P3+FOlC9Xs/dYAQu9+nc/9QBgpqYy2DWaBtLIU8ZdhXAQ1sJkd5BDsA6J5zzNxHIfW7piEmWf660/oO2DYgdwc3JGl0I61BWU1DBMv2clifeN5TIDT+XfpCvCXTrLcOOM+FCGlvYIob64mrvo9qkn3Zz2tUeKLccjLk2FJUFEk2KqnjTQ/y/BQMf7v8p3mdi19kTE/jCQKvhzulKU3zVZecFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=INP/6Mt8/6RaeI4gL1GK2Cx1a5FWcK2/Sf2I1yv7qjQ=;
 b=lPaqVjifTKFrJgCYtYCFJ3ifwu10vr1gKzoy/AeCgU2SafhIc+B3aaKidXTInKJr4Z0QChizq6j+t8OjLBhKV9Ihz9si1B9NujBrPunEQwbJG/c1caBOjrHFOAb4ntHiLZ6XzhKirmmfxAC4JefwZQYgqLQqvndPMIupHvrizVk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DB9PR04MB9404.eurprd04.prod.outlook.com (2603:10a6:10:368::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.25; Mon, 5 Aug
 2024 13:05:25 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%5]) with mapi id 15.20.7784.020; Mon, 5 Aug 2024
 13:05:25 +0000
Message-ID: <13ebf7c9-91df-444f-ba3f-10e1ab393740@cherry.de>
Date: Mon, 5 Aug 2024 15:05:23 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Missing patch status (upstream status)
To: yocto@lists.yoctoproject.org, david.daniel@vrag.ch
References: <bc2a6e0bf1d7b9a02b215a0b26b4bbd9dd577072.camel@vrag.ch>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <bc2a6e0bf1d7b9a02b215a0b26b4bbd9dd577072.camel@vrag.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: BE1P281CA0391.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:80::8) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DB9PR04MB9404:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e0a920f-3fdd-4430-2cd2-08dcb54f4585
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?rQiORj/1tRDMuewyIC1CY6UgoB/WwNPonPtejVFKM0B8j0tdYJOyRBu0Npar?=
 =?us-ascii?Q?EE0kcqXec0HDrA70R7axXh+I82phOusLijoYEBDzpzt3wB8KtZ2B0RZUp1XI?=
 =?us-ascii?Q?aiL01tjTXStr2cYTrOj2VloTN4ekB+BAjbubr3F2Rc77RrTyxYZuLMSNihV5?=
 =?us-ascii?Q?4vnWvxip8YTOsLu7sHmU2iy/U+4psO7SWq0Qius+ugjotmlrofHQgnBuPgfo?=
 =?us-ascii?Q?xQMStHLGIBsG9VFHlr8cpar8Oye190y85rPvxPBcCwOQV/2lu0zb7f/VLSVJ?=
 =?us-ascii?Q?4da6h98bJd/FBithODxPBz3+J3R/0W9x+W0hdEC72HkmtKza9LgsByDfZYTC?=
 =?us-ascii?Q?bywq2ge7JpGje8d2xi81Cg2Uvi0dFAU0OFDNwa6NolD4mi6pGrZVF24tGjrJ?=
 =?us-ascii?Q?U09m28UwM8XttKAy56F8OTbCgT/BQzyMIYU/QIDNn3JxTXwyPoYkIRJ7eHcM?=
 =?us-ascii?Q?GMIbIdbDxREla/GF9s6wre1Yu8bIvOJQ9RXMS91/Ajtdwloa9a5vh+MphZaG?=
 =?us-ascii?Q?t0g74fBor/HCueKnBC9yeZxn3KrHE6jVE7PHZr/KON/8iOankHHd29h/eQA+?=
 =?us-ascii?Q?3/YYbCAKHqfzoJi5PjnS9qpfx0Y8Iw3l5VkhSKn0SCSZsE+lkOiFRkdXgE3f?=
 =?us-ascii?Q?thVXfusG3anhbWY7UZ/5zfQuzPsvIDZXUHIehdRRZ3gRGK7UpBVrgCtuJZB8?=
 =?us-ascii?Q?sX9xQIcOKKjfNdEN+jdRerJpCjhzXXIMPDOfrBKlKHScx63tmtVIpiZ1cxgp?=
 =?us-ascii?Q?pCqsvumDuCu5wApHJw1tLArgk9gC3ZZiGmcuNo7hZZYdQVYv/B+CHRNjQZ1f?=
 =?us-ascii?Q?i6Ca2wE6lQ4VlVy4IAEkFolPIkhGyPpistwL0hz+bOTL1wrDcrytaLfFPg2A?=
 =?us-ascii?Q?WHaBIscIOs9oSQ4miLqv6Qx9W0x4cYfqfytOPcsYgsofnvG2uauTbdlovFIb?=
 =?us-ascii?Q?NcNO984BAq7fkv0yt7cSD0l4fg/0VUrrBeof8SpOm5l7X/i1BfGGXDTh2sij?=
 =?us-ascii?Q?Ixw0sq5MmJmIidnNT2JjJnbUhupm6+L3OyJMD5XWlEMYJsdEc6PVNP7B79SG?=
 =?us-ascii?Q?hr/vfbzrr/z4VGglgVRXjhIo2mcZkML2Cq+u2IThVXuS0B5/lwisjqWB4sOJ?=
 =?us-ascii?Q?KBm0rfCvplo7uadQAOZFbc6vTzBNhBWbyPxXDSQiFXy4gZiuohcQvAadj8PE?=
 =?us-ascii?Q?hdNBjerrcMPx+VsZsIwDEynwzXviTnAcrtGFdTnKpBPgD4ZmLLkDlgXN1r5f?=
 =?us-ascii?Q?e4WnGqvQysJYc7gOnZ7s8lq8Nc8OChzH6h+/qh+707Bb+snKqBwdH3pSI1OJ?=
 =?us-ascii?Q?XMc=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?vrG63WkMlGmEDgKBVEMveuPEPOazfWqfdH/r2n0OOt8ubR/DF54MckJXqTXb?=
 =?us-ascii?Q?0GbFMiZZrx702RBFTp+Lm5u3a1hnzQBu/pp1CpW5Wrhbhxpb5WyAm7sTJ0Sw?=
 =?us-ascii?Q?WtrKwzMzKtaulY5QvhCveXyDLsTvbCaroqtbD7Jf8BoXwIzG3N7jrJa6OaYw?=
 =?us-ascii?Q?/teVkz65Zd6bCcidMzok9ai+LLunNE06QTSxUlmwZh+vRQ6zlzx4Z7MGHamG?=
 =?us-ascii?Q?xVZDrK/NvFqnoaywkhnlGjGKovfmMD5e9wHQdGWnOFIICBP1CMNwC0RUtsQ1?=
 =?us-ascii?Q?By3f+GZHZC+e2SroKjs0cCY/JpgX5slppQAKX/zNfZ31eH2DrDOJLYsJv6xw?=
 =?us-ascii?Q?4Fn/zGQlfuzC81MeGlVGKaNl4L7J+di+wPjtK7JVPS3OEgKRttLtq7OFs8Sf?=
 =?us-ascii?Q?f85yMkuNCm8di9Cu7IR+KT0hYC80+T1i6Xa7hmHRR3tl+L2eEDzgu6TGStPJ?=
 =?us-ascii?Q?lpwc8nsJ6DFjYZd2YSb+XQ2WYsxNOBtSycW/oU9iRQCk9nsVNfxtmcoDui8y?=
 =?us-ascii?Q?6fIA6pT6v3Oe6/t32DnsVB0/3W/R0Oe+iMi2CDy384RSscagob3IvAi8SMFO?=
 =?us-ascii?Q?LdQPT0GtbEkN0qrof3Q8dJERvs+vmoWsPAKqemYwn5kBQWXSaFydFQSlEaRl?=
 =?us-ascii?Q?xaMGwFPg2Fg7uZKwEEdxXYx9qnjHkdO4b+BHevMRWWJYJR2VkoQI8isr0Bjo?=
 =?us-ascii?Q?sRWr9bR/iL5yWdAuqD3DY3McHZNp9ubRVA15eaVNCPVrbWMnX9+mLZ1TqsIv?=
 =?us-ascii?Q?lqPxPGDWXTLag95CMRvJ0ucDjrG2PGDznzCydHWJuF336bHrVOtb05Jf8+CS?=
 =?us-ascii?Q?I+tZfvW+Mbq2vkup3ZOhMnqlLPaowqkKCl9w4Tw8fPeOrP0fzUC4HRKgZ2S2?=
 =?us-ascii?Q?GfLHxOTXTDZ1e3B6L/HGPDe8A1Bfa1Fi2y8dnMPHY4XPkmy9ulG7wDha9Oxh?=
 =?us-ascii?Q?w8y+U0ILokdDXwMA+scHqj9DmOCGlP+I9GvMavGolbQY2WgRhZw1N8de6gNG?=
 =?us-ascii?Q?rqjKohtjx34XJb0DYW08sJ25mpxhk+YNO31C/IoDPBcm2jf1drqWmogtQBTJ?=
 =?us-ascii?Q?4yYaXaHCnJTYdFiMAlU/qY02JeX5FkVlPSOsPOeDFKmc7uuZZPj596cFXHdE?=
 =?us-ascii?Q?ahNFDFo+W4fNy6vMqR10/Na9a9If13PQFC58SmHgnORBpUjzF9HwyXL3ch/5?=
 =?us-ascii?Q?1ZcqCpR66Bi0iclWnTPys5laAACy2197TM6FKollx4s6ObYJU842sKeRNx8+?=
 =?us-ascii?Q?H0g+p3IUJdTEjNt75qbJgxz5OVgcuFmYQJS+djK9Ih+Dv7xzAmGIq94wFTP5?=
 =?us-ascii?Q?DRh7J+83rM6Zxog4blVDk+8mCMZrpQ8lH9xAnfEgIHC65iKefBuzyV5nXmJc?=
 =?us-ascii?Q?8DegSTVq88pmnUvMbm2nia8vfuTGz3jcVtGGuwnqI8gvy33swi44BRKNOEf0?=
 =?us-ascii?Q?cmEg5VviLn1VDV4VNadn9YaATfBWQJ76H3fDRQdLlTGR6JjGQJSSy9mduHzG?=
 =?us-ascii?Q?G6+b3v3fy4rSnLIxDCIAyJZBpw1utwZCeBuPh+FnmVYo3ufXibw7ebz4vbVe?=
 =?us-ascii?Q?fHxEhRQVQgk20qWD0zlfu0WBK6hlHTrsIXYiZrgLAm/LF5KXiYIaOQDQ2pan?=
 =?us-ascii?Q?ta2tFvrfO37LYPwxIRH0G9s=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e0a920f-3fdd-4430-2cd2-08dcb54f4585
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2024 13:05:25.4291
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gZvy4t9jhy1U6P14fpgPkbBB8x3ZQI00CyXy91S+hANJHeZpSm0Yk/xH9UIa4/komATrFKuwXPPQhSSxJtXXloa9taHxwSlZUcuEepZppp0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9404
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Aug 2024 13:05:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63653

Hi David,

On 8/5/24 2:37 PM, David Daniel via lists.yoctoproject.org wrote:
> Hi all
>=20
> I realized that my project does not build anymore. Now a patch status
> is required - but even when I put it in (the patch status), the error
> does not go away:
>=20
> ERROR: bootcommander-1.0-r0 do_patch: QA Issue: Missing Upstream-Status i=
n patch
> /mnt/data/yocto/bf133/meta-bf133/recipes-bsp/bootcommander/files/openblt-=
cmake-add-install.patch
> Please add according to https://docs.yoctoproject.org/contributor-guide/r=
ecipe-style-guide.html#patch-upstream-status . [patch-status]
> ERROR: bootcommander-1.0-r0 do_patch: Fatal QA errors were found, failing=
 task.
> ERROR: Logfile of failure stored in: /mnt/data/yocto/bf133/build/tmp/work=
/ppc64e5500-vrag-linux/bootcommander/1.0/temp/log.do_patch.1483178
> ERROR: Task (/mnt/data/yocto/bf133/meta-bf133/recipes-bsp/bootcommander/b=
ootcommander_1.0.bb:do_patch) failed with exit code '1'
>=20
> What I did add was something=C2=A0like:
>=20
> Fix the installation path for CMake based installs.
>=20
> Upstream-Status: Pending
>=20

Seems about right, maybe you can send the full git log of that patch so=20
we can check if there's some weird character somewhere or somehow the=20
pattern matching is misbehaving?

>=20
> Can anyone pleeeease tell me what is going on there? What is the

For the whole discussion we had about a month ago:=20
https://lore.kernel.org/yocto/CAC3TgAK9+yDoz=3D3emvD6GTB6PNNe7=3Do5w6hkGpWm=
0juwt_X=3DpA@mail.gmail.com/

If something isn't clear or you have something to add, feel free to=20
answer there or here.

> correct syntax / requirements - in the docs I really cannot see
> anything at all that could lead me to the correct answer (gotten
> from=C2=A0https://docs.yoctoproject.org/contributor-guide/recipe-style-gu=
ide.html#patch-upstream-status
> ).
>=20
> Can I turn this off? I would really like to be able to apply patches
> whenever I think this is necessary / appropriate and not have bitbake
> rule me out on this.
>=20

Yes you can turn it off. See thread linked above on how to do it and why=20
not to do it.

Cheers,
Quentin

