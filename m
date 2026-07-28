Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44956C54F51
	for <webhook@archiver.kernel.org>; Tue, 28 Jul 2026 21:21:13 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.1592.1785273661053363218
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jul 2026 14:21:09 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=mCrHo7c6;
 spf=temperror, err=temporary DNS error (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=2669f3b081=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66SL2vNX3948389;
	Tue, 28 Jul 2026 21:20:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=PPS06212021; bh=of28v6UnYYTrOg4Nb6gJkJ
	Jo9AwP3pJ8yI/a3mASNPI=; b=mCrHo7c6TWv2hmDvDdOz8kxTlA45H/y7cMYVts
	ljOSyST7GcfE5G6P6vOUns4bjArPbJHJL14KCemVAP9G0hvnJ2eQF2erNBT50uYp
	zwRcGKGbgzIuZcfehnKH7LhsVtxHfk3r3dKLbNnNG4/nir34Ik8MI06lCiJgGp02
	RTkbOpZ/ojiHe2TYpnPhXC8hXl36KeeTTkckvfXVZ5B+wwbgfjrz4YsLN9RFuUNG
	V8b3fHsS62DmFeeKgA9sLRuH24z+sm5ylmwiWVMnnVvVGClTOdWePVBGG6Cs/bSS
	NCBC3DSY+no+CZsaivfF7iuBsxZW0JyG26XSVdD/pM1bKsLA==
Received: from dm5pr21cu001.outbound.protection.outlook.com (mail-centralusazon11011054.outbound.protection.outlook.com [52.101.62.54])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4fptams4k1-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 28 Jul 2026 21:20:59 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Uz7tEyhEq+7iJBqga0Uq1z9cJOK8Qi+RcdPozN5z5KXpy44xIwuRS74/Itq/kDi6kKODSfHZyiteuXuq8MSHgvF2x2H0pEiALiX+Ym5CRBbfBa6Ig5/AFlHkPza9hwIXkh4thMpnj4ClXAZrUSx77VMWWWAwUbfOIaToVsb5JjyMLRvYPmz94g8k8vK413HkFRS+6hXBWMgOmVug35Qclx+SQwgQa9ls1WE108yZx1pw08NbHpkDeQeV7JHUfrzZO1MKLlbe2e0AevBHGoNYwDJyavez8Y9dCOSLAFsyb0+ZAYq1AdFykdi88r+xMW1EgxA4MsragPd7t3HIgvdV1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=of28v6UnYYTrOg4Nb6gJkJJo9AwP3pJ8yI/a3mASNPI=;
 b=C5PSZSCCLjY1J8jN6kRKEocVmjDodyiYvWTSx0R1LNucyzTF4V0hCIizquLYVnK74VR+Z3QtvcP0vD/m0MVW2nE/1VZW8OorehcHV3Qb7RvlsIL7rRnfQdUSJZLbwPs0MgYmkxovQvcuvRbnWlE3WBm71YetqwKEFX65Qc4O1Kj65a1/rTT6WyvlzYGp5OBzD2z8BMHvIetme1HNAp/ZBvcrsx+e+SNkEugpl8ObvC5/4oSqHiDuVHsUG9Bdk5CYuuoE2aoo5/dzPHQIU0lqrMrUT8HXJKRRM9meC0a2Zjyw6UduqL/sKJrszdq8i6HXv5SdhMj/LTPmMmSTe9YP8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from LV3PR11MB8505.namprd11.prod.outlook.com (2603:10b6:408:1b7::21)
 by PH3PPFD9C09B4A7.namprd11.prod.outlook.com (2603:10b6:518:1::d54) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.245.13; Tue, 28 Jul
 2026 21:20:54 +0000
Received: from LV3PR11MB8505.namprd11.prod.outlook.com
 ([fe80::df74:a907:5a8f:df57]) by LV3PR11MB8505.namprd11.prod.outlook.com
 ([fe80::df74:a907:5a8f:df57%5]) with mapi id 15.21.0245.009; Tue, 28 Jul 2026
 21:20:53 +0000
Content-Type: multipart/alternative;
 boundary="------------IaP3JtqQmWDFtK2oxpD0P3q0"
Message-ID: <d4ace895-a971-4e77-98ee-1aa067f3ff78@windriver.com>
Date: Tue, 28 Jul 2026 17:20:52 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Limiting Yocto Memory Usage
To: yocto@lists.yoctoproject.org, fntoth@gmail.com, luis.merayo@ridgerun.com
References: <CAPGGCfrQqFjk68=6_JXCrj3XyxK1inZUNzjx4JZikm0MfhfQFg@mail.gmail.com>
 <2be84a80-e227-40cd-b63d-781dab0d9fb1@windriver.com>
 <4a525185-be6e-4993-be82-34e34054d823@gmail.com>
 <5de817e9-0765-4759-a982-d4090d539828@gmail.com>
Content-Language: en-CA
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <5de817e9-0765-4759-a982-d4090d539828@gmail.com>
X-ClientProxiedBy: YT4PR01CA0362.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:fd::17) To LV3PR11MB8505.namprd11.prod.outlook.com
 (2603:10b6:408:1b7::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8505:EE_|PH3PPFD9C09B4A7:EE_
X-MS-Office365-Filtering-Correlation-Id: 761cd49a-c6f2-4402-a048-08deecee1b35
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|23010399003|366016|4022899009|376014|13003099007|56012099006|11063799006|10067099003|4143699003|8096899003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	MfJuWOLCCtYBlKJ+0nU5gllHoehsGeDY5on9HHRnLTwDYv6Zroor7st+D/ig0MJqpMETGUDAo9sDS8jgOqqMg4E+M41yIvhZBm4JLmMNxUBtK+iogElzUStufoHHRsmRCMyaq71zR8GTAQCtFQDAHScyqIGX3ZeRMqmCDU66kxAFwMbfFAVnUnHErkfA5T3Lytd8nvI+H4nO9ZarQuBwAyRgEDW1q+vt3mtCKqW2g2A+VCGkkp6/YPR5zZmMuKOyjlkt+OZ1ZQthYQjyyhoaqF1ncFcwEobhGCZLJe+DQcv/3AjMCm8M35ky+DcnNmL/oM1qPhmiZsPYdJTONdz8eF+V4pf+aC6w4wS50gir5ctv9HN4kSVrImepDxHj6AYVbmo4cnifKxyCvqcdMIwYlCBS4H82pCR6rVB9YbSZ9PwxKdqcYjomvDNAzvhMmqMHBQ7LrFbQ8BvD7lAwjMTrYLTYHppZUa3xL9kUOWlWT9/lBDrIU9EjQeBoVH3aMMZUTlC1sK0NfiiceDwOU4K3FrCFaoBsEBpLlROxUQzclac5bkoE+g4bpa5fM5OQxiYV5vfBTQR1XEKZjCh4jt1btrysSShP/jIzNX2L3lMrWfg=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV3PR11MB8505.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(23010399003)(366016)(4022899009)(376014)(13003099007)(56012099006)(11063799006)(10067099003)(4143699003)(8096899003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YXUyWStWY1Jzb2RaNVNGVEhselVqL1Vsa2xNSHlGYmUwQUFKc3dCU055WE9l?=
 =?utf-8?B?UUVSNFl5MTdCUlR0VUUxaVhYOTAzaHNxeVJqYmlIMjVrTmx5cEE0emNWOEF6?=
 =?utf-8?B?NVFScTNMemxMWVlHOTFrMWhra09sdWRsVGJWaVcrRGhUc0dkTUtuOWkwZmRU?=
 =?utf-8?B?ZzE3VEt4TzZzenhwejRVcEpvTUlJUFQ1QlFUM0FYTm4vN21YNTFDN3dMcFlS?=
 =?utf-8?B?U1pLc0xIRlpZVkNKeW1GbGQrU24rbjIwTWlHSkNqK1NINExDZkpwRzUwQVFD?=
 =?utf-8?B?b21vVllvN1V4RUgyUkwyNHRjRWtTZHNZY1hjekdtSVVZV3ZFbGRmRzkzQkdF?=
 =?utf-8?B?VnF3VDc0dGlRNld4ZUU2dnBSVmxjYlFaeGVGWnhPMmFUMGF4bGx1bmFVTkdl?=
 =?utf-8?B?NE43ZmVwRXVnNmR3Ujdsc2JDaUxyc3ZEYVZBRk9mNUlwZ3JNV0RFWm91OHBH?=
 =?utf-8?B?VUxaQ2daSFNVTDZlSDBhNXppQ2Y3UFdxS1JsTlArWWhPa3huUUg0VUtyVDI5?=
 =?utf-8?B?cHEvNkFJUGxGQitmS0Q0YlN2M2VhbndFWW1FQ21KQTdSZXBETGx1QXo2bDdS?=
 =?utf-8?B?RHAxSnFNNk9sZFZyOStDemJWeGN2Mk9Cem1zdTVXOE4rc1o3YkIvRWtQc3Zw?=
 =?utf-8?B?Y1YvOEViRlpYdHEybUV0R0JEckhKZEF2cGtudTQ3bkRxZ0d3Q05OQjRXV1lB?=
 =?utf-8?B?aVgxWFhRSTdlM3RENHdsQVU5Nmd3MHUxVjY0RHg2Z3hFOXhDMkZwdDhlekIz?=
 =?utf-8?B?L0xjUEtWazhKU2VTR1pHd3hEcjZUZDBHT01JS0tmYXZDL2l3WWFtMnNOS1kv?=
 =?utf-8?B?ME9jb0ZtQ2d6QlBxUzk4ZjY4eGw5SE0vUGFvOW4wZTE1L083R3J4UUFISEVS?=
 =?utf-8?B?dW90QWZOY05UTDRZRWsxYUh2d2U1RzZYdmdFU01wYjNaVkcvVDMyMmRBK0Mv?=
 =?utf-8?B?MlBCNmp5RWZua1dIaGwyTnN5QnRvOUxnalUvb0Z0R1cvcy9qak16OHZadzlj?=
 =?utf-8?B?NUlBdEM5WUFERnpSNDRIeWVxejJoRzQxNWRaVk42ZTg2RUEwRXBLQm1RQ0tL?=
 =?utf-8?B?U05EUHNHa1JJU3drbi94ZFI0SE1SZzZxci9jT1djS2pTOVBObEIvQkVHY2RL?=
 =?utf-8?B?OURyWC9kcXFiWS9ETStIc0tYUXJNMlZGbEd5ZjhzSzFmRXZZTkNOdEN3V1Y3?=
 =?utf-8?B?VG1LaFpma1E2dEVVWnJueHVDWFE1b3dpbkpLYi8xampMWHVJYVkxN2ZjMVR1?=
 =?utf-8?B?djlVUkYwMmYrcHhwN3d1bmQva3FBanRmV2VER2R6TVVnYi9WdXBQd2hiQWNR?=
 =?utf-8?B?dzc1Qms3UEJ2emFZUVE4WHRQQjRkQ3orRnZCR3UzZEdFVU9XTE5MdmJvZ0VV?=
 =?utf-8?B?WEVpbm9COEd5a3hSYUxmQjUrREdvaENyWTd0MnhDR0tkbTZhZHR4RmE3MDBp?=
 =?utf-8?B?YnhCSVZFU05ob1E1RlVDYm0zUWtSTklwOFlxY3N6NmhuQkhuYU80ZE5KR0NC?=
 =?utf-8?B?QjZpUVpTRkMwamh0c2ZRSk0rK2hGVW1jZU9LcFlkS2xINXZ6aWhVYzFSSWN5?=
 =?utf-8?B?QmlZdFVtcTNhTUtsZ1BmTHRuM29LTVE0VzNGajdQbGZOVHc4aDVZVkk2L1h2?=
 =?utf-8?B?NG5MSUNvT1I1eXloaFl3Wks3ckJrbTIwdEV1amw1bG9jekx5UkE5YnNDN0Vo?=
 =?utf-8?B?Z0xxanVad1AwVmIwbGZIT1pkMDhydnc0cUNTZ21RTEc4Y2FCMkxZRWNxTVcy?=
 =?utf-8?B?UkZBVVlydVY4Zk05RW96Mm4xNFZzUnNjRG1kZi9VQlJMMDRZN3NaNy9iZDdq?=
 =?utf-8?B?Uyt4NVJBM005Y2hZWldiYzU5RXBTeTVXbzhLdjRiOXRRYnVmOGR3SEZDM2sx?=
 =?utf-8?B?YjBpN3BaUDdkV2RwcEV0UTRIOWR5TkRBU2kxWmxqVXhOZ2JFTDI2bk5OazFo?=
 =?utf-8?B?bTd4aWR5eHJNOWJqbzJONC82MDRoUVhaNmx2MStyTURyOGZOM2s4RzN4OUZi?=
 =?utf-8?B?SmtRNTNYSjNkdEcybThsbFI2bU9TZ1ZkNWx0K1ZTN05XNDJLM2JxQkV1L1Fs?=
 =?utf-8?B?ejBDQWV1SlVrc1hya21UYWZJNVdvaEJWSVI5OENJeEs4Q2J4UUx1MmFvUG51?=
 =?utf-8?B?YlA1NGRqeU44K0YyaEtxKzRnd3h1UFlyTmc1bEpCM0tpYm5lWWNQV1o4dVg1?=
 =?utf-8?B?Nit3SHNOa3hIV1RJVDlUY3IxbkEyNUFRb3dleUVJTW44S25KTzc2Wk5jRjJE?=
 =?utf-8?B?ekJDWCsxczlCU3VwdXlIZUQyTHlneWdJMUJjRWhvVnBKeUZVbzdlSXhCZmZZ?=
 =?utf-8?B?QldlQlBBMFo4Y0hWY0VPWXdtYUtFak92YysxUVRVM0J6QmlHK1VOV3ErZUFh?=
 =?utf-8?Q?AhWP/vu3JWxhewJA=3D?=
X-Exchange-RoutingPolicyChecked: 
	RpABkXBtQpI5LAiImpxBda3ctNg8legpcTREheaddEho4nVsSRLVw7b3VJt1SiZbINpNkl60dy+h/DW3NQZKU6ddp5GlDyZm0QLh7IhsucIAkcaonmjWlb0cqLGXwt/q4heolu08qL/9PBx9X5ktR2a/4Ujl3g8Tfvtz25EYjTEEvjSz+YgmlUYCVulGqEpNdisjLdmn9njrx/Sd8agX0Pd+1DlQhhHl8/Vb29B+Lt6U162CjBVugltz2350+YtxF9fZxWkBxhoOW7hm0Mq/ruww8s9pIEs+kIJaTEoU+nN8uTxLDTs+OTr0JQQyDnLxJc5ryh8EI5kaytBZTb9FRA==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 761cd49a-c6f2-4402-a048-08deecee1b35
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8505.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2026 21:20:53.7373
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wjrX+CIxh8cmMpnrbfmz735XKsWwcYXBbNjswN5GKtI0lNqbf1OS3OJm49qlgFJwd7NlgrGihMwHs9nvyAmCmbHqCwydvob9qLDTzjedhl4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFD9C09B4A7
X-Authority-Analysis: v=2.4 cv=DfEnbPtW c=1 sm=1 tr=0 ts=6a691d3b cx=c_pps
 a=7v6vjeP3yXOm/Y6ajRpg3w==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=RAioF0-LDSMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=bi6dqmuHe4P4UrxVR6um:22 a=fTW__CHxibyLmBMfj2wP:22 a=iGHA9ds3AAAA:8
 a=VwQbUJbxAAAA:8 a=NEAV23lmAAAA:8 a=NXMraRZsAAAA:8 a=t7CeM3EgAAAA:8
 a=ka4BZwusDjgpLI53aRwA:9 a=lqcHg5cX4UMA:10 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=z2U-W3hJrleVIN9YIjzO:22 a=pGLkceISAAAA:8
 a=8Nk8-F_x8TGHhb48l3AA:9 a=CYW6IhICe0TmhxVB:21 a=_W_S_7VecoQA:10
 a=nM-MV4yxpKKO9kiQg6Ot:22 a=M5shc7ap4X_tZo1ZwZdW:22 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-ORIG-GUID: ccp_209QVcU8WjnVj34nBJe2VK1uHSky
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI4MDE4MiBTYWx0ZWRfX+La7bOUd8uQT
 b/0omU1whwj5CXxlPVc45J2PaKkchElkFB/va1wCEUvt2B7DJjua23E5fVyLakUGCWyir46rf5l
 f9Ix8HPATbOlzlutujmSGOIM4V0Ih3HmJuSaIGcTPksK6z7fcDzZjJkg/zZC4g9MZreWjYXJba5
 9Fy2n4uESvtolv2U+GEP+jXbHd932resAT1NXAzC2NUUK+J8qU0UEs/BNQlD1U6USw/lf1t5vo6
 xilcLmq79hlz4JePHzwI/OWY0HaEsAToSm9aIJV37OWColHWAd88NP5ArkMEjvoRNE1qPm7ee4S
 vAhoMmoyiH+1HCK7tZqAK7OoJPouGo9Hsvh80OCxny+kMyiB6EoLIsV7THj2iNklzd/uhWAfMR2
 dOBuiEyNqnvSz4VDaAkXuclD0NiAVFwRAtmrrS92TSdnI/I0+mOoZh1irGmOpA/qVfwcm199Ysj
 lZ7bvBlOL4UKoT8RBKw==
X-Proofpoint-GUID: ccp_209QVcU8WjnVj34nBJe2VK1uHSky
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI4MDE4MiBTYWx0ZWRfX+0PzDk1NJVSA
 khFkMlLAyniNaoevzcjOd+rDUZm52aIw3huWeRi2/GkgGWwb0J8qBb8J2lhxYXZBpkw58FrobjT
 QOpYKZZZcSvosD617+eTQjU+NmqxB9vlRgeJlIZHAmexJcYoFrM1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-28_06,2026-07-28_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1011 impostorscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607280182
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jul 2026 21:21:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66669

--------------IaP3JtqQmWDFtK2oxpD0P3q0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 66SL2vNX3948389

On 2026-07-28 16:35, Ferry Toth via lists.yoctoproject.org wrote:
> Hi
>
> Op 28-07-2026 om 09:30 schreef Ferry Toth:
>> Hi,
>>
>> Op 14-07-2026 om 23:33 schreef Randy MacLeod:
>>> Hi Luis,
>>>
>>> On 2026-07-10 17:26, Luis Merayo via lists.yoctoproject.org wrote:
>>>> Hi,
>>>>
>>>> I would like to know if there is a way to limit Bitbake's Memory=20
>>>> usage to a specific percentage of the available RAM. For example,=20
>>>> can the Yocto build be limited to use a maximum of 70% of RAM?
>>> Not without using a container to do the build.
>>>>
>>>> Could these three variables achieve this?
>>>>
>>>> BB_PRESSURE_MAX_CPU <https://docs.yoctoproject.org/dev/ref-manual/=20
>>>> variables.html#term-BB_PRESSURE_MAX_CPU>, BB_PRESSURE_MAX_IO=20
>>>> <https:// docs.yoctoproject.org/dev/ref-manual/variables.html#term-=20
>>>> BB_PRESSURE_MAX_IO>=C2=A0, BB_PRESSURE_MAX_MEMORY <https://=20
>>>> docs.yoctoproject.org/dev/ref-manual/variables.html#term-=20
>>>> BB_PRESSURE_MAX_MEMORY>
>>>>
>>>> I see the range for these variables is from 1 to 1000000, so I=20
>>>> would like to understand if there is a way to specify their values=20
>>>> as a function of the available=C2=A0RAM.
>>> No, there is only pressure when resources are over-commited so if=20
>>> you have free memory, there's no over-commit.
>>> https://docs.kernel.org/accounting/psi.html
>>>
>>> That's the design intent of the bitbake PRESSURE regulation system.
>>>
>>> There are plans to work on additional build system regulation.
>>>
>>> The first idea is to use the jobserver design:
>>> https://lore.kernel.org/openembedded-core/?q=3DGNU+AND+jobserver+=20
>>> +AND+f%3Amacleod
>>> and that would indirectly limit memory consumption since there would=20
>>> be fewer instances of gcc / rustc / ... running
>>> at once.
>>
>> I do that, since 2 years or so. https://github.com/htot/meta-intel-=20
>> edison/commits/whinlatter/
>>
>> In principle you need to catch the call to make and ninja (to force=20
>> them to use the jobserver) and patch bitbake (see setup.sh) to act as=20
>> a jobserver.
>>
>> Now got it working on wrynose, still need to push that. Maybe later=20
>> today.With wrynose ninja has support for jobserver so doesn't need=20
>> patching, just a bbappend.
>
> Pushed my wrynose branch now:=20
> https://github.com/htot/meta-intel-edison/tree/wrynose

Nice, are you interested in trying to get that or something based on=20
that work merged into oe-core/master ?
I have been wanting to do for a while but other responsibilities keep=20
pushing it to the back burner or out of the kitchen completely !

../Randy


>
>> With this you can limit the number of compile jobs. On my builds I=20
>> found g++ compiles are the heaviest, about 1GB RAM each. So, with 16=20
>> cores I need 16 GB.
>> Separately I found linking nodejs takes 5 x 5GB (5 jobs linking with=20
>> LTO?). So, I limited that to just one (since both nodejs and nodejs-=20
>> native can be built at the same time).
>>
>> I'm not building rust so there may be other bottlenecks to resolve.
>>
>>> There's also an even less clear idea about being able to restrict=20
>>> the build by specifying memory usage.
>>> That shouldn't be too hard to implement in bitbake in the same point=20
>>> where the pressure checks happen.
>>> Are you interested in working on that ?
>>>
>>> There are of course other levers to pull to reduce CPU/memory=20
>>> consumption:
>>> https://docs.yoctoproject.org/dev-manual/limiting-resources.html
>>>
>>> Have you tried them ?
>>>
>>>
>>>>
>>>> Regards,
>>>>
>>>> Luis
>>>>
>>>>
>>>>
>>>> File:RidgeRun.ai banner.png <https://ridgerun.ai/>
>>>> This email and any attachments are intended for the sole use of the=20
>>>> named recipient(s) and contain(s) confidential information that may=20
>>>> be proprietary, privileged, or copyrighted under applicable law. If=20
>>>> you are not the intended recipient, do not read, copy, or forward=20
>>>> this email message or any attachments, delete this email message=20
>>>> and any attachments immediately.
>>>>
>>>>
>>>>
>>>
>>> --=20
>>> # Randy MacLeod
>>> # Wind River Linux
>>>
>>
>>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66668):https://lists.yoctoproject.org/g/yocto/messa=
ge/66668
> Mute This Topic:https://lists.yoctoproject.org/mt/120272854/3616765
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub [randy.macleod=
@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--=20
# Randy MacLeod
# Wind River Linux

--------------IaP3JtqQmWDFtK2oxpD0P3q0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <head>

    
  </head>
  <body>
    <div class="moz-cite-prefix">On 2026-07-28 16:35, Ferry Toth via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:5de817e9-0765-4759-a982-d4090d539828@gmail.com">Hi
      <br>
      <br>
      Op 28-07-2026 om 09:30 schreef Ferry Toth:
      <br>
      <blockquote type="cite">Hi,
        <br>
        <br>
        Op 14-07-2026 om 23:33 schreef Randy MacLeod:
        <br>
        <blockquote type="cite">Hi Luis,
          <br>
          <br>
          On 2026-07-10 17:26, Luis Merayo via lists.yoctoproject.org
          wrote:
          <br>
          <blockquote type="cite">Hi,
            <br>
            <br>
            I would like to know if there is a way to limit Bitbake's
            Memory usage to a specific percentage of the available RAM.
            For example, can the Yocto build be limited to use a maximum
            of 70% of RAM?
            <br>
          </blockquote>
          Not without using a container to do the build.
          <br>
          <blockquote type="cite">
            <br>
            Could these three variables achieve this?
            <br>
            <br>
            BB_PRESSURE_MAX_CPU
            <a class="moz-txt-link-rfc2396E" href="https://docs.yoctoproject.org/dev/ref-manual/variables.html#term-BB_PRESSURE_MAX_CPU">&lt;https://docs.yoctoproject.org/dev/ref-manual/
            variables.html#term-BB_PRESSURE_MAX_CPU&gt;</a>,
            BB_PRESSURE_MAX_IO <a class="moz-txt-link-rfc2396E" href="https://docs.yoctoproject.org/dev/ref-manual/variables.html#term-BB_PRESSURE_MAX_IO">&lt;https://
            docs.yoctoproject.org/dev/ref-manual/variables.html#term-
            BB_PRESSURE_MAX_IO&gt;</a>&nbsp;, BB_PRESSURE_MAX_MEMORY <a class="moz-txt-link-rfc2396E" href="https://docs.yoctoproject.org/dev/ref-manual/variables.html#term-BB_PRESSURE_MAX_MEMORY">&lt;https://
            docs.yoctoproject.org/dev/ref-manual/variables.html#term-
            BB_PRESSURE_MAX_MEMORY&gt;</a>
            <br>
            <br>
            I see the range for these variables is from 1 to 1000000, so
            I would like to understand if there is a way to specify
            their values as a function of the available&nbsp;RAM.
            <br>
          </blockquote>
          No, there is only pressure when resources are over-commited so
          if you have free memory, there's no over-commit.
          <br>
          <a class="moz-txt-link-freetext" href="https://docs.kernel.org/accounting/psi.html">https://docs.kernel.org/accounting/psi.html</a>
          <br>
          <br>
          That's the design intent of the bitbake PRESSURE regulation
          system.
          <br>
          <br>
          There are plans to work on additional build system regulation.
          <br>
          <br>
          The first idea is to use the jobserver design:
          <br>
<a class="moz-txt-link-freetext" href="https://lore.kernel.org/openembedded-core/?q=GNU+AND+jobserver+">https://lore.kernel.org/openembedded-core/?q=GNU+AND+jobserver+</a>
          +AND+f%3Amacleod
          <br>
          and that would indirectly limit memory consumption since there
          would be fewer instances of gcc / rustc / ... running
          <br>
          at once.
          <br>
        </blockquote>
        <br>
        I do that, since 2 years or so.
        <a class="moz-txt-link-freetext" href="https://github.com/htot/meta-intel">https://github.com/htot/meta-intel</a>- edison/commits/whinlatter/
        <br>
        <br>
        In principle you need to catch the call to make and ninja (to
        force them to use the jobserver) and patch bitbake (see
        setup.sh) to act as a jobserver.
        <br>
        <br>
        Now got it working on wrynose, still need to push that. Maybe
        later today.With wrynose ninja has support for jobserver so
        doesn't need patching, just a bbappend.
        <br>
      </blockquote>
      <br>
      Pushed my wrynose branch now:
      <a class="moz-txt-link-freetext" href="https://github.com/htot/meta-intel-edison/tree/wrynose">https://github.com/htot/meta-intel-edison/tree/wrynose</a>&nbsp;<br>
    </blockquote>
    <br>
    Nice, are you interested in trying to get that or something based on
    that work merged into oe-core/master ?<br>
    I have been wanting to do for a while but other responsibilities
    keep pushing it to the back burner or out of the kitchen completely
    !<br>
    <br>
    <p>../Randy</p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:5de817e9-0765-4759-a982-d4090d539828@gmail.com"><br>
      <blockquote type="cite">With this you can limit the number of
        compile jobs. On my builds I found g++ compiles are the
        heaviest, about 1GB RAM each. So, with 16 cores I need 16 GB.
        <br>
        Separately I found linking nodejs takes 5 x 5GB (5 jobs linking
        with LTO?). So, I limited that to just one (since both nodejs
        and nodejs- native can be built at the same time).
        <br>
        <br>
        I'm not building rust so there may be other bottlenecks to
        resolve.
        <br>
        <br>
        <blockquote type="cite">There's also an even less clear idea
          about being able to restrict the build by specifying memory
          usage.
          <br>
          That shouldn't be too hard to implement in bitbake in the same
          point where the pressure checks happen.
          <br>
          Are you interested in working on that ?
          <br>
          <br>
          There are of course other levers to pull to reduce CPU/memory
          consumption:
          <br>
<a class="moz-txt-link-freetext" href="https://docs.yoctoproject.org/dev-manual/limiting-resources.html">https://docs.yoctoproject.org/dev-manual/limiting-resources.html</a>
          <br>
          <br>
          Have you tried them ?
          <br>
          <br>
          <br>
          <blockquote type="cite">
            <br>
            Regards,
            <br>
            <br>
            Luis
            <br>
            <br>
            <br>
            <br>
            <a class="moz-txt-link-freetext" href="File:RidgeRun.ai">File:RidgeRun.ai</a> banner.png <a class="moz-txt-link-rfc2396E" href="https://ridgerun.ai/">&lt;https://ridgerun.ai/&gt;</a>
            <br>
            This email and any attachments are intended for the sole use
            of the named recipient(s) and contain(s) confidential
            information that may be proprietary, privileged, or
            copyrighted under applicable law. If you are not the
            intended recipient, do not read, copy, or forward this email
            message or any attachments, delete this email message and
            any attachments immediately.
            <br>
            <br>
            <br>
            <br>
          </blockquote>
          <br>
          --&nbsp;<br>
          # Randy MacLeod
          <br>
          # Wind River Linux
          <br>
          <br>
        </blockquote>
        <br>
        <br>
      </blockquote>
      <br>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre wrap="" class="moz-quote-pre">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#66668): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/66668">https://lists.yoctoproject.org/g/yocto/message/66668</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/120272854/3616765">https://lists.yoctoproject.org/mt/120272854/3616765</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------IaP3JtqQmWDFtK2oxpD0P3q0--

