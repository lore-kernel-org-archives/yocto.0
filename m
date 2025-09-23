Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EFF6CAC5AC
	for <webhook@archiver.kernel.org>; Tue, 23 Sep 2025 19:44:14 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.564.1758656648299057820
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Sep 2025 12:44:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=YaKU3cf8;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=1361e06115=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 58NCdcMx2385987;
	Tue, 23 Sep 2025 19:43:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=cc:content-type:date:from:message-id:mime-version:subject:to;
	 s=PPS06212021; bh=KtRU18MJCbdeM8XkJeCixxMJb8kXsnQKPIeqR5z7p2k=; b=
	YaKU3cf8qoflWoOFTBRCh0jo0gE4Z74o8K7YbDhtXg4/hdXNxBO5IGZqKYu67oUK
	66cHB89vmvQkgKZnypzo8XdCj+mqZFC0IbxRDvsiBFmj8xM+8MwaTDnB2h0dYXO2
	RyHOzgF4KfiLW16m9/Qln59K7edHqIpEHMPjwyWS/ESfrrXCfaD5VgZ65Magxjm2
	qzI08+yy8BgkbHVTZqVruP9wzM+0Df1KsLBLnqXrBW7iXm5TW1zPIO1UeyjqBk4c
	3pGFZeXy/I+HxXjE+K0XaXkP7+dbyY93S6fP97D+ETR87ugyH0fEckxO/zkuCvsl
	wc9HFwm3LcTctgDkW1gFKw==
Received: from dm1pr04cu001.outbound.protection.outlook.com (mail-centralusazon11010031.outbound.protection.outlook.com [52.101.61.31])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 499k89bn77-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 23 Sep 2025 19:43:53 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=foKMv2WvhLYpG9BOBXoGShK8DVqImYgSqw6knxnu11jPAmW1nJG+7dV8XibxyJNVW4YtWE4N69qQaUpLhDyVQhE4e1yAjDEYcu/tkr0TL8NNtoF1f/Ah+Obl4KmtqPOfCtPR3kkb8lmlA8XyBTWVu9RQIhKasIkn1AWTodJr1BDMWcQnIjuci0ROX8p68/9T++GUZ4Xq5J2NhLPBTkYCKpyXSgTX8k9OkzOWAsx9i5oVuPG4JvkPUmFEwdQ98g7b5x4SPMG8qFl2mazeehd+eR3FkA98e7pxJb6BZHZ9w3JXLdi/lAoSHj4l6NUXDrJIMRaMUnYBf/SeK6kxLdvljg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KtRU18MJCbdeM8XkJeCixxMJb8kXsnQKPIeqR5z7p2k=;
 b=KUepfUF70+/icmrQXA4pTRQRXRpBjGxUEuhz7T+4PTQMWldeUd5FZLXl6OF+XiINhp5CU2PgcmwEsx2ot7u431rJA5nOL7DaCk+U+wfqIAiAbkHBRP+qM6z1Fual6Wr8Vsto4uMcApZFNaMOphX1ivasO8UtMR+khjMUxmr6Z2/CPEZKBPb69yP3Fof2ViWWByrXvJi0VxrW8e8H3BI2y4Fhi4d+mwq7W0/03aJa9kbj6JsNp+zbfPP2P1XOsXNRaSgL+hpD1tmfleqwUzaU0knSIOVDKAFFGErRguQKdHt7b1pAj5ryZ27+jjpgWDIPwPyFddrkK6dS/kWtDt2xmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CH3PR11MB8496.namprd11.prod.outlook.com (2603:10b6:610:1ba::22)
 by PH8PR11MB7047.namprd11.prod.outlook.com (2603:10b6:510:215::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Tue, 23 Sep
 2025 19:43:51 +0000
Received: from CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::cdc3:a646:2a93:9552]) by CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::cdc3:a646:2a93:9552%4]) with mapi id 15.20.9137.018; Tue, 23 Sep 2025
 19:43:51 +0000
Content-Type: multipart/alternative;
 boundary="------------4Z5BuBX2ybIi1INCOOkxIWU1"
