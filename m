Return-Path: <hongxu.jia@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C28ECAC594
	for <webhook@archiver.kernel.org>; Mon, 15 Sep 2025 07:23:25 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.26810.1757920999652853716
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Sep 2025 00:23:19 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=atdGdYpJ;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=13531ce467=hongxu.jia@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 58F5UhMc157938;
	Mon, 15 Sep 2025 00:23:18 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=PPS06212021; bh=LQMxRjNNa+H9TTz8jMmKEJ
	DbNAM6ZxXit40V3J1Qmxw=; b=atdGdYpJI2Tqvyut+0ncF3HNsTo2M5uwGrLTuX
	ZzmASlYFzugFux023Fm8Pv7rL3m5ELzzxok+7xCSA/S465N49V/6FG9Z0tsqW/ke
	IBkEu8pMuv+Xg/CFSf3kqAkDBnySvzxedcocUtK6vfmZY6D7iZyU7KOZFJy//Rad
	Rb1i18bQPFT2TJk+/q9o6IOxSCVMEMtlucobIJj5v8f1XrsOSEv8s7zy+5oeCrJA
	B1HeDr5BNd7iQNuG3g/xN1hzcXbiBmdP3ZJiBWbUH6VNV1tJKJ49hQHAy2lQxEcJ
	zXJZbi+OOwoY7EzNxyGNDeVxZyNZUrTyf266cfaKeTqKKoAg==
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11on2057.outbound.protection.outlook.com [40.107.236.57])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4953w29kgy-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 15 Sep 2025 00:23:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PS52ZqJHD0NIcMvvWSlJygxKHiB9xuxYBDWUFYSNuVYzis9W8hOm7KhU/6eT/+UigImC7got3ORmIhs/BlhqPuJMmdsp+dgqVL9umBRxVn67OCybrC5bl3PJagP9cN5ZSH6k14KXK0setL98Zne7P9yyw3ZeeTzUzWAVhbNuBLgHxnibdX0tqmUfEiAHxgSUvczM+kDbNN7bewvJ7gzJ9+DJPMTY0tafURZegxliya7Rm4bMVfCewJ57fg4LOXVefm6Y1KaxmtV/DdkznKidIXCO5VtEL3FbC5zv8Y1Z0pit6guPEyxpEEM7yKfNa3VFsuaoWAxh1RrhSiRdltQhmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LQMxRjNNa+H9TTz8jMmKEJDbNAM6ZxXit40V3J1Qmxw=;
 b=ubocSnW7T/HYvN4Uh3rZCABUioYvGvpqVvL2acUU1nTyNnYshZM0Lzlj/BCcUbm4PAUj7zfKU908jbTnGpkbbNhcDDOFREOyW925wHlq7DDUpgabdV+xy9t6bmTJ3d8ehEIOhPqDHQXeuCNMFfWiFGDneLHaS65AeWVPeP2Jqt3UoW1Pmm1Bnpqd9blDh+YiukakmoO6/XlJmhGMtG8rWLhPCHxXgYZq1EpB7pzuU7CUPhwd1ER+L/kTWQ5gLfzU6h32FQ9BBRs3kv7gm5GZY9QB+rA1Y/PBx3YDvOLl75TY02N885GyumKIXq0vJmJlaoSB/UpvNRji+cMi1Mx8hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from PH7PR11MB7608.namprd11.prod.outlook.com (2603:10b6:510:269::20)
 by CY8PR11MB7267.namprd11.prod.outlook.com (2603:10b6:930:9a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Mon, 15 Sep
 2025 07:23:14 +0000
Received: from PH7PR11MB7608.namprd11.prod.outlook.com
 ([fe80::ef64:bc9f:eb8c:e6e]) by PH7PR11MB7608.namprd11.prod.outlook.com
 ([fe80::ef64:bc9f:eb8c:e6e%5]) with mapi id 15.20.9115.018; Mon, 15 Sep 2025
 07:23:14 +0000
Content-Type: multipart/alternative;
 boundary="------------ezRPFRZ97PipQI6VK5ydWwPE"
Message-ID: <56787a14-f34a-466d-b238-fe18058256b0@windriver.com>
Date: Mon, 15 Sep 2025 15:23:23 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] do_package error after building meta-tensorflow and
 libcamera-apps does not detect tensorflow-lite
