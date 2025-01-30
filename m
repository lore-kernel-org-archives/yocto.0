Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCE3C0218A
	for <webhook@archiver.kernel.org>; Thu, 30 Jan 2025 18:40:25 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.1709.1738262423807598310
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2025 10:40:23 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=4125aa7f95=randy.macleod@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50UEiFoZ001531;
	Thu, 30 Jan 2025 10:40:20 -0800
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2046.outbound.protection.outlook.com [104.47.66.46])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 44enyku1md-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Jan 2025 10:40:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p6OhomQa6rpUcFM0PPbmKmXqaYs++/FzSnF2dBCP2E3b+JpzP4gQRctTEnRaYxmTcODdTopLIhu7gh+9ARMYklzZCKBlA7rM8zIZw0cKaKvi3zND+MdDsVa+2L7qO1KlcrMNsLYmBm+l57B0EHG7U+6g1ghr9iv8/mZrsJs2yxFXpKP0if6W4uui/v1Hw2G9ltJQzNdF8y9kuM1271mgNsx1v3o/GrFf3+BhfHek9P3w0YWgx90RxPW/qJGjVY90SxVvzM3kmA5DaMvfrr8wXYJMELXIOqQrXc6opJ2/3Zs56U4o0vSeN5GnxLVllfA+8rA5PCuF3XJoid9oqjRABQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gekxN2o/ngMmSALFkq6w4z580LRRvVbQTjvah3n677M=;
 b=eUkIPlFAE0ic/WwgcP7TQNARRrMDcg+jY+G5HmHV3DUr5KAF+QExj2ZSZ/0Ykkf5831ajvCoa88X3YwwNqN2e8+bAV1D/wTOiDgVS3O31cMkSig+JSFKdkosI387WowHYNeP/TPtyn0x0YV5W1hIo2zTSyg5ZzyzVYLnf7s/txL1inRd2qz6hzVI5EdJ9KBJKp80n8sM2BeTTfaXOATOLPe0OX6y5wWsfXq87fs/pt+aSUttzhGjqC+cCy1KRn0jYdBJz5um9Q+jLdnGV6MnJcP+q2cvH9qjAtJn+X4dpWMpGI8PVFVmcqCaUFWrhmiK1wz1SGlyxUeisS/kzN/ZGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CH3PR11MB8496.namprd11.prod.outlook.com (2603:10b6:610:1ba::22)
 by CY8PR11MB7193.namprd11.prod.outlook.com (2603:10b6:930:91::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Thu, 30 Jan
 2025 18:40:12 +0000
Received: from CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::cdc3:a646:2a93:9552]) by CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::cdc3:a646:2a93:9552%4]) with mapi id 15.20.8398.018; Thu, 30 Jan 2025
 18:40:12 +0000
Content-Type: multipart/alternative;
 boundary="------------B2Ty4ccm7YR6bChmZojw4RsP"
Message-ID: <9f2a7ce0-96c1-428e-9734-0b74b71b56e9@windriver.com>
Date: Thu, 30 Jan 2025 13:40:10 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Building Chromium for Toradex Verdin Module (Kirkstone)
From: Randy MacLeod <randy.macleod@windriver.com>
To: yocto@lists.yoctoproject.org, kontakt@daniel-kampert.de
References: <1646221241.2878887.1738090865572@webmail.strato.de>
 <97019ad4-f0b7-4b42-a1ce-3f525e24e8f2@windriver.com>
