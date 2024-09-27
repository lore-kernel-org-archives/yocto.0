Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DB28CEBF76
	for <webhook@archiver.kernel.org>; Fri, 27 Sep 2024 03:20:51 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.61230.1727407245412709966
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Sep 2024 20:20:45 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=90005697a6=qi.chen@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48R0sTPg029109;
	Thu, 26 Sep 2024 20:20:42 -0700
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2170.outbound.protection.outlook.com [104.47.58.170])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 41um5548r8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Sep 2024 20:20:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HLoC886FJgIH59ch7A0TbU0Z+uLd9lfv4/7Y7t5fRSD+QmGbQWaEF621cenzAmxJvq23GK7uVA7tBPZQgncoGOJrZiu6OGEoJ2oY7RHg0v4r+2ZcYDio6fllmwmzlGFRU/g+50CMtsIIxXq2t7CgNC8nT/IDSLNZWuzOuiPeRRjICMBUtb3SXENfmlzqNr/rtueirERMG4O3e8dT394ClrKyZAHAG15+Q0wdQPQWrtziVAMb+W9P3o7ZWpTnycppmuzRc2ulBLqO92Vv16viOKJWrYZpF56euPG3oxYrfauiIyZnzeXU6YZnllubjwP4QtEjmv9hNXTHhsqd7nEeXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5uolLTepYBEztMKXkxU3t2+Xo4JKOuFRXe+zw/9PukQ=;
 b=MfXI1TmkZ5rfg/nWpdVORUnCMjObenVd2kMytIUmkRxtOJksrsqHE3l19v/UR/j4fNAw2IQ87rd0CFpAiPPd3sreErSR+Im0FtrT4Rf5jrvNOgWVtq6GR0AYBsXuKv5wTXxeQvt42njDxF/Y8ZQ1myfGZuQy2vTqW0s1Cd4zi5mW1NaACjhhJ6a6LskdUM4eFDQmQJiPwYSasHbcl/djKrztmTyypGWOHdu47Sj1Ens4nlAbeOYHhNJa1jwTkpJiSR9J5LGVW3vjVukEXySsbjonrVAH9VHlHChmZLA6vt/d1koVf3dkb942neffkcdSUbsAih7xQuIPBuzASyIXlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by SN7PR11MB6875.namprd11.prod.outlook.com (2603:10b6:806:2a6::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.22; Fri, 27 Sep
 2024 03:20:37 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::a7e3:721d:9cec:6093]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::a7e3:721d:9cec:6093%7]) with mapi id 15.20.8005.020; Fri, 27 Sep 2024
 03:20:37 +0000
Message-ID: <df29b0f1-f2dc-43c2-9c90-29baa745e394@windriver.com>
Date: Fri, 27 Sep 2024 11:20:30 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Question on the sequence conf file parsing. #yocto
To: yocto@lists.yoctoproject.org, yanmei.guo@boeing.com,
        Alexander Kanavin <alex.kanavin@gmail.com>
References: <CANNYZj_nfD=n7MfF_QJLTJZ7abwu1MF66jedoKhBf4tdO=v-Vw@mail.gmail.com>
 <20211.1727405969816910866@lists.yoctoproject.org>
Content-Language: en-US
From: ChenQi <Qi.Chen@windriver.com>
In-Reply-To: <20211.1727405969816910866@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: SGBP274CA0009.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::21)
 To CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|SN7PR11MB6875:EE_
