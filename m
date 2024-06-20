Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03A26C27C53
	for <webhook@archiver.kernel.org>; Thu, 20 Jun 2024 02:47:48 +0000 (UTC)
Received: from esa11.fujitsucc.c3s2.iphmx.com (esa11.fujitsucc.c3s2.iphmx.com [216.71.156.121])
 by mx.groups.io with SMTP id smtpd.web11.38798.1718851661250707041
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jun 2024 19:47:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj1 header.b=aZ6QMKpr;
 spf=neutral (domain: fujitsu.com, ip: 216.71.156.121, mailfrom: wangmy@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1718851661; x=1750387661;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=YQE54K63MGxQp+LCZP7UFt282VvG0+opy75SbdIgnoA=;
  b=aZ6QMKprOoabNMXQFxQBCW++IuvWNblY2KeCVV4j3fRXzbuJzwDc1jrG
   QZ27IEKpa/e3PIMPsa0kzk98MpdbcP7u6Nll3Gqf6kyWizRrYkrY8usjE
   GGewvqGa5DnOfUt8jBlljv2Y6drzC9x2aUqp1D1WpD2BA/2ZBdbLjACRz
   WZuJAx1/1c29ey6qItVhkExBfC47hDNHB1BRkya0V9awnv/zrZHjxyMl0
   bSy2rd6GtBN+jRmgEm2oZKnnLrk1E1trF/Szmg8QToHApfMvnlKu8vN4u
   1owsjiR5k0cLUWt1ukD3QWm7f4S8wlJV7kgPzdJwHO57OaUIucwghu5Sg
   w==;
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="123638081"
X-IronPort-AV: E=Sophos;i="6.08,251,1712588400"; 
   d="scan'208";a="123638081"
Received: from mail-tycjpn01lp2168.outbound.protection.outlook.com (HELO JPN01-TYC-obe.outbound.protection.outlook.com) ([104.47.23.168])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jun 2024 11:47:37 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nHsSxwKjakC0uh12gfz+47ufcGgKuGMEp7Q3y5ahg5/aX/Nf85PsV+ZZj9w/SiNB5w/t55eGAFUpCgeJ7WJrx3wA/obDfv52TdR6SYD6l6hnFgdq91cfxaUWKFd60J0aD4+EWlmDKPOKfsXo/zHox0MDI7MZ9TCCfnUjemrX4+WQguUEQKXjlr68emT44fu6OLTTnxj1cINqzO02BXUkbExUzlwllHCacJC9PuKNl+1FZ3818FG/ZxueYOkQko9diQAYOR4Mna0SXDuQoHAGYopOHBKMs+7RveEGPijAa4Db0emgja+eGzwYAZhLTZ7DUYAWVk7IEL5TpfY4cMHKrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YQE54K63MGxQp+LCZP7UFt282VvG0+opy75SbdIgnoA=;
 b=JNy48Jwtd1CE/bwmLIoYfI73i9s/Xm/f7h87X6s4ws7hbzyAi3/mJOZw2/OpEVB5UCBiMV2xWdVSFHpj0O7HyX7GmxR58eV3oYHfWkv8+K/zixCTYtthtzlpqjjoHQNKehIqe9zI722A3ujPuAbQasZS5S04o4FvoZ6D/HzYTPBWRLaK0EnZZxqf56Q6WW1uIdUmHHX2iz1rH/C9lDZR0rhSUI6SGdOnvwcp71qqakOpRdYP08F9wQcD53sRzJ+1PquXIvA7SHdsWJusRpQfWorwxM9QIBraXk0VtyG61MCYZJhy6vzhYtJRgvT55l63PDnuefCnuOKuMOMbspJHTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
Received: from TYWPR01MB11861.jpnprd01.prod.outlook.com
 (2603:1096:400:3fb::13) by OSYPR01MB5464.jpnprd01.prod.outlook.com
 (2603:1096:604:83::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.21; Thu, 20 Jun
 2024 02:47:35 +0000
Received: from TYWPR01MB11861.jpnprd01.prod.outlook.com
 ([fe80::e0dd:28e5:6a6e:2342]) by TYWPR01MB11861.jpnprd01.prod.outlook.com
 ([fe80::e0dd:28e5:6a6e:2342%7]) with mapi id 15.20.7677.030; Thu, 20 Jun 2024
 02:47:35 +0000
From: "Mingyu Wang (Fujitsu)" <wangmy@fujitsu.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, Jeremy
 Puhlman <jpuhlman@mvista.com>
Subject: RE: [yocto] [meta-cgl] [PATCH] cluster-glue: Start WORKDIR ->
 UNPACKDIR transition
Thread-Topic: [yocto] [meta-cgl] [PATCH] cluster-glue: Start WORKDIR ->
 UNPACKDIR transition
Thread-Index: AQHawI4pJG/ShT6c70yXWrtNvCbYI7HP9wng
Date: Thu, 20 Jun 2024 02:47:34 +0000
Message-ID: 
 <TYWPR01MB11861091D4A85E844421EE949DCC82@TYWPR01MB11861.jpnprd01.prod.outlook.com>
References: <1718611961-8782-1-git-send-email-wangmy@fujitsu.com>
In-Reply-To: <1718611961-8782-1-git-send-email-wangmy@fujitsu.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_ActionId=b26e70c4-81c0-4601-9abc-e41f9f74bde3;MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_ContentBits=0;MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_Enabled=true;MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_Method=Standard;MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_Name=FUJITSU-RESTRICTED?;MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_SetDate=2024-06-20T02:46:38Z;MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_SiteId=a19f121d-81e1-4858-a9d8-736e267fd4c7;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYWPR01MB11861:EE_|OSYPR01MB5464:EE_
x-ms-office365-filtering-correlation-id: 7dd2a834-2936-4700-a179-08dc90d356ea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230037|1800799021|366013|376011|38070700015|1580799024;
x-microsoft-antispam-message-info: 
 =?gb2312?B?YmRKNEpwVi9BNHVIa3h6Yi9oOGNJQjN5WG95MXVlb0ZheHh3N0VMVkY0eTdV?=
 =?gb2312?B?V3NLc1VGd0lDbm1UOHJxcWx6V1dwdVNtNitlY2JybWtTUkU4SW5JZ0wwdmVE?=
 =?gb2312?B?OTMxcGpycjNNUDU0OFBkVHBrT0FuWEw4dzgxcWpwNUExRnBTSGtZN1RQRXNv?=
 =?gb2312?B?bWxMaklkbDlEUlZ6YnAvUkRXZmc2Mmozd3VXS2k0NWxyMmFKSWZsdTU3eUIv?=
 =?gb2312?B?VmQ0RVdRdlFTL1hPMzZVcmlrYUt2R09WNzBEMU8yRDU2bXhTclZJb0dWR3I2?=
 =?gb2312?B?eDJCaVh6aGRuZUIwR2dyaEhmcmxJVitWTjlwU3dRQWdKM1pxWUl1RVFBSC80?=
 =?gb2312?B?T3pNU1U4WW13WE9sdFRBSHpWaHJlcTFGUU1tRGphcWZWRk1JUEhRMGlKUzlB?=
 =?gb2312?B?c0d6K1Zidm9KTmkweEQyUVNtRFgzc0NvQzBXaHpFVGdLMHdDWjd0WGZiOUtW?=
 =?gb2312?B?cFZEanVIbWVKOGR2VVpPM2FLNTBqTmxoVzZSVjhLQ0x2Z2E4cnpESmV1eUgx?=
 =?gb2312?B?Y0dSSm1VOHhUcjR4S0ZOZUxBYVc2b0pLU0dMVGgwNkRyUlZ4Ui81SW54OWZI?=
 =?gb2312?B?V3pEZ1dtMmZBd3RkTUg2YkxZdk9GT3MrQ1M3KzVORHBQUFpNK1k3MzJQWWlO?=
 =?gb2312?B?UHFWNFdHb0RldkpIWGF2S243MHM0SWI3NVc4eUdrSzVsSWE1S0pDcXJXUDQw?=
 =?gb2312?B?QzFuNTNncENuR3NLYXR4QlVWdG1ZNHI2RmVERGNZUDR6aG52RnFYY0hUZGo4?=
 =?gb2312?B?dkRldVZsYWZPemdMNDBVR3JBOHZ6UzVzK1YvRWlKYU1SNGZ5cDNGbzdZTk4r?=
 =?gb2312?B?K2xDNE0xU0MvZEhid3lJSXdnNFJ4Vy9qQU9BS3RzZmJ4RTBhRHY5SDhlL2dm?=
 =?gb2312?B?TlBTb3dhelpFb0lnLzgvWno4RHBHek9pMm5EV1E2c0thWGhub1VwcFhMVXFB?=
 =?gb2312?B?MXI2WjEvVHI0OVdJekV5NE8xNWJCUkJKendGZmY5UVVnVkJEeC8vcFI5bVZB?=
 =?gb2312?B?MStyeCt3SlFGR2pEa3dXMkZWTnZaZEg4NXV4S3o5Y1R5T3ZodVl0M3VjSk13?=
 =?gb2312?B?dXpFQ3QraGNJZU5qTVJHQ3VrcHZ3QlZ5eEhjNndVaWh5Y1ZwdE5aQ05TaWY1?=
 =?gb2312?B?amNBM1djaGRWbEU0WEwzN3JTSlR3QzRFS3loY1ZoUnpqKytZb0NRT1huR25P?=
 =?gb2312?B?R0N0WWJQVUY2VCsvRFFuclJWc2NBQjFNRmN5a0g2MGg0dTVUeWNhQTFPa2hq?=
 =?gb2312?B?REtvVm05OVNreDYrb1grZC9oanhUeVJrbHBJTnRSS3E4NnVWWVVOSFRiMDVF?=
 =?gb2312?B?V2NXNVd5RXJhR2ZyQ0VybkhVOEt4VEFSeGFvcjl6NGVqaDdLaFU0M3VWTUdu?=
 =?gb2312?B?cHVGT3lBalR4WVFIRGR3czR1dmd4ejFYN2VOakNnVkQ0Rm1ZSUZzd3RKVS90?=
 =?gb2312?B?Y05veGdVY0tSMjN6RzRkekNiUnFHd2hzaUJKYlZVakF1SjNBSEJBMDlwb05k?=
 =?gb2312?B?c0laWXFHV1p2aVl5UXdqcytHNUQweEJ0Q3BBUDJsWUlUWVlvUjFjZDZDWE9E?=
 =?gb2312?B?M05udFlmQTFZZ0xXeGp1cFRZSEZ5ZUwzZXJqN0JsUHZva2ZPVCtneHZBYlNY?=
 =?gb2312?B?WHFybTBPa1p5dU1MYVpJWmhWZW9tL0tSNGxSZzRRYml5bVA1bmZZQVdTZDNq?=
 =?gb2312?B?VXBHRVBHL1NXV0pqdXZMb29IY0FTV1lQUGNCUXJIemgyc2Uyb241QnRkTmFt?=
 =?gb2312?B?aUliRW1uN1kwTXpadHExVUs1b0NhNExFMzFXNVJMK3hDY21Ja2VScnA1QXQ3?=
 =?gb2312?B?Mi9TYVFzbVVFNlB1VFdobUkzOG04ZmJoYTJ3ZTFJVzZLam9qRzFnNE9IRXd5?=
 =?gb2312?B?UXRXQndpZXlnVzd4NzVGbWVvNjJ3Yzd0aUpYZjBGd0d1Umc9PQ==?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYWPR01MB11861.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(1800799021)(366013)(376011)(38070700015)(1580799024);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?gb2312?B?TThISGdNYmN0aldqT3FMemZyWS83cll1R2NZcnRTVUdwK2JTemlxcmlxYkJJ?=
 =?gb2312?B?QjhnWTdiK2Vtc3oxa0lBUkFiOFZTOUliU0VpSmFWV3EybVMrSVdwN0FJekVF?=
 =?gb2312?B?WnY4dUZmUkxBN0c2MVRjYktIWmd6U2U1T3M1dU5rL3UzdG0zSFgxc2Z1c2ph?=
 =?gb2312?B?MlliMTg1UzB2Ry9WQzg5NzF2b0s1Tnl4eGZWTThmY3lLZnZsWW5rbFRkdG1Y?=
 =?gb2312?B?N1NwTWdNREptd0NwVzMxeDd0VTNCSkNIdXpVN0xKRkZtQXU4dzdSTWFqQlVu?=
 =?gb2312?B?Y2ZoTjVlMEdraXlLM056MUlFZGJjeCtVb2g2TElib3BzcUpFd0pqbVltb2x5?=
 =?gb2312?B?WXZwcFVnMXJUZWVlUTgvN0FnNzFKYUVGZjdxYUpEMXdLOTZGMnRyM1gyM2RB?=
 =?gb2312?B?RThEVTFHTm02VStieUJNWEJIaXlGOU9sK2g2amxBOXM2dEFaOXlKK1JFS1Jm?=
 =?gb2312?B?VDVvVUhCeTRUTHRHUUsvVWV5R3lHNHF3L2FZc3NVQnd5d0pFWWpzbVZWZW9Q?=
 =?gb2312?B?aUZTQWNIbWZIVGdKdXBUZEpEY2ZwK1RXUk1HVmJhWURJckswSlRkbXJGdktG?=
 =?gb2312?B?R3hsU1hMalE5UlJncC9pa0NMNExlZWh6OXNia3JQWUVoSHJFRnhvd1V5NTAy?=
 =?gb2312?B?WGR6c1JjUlZoWnRxd3JjN244eGZ1N1FYeElXankzOU9zbDdKaGhHQU83MzlO?=
 =?gb2312?B?ZEUvZjJLSWpvWkQ5dnFQZDdSQ2VDK2lwVXVRbU53dmhoV0NQVFREN3NITG50?=
 =?gb2312?B?NEc2eFR6elBrNktVYkhTdzNZemdYWVNDZnFtWEg1N29nSksyKzhsQ1ljRlg5?=
 =?gb2312?B?TzZzdlgzWXpFMUhCdW1ocHpUdHlXbjhqdDQ1QUlrSXd0b0d1SXBmY2hHR0Rv?=
 =?gb2312?B?MVQrSVZHT2Zrc29MZjdLTHJPZW5ZckJnMmFJRm1rTmdqYnB4OHEwVjFjYWNL?=
 =?gb2312?B?STkzd2VYU1k3Q2k5THhHWk9iS2JnN1Z0VHFrVUFsazY4T2tXS3kwNmh2a01N?=
 =?gb2312?B?VVR5alNQZkhmM0Jhc3JJcFZ2NzJuL29BSWQ5YUMyb0JGNHVWcXpoOGkrL3NM?=
 =?gb2312?B?akNCSDRQbGJwZXpKNGMxZ2hwY2ptZjZpMGEzbUF5ZTVZU1lzMFpTa0dacjhF?=
 =?gb2312?B?S0k0dTZVYWE2bkFpRlEzdHAvTExqOWk5ZEk0cExvaFFvSDIwQmlkVHp0UlJO?=
 =?gb2312?B?ZVlLc1VNWTNJS3NndkIwcGpobW85cFcxVklrUFlLbWFieWZpRkhrSk82ZUxT?=
 =?gb2312?B?VEZpVVgveklOZnAvSzFmRmFOQWpRcE1mN2kyWHpQaEFSd1NnZ0VaazA3RExW?=
 =?gb2312?B?QkVOSDBnRG4rbjF4Vlp4VzZKNHNxYXpXSFQwWHRVMmNwb1hlZmoyOTVtcm9L?=
 =?gb2312?B?cnNCUXJHMlg0ZGtQTWt2ZTNpYnhTZFZuY09aR0RGaW5RelA1U0lmU2lzb2ps?=
 =?gb2312?B?MmJaWlhNVVZHa09FNlFEWCs5OWVtN3VzWXJ5QVB3Y25YRmFLdVdGN3lQeUNk?=
 =?gb2312?B?MkJ1Y2swSWlrVHVEOW1hVUdjSHlWa0llMFgyUG8vTjg3WWdUZzhjeFZwVnF5?=
 =?gb2312?B?QW5udGUvM0ozNTFKbEdGQWJMSE9OemsvdVpKdnN6VGRKZkhNbk5qdWcwTmlX?=
 =?gb2312?B?VnBnOGJ4Z3djcVBacjNjRWVpODNDNWo2RmlHc01GNUR1MXRqaFRnR0VYaTJS?=
 =?gb2312?B?UGRjdlFDR2lQWjBxNzJsYkhkOC9zMS81dFMzWEZUcHkyam8zL1ZSa0tlUDhu?=
 =?gb2312?B?NmZNOGc4c01Eai91dnExRlBDZXZzUG1oQU4yVHlvbko5ZkZ2d3FvSVFYdmg2?=
 =?gb2312?B?MlJ4ZWttOERRME44Q3RYZkFKQWFkeWJ1NGhQUjgvd0FRVTlwMkZ3dVlFeThr?=
 =?gb2312?B?SVY4dkRiTWhqQ1RobE53d0pxblQ1ZGtuMjdZVWJ3SEtkNSttSnpnWE1wL1Vv?=
 =?gb2312?B?enowaFV1ejFYTDlwKzdmQnQ5U1BPbXBwdHBiR2NFRCs2WGNjTEZGdkdkM1Fp?=
 =?gb2312?B?dzdZeVY2R2ZRcXpyWXIwVDdUL2dHUUVnMW8rRzF4b3FISWxVL3F0LzBFMUY2?=
 =?gb2312?B?djQvYVZGVFpCWWdnWk0wdi9FNHhlRlVkZ05zWVU0K1pkQnpXN1JaTmJYSWh0?=
 =?gb2312?Q?bs7g=3D?=
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	ilPLuV5zMpy0mkyqpbs3UjNd4ZhX2cFiBPx6MqG8NASYM5O7jTGMaTXfCBPO52AfjjBS6amNpP6TIPOvOqJ/TueBiyKNB5L4lEYLuWVbXi9e7t59mUg+Y6A1A9Mj4AJE0NnqEBB4QlZsxKnUhY1RujqsDs/QStHNbSDveqswnDppsvIXHJ/tYsz8rGrPnAZBXr7YOrHM5W35Hd97bSaGyAWxSqOr2Ft9516nIFBEz7N1hLtUzNpnGljDUTX32Od4AaL6eV8R1dbmuQrrW0dStILLFQ8ajdLIJ4rT5Wn+jif4RxZ8BlwNgUgAspPy6q/cCTYtnEqjWb2A2Tydr0L6MhvO7yBPSHM+fLUIHIP+Leyc8rETZU5g190ImZiClGKUwUS0HaVu6SRQ0Z+uvfCDj5LbQ5Ckd50rBmg8x95RSUU32LAzQaYKfdrdQLI7z5DHfiNGmg1uggUSrrPE0ftq0wXgV7gOnWPbEA8KS9p8Uvo1hqU4oiAwEk+0wFiHLxAB5tuuYoIiCOC0eSxwNwq6MrIqpmXUhDq1U3JhbZJ6CpvmrNysUWDPKHYwFZPZI11Rbk8sztHuAw28wbQXLqk2SnxrgbU5+4+KLVSPnwk+hpD8Ag7U3XxDAh3FA03A0gAy
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYWPR01MB11861.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dd2a834-2936-4700-a179-08dc90d356ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2024 02:47:35.0022
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AmQs7kiqm2xPw6810+LbEorv4TIKxVIUIFP+PssyTO7rtAgq0GtWlb0E7FL61cYWQvmf7kmvLVfE7nejzSctLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSYPR01MB5464
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jun 2024 02:47:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63368

cGluZw0KDQogIC0tDQpCZXN0IFJlZ2FyZHMNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KV2FuZyBNaW5neXUNCkZVSklUU1UgTkFOSklORyBTT0ZU
V0FSRSBURUNITk9MT0dZIENPLiwgTFRELiAoRk5TVCkNCk5vLjYgV2Vuemh1IFJvYWQsIE5hbmpp
bmcsIDIxMDAxMiwgQ2hpbmENClRFTKO6Kzg2KzI1LTg2NjMwNTY2LS04NTY4DQpDT0lOUzogNzk5
ODg1NDgNCkZBWDogKzg2KzI1LTgzMzE3Njg1DQpNQUlMOiB3YW5nbXlAZnVqaXRzdS5jb20NCg0K
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiB3YW5nbXlAZnVqaXRzdS5jb20g
PHdhbmdteUBmdWppdHN1LmNvbT4NCj4gU2VudDogTW9uZGF5LCBKdW5lIDE3LCAyMDI0IDQ6MTMg
UE0NCj4gVG86IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gQ2M6IFdhbmcsIE1pbmd5
dS/N9SDD+eikIDx3YW5nbXlAZnVqaXRzdS5jb20+DQo+IFN1YmplY3Q6IFt5b2N0b10gW21ldGEt
Y2dsXSBbUEFUQ0hdIGNsdXN0ZXItZ2x1ZTogU3RhcnQgV09SS0RJUiAtPiBVTlBBQ0tESVINCj4g
dHJhbnNpdGlvbg0KPiANCj4gRnJvbTogV2FuZyBNaW5neXUgPHdhbmdteUBmdWppdHN1LmNvbT4N
Cj4gDQo+IFJlcGxhY2UgcmVmZXJlbmNlcyBvZiBXT1JLRElSIHdpdGggVU5QQUNLRElSIHdoZXJl
IGl0IG1ha2VzIHNlbnNlIHRvIGRvIHNvDQo+IGluIHByZXBhcmF0aW9uIGZvciBjaGFuZ2luZyB0
aGUgZGVmYXVsdCB2YWx1ZSBvZiBVTlBBQ0tESVIuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBXYW5n
IE1pbmd5dSA8d2FuZ215QGZ1aml0c3UuY29tPg0KPiAtLS0NCj4gIC4uLi9yZWNpcGVzLWNnbC9j
bHVzdGVyLWdsdWUvY2x1c3Rlci1nbHVlXzEuMC4xMi5iYiAgICAgICAgICAgfCA0ICsrLS0NCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2dsL2NsdXN0ZXItZ2x1ZS9jbHVz
dGVyLWdsdWVfMS4wLjEyLmJiDQo+IGIvbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2dsL2NsdXN0
ZXItZ2x1ZS9jbHVzdGVyLWdsdWVfMS4wLjEyLmJiDQo+IGluZGV4IGUzYWFjNTcuLmFlZDhiZTYg
MTAwNjQ0DQo+IC0tLSBhL21ldGEtY2dsLWNvbW1vbi9yZWNpcGVzLWNnbC9jbHVzdGVyLWdsdWUv
Y2x1c3Rlci1nbHVlXzEuMC4xMi5iYg0KPiArKysgYi9tZXRhLWNnbC1jb21tb24vcmVjaXBlcy1j
Z2wvY2x1c3Rlci1nbHVlL2NsdXN0ZXItZ2x1ZV8xLjAuMTIuYmINCj4gQEAgLTYyLDkgKzYyLDkg
QEAgZG9fY29uZmlndXJlOnByZXBlbmQoKSB7DQo+IA0KPiAgZG9faW5zdGFsbDphcHBlbmQoKSB7
DQo+ICAJaW5zdGFsbCAtZCAke0R9JHtzeXNjb25mZGlyfS9kZWZhdWx0L3ZvbGF0aWxlcw0KPiAt
CWluc3RhbGwgLW0gMDY0NCAke1dPUktESVJ9L3ZvbGF0aWxlcw0KPiAke0R9JHtzeXNjb25mZGly
fS9kZWZhdWx0L3ZvbGF0aWxlcy8wNF9jbHVzdGVyLWdsdWUNCj4gKwlpbnN0YWxsIC1tIDA2NDQg
JHtVTlBBQ0tESVJ9L3ZvbGF0aWxlcw0KPiArJHtEfSR7c3lzY29uZmRpcn0vZGVmYXVsdC92b2xh
dGlsZXMvMDRfY2x1c3Rlci1nbHVlDQo+ICAJaW5zdGFsbCAtZCAke0R9JHtzeXNjb25mZGlyfS90
bXBmaWxlcy5kDQo+IC0JaW5zdGFsbCAtbSAwNjQ0ICR7V09SS0RJUn0vdG1wZmlsZXMNCj4gJHtE
fSR7c3lzY29uZmRpcn0vdG1wZmlsZXMuZC8ke1BOfS5jb25mDQo+ICsJaW5zdGFsbCAtbSAwNjQ0
ICR7VU5QQUNLRElSfS90bXBmaWxlcw0KPiArJHtEfSR7c3lzY29uZmRpcn0vdG1wZmlsZXMuZC8k
e1BOfS5jb25mDQo+IA0KPiAgICAgIG9lX211bHRpbGliX2hlYWRlciBoZWFydGJlYXQvZ2x1ZV9j
b25maWcuaCAgfQ0KPiAtLQ0KPiAyLjM0LjENCg0K