To: yocto@lists.yoctoproject.org, ashish.shrikhande@gmail.com
References: <LJfP.1757735839241326130.SYL3@lists.yoctoproject.org>
Content-Language: en-US
From: Hongxu Jia <hongxu.jia@windriver.com>
In-Reply-To: <LJfP.1757735839241326130.SYL3@lists.yoctoproject.org>
X-ClientProxiedBy: TYCP301CA0034.JPNP301.PROD.OUTLOOK.COM
 (2603:1096:400:380::14) To PH7PR11MB7608.namprd11.prod.outlook.com
 (2603:10b6:510:269::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7608:EE_|CY8PR11MB7267:EE_
X-MS-Office365-Filtering-Correlation-Id: d4a3ce60-ff2e-47d0-12da-08ddf428bbfe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|1800799024|4022899009|366016|13003099007|8096899003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?N1NvYTMyeXpSdE4wejRMRW41VGM3bkJ2NHh3TWNqWnRma3hlcTNsZFJwZlJq?=
 =?utf-8?B?YWJrWVd1TDJGL1NGRzdCeGd0YXlwTXY1Q3lLMDVjaEN5ODJaM0dSZ2hBTGha?=
 =?utf-8?B?aWNwV0J6SGw2RlRQOG5DaHhpVkZXMGQxcVJQMjNaT2hYV2tlaWliV0JLbEpt?=
 =?utf-8?B?VGNTekZxc0prWEMzN3NLd0E1VGJ0VlN1YkF2WmFLQlpVd0EzMk84SklDYVlI?=
 =?utf-8?B?V1VKdWF3dXpyVTNVTWQ5c1UzcG5vWlBuVXVkeGNnTTBUcTB4WkgvYXJZRzVo?=
 =?utf-8?B?RDhGWDdmZXJRK1k0Z3pDUUZyQWNiUjdQSFR0VVRaTlRCMVVadGJUUWJWTktm?=
 =?utf-8?B?bUo0L0dTUEdpcXRwR0ExVmwycHNIdnc3cStVOGVBTlJBMFA0SFRCNkxydlIr?=
 =?utf-8?B?QTc0M0xUMUNnRVQ5cFFkeThTcEQrdHd4VVljWEJNZWhGdy9ZSUtoaVJuVFBJ?=
 =?utf-8?B?dGoxQTdsRW9mbVUzcnVuTzZld2QwZkxud0ZScjFWZTZSSEw4YkloQTB2VWNJ?=
 =?utf-8?B?Ykw0KzdkZjVNbmkwWjJQS0M4WENQaGtpQ05LU3BOZ0d5ZTR3OWcyRkUxVnlw?=
 =?utf-8?B?cnorc256WEVHZzh6MHZRbDZGVE80RzY4VFRDUEdaSm5sQm05VXZacUJEeUg2?=
 =?utf-8?B?SUpUSWx1dFYySDBwS1cySlRsNngyTjhZejQ3RkhTYytjV3Zzb0U3ZDJXMkpp?=
 =?utf-8?B?ZDdIUC91NXlwTEhHR0p1aEJ4eDdmcGdUVS90OG1mQnVUdVZyNWhmY0hzOXlI?=
 =?utf-8?B?S0prNnVLcVJVUG5VejFtRGVHT1V2MXFpNmI4cWRuaks0MSthUk45Vkg2V1VF?=
 =?utf-8?B?alNoS3dSdXMzQlZNVmU0UVFQTHBMcy9qakJLV0tOVXNGQkFwTjZrY1djT3dE?=
 =?utf-8?B?cVhLL2x6RUJoME1XSXZra3VsdTZ5cEtLVlhmNjJiMXVlaVBoTFg3d0FCbm1J?=
 =?utf-8?B?L2FSU1ZWbTlVTWRQVklIQno4VlFrWnVydC9TUHh2dDJFTGU2a3cyTmdCYzhr?=
 =?utf-8?B?STI2MXdDU3JkRDg3ZTladmUyL000V3I5TkxaNVVhc2ozOW9YY044UjV2RmNZ?=
 =?utf-8?B?S1ZlUFpZb3c4eWg0N3lWdlc5anEyYXF1NDAvVWdVQk93Y0dJeHYvTmdvR1gy?=
 =?utf-8?B?ZytuVGpjTm03dzJuZWRmU2RxcXhud2MwTHRlOWtXV1UyanRBK1dBOUVWUjM3?=
 =?utf-8?B?Z2VxWjE0KzN5SGxxaUxaMjJvQWpTdmVkbm5sUjN2ZWVOQ2llYTZBbDNOQmpI?=
 =?utf-8?B?WHIxbG5ITHdsTmdSamRYM1U5VW5OYU1JdGVTQXFjdnNEbGdVR28vbGhBdTFZ?=
 =?utf-8?B?YlNBNUhCSlBSSnRrNjM3ZGpLU1l2VVF3dkwxZFFIVUJqVk9jVWhxYS9DK1lh?=
 =?utf-8?B?VVdabFhkRGRCTis0WGMyRmpqMkxHTnMwUTVLUkFYUlJoMnpRUU9aWENqRTRt?=
 =?utf-8?B?WHJwemIyQXhGYnN3RU15aHJZY0dVMEsrRHJ2Zi9SbEFGdjFHL0lJNHZNeldG?=
 =?utf-8?B?UElnTk9ZTkJ3bnpQZXBxM1BwTTcxNERyeEVmenl0SzhIZ1VyUVNwVW1aVWd5?=
 =?utf-8?B?Vmo2eHRiZlA3Zk5XUjd1aWpJNDRLSjJqNVVBNnI1bXdSQ1dyNWd1YlpCQ2U4?=
 =?utf-8?B?QVUwQ0lkV2xiamlHUVlrRi81TXZocVFFa05yWTMvUlkyUEVkVUg4SXNIU0hD?=
 =?utf-8?B?UTAwbkhmMkhwRlhpMmR6VU03UU1MRjMzelNDTEdyZG45MVowczB0R0IxMXpJ?=
 =?utf-8?B?UElHakl2WThLd2ZGTTU3SWVDR2hTcHIzd1BtNVE1TE1iRXdEQ0FCWnVWMFZW?=
 =?utf-8?Q?2P1mq6DzP7aLvvm8tGBfY4b0rV7Mj2V6/qobw=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR11MB7608.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(4022899009)(366016)(13003099007)(8096899003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UXNra25vTDBTUVVUcWFSaCt6QjhNUjBLaGJ1eG9wd25KRFJrMUp3WTdIR3hB?=
 =?utf-8?B?aEJlOEZNblluMzBhZTJlVUJtNXpaaXR1R1lTbDQxMmRrejBkLzVuSFJESDhK?=
 =?utf-8?B?YWNiVHlTRkZPQUV3M3JtZ2twby93Y09TclE4TEVieGpUSGpvSUVYVW9MQVl3?=
 =?utf-8?B?OGw2cXBPN2ZiMDM3ZElhT2F0MndleWQ0ekNFRmw2K2lRQ0tmbm85T29sUjBh?=
 =?utf-8?B?K3RkTWpQYkk0WkR2NHpRVDNMNzE2d3ZWTzcyRjRLS09rVEJlby9ETHU1Ryt0?=
 =?utf-8?B?QUpYZjdpVjFCYXhhTVBQQWlScUoxOXYwcEpkdTAraTBBdnZvUUNyYlNpWERa?=
 =?utf-8?B?cDE3b0pMczBpTkRFZjhya0NHM1FBK1Vvd3Awa1pkQWNJbmdZVmtlc3N0MW9D?=
 =?utf-8?B?UnJDdnBycVpqcjZMNFB1a3VWakQyL0w1MXp3Z1ZnaDZTRzFteVhBNDR4NjRp?=
 =?utf-8?B?YWp4YVFHTEFxRGVQdWtvY3ZoTGhhRlJuR3RGelhJeDJCTy9TVlRMWC9hNFhJ?=
 =?utf-8?B?SHQwMzRYV2QvUWJCZHByb2FvWXVMM0JnVHhwc3NmOGI2Mk43ZDgrYVp0UC9I?=
 =?utf-8?B?YW4yZkdCV1laNWVnTVpZQ3FGc2pVenRITTU1V2lMRk9JM2Q3dG56ZnJDYTJB?=
 =?utf-8?B?T0Z5NndreWdrTGhyU1VwM0VQeFJ4YVhpSStrcHEyVUJEaTdUazVFNURvaVp4?=
 =?utf-8?B?Z3dsVjNtbzNlK2k0UkVPcEY4TUpPSnk2RGVHaWliNUlFbDZlWCsxZlhFaS95?=
 =?utf-8?B?cUs0aFlVM2crazNxK2czOEVNdTlVYitST2drQ3R0ZXlBMCtYOHlLM2FRLzZk?=
 =?utf-8?B?WkNtNHNnY0Irbjd1SkZUa3FiQ2IwSTlEK2sxMEM1Wi9tYjFJOU5zd3FmMFdH?=
 =?utf-8?B?djdxVGpFSkhOdEQ2cGF0bFpZYm9zVGRGdEV4ZThsNzB0Wi9weUErQ0FKdHQ4?=
 =?utf-8?B?cVBDT3lCajRwT2kyOVpWdUp2c1daVkE5ZDBvYnJ6aHVWSjJkSmZTRzVFcWdn?=
 =?utf-8?B?eWZiU2lJQ0RaN3JqWnZFRDNQSW5Ia0dQTVljVUh5dzJwOUVVN1JsbXFyZVVx?=
 =?utf-8?B?a3JsWWpmemo5UkNWc2NPeVQyQUh0bFhNSnJGYm40dFlCZmF3MHg0NDBHRDM2?=
 =?utf-8?B?eTZxR1pHcGE2RE5ld1ZSV2sxKy9YZk9IMUlNTjZtUlhOVC9pRUo1aG41bmpO?=
 =?utf-8?B?S2dsNDFoZEpzQndLSXcxc2ZKd0FlMWFSc042NGdiQ2pjNUJEd1p0QmQ1VXFB?=
 =?utf-8?B?UkJsdVVQNE5UaXVPWkNGd0Eyd2MxOU16VUFRT3Vld0VWMFllRnFzeXZ3Tkg3?=
 =?utf-8?B?RWtzRzlxRk1qeDNPU3U0UktITWZzUDhuci9oV01OenJtdUdnSjQ4NUx5RkhF?=
 =?utf-8?B?RGkzRDZQQ1YzUkc5NUlzWElUWFMxOWV0TkFsQ241RU93UTV5OHFocElxRnV3?=
 =?utf-8?B?eS9BVXJvbWN5dkFsQjk4TU1UNGdzQVI0eHE2a09xUzJqVSs0cmZFZzhPS21s?=
 =?utf-8?B?dklYOElzTzd4eUFNbXp2My8rb1V1OEhFdTlQc2pWYnl0YUhHREZFcWswa1Bj?=
 =?utf-8?B?Q2dZZll4WkxLRUhudUZ2a0xKUXNOWXZRUzNVZ2NoUExDNUNIWE83cStiYTFi?=
 =?utf-8?B?VzJxQTJJb1N6eElRd3pmajgvUlpVVElISHZ4MTYxaXJxNkVGRzlqeEt6TWt1?=
 =?utf-8?B?eVViYWxiTkJkVWorSmg1NGdFbjdUVXhDUmpJZXV0YVFnOTV4bFhjMXcxMFAr?=
 =?utf-8?B?RGRReEtzZ0xOQlkyekJQN3hzZmpGa1FMaHcxRXozbmpSSWlOdmE3VVVmZ1hK?=
 =?utf-8?B?V0RTRkNjaEF5WWdQS2hwRVNUZ0Zpb2ZOT01uSHhKSkdpekVVS2hzTVgzYk12?=
 =?utf-8?B?N0V6bWZIemdyS3hXN3B3Y1dzK0RMQjBJZThBb1l5di9lMDhPNEtlUFR4TnBx?=
 =?utf-8?B?NU16U0R6d1FpL3RuWTdSVk1nV3pHR3l5cE9LVTd4RWc4dkp1akhpL1dnb0Jj?=
 =?utf-8?B?dmNSL2RJeERNckJ6a3dZRGZkVTZYdnVXSUdWNzJ6L1RTSjJwZTJ6TzRCZnpB?=
 =?utf-8?B?QmJjeHRLem1yRkltNEFUNGFVdHRxRVZlUW5TRnZFa1BqWFlyMmVxT3FUTGo5?=
 =?utf-8?B?c25TY2M5MndHS00wK0k5ekNZTFEwVkdDQmVmMXZEL0kwQ3pRYUxLdEk0MU5x?=
 =?utf-8?B?U3c9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4a3ce60-ff2e-47d0-12da-08ddf428bbfe
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7608.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2025 07:23:14.7289
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zIEYikXRvfwcaYjoAQEIGwLyGaBE8cHjT+zcQ1M29HdRPOWf9YJ4sKMcytm1yUVbqnkRU8pwC+SqYeJIAk1EVk/aDwl2cjOB8A8gYdd8uv8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7267
X-Proofpoint-GUID: JGDqQX2tuIL9PymMC-R6l_5LDA7KuLiH
X-Proofpoint-ORIG-GUID: JGDqQX2tuIL9PymMC-R6l_5LDA7KuLiH
X-Authority-Analysis: v=2.4 cv=PuaTbxM3 c=1 sm=1 tr=0 ts=68c7bee6 cx=c_pps
 a=iHwpkFQr6pXPqst9nAN4sQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=yJojWOMRYYMA:10 a=iGHA9ds3AAAA:8 a=t7CeM3EgAAAA:8
 a=EQHkBj5_EdUiqORjqHkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=d4dSudgwAdWdD18usJ0A:9 a=KiPaLmRFz_-OpsWx:21 a=_W_S_7VecoQA:10
 a=lqcHg5cX4UMA:10 a=nM-MV4yxpKKO9kiQg6Ot:22 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA2OCBTYWx0ZWRfX2ALzi1KYD0s1
 OHJym0aGAEM32GKLysaNsRZeh+mxbjA8As/578La2znsF73kaxxD3bNDOhwrpp2p4XLQq6QED2s
 1q0KQDG6ef6064CmQPfrM8fg5dL3yWs3k12zNEJeJCdmhBchlkEri/SkdTgI2W442ck6FYkLaE1
 bunsyiDJptdBOEhtkgqblQkYN0SzMIOQRYk10MO0hHjqUOD3ojq7mPLyEf3N7bkm2VP+IetzwYq
 9uKDz4dLkNF7N/82YhRooMxoqrKg9hk41pe+c02P/Ak1s8/yZJI9I8xkUe9ibKilgO3SeB1i8/U
 hkFmLMFS+lMVUAR9EewiuMj4vAjA4L2AS9y+VtzTN1y3600Z2yNW1WyGa5Bb34=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_03,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0 clxscore=1011
 phishscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2507300000 definitions=firstrun
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Sep 2025 07:23:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65837

--------------ezRPFRZ97PipQI6VK5ydWwPE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64
X-MIME-Autoconverted: from 8bit to base64 by mx0a-0064b401.pphosted.com id 58F5UhMc157938

T24gOS8xMy8yNSAxMTo1NywgYXNoaXNoIHNocmlraGFuZGU2IHZpYSBsaXN0cy55b2N0b3By
b2plY3Qub3JnIHdyb3RlOg0KPiAqKg0KPiAqQ0FVVElPTjogVGhpcyBlbWFpbCBjb21lcyBm
cm9tIGEgbm9uIFdpbmQgUml2ZXIgZW1haWwgYWNjb3VudCEqDQo+IERvIG5vdCBjbGljayBs
aW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5b3UgcmVjb2duaXplIHRoZSBzZW5k
ZXIgDQo+IGFuZCBrbm93IHRoZSBjb250ZW50IGlzIHNhZmUuDQo+IEkgYW0gZmFjaW5nIHR3
byBpc3N1ZXMgaW4gYnVpbGRpbmcgbWV0YS10ZW5zb3JmbG93LiBJIGFtIHRyeWluZyB0byAN
Cj4gYnVpbGQgdGVuc29yZmxvdy1saXRlIGluIGxhdGVzdCBZb2N0byB3aGlubGF0dGVyIGZv
ciBSYXNwYmVycnlwaTUgdGFyZ2V0Lg0KPiBXaGVuIEkgZ2V0IHRyeSB0byBidWlsZCB0ZW5z
b3JmbG93LWxpdGUNCj4gSSBnZXQgYmVsb3cgZXJyb3I6DQo+ICoqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqDQo+IEVSUk9SOiB0ZW5zb3JmbG93LWxpdGUtMi4xOS4wLXIw
IGRvX3BhY2thZ2U6IEVycm9yIGV4ZWN1dGluZyBhIHB5dGhvbiANCj4gZnVuY3Rpb24gaW4g
ZXhlY19mdW5jX3B5dGhvbigpIGF1dG9nZW5lcmF0ZWQ6DQo+IFRoZSBzdGFjayB0cmFjZSBv
ZiBweXRob24gY2FsbHMgdGhhdCByZXN1bHRlZCBpbiB0aGlzIA0KPiBleGNlcHRpb24vZmFp
bHVyZSB3YXM6DQo+IEZpbGU6ICdleGVjX2Z1bmNfcHl0aG9uKCkgYXV0b2dlbmVyYXRlZCcs
IGxpbmVubzogMiwgZnVuY3Rpb246IDxtb2R1bGU+DQo+IMKgIMKgIMKgMDAwMToNCj4gwqAq
KiogMDAwMjpzc3RhdGVfcmVwb3J0X3VuaWhhc2goZCkNCj4gwqAgwqAgwqAwMDAzOg0KPiBG
aWxlOiANCj4gJy9ob21lL2FzaGlzaC9yYXNwYmVycnlwaTVfd2hpbmxhdGVyL3Bva3kvbWV0
YS9jbGFzc2VzLWdsb2JhbC9zc3RhdGUuYmJjbGFzcycsIA0KPiBsaW5lbm86IDkxNywgZnVu
Y3Rpb246IHNzdGF0ZV9yZXBvcnRfdW5paGFzaA0KPiDCoCDCoCDCoDA5MTM6IMKgIMKgcmVw
b3J0X3VuaWhhc2ggPSBnZXRhdHRyKGJiLnBhcnNlLnNpZ2dlbiwgDQo+ICdyZXBvcnRfdW5p
aGFzaCcsIE5vbmUpDQo+IMKgIMKgIMKgMDkxNDoNCj4gwqAgwqAgwqAwOTE1OiDCoCDCoGlm
IHJlcG9ydF91bmloYXNoOg0KPiDCoCDCoCDCoDA5MTY6IMKgIMKgIMKgIMKgc3MgPSBzc3Rh
dGVfc3RhdGVfZnJvbXZhcnMoZCkNCj4gwqAqKiogMDkxNzogwqAgwqAgwqAgwqByZXBvcnRf
dW5paGFzaChvcy5nZXRjd2QoKSwgc3NbJ3Rhc2snXSwgZCkNCj4gwqAgwqAgwqAwOTE4On0N
Cj4gwqAgwqAgwqAwOTE5Og0KPiDCoCDCoCDCoDA5MjA6Iw0KPiDCoCDCoCDCoDA5MjE6IyBT
aGVsbCBmdW5jdGlvbiB0byBkZWNvbXByZXNzIGFuZCBwcmVwYXJlIGEgcGFja2FnZSBmb3Ig
DQo+IGluc3RhbGxhdGlvbg0KPiBGaWxlOiANCj4gJy9ob21lL2FzaGlzaC9yYXNwYmVycnlw
aTVfd2hpbmxhdGVyL3Bva3kvYml0YmFrZS9saWIvYmIvc2lnZ2VuLnB5JywgDQo+IGxpbmVu
bzogNzg0LCBmdW5jdGlvbjogcmVwb3J0X3VuaWhhc2gNCj4gwqAgwqAgwqAwNzgwOg0KPiDC
oCDCoCDCoDA3ODE6IMKgIMKgIMKgIMKgIMKgIMKgaWYgIi4iIGluIHNlbGYubWV0aG9kOg0K
PiDCoCDCoCDCoDA3ODI6IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgKG1vZHVsZSwgbWV0aG9k
KSA9IHNlbGYubWV0aG9kLnJzcGxpdCgnLicsIDEpDQo+IMKgIMKgIMKgMDc4MzogwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqBsb2NzWydtZXRob2QnXSA9IA0KPiBnZXRhdHRyKGltcG9ydGxp
Yi5pbXBvcnRfbW9kdWxlKG1vZHVsZSksIG1ldGhvZCkNCj4gwqAqKiogMDc4NDogwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqBvdXRoYXNoID0gYmIudXRpbHMuYmV0dGVyX2V2YWwoJ21ldGhv
ZChwYXRoLCANCj4gc2lnZmlsZSwgdGFzaywgZCknLCBsb2NzKQ0KPiDCoCDCoCDCoDA3ODU6
IMKgIMKgIMKgIMKgIMKgIMKgZWxzZToNCj4gwqAgwqAgwqAwNzg2OiDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoG91dGhhc2ggPSBiYi51dGlscy5iZXR0ZXJfZXZhbChzZWxmLm1ldGhvZCAr
IA0KPiAnKHBhdGgsIHNpZ2ZpbGUsIHRhc2ssIGQpJywgbG9jcykNCj4gwqAgwqAgwqAwNzg3
Og0KPiDCoCDCoCDCoDA3ODg6IMKgIMKgIMKgIMKgIMKgIMKgdHJ5Og0KPiBGaWxlOiANCj4g
Jy9ob21lL2FzaGlzaC9yYXNwYmVycnlwaTVfd2hpbmxhdGVyL3Bva3kvYml0YmFrZS9saWIv
YmIvdXRpbHMucHknLCANCj4gbGluZW5vOiA0ODcsIGZ1bmN0aW9uOiBiZXR0ZXJfZXZhbA0K
PiDCoCDCoCDCoDA0ODM6IMKgIMKgaWYgZXh0cmFnbG9iYWxzOg0KPiDCoCDCoCDCoDA0ODQ6
IMKgIMKgIMKgIMKgY3R4ID0gY29weS5jb3B5KGN0eCkNCj4gwqAgwqAgwqAwNDg1OiDCoCDC
oCDCoCDCoGZvciBnIGluIGV4dHJhZ2xvYmFsczoNCj4gwqAgwqAgwqAwNDg2OiDCoCDCoCDC
oCDCoCDCoCDCoGN0eFtnXSA9IGV4dHJhZ2xvYmFsc1tnXQ0KPiDCoCoqKiAwNDg3OiDCoCDC
oHJldHVybiBldmFsKHNvdXJjZSwgY3R4LCBsb2NhbHMpDQo+IMKgIMKgIMKgMDQ4ODoNCj4g
wqAgwqAgwqAwNDg5OkBjb250ZXh0bWFuYWdlcg0KPiDCoCDCoCDCoDA0OTA6ZGVmIGZpbGVz
bG9ja2VkKGZpbGVzLCAqYXJncywgKiprd2FyZ3MpOg0KPiDCoCDCoCDCoDA0OTE6IMKgIMKg
IiIiQ29udGV4dCBtYW5hZ2VyIGZvciBsb2NraW5nIGFuZCB1bmxvY2tpbmcgZmlsZSBsb2Nr
cy4gDQo+IFVzZXMNCj4gRmlsZTogJzxzdHJpbmc+JywgbGluZW5vOiAxLCBmdW5jdGlvbjog
PG1vZHVsZT4NCj4gwqAgRmlsZSAiPHN0cmluZz4iLCBsaW5lIDEsIGluIDxtb2R1bGU+DQo+
IEZpbGU6IA0KPiAnL2hvbWUvYXNoaXNoL3Jhc3BiZXJyeXBpNV93aGlubGF0ZXIvcG9reS9t
ZXRhL2xpYi9vZS9zc3RhdGVzaWcucHknLCANCj4gbGluZW5vOiA3MjIsIGZ1bmN0aW9uOiBP
RU91dGhhc2hCYXNpYw0KPiDCoCDCoCDCoDA3MTg6IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
dXBkYXRlX2hhc2goIlxuIikNCj4gwqAgwqAgwqAwNzE5Og0KPiDCoCDCoCDCoDA3MjA6IMKg
IMKgIMKgIMKgIMKgIMKgIyBQcm9jZXNzIHRoaXMgZGlyZWN0b3J5IGFuZCBhbGwgaXRzIGNo
aWxkIGZpbGVzDQo+IMKgIMKgIMKgMDcyMTogwqAgwqAgwqAgwqAgwqAgwqBpZiBpbmNsdWRl
X3Jvb3Qgb3Igcm9vdCAhPSAiLiI6DQo+IMKgKioqIDA3MjI6IMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgcHJvY2Vzcyhyb290KQ0KPiDCoCDCoCDCoDA3MjM6IMKgIMKgIMKgIMKgIMKgIMKg
Zm9yIGYgaW4gZmlsZXM6DQo+IMKgIMKgIMKgMDcyNDogwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBpZiBmID09ICdmaXhtZXBhdGgnOg0KPiDCoCDCoCDCoDA3MjU6IMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgY29udGludWUNCj4gwqAgwqAgwqAwNzI2OiDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoHByb2Nlc3Mob3MucGF0aC5qb2luKHJvb3QsIGYpKQ0KPiBGaWxlOiANCj4g
Jy9ob21lL2FzaGlzaC9yYXNwYmVycnlwaTVfd2hpbmxhdGVyL3Bva3kvbWV0YS9saWIvb2Uv
c3N0YXRlc2lnLnB5JywgDQo+IGxpbmVubzogNjYxLCBmdW5jdGlvbjogcHJvY2Vzcw0KPiDC
oCDCoCDCoDA2NTc6IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZXhjZXB0IEtleUVy
cm9yIGFzIGU6DQo+IMKgIMKgIMKgMDY1ODogwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBtc2cgPSAoIktleUVycm9yOiAlc1xuUGF0aCAlcyBpcyANCj4gb3duZWQgYnkg
dWlkICVkLCBnaWQgJWQsIHdoaWNoIGRvZXNuJ3QgbWF0Y2ggIg0KPiDCoCDCoCDCoDA2NTk6
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgImFueSB1c2VyL2dy
b3VwIG9uIHRhcmdldC4gVGhpcyANCj4gbWF5IGJlIGR1ZSB0byBob3N0IGNvbnRhbWluYXRp
b24uIiAlDQo+IMKgIMKgIMKgMDY2MDogwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAoZSwgb3MucGF0aC5hYnNwYXRoKHBhdGgpLCANCj4gcy5zdF91aWQsIHMu
c3RfZ2lkKSkNCj4gwqAqKiogMDY2MTogwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqByYWlzZSANCj4gRXhjZXB0aW9uKG1zZykud2l0aF90cmFjZWJhY2soZS5fX3RyYWNl
YmFja19fKQ0KPiDCoCDCoCDCoDA2NjI6DQo+IMKgIMKgIMKgMDY2MzogwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBpZiBpbmNsdWRlX3RpbWVzdGFtcHM6DQo+IMKgIMKgIMKgMDY2NDogwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAjIE5lZWQgdG8gY2xhbXAgdG8gU09VUkNFX0RB
VEVfRVBPQ0gNCj4gwqAgwqAgwqAwNjY1OiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oGlmIHMuc3RfbXRpbWUgPiBzb3VyY2VfZGF0ZV9lcG9jaDoNCj4gRmlsZTogDQo+ICcvaG9t
ZS9hc2hpc2gvcmFzcGJlcnJ5cGk1X3doaW5sYXRlci9wb2t5L21ldGEvbGliL29lL3NzdGF0
ZXNpZy5weScsIA0KPiBsaW5lbm86IDY1NSwgZnVuY3Rpb246IHByb2Nlc3MNCj4gwqAgwqAg
wqAwNjUxOiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGVsc2U6DQo+IMKgIMKgIMKg
MDY1MjogwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBhZGRfcGVybShzdGF0
LlNfSVhPVEgsICd4JykNCj4gwqAgwqAgwqAwNjUzOg0KPiDCoCDCoCDCoDA2NTQ6IMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgdHJ5Og0KPiDCoCoqKiAwNjU1OiDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHVwZGF0ZV9oYXNoKCIgJTEwcyIgJSANCj4gcHdk
LmdldHB3dWlkKHMuc3RfdWlkKS5wd19uYW1lKQ0KPiDCoCDCoCDCoDA2NTY6IMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgdXBkYXRlX2hhc2goIiAlMTBzIiAlIA0KPiBn
cnAuZ2V0Z3JnaWQocy5zdF9naWQpLmdyX25hbWUpDQo+IMKgIMKgIMKgMDY1NzogwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBleGNlcHQgS2V5RXJyb3IgYXMgZToNCj4gwqAgwqAg
wqAwNjU4OiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoG1zZyA9ICgiS2V5
RXJyb3I6ICVzXG5QYXRoICVzIGlzIA0KPiBvd25lZCBieSB1aWQgJWQsIGdpZCAlZCwgd2hp
Y2ggZG9lc24ndCBtYXRjaCAiDQo+IMKgIMKgIMKgMDY1OTogwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAiYW55IHVzZXIvZ3JvdXAgb24gdGFyZ2V0LiBUaGlz
IA0KPiBtYXkgYmUgZHVlIHRvIGhvc3QgY29udGFtaW5hdGlvbi4iICUNCj4gRXhjZXB0aW9u
OiBFeGNlcHRpb246IEtleUVycm9yOiAnZ2V0cHd1aWQoKTogdWlkIG5vdCBmb3VuZDogMTAw
MCcNCj4gUGF0aCANCj4gL2hvbWUvYXNoaXNoL3Jhc3BiZXJyeXBpNV93aGlubGF0ZXIvcG9r
eS9idWlsZC90bXAvd29yay9jb3J0ZXhhNzYtcG9reS1saW51eC90ZW5zb3JmbG93LWxpdGUv
Mi4xOS4wL3NzdGF0ZS1idWlsZC1wYWNrYWdlL3BhY2thZ2UvdXNyL2xpYi9weXRob24zLjEz
L3NpdGUtcGFja2FnZXMvdGZsaXRlX3J1bnRpbWUgDQo+IGlzIG93bmVkIGJ5IHVpZCAxMDAw
LCBnaWQgMTAwMCwgd2hpY2ggZG9lc24ndCBtYXRjaCBhbnkgdXNlci9ncm91cCBvbiANCj4g
dGFyZ2V0LiBUaGlzIG1heSBiZSBkdWUgdG8gaG9zdCBjb250YW1pbmF0aW9uLg0KPiBFUlJP
UjogTG9nZmlsZSBvZiBmYWlsdXJlIHN0b3JlZCBpbjogDQo+IC9ob21lL2FzaGlzaC9yYXNw
YmVycnlwaTVfd2hpbmxhdGVyL3Bva3kvYnVpbGQvdG1wL3dvcmsvY29ydGV4YTc2LXBva3kt
bGludXgvdGVuc29yZmxvdy1saXRlLzIuMTkuMC90ZW1wL2xvZy5kb19wYWNrYWdlLjQxODk0
OTANCj4gTk9URTogcmVjaXBlIHRlbnNvcmZsb3ctbGl0ZS0yLjE5LjAtcjA6IHRhc2sgZG9f
cGFja2FnZTogRmFpbGVkDQoNCiBGcm9tIHRoZSBsb2csIGl0IHNob3VsZCBiZSB0aGUgaXNz
dWUgb2Ygc3N0YXRlIGNhY2hlLCBzdWNoIGFzIHR3byANCmJ1aWxkcyBzaGFyZSBvbmUgc3N0
YXRlIHNoYXJlDQoNCmluIDFzdCBidWlsZCwgYnVpbGQgdGVuc29yZmxvdy1saXRlLCBhbmQg
dGhlbiBpbiAybmQgYnVpbGQsIGl0IHJlc3VlIHRoZSANCnNzdGF0ZSBjYWNoZSBvZiAxc3Qg
YnVpbGQuDQoNCndoZW4geW91IHJlYnVpbHQgZnJvbSBzY3JhdGNoIChiaXRiYWtlIHRlbnNv
cmZsb3ctbGl0ZSAtY2NlYW5zc3RhdGUgJiYgDQpiaXRiYWtlIHRlbnNvcmZsb3ctbGl0ZSkN
Cg0Kb3IgdHJpZ2dlciBkb19pbnN0YWxsIHJlYnVpbGQgd2lsbCBmaXggdGhlIGlzc3VlDQoN
Cj4gKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioNCj4gQWZ0ZXIgSSBj
b21tZW50IGJlbG93IHBhcnQgZnJvbSByZWNpcGUgaXQgc3VjY2Vzc2Z1bGx5IGJ1aWxkIGl0
Og0KPiDCoCDCoCAke1NUQUdJTkdfQklORElSX05BVElWRX0vcGlwMyBpbnN0YWxsIC0tZGlz
YWJsZS1waXAtdmVyc2lvbi1jaGVjayAtdiBcDQo+IMKgIMKgIMKgIMKgIC10ICR7RH0vJHtQ
WVRIT05fU0lURVBBQ0tBR0VTX0RJUn0gLS1uby1jYWNoZS1kaXIgLS1uby1kZXBzIFwNCj4g
JHtTfS90ZW5zb3JmbG93L2xpdGUvdG9vbHMvcGlwX3BhY2thZ2UvZ2VuL3RmbGl0ZV9waXAv
cHl0aG9uMy9kaXN0L3RmbGl0ZV9ydW50aW1lLSR7UFZ9KmNwMzEzKi53aGwNCj4gwqAgwqAg
cm0gLXJmICR7RH0ke1BZVEhPTl9TSVRFUEFDS0FHRVNfRElSfS90ZmxpdGVfcnVudGltZS0k
e1BWfS5kaXN0LWluZm8NCj4gU2luY2UgSSB3YW50ZWQgdG8gYnVpbGQgcnBpY2FtLWFwcHMg
KGxpYmNhbWVyYS1hcHBzKSB3aXRoIA0KPiB0ZW5zb3JmbG93LWxpdGUgc3VwcG9ydCBJIGNv
bW1lbnRlZCBhYm92ZSBwYXJ0IGFzIHdoZWVsIGlzIG5vdCByZXF1aXJlZC4NCj4gV2hlbiBJ
IGJ1aWxkwqAgbGliY2FtZXJhLWFwcHMsIHNpbmNlIG1ldGEtdGVuc29yZmxvdyB1c2VzIGJh
emVsIHRvIA0KPiBidWlsZCwgaXQgZG9lcyBub3QgZ2VuZXJhdGUgbGlidGVuc29yZmxvd2xp
dGUucGMgZm9yIGxpYmNhbWVyYS1hcHBzIHRvIA0KPiBpbnRlZ3JhdGUuDQoNCkJ5IGRlZmF1
bHQsIG5vIGxpYnRlbnNvcmZsb3dsaXRlLnBjIGlzIHByb3ZpZGVkIGZvciBub3csIHlvdSBj
b3VsZCANCm1hbnVhbGx5IGFkZCB0aGUgbGlidGVuc29yZmxvd2xpdGUucGMgdG8gYWxvbmcg
d2l0aCByZWNpcGUgYW5kIGluc3RhbGwgDQppdCBpbiB0YXNrIGRvX2luc3RhbGwNCg0KLy9I
b25neHUNCg0KPiBIb3cgdG8gc29sdmUgdGhlc2UgaXNzdWVzPyBJIGFtIG5ldyB0byBZb2N0
byBhbmQgbG9va2luZyBmb3Igc29tZSBoZWxwPw0KPg0KPiAtPS09LT0tPS09LT0tPS09LT0t
PS09LQ0KPiBMaW5rczogWW91IHJlY2VpdmUgYWxsIG1lc3NhZ2VzIHNlbnQgdG8gdGhpcyBn
cm91cC4NCj4gVmlldy9SZXBseSBPbmxpbmUgKCM2NTgyOSk6aHR0cHM6Ly9saXN0cy55b2N0
b3Byb2plY3Qub3JnL2cveW9jdG8vbWVzc2FnZS82NTgyOQ0KPiBNdXRlIFRoaXMgVG9waWM6
aHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL210LzExNTIxODQ0OS8zNjE3MDQ5DQo+
IEdyb3VwIE93bmVyOnlvY3RvK293bmVyQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gVW5z
dWJzY3JpYmU6aHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vdW5zdWIg
IFtob25neHUuamlhQGVuZy53aW5kcml2ZXIuY29tXQ0KPiAtPS09LT0tPS09LT0tPS09LT0t
PS09LQ0KPg0K
--------------ezRPFRZ97PipQI6VK5ydWwPE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 9/13/25 11:57, ashish shrikhande6
      via lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:LJfP.1757735839241326130.SYL3@lists.yoctoproject.org">
      
      <strong>
      </strong>
      <div style="border:solid #9c6500 1pt;padding:2pt;background:#fcfc03"><strong><class="msonormal" style="line-height:11pt"><span style="font-size:11pt;color:#000">CAUTION: This email
              comes from a non Wind River email account!</span></class="msonormal"></strong><br>
        <class="msonormal" style="line-height:10pt3"><span style="font-size:10pt;color:#000">Do not click links or open
            attachments unless you recognize the sender and know the
            content is safe.</span><br>
        </class="msonormal"></div>
      <div>
        <div>I am facing two issues in building meta-tensorflow. I am
          trying to build tensorflow-lite in latest Yocto whinlatter for
          Raspberrypi5 target.&nbsp;</div>
        <div>When I get try to build tensorflow-lite</div>
        <div>I get below error:</div>
        <div>&nbsp;</div>
        <div>***********************************************************************************************************************************************</div>
        <div>&nbsp;</div>
        <div>
          <div>ERROR: tensorflow-lite-2.19.0-r0 do_package: Error
            executing a python function in exec_func_python()
            autogenerated:</div>
          <div>The stack trace of python calls that resulted in this
            exception/failure was:<br>
            File: 'exec_func_python() autogenerated', lineno: 2,
            function: &lt;module&gt;<br>
            &nbsp; &nbsp; &nbsp;0001:<br>
            &nbsp;*** 0002:sstate_report_unihash(d)<br>
            &nbsp; &nbsp; &nbsp;0003:<br>
            File:
'/home/ashish/raspberrypi5_whinlater/poky/meta/classes-global/sstate.bbclass',
            lineno: 917, function: sstate_report_unihash<br>
            &nbsp; &nbsp; &nbsp;0913: &nbsp; &nbsp;report_unihash = getattr(bb.parse.siggen,
            'report_unihash', None)<br>
            &nbsp; &nbsp; &nbsp;0914:<br>
            &nbsp; &nbsp; &nbsp;0915: &nbsp; &nbsp;if report_unihash:<br>
            &nbsp; &nbsp; &nbsp;0916: &nbsp; &nbsp; &nbsp; &nbsp;ss = sstate_state_fromvars(d)<br>
            &nbsp;*** 0917: &nbsp; &nbsp; &nbsp; &nbsp;report_unihash(os.getcwd(), ss['task'], d)<br>
            &nbsp; &nbsp; &nbsp;0918:}<br>
            &nbsp; &nbsp; &nbsp;0919:<br>
            &nbsp; &nbsp; &nbsp;0920:#<br>
            &nbsp; &nbsp; &nbsp;0921:# Shell function to decompress and prepare a
            package for installation<br>
            File:
            '/home/ashish/raspberrypi5_whinlater/poky/bitbake/lib/bb/siggen.py',
            lineno: 784, function: report_unihash<br>
            &nbsp; &nbsp; &nbsp;0780:<br>
            &nbsp; &nbsp; &nbsp;0781: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if &quot;.&quot; in self.method:<br>
            &nbsp; &nbsp; &nbsp;0782: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(module, method) =
            self.method.rsplit('.', 1)<br>
            &nbsp; &nbsp; &nbsp;0783: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;locs['method'] =
            getattr(importlib.import_module(module), method)<br>
            &nbsp;*** 0784: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;outhash =
            bb.utils.better_eval('method(path, sigfile, task, d)', locs)<br>
            &nbsp; &nbsp; &nbsp;0785: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;else:<br>
            &nbsp; &nbsp; &nbsp;0786: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;outhash =
            bb.utils.better_eval(self.method + '(path, sigfile, task,
            d)', locs)<br>
            &nbsp; &nbsp; &nbsp;0787:<br>
            &nbsp; &nbsp; &nbsp;0788: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;try:<br>
            File:
            '/home/ashish/raspberrypi5_whinlater/poky/bitbake/lib/bb/utils.py',
            lineno: 487, function: better_eval<br>
            &nbsp; &nbsp; &nbsp;0483: &nbsp; &nbsp;if extraglobals:<br>
            &nbsp; &nbsp; &nbsp;0484: &nbsp; &nbsp; &nbsp; &nbsp;ctx = copy.copy(ctx)<br>
            &nbsp; &nbsp; &nbsp;0485: &nbsp; &nbsp; &nbsp; &nbsp;for g in extraglobals:<br>
            &nbsp; &nbsp; &nbsp;0486: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ctx[g] = extraglobals[g]<br>
            &nbsp;*** 0487: &nbsp; &nbsp;return eval(source, ctx, locals)<br>
            &nbsp; &nbsp; &nbsp;0488:<br>
            &nbsp; &nbsp; &nbsp;0489:@contextmanager<br>
            &nbsp; &nbsp; &nbsp;0490:def fileslocked(files, *args, **kwargs):<br>
            &nbsp; &nbsp; &nbsp;0491: &nbsp; &nbsp;&quot;&quot;&quot;Context manager for locking and unlocking
            file locks. Uses<br>
            File: '&lt;string&gt;', lineno: 1, function: &lt;module&gt;<br>
            &nbsp; File &quot;&lt;string&gt;&quot;, line 1, in &lt;module&gt;</div>
          <div>File:
            '/home/ashish/raspberrypi5_whinlater/poky/meta/lib/oe/sstatesig.py',
            lineno: 722, function: OEOuthashBasic<br>
            &nbsp; &nbsp; &nbsp;0718: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;update_hash(&quot;\n&quot;)<br>
            &nbsp; &nbsp; &nbsp;0719:<br>
            &nbsp; &nbsp; &nbsp;0720: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Process this directory and all its
            child files<br>
            &nbsp; &nbsp; &nbsp;0721: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if include_root or root != &quot;.&quot;:<br>
            &nbsp;*** 0722: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;process(root)<br>
            &nbsp; &nbsp; &nbsp;0723: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;for f in files:<br>
            &nbsp; &nbsp; &nbsp;0724: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if f == 'fixmepath':<br>
            &nbsp; &nbsp; &nbsp;0725: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;continue<br>
            &nbsp; &nbsp; &nbsp;0726: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;process(os.path.join(root, f))<br>
            File:
            '/home/ashish/raspberrypi5_whinlater/poky/meta/lib/oe/sstatesig.py',
            lineno: 661, function: process<br>
            &nbsp; &nbsp; &nbsp;0657: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;except KeyError as e:<br>
            &nbsp; &nbsp; &nbsp;0658: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;msg = (&quot;KeyError: %s\nPath
            %s is owned by uid %d, gid %d, which doesn't match &quot;<br>
            &nbsp; &nbsp; &nbsp;0659: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&quot;any user/group on
            target. This may be due to host contamination.&quot; %<br>
            &nbsp; &nbsp; &nbsp;0660: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(e,
            os.path.abspath(path), s.st_uid, s.st_gid))<br>
            &nbsp;*** 0661: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;raise
            Exception(msg).with_traceback(e.__traceback__)<br>
            &nbsp; &nbsp; &nbsp;0662:<br>
            &nbsp; &nbsp; &nbsp;0663: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if include_timestamps:<br>
            &nbsp; &nbsp; &nbsp;0664: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Need to clamp to
            SOURCE_DATE_EPOCH<br>
            &nbsp; &nbsp; &nbsp;0665: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if s.st_mtime &gt;
            source_date_epoch:<br>
            File:
            '/home/ashish/raspberrypi5_whinlater/poky/meta/lib/oe/sstatesig.py',
            lineno: 655, function: process<br>
            &nbsp; &nbsp; &nbsp;0651: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;else:<br>
            &nbsp; &nbsp; &nbsp;0652: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;add_perm(stat.S_IXOTH,
            'x')<br>
            &nbsp; &nbsp; &nbsp;0653:<br>
            &nbsp; &nbsp; &nbsp;0654: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;try:<br>
            &nbsp;*** 0655: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;update_hash(&quot; %10s&quot; %
            pwd.getpwuid(s.st_uid).pw_name)<br>
            &nbsp; &nbsp; &nbsp;0656: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;update_hash(&quot; %10s&quot; %
            grp.getgrgid(s.st_gid).gr_name)<br>
            &nbsp; &nbsp; &nbsp;0657: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;except KeyError as e:<br>
            &nbsp; &nbsp; &nbsp;0658: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;msg = (&quot;KeyError: %s\nPath
            %s is owned by uid %d, gid %d, which doesn't match &quot;<br>
            &nbsp; &nbsp; &nbsp;0659: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&quot;any user/group on
            target. This may be due to host contamination.&quot; %<br>
            Exception: Exception: KeyError: 'getpwuid(): uid not found:
            1000'<br>
            Path
/home/ashish/raspberrypi5_whinlater/poky/build/tmp/work/cortexa76-poky-linux/tensorflow-lite/2.19.0/sstate-build-package/package/usr/lib/python3.13/site-packages/tflite_runtime
            is owned by uid 1000, gid 1000, which doesn't match any
            user/group on target. This may be due to host contamination.</div>
          <div>&nbsp;</div>
          <div>ERROR: Logfile of failure stored in:
/home/ashish/raspberrypi5_whinlater/poky/build/tmp/work/cortexa76-poky-linux/tensorflow-lite/2.19.0/temp/log.do_package.4189490<br>
            NOTE: recipe tensorflow-lite-2.19.0-r0: task do_package:
            Failed</div>
          <div>&nbsp;</div>
        </div>
      </div>
    </blockquote>
    <p>From the log, it should be the issue of sstate cache, such as two
      builds share one sstate share</p>
    <p>in 1st build, build tensorflow-lite, and then in 2nd build, it
      resue the sstate cache of 1st build.</p>
    <p>when you rebuilt from scratch (bitbake tensorflow-lite
      -cceansstate &amp;&amp; bitbake tensorflow-lite)</p>
    <p>or trigger do_install rebuild will fix the issue</p>
    <blockquote type="cite" cite="mid:LJfP.1757735839241326130.SYL3@lists.yoctoproject.org">
      <div>
        <div>
          <div>********************************************************************************************************************************************************************************************************</div>
          <div>&nbsp;</div>
          <div>&nbsp;</div>
          <div>After I comment below part from recipe it successfully
            build it:</div>
          <div>&nbsp;</div>
          <div>
            <div>&nbsp; &nbsp; ${STAGING_BINDIR_NATIVE}/pip3 install
              --disable-pip-version-check -v \<br>
              &nbsp; &nbsp; &nbsp; &nbsp; -t ${D}/${PYTHON_SITEPACKAGES_DIR} --no-cache-dir
              --no-deps \<br>
              &nbsp; &nbsp; &nbsp; &nbsp;
${S}/tensorflow/lite/tools/pip_package/gen/tflite_pip/python3/dist/tflite_runtime-${PV}*cp313*.whl</div>
            <div>&nbsp; &nbsp; rm -rf
              ${D}${PYTHON_SITEPACKAGES_DIR}/tflite_runtime-${PV}.dist-info</div>
            <div>&nbsp;</div>
            <div>Since I wanted to build rpicam-apps (libcamera-apps)&nbsp;
              with tensorflow-lite support I commented above part as
              wheel is not required.</div>
            <div>&nbsp;</div>
            <div>When I build&nbsp; libcamera-apps, since meta-tensorflow
              uses bazel to build, it does not generate
              libtensorflowlite.pc for libcamera-apps to integrate.</div>
          </div>
        </div>
      </div>
    </blockquote>
    <p>By default, no libtensorflowlite.pc is provided for now, you
      could manually add the libtensorflowlite.pc to along with recipe
      and install it in task do_install<br>
    </p>
    <p>//Hongxu<br>
    </p>
    <blockquote type="cite" cite="mid:LJfP.1757735839241326130.SYL3@lists.yoctoproject.org">
      <div>
        <div>
          <div>
            <div>&nbsp;</div>
            <div>How to solve these issues? I am new to Yocto and
              looking for some help?&nbsp;</div>
            <div>&nbsp;</div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#65829): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/65829">https://lists.yoctoproject.org/g/yocto/message/65829</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/115218449/3617049">https://lists.yoctoproject.org/mt/115218449/3617049</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:hongxu.jia@eng.windriver.com">hongxu.jia@eng.windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------ezRPFRZ97PipQI6VK5ydWwPE--