X-MS-Office365-Filtering-Correlation-Id: 05ca680e-a9fa-4f65-5a37-08dcdea35b0d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|4022899009;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ckdFdHNCa092dGJUc3lJZTQ0ZnF1WlNtalFsMDF4bERnMFJYUW92ZlNFUDZ1?=
 =?utf-8?B?S3pUbGJvOFRFTklPbkZZUk4rY1BBVTlrU0ZZekt5R3pxc0ZXNk9KQ09uREl0?=
 =?utf-8?B?bnY4MHdOdDFSRHNVWHltanJYYWRXTElUNHp0SGZjOU9uWWhzUUh5YkszbFAx?=
 =?utf-8?B?UjBnOHFBVzNlTDZlVVYxSWs2ampIdXpGSUo5VTNSYTNxVzFQWTBiYmhGSHBL?=
 =?utf-8?B?UWNSd2RFTGREQmVNZXVjZC9xd2o0RHpNYjdwcWNDaHdWNEp0TjkwRHFTOFhq?=
 =?utf-8?B?V2RUblJTS1NpSXp5UXB0M1QyUkJ3U3VkMHRYRllWYXpkdUpBTzRqTmhrWk1D?=
 =?utf-8?B?MDNwdmIyakVkZ0pCYy9OZzdpN2hVVVByQ21KUU9scFBUVDZ6L2dGcGMwSGZP?=
 =?utf-8?B?TE0xZnF2bW00RjAwcUhJc2d3K2hEalA3NzFKc1NGOCtHNnkzVUpSUERldGx0?=
 =?utf-8?B?Qk5yTThKR21Hd1dXYjFJOWtnY2x4UDVKNHA3UkI1K21sRmhpdW96MHpqVWxU?=
 =?utf-8?B?Ky9RZXhqdnVRWXYzTGRibHEwRjRmenh0THpSNklUWDdja3pzdzFRdXl6V3VL?=
 =?utf-8?B?RkUyMzNxTG9heWF1b05iR1pKYzRxa2FiVklQckJvOHBMbEZHL0lEaHpieGMy?=
 =?utf-8?B?WDYrSUlLQy80aGNlVklkL2x1aHEyWkM5Zm5pZkdzbEQ4RjFJYXRmSTJtWm4r?=
 =?utf-8?B?Y3A0cjRuRWliNUhpM28vL3BlaG4rTWMyeEcxeWlDcHJFS1FWbGlxVWd1NXJV?=
 =?utf-8?B?Mm8xc0pXZ3pDanQvM3JYQzd4VjgzWC8zTzV2L0d5aEFQUFFBNEorM0VKSmZn?=
 =?utf-8?B?cGxnOVM5RXhTZWNieVd2ZlozU2RoK2E5eVFGb2hMM0k5QnhiaGVNeHQyRnFT?=
 =?utf-8?B?cXFzR2Z0U041VzZiQ0ZFRVpabHJyOVlXY3owYkJZY0t0UmlSYzI0SU9YZ0VT?=
 =?utf-8?B?N3pjUnU3c2hRNEUxSnVzR0hlNHduMGttdjJWbkFzNUIxUG1ZQmwwc2c3dS8x?=
 =?utf-8?B?Mlg0dnhqdHZBbENnSGdnOXVIM0tFVUhDMFB4Wmx3NDlEeUpuRlhuRG9jaXli?=
 =?utf-8?B?WndhTU9ETE1yUzcrUk9TRFBxeTJJYVFEQ1BpUlZhMGNKcld5U294SHlUMEE0?=
 =?utf-8?B?OGNPQ3cvU0tZQmEzR3pJZVBxek12Y0o2dVlZa2lBVUJZTWxtUDZWNU95S3A1?=
 =?utf-8?B?NkxFbTMxUXZDOVkrRUZIQlhHem1JTnZreEZQWmZEMTlkb3lpYXo1eG9pSyth?=
 =?utf-8?B?MHV3MVZ0SEFBSE1HZEVITmYzSFAxNzlTMXNZQ015MVNkT3JqTENtSkJYZVVi?=
 =?utf-8?B?clZPVXhFUTkvTmlKTjQ0a2lIZEhueHYxSUhTS3NyeUxlUERyd0xPVm42WFVC?=
 =?utf-8?B?WHI3bW5uR0w1ZkQwSGc0eENzQklWNEg2aWg4R2ZaUXpXOWhZdzZqMXNSc21R?=
 =?utf-8?B?WVgxa3FoNHYwUlYyOXVRb1l4UEZzcVVOdng2c1VIVzNLS0NZdld6NUFVSG91?=
 =?utf-8?B?b2xVT1ovaGpRNUI5Z0x3SlpWU1l3VGRiVEJoRG5nc3VyOGk4L1R1UXczaG1i?=
 =?utf-8?B?Q2FrMDU3UFU4WU9USzZiOGVNeUZaZXF6Tjh5Z291VThhcVJ1T1hRMTdkWDRB?=
 =?utf-8?Q?BgiHue66ZxGMEkdoYC9UelE5YhMjx6Wcib2FE3zAMV0w=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(4022899009);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bThaL1Z3MTlvb0VGUzFOcmNvbmRtTTltZ1JhV2ZCRG5DRDA2NCtIU3JvZEJh?=
 =?utf-8?B?d3pOQWhQQ29maEFoYXB4NkoxbGhFRnZVNTA2ODJTZmVLWXFJNklvN0grU1Jl?=
 =?utf-8?B?TWpOdnJpUUJwcGVXcEpHbnVNMDVJbUFFQ3hzVVpOWXMzTFR0N2N5bG5RODB2?=
 =?utf-8?B?WE9XNVpVeWR4M1hVUWsvOHExTnF3Nm1qbmRKVUszWUJ4SEcrT200U3l3Sm1o?=
 =?utf-8?B?d1o1K1FKSEdzUW10SEdXWUNVd3o3VENqMVo4YWFwV0NwUEV2ZjVwMXZiVm1v?=
 =?utf-8?B?NGRUb1l0d0lLRFlab284c3VsZHpRYlBGR0h5RVdjSDBiT1ArWXk3bTRodWdX?=
 =?utf-8?B?dTg5Z0p5REFPTTNLV1AyYnZqazIybSthUFpJUEtTV2ZCSzgwVU1yWXdWemtr?=
 =?utf-8?B?TEFoRld5UmVXWVpGdzFueWs5bUdKMHg3Y0VWRTlVTTA4SzlPaVEzM2c4N1dw?=
 =?utf-8?B?TEJKVjYxZVpscGhiOFpubHg5TGk3V0ovUVo5d1BaWDNCTnI4b2dxamEvQlh6?=
 =?utf-8?B?VWhSVThIQ0RCbDZKM0p2VWx4YlFROUlBc0M2MmtHeURNLzY0TzRIaFhJNHkx?=
 =?utf-8?B?aHQ0cFRBUXdobktuU0Rpc2MxaWVYdkRqRXhmMTcyeFdpdy84MnFmMkRVMWd2?=
 =?utf-8?B?cVQxb2NnWmg2TEF3MEVjTW9wQkJZOW1rbmMxdTliVVo0WHN6MGhkK3BVcFM2?=
 =?utf-8?B?RUZqWTlncXpKSFIraXovUEpTMjhGek9oblN6NHlnVVBsay9VekZxQjZldDBL?=
 =?utf-8?B?SHRlZlpHSS8xYStmcGYrYmErd0ViSy9yUTlDR2pUeG8xRnlnQk9ReW5vRXpQ?=
 =?utf-8?B?aERxeGNFcmVDWFFVZG90OFg2R1R3aUZYdm5nM0RrMDV1bWovSit2ZXJ0M3gz?=
 =?utf-8?B?NGw5MjlzNG5wazllNEozVjZpY3gvdHQ4YVBxNG5yUFgwRGdpUnl3VnZWNEhC?=
 =?utf-8?B?cnBwKzlDalNhSEhzbU5KNEMxWWhPT3JFTHBYdStnYlRhWGIzdmRtTXRiYWtX?=
 =?utf-8?B?dnRhVjRYUExDODVlS2tVYklIVFN4M3lMVDlSNXBGTVNzRGxkMmxnSVRscGE3?=
 =?utf-8?B?OG5rY1FzQWJuT3lyYTV1S29KbkdmSG82cjRJZ21ZUUtjdWVkYVZXaFVwSGpJ?=
 =?utf-8?B?VCs5NGVLY3ViN0VoN096WllzZlZwVzlZUFpRUEFBMkdPUTROM0toeEdSa2ZU?=
 =?utf-8?B?UXFSeHdDcUhpZDhjWllXRlNqNEhkM2V2bUdwWkNBWWVvd1Y4bUlTZ251U05z?=
 =?utf-8?B?V1BYVHViMGp6SkJQc01FN3F2aWpHclk0TDRXR05IY2RBYVVaQmpidlVEbFNt?=
 =?utf-8?B?WjJadFgyR3cxTFlQMEpuSHNVTHlpcEUrOVR3dS9FVXVVdEJ6YkZDQ29jMkxL?=
 =?utf-8?B?QUNmSk1iRnl1R3Q2T0RjMDRaUU5ESmFoUFpxanBJbTVSSFlmdVh6NjhIOXRT?=
 =?utf-8?B?ZnVETUkzNjVvNE5XeFRXakFsd09raDArWEJMWUVjc1FoN0hTanpNaXhWbXhi?=
 =?utf-8?B?eURyd2ZpMXkzTGNscG5xb3lKY2tJS2svZHpyT3JlNGNVWDVRU0MrcEpLbnAv?=
 =?utf-8?B?MmVmOW53VWgwZjBUWjJYZ3hhclNwRWFXZnlYN0ZzOG1UbTUwMXlWb2VUUU9Y?=
 =?utf-8?B?ZWpjZUtwZDN3TEJ2S004d29TNURaNEdENWlkdFBLNmRHVjVyWGFyeUEvbmdM?=
 =?utf-8?B?bnJNb3FOS1RpUzVIWnVReFYzOElIWVZ2NkVWS3EycEd3dU9kMWViYyt1VXNN?=
 =?utf-8?B?K2U2ZlpzbXVrcWJ6VWRtMjFsMGtIcFAwaHNMRkQ5elRWa0N0bnVvRG5GcUFX?=
 =?utf-8?B?QkNyc2ZIWjk0ak9OY2xTVlZ1T0U0c2Y3R3M1NVhaU2hIWmp1MG5EaUpXRVBp?=
 =?utf-8?B?MDRleWJUNEoxTi9GY2hUN1hXa1BVS3V2elBHYXBVeTFaL2Fia3VBTHJHTlZh?=
 =?utf-8?B?c1BPUHJHdE94NVBJYU9ZUFZ1bFpvb1RzeTVYWFM5dWV1WUxDb3Ryclk0cjRN?=
 =?utf-8?B?WTNveXd5TlYxUmIwc3Z4c1VDeGhIdGgxOVNpT0YvOUd4Sit5NWJEa1BORXhv?=
 =?utf-8?B?bGwwOXBsSGZIc0JMbkdORittUkZSNXBLOXRPVGt1andhNWZQUCtDeGZiazg2?=
 =?utf-8?Q?DV0wGriPzgdHhUFl63URNxVUP?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05ca680e-a9fa-4f65-5a37-08dcdea35b0d
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2024 03:20:37.0745
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UAppzoLtNsvinXoQGvceztTknVI4eXUAB8VLyMDeX71TFgK7svkyVlZjWXUbvXoak5TwRNY91BnKdUXJGvTAxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6875
X-Authority-Analysis: v=2.4 cv=Z/q+H2RA c=1 sm=1 tr=0 ts=66f62489 cx=c_pps a=sGbpJkUcFVeWJOR+0qTsNQ==:117 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=EaEq8P2WXUwA:10 a=bRTqI5nwn0kA:10 a=iGHA9ds3AAAA:8 a=t7CeM3EgAAAA:8
 a=PdIxaX9AE7brk28qyEYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=nM-MV4yxpKKO9kiQg6Ot:22 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-ORIG-GUID: r4tLTwYhXPxQuOPrE7XWY2EQ5PFBhnoZ
