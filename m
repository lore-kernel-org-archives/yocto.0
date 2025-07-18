Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D33DC83F1A
	for <webhook@archiver.kernel.org>; Fri, 18 Jul 2025 15:40:24 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.46])
 by mx.groups.io with SMTP id smtpd.web11.1786.1752853217322792631
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Jul 2025 08:40:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=A3T0HbWk;
 spf=pass (domain: cherry.de, ip: 52.101.70.46, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X4ZLqsPan50RxKe7Vv0iSo6hUgyZTCOw7lm7WDoLKWwQJ1mBsGelH+UqkiKEZMtd1ndt6A+IvDxMarskFRIprc4lv8vDfjOmxdyAwJmNeVi1bmvj+ARfBzjYcMuAUDfleJLFTDp1T4w+wIVa4BYcoMHmfxQlJy3gqbXQxNLVawicibXOCqH6GNr84wRqU+4EKVLC2GAqZqZcX063LexgUJE3Uy4rakpE8ht4A8k8eQTfS+ck5ND2WBs8cSBYTGPMb7KoRV5UiP+FzbP6BiniXSbETCn1wXpRB6O4krONNhEtSPB1JJ5inJ1sd3JCjussih+yY8OkNjLflpWuhfWBCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xXBDZx51RmKfeUxqqf1xMVV34fDbpGUN5cmOVcsqRww=;
 b=I0jB/SN9E0ozLkM53EEdIgXDZ0bLG3NKYd/Yy0JNOn9oBUlZKWjE6Yqg4/9lv1svxglSvYTvyXmptNHCCyfttAuyZ3i906VblJx8M7URfkxFfZzIt+xGGsJr4NxyUwMbBux72l6tRjaJq55KnD3BAn/cPFBsK/LbkmzqdC9pMd5fDX17NBYjN82NravQ/woVNPTlQF9pGttzJcgBNFI49+cSi3xQQ5xqSvHqvUJA8tA0+e8rlTE1wtIm5kFXotvTGou+M4GoV4kOYpf50011eNgIAfDHo98b3Q29mlcXhFhQN+dsjIdMky0ozMp6v2qm6ixZNkqEO+2OX0QD24lIlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xXBDZx51RmKfeUxqqf1xMVV34fDbpGUN5cmOVcsqRww=;
 b=A3T0HbWkJouDDx5INxHiuQaz3ndVy4J1gkHSEevxTtDQa1n4RkdKYg6Ab8OWb2E3pHyrtGTmvlHTfVDg2KdxuZ7J+BUmx890H6TnqUEmbiOsJ5X7QXgNU+/TaCHJeC7OcZVBeLr2DfROVv0qHVDbDmkdjwHz9UcZ3HAXqcrjdNM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DBBPR04MB7739.eurprd04.prod.outlook.com (2603:10a6:10:1eb::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Fri, 18 Jul
 2025 15:40:11 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1%4]) with mapi id 15.20.8922.037; Fri, 18 Jul 2025
 15:40:11 +0000
Message-ID: <5ad4de8a-77ee-4577-88f1-95434f64c29d@cherry.de>
Date: Fri, 18 Jul 2025 17:40:10 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Environmental variable present in do_compile() {},
 bitbake recipe -e, but is missing from do_configure() {} #bitbake
To: yocto@lists.yoctoproject.org, joseph.maniaci@seagate.com,
 Gyorgy Sarvari <skandigraun@gmail.com>
References: <d9a7a078-572b-4362-85c1-61a43dd8a89f@gmail.com>
 <27507.1752851800140508582@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <27507.1752851800140508582@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P190CA0024.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:802:2b::37) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DBBPR04MB7739:EE_
