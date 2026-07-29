Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E343AC54FCD
	for <webhook@archiver.kernel.org>; Wed, 29 Jul 2026 21:30:51 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.22170.1785360638429166181
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jul 2026 14:30:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=DKuVay82;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=2670323a71=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66TL6KAs2605756;
	Wed, 29 Jul 2026 21:30:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=PPS06212021; bh=W6Oc7jznEi28vqN8AEyA83
	v57uZX1gBfkbkgIU/nDDc=; b=DKuVay82yW5YDu0YKTaJfB413wwnD5+/YhqD3T
	D0XjfOlMyETcctd4y7IUGzo5ZJhIKkleMLq077GkegurxDEDDcFs1DVgq5gt0+Nh
	lRyAHPSJkpo4NRMV0LdoAyK43ei/BOJpZirGba1+jsO0IzQLTaxXyDLt9rFzaawp
	fII4Y25D5+qVhBmuSbwPqjTlTS5Xf3BGg/MyykaVv/bHT7RbZmP1yMFSzGAjL1fB
	NEYbGV5h/WK8fpA5RVQ1ST5Zwk2RNUSOl0kNUegBcGIZWiymY8jGpB5RDARAI0PN
	EbxfeVB+1KEYVlINCXZEpDTNzgYfB46gLTUohNL9QZNPg+5w==
Received: from sa9pr02cu001.outbound.protection.outlook.com (mail-southcentralusazon11013006.outbound.protection.outlook.com [40.93.196.6])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4fqs3p017q-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 29 Jul 2026 21:30:12 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MAlUN+Mv7yPegnFeCHkp3WotBPC683oymB0cvgzbWIW+dWxMN0kG+UUEGJWddLfijciXE3oRixgdYnj75+HxNGhHts3GNlBwQS8DpsiQDy7ZIufozpsIjmNJxLAPIgygio8WRSSsxQjLh1Y7S513tDTFSrlAn6ghwwfJ/DxW55x38KC704NSs3oPhwqnBduhEX1WB/tlhhe4Eh3zYb6oXNWQNFnQbzRDKzJqTdjkWPOaxNu7sWUYH2gsnUL0AM+L6C5AgDIV4yfAphcDHrJseD/aHCNmhTYyPHa9H/27x2AL+OO5TFYH2Mm/TYjVIFJp6zsSIKDU35G3Ml7ri15dGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W6Oc7jznEi28vqN8AEyA83v57uZX1gBfkbkgIU/nDDc=;
 b=WwkwnLN/H322bmJLm/V9iPXRvX/868HOQGqo46azNaFdTnTE17/vbVLHNTVhrMkiEnB3gIzts92GtEk2jXauprlVQilzXJnPxdyjCMM8Dke/pT0JVPj+rCwSIXf9NjMG5UR12bLIvGBhYencwa/5zjhfHFAdlw9ENtcsNW6bFwaCoyQm83SAn+EsQmr0wWAWn25P7Xx1HDJjU2WVjfyapREQg1FivOTaK+GXoqWgXdLWB/yCCqqnh60I2g94OHkUwgY7QrriiWedgHa5ehBrroD1AAGkQqf+fsfStri3FW/bmHn9s6rHGE2xJFVVO2tDI+I00GWyQg5cYsJwpT6Zrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CH3PR11MB8496.namprd11.prod.outlook.com (2603:10b6:610:1ba::22)
 by IA0PR11MB8378.namprd11.prod.outlook.com (2603:10b6:208:48e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.270.12; Wed, 29 Jul
 2026 21:30:10 +0000
Received: from CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::5627:e3a5:cb26:b555]) by CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::5627:e3a5:cb26:b555%4]) with mapi id 15.21.0270.009; Wed, 29 Jul 2026
 21:30:10 +0000
Content-Type: multipart/alternative;
 boundary="------------XHqk9WPTPsScaV5ujsf8smJT"
Message-ID: <725ff11b-6f50-4104-9d0f-c0db0f016d22@windriver.com>
Date: Wed, 29 Jul 2026 17:30:09 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Limiting Yocto Memory Usage
To: Ferry Toth <fntoth@gmail.com>, yocto@lists.yoctoproject.org,
        luis.merayo@ridgerun.com,
        =?UTF-8?Q?Martin_Hundeb=C3=B8ll?=
 <martin@geanix.com>
