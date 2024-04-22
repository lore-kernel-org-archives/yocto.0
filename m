Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB883C4345F
	for <webhook@archiver.kernel.org>; Mon, 22 Apr 2024 10:29:51 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.134])
 by mx.groups.io with SMTP id smtpd.web10.15153.1713781785448937573
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Apr 2024 03:29:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=L8QPkrHO;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.15.134, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Onav9ocrMc4x/AmJhQ7i0ufTFYm3SXRl0AhDB1k8Ju+F+9sdUX+ge1CXbJwby4D348/sUoBwvbrmAmIUeb1+bMzfbiB07TDtTD1Ue9dVU/NaI+DRbrWJ/oPt+oZ4eIgDnFah0GxwFsOckQYVIHwkZWRdqx+EvANOBofOm+Kb1k6vqSDaliS7TLle7QGY2H4ZwbGcaAnmIeQsNCTCyBwd/I/CyR+rqXtfkawIEDkQy79c/V7ANKFeYVX8/xIiuckyBwY0YJmKVdOYm/qCLKQoYDkpRJ+4gJSmRdCDTQhFV4OWJHlq8UWdgM/SBKHVSz9+w4h44cqxDmQeUV/TI6maDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uiyb7HlvMNAvP+33Ae8Hx1SMV192R941ljc23sVlz54=;
 b=QTiIsR/DYnJldumPSdnvWNGVyTpFkvfuRHJV+1qd/y+M6ZSlQUeKDfqYVVZ9WrgTHpIr6IHPR6PR1w9ZTKkjULRzA8S3h7C7qqEF0+sjKZ2YvsAm6g/dnT7DBWD93TEfRlXcvKHMcZ8R4KnKfbLK6k+FgEfrGPrgi6tvXEOw7wZJyjbUeoJLDmfr5Xs3Vu2t1YQBUpRTIE+L9P0CY3V8ZpydAOCHKNWV+AzKPgRLwhjIzACKGCfDBqcz9AxJdZ9iYc4L9DU8EY5AGxnaHRbbpX6eyTBQZ0C9lpyfaegOJalkNMhemQiVqfGxQgTPAsuyiagd5S2QNtm0GFIgkLq5gQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uiyb7HlvMNAvP+33Ae8Hx1SMV192R941ljc23sVlz54=;
 b=L8QPkrHO3jWtVyQ2Wj3MSLIOp3JbPbybITPrymktzpsZdizhDfVWXi/zqBQsWnHjrMCT27Mw9ANo7K47Fr966FWIm/8rff6ifwlXoV3X5JaAL1gEOBS/ilGHHv1JXtOX3zNlAb61OEdnnInZQC3wn96F69HwT3mr2qAFBHOvDaXC2wItQo5/rD/SnWIi0ZlQsxOtQz9jtC22/R+zfkIHEIh3mce2/1QN4SCFw8FGnUHOUwE/hwhYMD7ID1Er1p0ty1jRDgEu7gHQZfJlo+xWrNywmBA5iRwiCjIlPKdqW3KCIzOme+V/h5h2P50UHTRtw+EKSWb1rKNFVaaUj0/LSw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com (2603:10a6:10:1b::13)
 by DUZPR04MB9946.eurprd04.prod.outlook.com (2603:10a6:10:4db::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Mon, 22 Apr
 2024 10:29:41 +0000
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::bdc7:4b2c:e74e:1504]) by DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::bdc7:4b2c:e74e:1504%7]) with mapi id 15.20.7472.044; Mon, 22 Apr 2024
 10:29:41 +0000
