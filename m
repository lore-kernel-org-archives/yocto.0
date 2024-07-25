Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CBA0C3DA49
	for <webhook@archiver.kernel.org>; Thu, 25 Jul 2024 10:29:26 +0000 (UTC)
Received: from AM0PR83CU005.outbound.protection.outlook.com (AM0PR83CU005.outbound.protection.outlook.com [52.101.69.110])
 by mx.groups.io with SMTP id smtpd.web10.33240.1721903362711520437
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jul 2024 03:29:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=VCX1Jajs;
 spf=pass (domain: cherry.de, ip: 52.101.69.110, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kVTehrG0o6WywssqJgSL7HbEVh1Xs86y2PISrUCAaKqhSdHbTKAWi13YMcQgYbQ9Mf0tT4qJV1+OYiXmFwFgYAGhEUCwvqDbQhx8ZDjquI3kCwNQ2ZLpfddeQDZIUO6XfX+kpkh5/QhMG7q+OMb28Jo8b2V/xKr9sV/bhxgcNJIzkybK5HpHX15D3aBGCT8X2NcWH81DF/Hbhgl2VuzxeA178+NaYqWBDcXrUo+YQpG+3cmiVAgCy8h1ojHrku2vD8cJPQQl2SKZI467+T8FkhnoaBuVOOtvP2ZFndn//bNzIfKT+sfIJZqhtMbi/XM7mozNgsstEEdB8Bynh0LiaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=27T6j/r3ckCEHM9YZAyg80groZFDaI9IV7OLUwTnFz0=;
 b=hOXgpRENfHVHZ7mE2SPCVLaa3BRRzT6MivcwwwTCtkpCgbbuZqWT8eKbz3mElfVZIbLm5Zhi4t2XLFmUyTuLnlRgMYrAJwyY59Yf/+e1sKBqNBxc4OKnyePSgePwwD4vQbvM5QOvLp8nmHWBu2kR1LKTRwZO9O4pGqNYhcocCfytbe7qJND9eS0z6pJTsO3IS4nJXcO1KqjlypsRfQufFXeuHR7r3cZh0ex/SDQ3i8TOEp8V2iQLL8d+AIcn0YTtTdaoKxrCZ/ZXwr5aOtvZXV3SQBwVPvhvo+m8pyZqF86GK6tDPFwoPZC02apUNcbtn7SZXoO3qHcgndIPzmAZMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=27T6j/r3ckCEHM9YZAyg80groZFDaI9IV7OLUwTnFz0=;
 b=VCX1JajsYA/O9Bu9//CuGu7uzxZAODIVZcurvcRBFDJoaqRXqAeOavs/cQFMppCnjE4bx3jZfFRuk+htCO9hd/XpyGzhWsz2cD3BtoTIKpjlW9DM1CZLgM3qYFAOED0r/OXD9sYV1sxXtBF8Z1vvyoAfg8f7HA3DgriJ253EZVw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com (2603:10a6:20b:409::9)
 by PAXPR04MB8765.eurprd04.prod.outlook.com (2603:10a6:102:20c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.28; Thu, 25 Jul
 2024 10:29:18 +0000
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea]) by AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea%3]) with mapi id 15.20.7784.020; Thu, 25 Jul 2024
 10:29:18 +0000
