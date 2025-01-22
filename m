Return-Path: <hongxu.jia@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E914C02182
	for <webhook@archiver.kernel.org>; Wed, 22 Jan 2025 03:02:27 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.34177.1737514942018868343
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2025 19:02:22 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=31178f137b=hongxu.jia@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50M26eWl017794;
	Wed, 22 Jan 2025 03:02:12 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2175.outbound.protection.outlook.com [104.47.55.175])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 44aqk3g1d9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 22 Jan 2025 03:02:12 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CrexoxdWPKBGLORuqRqp45rB8iGxW+zetuEe5lxdD5N722H8B1LSzSv7X6CQ2bWvTipoLNrcQJ1F+B8WhxOsBXE/nJMgGjGhbuMZwOs0bcpIHiJfmrUZemX6KMK65a7p6qSxyt9Sr2wxKjWxXN4yr8NTjiElahYddziB2fI9X79JUjbdUB3yZJJbnnYTBHhVZEJ7AW7HxGjGmzWww8OlU4hVLdMq+BJwuQqkJsUDTa3dYnmQayyWOZsrgINJbjXi+r4Xtx4cN27+xvahvyVZMb11DfdotkWtt4TkVZYXscpQr8FJCmcUheeTMGBkxK7BoH1Dd4q34liaJfYos/MEXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jEzK5qihLUjNiukRfEJUJB5qZ8yxdpXVgIaNZZ+qp5s=;
 b=mHDXbx2aJFSr1CPOiDZm5et5VkDhwpXqwTzH56CJM31rtamO5vj75hPFcfMY4G2vaZat8Nu2ikN+zvhHNQ5kdeDkxvzO71497pExy0RKNI1ZnBV1z172UDQkHORrnEVPjVg4x9c2ExhNCGjnA2L2c5SV3w9rA5IxwTPrdL0j1TuMfz7k7hCUQh4gFFWSgFAhzdTaU+AUBoT/I2M2149UPF845i92oW9lgAWMzDzanoVjVroJ6Qn16T+bcuBiRdoKHoyxskG+2IL8bbEhVgJX+9JCe4MCsNsM/PHbdqq2mdz3kP2W1gvSNYVeIa51HoN3y1LgW8zpd4TlINVcSRxvuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from PH7PR11MB7608.namprd11.prod.outlook.com (2603:10b6:510:269::20)
 by PH0PR11MB5950.namprd11.prod.outlook.com (2603:10b6:510:14f::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Wed, 22 Jan
 2025 03:02:09 +0000
Received: from PH7PR11MB7608.namprd11.prod.outlook.com
 ([fe80::ef64:bc9f:eb8c:e6e]) by PH7PR11MB7608.namprd11.prod.outlook.com
 ([fe80::ef64:bc9f:eb8c:e6e%2]) with mapi id 15.20.8356.017; Wed, 22 Jan 2025
 03:02:09 +0000
Content-Type: multipart/alternative;
 boundary="------------LdcouWWHlr0yHkrMjyTUG5PZ"
Message-ID: <94123028-002b-43d6-bf3d-6aa9d67899ae@windriver.com>
Date: Wed, 22 Jan 2025 11:02:02 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [meta-tensorflow] Request for creating a scarthgap branch
To: "Shilwant, Chirag" <c-shilwant@ti.com>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: "Khasim, Syed Mohammed" <khasim@ti.com>, "Davis, Andrew" <afd@ti.com>,
        "Singh, Vishnu" <v-singh1@ti.com>,
        "Qi.Chen@windriver.com" <Qi.Chen@windriver.com>,
        "jiahongxujia@163.com" <jiahongxujia@163.com>
References: <99f187fb3f1e40cc80e43852257f17f2@ti.com>
 <f7e63aa3c45e452e83b6e3f95ab20faa@ti.com>
Content-Language: en-US
From: Hongxu Jia <hongxu.jia@windriver.com>
In-Reply-To: <f7e63aa3c45e452e83b6e3f95ab20faa@ti.com>
X-ClientProxiedBy: TYCPR01CA0178.jpnprd01.prod.outlook.com
 (2603:1096:400:2b2::19) To PH7PR11MB7608.namprd11.prod.outlook.com
 (2603:10b6:510:269::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7608:EE_|PH0PR11MB5950:EE_
X-MS-Office365-Filtering-Correlation-Id: b0d2d33f-675b-4809-8ac6-08dd3a91292d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|376014|366016|13003099007|8096899003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Q3hsLzFoNSs4NWZ4MVhtVjVtZ2kzNzNGcmlOM2xaOHJSRVlWa2lZWWk2eXNU?=
 =?utf-8?B?dFJrZXc0cnp1RitOM2ljVTIyaVBueHNXN3JGckl0dEVFdmZtZlpMSjVsRVd0?=
 =?utf-8?B?OEZSbGxmd2Q5TldlN09XTFBXQTEyTkhxbTUwbjRkSFNwNXIva3ZBNkw1Y2VO?=
 =?utf-8?B?aUF3S2ZmR28zZ2s1QTlBamhtSlZXdDRmMEVvU2dqVmJSYkdvM0lrdU9HTUw4?=
 =?utf-8?B?VHMvOU5iOFdDZWtYeUZzc3gyS25IMjFYMlFnMzRWUW84ZGtwcXlESUtaRUVL?=
 =?utf-8?B?NU1qSG9ZYkthRkpMVkVzMW1VUVh1MUV0R1N4YjNjZ0toUksyUVFkOHdLTW92?=
 =?utf-8?B?NGVpZkN4ZmgvNU9UVnZDZ1ZXWjVVamlXMGRhRU9zK1RMbmg2aWFtSkdwTmxq?=
 =?utf-8?B?WXcyc2JRb1ZiV0JiVDdNR3JQNHIwUnppL1Q2VVB4eVVMdC95WHI3a3VGdmc1?=
 =?utf-8?B?QmRKcUVwVFJQaGNWWUtFMWRkWWNEOXFFak9qbDBsSVJyMTByVUVYaklCWjJm?=
 =?utf-8?B?SklNbEdZMGYvbEpCL0pGcWNPK0RETUgzVHhhU0lzejk0aXVuUnJ2SHFRUTA2?=
 =?utf-8?B?S1REWjFDalVXeFIzdlNQa1ZhOVpXRWlKRHV4U1JqQlRQVG96YzNDU0pjb1E3?=
 =?utf-8?B?a0V3T3B0TU90N3dYMzFPZ3E4c1RPVzhndG5WZURRNWNjWWtmWCtvMGZSNFBu?=
 =?utf-8?B?M1BqcE5lQ0h5SGQwdjUyci92d0x2ejM4Ky9aeGhJSUdnaE5YOEs2YVFuR1Y4?=
 =?utf-8?B?REhpK0xiaHY3Mnp1eHhpY0tpek5IK05YNHVKUFNBRGJyQ2gwRTNzQTk0dXM0?=
 =?utf-8?B?b0lRUStzNDdQamJyUXVKQWplUHVuZ0N4VUhsZ1BkeWRFejQ5Nk0rMExPMCtX?=
 =?utf-8?B?YWlpNGNvUFRGSDFreVFGbUQzZU9tZ3BRL2ZwWlZhTTA1NUpNa2NUR1kyQXpO?=
 =?utf-8?B?bEVuQjF5NkFwaVNhRE1wWG15ZlVSMHkxMlREYTBmODMwNmNqWVBDWkNQUVdH?=
 =?utf-8?B?UEp1QXl2T1ZiMG9zdTZYY3NpeXdpeGU4VFJ3ZlgzMlVmZ2FQWm5VZ0J4TFJI?=
 =?utf-8?B?WDJVZ2RqaVpVWlJYTTNjVy8yTis1bFJRT1VQYVI4eXdwVlQ1Vk5Rdi9kZllp?=
 =?utf-8?B?RUxSa25FWGFqeHErbGU4SHdjcUlHU3J5b3VITHdNYmMrMEhhUXFSYm13aTJQ?=
 =?utf-8?B?K1ZSM210QS9IY0VqME80anZoL1VsQnYweGFUNkNlSHovRWhEZVJCSmdraUhh?=
 =?utf-8?B?RHU4M2NzQ3JzOXhubENkZ0h4UUhHR3FiQVUxcHFHK24wZGtJV3pPb3ZhOEFr?=
 =?utf-8?B?WWNjM1VxRzB2bmxUZVZtRTZGRUZwN25KL01TNDJ5MmxUWFNyWDhRejI2T3lu?=
 =?utf-8?B?WnlFelFyNWZxQWVpR2tlNXpPRWMrdko3ZTR3QStTY2VxbjZmOEN1UjJlRUR0?=
 =?utf-8?B?dGhRR2RubzJjZ0pCQnh1OEp6ZTJWUUxLRVEvb0Fwa2dXd1ozTk0yVGVFT2dW?=
 =?utf-8?B?UkZUVUp6dWxSaG5rRXFIcDMxeERSWldkVUhKbktiV1VnN2h3d01XWVFSUkNZ?=
 =?utf-8?B?M2E4em1HQWJuTG1KcEZnWENMV3c5L1hhajlkb1hiQ1BYbDZLTnltaXZEb1RN?=
 =?utf-8?B?cnF5NTJJSElwa1JTKzIrWGNuQ3N1aWJ5L0JoeksrclpZV2twbTZ5cHFKeTNM?=
 =?utf-8?B?Q2twWHRUTldiV1Y1TEVWZGdxeG1HSW9qOFovN3Y1M0Z6bGRDY3A2bW9kQUVW?=
 =?utf-8?B?ZlovRnZyY0NhTXdOZE1zVkFwbTdHSkJXQ1liT3RZS1hUZm1kUFNuckNoZUQr?=
 =?utf-8?B?SGFIeVlzLytRNlJGN0FYUT09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR11MB7608.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(13003099007)(8096899003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?b0JZZC9kT3lOaDRtNGdLallxdkRwdUVheHhZQkpPOWFpQnBpZE94Q2Y0MGdQ?=
 =?utf-8?B?N1dvKzNmNEcxRHgyS29HbGtJRWdsTkR4UmJuYWZZanEwd0xkS3ova1pqN0x4?=
 =?utf-8?B?VEFYRkNSbFVZU3JNNVROSTQ5SmlnS3Z5ZEdMOUlJNm02VXVaaCtYQjJmRkli?=
 =?utf-8?B?NHFBTHJhd29MQ3U2T1Zzd3h5cFZjT3NSQklyOHJKNjdXYzdIaUFSTEI5K2E4?=
 =?utf-8?B?VlV0d0RnVjhwakJHNVprMUpOR0RDdEVyMFdKZzNzQmZjdldESElJaVdadkVy?=
 =?utf-8?B?c21JUnVYYzJoMktIbzFkenVNSUZnSnNYN3IvcG1WUFF6TW85ZTZpbXAvc3da?=
 =?utf-8?B?dWRFZXBTaWRDSWZGQTU0NzZKaVpieGtUNWJSdWxTNUU0Rjh6citxQTNpSzZM?=
 =?utf-8?B?Y0JBdlZFYTkya01VQmlLblhQbDRKNkwvRmFublUvYjJrK2htR1MvdDhTQ2o5?=
 =?utf-8?B?OWM2K21LRlhmYkUwemZmY3VCY2ZJbFp5UUhKcmRGaDQ2eFlJL0w2azFLUFEw?=
 =?utf-8?B?REl6cEUvRCtUWmNJZCt3c0x3Ni9ZNWdBaDVyT1MzWXRxQ1E5YloyUlpldHBs?=
 =?utf-8?B?SGtJd3hyeGt0QnpPRWNZa1NTVzZadHYxMjNFdmZsTjRETzhjcTVzeEFBT1Za?=
 =?utf-8?B?cUNFcGhTSnhYQ0RXWDVZbkhrTlFhQnViWlhJZGVKOWVGekdhSStHSnlmVVJo?=
 =?utf-8?B?QnNhZ1YwQTFJMTdmc3AySk5PQWtLdnhkcFlCdUNWbXFqYkFhM29JeGcraFJN?=
 =?utf-8?B?K1ZoUDQ3NXZOcVdCUWxUQnEreGYrOGJiVHN1dGo0R2RvRFhOdEU5L3FDaC9l?=
 =?utf-8?B?R01RZ1dlVVJicnc1NlhDdjVNc2tCQ0FZRUZ3U0VoYlN1Rit3bEl4eU5TMUd1?=
 =?utf-8?B?dHU0dFlvWXNoQkt3MFU2dGJrUXBlbWtHRWdjY082QWVvVVRuWG5mcS8rc0J5?=
 =?utf-8?B?UXlaT2hSZm5lRjBCQmFkYnJLYjFiSGJPMmgwWEdock9jRXRvUGI2QWdVMGFk?=
 =?utf-8?B?Sm5EM3FUcmw2bmRFQmMzVVpzN3c1WkkwWWF1a0M2ZWxSRmtFV2ZJRUVqVVBD?=
 =?utf-8?B?cmx0NHorRnlWY3JhS0trd0NnZERuc1VyVnNYQ0xPVUVldzVRaTVpclNjVFgw?=
 =?utf-8?B?ZnROdHQ1emdhVUdsYVdKeTcvQWI0RW5PN3pZTnAybnJEVjlVRGNsbkRHOSti?=
 =?utf-8?B?NGxWWm9HZzgvaExOZHZIQjVhdDhtTTByNU1xUGNZY3pVMzl2dnMyYlI5WHpa?=
 =?utf-8?B?ei8wQ0VydklaalRuQzRXM2tEYUhhQVFmd2RIbGkrR0x5dkwvSHcvVzNBOHhy?=
 =?utf-8?B?Z1NoVnczMjlnV1ZYeXo1aEZPT1g1QlpONFFwa1JJbXV6NjEvcWVkYkkvTVRP?=
 =?utf-8?B?UWJlbThQUnBrZzJvYXNZS1JSU01penFFeHl3WW1NaTI2NHBDQ21kVlY1VzZY?=
 =?utf-8?B?ZWZ0c2h2OHF5NUxrTXBTMDVzbWhKZ3djSEF5ekxqcDJVQjJMWmxLdE5JZ2c5?=
 =?utf-8?B?a2FWYU8xNWl1ZWluWVRURzhzdzNSbnhGQThjWi81MnVrT1lEMTZkQVd6NmUv?=
 =?utf-8?B?MDNHRGsvc3cyWE9yVFg5SFcyUTRlN1d6bTRLQ0JYU01TenFYNlAxalV1U2J1?=
 =?utf-8?B?ZXVzQ2hPY3lyWmNYM1M0YVl1YVhaeXA4SmlzZjZtcEMwOWovTzJ4WG9VYm12?=
 =?utf-8?B?RjlTZzhJMFZjUHdRZXhXNlpSc0JMVnpFZERsWm04WFBIamxPUG5DRVFGLzFU?=
 =?utf-8?B?UDhYMkcyVmpja0ZYUzZXUWtrZCtXN3plZTVGdURCUHRpRUhMSHFtY3JDQW91?=
 =?utf-8?B?ZlNjeCtvQjRSeXZrYXBDbUdJRXBVOVB3bmcyVndTcTVYYklkd0VrYzBzYXQr?=
 =?utf-8?B?dHg1TWNTR2VWbXQ1WDV4RHFIdjh5RkhRdkNaQmdjUE4vb1A1Ym9mejEwTlBH?=
 =?utf-8?B?bHZZK0lodFREOGQ3Q085T05YM1BFUFZMbk5lZkZ3QnRoRFBCM3BzSjA3UGox?=
 =?utf-8?B?L1E4bkhzbFNrUzB1dzZoRVgzNUErN2swL0xmelhVeHlGRjAvNk9XRENNbE1x?=
 =?utf-8?B?L2d1N2FPUGRHbG5oL2ZCazdqYnVSWHhxd2YxM2hLemJhOTVLNkhpOENwNFlz?=
 =?utf-8?B?ZlBhZnVnUTRGOVhIdG5zalBXZnMvTnVobUoyVFEyNW5QNW53TFFIaE1zNk5l?=
 =?utf-8?B?RVE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0d2d33f-675b-4809-8ac6-08dd3a91292d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7608.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2025 03:02:09.3740
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P9R9u9aG6GECt6J6yfdEO8Zdy5N74jHKhyz5bmTSby73pPd2NpBpduEeK2VU++mfgsZZdn07ZKoKR4eL8o/mudfmSKFhlX3aMVfbIFxFuDg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5950
X-Proofpoint-GUID: SOlde7D8jItQPLbHKXYSQl0nmqswSapF
X-Proofpoint-ORIG-GUID: SOlde7D8jItQPLbHKXYSQl0nmqswSapF
X-Authority-Analysis: v=2.4 cv=fZVXy1QF c=1 sm=1 tr=0 ts=67905fb4 cx=c_pps a=F+2k2gSOfOtDHduSTNWrfg==:117 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=VdSt8ZQiCzkA:10 a=bRTqI5nwn0kA:10 a=iGHA9ds3AAAA:8
 a=Q4-j1AaZAAAA:8 a=t7CeM3EgAAAA:8 a=Byx-y9mGAAAA:8 a=jCQTRHFRa1ZjAGMXw_wA:9 a=QEXdDO2ut3YA:10 a=sozttTNsAAAA:8 a=avHHCX2ZTCMeQAyhq8oA:9 a=JvpXSZ4wZ7lnvz46:21 a=frz4AuCg-hUA:10 a=_W_S_7VecoQA:10 a=lqcHg5cX4UMA:10 a=nM-MV4yxpKKO9kiQg6Ot:22
 a=9H3Qd4_ONW2Ztcrla5EB:22 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-22_01,2025-01-21_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=999 mlxscore=0 phishscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 clxscore=1011 impostorscore=0
 suspectscore=0 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.21.0-2411120000 definitions=main-2501220019
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Jan 2025 03:02:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64606

--------------LdcouWWHlr0yHkrMjyTUG5PZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/21/25 13:55, Shilwant, Chirag wrote:
> **
> *CAUTION: This email comes from a non Wind River email account!*
> Do not click links or open attachments unless you recognize the sender 
> and know the content is safe.
>
> + Yocto Community
>
> ------------------------------------------------------------------------
> *From:* Shilwant, Chirag
> *Sent:* 21 January 2025 11:21:37
> *To:* yocto@yoctoproject.org; Qi.Chen@windriver.com; 
> hongxu.jia@windriver.com; jiahongxujia@163.com
> *Cc:* Khasim, Syed Mohammed; Davis, Andrew; Singh, Vishnu; Shilwant, 
> Chirag
> *Subject:* [meta-tensorflow] Request for creating a scarthgap branch
>
> Hi meta-tensorflow maintainers,
>
>
> I am reaching out to request the creation of a new branch in the 
> meta-tensorflow
> repository to support yocto scarthgap.
>
> Currently, the master branch claims to support both scarthgap and 
> styhead [1] which
> is no longer accurate. Recent changes related to UNPACKDIR [2], which 
> are only applicable
> to styhead, were made in the meta-tensorflow layer [3]. As a result, 
> the master branch is now
> incompatible with scarthgap.
>
> To ensure that scarthgap users can continue to use the meta-tensorflow 
> layer, I kindly request
> that a new branch be created to support the same. This will allow us 
> to maintain a separate code-base
> for scarthgap, unaffected by the styhead specific changes.
>
Done, branch scarthgap is created


https://git.yoctoproject.org/meta-tensorflow/log/?h=scarthgap


//Hongxu

> Regards,
> Chirag
> ---
>
> [1]: 
> https://git.yoctoproject.org/meta-tensorflow/tree/conf/layer.conf#n14 
> <https://urldefense.com/v3/__https://git.yoctoproject.org/meta-tensorflow/tree/conf/layer.conf*n14__;Iw!!AjveYdw8EvQ!cjgw84dwnF7LC-08LAFhBS9kboWgzPHQPbnm0evagm0UUQp-UEzvwO5BPFCLN0BaFe_clAU6VdfMhmm-Du6t$>
>
> [2]: 
> https://git.openembedded.org/openembedded-core/commit/?id=e022d62ba917790af2121da57646271ef17c03fa 
> <https://urldefense.com/v3/__https://git.openembedded.org/openembedded-core/commit/?id=e022d62ba917790af2121da57646271ef17c03fa__;!!AjveYdw8EvQ!cjgw84dwnF7LC-08LAFhBS9kboWgzPHQPbnm0evagm0UUQp-UEzvwO5BPFCLN0BaFe_clAU6VdfMhqRWsVDE$>
>
> [3]: 
> https://git.yoctoproject.org/meta-tensorflow/commit/?id=2f82dc8383436b68a22e2ee93d697167fee15ab6 
> <https://urldefense.com/v3/__https://git.yoctoproject.org/meta-tensorflow/commit/?id=2f82dc8383436b68a22e2ee93d697167fee15ab6__;!!AjveYdw8EvQ!cjgw84dwnF7LC-08LAFhBS9kboWgzPHQPbnm0evagm0UUQp-UEzvwO5BPFCLN0BaFe_clAU6VdfMhie11cgm$>


--------------LdcouWWHlr0yHkrMjyTUG5PZ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 1/21/25 13:55, Shilwant, Chirag
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:f7e63aa3c45e452e83b6e3f95ab20faa@ti.com">
      
      <style type="text/css" style="display:none;">P {margin-top:0;margin-bottom:0;}</style>
      <strong>
      </strong>
      <div style="border:solid #9c6500 1pt;padding:2pt;background:#fcfc03"><strong><class="msonormal" style="line-height:11pt"><span style="font-size:11pt;color:#000">CAUTION: This email
              comes from a non Wind River email account!</span></class="msonormal"></strong><br>
        <class="msonormal" style="line-height:10pt3"><span style="font-size:10pt;color:#000">Do not click links or open
            attachments unless you recognize the sender and know the
            content is safe.</span><br>
        </class="msonormal"></div>
      <div>
        <style type="text/css" style="display:none;">P {margin-top:0;margin-bottom:0;}</style>
        <div id="divtagdefaultwrapper" style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;" dir="ltr">
          <p>+ <span>Yocto Community</span><br>
          </p>
        </div>
        <hr style="display:inline-block;width:98%" tabindex="-1">
        <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt" face="Calibri, sans-serif" color="#000000"><b>From:</b>
            Shilwant, Chirag<br>
            <b>Sent:</b> 21 January 2025 11:21:37<br>
            <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>; <a class="moz-txt-link-abbreviated" href="mailto:Qi.Chen@windriver.com">Qi.Chen@windriver.com</a>;
            <a class="moz-txt-link-abbreviated" href="mailto:hongxu.jia@windriver.com">hongxu.jia@windriver.com</a>; <a class="moz-txt-link-abbreviated" href="mailto:jiahongxujia@163.com">jiahongxujia@163.com</a><br>
            <b>Cc:</b> Khasim, Syed Mohammed; Davis, Andrew; Singh,
            Vishnu; Shilwant, Chirag<br>
            <b>Subject:</b> [meta-tensorflow] Request for creating a
            scarthgap branch</font>
          <div>&nbsp;</div>
        </div>
        <div>
          <div id="divtagdefaultwrapper" dir="ltr" style="font-size: 12pt; color: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
            <p>Hi meta-tensorflow maintainers,<br>
            </p>
            <p><br>
            </p>
            <div>I am reaching out to request the creation of a new
              branch in the meta-tensorflow<br>
              repository to support yocto scarthgap.<br>
              <br>
              Currently, the master branch claims to support both
              scarthgap and styhead [1] which<br>
              is no longer accurate. Recent changes related to UNPACKDIR
              [2], which are only applicable<br>
              to styhead, were made in the meta-tensorflow layer [3]. As
              a result, the master branch is now<br>
              incompatible with scarthgap.<br>
              <br>
              To ensure that scarthgap users can continue to use the
              meta-tensorflow layer, I kindly request<br>
              that a new branch be created to support the same. This
              will allow us to maintain a separate code-base<br>
              for scarthgap, unaffected by the styhead specific changes.<br>
            </div>
            <br>
          </div>
        </div>
      </div>
    </blockquote>
    <p>Done, branch scarthgap is created<br>
    </p>
    <p><br>
    </p>
    <p><a class="moz-txt-link-freetext" href="https://git.yoctoproject.org/meta-tensorflow/log/?h=scarthgap">https://git.yoctoproject.org/meta-tensorflow/log/?h=scarthgap</a><br>
    </p>
    <p><br>
    </p>
    <p>//Hongxu<br>
    </p>
    <blockquote type="cite" cite="mid:f7e63aa3c45e452e83b6e3f95ab20faa@ti.com">
      <div>
        <div>
          <div id="divtagdefaultwrapper" dir="ltr" style="font-size: 12pt; color: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
            Regards,<br>
            Chirag<br>
            ---<br>
            <br>
            <div>[1]: <a href="https://urldefense.com/v3/__https://git.yoctoproject.org/meta-tensorflow/tree/conf/layer.conf*n14__;Iw!!AjveYdw8EvQ!cjgw84dwnF7LC-08LAFhBS9kboWgzPHQPbnm0evagm0UUQp-UEzvwO5BPFCLN0BaFe_clAU6VdfMhmm-Du6t$" class="OWAAutoLink" moz-do-not-send="true">
https://git.yoctoproject.org/meta-tensorflow/tree/conf/layer.conf#n14</a><br>
              <br>
              [2]: <a href="https://urldefense.com/v3/__https://git.openembedded.org/openembedded-core/commit/?id=e022d62ba917790af2121da57646271ef17c03fa__;!!AjveYdw8EvQ!cjgw84dwnF7LC-08LAFhBS9kboWgzPHQPbnm0evagm0UUQp-UEzvwO5BPFCLN0BaFe_clAU6VdfMhqRWsVDE$" class="OWAAutoLink" moz-do-not-send="true">
https://git.openembedded.org/openembedded-core/commit/?id=e022d62ba917790af2121da57646271ef17c03fa</a><br>
              <br>
              [3]: <a href="https://urldefense.com/v3/__https://git.yoctoproject.org/meta-tensorflow/commit/?id=2f82dc8383436b68a22e2ee93d697167fee15ab6__;!!AjveYdw8EvQ!cjgw84dwnF7LC-08LAFhBS9kboWgzPHQPbnm0evagm0UUQp-UEzvwO5BPFCLN0BaFe_clAU6VdfMhie11cgm$" class="OWAAutoLink" id="LPlnk605915" moz-do-not-send="true">
https://git.yoctoproject.org/meta-tensorflow/commit/?id=2f82dc8383436b68a22e2ee93d697167fee15ab6</a><br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------LdcouWWHlr0yHkrMjyTUG5PZ--

