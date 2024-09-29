Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2792FCF6495
	for <webhook@archiver.kernel.org>; Sun, 29 Sep 2024 02:55:39 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.25904.1727578538473437214
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Sep 2024 19:55:38 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=0002136fa6=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48T2b8Bl031262;
	Sun, 29 Sep 2024 02:55:36 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2177.outbound.protection.outlook.com [104.47.57.177])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 41x8s88w1b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 29 Sep 2024 02:55:36 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rg/m4S3dSc60N22Thkbe4UMBqnzJ9QV5ap66zSHBx5hOhqMYUBvgXi/JpuCgzo0j/VWA7sOX6Nn50Jg43bqUzrA4dcxgxYrxdZHuyF4quFWoq/SexbDLryTr4Ed3uz1+qsDZEoO7/0S7ib7EtwH5mOxeyAYJfdyC2YhgpD/TriGzXpqVcsl5KUj2TQ8K+58TK7VmgQ2g/jsQRBGik2MMPxqCxMJ1/n7ua3RNj4mb6mrRpseE9VclUVgu1A+B86hyhl9Zg+qreySl6+gF1hb28HWPTAQe//+r4jnaT4JYLafckujOyvpBCpLNpIgVrL5GEalkx32kIyG2fnDjmBULjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qh79a28ZrczaFCx6x59nxiZkWOVI2jB6RfMaFySOSK4=;
 b=NJgtW4lkCRptK8Z2bfU1a4JNYjM5isOHuDbR0NVdeFCGlFJ8tikSL+KR4j4YS7EAI7q+bAYNS6737s/LApmEZcVTHao+eZPC4e5yuBzBwIxcZEAFDm8gVqIcHkfeDqD18DfKe4Lgvon0RgbtA50WbloXEP8qQvhuFEo4/HMgYlo/KN0QtjuXt48JyGismqCHtzcqkTSxDRQpse4/j5tDpU/01u9Lf4ORvctJ/FViiHkGoEwhztWk2wGOpiVvWkm0kxQ+nuH/gRZ9FAm7wT12dBW04GBq9gdoReWrtVaj/uFlwTJ6ohyGbh+DnqBW4sqsyoVWrqQ0K0uS7JXyR2alvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB6399.namprd11.prod.outlook.com (2603:10b6:8:c8::5) by
 CYYPR11MB8306.namprd11.prod.outlook.com (2603:10b6:930:c6::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8005.22; Sun, 29 Sep 2024 02:55:34 +0000
Received: from DS0PR11MB6399.namprd11.prod.outlook.com
 ([fe80::2b44:787c:e7ee:bfad]) by DS0PR11MB6399.namprd11.prod.outlook.com
 ([fe80::2b44:787c:e7ee:bfad%5]) with mapi id 15.20.8005.024; Sun, 29 Sep 2024
 02:55:32 +0000
Content-Type: multipart/alternative;
 boundary="------------qy48eRaVSHgfVnPzsJUNAKMS"
Message-ID: <578b1f62-436e-417b-97bd-afd4e5e3f2ed@windriver.com>
Date: Sun, 29 Sep 2024 10:55:26 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-selinux] do_install failing with monolithic policy
 in meta-selinux refpolicy
