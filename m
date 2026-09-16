Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3ECC1C982C4
	for <webhook@archiver.kernel.org>; Wed, 16 Sep 2026 14:55:19 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.16872.1789570515291137071
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Sep 2026 07:55:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=GLmDmxtJ;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=3719d00f6b=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68GEYUFk2128364
	for <yocto@lists.yoctoproject.org>; Wed, 16 Sep 2026 14:55:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=PPS06212021; bh=PzvCi3shn0L0q/R5htFaIk
	SeK2elVsmyeo3MzeFIt4E=; b=GLmDmxtJ2FL6LdV26lGYx8ZOo8zE/eB/w9Yxkb
	W4ArsWeSvIMXnsjrRcA2vDEuw5XXo7j9Cb/8NX5VjIyhKnil4kJUs6MF91iujS7k
	EF6pFmHa5WvqgNzPYhAy766LmExObbSl/5RK5C5/7jeC4l2At6HPfQwuwq1MIs0C
	zltUQOK53DV4n85cCcUgVHeN6HdU2Ebvo7V9n0aHtBO4W0OYRkgzNyx3q+Jve1n0
	AGcuhbBdZJS1JVJtp2tcRNOzt2zSfs5d+QcEcJR0KOh5VSQhurlibSewlOg3hc1G
	A4+cEX0gVmqs9NdGK4jn563GEtz+cxm5yUweg6hzVc60dKWw==
Received: from sa9pr02cu001.outbound.protection.outlook.com (mail-southcentralusazon11023127.outbound.protection.outlook.com [40.93.196.127])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4gqc1nhjx6-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 16 Sep 2026 14:55:13 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bGE2tjwZsnNwIUP8xcQHMHmySvzWcUxWYLNpTtnkI/9s7jh+FEOHAJz/cJs5xdeVq1rHLwl9NAyi8yXb8ikGAM06YiplH4HqQG5LBe0XjPugnRQkN8y6vYmNqV3MCwMTB5DayN7O+DlbhueyduuPR68QZrgs1SuLqd7+tjenYCpVzxSXzA6QGUyNUdzK57PxCYxJVjpzyJQYws5vzXh7RYqs1LinPcwm/rhoSRtryeCJx+Hka5u7Ww12kWMueD2wMWWPGFo9dMh+1FkSwIp1cqFJOq9XBaB8tc8E9HXsU6anWc6cvzJrvMyLsFl9jypA0OTOoxbhQQTY/opleRsVIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PzvCi3shn0L0q/R5htFaIkSeK2elVsmyeo3MzeFIt4E=;
 b=T1z7zHBHoymRPFQrftQ2x2c5w1G61VQkjmwW+gXEL2tIC3phKmlCrwATveQn4LlrgXm1jsRCi8XLUZuISpviFaTvhrFLokL/NQJB4cjIaHaLg0HqnFesr7vmb8Hoc56yci9sDQeMlaEgVuiYIWiNz0FjXyhm3Z8E5pGdKdtx+NrhJU4QsaOtI4NvSjMjL/+9WfyumFlvuWZKVOwp17ByrdfsBoac0jEdcghZ7VOGI8+E7La5xhaU2XUE3kTKwjxaNFfD+mJzHGizOyihAO+0yap9WJUDF7dPnFXn7xKVJq83M+yHLBnFd90OgQyGDYtZDHub00odwQVXQdjDY0zEYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CH3PR11MB8496.namprd11.prod.outlook.com (2603:10b6:610:1ba::22)
 by SJ0PR11MB5135.namprd11.prod.outlook.com (2603:10b6:a03:2db::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.406.12; Wed, 16 Sep
 2026 14:55:04 +0000
Received: from CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::5627:e3a5:cb26:b555]) by CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::5627:e3a5:cb26:b555%7]) with mapi id 15.21.0406.007; Wed, 16 Sep 2026
 14:55:04 +0000