Content-Language: en-CA
In-Reply-To: <97019ad4-f0b7-4b42-a1ce-3f525e24e8f2@windriver.com>
X-ClientProxiedBy: BYAPR02CA0053.namprd02.prod.outlook.com
 (2603:10b6:a03:54::30) To CH3PR11MB8496.namprd11.prod.outlook.com
 (2603:10b6:610:1ba::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8496:EE_|CY8PR11MB7193:EE_
X-MS-Office365-Filtering-Correlation-Id: acd89164-58c1-44ef-8a55-08dd415d87c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|4022899009|376014|1800799024|366016|8096899003|13003099007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?WktacERYbDlHcHk4L3J4dlIzbkEveitMc0hwMmVWaVl2R1Z4R0FwRStKT2h2?=
 =?utf-8?B?d1M5K2dsNUFJV1FhRklPZGdBZlFWaHFNWE9iQ09TSVlmUkZtNkEzTFlPeWs5?=
 =?utf-8?B?L0R6NGVOcEZnaUpIaVZiQytuQkFjenJFV0s2ODl2aDErS3dsNlYvTDZQbU5m?=
 =?utf-8?B?bE9vRFFDK3hkSWtGdDZ5RFR3V0p6aE4yWXJyRkVFWFQ3azM4TEp0YW9CRW1w?=
 =?utf-8?B?dEpjRUNLM2hEaG0rSHVOSXpqc3ljOXpHWUtsYUNaOEdSVU8wQllCVnFXSVJW?=
 =?utf-8?B?VHQrNUF1SFV1dW5BNmZESnkzcmVZaitpU0tQY3hFdFpaL0x3UnhRL0dsRW1j?=
 =?utf-8?B?elpBK2dHUTZvcEUwWVJWYndCUTUvZEw2dWQ3aEw3R1ZDeFFoTzNpajFxemdV?=
 =?utf-8?B?YUlyZFpHbnVVbjFNbjlZSFl6MW0xV2pKSFRQVHc0cGk2UitRVjNGZExIUHE5?=
 =?utf-8?B?dVU5RUxTYWRTQWFsWStxeDQ3SHBhZDExeXdzSnBsYzAvQjM2cWFqU3NXdjIw?=
 =?utf-8?B?ZE5HSWhJWEFoOTdUOWN2N3dIeER1MWFtWTNLMHU1S2NKcWZNZjN1NVNoWVpz?=
 =?utf-8?B?SXMrcWh1VVEzYXBJRVlRaks1SC9raElKQ2xRanV3Q3dXemNDKzVianZKalJG?=
 =?utf-8?B?UE9NMmNiMHExKzhhWjR0cXlMZ0pMYS9JQ1BYa2VXNC9lNXlRSVk0VERUNXYr?=
 =?utf-8?B?bXYwM1p0RTlGbGpWODNwWGNyL2M5ellQTGpKMmVRaGpiQWppR21pSEJFZnQy?=
 =?utf-8?B?enU1SGVockp5YkREZy9mQTNia3hmOGdqblE0cDYzdzQ0UXBubW8vUHI2aTNk?=
 =?utf-8?B?SDdvT1BWOFQxY2p6b0I2QnJJbnJQcFh2QkJBMWRuUUlIU3lYb0d2VWxlVWNm?=
 =?utf-8?B?TVY4SEdUS2dNK0NZTTVHUUYvc1FzcC9DZTBHdmpUNWVoZjVVUFJlVVdsNjVU?=
 =?utf-8?B?OWduZTBpckthdkEwdmt4QWdjbWU4VjFQTUYvYlJaN2thYVhMc3dBNnBBQTZT?=
 =?utf-8?B?VlhvUjJ5eS9NQ296YUgwSEVRNVN1UDl1ejRibmo5YW93c1JydnZVcXhuaUZQ?=
 =?utf-8?B?YnQyMkxBTnFtMmhXTHJKU056bFJSMFBBeTR2N1RYVGJTMUFLT01mNGtzSEhN?=
 =?utf-8?B?a0E4aVBlY2VuME8xV2ttY0puV3k2ZmtGS2luMjdhZ0lRckxoQ2dhR0xZbG1t?=
 =?utf-8?B?U2UxbDU2T0lyUTBRQ2MxRkFXaVZyY3l5RnR6VVcxZExPMHhSWFhiK2lHVlRk?=
 =?utf-8?B?ZWdEMXdnUE5OcDhrOXV3b3ArZGZVNW8wTFFVclVMMUhOeWxJUy9qaWZGTmRp?=
 =?utf-8?B?RE9LU3l2SEx2a01YS01Tb2hFWW9MbStiTUY3cGQrVTRVS1lwQyt5LzgwTVYr?=
 =?utf-8?B?VFcrazZ0R01OT2dpUTAxQ1I1TVFuTlB5am54OWNIVE1WZEVLQ3k3MmZYMHJq?=
 =?utf-8?B?K3pIcWxPTUhiZ2w5emoyY1hVT3pWU0NsZmFPOWVwOFpkcU5RSmd3MlJPVVNR?=
 =?utf-8?B?bHF3TS92czQ1d3BzeXpkdzd5SVpBL0dzRUdtRkFhWU8zNzU4K1JEL05HTHlu?=
 =?utf-8?B?SlQ5emRwbWtVb2Q4MHNhOTFwZUF4dTZZTlFSYUFIMUlMV0wzRDhmTmFnR3oz?=
 =?utf-8?B?K29TdnBzci9mMDV1L3V3Y0F2MG9YdjRFVGM0WWQwNU9rSzZHNmpNYngyb3JM?=
 =?utf-8?B?ejFHeGVGYWg0bzZNQXcvNXpZOGorR09ZcCt2SllGU3o5UEtJRGl6NkpwMEto?=
 =?utf-8?B?cXVNNDlnenZiZ2hOZDZDeklaQkdnekpsTXBGWmtRZEVpdlV5SVRPZlE2dDc5?=
 =?utf-8?B?S1VYbnFSUXJwVG0wSDV4Zz09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8496.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(376014)(1800799024)(366016)(8096899003)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UkhaQXhjOE9aZ3lEY3AxeUgwbWdtY1FDR1paS3F3N2N1bHU3Zi9BVWFaSFRF?=
 =?utf-8?B?YmpUL0E1T1h6cGYvTkdFMVZFQ2RwSit6MzZqeXpyY2NvYVNsUE1QSGRsa1dZ?=
 =?utf-8?B?VW1JYlM5SkpwbVBmWkJ3MGg0NUlhUXpRd1BYaXI5UEV1M0Irbzd5R3Y4Nndp?=
 =?utf-8?B?UStmR0QvNEZUUlJaMStiWmpLVHRnemlWNEp3Mnc4UUNhZWxGaFlPTWs0V3pz?=
 =?utf-8?B?QUZUbzZRR0FOdFQwOEcreElBU0t6RzE3T3VLYW1TRXRHWk94djJBVFRXQjJO?=
 =?utf-8?B?SUJ1d3dFUTV3cjJsNDIrNGVjck9lWVlTR21URXNpY0NaMXZPdCt3aE9iK21o?=
 =?utf-8?B?QTFXd2ZtUjU0NkNxaUpvcEYxV1RScUd4eUdjRHUybFFOU2cvZlFHZS9VakVR?=
 =?utf-8?B?bU0vMGUxN0sxYXhQaXhLZTNZQWIvbWEyVXB1QmhSNVd1Mk5OZGR2eFhIa2h5?=
 =?utf-8?B?WmZVS3ROZ0s5RGZhR1VlRXBRRGVMWkhXVDlqYnZsa1loRkZybU9LZzY3UDYr?=
 =?utf-8?B?bGYvSEt6bC9uY3JwN1N4dGE4cEFPUGtsVWVSN0dreXZKUG0vRTZMVktzUnA0?=
 =?utf-8?B?NVB2V2RPR2pYTGh2dDJjQkV0Y3lBTHpOTllQRE9CbGFoSy9rUUN5c1kzU3FO?=
 =?utf-8?B?bzNDR3dHOUdpUjdLYVBZcm1NR2QvdlFaOXRVdnljVEpoT0RmaFFTc3NEY1Ru?=
 =?utf-8?B?ZjdaL1FlbDRVeW42VUlFMHJXZ25JUi9UckMxSHA4Y0xHNEZtejIzL3ljMjZW?=
 =?utf-8?B?YzN0aHBYTmhiWkpFSlVzQmZpL3hFN3d0YmJMQ1FKRGxyYkZiZ2ROcWU2ZFZ0?=
 =?utf-8?B?dlo0Q2RlVFhLU1FFZm1ya1crekdHWk84SUZFRERwZC9nL2M0eWhsRGlkRWtL?=
 =?utf-8?B?K29TNXArdTRnMUNodmVzUHRVeWxMWFhCQTEzZW9rRG1tVjhLb3hXYUpLZmw5?=
 =?utf-8?B?VDNxOTVGazdiVDYzREpObW9uYzJDdUljWkNySGFnNkx3WWhQMDR1d3ErZVc1?=
 =?utf-8?B?Wm9uZ3h6ZTVKMm1qYnh3eVlUVnViOEZyZWI5SE9kMHhSQ0hyc1ZhKzhkUnhD?=
 =?utf-8?B?ZGNqdTYrYWlhNTdFczFZY1ZJL3lZcHBSKzNMV2dFL1VKY0tnZW4wN1hNQ1BL?=
 =?utf-8?B?YjZvWU53QVo5bVc5ZTZQeUNQWHVuT0REeUdYOVBrZHc1cnh5U1V5MlVEcWFP?=
 =?utf-8?B?N1dSZmhNbUNhSzhTSktIa3BMVk4vNDJIZVhDYzNMZlhJblB4SE1ZL1BwZjR5?=
 =?utf-8?B?c3lzNVF0RWd6NTQ4U0lraTEzU090YXBYOCtGMjBvdEl6dHVoSDFBeGZ0Y0gw?=
 =?utf-8?B?OWFmQmg4Vk1iMnlKOUNKakdlK0FFOVpka2FsYnNVdWpOODZHaExvRFp4RnNh?=
 =?utf-8?B?RkZlUWFWOFNIQXB3Zzd6bXVEWWhCTTdpcWRmSEEvc2FWRENkZW12SnVoY1lw?=
 =?utf-8?B?L3llcy9pS3VWUFkrSG0xTDYydWcwRm5Cd0xobFZadFd6Y2tkRmRkQkw5WEpM?=
 =?utf-8?B?dXNFQkVITE1JSU9iNmxOZURvd2hCeEJoRVlQNXJ1Tm5TKzBzNXZ5dUZKWE9L?=
 =?utf-8?B?ZjhFanI3WTdqNk9lRUxvV3RLaCt2VHBZTTR5TGlnclZ0K3VpdWxpa3NKZjV1?=
 =?utf-8?B?dmo2NllwZ21lQW9tRGxMY0xRWkpLWmc4cmJIM3huV0lVYnArRWFxNEs1MzZK?=
 =?utf-8?B?NjYxNTFKSkdXUlZ0Ym14TzM5eE52Vm55eWtqVW1QNktsdWpic05hMU1oVmxx?=
 =?utf-8?B?N3MwZzVTSyt6QkNvQTFYd3llSGpnaU1QZTY2QWx1VmxyaUtDLzUwMy9wc0RO?=
 =?utf-8?B?bElkNEZuRHd3Nk5aQkswR1cyZEJRbExIZm1jNlBQYkNXVWxHd1pXZEhPL0Fk?=
 =?utf-8?B?cGE2SFBmRkUyUFExUkU3WFYxTVZXUUlxeEMxOEQ2Wjh2dWNybUJHWjFrZWt3?=
 =?utf-8?B?eXpxRWxNK0w3ZU04ekhlditJa2N4eHhqSm5ZSVFMYW1JVzEvVW5OSEpNZUph?=
 =?utf-8?B?RE9oREJYbEVYSnZDVnNCWkNwaE5IV1NUUmJzd2lodEFnV0VPODJhdmFOcDdW?=
 =?utf-8?B?a0ZiZjlMVkVIT0ZDS2xpaUtZS3MzVkpybkZBSGVvcnkybGtFS2gzVWo5MllM?=
 =?utf-8?B?cWpiWGtiU2syV211Y2E1V3JrWGE3TkxZTlZaNnIwR01PL0lnNSs4akx1bDl4?=
 =?utf-8?B?eVE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: acd89164-58c1-44ef-8a55-08dd415d87c4
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8496.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 18:40:12.3579
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uy7OuoYu/FQenzKtVWs8UWpPMbLoTPtbl2tP9xzgLJfGXrg9m/kKwQG5BNy/o27pKZ7vmRvOtVsFThl1aRzXD2n96DpmOn73y9zl0gWCqjc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7193
X-Authority-Analysis: v=2.4 cv=Wv/RMcfv c=1 sm=1 tr=0 ts=679bc793 cx=c_pps a=gaH0ZU3udx4N2M5FeSqnRg==:117 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=VdSt8ZQiCzkA:10 a=bRTqI5nwn0kA:10 a=m8ToADvmAAAA:8
 a=NEAV23lmAAAA:8 a=zudYHz-JAAAA:8 a=iGHA9ds3AAAA:8 a=t7CeM3EgAAAA:8 a=wwisNrR9lC-ox3o4U9UA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1H0f9JeEoJ0uKTbKwZAA:9 a=rzoTIfLSYn1yRj9n:21 a=_W_S_7VecoQA:10 a=lqcHg5cX4UMA:10 a=kCrBFHLFDAq2jDEeoMj9:22
 a=UuPxdY-eMJe2vhnS58mt:22 a=nM-MV4yxpKKO9kiQg6Ot:22 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-GUID: U8j70Trun4V9PDoxBoStgRcmc330g1bh
X-Proofpoint-ORIG-GUID: U8j70Trun4V9PDoxBoStgRcmc330g1bh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-30_08,2025-01-30_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 mlxlogscore=999 suspectscore=0 clxscore=1015 phishscore=0
 impostorscore=0 malwarescore=0 spamscore=0 adultscore=0 priorityscore=1501
 mlxscore=0 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.21.0-2411120000 definitions=main-2501300142
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2025 18:40:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64680

--------------B2Ty4ccm7YR6bChmZojw4RsP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 50UEiFoZ001531

On 2025-01-30 1:30 p.m., Randy MacLeod wrote:
> On 2025-01-28 2:01 p.m., Daniel Kampert via lists.yoctoproject.org wrot=
e:
>> Hi,
>> I try to build Chromium for a Toradex module and a custom Kirkstone=20
>> BSP with the help of this guide from Toradex:=20
>> https://developer.toradex.com/linux-bsp/6/application-development/gui/=
how-to-use-web-browser-linux.=20
>> <https://developer.toradex.com/linux-bsp/6/application-development/gui=
/how-to-use-web-browser-linux>=20
>>
>> I had a few issues with applying these patches so I had to remove a=20
>> few because Yocto was complaining that some patches were already=20
>> applied. After fixing this I run into this issue:
>> /| aarch64-tdx-linux-ld.lld: error: undefined symbol:=20
>> createFrameBuffer(void*, void*, int, int)/
>> /| >>> referenced by entry_points.cpp:1745=20
>> (./../../third_party/swiftshader/src/OpenGL/libGLESv2/entry_points.cpp=
:1745)/=20
>>
>> /| >>>=20
>> thinlto-cache/llvmcache-4D23FCCCC063500613CA78894C3B40A545B5F5A7:(LibG=
LESv2exports::LibGLESv2exports())/=20
>>
>> /| >>> referenced by entry_points.cpp:1745=20
>> (./../../third_party/swiftshader/src/OpenGL/libGLESv2/entry_points.cpp=
:1745)/=20
>>
>> /| >>>=20
>> thinlto-cache/llvmcache-4D23FCCCC063500613CA78894C3B40A545B5F5A7:(LibG=
LESv2exports::LibGLESv2exports())/=20
>>
>> /| clang-14: error: linker command failed with exit code 1 (use -v to=20
>> see invocation)/
>
> /
> /
>
> /I don't know how to fix that off-hand./
>
> /Can you or Toradex devs try the HEAD commit of:
>
> https://github.com/OSSystems/meta-browser/tree/kirkstone/
>
> /https://github.com/OSSystems/meta-browser/blob/kirkstone/meta-chromium=
/README.md
> /
>
>
>       Note the kirkstone-specific requirements section.
>
>
> /This came from:
> https://github.com/OSSystems/meta-browser/pull/843
> /
>
> /
> /
>
>> With the following build configuration:
>> /BB_VERSION =3D "2.0.0"/
>> /BUILD_SYS =3D "x86_64-linux"/
>> /NATIVELSBSTRING =3D "universal"/
>> /TARGET_SYS =3D "aarch64-tdx-linux"/
>> /MACHINE =3D "verdin-imx8mp"/
>> /DISTRO =3D "tdx-wayland"/
>> /DISTRO_VERSION =3D "6.8.1-devel-20250128181443+build.0"/
>> /TUNE_FEATURES =3D "aarch64 armv8a crc cortexa53"/
>> /TARGET_FPU =3D ""/
>> /meta-filesystems /
>> /meta-gnome /
>> /meta-xfce /
>> /meta-initramfs /
>> /meta-networking /
>> /meta-multimedia /
>> /meta-python =3D "HEAD:66ec16850573a7ec69248b81f9904cdfba79b930"/
>> /meta-clang =3D "kirkstone:d7f827890d0865c9862eeaee42fd367515d59557"/
>> /meta =3D "HEAD:8c32d91b64ae296d7832ddeb42983f4f3c237946"/
>> /meta-oe /
>> /meta-webserver =3D "HEAD:de8681b4a2a101b99dd2c48d89a7de2ccd9a961f"/
>> /meta-virtualization =3D "HEAD:a055d7dcafc58855081a5eac9a46b93b9b51012=
b"/
>> /meta-cloud-services /
>> /meta-openstack =3D "HEAD:783826eceb1b09496099f00a008062c0f9f4ee4e"/
>> /meta-toradex-nxp =3D "HEAD:a82c2e40db2991924b21b12eb141e6fe5b62bb13"/
>> /meta-toradex-bsp-common =3D=20
>> "HEAD:ba654fce46cb76cf9b5141a219506f27db9d81bb"/
>> /meta-toradex-demos =3D "HEAD:ad72d14becf6b54c1c76864eb691a369307672fa=
"/
>> /meta-toradex-distro =3D "HEAD:3c38a3acc69b7ad28908044bc2735a9d4f2b4e9=
f"/
>> /meta-toradex-chromium =3D=20
>> "kirkstone:dabc120c27d7050a5fc881dbfda1bbf8410dbe72"/
>> /meta-freescale-distro =3D=20
>> "HEAD:d5bbb487b2816dfc74984a78b67f7361ce404253"/
>> /meta-freescale =3D "HEAD:c525e0c19bdc46d45f71873b5f286f49abb69418"/
>> /meta-freescale-3rdparty =3D=20
>> "HEAD:48516272d97f9415e0ee3ab54a923e4c40143e69"/
>> /meta-tpm =3D "HEAD:b9cf9cd639bc8d1b4828eb0bd012b71486d35176"/
>> /meta-qt5 =3D "HEAD:644ebf220245bdc06e7696ccc90acc97a0dd2566"/
>> /meta-poky =3D "HEAD:6e8a5bac75ca114ef2b4d3ca150b3f501519ea8f"/
>> /meta-lts-mixins =3D=20
>> "kirkstone/rust:9bc06b6a761f28cf82aae8a99afe27ed5e2ce4c9"/
>> /meta-rust-bin =3D "<unknown>:<unknown>"/
>> /meta-chromium =3D "HEAD:e232c2e21b96dc092d9af8bea4b3a528e7a46dd6"/

Hi again Daniel,

I was worried that you were already testing the latest version so I check=
ed
and you're back on chromium-101:

meta-browser.git on kirkstone
=E2=9D=AF git log --oneline e232c2e21b96dc092d9af8bea4b3a528e7a46dd6..HEA=
D | wc -l
69

=E2=9D=AF git log --oneline -5 e232c2e21b96dc092d9af8bea4b3a528e7a46dd6
e232c2e cbindgen: upgrade to 0.23.0
726f2e8 cbindgen: add explicit branch parameter
d813ff2 chromium: Fix build for 32bit arm
6079a8b chromium: update to 101.0.4951.54
a5ceea0 chromium: update to 101.0.4951.41

likely you want the hardware acceleration to work.

Unfortunately, if you want a version of Chromium that has fewer if any=20
known 0-day exploits,
you'll have to update to a newer version.

Good luck.

../Randy


>> Has anybody an idea where the issue comes from?
>> Thanks!
>> Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
>> Ing. Daniel Kampert, M. Sc.
>> Embedded Systems Solutions
>> Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
>> Phone: +49 (0)174 6932561
>> E-Mail: kontakt@daniel-kampert.de
>> Web: www.daniel-kampert.de <https://www.daniel-kampert.de>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#64667):https://lists.yoctoproject.org/g/yocto/mess=
age/64667
>> Mute This Topic:https://lists.yoctoproject.org/mt/110864825/3616765
>> Group Owner:yocto+owner@lists.yoctoproject.org
>> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub [randy.macleo=
d@windriver.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>
> --=20
> # Randy MacLeod
> # Wind River Linux


--=20
# Randy MacLeod
# Wind River Linux

--------------B2Ty4ccm7YR6bChmZojw4RsP
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 50UEiFoZ001531

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2025-01-30 1:30 p.m., Randy MacLeod
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:97019ad4-f0b7-4b42-a1ce-3f525e2=
4e8f2@windriver.com">
     =20
      <div class=3D"moz-cite-prefix">On 2025-01-28 2:01 p.m., Daniel
        Kampert via lists.yoctoproject.org wrote:<br>
      </div>
      <blockquote type=3D"cite" cite=3D"mid:1646221241.2878887.1738090865=
572@webmail.strato.de">
       =20
        <div class=3D"default-style"> Hi, </div>
        <div class=3D"default-style"> &nbsp; </div>
        <div class=3D"default-style"> I try to build Chromium for a
          Toradex module and a custom Kirkstone BSP with the help of
          this guide from Toradex: <a href=3D"https://developer.toradex.c=
om/linux-bsp/6/application-development/gui/how-to-use-web-browser-linux" =
moz-do-not-send=3D"true">https://developer.toradex.com/linux-bsp/6/applic=
ation-development/gui/how-to-use-web-browser-linux.</a>
        </div>
        <div class=3D"default-style"> &nbsp; </div>
        <div class=3D"default-style"> I had a few issues with applying
          these patches so I had to remove a few because Yocto was
          complaining that some patches were already applied. After
          fixing this I run into this issue: </div>
        <div class=3D"default-style"> &nbsp; </div>
        <div class=3D"default-style"> <em>| aarch64-tdx-linux-ld.lld:
            error: undefined symbol: createFrameBuffer(void*, void*,
            int, int)</em> <br>
          <em>| &gt;&gt;&gt; referenced by entry_points.cpp:1745
(./../../third_party/swiftshader/src/OpenGL/libGLESv2/entry_points.cpp:17=
45)</em>
          <br>
          <em>| &gt;&gt;&gt;
thinlto-cache/llvmcache-4D23FCCCC063500613CA78894C3B40A545B5F5A7:(LibGLES=
v2exports::LibGLESv2exports())</em>
          <br>
          <em>| &gt;&gt;&gt; referenced by entry_points.cpp:1745
(./../../third_party/swiftshader/src/OpenGL/libGLESv2/entry_points.cpp:17=
45)</em>
          <br>
          <em>| &gt;&gt;&gt;
thinlto-cache/llvmcache-4D23FCCCC063500613CA78894C3B40A545B5F5A7:(LibGLES=
v2exports::LibGLESv2exports())</em>
          <br>
          <em>| clang-14: error: linker command failed with exit code 1
            (use -v to see invocation)</em></div>
      </blockquote>
      <p><em><br>
        </em></p>
      <p><em>I don't know how to fix that off-hand.</em></p>
      <p><em>Can you or Toradex devs try the HEAD commit of:<br>
          <br>
          &nbsp;&nbsp; <a class=3D"moz-txt-link-freetext" href=3D"https:/=
/github.com/OSSystems/meta-browser/tree/kirkstone" moz-do-not-send=3D"tru=
e">https://github.com/OSSystems/meta-browser/tree/kirkstone</a></em></p>
      <p><em>&nbsp;&nbsp;
          <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/O=
SSystems/meta-browser/blob/kirkstone/meta-chromium/README.md" moz-do-not-=
send=3D"true">https://github.com/OSSystems/meta-browser/blob/kirkstone/me=
ta-chromium/README.md</a><br>
        </em></p>
      <h3 tabindex=3D"-1" class=3D"heading-element" dir=3D"auto"><span st=
yle=3D"font-weight: normal;">Note the kirkstone-specific
          requirements section.</span><br>
      </h3>
      <p><br>
        <em>This came from:<br>
          &nbsp;&nbsp; <a class=3D"moz-txt-link-freetext" href=3D"https:/=
/github.com/OSSystems/meta-browser/pull/843" moz-do-not-send=3D"true">htt=
ps://github.com/OSSystems/meta-browser/pull/843</a><br>
        </em></p>
      <p><em><br>
        </em></p>
      <blockquote type=3D"cite" cite=3D"mid:1646221241.2878887.1738090865=
572@webmail.strato.de">
        <div class=3D"default-style"> </div>
        <div class=3D"default-style"> &nbsp; </div>
        <div class=3D"default-style"> With the following build
          configuration: </div>
        <div class=3D"default-style"> &nbsp; </div>
        <div class=3D"default-style"> <em>BB_VERSION =3D &quot;2.0.0&quot=
;</em> <br>
          <em>BUILD_SYS =3D &quot;x86_64-linux&quot;</em> <br>
          <em>NATIVELSBSTRING =3D &quot;universal&quot;</em> <br>
          <em>TARGET_SYS =3D &quot;aarch64-tdx-linux&quot;</em> <br>
          <em>MACHINE =3D &quot;verdin-imx8mp&quot;</em> <br>
          <em>DISTRO =3D &quot;tdx-wayland&quot;</em> <br>
          <em>DISTRO_VERSION =3D &quot;6.8.1-devel-20250128181443+build.0=
&quot;</em>
          <br>
          <em>TUNE_FEATURES =3D &quot;aarch64 armv8a crc cortexa53&quot;<=
/em> <br>
          <em>TARGET_FPU =3D &quot;&quot;</em> <br>
          <em>meta-filesystems </em> <br>
          <em>meta-gnome </em> <br>
          <em>meta-xfce </em> <br>
          <em>meta-initramfs </em> <br>
          <em>meta-networking </em> <br>
          <em>meta-multimedia </em> <br>
          <em>meta-python =3D
            &quot;HEAD:66ec16850573a7ec69248b81f9904cdfba79b930&quot;</em=
> <br>
          <em>meta-clang =3D
            &quot;kirkstone:d7f827890d0865c9862eeaee42fd367515d59557&quot=
;</em> <br>
          <em>meta =3D &quot;HEAD:8c32d91b64ae296d7832ddeb42983f4f3c23794=
6&quot;</em>
          <br>
          <em>meta-oe </em> <br>
          <em>meta-webserver =3D
            &quot;HEAD:de8681b4a2a101b99dd2c48d89a7de2ccd9a961f&quot;</em=
> <br>
          <em>meta-virtualization =3D
            &quot;HEAD:a055d7dcafc58855081a5eac9a46b93b9b51012b&quot;</em=
> <br>
          <em>meta-cloud-services </em> <br>
          <em>meta-openstack =3D
            &quot;HEAD:783826eceb1b09496099f00a008062c0f9f4ee4e&quot;</em=
> <br>
          <em>meta-toradex-nxp =3D
            &quot;HEAD:a82c2e40db2991924b21b12eb141e6fe5b62bb13&quot;</em=
> <br>
          <em>meta-toradex-bsp-common =3D
            &quot;HEAD:ba654fce46cb76cf9b5141a219506f27db9d81bb&quot;</em=
> <br>
          <em>meta-toradex-demos =3D
            &quot;HEAD:ad72d14becf6b54c1c76864eb691a369307672fa&quot;</em=
> <br>
          <em>meta-toradex-distro =3D
            &quot;HEAD:3c38a3acc69b7ad28908044bc2735a9d4f2b4e9f&quot;</em=
> <br>
          <em>meta-toradex-chromium =3D
            &quot;kirkstone:dabc120c27d7050a5fc881dbfda1bbf8410dbe72&quot=
;</em> <br>
          <em>meta-freescale-distro =3D
            &quot;HEAD:d5bbb487b2816dfc74984a78b67f7361ce404253&quot;</em=
> <br>
          <em>meta-freescale =3D
            &quot;HEAD:c525e0c19bdc46d45f71873b5f286f49abb69418&quot;</em=
> <br>
          <em>meta-freescale-3rdparty =3D
            &quot;HEAD:48516272d97f9415e0ee3ab54a923e4c40143e69&quot;</em=
> <br>
          <em>meta-tpm =3D &quot;HEAD:b9cf9cd639bc8d1b4828eb0bd012b71486d=
35176&quot;</em>
          <br>
          <em>meta-qt5 =3D &quot;HEAD:644ebf220245bdc06e7696ccc90acc97a0d=
d2566&quot;</em>
          <br>
          <em>meta-poky =3D
            &quot;HEAD:6e8a5bac75ca114ef2b4d3ca150b3f501519ea8f&quot;</em=
> <br>
          <em>meta-lts-mixins =3D
            &quot;kirkstone/rust:9bc06b6a761f28cf82aae8a99afe27ed5e2ce4c9=
&quot;</em>
          <br>
          <em>meta-rust-bin =3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quo=
t;</em> <br>
          <em>meta-chromium =3D
            &quot;HEAD:e232c2e21b96dc092d9af8bea4b3a528e7a46dd6&quot;</em=
></div>
      </blockquote>
    </blockquote>
    <p>Hi again Daniel,<br>
    </p>
    <p>I was worried that you were already testing the latest version so
      I checked<br>
      and you're back on chromium-101:<br>
      <br>
      meta-browser.git on kirkstone <br>
      =E2=9D=AF git log --oneline e232c2e21b96dc092d9af8bea4b3a528e7a46dd=
6..HEAD
      | wc -l<br>
      69<br>
    </p>
    <p>=E2=9D=AF git log --oneline -5 e232c2e21b96dc092d9af8bea4b3a528e7a=
46dd6<br>
      e232c2e cbindgen: upgrade to 0.23.0<br>
      726f2e8 cbindgen: add explicit branch parameter<br>
      d813ff2 chromium: Fix build for 32bit arm<br>
      6079a8b chromium: update to 101.0.4951.54<br>
      a5ceea0 chromium: update to 101.0.4951.41<br>
    </p>
    <p>likely you want the hardware acceleration to work.</p>
    <p>Unfortunately, if you want a version of Chromium that has fewer
      if any known 0-day exploits,<br>
      you'll have to update to a newer version.<br>
    </p>
    <p>Good luck.</p>
    <p>../Randy</p>
    <p><br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:97019ad4-f0b7-4b42-a1ce-3f525e2=
4e8f2@windriver.com">
      <blockquote type=3D"cite" cite=3D"mid:1646221241.2878887.1738090865=
572@webmail.strato.de">
        <div class=3D"default-style"> </div>
        <div class=3D"default-style"> &nbsp; </div>
        <div class=3D"io-ox-signature">
          <div class=3D"default-style"> Has anybody an idea where the
            issue comes from? </div>
          <div class=3D"default-style"> &nbsp; </div>
          <div class=3D"default-style"> Thanks! </div>
          <div class=3D"default-style"> &nbsp; </div>
          <div class=3D"default-style"> Mit freundlichen Gr=C3=BC=C3=9Fen=
 / With
            kind regards </div>
          <div class=3D"default-style"> &nbsp; </div>
          <div class=3D"default-style"> Ing. Daniel Kampert, M. Sc. <br>
            Embedded Systems Solutions </div>
          <div class=3D"default-style">
            <div> Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach |
              Deutschland <br>
              Phone: +49 (0)174 6932561 <br>
              E-Mail: <a href=3D"mailto:kontakt@daniel-kampert.de" moz-do=
-not-send=3D"true" class=3D"moz-txt-link-freetext">kontakt@daniel-kampert=
.de</a>
              <br>
              Web:&nbsp;<a href=3D"https://www.daniel-kampert.de" moz-do-=
not-send=3D"true">www.daniel-kampert.de</a> </div>
          </div>
        </div>
        <br>
        <fieldset class=3D"moz-mime-attachment-header"></fieldset>
        <pre wrap=3D"" class=3D"moz-quote-pre">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#64667): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/64667">https://lists.yoctopr=
oject.org/g/yocto/message/64667</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/110864825/3616765">https://lists.yoctoproject.org/mt=
/110864825/3616765</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a> [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:randy.macleod@=
windriver.com">randy.macleod@windriver.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

</pre>
      </blockquote>
      <p><br>
      </p>
      <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------B2Ty4ccm7YR6bChmZojw4RsP--

