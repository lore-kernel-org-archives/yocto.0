Return-Path: <w.egorov@phytec.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5A2F34C4E
	for <webhook@archiver.kernel.org>; Mon, 13 Apr 2026 12:25:10 +0000 (UTC)
Received: from DB3PR0202CU003.outbound.protection.outlook.com (DB3PR0202CU003.outbound.protection.outlook.com [52.101.84.118])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.271061.1776083104140734207
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Apr 2026 05:25:05 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@phytec.de header.s=selector2 header.b=KeBpJnzg;
 spf=pass (domain: phytec.de, ip: 52.101.84.118, mailfrom: w.egorov@phytec.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jxuz9Ho+vEnrfmKk/S/ul965tVMkWXk21r9HVHixavp9HYKmBbyiWrWGfuthk1798lYDB6dCbJL14dnQvhxmU2Po0uH4YwCT/WTTONuBeH1LOzj6MN53hgKVLABAYBebp66DowAsQ04RTE1hqQ5lSlThcnjsBSawZKO1C0mpT+0SdrPU50eERj60ZyIYwnEaB3yFEbOa0ME/Anb4Q2ykr/FVCXR6cofZLMzHlPL65i+4Xr0grFDspAlUmNr/CMJzZOI2IbQCL9qFeV0CtnAWl1LnE7tNPefxWXiYQgHTkUCD4EzgtSJYMMsBJFwUU6g3wtkcG17vIgX92A8RLusP+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PEnyKrbf7q74JS0Xs/Q0RvVKtoAbT9NeB9leXsRj470=;
 b=snwzXLGoboroHLpnAdtzYgSWWahyBY5cZU8Y95umOKT4lmD/I1p3EftbfaZUBrRO7IizP3NUSFnJe4DBmNVlZsuj53g9ICZmN96v6ae7MtYqE5n/Pdnxk6pysg+Ax4uiBbio0mBIibuqxCbZuolTbUC+FKrtzBvzlnlR5BvV4p0/ZgVNAuojoXROHSC+5Ejsk4CUN/dsiLVw0cCpXRJ5beQFb+hmbWqhjFr0e1egDVTxjgY3t+tdKAkkckbpxpVf4Ir+kLusc+N844Jf2SofhDQadKV0+CpRhjLOQYa2dE0SU2n3jxgRkeOtXkQBK9epgzk6jNutSiRapNcRUgFCgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=phytec.de; dmarc=pass action=none header.from=phytec.de;
 dkim=pass header.d=phytec.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PEnyKrbf7q74JS0Xs/Q0RvVKtoAbT9NeB9leXsRj470=;
 b=KeBpJnzgWgn9fxGBfasN9YjfilW0EUAmCMaDXlTAbG9bsYnedAhZUVPE35Mp65fPrUi9roSUjdMauADRele12RAT6Hj9tf2qAKIC34a+qwj96GM8SpeW1ar0rPaalUNCw7jEPM4Qn7SEgGv7VsdqAlJlFmopC582oxRf2ZcEr+lLbomUNIApATjcJMlHaic/ZWWPmE3yC1xhtoMbgt8FMG6n3sCSjLY2h8hfxPmdUQhSk5ZOSkNfPKGprryxwBvEnMxIBiIQnMdWnxq3Lr9t4s+jrCUslE6hhLGYVTxuy7tU88BvR175/M4+ZPcBJbggDZwrPXnXVPCeSsy/cYIJOg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=phytec.de;
Received: from AS4P195MB1456.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:4b3::21)
 by AM0P195MB0740.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:16a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Mon, 13 Apr
 2026 12:24:55 +0000
