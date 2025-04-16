Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C4BC369B1
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 05:36:11 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.12632.1744781764904369647
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Apr 2025 22:36:04 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=62010262f3=qi.chen@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G5KSJ9001964
	for <yocto@lists.yoctoproject.org>; Tue, 15 Apr 2025 22:36:04 -0700
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 45ykf3m7ek-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 15 Apr 2025 22:36:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rksfcswWOnGYWaCVymP//U5K0WGeKtIf6EkgveoM3ZQEtb0iAtVzcx8paRw+rog/UM3HZZeTg+eWvGQFV25G9mghDkDrOo6EP3WWtF1L3cd3p6D9zjQo+dOFwPKQasZwVm/P65M/29SSP4vPqiGTaX2wMgqDWy6+Lp4sLIpO36g3muR/jwB7qJPd2XhAbuPCmIhtQhLXsRVfDv4zMF49xv8BL+CTGDcd+OnfBsAL3UhmJogkXUzbUGkp3gznMqjFOnTn2/5KZ9QssUPuSU75l90r4GvAlWqbmq8spWzCGDUM5qfvZa8HefZFSnbuLWF7Hxcayyp/a22xsUjixfqZiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LJPM+eVBM+eJw76x+CuP0DOY3dt77CkQoJrnEiPhdeU=;
 b=ad7VdStqq+cNKcAlPi866cCC34Bg8shbDH5qNReE50tP/3BZBDczrA5F3fdNtjOIeAMwCsXlC0wimjiLJiylIHnUXhwaKhepK19hS9kD+bl4fJX4EyqZQNblztrsoV6X2kZpYDpSR6GKm/cKxJkBRh54eConld7vnfCYksnUpztiTDfZxgb1AHUqkE5v57CsVqh9g125S8+1qm/+xRXMd4MIU97dNx5elZRYXml+60CO+u/n7d1i+GFlylGdOWJrGi44RaRZ559fXCNJaiuSLCxkqYaQBJIpEJQVFVheoAVNuIgEAxKy6xjOhex0KPFiN+u6MoS2felc9i/Z51i6cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by BL3PR11MB6364.namprd11.prod.outlook.com (2603:10b6:208:3b7::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.32; Wed, 16 Apr
 2025 05:36:00 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::a7e3:721d:9cec:6093]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::a7e3:721d:9cec:6093%5]) with mapi id 15.20.8655.021; Wed, 16 Apr 2025
 05:36:00 +0000
Message-ID: <0db86de0-be49-4e9e-bdc1-d7798dc63a98@windriver.com>
Date: Wed, 16 Apr 2025 13:35:55 +0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Yocto <yocto@lists.yoctoproject.org>
From: ChenQi <Qi.Chen@windriver.com>
Subject: Share another use case of layer overrides: world build for specific
 layer
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI1PR02CA0021.apcprd02.prod.outlook.com
 (2603:1096:4:1f4::14) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|BL3PR11MB6364:EE_