Message-ID: <b9b292dd-b366-4310-9f22-7ab015aba7e1@windriver.com>
Date: Tue, 23 Sep 2025 15:43:51 -0400
User-Agent: Mozilla Thunderbird
Content-Language: en-CA
To: =?UTF-8?Q?Martin_Hundeb=C3=B8ll?= <martin@geanix.com>
Cc: "Li, Changqing" <changqing.li@windriver.com>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: Randy MacLeod <randy.macleod@windriver.com>
Subject: Yocto builds and job server?
X-ClientProxiedBy: YQBP288CA0043.CANP288.PROD.OUTLOOK.COM
 (2603:10b6:c01:9d::9) To CH3PR11MB8496.namprd11.prod.outlook.com
 (2603:10b6:610:1ba::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8496:EE_|PH8PR11MB7047:EE_
X-MS-Office365-Filtering-Correlation-Id: 7242c562-e170-4c14-1b79-08ddfad985ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|376014|366016|13003099007|8096899003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TUhWb0hGLzhmdHh4YUk3RkFlZmhEUnNpYS92ckFBRERFNVdSRjVUTGNUdGJP?=
 =?utf-8?B?aXdaNEM4bDlKQVliV0dvVTdFUkFITVltYThuWTlsVjN1ckVsMmhRV2EycVZM?=
 =?utf-8?B?NFJjcy9zbVoxcXdXSFdFWTNvNDY0TCtIZnVsTlVqc3pQZEV2N2c3aUEzUDNz?=
 =?utf-8?B?bEgwV2o2eml4TjgyaDYvbXdCVldEZFFtWEZBRytSMlZwYSs5dlhPb3hLcHBX?=
 =?utf-8?B?ODBPdEpTNXdXNUdpRUpFcTdJbGFTMnlPSzVrakZucXhHRjJhM0pEUUtobUgz?=
 =?utf-8?B?MEZTNDZFS0tyOXRJbjBYMTN2Uzc2c1dMbGlkTUF2SHRmNWJleXpOWVZzTnhJ?=
 =?utf-8?B?Y3VxOFdMOWhZOTNKV3lQTTcwcTdmV1hwaFdPS0JXb1pjdFdkYlNKR0Nod3Uv?=
 =?utf-8?B?ZWErYW54SVVLOHcvcGwyQ0hwRGZxUmx3K1BxM09EeVljVkorOFpobWFydjBu?=
 =?utf-8?B?aXVnOE1ZY1diUnpjQlZ4dXhsNzJKOU5Pc0IyUGdJWC9HN1ppZUFMRUtwTU53?=
 =?utf-8?B?VndocDNKSnFKcjVEMDhEcE5pdzBMNTFXbDZ5NC8xcXNhZkQ1V0NFenNEMEdO?=
 =?utf-8?B?UHkwckVHMkpnRExvTDdCdVlncGd0NjlIWk4wSzhNZ1FHT2NTc3hieVpsSDNF?=
 =?utf-8?B?em1IcWJaSGNDY3l5N05UOHdxbFFINXR1ZWZSb1VFc2N0d0NYQzlPL0o0dzNy?=
 =?utf-8?B?VEtJcXBWNnVxelBNUmlEV3ltZVZpQnVBblQ5WU8vZzlDTGw1bDkyaElmSDZr?=
 =?utf-8?B?R3ZuTnNrVGZmOWJkNFMxRnM2bFpKOHRoMy92UXdIQWJpVktVTkRiZFhmSEdL?=
 =?utf-8?B?N3hMaHRzYWlzTVlDY3pvZWQ4Q1QrVUlWUTMyOExvM3lkWi8xeGVJQ2pxL1VT?=
 =?utf-8?B?QW42cXRHcDJIaThJcUdWWkQrVENmRXZvV25PdEFzY0NSUm9LTWNMVnlDUEti?=
 =?utf-8?B?SjJxL3F6SmQ1TEcxa1BGL2lORFduOGR3VTI5Si9GdTl5eWFLZjBiVnlTaFhB?=
 =?utf-8?B?c0VmOWhSVjVZVVB2dmo1R1ZEU2hZNGFQb1dLdHlLKzRqaS9veDhYalNrcEZu?=
 =?utf-8?B?cnI0Ym1MdEhvaHltWG9tOEZCNFN0UVdyVUlZTXpkYnpxS1dOdlVBTTg1MXhz?=
 =?utf-8?B?bTNmTC91YnVQOWRZd1NSSkYyOE5UMkV5bFRQd1VCZGFndDJhL0NMbkhWdzlL?=
 =?utf-8?B?VFJtQnA0RXJQTXRxakdtZzdRbXNnaENmT0hsR3pkSWlvUE9FVE1maEJ6TzZU?=
 =?utf-8?B?MlhwTVBEYWZEMnRDalRXRVJqK0J5U3JjK1B4TGV1RmQ3V1VVRlFPY2hLWEl4?=
 =?utf-8?B?dzBvbHV4QW1TemUzTTZqU0pHRDRPN01TbWorNG9yUjR3cVVqdEora2FKNkVL?=
 =?utf-8?B?N3NPRnJXQUpVUnJRSDBHUkl1clBXa3hEbEpQY2NZWmVnVmFMYzJrRUlMOU5n?=
 =?utf-8?B?MjY3dmpwYVQxOEtsTXl5QkljOUFDb1N1NlVIZ0krRXBPSTZOUjlaMjRtRjJD?=
 =?utf-8?B?K1Yvek9iN1ZJL2dwaDh0THROWW9KWDZjencvVlpZVUdheXpHZWJZVmdhS2xz?=
 =?utf-8?B?VHM0elRFLzBWQTIrV1ZEek5WaDJyQmM3UE9iZUV1ZUFVWk5WN0d4YVBxM1RZ?=
 =?utf-8?B?MEk3ay84ajMzbE9HWEgyNTFsYnBVMmRTRlJlR2lmVytnTlI3UnBHM0R3UWF5?=
 =?utf-8?B?dGtFVnQxcUx1TXBDekhmejlsU0tQUWZaT1ZEK0xrRTVpYnZVWE5zTGJURmpU?=
 =?utf-8?B?NHkwSWtHaGlxeHM3bjVFQUlrVUl1M2NCVWlMYjBiY0xtYTZiTEZUTEJQV2JJ?=
 =?utf-8?B?TWlNSTk3ZDJqRW1VcGw1SFIwUTQySXhBMjJSb1BzR1M0V3NMNkRlR1d1TjBy?=
 =?utf-8?B?aXZ0VzhMdnJndExqREJmdkhuUlBsWjJWYXBtVlQ4S0huV2poYmdKd2tvV3Ay?=
 =?utf-8?Q?LIuMqDQ54q0=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8496.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(13003099007)(8096899003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?c3g5ZmVYNkhHckgwQUUyWU10VVliWW1TTVFKN2pkQ1hQYXJaRyt4L2hKV1lr?=
 =?utf-8?B?YzFDNjNReVVOZzFzRlVPN1B1aVNWRXFGcEVFRWRHSFFYTmV0a2pFMnIvTGJY?=
 =?utf-8?B?NWI4ZEpDWFZvOVc2ZTZrKzB4TFpsaXBqSERXQUdSQndhdXB2MCtyTG5xbStU?=
 =?utf-8?B?T2NpamtHMzFjMVg1RlRnZTZLcDFjSms1QmlUcnNEMXpucmwxQ0V1akdqV1di?=
 =?utf-8?B?K1p0OXVITTVBb2xrM0FLN3I2QXB1Nk9uOXRJQ0lndXVaeEhVOE5wUkxiVnhM?=
 =?utf-8?B?WkRPT1dNR2ZnZ2JGYzVFVzhQb0tiL1JESUMyV09qR3NialAwREE2K3h3OGla?=
 =?utf-8?B?aEE3TjhzQWhOd05YK1U1ejJtc3BoS3RuMnpUSkpIZ2N1MnBBdkUvb3lHMFZq?=
 =?utf-8?B?LzhORnppa1lFdGxHWmFISjJZRjRpVU1JR1czNXdHRnFSaWFtS0tFNUM1RkU0?=
 =?utf-8?B?WEE5UlVFVEZuUFhvRThnZkpJaFM2YS85WEFFMGhwaHNiZUxOV0FCcjlIa2Ru?=
 =?utf-8?B?c3lHOWdubmdkbzlWM0ZWckgyem1aYUM0VnlDb2xUQU9tOStIN2hQYzAwa2Rk?=
 =?utf-8?B?RkY2encwS014cGNFMnYrOTBHR3JzeDgveG9OZjJtOUQyN1VhUUorVS94WjRV?=
 =?utf-8?B?ejZoUDVTdzN2emR1RjFWUCthQkUzcTRVN2M2S3BmcDZ1Q0hmTHM0S1BBUEJn?=
 =?utf-8?B?OGRUVVN4YmplblZxeG5oRnlwSEl3QlF4K2NYZHhJQ0c0L3hjWXZTdXhNTFV3?=
 =?utf-8?B?UjFHcXY0dlJ5K1hFRlp4cXVTWHNrS2xyeHNYaVB3d09aZkVrbjR6SnBkVFEv?=
 =?utf-8?B?NzFOWnBsakdwdU1LYUsvVit6ZzJTZzJzWWFBN1dVVFM2NDRHUEZ1Z0drYkFI?=
 =?utf-8?B?UlBxdUV5bS9XbTBTR20vcGg5UlMranhjcXdkckRrZlFSamEzcC9VZjFaeWZk?=
 =?utf-8?B?Y3VjM0lqL0V3TWZqWm4vb29WRjNnZ1JPYWp5RUFnQzRlZElaMXdTVnVJdEo0?=
 =?utf-8?B?OGM0OS9EcmhMWkhvbXNZK1hFeWZ0ZkFpV1RraGgrdStLR0t2bWF1L2ZsU1hp?=
 =?utf-8?B?SHJoQ1ZGK3dlVDVsOVVJeVZSTWJ5QzJPZmxvTkMrcU9iMXJBZ2dZZlNQemY2?=
 =?utf-8?B?dUgzQ0RhR2JFUFJkL1J1SUsvT3ZhcXJac1dHMzcxb0NacldHN3Z1ZDRLaCtU?=
 =?utf-8?B?OFlCL2duUW10cWNYVkpDdEE3cTl2TTZTZ3piTGplWVdKRi83U3BkNDdyemFi?=
 =?utf-8?B?cERUdEx6UXdLTW54bEh3SjlqVWdUYTVSZ25EN3VtM3JNemdwSUVybWRjUi93?=
 =?utf-8?B?eDRhUENtUTczU0VnL0kzcDBPVWlUaW9CMVNVTmdvSTR4TVVjUEtNa1drQjRP?=
 =?utf-8?B?MkJmZUt5UmFkU0U1OGt5UmIzbm8wYmN2RS9xdUk0OXZHZUJ0MithYkZ4ekg2?=
 =?utf-8?B?d2IreWxsdUxWVmZyaXdpSUxqRHgvT3RxWmJ5dG5NeklxcVUyU0hlK3BERURl?=
 =?utf-8?B?MGFabkM3eFVYVE9HZkU5MnRPMDA2WDdtMzh4NHIxVzBSVlcyVG1ocXlRM0lM?=
 =?utf-8?B?NFYvaTBYMWc4MnVQMVdXZ0hRVE1teVcrYzZMTCsveEdWMWJHd0YzZEFvOFp6?=
 =?utf-8?B?S3p5RVZrRzNnU002ekdVbUN2S2VrZm51VEZRN0wzVXRhRGRPUjNjcGdhQTZQ?=
 =?utf-8?B?eHhydWNQeHB2QkN5TzVzNS81bFVuUmIwWmNXc2RRMjdwdHhDRldlbDBCYVV1?=
 =?utf-8?B?TGIxbHgvVlFvNkJ5eFRIait4OXVXNUN0bW9ScTVPZjI4MnN1ZUVBOThOYzBF?=
 =?utf-8?B?SmgwUjJzNmlGSlVqTlJBNS8yQlppVVRpOGoydDZWU2tLMk9URVFtT1RYdFFw?=
 =?utf-8?B?aEhVaDN4K2ZUcG9lejdwUlEwdDZnOFU5T09nbDZtaTBHUWIxVHNQUnd6QXR6?=
 =?utf-8?B?cndmaHpqaFFGZ1prMDh1ZDVjdUhQbE96OHZod3dNRGNHeTBYVFoyTkErTmxY?=
 =?utf-8?B?eG9tUDdUdk5LK2RxUmFiaTJPdVRFV0NhRXg4THFPNFk2NnpOSFNzck15cHZs?=
 =?utf-8?B?SkZxMlJsWlM2TVNwV0pTbXJ2UHFoZTF5TEtveUpUZERFeXo2WEdhNHVjSUNL?=
 =?utf-8?B?Qm1QbHB5VXFJdUJqQ0VvTzdhYkNOc3hDVWxIMi9xTy9BQ0poUU9ZZDVpUEhx?=
 =?utf-8?B?RkE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7242c562-e170-4c14-1b79-08ddfad985ae
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8496.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2025 19:43:51.5948
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6He6K8RXUx0n39F7uLZhIoNnNPG4MvhC1lEFq4wQFYjQo2wloxgy1fhPi6Xh17zD9MTbyBSiajHFj49XedcoXBcmrEXafpunW5OIJIUG50I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7047
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDE4MCBTYWx0ZWRfX6goylmV5z21l
 fIVMu0n2CB7smhXxQcOlYxs2pN571drZdhLvDONPrmWupw5P75JAU5fLTVQ00s31smWmm20Q+UX
 q9hXARRqzDvuZmmjHLpxa5g20EHJ6AcDHeFFO5DMNWcE4QTwV/uWim16wlZ9s1LLKWv6l0YnmKL
 7RT7S2JtedzZU6zZ2M3q2R9OaVLlAz1CTIFe0gORlQGK49ZSl/FaiewfXGWBoMS7YIqdFSvSpSf
 t3QDPlP7JMbv2Ki1oTWRPFuDXNj2oE2DIMRsT/Aq7ojYSJ2brhokyElPMUMLwjBMmnK/vtkm0tE
 cHeZovRi2oSI2IldBOmXjNGjc1zAW9PDJdImZ+C2eO3wD42/o1ixH41/ZHp4lE=
X-Authority-Analysis: v=2.4 cv=YZS95xRf c=1 sm=1 tr=0 ts=68d2f87a cx=c_pps
 a=AR2WfxoYHs0IzVfHT2lLEw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=t7CeM3EgAAAA:8
 a=ziuduOKP2mkGZmgCmoQA:9 a=QEXdDO2ut3YA:10 a=99BEocc5hNOmdPDNsxEA:9
 a=_W_S_7VecoQA:10 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-GUID: 9Ku5U9FzI5mWeYMFzshfNJ9iAxYuM455
X-Proofpoint-ORIG-GUID: 9Ku5U9FzI5mWeYMFzshfNJ9iAxYuM455
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_05,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 malwarescore=0 impostorscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 phishscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2507300000 definitions=firstrun
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Sep 2025 19:44:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65868

--------------4Z5BuBX2ybIi1INCOOkxIWU1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Martin,

Do you keep your job server patch up to date?
If so, can you push it to poky-contrib or share it some other way?

Now that we're closer to stabilizing the fall release, I'd like to work 
on and help get that merged
early in the next development cycle.

Context for those interested:
https://lore.kernel.org/openembedded-core/9844556f-5016-47fa-a3ac-ceaaca1e7d57@windriver.com/

../Randy

-- 
# Randy MacLeod
# Wind River Linux

--------------4Z5BuBX2ybIi1INCOOkxIWU1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Hi Martin,</p>
    <p>Do you keep your job server patch up to date? <br>
      If so, can you push it to poky-contrib or share it some other way?<br>
      <br>
      Now that we're closer to stabilizing the fall release, I'd like to
      work on and help get that merged<br>
      early in the next development cycle.<br>
      <br>
      Context for those interested:<br>
      &nbsp;&nbsp;
<a class="moz-txt-link-freetext" href="https://lore.kernel.org/openembedded-core/9844556f-5016-47fa-a3ac-ceaaca1e7d57@windriver.com/">https://lore.kernel.org/openembedded-core/9844556f-5016-47fa-a3ac-ceaaca1e7d57@windriver.com/</a><br>
    </p>
    <p>../Randy<br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------4Z5BuBX2ybIi1INCOOkxIWU1--