To: yocto@lists.yoctoproject.org, ms.priyanshu.sharma@gmail.com
References: <L0li.1727459840037471274.IyiC@lists.yoctoproject.org>
Content-Language: en-US
From: Yi Zhao <yi.zhao@windriver.com>
In-Reply-To: <L0li.1727459840037471274.IyiC@lists.yoctoproject.org>
X-ClientProxiedBy: TYCPR01CA0193.jpnprd01.prod.outlook.com
 (2603:1096:400:2b0::12) To DS0PR11MB6399.namprd11.prod.outlook.com
 (2603:10b6:8:c8::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB6399:EE_|CYYPR11MB8306:EE_
X-MS-Office365-Filtering-Correlation-Id: fb66bf35-49b2-4c6e-cba8-08dce0322f30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|4022899009;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZkNOR1NnL2tNQ29EMkRtbU0xd0dEL0dJVy8weXcxNVdUbXlXYlNLT1FhMzN4?=
 =?utf-8?B?dHd3S3ZYeDQ5RC92MWdQb3ZoejlEYkgxamRzR04rV3Q4RGV3b2dFeitmWmhW?=
 =?utf-8?B?Y2Z2aXFQVU9PcExMMHpzTmRURjRFbXgrc1hsVTJBc3BxVXp1L1hPRG1DVFJ1?=
 =?utf-8?B?Q1NUQmZKUGg5cXBrcFFiaWF6WDhMeFRtSU1YQlNRMkNZemZSNVg4cEo4OWtP?=
 =?utf-8?B?K0Z3SVhpWWMxdjYybnF5NnFtRm0xNEVtRkthajlmd2EvQWMxYnUzbEhwQjl5?=
 =?utf-8?B?QW5BWUFEUGMzMkQwR0VvVEJ6ditPU2sxU0tVZGNwT3NwZjlHVGZZT0Uzc0d4?=
 =?utf-8?B?MXdtekZQeWRpTFhZRzhjZklvM0NzNG1HeDVXRDZPbk5uaWEwSE5ialNhWTJF?=
 =?utf-8?B?SDN3TFh6enNvN2laa2tEWFRjWmtHQVdBeHM2cVZFWkpGTitCTDhNVXJiWWhF?=
 =?utf-8?B?Z25Ib1lmOUFqT1EwVEltekFpb1ZGa0lwUEF2MXFycVZlVkJwN2Q2Z21nV0JT?=
 =?utf-8?B?Vk9nbGJTcmsvV0tzN1JpVjR4SGJveVhxci9IN2tQQXh6Nm1nSEx4RDJYbnhz?=
 =?utf-8?B?NWEvT2JjMGdvSzFwY3UwS0hnaytzNE9qdE1rQ1l4US8wM0ZtQndJWVR1TFBM?=
 =?utf-8?B?ZmlZeTJ0dFA2Y0lzbXZSalZqUGNENkZyc2NSNWhER3kvSUtPblViRENXU1No?=
 =?utf-8?B?RU1sVjd5MDMrVFB3NlFTeUFsSXdJdVIxSnkrNG5BUFlKMUNaNThBT1BUMFho?=
 =?utf-8?B?MU9DTDJuSFdRK2drSTVhTmJtbGhrZ0dOTWFZV1gyWkxUY214V1pMWkQyVWli?=
 =?utf-8?B?SzRpci9TMUJmdlFvcW9xcjI4ZXdnaExZdGM5OGQxTlBDaVVoSmdISVg2L3VB?=
 =?utf-8?B?SlpoMXBMM3A0RFBUMmZMVUsyUzY4TU5pdHBERnNTNlZuQkFJMEdhd2U0aUtR?=
 =?utf-8?B?N3pRNkV1T2RxaEgzN0kzdEF4WHUxM3k2UnB5UHdvNm5aU3l1RjcyRWl1Q3J6?=
 =?utf-8?B?YzZhYmtieHJuWm02NmR3TEYwNE9oVWJUaFVpVDJzMjRSRXMwQU4zTlBCMSty?=
 =?utf-8?B?bFJqeU13TG4zbjFEVUc4U29id0wweUd6RSs3M0hlbm5BdXg4WkdVZVdkYmMv?=
 =?utf-8?B?OVRkeUxLMFljRzNaZW9ROFVzUUJoM3VEQ2gzOXp3K2tZdTNqTitEcG5yYk1N?=
 =?utf-8?B?dWNaMG5FSTgyOGp2NFZYcDhJaExqdzZXb1lScUpQZ3FuZVU2eVNGaTVVUWx3?=
 =?utf-8?B?QTZqU1VBQ3pNSHhsWDRSM1Yvd1ZWVEJzZnphUlBnZllmK3hnaTZZYXc4ckxY?=
 =?utf-8?B?eitZai9sNnF3eTBpeFpIYS80M3BPWlUxUGkyWDVoZ2o0T1VLT1FnRFk4R0J0?=
 =?utf-8?B?bUhPclhCTGJaemxKejBvYlhscXBzMXRwdkkrVlVpUXl4R1N1eDVUYkNGVEFJ?=
 =?utf-8?B?UVlFbllWU1hZTERqWHNzYTludTBtUFdrNnM4eU9GSWo3NXU2YUlUSDB0VmVV?=
 =?utf-8?B?eC8wNDdqSDd0YzVwcG91bEN2K08rTjN4UXMxWityb1N4dlduTzZhMkNsNUR5?=
 =?utf-8?B?SEJMUGErYTA0bURhTzZMZFFLeTNyenY4OU9DZXpKV1dzWnJ4NENXcHN4dURI?=
 =?utf-8?B?WHFzNlRRVitTRE5seFY1aUpyTi9pRFozMDZIYk1mVXFvb1hYd2lFK2JuYnEz?=
 =?utf-8?B?Vk1qbS94ditsZHdIb3czR215Tkt1WFVnSDhucmRrbitrY0czb2NvMXMzcEdJ?=
 =?utf-8?Q?cw4ihELazpJ25bu3Oo=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB6399.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(4022899009);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NTNVTXpITmxVRzZ0cWlRaHV6NFRubE8rL05HRHpvUnA2Zks2REVkK1VMVS9D?=
 =?utf-8?B?dWcwNng1RXovMUlDTW0reEVkU0dEYUllQ0h0Rldyb2pkd2VpMm1VQTFyZk9y?=
 =?utf-8?B?SjJCVTZTTzlpaVdSQTVPWVFza2M5dEw5ajcyMEJ1Z2JVYVcyWG44NWpBMTF0?=
 =?utf-8?B?bWVkb2diT1BsakZyYTFzekJiUnZzekNaVnJFcDFYREY3QmMzRzgrNzRvN2Nz?=
 =?utf-8?B?cmJPWlY3Z2NmVkJxVU5IV2Y0Nm9JN2lzazZXS3U4bzl0L1FvS09sMEUyRzdE?=
 =?utf-8?B?RFJhQ0Z1VkM5V0RJR05TWmk2K01Kd1hBaWdvdU44M3dGanVjOXVBT3BmMUkw?=
 =?utf-8?B?U3RjMnc5ek9nWkoxMngrZzJIaUMzNFV0SXpYVDQ0OGxOaStRWGtHVWpGT0dJ?=
 =?utf-8?B?YTlDYTJLRG9KSG5WOXEzZkFzOGtzQjNpOW1LSWEwWFdjT1dLVlcrQk1TdjRw?=
 =?utf-8?B?ckxlQzgxaEFrSHlQVnpEbW14cXh4T3pNcWJZejlLQklBamdjVVBqblB2YTZk?=
 =?utf-8?B?RnBqVGlUL2V2T1ZnOUxialg4M3lTdHBTd3dPS1NaUUdXNno4aFV1aTBaUHlN?=
 =?utf-8?B?M09IVGxXaGRCT0UxVSttYkxHeXVqS3VyUjBENjdjbG5YYkpCL0FsdkFIMnlV?=
 =?utf-8?B?RUZGbGdocnlsYUNVVnJDSWg3WGdqSEJnVllKSFFqMFlzRURNV0Q3VzJkejhO?=
 =?utf-8?B?RDN1Y0Y2bHhqTjJHYS9BTlJ5aUp1eDVhMFhRdlRhc3JKY3FyNG5vRy9UeFRu?=
 =?utf-8?B?QVV2dTUza3FmRVVmUkhzU28xYS9YWmhQUVJtN1ZEb2MxcUtqeTlrM01KdjZl?=
 =?utf-8?B?VGlwdUc3M3dWSkJvTXNwZkV5MG1rMEpWVDR3MTNWd0JhdVNrY3RPQmJiOWtF?=
 =?utf-8?B?S1lpVFplUEViM0hnRmcwQ2pzNmNPMHdyMEVwYXB3Yko1Z2drM1hjbzFsdi9B?=
 =?utf-8?B?dlR5UEczL210a0hZMWN1ODZXUDlWSTMrVUdLMldNeW8zdEpXcm5PbTRpWGVN?=
 =?utf-8?B?NGtRZ0NGbzhzQTltSmJMMWFkSVN6MXRQS1oxUjV3Mm92cng3c0dBblNacjVP?=
 =?utf-8?B?T2l0QUFOLzd3RisySTZkbkpRcEtKMDRxOWdSVUVucW1RZUZHUzI3OTFRbytU?=
 =?utf-8?B?SVVOWUNDdFpRMTlkSWs4VHVRSWJPSDRycmNtR084YVNMc05JNUM2ek5iNytI?=
 =?utf-8?B?NzN2cjFzMjhlY3lYb0xUTlZ0WGw0MnpQQUpDK3N5bitNMkM3T2VlTUt2NnVu?=
 =?utf-8?B?bTBDT3V0T2ZHbi8rR3VsaUdXbEJxNDZpM0xtakNCSTcrR2w5WmU2ejRHbUtj?=
 =?utf-8?B?Y3h3SGlEUXhWTTJSdkFNbmZqT3lmT090U1dsVFRLODhXUUkvY3pXb1oyYVp4?=
 =?utf-8?B?d0hkUStMczZQeTRHeDJqcTNjTFEyZS9OSVhMWDNXQXMrZ2tLeFdvTDVpSkNY?=
 =?utf-8?B?VXprQjlwc243S29HUGY3TEhMeldqZTNFTkZ1bGV2Y1V0bGVtYzRDaTd5UXBL?=
 =?utf-8?B?ZTBSRDd2ODl6SWNmcWkwZ3FSSEJCVjdZRjdCTG5qQ05jMlMraXVST3N3Y2o0?=
 =?utf-8?B?NFBRdy9OSVBRWENZNXh1eG5ocEFTQWNmY0NQcnlpSXZQZEZJR3A4aVhlOStj?=
 =?utf-8?B?VkpwTk5uVDNwZmpZeWhjR1V2Q3NDODI5eDNQWCtsR3hSVHVYYk4vVmtKeGpk?=
 =?utf-8?B?U3ZSc3JMazI5ZTZTVHB5QjU3UzRRZUNPa2U3VWN4VEJaNXBaV3krbmt0dzUz?=
 =?utf-8?B?VVIrYk1CTmVVOTdkRHpsdHllS05ScGVBRU02OFhrVUdNZ21uUldVMXNYVHJr?=
 =?utf-8?B?RlhldC92R2RENXZFdlNBZFZZdkZOVDNtT3RGR1Bud0lDM0NvUEoxSzVvYzQx?=
 =?utf-8?B?QmlqckVrUk5RRExYdEJXRHh4bmFmcFgrTXJyMWVtT1FIZW5zUWk0c3cyNkl4?=
 =?utf-8?B?NkhmQ1lIbHAzU21qbHhIM3V6ajhBZnRmdURzdkprblFtZTNQbkdmTk9odUkz?=
 =?utf-8?B?UTRIY25Vb2FobDBDK3FuVGlFOHdhV1l4WElQOEp6UXZkaHhWOG5DMXpnejFn?=
 =?utf-8?B?eUo3d3h2Qlp1aEwrWmZ6SFRFeVNzWU9uNmpyMHpzR3BEZmZkdU5iL0J4dzc1?=
 =?utf-8?Q?SOfgOeLg6cy4RzeQrmlhxEPs3?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb66bf35-49b2-4c6e-cba8-08dce0322f30
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB6399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2024 02:55:32.5719
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RqD8/EKWwtlYcBXUpMdM3TdQ1tqJNtbWjUFkAr+etTwXwt+84D8uZMmWG5J5CfihrC1E1Wlyq9j4toQEyPheKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8306
X-Authority-Analysis: v=2.4 cv=VaulP0p9 c=1 sm=1 tr=0 ts=66f8c1a8 cx=c_pps a=XlWNgFwcAB8XWrBhwjv7Vg==:117 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=EaEq8P2WXUwA:10 a=bRTqI5nwn0kA:10 a=iGHA9ds3AAAA:8 a=N6bTbxdCAAAA:8 a=zFTXKtWsAAAA:8
 a=t7CeM3EgAAAA:8 a=W9IC1ahY4u_n8lNzyqAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=4Mb50gqETZhV0D_eoG8A:9 a=LQOmj5FL-w57ZCZj:21 a=_W_S_7VecoQA:10 a=lqcHg5cX4UMA:10 a=nM-MV4yxpKKO9kiQg6Ot:22 a=GrtZBSt2RkyqPZJ1E3XX:22 a=D71Vy-87j6yJzULDrmR_:22
 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-GUID: rAIdZUpZ0kl7Cr7Y91zgps-TShwD2KvC
X-Proofpoint-ORIG-GUID: rAIdZUpZ0kl7Cr7Y91zgps-TShwD2KvC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-28_20,2024-09-27_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=999 suspectscore=0 clxscore=1011 mlxscore=0 impostorscore=0
 bulkscore=0 phishscore=0 malwarescore=0 spamscore=0 adultscore=0
 priorityscore=1501 classifier=spam authscore=0 adjust=0 reason=mlx
 scancount=1 engine=8.21.0-2408220000 definitions=main-2409290021
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 29 Sep 2024 02:55:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63906

--------------qy48eRaVSHgfVnPzsJUNAKMS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 48T2b8Bl031262


On 9/28/24 01:57, PS wrote:
> Hi Yocto team,
>
> I'm trying to enable SELinux in my custom image with meta-selinux=20
> layer. I have poky & meta-openembedded also in place. The refpolicy I=20
> have used is "refpolicy-standard" & mode as "enforcing". I have=20
> enabled monolithic by setting POLICY_MONOLITHIC to "y" in=20
> https://git.yoctoproject.org/meta-selinux/tree/recipes-security/refpoli=
cy/refpolicy_common.inc#n111=20
> <https://urldefense.com/v3/__https://git.yoctoproject.org/meta-selinux/=
tree/recipes-security/refpolicy/refpolicy_common.inc*n111__;Iw!!AjveYdw8E=
vQ!e9-FLE_IzDF9nwjbscOzjcOhx36-DN7PF5033coGG60GxIN-jQJNPwP8lUYlMs8DUy6dad=
U5lrWY1ALECnM5aEXZCSu9WIY$>
> But compiling refpolicy-standard is failing at do_install with=20
> following error :
>
> Creating policy.xml
> Updating policy/booleans.conf and policy/modules.conf
> support/sedoctool.py=20
> <https://urldefense.com/v3/__http://sedoctool.py__;!!AjveYdw8EvQ!e9-FLE=
_IzDF9nwjbscOzjcOhx36-DN7PF5033coGG60GxIN-jQJNPwP8lUYlMs8DUy6dadU5lrWY1AL=
ECnM5aEXZ5h4hUuI$>:269:=20
> SyntaxWarning: "is not" with a literal. Did you mean "!=3D"?
> =C2=A0 if desc.data=20
> <https://urldefense.com/v3/__http://desc.data__;!!AjveYdw8EvQ!e9-FLE_Iz=
DF9nwjbscOzjcOhx36-DN7PF5033coGG60GxIN-jQJNPwP8lUYlMs8DUy6dadU5lrWY1ALECn=
M5aEXZAGi5ISQ$>=20
> is not '':
> Installing local.users
> Failed to open=20
> /yocto/build/tmp/work/qemuarm64-gnu-linux/refpolicy-standard/2.20190201=
+gitAUTOINC+df696a3254-r0/image/usr/share/selinux/standard/*.*:=20
> No such file or directory
> bzip2: Can't open input file=20
> /yocto/build/tmp/work/qemuarm64-gnu-linux/refpolicy-standard/2.20190201=
+gitAUTOINC+df696a3254-r0/image/usr/share/selinux/standard/*.*:=20
> No such file or directory.
> cp: cannot stat=20
> '/yocto/build/tmp/work/qemuarm64-gnu-linux/refpolicy-standard/2.2019020=
1+gitAUTOINC+df696a3254-r0/image/usr/share/selinux/standard/*.*':=20
> No such file or directory
> WARNING: exit code 1 from a shell command.
> ERROR: Execution of=20
> '/yocto/build/tmp/work/qemuarm64-gnu-linux/refpolicy-standard/2.2019020=
1+gitAUTOINC+df696a3254-r0/temp/run.do_install.2247013'=20
> failed with exit code 1:
> Compiling and installing standard /yocto/build/tmp/work/qemuarm64-gnu-l=
i
> This seems like an issue with prepare_policy_store function in=20
> https://git.yoctoproject.org/meta-selinux/tree/recipes-security/refpoli=
cy/refpolicy_common.inc#n161=20
> <https://urldefense.com/v3/__https://git.yoctoproject.org/meta-selinux/=
tree/recipes-security/refpolicy/refpolicy_common.inc*n161__;Iw!!AjveYdw8E=
vQ!e9-FLE_IzDF9nwjbscOzjcOhx36-DN7PF5033coGG60GxIN-jQJNPwP8lUYlMs8DUy6dad=
U5lrWY1ALECnM5aEXZ4_GY0Ik$>
> which is trying to access each .pp file, but these files will not be=20
> present when using monolithic option.
> Any help on the installation failure? Thanks in advance!


Thanks for reporting this issue. We haven't considered POLICY_MONOLITHIC=20
=3D "y" in meta-selinux yet, so it should not be supported. I'll look at =
it.


//Yi

>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63905):https://lists.yoctoproject.org/g/yocto/messa=
ge/63905
> Mute This Topic:https://lists.yoctoproject.org/mt/108691326/7283133
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [yi.zhao@eng.=
windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
--------------qy48eRaVSHgfVnPzsJUNAKMS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 9/28/24 01:57, PS wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:L0li.1727459840037471274.IyiC@lists.yoctoproject.org">
      
      <div>Hi Yocto team,<br>
        <br>
        I'm trying to enable SELinux in my custom image with
        meta-selinux layer. I have poky &amp; meta-openembedded also in
        place. The refpolicy I have used is &quot;refpolicy-standard&quot; &amp;
        mode as &quot;enforcing&quot;. I have enabled monolithic by setting
        POLICY_MONOLITHIC to &quot;y&quot; in <a href="https://urldefense.com/v3/__https://git.yoctoproject.org/meta-selinux/tree/recipes-security/refpolicy/refpolicy_common.inc*n111__;Iw!!AjveYdw8EvQ!e9-FLE_IzDF9nwjbscOzjcOhx36-DN7PF5033coGG60GxIN-jQJNPwP8lUYlMs8DUy6dadU5lrWY1ALECnM5aEXZCSu9WIY$" target="_blank" rel="noopener" moz-do-not-send="true">https://git.yoctoproject.org/meta-selinux/tree/recipes-security/refpolicy/refpolicy_common.inc#n111</a></div>
      <div>But compiling refpolicy-standard is failing at do_install
        with following error :<br>
        <br>
        Creating policy.xml<br>
        Updating policy/booleans.conf and policy/modules.conf<br>
        support/<a href="https://urldefense.com/v3/__http://sedoctool.py__;!!AjveYdw8EvQ!e9-FLE_IzDF9nwjbscOzjcOhx36-DN7PF5033coGG60GxIN-jQJNPwP8lUYlMs8DUy6dadU5lrWY1ALECnM5aEXZ5h4hUuI$" moz-do-not-send="true">sedoctool.py</a>:269: SyntaxWarning:
        &quot;is not&quot; with a literal. Did you mean &quot;!=&quot;?<br>
        &nbsp; if <a href="https://urldefense.com/v3/__http://desc.data__;!!AjveYdw8EvQ!e9-FLE_IzDF9nwjbscOzjcOhx36-DN7PF5033coGG60GxIN-jQJNPwP8lUYlMs8DUy6dadU5lrWY1ALECnM5aEXZAGi5ISQ$" moz-do-not-send="true">desc.data</a> is not '':<br>
        Installing local.users<br>
        Failed to open
/yocto/build/tmp/work/qemuarm64-gnu-linux/refpolicy-standard/2.20190201+gitAUTOINC+df696a3254-r0/image/usr/share/selinux/standard/*.*:
        No such file or directory<br>
        bzip2: Can't open input file
/yocto/build/tmp/work/qemuarm64-gnu-linux/refpolicy-standard/2.20190201+gitAUTOINC+df696a3254-r0/image/usr/share/selinux/standard/*.*:
        No such file or directory.<br>
        cp: cannot stat
'/yocto/build/tmp/work/qemuarm64-gnu-linux/refpolicy-standard/2.20190201+gitAUTOINC+df696a3254-r0/image/usr/share/selinux/standard/*.*':
        No such file or directory<br>
        WARNING: exit code 1 from a shell command.<br>
        ERROR: Execution of
'/yocto/build/tmp/work/qemuarm64-gnu-linux/refpolicy-standard/2.20190201+gitAUTOINC+df696a3254-r0/temp/run.do_install.2247013'
        failed with exit code 1:<br>
        Compiling and installing standard
        /yocto/build/tmp/work/qemuarm64-gnu-li</div>
      <div>&nbsp;</div>
      <div>&nbsp;</div>
      <div>This seems like an issue with prepare_policy_store function
        in <a href="https://urldefense.com/v3/__https://git.yoctoproject.org/meta-selinux/tree/recipes-security/refpolicy/refpolicy_common.inc*n161__;Iw!!AjveYdw8EvQ!e9-FLE_IzDF9nwjbscOzjcOhx36-DN7PF5033coGG60GxIN-jQJNPwP8lUYlMs8DUy6dadU5lrWY1ALECnM5aEXZ4_GY0Ik$" target="_blank" rel="noopener" moz-do-not-send="true">https://git.yoctoproject.org/meta-selinux/tree/recipes-security/refpolicy/refpolicy_common.inc#n161</a><br>
        which is trying to access each .pp file, but these files will
        not be present when using monolithic option.</div>
      <div>&nbsp;</div>
      <div>Any help on the installation failure? Thanks in advance!</div>
    </blockquote>
    <p><br>
    </p>
    <p>Thanks for reporting this issue. We haven't considered
      POLICY_MONOLITHIC = &quot;y&quot; in meta-selinux yet, so it should not be
      supported. I'll look at it.</p>
    <p><br>
    </p>
    <p>//Yi<br>
    </p>
    <blockquote type="cite" cite="mid:L0li.1727459840037471274.IyiC@lists.yoctoproject.org">
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#63905): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/63905">https://lists.yoctoproject.org/g/yocto/message/63905</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/108691326/7283133">https://lists.yoctoproject.org/mt/108691326/7283133</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:yi.zhao@eng.windriver.com">yi.zhao@eng.windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
  </body>
</html>

--------------qy48eRaVSHgfVnPzsJUNAKMS--