Received: from AS4P195MB1456.EURP195.PROD.OUTLOOK.COM
 ([fe80::295f:9a59:b66a:621a]) by AS4P195MB1456.EURP195.PROD.OUTLOOK.COM
 ([fe80::295f:9a59:b66a:621a%6]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 12:24:55 +0000
Message-ID: <aa0f7c10-5f37-41a5-a1cc-ef1d6a364f19@phytec.de>
Date: Mon, 13 Apr 2026 15:24:53 +0300
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Fetch Issue
To: Josef Holzmayr <jester@theyoctojester.info>
CC: yocto@lists.yoctoproject.org, snehadhar39@gmail.com
References: <6KwS.1775631328520262279.RWyv@lists.yoctoproject.org>
 <CAEt6Nwo_d+6yCCJgrWFuGviSkPXFr82GZ5dtwQDK5=7m2CHmFA@mail.gmail.com>
 <d060ac53-8cda-4014-9158-c68d87a7bad7@phytec.de>
 <CAEt6Nwp5RVA8RuXNq-HqgG8vaZMmOwJuqWgnU1shiaN61tHeOg@mail.gmail.com>
Content-Language: en-US
From: Wadim Egorov <w.egorov@phytec.de>
In-Reply-To: <CAEt6Nwp5RVA8RuXNq-HqgG8vaZMmOwJuqWgnU1shiaN61tHeOg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: VI1PR10CA0105.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:28::34) To AS4P195MB1456.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:4b3::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS4P195MB1456:EE_|AM0P195MB0740:EE_
X-MS-Office365-Filtering-Correlation-Id: 0368d098-1073-4b3e-4ef5-08de9957abad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|4022899009|376014|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	h9mPFpECK46WVtbP4ymixUpIG9R4NBWN0mDuQnhrnstu1ypDxviviB3VAIClkR8q1U6LioRYgdJ8NfzZ4pY3tbjm9M70HwOAY/sZgMmv2ZsdSzVH5cUwjVclYJQ7rBfn9dnrTEc5J+5+Ub/CfgRB2cHWv+NmR43Tel1CcwLdQaI1ehT2NF2CzigTijDS/ZLD6uIKW30vzIR6RADbz6XcjfTsUJbes6WDaI7eYgWEhqdIgs+sdNw0mhXGM8pg/WAicHCJk+94lm1CsQ3+Gs5EDHTWL6EQycLYxWXu5uj2wU3OteeR1K4DisbIXc5+N1lcH0uavKHZHaUxAnTftw4kb2XUTAjqpsJ0fYipIHpvh7GRgcwq6Sjbb7bNwPVA+2nCYLvooghZ0996MS5XvQgvg3tl9xeTrNSx5ZpWhraaZe6r2Z2X+IwTgZ0K7Ixl32vnZWYP3C4PtEpf/i5QftZB7g4+ddaTthK0Tf94JjfW4tzc6s6vfEhSNPVBToyeChu6k3IayHdfh2fdbMw2FTsxZaHvbU8zQoALbltwZNsViwIbQ1gguFLu+1bjk8jF9p0qb+GQ6qYUE+5CjOnKGjJGx917E6/kwoovC1gufHqIWsKqCFjpK8iPrUKiqvVweOIvSB+pFuqBllcASmdWX5YH1t4kW0aCOiIDZMpT+0pm+/uDShl9+UEAActvJubXoL/T
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4P195MB1456.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(4022899009)(376014)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?XzYY9muiniY2TA/GbdsHebxn4DTOA7DoCCZf0Gfe0xUPPfyQIw+3FcFWKxRM?=
 =?us-ascii?Q?9pYMOEX7J7PrC3+IEtcKPV3n4HV+fXkSysDoGRKRAJI5SGIBVWJd/U8x5hbl?=
 =?us-ascii?Q?5Cc/Sa0eJae1KRufrOijcny5zGidQTpt5pO6tWsSbjQMC3LMk/TUGFEi5EHk?=
 =?us-ascii?Q?glIfTt9UWeLnGa3FL6wAKqYx0uYGmbCBlzSvQ4WgDcioTcogMTJG5jIzw5Z9?=
 =?us-ascii?Q?gCCIWzHFN3semGdF0KXJ+4U30keO35j3fIfg8h+anma6m5dLwDAzV+p4RGrB?=
 =?us-ascii?Q?v/FyA8bUvKLGJ5PuINRV7V3G8TGD3rI9dPnObLWhWtbrglJsHuxO0eeHxM/q?=
 =?us-ascii?Q?vgmuYqBZ5oZgLB/umekEt95udF42HWuVUxFnEEGgqAnUP8HV0iUQsDIVujer?=
 =?us-ascii?Q?Iu5jNHnanUddbMeybSWKm3UNsqnIevFzW1au9YJGIUT4LpdhJcwXMpA3mCBC?=
 =?us-ascii?Q?rS2no0aCev+TKINrjdrlD5X4cr0Ta+eI66vyugNkdTOy4YrT87JjEPWVWsqm?=
 =?us-ascii?Q?WAK7/yMtgUP3GFwEmMlPmqJvFCvZ7/xy+Hlt81YVDuelFmxCFQkxl4chO5jy?=
 =?us-ascii?Q?n+lM+PxuAecPwYWJJYqi6jhjhKW72RD5ncuAPgMS1ny7lSLmVM924N4C19Da?=
 =?us-ascii?Q?CyiGk4eyiyCm0hBxBPPmeImku9Zzwk6WVKXa/Zbi0sMk9XSvJTPrZ0wC4Wvs?=
 =?us-ascii?Q?nIer0ub6tJFg1x5bpqZ4zFydpoN3hK0MKlzLxQf/vxjWpYSGhlxVB+ELPcM6?=
 =?us-ascii?Q?SicnNeehVJ1D8GZSxBIEww1gA0hJtUOG2MWKOjnpZNWv9X/xZZf0sR6m3e19?=
 =?us-ascii?Q?2X/ki4bdlwGdj9XxDLro176OCHp2Gp8HGC/5UAUWmRl9GuGQpK+lOLJpbgEw?=
 =?us-ascii?Q?/Ojzs8OW56UCEmDXsKubRw3edkytCTWms5QM/vHDR81br/WkaROXnQhvTF8D?=
 =?us-ascii?Q?zpJl/Y/NvsSSiMpoUzvYdT8NcGM4SbMVw6D8TB2WNPb5uGz3/YyGeLT8UdPT?=
 =?us-ascii?Q?GvianAGJJOnWyKz6v8vwiseG3rGqsMY3mKJzzJcoqck8clAvMt9NqZCaEjPB?=
 =?us-ascii?Q?9PyBO1PyyZzkEU7fLvM6ryX+sZWF3RmYRyI3dWra7lrmSAGKcKL2n3AXCk7z?=
 =?us-ascii?Q?uENfy/zIrnFdqR+cmbR29eaPxx1UegPCuXTezleLHr5CAsaMcsqcf6tYYmWN?=
 =?us-ascii?Q?JT4/sLdK+ILPdnYhRNUhDizCrsfbZAMPIt2Wdk3dv0djT2uoG4NpirSV9RuM?=
 =?us-ascii?Q?OfIuBSAprjDOGjJItP0W11SnXbhY+mjx2bcF6EHCpE84AUpXwROcA7hlQ73R?=
 =?us-ascii?Q?U8ngzWBkp7u1clcUbwI6ZIBpPEAEvkkc0hAsN0fZa5y1Pso6YqJ2MV1IcmD7?=
 =?us-ascii?Q?xdDFPvUHTLDmGVAHy6UpZ5zin6w2PevaKp3VsXA3i+UFDbc7N7Lhi9NvuAKT?=
 =?us-ascii?Q?Wh+WXiDkeAlQ3TysP/RuW2oNSaH1QZwla0gb9poePNELopy3QA54noZqI2v9?=
 =?us-ascii?Q?kdiE9MS8T3spewVYSeZS6rq9NV/S2veX51hiCTCMZlnYlEYEDa/kPRLXQuuo?=
 =?us-ascii?Q?3W0FEzO4C7oRrXfjRdt8/ve4dhf1WWqgSXG+xRQ8MVbwNqoMlNfuNno2mXEN?=
 =?us-ascii?Q?ImRSaNzSLBPXGQ+HKdNiQV2uqNd8wWU9j8VMssOXmLXuF3Xn+tpyN1jBag+S?=
 =?us-ascii?Q?XWjPNQ/NBB+Dm55GwQlaiOeChHbrHmByEvKH4T2J450W7/ALTWb9fkaa4cyi?=
 =?us-ascii?Q?nm/DqFjqUg=3D=3D?=
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 0368d098-1073-4b3e-4ef5-08de9957abad
X-MS-Exchange-CrossTenant-AuthSource: AS4P195MB1456.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 12:24:55.5988
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SuR1cWnEcLV+Fenvu2CIUHuRnrgy2xNQoOof93Z2hKoycOqKS17Lmn5tMoCHF1/c6N43Ja8RquFoLl5z9JbN7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0P195MB0740
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Apr 2026 12:25:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66409