X-MS-Office365-Filtering-Correlation-Id: 561b2cab-6a1e-431f-08a7-08dd7ca891d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MkxvTEFwdGx5d2lGVmZSZVBlRFNFek9GZTF6WFRGM0w5SkpkS08vZXJudE5w?=
 =?utf-8?B?NmlOOTdJMjF6czNwZy92U0xJRG1tTjNmMk8wTmZKOHoybmhxWGhiSytjejBU?=
 =?utf-8?B?V2VlMTQ4WENwR2hYRzdjNUxGS1oyaCt2WjdMTGt2dXRDTW9EeG42dUVCclkr?=
 =?utf-8?B?Y0c2WlZ6TXJCRHBRNXpRY3gyM1QvalloZWluK0hFdmh2TFlnQktMOXJrTk8y?=
 =?utf-8?B?RldNVkZyaGVaYjRuWDNUL3d0ZCt6NWJvd3NSZ2FDTUM1RjBwNmpVbUtNMUZ5?=
 =?utf-8?B?QWlvQUE5Y2tDQ1p0eEVuQ0xoQlVKTzVMZU1wdUhleS9SL3oyV1BCSDV2aTc0?=
 =?utf-8?B?THJjR0JUQUpiQzBiSDJFYndwVXZXcmhtNkt3c1NzM09odEp5K3lrQlVsbEp0?=
 =?utf-8?B?dnh0Sms2SzRwWFFtcFR5Z0dzMlpWYzdGaGFRTmRsbTY3cW5BMW9FbTROZTR0?=
 =?utf-8?B?RVRiZHZsaWdCaVF2ekNhQWhOaGFJaU5BUzVjWnFTVnEwT3lLZHpJWkUva1NZ?=
 =?utf-8?B?bEdHaEFVRUZkTVpZKzQvaG4xVFE5MGJodmxGWlFEdHpML3ZENkM1K2JwMnZa?=
 =?utf-8?B?aFNmamZodzlTdERoalhVRElaMzVybDY5WC9vZkZDUW40OXJENWY4bTRRZVBD?=
 =?utf-8?B?OFY0VWdwem9JZmJ2YUdKZE5pczZQZ3A2YU9uRDhieUpNd0E1Ti9lNWVVblBX?=
 =?utf-8?B?c0ZueFhXNmIya3JPTWxFWjVYeWhRUFIybE9PTmF6d1R6NWNJZFdYWlhaMjhF?=
 =?utf-8?B?T3BTRzR1V1UwSDlYYmNwMCtrSkFRZ3JBc0hXUll4ajk5MEt3Y1RXdDZ0WnhP?=
 =?utf-8?B?TG9DTXl2YXpISGdFSGZOdHh5NE1Bc0JnOVY3aW9YZ1FUUXRCb3kyeU54eVRV?=
 =?utf-8?B?Q0RxbUFDbE5SSS8zRG13VFROMFlVdTU3OWpkRzRXTFNpZmZWL3dBOEpsL25l?=
 =?utf-8?B?RjF0TS8vQUFkb0M1cnhZUy9UY3lYNXJMUU13RTBmSnFjaElUSERZUEREWTVz?=
 =?utf-8?B?N3BybnZhb1V5Mkp5azJQeWwrN0NkaEtlVE9rK2Y2eFBxaFRMbzBNT25haDlp?=
 =?utf-8?B?SkpCaTVnWGcrczFtY0ZXUFFWbDNQYnJiMUZZSVp1aXJrRWxLK25raGVFeUZV?=
 =?utf-8?B?ZCtCeFNoVFEvZzI2dlBKN3JSbkU0WU5yU1VDRDk3OGhOaW1Ldmlxa1U0ZG45?=
 =?utf-8?B?UGJsV05YMVZjRjdOWWcrRC81R3RPTk44NExkMjZKVExrcmdpMWFzMUVwUkJM?=
 =?utf-8?B?Qmk0aG5NV2d2dnJSYTN2T1hleS9PVGNuY2Z1WGpPY2xUemRjWEl6MnNzejFE?=
 =?utf-8?B?VzRFeWhHbDlWUVpiSUpibWR3dUZWclNUU2F0M2x0ZmJvRmFScExhS2VEaSs3?=
 =?utf-8?B?ZHNmSVpVREIyQ1NzVnlIOVNXaEkrMnZ2YVlQRkZxT1BDcjNoRnVXbFNwSncv?=
 =?utf-8?B?VWZrRExEVU84REZoelhjc21vZnMzNmF1NkZFSU1SVWMvNWY0MmVtWTNscDFk?=
 =?utf-8?B?a2dyZzkxRXNNUFNBeitYWU12cmRxNUx4Ykt1QkNrUGw4OGN3MHVOQ1BFSGM0?=
 =?utf-8?B?anRtVFd5TjhwR2NMcjQrOGt4aHFzdm4vMkhsZHpwTWl1YzhrVlViMlJ1djR1?=
 =?utf-8?B?RkdYTW1ZeXJzMWtkckhvczdSdWFXaFFWVFg1Y00zU3I1VCtvZ1ZpQUc3OFZH?=
 =?utf-8?B?OG9WVDJMUTUrL2tteEtKU1dEUUJuaTBQbTBvWWVjZjBEcVp0TG9OYkVTcStF?=
 =?utf-8?B?WWViMXB4bXpFVFlBS1dQR2ZGWTVXUWhjVHczNHUwdU40SDFwODRQRFBFVTBX?=
 =?utf-8?B?bXpFZkhlWmcwbGtoYnZ2ZUtPbnJrWjJKYktHQlBDSTZGdXROZWtCUTAyeEs5?=
 =?utf-8?B?MStQcGRQRW96Ynpic1hlVVpWTUpMYjdPUUpnb1BoeGNjY3c9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cEpNVFpESldST3pyS09WdFdlWG1NYnZPcUJCTElDWDlPdjB4K3hMOFZGVnNP?=
 =?utf-8?B?dGNZTUhLT1hrOU9aVnpkemlRbDc3M0lkeXovcmloZmJFNlFqL1paMUVNNkpW?=
 =?utf-8?B?N000NU5MZ0xLUFpwWmZvU3Y5aGF3VlFhb1I4dEI4UjV3TjBGUFRKK1ZWZnNp?=
 =?utf-8?B?TnBxNjNhazZvV0pOckNCQjRyTlB2eTVIcnhLSUV2ZjFLdXdhVnNmVWxFNnFX?=
 =?utf-8?B?SmptcGxrQTdDNkNFRm5ZQUNoT1J2dmg2NXlIREVEamNtM1BoVmlJUjNRcTZ0?=
 =?utf-8?B?WDQ0UCtQbGlyNk9GUzQrV05lU2R6azIzMDNmRGhFNTVKMkdyMjBoRUxUZ1g2?=
 =?utf-8?B?WExIajJuWUtKZEo1Zm43SEN1eU8ycmtxRXNkVjBxZ2NONFQwaktSRWJMZGZR?=
 =?utf-8?B?TWR0RVIzREo2QjRQTDNWNkEraG1qTm52aEJDaUNhbC95NjZZMmVPN3VWQ01W?=
 =?utf-8?B?WEhwQ1Q2cnVIVitraklRcjU2RTVCWVJqb0FmbUVmUkp2Y0dyQVJnZ3lGOWd0?=
 =?utf-8?B?TnZhbXpUMm5NcUJVMVBzbk1VTmRyWlFtRlc5YU5TWjN4cnltZWxtdTlISXN0?=
 =?utf-8?B?d2MrMGswTCtmamFzVE1QbUpDL3lFQkt6QVhObWZyR09KRzRCT1NxSkpvUlVU?=
 =?utf-8?B?Q3F5SHg0QWJrclJ5OFA5Wjk0WW14dmp4cWxqdU5KS0UvOGgva2ZQbWx3WFdL?=
 =?utf-8?B?YlRlQXJITlVHUDhPOEFPQ3R3Rnl1Qm5BZTRLWlVxQlp3Wks5bEJLYll5S1RS?=
 =?utf-8?B?UDdaUHZxTnhCWm1HMHdBUFRaSTNUN1g3RUtoVVF2NlVNdk00QVhZOFQ0WEdr?=
 =?utf-8?B?VzBmTFQwRUdjM3c3aE81QXhCUTJ3NnRseHV1SXhUdGgvelhieStaSVdxWklV?=
 =?utf-8?B?OXJhSU92ZWZGTUF3UUxyVmNzYlZDT2htbFo5VUZvUWxhbk9ZekttSXBleEtL?=
 =?utf-8?B?QlBYckpTMGV6bHJyL0d5ZThyUDdLRTZscVRMT29VMlNqOGxlUGVJNEo0clhY?=
 =?utf-8?B?QjcwMmgrQjh0NnNJLy9zMFJ2eHIrWTJ5QzU5NGVybVU2alpIekd6L0hGZ2hx?=
 =?utf-8?B?eXl6aEtvTlo4NllKcytxWWhaeVBxYXJBRGIzQTkwdHJ5TnQwU3FVWGl2WTE2?=
 =?utf-8?B?NGxpVHp5bHd2amhZWGt0dVJoMTI3VWFSb0plZ0gwcmdLMVlvT2RxRGJhUGFm?=
 =?utf-8?B?bmZrRUw1ZmExQW9qWXRXWXhJT1ZDbHVDdlA0UFNkZldIVHV1TUhZaGlpOHZ1?=
 =?utf-8?B?cW5VcHRJRGh3VndZQXNuejNwWWtiVE1NdDh4QUp4Y1VSdS9Rdk9SRUl6U2Fx?=
 =?utf-8?B?OGZBU3ZNOFd2V2M5R1F4Q1pTeHpZVUNlb0hPWVZSNzg2ZGg5amJCTlQwbHV1?=
 =?utf-8?B?UnV1YndkMTJLZU9YaVlURkNvNlBkVm44TGo2MTkwMFU5TExacGY1bXI2MURP?=
 =?utf-8?B?N1Nud1dQVXhIWGdLNVl0NFZpb1VFYVpyVXdHdVg2dDR0QXdnYmYxUGJCRzJL?=
 =?utf-8?B?eFBPc1BpemUyQlB0MStlaDZKaEgyZmFkLzZwUlltUjBSaXZ3YzIwdTUrTWJO?=
 =?utf-8?B?WTdnSVc4NWJBMWhnMkVUZHdUMTVVZDgzNFhPcUJ6emRTVUJPQVo3UUcvaXRj?=
 =?utf-8?B?bHY2aTBMRy9qNy9KU2t2ejRIM1pYNTRDYkY3cU9XMU94K01lbDEzZ0I5VGRs?=
 =?utf-8?B?MHZ2Yit4QXNLd1NKb0luQTl4UXpyN0lqUFdSQWZRY1RETzdxOURxem5FVWVV?=
 =?utf-8?B?U2t6VUZuZVU1bEl3L0VuL1dDcGQ1bDF5OXUyazFQQ2RSQnpFMm5lanoxQkFj?=
 =?utf-8?B?UjZVcm1rd0R0b0FpRG81M3JzRlI3eGIvdnpNbU4xU1l5V3c3WGIrTHB3NTdp?=
 =?utf-8?B?YU5pT2JtU2dEZ3VUQzkwRThWUktRZFJyb2piTXA0N1FhZVdkaTVWTU04MUlW?=
 =?utf-8?B?VEtVVVpBY1ZoZEcyQzBwYldBS0dYVjR3YXpSWDRSVXNJdC9VZVNWN0p5MmVE?=
 =?utf-8?B?UTQxSkdoLzUxeTVQZWdObjBvdXAxY3ZmZnFrR3pDbEg3QWw4eHpwcTZDQ0Er?=
 =?utf-8?B?djlVVlF0VnF4TnduMjVsVitNc3BqdFZmYjAyVWV6VEtSOStIVFNWK0QxeVho?=
 =?utf-8?Q?q/5lD6PGJYbL9IplW5b5QAaTj?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 561b2cab-6a1e-431f-08a7-08dd7ca891d5
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2025 05:36:00.2205
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gs7YOJNyGVDpdahgH79LtiiF8wF+MSGOOOyRde6pkTHsd9/HNcKhZFaK1uayL/G9V/5semhakZY1yxDxDh0HDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6364
X-Proofpoint-ORIG-GUID: DLHVP4KM9gMUSeDvk0chxVsy0zokQX5R
X-Authority-Analysis: v=2.4 cv=Wd0Ma1hX c=1 sm=1 tr=0 ts=67ff41c4 cx=c_pps a=NZTPE88KBhpz0z3fOSYQ1w==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=XR8D0OoHHMoA:10 a=J-rAOBj-ACIKoFjhtC0A:9 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: DLHVP4KM9gMUSeDvk0chxVsy0zokQX5R
X-Sensitive_Customer_Information: Yes
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_02,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 spamscore=0 clxscore=1011
 impostorscore=0 suspectscore=0 malwarescore=0 adultscore=0 phishscore=0
 mlxlogscore=714 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.21.0-2502280000
 definitions=main-2504160044
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 05:36:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65181

Hi All,

I sent out this email just to share another use case of layer overrides, 
which I think is kind of useful.

Some layers depend on a few layers including the oe-core layer. If the 
layer contains quite a few recipes, how do we do world build for it? Now 
with layer override support, it's kind of easy.

Take meta-virtualization as an example, adding the following lines to 
local.conf:

"""
DISALLOW_WORLD_BUILD = "1"
DISALLOW_WORLD_BUILD:layer-virtualization-layer = "0"
EXCLUDE_FROM_WORLD ?= "${DISALLOW_WORLD_BUILD}"
"""

Then running `bitbake -k world' will only build recipes for 
meta-virtualization.

Regards,
Qi