References: <CAPGGCfrQqFjk68=6_JXCrj3XyxK1inZUNzjx4JZikm0MfhfQFg@mail.gmail.com>
 <2be84a80-e227-40cd-b63d-781dab0d9fb1@windriver.com>
 <4a525185-be6e-4993-be82-34e34054d823@gmail.com>
 <5de817e9-0765-4759-a982-d4090d539828@gmail.com>
 <d4ace895-a971-4e77-98ee-1aa067f3ff78@windriver.com>
 <1ce91f9f-439c-402c-8f00-b4e7738403e7@gmail.com>
Content-Language: en-CA
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <1ce91f9f-439c-402c-8f00-b4e7738403e7@gmail.com>
X-ClientProxiedBy: YT4PR01CA0262.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:10f::26) To CH3PR11MB8496.namprd11.prod.outlook.com
 (2603:10b6:610:1ba::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8496:EE_|IA0PR11MB8378:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e2a049b-56ab-43ed-2931-08deedb89181
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|23010399003|366016|1800799024|22082099003|18002099003|8096899003|4143699003|56012099006|11063799006|10067099003;
X-Microsoft-Antispam-Message-Info: 
	28C1I194phWl+EZqcWa/oC5Z94dmovnyUyPwS/8hNMPaAsuwCtOPPQhywvabXUIbIVLX6Razc364FFs5tgWviXdCfcuRq96moo6IGyJmC3OzTJh29Fj4zfSjy8x5HDOJ/aWjrCZMhpNrxDZC3xpfElQ3L0ysK5GLPXUj74AvgHqK3VIkAKL+8Huwp1edKVU38TnLEouFqhHsySN4WP9cU5bXoquuqhFFUJ8igF7HWERpSwLPax8VeDEuCoSCvj5oAZPmymdOjtERAhSgvbfy/dRFWZX5AuoavdHJj4CyeLMhUCcqf89wS1Y7j6iZR5Z61DfU4GpGMTNcumaC2tqvH4cmEdStgAwYC7TVLTYG2kuOGckBmyT8WXgxfav/oIfmJGJvXfOPnOJPczeHJiiUCgT5DteRaMRWCcFNmiVwF6LNaGmqfv/MpC18nd9p7gg/N8pwAgEmTge2r2l9zycO+o9+vlxP/0UbCMq/ESmsldt9EWgFGby6rJKz9X8LYt8e2l4qo6pePcJ+G3KrwZNaULqpIwBmyqz3+GGUFhZsdZQ4Uq1nxVtaz99MmfyB+y/KdHXTKP0FlCIqWuq2NwajCDwjoQvaOFUM81MfKv4hLGftqChN5mU9DZ5iRVZOKGvEP1QFjP+uNqvxnByN5Y3Ga2B3LRiO1jprLOd+NOFUEE0=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8496.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(22082099003)(18002099003)(8096899003)(4143699003)(56012099006)(11063799006)(10067099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RmltMDQ4RklrRld3MWs1TStSWUJlYVh5UEoxSlAvanNXRkFQV2NYY0VIVW83?=
 =?utf-8?B?bTB6OTU4R3hkbVpKdi91ZE9uMytNWGZVTjFhL3hjakdDUmRwN3IvQzR0M2lN?=
 =?utf-8?B?VUh3UFVvQ3MrUkN6bi9WNEd1TGdaVlhQYmt3T3lVU1BuUVhNR0UzV3BjaHVK?=
 =?utf-8?B?cjRaNDRHSUVDS1pud1VUWDR6a0dwRjFYeW9RZjJIQ0k3c09IRDZmVkVMOU1U?=
 =?utf-8?B?WUIzNmkyRGszVENsWFJVR0l3aGlJZkFYTE5OTXJqV0RaYVpiN2tTRW5XOWdx?=
 =?utf-8?B?SGhEdzVoNWoxV0c5TVcwRVpBanA0TnVMY3ZWRFRySWpPY05qNjZFR05DVmJu?=
 =?utf-8?B?WXRwbTF3Y2lRdFRESTVVaVBEZzdTVFZnaDNaajI4ZjNEUHRWdjQzV1ZjUm5E?=
 =?utf-8?B?RkRyTjhzZnU0VXR6OStxNVF4Y1NyQkh1MllVVlhNZGN1Mk9IeDdGOE9QRGlB?=
 =?utf-8?B?cFg1aUQvZndYbEcwMmJnV1V3OVprMWFDRWhnZGcwSkEwcWF3bzh3T3RuaTVw?=
 =?utf-8?B?NWRDVDczOXU3Wmw0Q29yaTBqYW8rLzFzOUtuaUFZV0FHNE9HRXNkOXA3TU5I?=
 =?utf-8?B?UmVUWFJpcDZ4TUEzd3ZBN25zaWx1aC93WFQyWkJKa0FzRndYRjYrNWIrbXJT?=
 =?utf-8?B?L2FXT0NPM2o3VnNmWGJobDM5WVBiRDMwc3E3M0JiYUpaVTR1MzdkQ0JVcGlu?=
 =?utf-8?B?Nkx2MzcwVTBBcEFlMVRTSHR0a05jc1lNSGZ2YnRzSVdMOUthakw1S1gwTDBW?=
 =?utf-8?B?TGc4Y3NMcjNjWFFxRnhWVkR1akhQUWwxMzIrZng2aVRMcWNQbHJoa0NRUUpW?=
 =?utf-8?B?TmJYOEdWUTBoMkNtWWUwRSs0UlRjQ2kxdWRONUwwRXMrakpFQlNpSnNkUFo3?=
 =?utf-8?B?SGpZWVdpakpDbTEwMXZpUDlXeDQ5TzRpeHUvQkJ0YVQwT3JpWkxkNmVOYWNi?=
 =?utf-8?B?dGZwMFNJSXJ1QlZvbk5rTlE3MGhvenBIb2ErVXNaWFpmdzBqdlpCazhIUFVV?=
 =?utf-8?B?UGtCYXhSYnRna05IZ0kyR0x1R0lKcUo0cEVTSzVjMGJtN0hOdU5CZDdnV1Ro?=
 =?utf-8?B?NGFSMkY1c2dLbTBBbW0yN1BGMG03bDRIdTNKcmVCQ1VHTzNxZ2dZdW9MbVg4?=
 =?utf-8?B?UW1MVHlkUzB0aHErZkhZTnA3SkcrVlNnSmxGZ0xlMWQ4bFJnb3RQbms3MDR0?=
 =?utf-8?B?UkpuY3piTXZuaVBRMVRFQktGUWhaR0NwMUtKQ0o5WmFlYk43aGpUbU15Vkt1?=
 =?utf-8?B?dzlpa1QrM2JId0YraC96bnVYRVJFS3FtY1Nmdi9Wc1VmdUplRzJnNkdoYWZC?=
 =?utf-8?B?NXJsYmFuQTZBeVlucm1sY2hYMTV0ZDArMlY3WDRoQmREWjJKVmpQZmNXd0RW?=
 =?utf-8?B?bWpMZWNMcUI5QXFKRis2T2crT0Vaay80eWlYeEtqamdNbWU4MHJpK3NrZXlt?=
 =?utf-8?B?bHdoeGpyT1JpWXg1b25nVU1PQk4yemIyK0FudXdoQUZxYVdSRmU3eHFmYzFE?=
 =?utf-8?B?aUxsTE1xRHRidzJ6L0lrVFdMa3REUXllc0d6VWNkeVFoazBRL0FVQitDc1Jx?=
 =?utf-8?B?QVlKK3FhVURHZW5YM0wxSVBrVFl4U2tTdUdNNE11eXpDMGZEOHVuZ0s4TEpK?=
 =?utf-8?B?OVFGNURtcmVhcVo5V1piK05xRlZrTHk5bjUxWlpuNUpPK05ydy9xSHNMMUVL?=
 =?utf-8?B?TnJ3aTd6d0NNbzd3TzlrdExrR3RZakFvM21IeWttS2xPc1dRTk5WNVI2UFg2?=
 =?utf-8?B?QWQ0S0VxMjNjN05INmVhdmlhNnphdVhhamFrZlc4aXhyQlhRVHpPN084V0hV?=
 =?utf-8?B?b1BXQVl0WG9WeWcvK21PSVZtMVVOYVdERFppaTl1L2swWGxqcHlrY2M4NVJr?=
 =?utf-8?B?VFZkWjRLTGtneU84SXQweGl6WENvdUtCdzZldTBkVEw3RTd6bzJ4VDZyS1dw?=
 =?utf-8?B?Slc5WWlHMjdEb3BpQ0FLNXpkR21ObTdoaW10ZFlYamswcXBkRzFxaW5FOVA0?=
 =?utf-8?B?THhPSm9KdGQ0K3JaRnpyN2lqUXdVdHZlYVlpWDZBTjE4TmtFWG9jRmNwTE10?=
 =?utf-8?B?WElqUVRJNDlyUWw1QnBVZHpzWGFJMmNQRitNejFtUThtM01mN25OVC9BK0xN?=
 =?utf-8?B?dlRNaUl6TzVMYlVmakdHT3p1cUFpb0w5UkE1L2tZcStFckcvUDVEUFF2dGUv?=
 =?utf-8?B?VjNOZE8vVlFsQ1Q4MnU0QmNXeU56dlp2OEdVMVVJSk1ZNDZ6QW5QYVF0ZTZE?=
 =?utf-8?B?Tmh2aEE1dmhDRFdHQ3FELzExRlpCc01XdENYMVRYU3FiZEZ4MllLZU9JMUdP?=
 =?utf-8?B?ZUVRNVVYTlBIK0hSVWtyVGljckpNcktjVUZYa2k4Vm5UV3owQ3NtbTcwVFJN?=
 =?utf-8?Q?gHIQh8s9pxZOo00o=3D?=
X-Exchange-RoutingPolicyChecked: 
	aZXijCJw7IGdaM9D5Z5pl17TXnyo2T/a2aJOxeSC1dOx5Ms0pTNxyVjWNpbN5cO7bHbbYoAPI2r76cnaE93JClcBEEtMxVtMz5Hm7XR2hFq7lVGgdD0zqTCiJL6bu60jn6hXjWmTVR8QtCJWT6q2W1zmnOCjT4ElarSA488e2nFvpQqK8wcyAS4ozFmXga7amJ9EsPrGH8wi8hdEVE0DVk/fEz3StXtuSMBfM/3F1HjpEgtQPjp+oVjoJo+j55IOm2DZptvg7yjJjAsgN2pFKTJ17kCgmxkIff+j9Fh+mg98uAzVVPnNnGyCp6S84RR9b/yK9TBwobtY7tyNmv+79w==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e2a049b-56ab-43ed-2931-08deedb89181
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8496.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2026 21:30:10.5247
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ItTKEIH2ZHBce7d2JLSDwIWaGYukX0FiUBgXHsPtUw/utn9ta++eKg572X3WKN/zs5F81U+Ri1MEes1BLXrI8UF+pOR4nTWvQwQmAxG9x3I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8378
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI5MDE2MiBTYWx0ZWRfX2SVEiHQNZ9lo
 j7A6wBTMU+9kh3X7FPinxG0enWUuc9YCW7dzs4q7Q/f/MESqJYLPASJzqI+FnoyluOnc19BVGu7
 qX7/Fs3PCU0Ufyn6uKqY+uBOXMxQoeDUgIqaFxZ2Hd4uRATQ27GCfy3sfr3rYaczmoAHw24lfxa
 g/mxTG33dPAb7MyctiEzU7PW+qAZIlb6D4ExtJ5GzpwDHqb08njBGtNrwj7icIYUs7u+RoUYOKe
 jRsvDx83TQKzPhvM2z6EHgoaLrP/wdJEjzMQhXptwxh+zk4kxnyaSx7GYFHW7G6hcLEpYAJaaz+
 5JFIOvvASwGmkxV+FDt7LaVEJ6UoZgESV9il4qzB7K8mson73kea6s9ocKHZLgLdmYHRQSlK9HJ
 xIM4eaDQLuLMmHoLyqfLvTN5ElU8vQ4RHt+4+P/a+drWcOV+6uNmqcx1eYggAOtVMrTbjR/ms5I
 97fv5vMUNovnGg9nsyg==
X-Authority-Analysis: v=2.4 cv=Q7TiJY2a c=1 sm=1 tr=0 ts=6a6a70e4 cx=c_pps
 a=oxxrQmGkUFFO/gDwv9AvRA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=RAioF0-LDSMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=bi6dqmuHe4P4UrxVR6um:22 a=klDOsUkWDRETUCZYPvoE:22 a=nji52ZFiihgMzi1yMOwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=pGLkceISAAAA:8 a=oTszPQe7F4TrDiECl_8A:9
 a=YO03whu1WFIRwl3W:21 a=_W_S_7VecoQA:10
X-Proofpoint-GUID: 5iCYbdOufhsrzLia7N2NITK8mXdGBLqb
X-Proofpoint-ORIG-GUID: 5iCYbdOufhsrzLia7N2NITK8mXdGBLqb
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI5MDE2MiBTYWx0ZWRfX0+IMTa1vyvOQ
 8WO8lZzz1nz1t3uBIZl3xNWYfDWnkkowVGx9OHHmPyIG74ia0fintYDk5X3Arg+Wxm91YqauyKP
 QcNWhFlPEuyPq6iDHbGEa/GhXrLzQw18IOIJiz0CZ27CiNMJ3FA0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-29_08,2026-07-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 impostorscore=0 phishscore=0 clxscore=1011 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607290162
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Jul 2026 21:30:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66671

--------------XHqk9WPTPsScaV5ujsf8smJT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 66TL6KAs2605756

On 2026-07-28 17:36, Ferry Toth wrote:
>> Nice, are you interested in trying to get that or something based on=20
>> that work merged into oe-core/master ?
>> I have been wanting to do for a while but other responsibilities keep=20
>> pushing it to the back burner or out of the kitchen completely !
>>
> Yeah that would be great. The patches were originally suggested by=20
> Richard Purdie. What spooks me a bit (based on earlier experience) is=20
> what additional stuff (self tests?) would be needed to get this accepte=
d.

I hear what you're saying.
I worked on Martin's jobserver patch set for a while and I was trying to
add some tests to prove that it was working well.

I think there's also some questions about the set of features that we=20
would implement.

I've send the set of patchs to you at this email address. Look at them=20
if you like.
I've been too busy to review how they differ from your approach.

All for now, time for another freaking meeting!=C2=A0 ;-)

../Randy

--=20
# Randy MacLeod
# Wind River Linux

--------------XHqk9WPTPsScaV5ujsf8smJT
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <head>

    
  </head>
  <body>
    <div class="moz-cite-prefix">On 2026-07-28 17:36, Ferry Toth wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:1ce91f9f-439c-402c-8f00-b4e7738403e7@gmail.com">
      <blockquote type="cite" style="font-size: large; color: #007cff;" qctoggled="true">Nice, are you interested in trying to get that
        or something based on that work merged into oe-core/master ?
        <br>
        I have been wanting to do for a while but other responsibilities
        keep pushing it to the back burner or out of the kitchen
        completely !
        <br>
        <br>
      </blockquote>
      Yeah that would be great. The patches were originally suggested by
      Richard Purdie. What spooks me a bit (based on earlier experience)
      is what additional stuff (self tests?) would be needed to get this
      accepted.</blockquote>
    <p>I hear what you're saying.<br>
      I worked on Martin's jobserver patch set for a while and I was
      trying to&nbsp;<br>
      add some tests to prove that it was working well.&nbsp;<br>
      <br>
      I think there's also some questions about the set of features that
      we would implement.<br>
      <br>
      I've send the set of patchs to you at this email address. Look at
      them if you like.<br>
      I've been too busy to review how they differ from your approach.<br>
      <br>
      All for now, time for another freaking meeting!&nbsp; ;-)<br>
      <br>
      ../Randy<br>
      <br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------XHqk9WPTPsScaV5ujsf8smJT--