X-MS-Office365-Filtering-Correlation-Id: 0aa53c9e-f689-48fc-f1cb-08ddc611616c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bHY2c0U0dFk3TmxtSWpSUkNiVnJOMGFtVzRuMXVwSjdacVZwNDRZUnZSQ1VV?=
 =?utf-8?B?cjZIODZhR1dzTnlkOFNaN0J4eExlbVpzSGtvc3BnNHN1S1lnSEllbWhqL0N3?=
 =?utf-8?B?bFBzK1A0RTRPQmNsYk1oQWgzVG1sYU9YaEpzQ2NveWVIVG1hK1NBSkk0QUp6?=
 =?utf-8?B?RWRRUmFEbzlyTkQxcXI3RDU1cHNQRnFqUlR4eFptREpkeVcxQW80UVNudVBs?=
 =?utf-8?B?eDR1eDZzeG54dmllSTRjWVNBUnJ4MUxMbnJVZ2VMQmQrOC8wVFkzMjIzaEhY?=
 =?utf-8?B?SlRZZnJyelFrNXg5N29DR2UvOHpRU3g1WVh0TVRWLzVPdEdTRytEbnowSHRx?=
 =?utf-8?B?MkpDaWVIK2NtQmpTa1lmU1JOcG53NFo0NXVsaVY3M2FXQ2NJOHEzVnFmcHZX?=
 =?utf-8?B?VkhyK1JYam9aaFJkcVU1UFdveXFEcS9EeGVJcVloL1Z4VkhPSVRQQWpBMWVL?=
 =?utf-8?B?QktkeUczTEhESnFmS3VwL2Q3ZHplQ3B6Z25Pd0FqdmduSjRrSjJtczNMZTZW?=
 =?utf-8?B?NERZOVBVeWpLUVgzZUY5UnpWSis0aGhYT1lUa055YkUyYzdHZFp0bmVlV0Ja?=
 =?utf-8?B?elcyeEVTcE5EM2JRRkdtOXJQVlBoOE9RZE5pQVhWUTltd3p6VUNJbENvTEJz?=
 =?utf-8?B?bGpUb3hvYzhGNUhzcFhObzRueml0b0kvVzcyMzJjTVlwa0x3V2lUU2xWMWZ2?=
 =?utf-8?B?RmhnQUJtTGlYaWo1b1VZRXR1V0ZQTk5DcGJja1orZ2JZbGYxc1hLZWNOUzIy?=
 =?utf-8?B?VFNUdEJ6V0x3K0JvYm8yZ1NIRzEzMWhMNFVrOVd6NURnajFFcHBOUnYyM05M?=
 =?utf-8?B?dTFRNkxoeUdpdGVoZlRURjNGaE0vOUtoRkFrQzl5ajQ2N1NGZ3BlQUExUVVG?=
 =?utf-8?B?dURDdlpFbjhEeUVYVHhZZVl0aDJuK1hIeGVUb3EzNmNxVlZFRjZZVzJtZTJV?=
 =?utf-8?B?MmNDamI4d05CNFFTZElYeDBZNXRRK1JaZkpvY3k2Z3QxTjkvcENHQkpodkR6?=
 =?utf-8?B?L3FOME5pRlR2U3hSazRPdkNKNnh0WXFQc2dtdGV4b3hNdXhjamNXRGhXKzQx?=
 =?utf-8?B?WHZ4NjFXMTB5djV2ZG9hK0lMdzV3YmsxUGZ4Q1pSalo4Slg4SGl1WnBLZlJV?=
 =?utf-8?B?WUo5SXFYSXU5cDFOT1BLclJBUk1CMDNHdmVSRlNzZ1IzN2Evb3NMRWY5aGxr?=
 =?utf-8?B?eEtlMU5odHFvdW9WcnZNQm9wMS93ejQzYzV6cE5Hc1lueENzOTlXLzhvYXAz?=
 =?utf-8?B?ODRuWC9ockRCMmRLSXdVUVZLdENxeExJOXRTUDFPV0dsSS95MU5kOWtYUUNo?=
 =?utf-8?B?RW5SRU1ic0tEcUJuZ0dSMDZPWlUweEFlZWFUcTJaN3orZ01uVzFyZWlzbnJO?=
 =?utf-8?B?Y3Fyb1dERWtiR0hqYnltK0o3RFljSlozYitCRXNKZU5rK2gwNFJMc1FuajJj?=
 =?utf-8?B?VEZvbWU5OXdwamlxR1ZncExnaGR6VitQVU9xVnRXTUpzWld3bXVMcmQvWlNR?=
 =?utf-8?B?R3o5RUVCdlJSZmIybnE2b0VtNy82d1NDaFZCREQxb1JpUWpIdGZFemtwUHlh?=
 =?utf-8?B?SlJEb3NDUWpPL24rd1ZIQ0ZpQWhZUzBoZTNKMFBUNGlpcVR4YmlQeTI5cCt3?=
 =?utf-8?B?cTNxTU9JQXpQZlhHaGxuVElvMTJZNldSNXdoV0dZMmkySFRxSEp6ODBFUk9n?=
 =?utf-8?B?TFV6MUZqSGhuQkQxV0RyYjlERHNQNWNIL3dXUDloQkdGSk5sZjFraU5UZS92?=
 =?utf-8?B?ckFJU3VhK3hrUmNCTk5aWkpPYzhtc0szK0RxaWJ3WlVaTXJtWFYvOU5vOUQ5?=
 =?utf-8?Q?k5QxXuHEs2c4jBxllnx6+Vt40wclUQj26wJgA=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YU5MOWwxaXRTUGg1WWhUZXlFckFhNnBRK3pxQ0RNaWR5NHpsQTY1cDNZdlRI?=
 =?utf-8?B?clFMdjhPczY2Z3crRWdZSEJWeUtCZ3IwRGJGeHRhQjRKNk0yaGxCc3FJLzZy?=
 =?utf-8?B?NXlaVWE4T2RsZzVIQWRuMEY0Zk1yYkR4Z0pFK2RoNVdrdXhObUtqaVNvRHlu?=
 =?utf-8?B?RC9EYm1PZmVhSWsrdHFrUzQ0bHR3ekxSOGtGaytjN05yMkozY3ZjR2UyVDNv?=
 =?utf-8?B?N3RncFR0bHVQSVA1cWx6Vkl3am0zNnlpcWhZQVlnTFJ4emw4d3I3ZUFaZVhQ?=
 =?utf-8?B?NWVlRkkwQ05vUnFyUzNsMG00Rmd6NkI5Y2Y2Y0I4RmhLSkpoRjJlV0o1V2NN?=
 =?utf-8?B?OThUcU1ZYWp2MjVDTnFQeDlNUytQT0pER2lZRWxGekNoQjJmVmJvOVZwblJK?=
 =?utf-8?B?bkpZNHorSlM1cmFlQzRRYms1UTlYUG5jcE81WUZGVUpRWmk0NUJ1MlpWbHlW?=
 =?utf-8?B?UEJvcDk5Wjc4VXpYU3dwSG45Z0owdXZycFE0VUFsbUZUK0NtMHlFZnlUWWtu?=
 =?utf-8?B?dVNGUjJRSXB5TUZsQUlwczBIM3NKcE5jZStaQ09jaHJFVzZSY3g1aHdOaGQx?=
 =?utf-8?B?NDBka3F0cnBnTk8zSVhLOHVGdldRNjJ5aGt5WXlXaUJRTkNtaWsvQzF5OXYz?=
 =?utf-8?B?aGNBa1JGblU1UjYvdk5zellnVE4rcW12R3Y2dm95Q3NxSU4vUGxXVE9pelNk?=
 =?utf-8?B?endZRzZQNUFReU1NS01wemd5YnhiZGpJa3J2OXZ4djlkemhRUVRVSy9XR0VE?=
 =?utf-8?B?MHJlZ0hkMnh2U3A3TXpCUm8zbXZNUkV4WmdjSU1VZXZYa2NhZ0ErMmFPdkth?=
 =?utf-8?B?bEJkZFMwUkF0a2FXeU1FdkwrQnBMNE9aWmkwckNWU0R3a3YyUkdVVjNZWVFK?=
 =?utf-8?B?cDhycjdEK3EvYzI5bllHZWppNHB5OW1SV09SL2dNSGdpWnM4WGttY0QyL1Fh?=
 =?utf-8?B?Z2hxWjlwd01RaHlreTVIVHE4UmtZcENzK2VETG53S0dCUnRnUys0bEp4c1hq?=
 =?utf-8?B?QWM0U1R6Z0R0cU9uOXAxRytFdzBjSGQ5c3lSQS9hK253N1ZRTWpVeUFPRDdM?=
 =?utf-8?B?cndPYkVEOTB3WTBiTTdKRENua0l6LzNQaytVckI1dGFrSldyRHpqTTVzQ1pY?=
 =?utf-8?B?L25YN0xLeUQraGl5RjZZSWwwdDF6d2tPekpsdi9wczFXdk9YTG1YOEVCOElo?=
 =?utf-8?B?WUlxWWg4eWZtbGpDUnJLMmw5OEp6RW5RVHFIenUwZEczMm9XRURpWHBaY1Z0?=
 =?utf-8?B?NHRiQWwzRVdqYkJHNzdkNmVLTjM3SEJzbFFVZW8zSGZJTTBtT0MyZDZvTUxG?=
 =?utf-8?B?T3hTUVFSVE5FVkc1V21wL25Xb3JnM1dtdU5ZeWN0TGM1QmVmelhTdXIrWmR5?=
 =?utf-8?B?eUpuMForQ2IzRGdjeG5lMytiT3ZjdFJITlZPdVJ0bkRiQTNHeWJjTklIV2JX?=
 =?utf-8?B?RTBuOEZ3U3dCUHJlRVJIejJKa2pOMnVPRGZjNnBFd28wa1hodlhhRENwbUdz?=
 =?utf-8?B?c1lLTVFFSnREbzNZRHZiOHFmTVI4VU1FRVJMa3llbjN3YlZvUGlHVzM2NEZm?=
 =?utf-8?B?YkVNc2xiYlNKeGp1QUIyVXQwS08vRmdzSW9ZN0loc0ZHNGdBcUpDeUh5cUpy?=
 =?utf-8?B?aEdpamJnZ2Q5YkZUdUdidWxtVTZETFJiYUpOU0dLMWpFL2ZqS3V2U3NBVE1V?=
 =?utf-8?B?MHpPaUV1WFFQelRoTzY2WXZSQXBlbU5SOHJ6a2tkQ1ZkK1VrQzZkUlkrZTlC?=
 =?utf-8?B?RTBhc21jVDh0YWNsU21WSlVoRER0cWlIQ1dHdk9ZS3FRN2JYUmMzRGRrYk8y?=
 =?utf-8?B?T1VtajEwcDlxRlc1Q0VpbWZwQnQ3SllSNDFZRUl0T05lSnpOTDQ1bmFIeEVB?=
 =?utf-8?B?a3F6ZXlOVUEvaFp6azZPVGpLazQ1aGptWXhIci81dEdvWXlmdUVobCtQOUNI?=
 =?utf-8?B?MVlEUXlxWldLMStNWENWV3lHYjM5VFU5L2RoemlLSVNXMEJOVERNMlZLM1Iv?=
 =?utf-8?B?UkpwaDE5MmRXN3B0ZXczOERmL2tqcWh3NWNhdGVMQ3orWE9JYXJKZi9zNyto?=
 =?utf-8?B?aERwOXhFd0hUb3hkaEY3cVhYZUx0Y25ndVY0aGhlMDJjZWlLbm5Bbm5KLzhr?=
 =?utf-8?B?d1FVVmkzbytxMzExVEJJZ2RNMm9lMGlSVmkyekpWN3BZTVZFd3hNdEFUakMv?=
 =?utf-8?B?bEE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aa53c9e-f689-48fc-f1cb-08ddc611616c
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2025 15:40:10.9952
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z/3D8udvQ4V35MPBEe2MrktWzXyCtlLmjKlTG7VmUHj0LV77+Xgd97AGmFybeD1+2GJ4J2mvS5WuGwPyKyVtP66B4Ji5t+MlQL61x3AlQIQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7739
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Jul 2025 15:40:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65684

Hi Joseph,

On 7/18/25 5:16 PM, joseph.maniaci via lists.yoctoproject.org wrote:
> On Fri, Jul 18, 2025 at 01:43 AM, Gyorgy Sarvari wrote:
> 
>>
>> It goes through the bitbake parser first, and by the time it is
>> executed, it becomes 'export ABC="AAAAAAAAAAAAAAAHHHHHHHHHHHHHHH"' - the
>> original ${ABC} is nowhere to be found, because it's a bitbake variable
>> (just like SRC_URI, for example), not an env var, it was substituted
>> with the literal value of ${ABC}. And before executing that export
>> statement, the ABC env var doesn't exist in the build environment at all.
> 
> Man, considering the quantity of search results telling users to use BB_ENV_PASSTHROUGH_ADDITIONS to accomplish what I'm doing, that really feels like something that should be highlighted in red, and bolded, in the documentation ( https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-ref-variables.html#term-BB_ENV_PASSTHROUGH_ADDITIONS ). Not to mention all of the CMAKE gotchas I've come across.
> 

Don't hesitate to send patches for the docs :)

The more time one spends working with BitBake the more difficult it is 
to write documentation with the "beginner" eye, so this kind of feedback 
and contribution is very much welcome!

Cheers,
Quentin