X-Proofpoint-GUID: r4tLTwYhXPxQuOPrE7XWY2EQ5PFBhnoZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-27_02,2024-09-26_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=779 phishscore=0
 priorityscore=1501 suspectscore=0 clxscore=1011 mlxscore=0 malwarescore=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 bulkscore=0
 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.21.0-2408220000 definitions=main-2409270022
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 48R0sTPg029109
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Sep 2024 03:20:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63901

Merely adding layers to BBLAYERS changes nothing as long as those layers=20
are yocto compliant. See yocto-check-layer-wrapper. In such case,=20
sharing the same BBLAYERS should have no negative impact. If that's not=20
the case, use yocto-check-layer-wrapper and fix the layer.

Regards,
Qi

On 9/27/24 10:59, Guo, Yanmei via lists.yoctoproject.org wrote:
> We use multiconfig as our seperate build management so that we can=20
> reuse some build component but have different configurations.
> It looks like BBLAYERS can't be appended in multconfig.conf? =C2=A0So=20
> between multiconfigurations, they have to share the same BBLAYERS?
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63900): https://lists.yoctoproject.org/g/yocto/mess=
age/63900
> Mute This Topic: https://lists.yoctoproject.org/mt/108661552/7304865
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [Qi.Chen@eng.=
windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