Message-ID: <e4eed6dd-574b-482c-b468-81aebe66f66a@cherry.de>
Date: Thu, 25 Jul 2024 12:29:16 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] rockchip: chromium HW accelerated
To: yocto@lists.yoctoproject.org, marek.belisko@gmail.com
References: <CAAfyv37kUr5DE7Q+eD7-d3SiT4PVbahVY156sbQodv9gqsug7Q@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CAAfyv37kUr5DE7Q+eD7-d3SiT4PVbahVY156sbQodv9gqsug7Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0213.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:88::18) To AM9PR04MB8906.eurprd04.prod.outlook.com
 (2603:10a6:20b:409::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8906:EE_|PAXPR04MB8765:EE_
X-MS-Office365-Filtering-Correlation-Id: d050c511-86dd-432b-d922-08dcac94a3a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?T0ZOUktoNzYrSHBOdXR0ZzdySDhzcmFscDJ6ekRWamdZd1ordWEvanpNVkFx?=
 =?utf-8?B?Rk16dDBHcmpOeUxERldRYU9XZzZBbmFvUXhCYnVzWHIrb2NIMUNCSndiUk5B?=
 =?utf-8?B?elI5RElzYnY5OXJjQnZXOUl4TldyNWYzcXRaWW1YU0owK04wb21RZTF5SVht?=
 =?utf-8?B?UUZUUFhYMXp2RWxiMGF6VjlZbVVCd2ZhMXVNR3Jzdy9URk1GQ21WeUFtMnE3?=
 =?utf-8?B?NTFZbmNZNzBJY1l0Si9YMWQ1ZzZidmhRd2k2eUgzZjhReXgwQjE4MlVKWkZp?=
 =?utf-8?B?VFplSnpuK3VPZEUyV25XcXNJcEt1TGxYOFZISWFKbitJNmg0TkJBc1JVV0pM?=
 =?utf-8?B?dXVIWjdWODdycjlwa2VWWGlhOFMxQm9rREpTUVhaVThVeXA5MHNXZXBDOG5I?=
 =?utf-8?B?VFZ2cHRYY3Z4S1dGajlQa1pQQk9BMmVTZzRldXBWaUVSdlZVajlQOHNid1cv?=
 =?utf-8?B?RHhrTldMdEZwUUFJY1JWeSt6S2JKcEcxT1FFRWEzdVRWMksyWmplNFZlcnJ1?=
 =?utf-8?B?UFc1dnZFZFpuVEVKc2V0UnVDcGpoVjVSYW1ndjBKRFhUS2hGSCtKMytyZnJV?=
 =?utf-8?B?OTZSS20vUzF1U082UTc2VmUwOHR4T1lxem1yTzdVZVlocUorRGxmM2drdkt5?=
 =?utf-8?B?OWFhNDJvc0hpYVNJSjRVY2t2aTlFU2RSbE9Lb2dUUUZ4MWZVT2JwTnVMMVJQ?=
 =?utf-8?B?VnljRlFwakRxb0VOOTVQdUxkbUs1V2ZuRUFqdUdUUkk4VUIyY1JUcUp5YkRI?=
 =?utf-8?B?dWNVSDFpRUFxeDl6TjBTa1FRNmVvcFdiMUY4OG9CTHNKRC9ZNDNSZnptNjZr?=
 =?utf-8?B?U29QWlpyaHF6TWlRcStmUTFpY2llRk9TNEdMcmg4N0Fab0NyQXEwNGFtRlpM?=
 =?utf-8?B?dEYzZUNFS2U5RWtraHlBb051TnV2YkJsR2ZmNjdLbjhzM3kzSFJpaU9BYWtx?=
 =?utf-8?B?VDZUN2dBK0dBKzNrSEhZODRxc2lnVHFzRWsvQUphZ094UVQwV28relN1M2hN?=
 =?utf-8?B?dkg4YUlwdGZXK0NmVzB1bHRsMzhaYnM5OVVjNjgwaE5NNmJlaHJ1bTVoVFlM?=
 =?utf-8?B?TU1SaDRqRWFKdDdiWVRjRDJGakZwaTlpY3ZQQzE5Ylh4aWFSdTFhelBsWHg5?=
 =?utf-8?B?VFA0V2dLYUxCNThFTk5GNmFMRzhQcDgvblVaaVd2THFGRlhEVzIvUHFkN1lS?=
 =?utf-8?B?cDJPbVJnMzBPRkdnQ0M3U1d3Uk1sbUpPdGxpRVowVmNlbnkxM21NcDltTC9p?=
 =?utf-8?B?cytJREFzZ2hod0FRK05MTnNxL1hpSXpRaEwrMXl4QW9SY1BhV3BlMUtjNWt2?=
 =?utf-8?B?YjVvbWhGMFcwNTRaSVU4WG54TWwrQlpuVVBMbEZ1QkQ4c2xTNW1zQnNPR1Zj?=
 =?utf-8?B?ZlFnVU9STUZBUVNoVXRRZms1MnNXTDZlMHF0dUVtOWIveCtMbExCT1B0ajBs?=
 =?utf-8?B?bk41ZUJXdU1waGI5MmxNcEEyRTBtNENzVlE3THhUc3lNdjVwMWlZWlYwR1RU?=
 =?utf-8?B?bkxjZjFiR0RUV1dFaGE4dmkzSTQwQ2JwREljcGJTOElPanVsd0F4d213NGtx?=
 =?utf-8?B?eUVZczkyckpyQWxsUHFvYzVMVXhHSURxai8vTEN3UDBQclJiYUU5Z3pybTVI?=
 =?utf-8?B?SEY1aVdnWFNaNlViZktiRTlweTA1SjNkOS9zaHJZaW9tWDQ0ZWQvcUhGaDVK?=
 =?utf-8?B?clJUUlFYTmlYM3d1dE9mQzNMM1M0QWFjbFNoSFdpb0VKR1RObXU5TzJTUXl3?=
 =?utf-8?Q?U/DqoO+EmP/HH3HCAY=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8906.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MlpHMjY5eVE2NXhPTm9NdFJrUEJPT1F2b0RzSVNoK1RQV2x2dU40Ri9EeEhp?=
 =?utf-8?B?ank1WFQ4Q2JSczBPQis5anBzL29JSEdsVFVLV2I4eFpaMXlkdG1QRWNldlVl?=
 =?utf-8?B?NFkwcEJiUEpZSXNrK3JhOEFmQjNMYXo2UHRLei94RU1aTWtaNkxFUXh3eDdq?=
 =?utf-8?B?TTlCc0RscEdRQ2RXWTNNYjNUUzUwdUkzZTVzSmx1Z3pGdHpKcy9INzBJVmgy?=
 =?utf-8?B?alhrZ05xQ0svcEVTM1BpSDArM3ZXNnA1eGhyOFQ1Q3ZaN3AvbGl5ajNQek9q?=
 =?utf-8?B?Z3NKdDR0aUplRWp4MEFOTG9sYnZDa1JrV25mLzhncHFJeHk0Uk5XUWROWEg3?=
 =?utf-8?B?d3oxVlhNbjZ1QngwY3VKMURIMjJ3WnFRalRwVWJIMVhqenlQZS9ZRG1FcmVw?=
 =?utf-8?B?Z2p5Qm5wZks2UkJKTDFIenk2WEtBK01OYkJGTFl3TGJFYkYwNFh3eUo4WmxC?=
 =?utf-8?B?T3huamJWVDgwOGFRM1BBOSt1UkN5a2M1aDFwdXphMXplamVNYndWbHZKc1FI?=
 =?utf-8?B?T0pxT2RPemF3RmVBTys2ellRdUNDUE11NFU0SlppTGxybWZjUzBWN2VEUGdk?=
 =?utf-8?B?MnRZaEhEcGFDd1RoMjJtckp3YStYeXNjM0NCdTl5endkMEExWnpXME1VQVhF?=
 =?utf-8?B?d2I3aFJBZVZDbjA5VlJHeE5WUHRqUVBhZ29rYnhpVmV6VE1LZGg5cjAxS0or?=
 =?utf-8?B?ZGh6UEE0TTlabDRERHdTamxtTFJmaGdCMlBvdTVpbktiSCtCa2NGamZncXlv?=
 =?utf-8?B?STVsd0M2MXZxVW5BaTREaWYzNjdXUTZNMXhqWnM0SXNOcGlRRUV4T2pTQnFh?=
 =?utf-8?B?OWhFK0NMNG5rdzZuSVRFeC9MSjN6cm9pdGVxYkZTSUE0c3JUek5MaUdRenUz?=
 =?utf-8?B?ajZTcUJJTmFGemVmNHpMVGhQbEFlQkhuRS9RZmowbXJlcDgvajlEeVVja0dv?=
 =?utf-8?B?aFRkWE9UWG5hNGlodXZWcGtrZDhIVXBKbFVpRzY0cjVGSGVxODhsdEJ3bVVW?=
 =?utf-8?B?MlE4TEFaMlJlVFQydHpRQ1pwRmFZQ01SOFpjQ25kNEdqQ2hiUXJlck9kREJ1?=
 =?utf-8?B?NlE2MW4wZWhsL1JqdnYzYndpMlBpU2hVUDRjZ2MyTGVqQ3lOclJqeXFPVjJU?=
 =?utf-8?B?bnQwZEZoOGVGV2pLV2hBa3g2dFI0ODRrODUwa2pSQjVFVWN4aVNTak9YVG9R?=
 =?utf-8?B?VTQxbnVvdWpMcGRhcWx2T0llWEFvMG1wWEhGRVFEUUlGcFBvOEFOeGhPUHpZ?=
 =?utf-8?B?dUxvenkrV25mdmhDNVU1c3g0T1VId0xqNjRKL3FCQWJiVElLblM5bHpLYW1z?=
 =?utf-8?B?YUpLOEVlaWRxMTZIOUtMSnNlMFYrV3RqeEFxYjd1QmRHd2Irb1pRZ1dPQWZ5?=
 =?utf-8?B?ajJ2aG45OWpSKzVXM1REbmFHdWlZcGJpd2x4SVJ4T3hLdm5BcVh2bm9IKzl4?=
 =?utf-8?B?U09wZ2M4cUlMcVFCUVFhRGJIbEdvclVhcjBmaEMwOGNEemZxZWlROFQ2bEE4?=
 =?utf-8?B?dzBJWWZYZUsrNjgwZXVvYUN2VUR3SGE1bHo4dGVlRXpWL0xlMis4eWJGWGtR?=
 =?utf-8?B?aytnL2VjWDJzZ2hVSWNBN0t2WVExbEhXdU9CQko2elJFenhaQVlzbmcxSWZM?=
 =?utf-8?B?bTVKZkl2OEZkb0o2SVAyS3k2N1d4dzhWb0ZmeEIzVkZOQ1dGMVIzdTBMaS9G?=
 =?utf-8?B?Y2xTdzJGcTQvYXVqaytwUjcrSnUyZG5wZUMvSFJvODl3cEZIMVlOaVV6REUw?=
 =?utf-8?B?Y1FPMGljWVBXaEVnRG9HcWZCQlFibThpQ0pXa1J0TVZLOG5Vay9KTkxWMWNn?=
 =?utf-8?B?Z3RtdUtUT2hldjkvalVBODBTcDVwK0VTSWpNdWhRVC9aQVJNYllHdWpNMWZH?=
 =?utf-8?B?SHczZHJTY2UrckVUY2w0TiszMThZdVl2MWFYSVczN0NobDgrZzh4OG9IMnhR?=
 =?utf-8?B?K0JXSEVvWW8vejVraHVUUURCNllQRzBMQjBzMnFVMWRpc3JGOU4yRGpxa2ty?=
 =?utf-8?B?U1VpcGR6U3lZZ01UbWJNVys1SWFrRXM0a0pkMGo4OGpvRGpZZzc0dUpEeSta?=
 =?utf-8?B?S0djemp4SlV5R2RkQ202WVQ3aXVNN0lSZzlaeWF4UGN4b3NBeW0xZVlrdFZ1?=
 =?utf-8?B?SmF5c0tPYWNmdVI0Wk5BNWhrTG1PdjRDL3JNdjJQK2JmNUFoYzRzRTl5ZVhh?=
 =?utf-8?B?dWc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: d050c511-86dd-432b-d922-08dcac94a3a4
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8906.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2024 10:29:18.1680
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lq7OYsHcrDKClBYr2SsATrYVajdiqdH2P7GK0ytpkwOSqLXyo9UvsEfViIGaMDt+W0576YIT0WO2e41Od+H57CV79Wj18Q+FJE9Pm/9uTOc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8765
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jul 2024 10:29:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63571

Hi Marek,

On 7/25/24 12:22 PM, Marek Belisko via lists.yoctoproject.org wrote:
> You don't often get email from marek.belisko=gmail.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> Hi,
> 
> I would like to ask if anyone tried on scrathgap accelerated chromium for radxa cm3 using the mainline rockchip layer. I've enabled chromium it was compiled properly but getting below:
> 
> [1860:1860:0805/093227.660753:ERROR:filesystem_posix.cc(63)] mkdir : No such file or directory (2)
> chrome_crashpad_handler: --database is required
> Try 'chrome_crashpad_handler --help' for more information.
> [1860:1876:0805/093228.292318:ERROR:bus.cc(407)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
> [1860:1876:0805/093228.292474:ERROR:bus.cc(407)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
> [1860:1876:0805/093228.292569:ERROR:bus.cc(407)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
> [1860:1876:0805/093228.292849:ERROR:bus.cc(407)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
> Fontconfig error: No writable cache directories
> Fontconfig error: No writable cache directories
> libEGL warning: MESA-LOADER: failed to open rockchip: /usr/lib/dri/rockchip_dri.so: cannot open shared object file: No such file or directory (search paths /usr/lib/dri, suffix _dri)
> 
> libEGL warning: MESA-LOADER: failed to open rockchip: /usr/lib/dri/rockchip_dri.so: cannot open shared object file: No such file or directory (search paths /usr/lib/dri, suffix _dri)
> 
> libEGL warning: MESA-LOADER: failed to open zink: /usr/lib/dri/zink_dri.so: cannot open shared object file: No such file or directory (search paths /usr/lib/dri, suffix _dri)
> 
> [1888:1888:0805/093228.660850:FATAL:gpu_init.cc(593)] Passthrough is not supported, GL is egl, ANGLE is
> [  585.551873] audit: type=1701 audit(1501925548.664:112): auid=4294967295 uid=0 gid=0 ses=4294967295 pid=1888 comm="chromium-bin" exe="/usr/lib/chromium/chromium-bin" sig=5 res=1
> [1860:1876:0805/093228.748702:ERROR:bus.cc(407)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
> [1860:1876:0805/093228.748903:ERROR:bus.cc(407)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
> Fontconfig error: No writable cache directories
> Fontconfig error: No writable cache directories
> [1860:1876:0805/093229.134377:ERROR:bus.cc(407)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
> [1860:1876:0805/093229.134507:ERROR:bus.cc(407)] Failed to connect to the bus: Could not parse server address
> 
> and it won't start. Could it be mesa related (assuming from above errors).
> 

Yes it's very likely mesa related.

https://git.yoctoproject.org/meta-rockchip/tree/recipes-graphics/mesa/mesa_%25.bbappend?h=scarthgap 
is what you have in the scarthgap branch.

https://git.yoctoproject.org/meta-rockchip/tree/recipes-graphics/mesa/mesa_%25.bbappend?h=master 
is what you have in the master branch. One needs to backport the patches 
for rk3566 and rk3568 to scarthgap branch. Would you mind sending those 
patches (after testing of course :) )?

Cheers,
Quentin