Message-ID: <24a2a7bb-4d13-4e07-973c-8d212671c14e@theobroma-systems.com>
Date: Mon, 22 Apr 2024 12:29:39 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Wic Image Generation
To: Bratiranjan Acharya <bratiranjan12@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <CALSmAY76pRGxBWfWJQFEuiEQ1e3tmMm03p=wAnZr+=+Eb_cZbg@mail.gmail.com>
 <CALSmAY6riT0qgNcrQMcYTSSfguvXirYb3EEa2=Kd1CcdQOX9gA@mail.gmail.com>
 <5430bd55-37cc-4ca2-9bc4-bad41a77d6d2@theobroma-systems.com>
 <CALSmAY49g7EZudVrMzv0QtXxPPTqujG0AkaK8D4MPmBRmcDLqw@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <CALSmAY49g7EZudVrMzv0QtXxPPTqujG0AkaK8D4MPmBRmcDLqw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0022.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::24) To DB7PR04MB4842.eurprd04.prod.outlook.com
 (2603:10a6:10:1b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4842:EE_|DUZPR04MB9946:EE_
X-MS-Office365-Filtering-Correlation-Id: b424d927-2b3c-4a44-1600-08dc62b71ed1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?VXBhQmM5MkhEVDFOQzh4UzV5cWRXdWE0RTlnNFJ5UUwySHBaZldiaWdWL2sz?=
 =?utf-8?B?MkhDc0Z0QitrZ3JJVFphcE5lVElkMTZOSzk1eTEyMndrYUNTN0ZsaG5US1BR?=
 =?utf-8?B?K3Z1Z2lMOXE5WGVod01pYlBlVStad3ovcktpenVad3NrZHAraE9VZGtVNUx2?=
 =?utf-8?B?cmhmbzJQNVFCZUt0YUhSVDA3cUpFT0VRcDNmQWNLaDFiS1poT1hpOHdCdGJ1?=
 =?utf-8?B?Ni9UeitlL2FhcDBnS0h1dFdNdDZqVHF4UkUyZ0JiZEJJVGN5VHZFKzFUVVYw?=
 =?utf-8?B?Q1AwSlIwQk83SDErZnBKNjVNVUMxWUh4a3FNd1JwcUlIc0NXUWZINzRuYVZY?=
 =?utf-8?B?MjZsOGx0VnV1S0tFQmk1MUVFcUNXcFgwNGExRmxiTlNYR0l3N0JyOHlSWllx?=
 =?utf-8?B?cWRVT0dVSk1tR1oxREx6RlpHL2VxeFhYTXJSUVpKMlpsUGRFYWJFd0RnZzh3?=
 =?utf-8?B?UFJVNWRtdDI0cDJYM2N0clBnNU5IV3NJNDMwc2NjTG9CL2ZQSVpOQmRRenlV?=
 =?utf-8?B?UHBjWHZtNmxERFh5ZW9vQ0c2bWtseWNQdFNEUU5NNDhLbjN4ME80NjdsR0xN?=
 =?utf-8?B?cjljODgyc2ZFc0ZVTGl6aHJwWEx1SlVJZFRtRFJBVlNtM08ySEo5RENEaTFs?=
 =?utf-8?B?WDJJS2hLa0FtL2lJSDAvd1pySmVDSzB5aGdNMjdqOFFHSHNjOFZsSmFtbVo0?=
 =?utf-8?B?Nm5uc0x6VzlML1dTZy9zWFdWbWdDUVBxclZHbjFtbDBsVCtFa0JWUWhQM25x?=
 =?utf-8?B?dlMzTGt2UDg3QTBsWXZVOHNOSHhKcmxDbTVjQmRYdjZ6UDFvK0g2djVyWlFa?=
 =?utf-8?B?Sy8xYzRudmF1cU1lU3N5RTZoNDdxOWhSR3hNU3ErQ3EzN2JPSVRiOG40TzUr?=
 =?utf-8?B?YytZa3FtWS9seUtVVFd2cEdqZFpmMXJXNzdUNHRXUldDeTRTTHg2RDc0YXY1?=
 =?utf-8?B?TnhiQ1UxTk5lcWpjWC9TTnUzSUtjMmVMY25KTExTWklla2xyVHd5bzVoQnVE?=
 =?utf-8?B?UHZjWnNheUNCWlRpeWRpMHIzZWlPZFlkdUlvdTB1S0tGL0RjY2xnTERncDlQ?=
 =?utf-8?B?S1A5UndqaktmMUs2TnJVS2tyY1hnTTQwTHYwZjVvVVBxVkNmY09tT1VOU2Zw?=
 =?utf-8?B?MW1qMXFCUHkzSXNrOEVwa0hPVlhleENZbUFoMHdubUtUNkdrd0QrVmZzUm1C?=
 =?utf-8?B?WlUrSTZMYm9TQXlGK2VyUTRFbWZtV2dXamVBaWhuWUVXSkF1bVpSRGJiTE13?=
 =?utf-8?B?dzF1OG1sWW1vYldCRGJvaW94UlROck5rSkg4OUsvemRQYnd3R0Vxc0FyMTE1?=
 =?utf-8?B?c3ZORlRuZFNMSnFWMXRMSTRWK3NCaXFnOWwwaS8vYTQwcUpiRDFMcHNvTzQ0?=
 =?utf-8?B?a09TZnhyMlFSRVhzSXVJNWhBT2hwMEcvUzJ2Q2hacEFFOWVIWUJreUN4TFBM?=
 =?utf-8?B?MUdvaTNxT2dOazRnZ2RmdlVDMUI1a1BVUzlHVlJqMUZEWXhza1FtODhldkFT?=
 =?utf-8?B?WXA0NnYrZDV4Sk53QjlodFRSRGgxejQ0YjY5QnpXUklSYzRNNlhIQXBXdlFH?=
 =?utf-8?B?aVlpQlVBbjFqMHBQc0RzR2phQ2RYMHNVR1Bpc0xRNzQ1cWtHaENIUmgzS2Qv?=
 =?utf-8?Q?GRUGPUzrTzOx5Fp3Dn0Ymmz6/WQB+xQyIJpS5a6GCQ1A=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4842.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SmM3c05Sc3dTWi84amgrMnltQTVZdk5mTzlXNEExNGFyR211OUdOWnF1MDRJ?=
 =?utf-8?B?WVA1K3lja0lGMlQ3MUhMbStManVyeTBiaGJEWWVDTCtjTVprcVJVVzM2RzJJ?=
 =?utf-8?B?UEY5UTFrR3U1Ky83ZWVwSTBSYzlOTmtuVWVJZTR5eFN4VmdNYUdFQy95VnZq?=
 =?utf-8?B?eWplaWRQYnA0YU9OSzVtdGlOejlycWpEVTYrdTM3TFFMWFhYY2dEUEpzcHdO?=
 =?utf-8?B?MVJsNWRadHNlRC9JWEc1QmdtWFc1Q1Y1VFIvcVVlOHhxcGJ0NXNhc2trUnFW?=
 =?utf-8?B?Rmh4VkxjZXVTcWJrTGZoVW85MHRCQW5mQmhsNUZUNVlON2NRZll4dFRDREpL?=
 =?utf-8?B?Y1ZyeGJYRVFkT1ZYYjVvVTVLdC9TYW04dkt5S0ZYQmVGaElvOThmTW5LaHVG?=
 =?utf-8?B?VmNSRm5zamJDaWUyWUZ1Y3RsOERqKzRGUUxSR3RjcEo4SHJWL1BDcFByU0tv?=
 =?utf-8?B?NUpMWkt6RWpEWFliZTE3Z1Z1cWx0bDc1ZmV1QitGZE4xOUorRWhzSjFDTXRw?=
 =?utf-8?B?TUhSMnhDRHp2MUtLblBXcU1WQkd6YVVJN0hPUUgvM0dIbENYWFdVT2ovd09p?=
 =?utf-8?B?dkM3NmZsQWpOaDBCZ3FTcE01SFpCU1BoTmdxaGJNU21jbndRT2dlQy84Sk51?=
 =?utf-8?B?aDVuS2FxWGdsRFROSmhkbjBqTnk1N0txVjdzb2hUMlNSWkp2eDZLYlJPVGpX?=
 =?utf-8?B?UUlMWS85TUpOQ3cwZlJ0KzdEV05iTGhEMmVFcTZML1g5Q3Y1TGQvUjhqNUI3?=
 =?utf-8?B?SVdPbHVvdmF0ZnI5ZzkyaEg2K2NtMEl2U2xlcGJyZFgydUVtMzNQZFdIZjZh?=
 =?utf-8?B?K2VrcEJQdk51U2w1eUE0aWlwYWZ0djVWYllvbytTdDlqVUZ0NHQxZjdPQTY2?=
 =?utf-8?B?Wmx0VVpFTmg1djRaQUFNby9sVlpZMWZWZDhYRjZ6WUdMWkxVQ2N0ZndlM2Fp?=
 =?utf-8?B?dmdwamI2K0ZNeS9HMTI5SDdFN2tQalBoSlpUTTRwYmhmVGJ0MFZPM0NkSEIr?=
 =?utf-8?B?Z3RGRXNtb1pSUnE4TE9jdGFDdi9GcW45NFNQRTNhUU5KV0YrTEkyTVVWbTVE?=
 =?utf-8?B?SE5mZ2JWVjBSRjZTLzJJaW5pWnpmWllaLzRmZXppcVkzZkNRblcrTUF2RGFC?=
 =?utf-8?B?c1E4bHFKV3BOc05MY0p4cHF1QXE1VWlXdHFYQkNweWNaTVBEV3I4K2tlUG1v?=
 =?utf-8?B?NlZDaEZvZFFKeEVJZUZWN2pOOHdPenQ1cUU2d1FrY3k3WjJYVVdSQTZDVmFh?=
 =?utf-8?B?a0NiZk50aWRDTUNQZVpscEpwQ0lwVEJZUEhwNTJYSUNaQ1VRM2VJNGJOMU1M?=
 =?utf-8?B?aUR3K2w2MHh4d3h6QjlwZDlPMGRzalhiU2cwUFNYU1k0bTI0aUF6blZzS3h6?=
 =?utf-8?B?dHJGK25vSXpoU2drdzUxN1NoMlJiakVvUnVmS3hkVVJJblBmNkJLWlk0aThB?=
 =?utf-8?B?eUJQb3lMT2xXNi9PU21QcnlJV2k4KzJhUjhxaU1aN0hnY2Z0eDFobEhSUzBz?=
 =?utf-8?B?SEJNWXg2eW1yRi9qK3orUHZKMU0ySVdCZ1FhU2tpQ0daQStVakVlTTFZV1RY?=
 =?utf-8?B?UGRGZ3NieGo2V3UzWGRzVWNVNHBRaURJdzVoWHJuS3NIc2lWZXlsc3VpTjRI?=
 =?utf-8?B?ck9pK0U5RkxVL0tzOHlhVHRVblZEdHR5TktSbEdXK2lxQVlEWHBxWjdMS3U0?=
 =?utf-8?B?ckoySjdoVHRyMGFiVi9QKzZqUVg0cEhrUDN2Vy9mR2lNK1Z4cmJiZFhpM2JG?=
 =?utf-8?B?N2dIY3lCV0kyeWkrOU41U2cvcTlLZ1JXWlNkbmh6UjNXRWNBZzZ0MUZjcFVC?=
 =?utf-8?B?OXlhbkhqeUsrZXIrcVZ4c3FVdUVuN2MrQkxkdE5MQnl5a2hJWjdkNVMybUps?=
 =?utf-8?B?SUptRjhHZFBzYTU4QTlhVVRUQXFRVmxTUVJSMUhSWDArY3NLTmhiMndERmhm?=
 =?utf-8?B?a3I4aGFydGlwMCtKeWJ1dnpMdDB6aTVDdzVJS1JmOFEvZ1pNZEhMTTBGTno4?=
 =?utf-8?B?T3hpZkR1S1dJeEgrQ1NDTENZSWFRNDQ2RURweVphOW04ODZGVW1EOWkwMStU?=
 =?utf-8?B?Mm5WeWFzb1FsK2pEcjgwY0pyTjVWc21RaUlack9VTFhOZytXbUQyUGhIdHlw?=
 =?utf-8?B?Zi9scm9PaG1Vd2VoK0hrU0lqbnFTWXl0ejA5WUFQbEF4YmVQbzRtdGNLWWRu?=
 =?utf-8?Q?pl14rX4wTuNQ/muJkPQbzBc=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b424d927-2b3c-4a44-1600-08dc62b71ed1
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4842.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2024 10:29:41.7805
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XfojAGAiYyeTIP7Xn/+TvefWaqh/4/RZ1Ftwtm261NF2ntxujqNGzupXraz4UhnxZqGgM6U++m7J7jmrqnMNZRRZTKhGpGxWmnzNHTvrIRZfeA0flGqwImCgwiT7/xZW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DUZPR04MB9946
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Apr 2024 10:29:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62977

Hi Brati,

Please always use the "Answer all" button so that the mailing list is 
still in copy.

On 4/22/24 11:47, Bratiranjan Acharya wrote:
> Hi,
> 
> I've reviewed the information you shared. Can you clarify one thing for me?
> In the last line, "bootloader --ptable gpt," what does it entail? Here's
> the scenario: I have a gpt.bin file that creates all the necessary
> partitions, but I'm aiming to generate a wic image instead. What steps
> should I take? Do I still require the gpt.bin file, or is there an
> alternative approach?
> 

bootloader --ptable gpt

will generate the GPT table based on the partitions defined in the same 
file.

wic is capable of generating the GPT table for you.

I believe wic source code is in 
https://git.openembedded.org/openembedded-core/tree/scripts/lib/wic.

Cheers,
Quentin