Content-Type: multipart/alternative;
 boundary="------------5WNZ0p3WgaLpnytbA9pVzEmt"
Message-ID: <c5f78b6f-fe01-4b3a-a4c3-4c1b6bba53cc@windriver.com>
Date: Wed, 16 Sep 2026 10:55:02 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-anaconda][PATCH] README: update source code URL to
 valid HTTPS link
To: yocto@lists.yoctoproject.org, Sandeep.J@windriver.com,
        "Babu, Priyadarshini" <Priyadarshini.Babu@windriver.com>
References: <20260624065958.1549176-1-Sandeep.J@windriver.com>
 <871943.1784710828590231126@lists.yoctoproject.org>
Content-Language: en-CA
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <871943.1784710828590231126@lists.yoctoproject.org>
X-ClientProxiedBy: SJ0P220CA0010.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::14) To CH3PR11MB8496.namprd11.prod.outlook.com
 (2603:10b6:610:1ba::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8496:EE_|SJ0PR11MB5135:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d1fab65-2ef4-4d5a-4f0f-08df14027de5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|23010399003|376014|1800799024|366016|4022899009|8096899003|11063799006|56012099006|10067099003|4143699003|22082099003|18002099003|13003099007;
X-Microsoft-Antispam-Message-Info: 
	TO/phMV+J4bcg2xXQ+YorQ9T35hvK9isoCxe/aKAZLkYEqtdYwtc3Qz+Nyj23nApS9eUD5Md9SKziQNrXV+d80jssGlHhJ9WLc6zBZ6oU6WTgmnObxHivNOl4MybQsedY1uSHiehSi7WVcQ6NPzaMrbuVFRdqnPB6wmnLv+LWKdq8rrzu68+9N7DawvYgHlJT5k8agh3RaoB0C9md/Fe8VPMGvTY1IiH2VR5fYWISdFIvIxhAfkEzGuzhE69W6oIT1Hh33wcHDxlrbjQOatISLmJofe3dcJlaKWoklCuaMjwlcS66q/RXWuX0DE8F9EVEeXagKgi7Xb/Fecqx0GLns+99t3zupxT+7uYKZa5fBWfo1PGhHGcpj3dkw9OTmOK8N8vhjv2xwGFmokhvdiwrx+xifWZck60x/Ueaci3siDJFR6wQdDcOcv6YDNON4Au4cx08ypR6QOQ9b3xDhWqkJtvzitEghzjX0uAlxtDPTrhxo7q7X0ItqKMAx8XyK7tnNZY+dNNV7ekyommYtcUpqXqq+btPmCyolBozgT6GRwRRH1103gh0MkCs/zniWo0u4ByvofmoAyW9eFG0DCFXOOFimQum2Y4PXKUa9JfueE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8496.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(4022899009)(8096899003)(11063799006)(56012099006)(10067099003)(4143699003)(22082099003)(18002099003)(13003099007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SnlUMS9sMHlOTFFiNDBGdWErelAvLzFSdTk4VVRvNGk5Ym9YZC82bkZIUVBp?=
 =?utf-8?B?bkdtTE1RbXR2ZGJJRCtaNWNNdzRuUjVMWkRnN0dhWWxvVlEvMzQwajdtdUZD?=
 =?utf-8?B?UXpOYk9kR3pMQWdFZ1JaV2Ntb0tRUm1sSlBxdUhQcEI4MGdNTFVvN0R4UUlJ?=
 =?utf-8?B?bTdWbXhORFFJTkEwVnVVMThPUm8yUTgxamJrZ3BLaitlS3FrdENKZFpTVlZn?=
 =?utf-8?B?TnMvOWlySkhGQVBrVHdMMXNCTkFSL0ZsTFZjbmt4U1ZxQkRoc2QrQnByN3Jh?=
 =?utf-8?B?aDdjY1lzblhKbVFUMS9MTFJ0a3d4d0VJdGczdmFRdkJNQW1PRU0rOUhMbGI3?=
 =?utf-8?B?UnlDV09zYmVjS285NXBoKzc1d2Rwdllud25RNDFXVnBEVWIxNXRBb1ZuMTRZ?=
 =?utf-8?B?WFNUejFVNkpaK2ExanNDdmRFcEgyTmJoTXBDWDdyQWZUL3FsYWhybm1QUGdE?=
 =?utf-8?B?TkxBeTVFNVJGamhDdjJUeUdORisxYVFpL08vcjA3d0h2Mlp3alFPeTJJMDVi?=
 =?utf-8?B?S2JXZWlVWjhPUlU2MXlLTkgxUEw0Ukc1RmYyMTFZTG03a0pGZmordmlqSlBz?=
 =?utf-8?B?UG1iZUlXVVFaeno5aEN3QjFKZEJkbzdYTU9PV3NhWEVBOXYxYXdSaVN6RklI?=
 =?utf-8?B?ZElDYmZRcm5wZnhRU0FFYW9keGxiYVVkZVVhL3ZxRk01dERZTkF1emNhWE5S?=
 =?utf-8?B?V3piYVQ2MURrTTAyczlMbjRkM2xVa2VZcWszYjhHRld6MUpUTDZJekdsMFo4?=
 =?utf-8?B?Q1BHOHpXTHQ3bTNhVGRoZUhXeWQzMjJqVXVIRlpic292eHQrcW5tL1JqNXpY?=
 =?utf-8?B?bzdabWFNUEJpMTVqZEZvTGNIZkc5MEM1eFhWQ29KVFpNa1A4blZUYXRZOHBx?=
 =?utf-8?B?QmY2TFlhRDBSMkxNUDdIL2RxZ2E2TjJQV1liNE9XZGtRL3pJQkpoNDJ2dG5J?=
 =?utf-8?B?N3ZTclo4R0tqdHhrelRuazE4bnU4UU1vWFRZTmlNRFNDb1VCQWc2Mks5Y1BK?=
 =?utf-8?B?MlFBQjhWMWdOUlR0Rk5LUWNYU3hBS1FGN2cwSUo2U1NpUVVwQzJxSlRpQUJP?=
 =?utf-8?B?U1VWQ2c5N1A2NjM3MWlJa3RvNktCNjBsS1Q5ajVDNzkySmI2R2ptNWRnUldv?=
 =?utf-8?B?cFkzWjFOSnh3cnpCOU9nR1U4ZTg5UmFPOGpUck1nRmxXSXRBNG95TDlVK3Za?=
 =?utf-8?B?U3g1NHJDR3B4Nm5Pa1V2MzhiVmp1REVoZmtPbFBpREJWM0NlUnd3S2lVdzB4?=
 =?utf-8?B?Y2gzb0ZxMHpYUmpFalFNMGFSak14RG9GTHY3VS8wcTRRY3hMZ3lrRjdwaW8z?=
 =?utf-8?B?c0pXQTJ6QU1BT0ZIOUNSUjJMVm8rN0JNdVZuVmZ0R2ViOGppSXE0SGthWFpO?=
 =?utf-8?B?cG84a2tsVm4ra2hmMTlUeUdhdnFkMCszVjF5cUpBM3dNbnkvRnJ4Nm1EMlp6?=
 =?utf-8?B?SEYxSlRiMTRqalpZdFZhR1JVbm0zcHl0Nm44VVk0OVRWVFpLMVNoWUNtZHNm?=
 =?utf-8?B?ekt3OGU1VUdFdHpRdURTWllKa3hHOEhXaGhLUFVsdUxqYldISWJ0R0ppTzM3?=
 =?utf-8?B?bWZLY1B6NUJuVFlmQlZXZ3kzRDI5Z0JYSGkydkpOY3U4bnR2TDBycXlHTmpL?=
 =?utf-8?B?MEk0RDZ0YlhqRjdVdTJKUmk2Q2h5NzI4Y1NMNDVWb1VXYW1MZmQwbEhhTU5a?=
 =?utf-8?B?Nzl1NEpibFdON3JuTldza3BFWmo0MGhNNkYrSERIQzFqd3pLT3B5b29pVXJS?=
 =?utf-8?B?YTVRRE5qN3NIV3FSS242MjEzRmdidTdybG9xSGNsODBPSmVmRW5xM1ljS1Zr?=
 =?utf-8?B?UWRxWHhrMXF2V2NBc25KbkVzZ1p0ZHdaTzhOOEowWXdudHJhN1llR0xTMXJ6?=
 =?utf-8?B?M1NodVJVOEc4QUNrOFN0cTZuMG9qUnBva0RlOUgrMHl6TXdmN0M2eDRBRGNm?=
 =?utf-8?B?VnhUL2d4c1AwZXZZeWJRQ0dsSGlaY0xJZG0wRml2TDM5SVVmTktUay9jUVpB?=
 =?utf-8?B?QmNkQis1ekRGZWFhY3pxRUJvN01Cc3ROSGdGbkFGOVE0MWVVdDJBb2NETDVQ?=
 =?utf-8?B?TEk3Tk85eUE2Y055Sk5VZkhHQlBYbFNXOFlaUlhJSHhkWmx0YlU3NEtwemRj?=
 =?utf-8?B?eGxzdlBlcGZ2K2grenJ3R25Mck11aGpwUUxYdVg0VkliaEoyR3JmRXh6NVdD?=
 =?utf-8?B?MTNKZ2VUZWtDRFBrcG91ZWlscmpiWjJ1clV0SkpmNHVaQkFSd3pzcXNtTnpt?=
 =?utf-8?B?bG5ORGtoUkZiYStWelVXVzUvSzJSajkzZHpoVnFEWVlBU0U3eG1reGw0MWJm?=
 =?utf-8?B?KzJDc2N6QmlVdk5nRFplaGEwWjduTFhMa0RuNW50Vlk1aFpxY0NXbVVSMEJR?=
 =?utf-8?Q?p4708EcfGZboQJ88=3D?=
X-Exchange-RoutingPolicyChecked: 
	M1KTkGvOlTzm753dFr8DW1GargAPToUBZZMg0KpAElBee+TihoG1qPjqOq8tQ6LL/tFSptf97qLgEKYmo9sJlBFOsMFtMY0+awfFRCgMZN7noh59ighp8uufaK4pNXf+qrQZsZ8oyffPji4AsTO4LS2MPIZXfUaOl3uDm5stYld0AD0pza1YomlHxfQyHkFXC0pmh3YjBX9dvphI+Vpya/Ozz4aDq3ofF2VSkF8/ss1qlJeNCwbyquKa0X/HUsw3em2w0VKwOyVrqFm88FBjhpBuvO9wqQNQUkFhYiZu1u4t8HxKFe2ujRjWJUUdF+pFwd6cfP/wIcQcgFHDB7ROPw==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d1fab65-2ef4-4d5a-4f0f-08df14027de5
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8496.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2026 14:55:04.6188
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J8CVFUO4s+XX0pW215bzXuz4fM24I6QJRLHv1RuIbu6FrbV9BUv9hgL+CliLBnRHZXMTVO0mCNVjtk8ZE6y8fQDJpiQNbjXuE77/VuV+YOY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5135
X-Proofpoint-ORIG-GUID: QdQRLz_yPNhjecj4Ll-kySNwZJJn6gU0
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDIwMiBTYWx0ZWRfX1KsX8ucFqpa4
 53B/ji4EAPRKoEbLVZXWN7nkCnIrK1uoplSswkFGzv0G1w37H9fmQH3wpMO1n5LoLnLmoNFXKtn
 GrLrbxb0lA7pk/QAUMOqfwYBsrByzZCMxr6mRO5lREDH62wM4hUr
X-Authority-Analysis: v=2.4 cv=L+GI0OT8 c=1 sm=1 tr=0 ts=6aaaadd1 cx=c_pps
 a=wzgbdcG65ZVbW594nUvNmQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=VdqzKS8jKosA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=bi6dqmuHe4P4UrxVR6um:22 a=klDOsUkWDRETUCZYPvoE:22 a=iGHA9ds3AAAA:8
 a=t7CeM3EgAAAA:8 a=dqL1uMx6aMGlijLcmuUA:9 a=QEXdDO2ut3YA:10
 a=FHKFGMSfTwal7sSJLUAA:9 a=ozFPiAbhs3EqNXUB:21 a=_W_S_7VecoQA:10
 a=lqcHg5cX4UMA:10 a=nM-MV4yxpKKO9kiQg6Ot:22 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-GUID: QdQRLz_yPNhjecj4Ll-kySNwZJJn6gU0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDIwMiBTYWx0ZWRfX1zE8GTIIk9pB
 WwdpWIZ6YPgoYKAJisKkwA00EJpMW6a2p771OF2DxoGDvh8zzyrCGCMcEV2EMa+yuh9KHsUiXL+
 oAVDZcDW9a3oVRhGStDssu5iyotUyzoolXY503N6SjQssHXxZESAjrglae7xZaIgVmNhDtgt2Ey
 bJSQpGHuBjLSUMyWBZJp8Obc/hcSvxjbqSNYe+z3qeMzievroPBHT2WeoU7pNdDjzosrzrz5Kyq
 xescx3eg/mc3zaR6wsFg/dqhc7eMl4CIfFKje2vmtWBwGtiQ5et+WDe0c9gedVa4rNymybfaO5i
 vr6nhVuOrrgdj8LUmYLY2O+WYFnsKvqFxMmXPoh5W0HdcN4JFOlr/59cL5vLBs6NZVewMAj5Qv3
 RfyJj31eqtU8mGdhS/ZZMa+O0NR7TQk2upca67TT/2y5YpSohZcS6/I39dZHhUtzxXfPgTQmxu3
 GUIw7an+nb4OXmsUcig==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-16_02,2026-09-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 spamscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609160202
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Sep 2026 14:55:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66727

--------------5WNZ0p3WgaLpnytbA9pVzEmt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2026-07-22 05:00, Sandeep J via lists.yoctoproject.org wrote:
> Hi,
>
> Gentle ping on this patch. Could someone please review and apply it?
>

Priya should be able to do that now.

I've forwarded the patch to her.

../Randy


> The patch updates the broken HTTP URL in the README to the correct 
> HTTPS format.
>
> Thanks,
> Sandeep J
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66653):https://lists.yoctoproject.org/g/yocto/message/66653
> Mute This Topic:https://lists.yoctoproject.org/mt/119953604/3616765
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub [randy.macleod@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

-- 
# Randy MacLeod
# Wind River Linux

--------------5WNZ0p3WgaLpnytbA9pVzEmt
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <head>

    
  </head>
  <body>
    <div class="moz-cite-prefix">On 2026-07-22 05:00, Sandeep J via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:871943.1784710828590231126@lists.yoctoproject.org">
      
      <div>Hi,<br>
        <br>
        Gentle ping on this patch. Could someone please review and apply
        it?<br>
        <br>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>Priya should be able to do that now.</p>
    I've forwarded the patch to her.<br>
    <br>
    <p>../Randy</p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:871943.1784710828590231126@lists.yoctoproject.org">
      <div>The patch updates the broken HTTP URL in the README to the
        correct HTTPS format.<br>
        <br>
        Thanks,<br>
        Sandeep J</div>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre wrap="" class="moz-quote-pre">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#66653): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/66653">https://lists.yoctoproject.org/g/yocto/message/66653</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/119953604/3616765">https://lists.yoctoproject.org/mt/119953604/3616765</a>
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

--------------5WNZ0p3WgaLpnytbA9pVzEmt--