On 4/13/26 12:33 PM, Josef Holzmayr wrote:
> Hi @Wadim,
>=20
> well, next time we plan to adapt on minutes notice at 3AM to a
> bandwitdh attack, we will announce it. Big promise!

IMO its important to communicate such things more transparently and not wai=
ting for the first report.
Please just take my comment as a suggestion for improvement for future chan=
ges of a similar nature.

>=20
> Greetz,
> Josef
>=20
> On Mon, Apr 13, 2026 at 10:23=E2=80=AFAM Wadim Egorov <w.egorov@phytec.de=
> wrote:
>>
>>
>>
>> On 4/13/26 8:11 AM, Josef Holzmayr via lists.yoctoproject.org wrote:
>>> Hi,
>>>
>>> Due to a load of load by bots/scrapers, the git:// protocol endpoints
>>> had to (finally) be deprecated a few days ago. Please move your URLs
>>> to https://git.yoctoproject.org, then things should be fine. Please
>>> let us know if not.
>>
>> Would be nice to announce such changes. But maybe I missed it
>>
>>
>>>
>>> Greetz,
>>> Josef
>>>
>>> On Sun, Apr 12, 2026 at 9:45=E2=80=AFPM sneha Dhar via lists.yoctoproje=
ct.org
>>> <snehadhar39=3Dgmail.com@lists.yoctoproject.org> wrote:
>>>>
>>>> Hi
>>>>
>>>> Is anyone else experiencing issues accessing git.yoctoproject.org? We =
are seeing fetch failures for meta-intel, poky, etc.
>>>> Thanks.
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>> Links: You receive all messages sent to this group.
>>>> View/Reply Online (#66404): https://lists.yoctoproject.org/g/yocto/mes=
sage/66404
>>>> Mute This Topic: https://lists.yoctoproject.org/mt/118793581/3616782
>>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [w.egorov@ph=
ytec.de]
>>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>>
>>


